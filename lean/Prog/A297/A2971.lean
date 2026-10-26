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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B012.C000
import Seq.B013.C000
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
# A297100: Number of nX6 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297100, there is no canonical definition to state claims against.
-/

/-! ## A297100.P8965763237301936259

`A297102(A374007(n+1))`
-/

namespace A297100.P8965763237301936259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A374007 (n + 1)).toNat

end

end A297100.P8965763237301936259

/-! ## A297100.P15192578801503830691

`A297102(eq[7, A131818(n+1)])`
-/

namespace A297100.P15192578801503830691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297100.P15192578801503830691

/-! ## A297100.P8898152916279834832

`A297102(eq[3, A219347(n)])`
-/

namespace A297100.P8898152916279834832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297100.P8898152916279834832

/-! ## A297100.P317028406767271863

`A297102(eq[5, A193592(n)])`
-/

namespace A297100.P317028406767271863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297100.P317028406767271863

/-! ## A297100.P6508319423825441778

`A297102(eq[8, A258709(n)])`
-/

namespace A297100.P6508319423825441778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297100.P6508319423825441778

/-!
# A297101: Number of nX7 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297101, there is no canonical definition to state claims against.
-/

/-! ## A297101.P16921953767335201180

`A297102(A374008(n+1))`
-/

namespace A297101.P16921953767335201180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A374008 (n + 1)).toNat

end

end A297101.P16921953767335201180

/-! ## A297101.P15071680616225798016

`A297102(A167499(n+5)+2)`
-/

namespace A297101.P15071680616225798016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A167499 (n + 5) + 2).toNat

end

end A297101.P15071680616225798016

/-! ## A297101.P4048610930125365852

`A297102(eq[8, A131818(n+1)])`
-/

namespace A297101.P4048610930125365852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297101.P4048610930125365852

/-! ## A297101.P684630272427472076

`A297102(A055999(n+4))`
-/

namespace A297101.P684630272427472076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (A055999 (n + 4)).toNat

end

end A297101.P684630272427472076

/-! ## A297101.P12856677852236097792

`A297102(eq[4, A219347(n)])`
-/

namespace A297101.P12856677852236097792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297102 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297101.P12856677852236097792

/-!
# A297102: T(n,k)=Number of nXk 0..1 arrays with no 1 adjacent to 4 king-move neighboring 1s.

The programs for A297102, there is no canonical definition to state claims against.
-/

/-! ## A297102.P9180447104447137649

`A083498(A300472(n+1))`
-/

namespace A297102.P9180447104447137649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083498 (A300472 (n + 1)).toNat

end

end A297102.P9180447104447137649

/-! ## A297102.P4248167195092696764

`A083498(A300811(n+1))`
-/

namespace A297102.P4248167195092696764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083498 (A300811 (n + 1)).toNat

end

end A297102.P4248167195092696764

/-! ## A297102.P12657933175433138513

`A083498(A301450(n+1))`
-/

namespace A297102.P12657933175433138513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083498 (A301450 (n + 1)).toNat

end

end A297102.P12657933175433138513

/-! ## A297102.P6266384074609235599

`A083498(A326105(n+1))`
-/

namespace A297102.P6266384074609235599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083498 (A326105 (n + 1)).toNat

end

end A297102.P6266384074609235599

/-! ## A297102.P5534302985478004625

`2*A300811(A004885(n+2))`
-/

namespace A297102.P5534302985478004625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300811 (A004885 (n + 2)).toNat

end

end A297102.P5534302985478004625

/-!
# A297103: The number of equal-sized squares in the highest stack of squares contained in successive Genealodrons formed from 2^n - 1 equal-sized squares.

The programs for A297103, there is no canonical definition to state claims against.
-/

/-! ## A297103.P16461713355815598334

`A319499(A004111(n+1))`
-/

namespace A297103.P16461713355815598334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319499 (A004111 (n + 1)).toNat

end

end A297103.P16461713355815598334

/-! ## A297103.P17804402456011968076

`A319499(A032235(n+1))`
-/

namespace A297103.P17804402456011968076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319499 (A032235 (n + 1)).toNat

end

end A297103.P17804402456011968076

/-! ## A297103.P13228967124544278749

`A319499(A038087(n+1))`
-/

namespace A297103.P13228967124544278749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319499 (A038087 (n + 1)).toNat

end

end A297103.P13228967124544278749

/-! ## A297103.P6251874549614376810

`A319499(A116379(n+1))`
-/

namespace A297103.P6251874549614376810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319499 (A116379 (n + 1)).toNat

end

end A297103.P6251874549614376810

/-! ## A297103.P11617743183965021870

`A319499(A116380(n+1))`
-/

namespace A297103.P11617743183965021870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319499 (A116380 (n + 1)).toNat

end

end A297103.P11617743183965021870

/-!
# A297104: Inverse permutation to A297022.

The programs for A297104, there is no canonical definition to state claims against.
-/

/-! ## A297104.P10575493683634933281

`A022447(A006255(n+1))`
-/

namespace A297104.P10575493683634933281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A006255 (n + 1)).toNat

end

end A297104.P10575493683634933281

/-! ## A297104.P874369669997985735

`A026233(A006255(2*n+1-n))`
-/

namespace A297104.P874369669997985735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (A006255 (2 * n + 1 - n)).toNat

end

end A297104.P874369669997985735

/-! ## A297104.P11595115290455447436

`A026233(A006255(n+1))%A016957(n)`
-/

namespace A297104.P11595115290455447436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026233 (A006255 (n + 1)).toNat) (A016957 n)

end

end A297104.P11595115290455447436

/-! ## A297104.P8557453318520184664

`A026233(A006255(n+1)%A017379(n))`
-/

namespace A297104.P8557453318520184664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.tmod (A006255 (n + 1)) (A017379 n)).toNat

end

end A297104.P8557453318520184664

/-! ## A297104.P17238894347127230604

`A062298(A006255(n+1))%A014206(n)`
-/

namespace A297104.P17238894347127230604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062298 (A006255 (n + 1)).toNat) (A014206 n)

end

end A297104.P17238894347127230604

/-! ## A297104.P1504141779112610065

`gcd(A000038(n), A026233(A006255(n+1)))`
-/

namespace A297104.P1504141779112610065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A026233 (A006255 (n + 1)).toNat)

end

end A297104.P1504141779112610065

/-! ## A297104.P17125510047298918147

`A026233(lcm(A006255(n+1), A020985(n)))`
-/

namespace A297104.P17125510047298918147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (Int.lcm (A006255 (n + 1)) (A020985 n))

end

end A297104.P17125510047298918147

/-! ## A297104.P5513652233081163446

`A062298(2*A006255(n+1)-A006255(n+1))`
-/

namespace A297104.P5513652233081163446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (2 * A006255 (n + 1) - A006255 (n + 1)).toNat

end

end A297104.P5513652233081163446

/-!
# A297106: Xor-Moebius transform of A156552.

The programs for A297106, the canonical program `A297106.P12266069838798532026` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297106 has offset 1).

The definition of A297106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297106.P16164107226318515251

`xor(A324712(n+1), A324714(n+1))`
-/

namespace A297106.P16164107226318515251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324712 (n + 1)) (A324714 (n + 1))

end

end A297106.P16164107226318515251

namespace A297106

/-- `xor(A324712(n+1), A324714(n+1))` -/
def P16164107226318515251.Spec : Prop :=
  ∀ n, P16164107226318515251.a n = A297106 (n + 1)

end A297106

/-! ## A297106.P8742656999695862635

`xor(A324875(n+1), A324877(n+1))`
-/

namespace A297106.P8742656999695862635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324875 (n + 1)) (A324877 (n + 1))

end

end A297106.P8742656999695862635

namespace A297106

/-- `xor(A324875(n+1), A324877(n+1))` -/
def P8742656999695862635.Spec : Prop :=
  ∀ n, P8742656999695862635.a n = A297106 (n + 1)

end A297106

/-! ## A297106.P5855632166148730644

`xor(A324712(n+1), A324715(n+1))/2`
-/

namespace A297106.P5855632166148730644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A324712 (n + 1)) (A324715 (n + 1)) : ℚ) / 2

end

end A297106.P5855632166148730644

namespace A297106

/-- `xor(A324712(n+1), A324715(n+1))/2` -/
def P5855632166148730644.Spec : Prop :=
  ∀ n, P5855632166148730644.a n = (A297106 (n + 1) : ℚ)

end A297106

/-! ## A297106.P12266069838798532026

`A088617(∑{p}[n+1, gcd(n, #)]²)*A297112(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297106

/-- `A088617(∑{p}[n+1, gcd(n, #)]²)*A297112(n+1)` -/
def P12266069838798532026.Spec : Prop :=
  ∀ n, P12266069838798532026.a n = A297106 (n + 1)

theorem P12266069838798532026.correct : P12266069838798532026.Spec := by
  intro n
  simp only [A297106, Nat.add_sub_cancel]

end A297106

/-! ## A297106.P7513727886259768952

`A297112(n+1)*A327187(A292586(n+1))`
-/

namespace A297106.P7513727886259768952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297112 (n + 1) * A327187 (A292586 (n + 1)).toNat

end

end A297106.P7513727886259768952

namespace A297106

/-- `A297112(n+1)*A327187(A292586(n+1))` -/
def P7513727886259768952.Spec : Prop :=
  ∀ n, P7513727886259768952.a n = A297106 (n + 1)

end A297106

/-! ## A297106.P2457212009066304049

`A252736(A078615(n+1))*A297112(n+1)`
-/

namespace A297106.P2457212009066304049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A078615 (n + 1)).toNat * A297112 (n + 1)

end

end A297106.P2457212009066304049

namespace A297106

/-- `A252736(A078615(n+1))*A297112(n+1)` -/
def P2457212009066304049.Spec : Prop :=
  ∀ n, P2457212009066304049.a n = A297106 (n + 1)

end A297106

/-! ## A297106.P1848942574030819206

`A005811(A322993(n+1))*A297112(n+1)`
-/

namespace A297106.P1848942574030819206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A322993 (n + 1)).toNat * A297112 (n + 1)

end

end A297106.P1848942574030819206

namespace A297106

/-- `A005811(A322993(n+1))*A297112(n+1)` -/
def P1848942574030819206.Spec : Prop :=
  ∀ n, P1848942574030819206.a n = A297106 (n + 1)

end A297106

/-! ## A297106.P12524119157237244019

`or(A297112(A068795(n+1)), A297112(n+1))`
-/

namespace A297106.P12524119157237244019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A297112 (A068795 (n + 1)).toNat) (A297112 (n + 1))

end

end A297106.P12524119157237244019

namespace A297106

/-- `or(A297112(A068795(n+1)), A297112(n+1))` -/
def P12524119157237244019.Spec : Prop :=
  ∀ n, P12524119157237244019.a n = A297106 (n + 1)

end A297106

/-!
# A297107: Fixed points of A256739, Xor-Moebius transform of natural numbers.

The programs for A297107, there is no canonical definition to state claims against.
-/

/-! ## A297107.P17703178545744914260

`∩[A187778(n+1), A391846(n+1)]`
-/

namespace A297107.P17703178545744914260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391846 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297107.P17703178545744914260

/-! ## A297107.P1401938798637099485

`∩[A007694(n+1), A295897(n+1)]`
-/

namespace A297107.P1401938798637099485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297107.P1401938798637099485

/-! ## A297107.P12659703605869731378

`∩[A187778(n+1), A295897(n+1)]`
-/

namespace A297107.P12659703605869731378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297107.P12659703605869731378

/-! ## A297107.P6686211099073101009

`record[A187778(n+1)/A344180(A007694(n+1))]`
-/

namespace A297107.P6686211099073101009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187778 (n + 1) : ℚ) / (A344180 (A007694 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297107.P6686211099073101009

/-! ## A297107.P13246739116342594280

`filter[A007694(n+1), A295896(#)]`
-/

namespace A297107.P13246739116342594280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295896 (f1 j).toNat = 1) n)

end

end A297107.P13246739116342594280

/-!
# A297108: If n is prime(k)^e, e >= 1, then a(n) = 2^(k-1), otherwise 0; Möbius transform of A048675.

The programs for A297108, the canonical program `A297108.P15990807296291497671` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297108 has offset 1).

The definition of A297108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297108.P5726147126814950788

`A048675(A014963(n+1))`
-/

namespace A297108.P5726147126814950788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A014963 (n + 1)).toNat

end

end A297108.P5726147126814950788

namespace A297108

/-- `A048675(A014963(n+1))` -/
def P5726147126814950788.Spec : Prop :=
  ∀ n, P5726147126814950788.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P2691161941943462236

`A087207(A100994(n+1))`
-/

namespace A297108.P2691161941943462236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A100994 (n + 1)).toNat

end

end A297108.P2691161941943462236

namespace A297108

/-- `A087207(A100994(n+1))` -/
def P2691161941943462236.Spec : Prop :=
  ∀ n, P2691161941943462236.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P15990807296291497671

`A131577(A297109(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A297108

/-- `A131577(A297109(n+1))` -/
def P15990807296291497671.Spec : Prop :=
  ∀ n, P15990807296291497671.a n = A297108 (n + 1)

theorem P15990807296291497671.correct : P15990807296291497671.Spec := by
  intro n
  simp only [A297108, Nat.add_sub_cancel]

end A297108

/-! ## A297108.P13134615568543800982

`A323905(2*A014963(n+1))`
-/

namespace A297108.P13134615568543800982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323905 (2 * A014963 (n + 1)).toNat

end

end A297108.P13134615568543800982

namespace A297108

/-- `A323905(2*A014963(n+1))` -/
def P13134615568543800982.Spec : Prop :=
  ∀ n, P13134615568543800982.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P10410146026516039800

`and(A087207(n+1), A120112(n))`
-/

namespace A297108.P10410146026516039800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087207 (n + 1)) (A120112 n)

end

end A297108.P10410146026516039800

namespace A297108

/-- `and(A087207(n+1), A120112(n))` -/
def P10410146026516039800.Spec : Prop :=
  ∀ n, P10410146026516039800.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P16259595839790735042

`∑{d}[A014963(n+1), A156552(#)]`
-/

namespace A297108.P16259595839790735042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A156552 d

end

end A297108.P16259595839790735042

namespace A297108

/-- `∑{d}[A014963(n+1), A156552(#)]` -/
def P16259595839790735042.Spec : Prop :=
  ∀ n, P16259595839790735042.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P6432872569580470352

`A156552(A014963(∏{p}[n+1, #]))`
-/

namespace A297108.P6432872569580470352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A014963 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A297108.P6432872569580470352

namespace A297108

/-- `A156552(A014963(∏{p}[n+1, #]))` -/
def P6432872569580470352.Spec : Prop :=
  ∀ n, P6432872569580470352.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P4314714396959065816

`A156552(A089026(∏{p}[n+1, #]))`
-/

namespace A297108.P4314714396959065816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A089026 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A297108.P4314714396959065816

namespace A297108

/-- `A156552(A089026(∏{p}[n+1, #]))` -/
def P4314714396959065816.Spec : Prop :=
  ∀ n, P4314714396959065816.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P16628468440176338357

`A010055(n+1)*A087207(n+1)`
-/

namespace A297108.P16628468440176338357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A087207 (n + 1)

end

end A297108.P16628468440176338357

namespace A297108

/-- `A010055(n+1)*A087207(n+1)` -/
def P16628468440176338357.Spec : Prop :=
  ∀ n, P16628468440176338357.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P11670247427668763246

`A069513(n+1)*A087207(n+1)`
-/

namespace A297108.P11670247427668763246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (n + 1) * A087207 (n + 1)

end

end A297108.P11670247427668763246

namespace A297108

/-- `A069513(n+1)*A087207(n+1)` -/
def P11670247427668763246.Spec : Prop :=
  ∀ n, P11670247427668763246.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P11928288202591134260

`A048676((n+1)/A048671(n+1))`
-/

namespace A297108.P11928288202591134260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048676 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A048671 (n + 1) : ℚ))).toNat

end

end A297108.P11928288202591134260

namespace A297108

/-- `A048676((n+1)/A048671(n+1))` -/
def P11928288202591134260.Spec : Prop :=
  ∀ n, P11928288202591134260.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P9251839868829802034

`A156552(gcd(n+1, A014963(n+1)))`
-/

namespace A297108.P9251839868829802034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (Int.gcd (n + 1 : ℤ) (A014963 (n + 1)))

end

end A297108.P9251839868829802034

namespace A297108

/-- `A156552(gcd(n+1, A014963(n+1)))` -/
def P9251839868829802034.Spec : Prop :=
  ∀ n, P9251839868829802034.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P1419151621481935848

`∑{d}[n+1, A008683(#)*A048675((n+1)/#)]`
-/

namespace A297108.P1419151621481935848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A048675 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297108.P1419151621481935848

namespace A297108

/-- `∑{d}[n+1, A008683(#)*A048675((n+1)/#)]` -/
def P1419151621481935848.Spec : Prop :=
  ∀ n, P1419151621481935848.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P11329090715438856802

`A156552(A014963(A008619(2*n)))`
-/

namespace A297108.P11329090715438856802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A014963 (A008619 (2 * n)).toNat).toNat

end

end A297108.P11329090715438856802

namespace A297108

/-- `A156552(A014963(A008619(2*n)))` -/
def P11329090715438856802.Spec : Prop :=
  ∀ n, P11329090715438856802.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P12430603780528498017

`A010055(n+1)*A048675(A007947(n+1))`
-/

namespace A297108.P12430603780528498017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A048675 (A007947 (n + 1)).toNat

end

end A297108.P12430603780528498017

namespace A297108

/-- `A010055(n+1)*A048675(A007947(n+1))` -/
def P12430603780528498017.Spec : Prop :=
  ∀ n, P12430603780528498017.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P17723843660002997675

`A087207(n+1)*A091862(A007947(n+1))`
-/

namespace A297108.P17723843660002997675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (n + 1) * A091862 (A007947 (n + 1)).toNat

end

end A297108.P17723843660002997675

namespace A297108

/-- `A087207(n+1)*A091862(A007947(n+1))` -/
def P17723843660002997675.Spec : Prop :=
  ∀ n, P17723843660002997675.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P1357223311049331064

`A156552(2*A014963(n+1)-A014963(n+1))`
-/

namespace A297108.P1357223311049331064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (2 * A014963 (n + 1) - A014963 (n + 1)).toNat

end

end A297108.P1357223311049331064

namespace A297108

/-- `A156552(2*A014963(n+1)-A014963(n+1))` -/
def P1357223311049331064.Spec : Prop :=
  ∀ n, P1357223311049331064.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P8968194270247000382

`A297106(A014963(2*n+1-n))`
-/

namespace A297108.P8968194270247000382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297106 (A014963 (2 * n + 1 - n)).toNat

end

end A297108.P8968194270247000382

namespace A297108

/-- `A297106(A014963(2*n+1-n))` -/
def P8968194270247000382.Spec : Prop :=
  ∀ n, P8968194270247000382.a n = A297108 (n + 1)

end A297108

/-! ## A297108.P2545944900326040372

`A285330(2*A014963(n+1))-1`
-/

namespace A297108.P2545944900326040372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285330 (2 * A014963 (n + 1)).toNat - 1

end

end A297108.P2545944900326040372

namespace A297108

/-- `A285330(2*A014963(n+1))-1` -/
def P2545944900326040372.Spec : Prop :=
  ∀ n, P2545944900326040372.a n = A297108 (n + 1)

end A297108

/-!
# A297109: If n is prime(k)^e, e >= 1, then a(n) = k, otherwise 0.

The programs for A297109, the canonical program `A297109.P3226708849595875613` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297109 has offset 1).

The definition of A297109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297109.P4640630044263495423

`A049084(∏{p}[n+1, #])`
-/

namespace A297109.P4640630044263495423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297109.P4640630044263495423

namespace A297109

/-- `A049084(∏{p}[n+1, #])` -/
def P4640630044263495423.Spec : Prop :=
  ∀ n, P4640630044263495423.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P6025639567312869730

`A000720(A014963(n+1))`
-/

namespace A297109.P6025639567312869730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014963 (n + 1)).toNat

end

end A297109.P6025639567312869730

namespace A297109

/-- `A000720(A014963(n+1))` -/
def P6025639567312869730.Spec : Prop :=
  ∀ n, P6025639567312869730.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P7773047820343474190

`A049084(A007947(n+1))`
-/

namespace A297109.P7773047820343474190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A007947 (n + 1)).toNat

end

end A297109.P7773047820343474190

namespace A297109

/-- `A049084(A007947(n+1))` -/
def P7773047820343474190.Spec : Prop :=
  ∀ n, P7773047820343474190.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P10949235419818589428

`A049084(A052410(n+1))`
-/

namespace A297109.P10949235419818589428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A052410 (n + 1)).toNat

end

end A297109.P10949235419818589428

namespace A297109

/-- `A049084(A052410(n+1))` -/
def P10949235419818589428.Spec : Prop :=
  ∀ n, P10949235419818589428.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P11221971474733184788

`A049084(A088835(n+1))`
-/

namespace A297109.P11221971474733184788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A088835 (n + 1)).toNat

end

end A297109.P11221971474733184788

namespace A297109

/-- `A049084(A088835(n+1))` -/
def P11221971474733184788.Spec : Prop :=
  ∀ n, P11221971474733184788.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P15838134278740761293

`A055396(A100994(n+1))`
-/

namespace A297109.P15838134278740761293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A100994 (n + 1)).toNat

end

end A297109.P15838134278740761293

namespace A297109

/-- `A055396(A100994(n+1))` -/
def P15838134278740761293.Spec : Prop :=
  ∀ n, P15838134278740761293.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P12557569047003411014

`A049084(A182816(n+1))`
-/

namespace A297109.P12557569047003411014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A182816 (n + 1)).toNat

end

end A297109.P12557569047003411014

namespace A297109

/-- `A049084(A182816(n+1))` -/
def P12557569047003411014.Spec : Prop :=
  ∀ n, P12557569047003411014.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P1062146004736935217

`A049084(A195637(n+1))`
-/

namespace A297109.P1062146004736935217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A195637 (n + 1)).toNat

end

end A297109.P1062146004736935217

namespace A297109

/-- `A049084(A195637(n+1))` -/
def P1062146004736935217.Spec : Prop :=
  ∀ n, P1062146004736935217.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P3226708849595875613

`A230980(A020500(n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A297109

/-- `A230980(A020500(n+1))` -/
def P3226708849595875613.Spec : Prop :=
  ∀ n, P3226708849595875613.a n = A297109 (n + 1)

theorem P3226708849595875613.correct : P3226708849595875613.Spec := by
  intro n
  simp only [A297109, Nat.add_sub_cancel]

end A297109

/-! ## A297109.P2621263326685925748

`A049084(A243074(n+1))`
-/

namespace A297109.P2621263326685925748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A243074 (n + 1)).toNat

end

end A297109.P2621263326685925748

namespace A297109

/-- `A049084(A243074(n+1))` -/
def P2621263326685925748.Spec : Prop :=
  ∀ n, P2621263326685925748.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P8347005250101174342

`A346698(2*A014963(n+1))`
-/

namespace A297109.P8347005250101174342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A014963 (n + 1)).toNat

end

end A297109.P8347005250101174342

namespace A297109

/-- `A346698(2*A014963(n+1))` -/
def P8347005250101174342.Spec : Prop :=
  ∀ n, P8347005250101174342.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P14256469168689021118

`∑{d}[A014963(n+1), A055396(#)]`
-/

namespace A297109.P14256469168689021118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A297109.P14256469168689021118

namespace A297109

/-- `∑{d}[A014963(n+1), A055396(#)]` -/
def P14256469168689021118.Spec : Prop :=
  ∀ n, P14256469168689021118.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P17647856771359351802

`∑{d}[A014963(n+1), A061395(#)]`
-/

namespace A297109.P17647856771359351802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A297109.P17647856771359351802

namespace A297109

/-- `∑{d}[A014963(n+1), A061395(#)]` -/
def P17647856771359351802.Spec : Prop :=
  ∀ n, P17647856771359351802.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P10355694680104985139

`A241919(n+1)-A242411(n+1)`
-/

namespace A297109.P10355694680104985139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (n + 1) - A242411 (n + 1)

end

end A297109.P10355694680104985139

namespace A297109

/-- `A241919(n+1)-A242411(n+1)` -/
def P10355694680104985139.Spec : Prop :=
  ∀ n, P10355694680104985139.a n = A297109 (n + 1)

theorem P10355694680104985139.correct : P10355694680104985139.Spec := by
  intro n
  simp only [A297109, Nat.add_sub_cancel, A297109.P10355694680104985139.a, A297109.P3226708849595875613.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A241919, A241919.P9906273863327780640.a, A242411, A242411.P17809886446598189912.a, A051119, A051119.P33126866714900772.a, A061395, A061395.P8431317036300486107.a, A029837, A029837.P1050578713049589.a, A053585, A053585.P10057542052652531507.a, A087207, A087207.P12536008426233777954.a, A006530, A006530.P13372528560459906635.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297109

/-! ## A297109.P17294510904213069789

`A010055(n+1)*A055396(n+1)`
-/

namespace A297109.P17294510904213069789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A055396 (n + 1)

end

end A297109.P17294510904213069789

namespace A297109

/-- `A010055(n+1)*A055396(n+1)` -/
def P17294510904213069789.Spec : Prop :=
  ∀ n, P17294510904213069789.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P12836085030709575663

`A010055(n+1)*A061395(n+1)`
-/

namespace A297109.P12836085030709575663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A061395 (n + 1)

end

end A297109.P12836085030709575663

namespace A297109

/-- `A010055(n+1)*A061395(n+1)` -/
def P12836085030709575663.Spec : Prop :=
  ∀ n, P12836085030709575663.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P9807930765660267570

`A010055(n+1)*A066328(n+1)`
-/

namespace A297109.P9807930765660267570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010055 (n + 1) * A066328 (n + 1)

end

end A297109.P9807930765660267570

namespace A297109

/-- `A010055(n+1)*A066328(n+1)` -/
def P9807930765660267570.Spec : Prop :=
  ∀ n, P9807930765660267570.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P7218806944673627660

`A055396(n+1)*A069513(n+1)`
-/

namespace A297109.P7218806944673627660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A069513 (n + 1)

end

end A297109.P7218806944673627660

namespace A297109

/-- `A055396(n+1)*A069513(n+1)` -/
def P7218806944673627660.Spec : Prop :=
  ∀ n, P7218806944673627660.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P17310504240388819418

`A061395(n+1)*A069513(n+1)`
-/

namespace A297109.P17310504240388819418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) * A069513 (n + 1)

end

end A297109.P17310504240388819418

namespace A297109

/-- `A061395(n+1)*A069513(n+1)` -/
def P17310504240388819418.Spec : Prop :=
  ∀ n, P17310504240388819418.a n = A297109 (n + 1)

end A297109

/-! ## A297109.P1266600395601934824

`A064839(n+1)*A069513(n+1)`
-/

namespace A297109.P1266600395601934824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (n + 1) * A069513 (n + 1)

end

end A297109.P1266600395601934824

namespace A297109

/-- `A064839(n+1)*A069513(n+1)` -/
def P1266600395601934824.Spec : Prop :=
  ∀ n, P1266600395601934824.a n = A297109 (n + 1)

end A297109

/-!
# A297110: Xor-Moebius transform of A006068, inverse of the binary Gray code.

The programs for A297110, there is no canonical definition to state claims against.
-/

/-! ## A297110.P617297809703027054

`A006068(A256739(n+1))`
-/

namespace A297110.P617297809703027054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A256739 (n + 1)).toNat

end

end A297110.P617297809703027054

/-! ## A297110.P6400224759311949954

`A292600(2*A256739(n+1))`
-/

namespace A297110.P6400224759311949954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A256739 (n + 1)).toNat

end

end A297110.P6400224759311949954

/-! ## A297110.P8079929214766905400

`A006068(xor(n+1, A296207(n+1)))`
-/

namespace A297110.P8079929214766905400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (Int.xor (n + 1 : ℤ) (A296207 (n + 1))).toNat

end

end A297110.P8079929214766905400

/-! ## A297110.P18276870637132024737

`A268716(xor(n+1, A296207(n+1)))/2`
-/

namespace A297110.P18276870637132024737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 (Int.xor (n + 1 : ℤ) (A296207 (n + 1))).toNat : ℚ) / 2

end

end A297110.P18276870637132024737

/-! ## A297110.P15457815820059541450

`A292600(A256739(n+1)+A256739(n+1))`
-/

namespace A297110.P15457815820059541450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A256739 (n + 1) + A256739 (n + 1)).toNat

end

end A297110.P15457815820059541450

/-!
# A297111: Möbius transform of A005187, where A005187(n) = 2n - (number of 1's in binary representation of n).

The programs for A297111, the canonical program `A297111.P9451184863548072993` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297111 has offset 1).

The definition of A297111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300244, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297111.P3122666455531069836

`n+1+A297114(n+1)`
-/

namespace A297111.P3122666455531069836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A297114 (n + 1)

end

end A297111.P3122666455531069836

namespace A297111

/-- `n+1+A297114(n+1)` -/
def P3122666455531069836.Spec : Prop :=
  ∀ n, P3122666455531069836.a n = A297111 (n + 1)

theorem P3122666455531069836.correct : P3122666455531069836.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P3122666455531069836.a, A297111.P9451184863548072993.a, A005187, A005187.P3874015513960485494.a, A297114, A297114.P2765220314566008295.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P5657983458103185598

`A000010(n+1)+A297117(n+1)`
-/

namespace A297111.P5657983458103185598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + A297117 (n + 1)

end

end A297111.P5657983458103185598

namespace A297111

/-- `A000010(n+1)+A297117(n+1)` -/
def P5657983458103185598.Spec : Prop :=
  ∀ n, P5657983458103185598.a n = A297111 (n + 1)

theorem P5657983458103185598.correct : P5657983458103185598.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P5657983458103185598.a, A297111.P9451184863548072993.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A297117, A297117.P14003803636479694355.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A297114, A297114.P2765220314566008295.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P9451184863548072993

`A005187(n+1)-A300244(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A297111

/-- `A005187(n+1)-A300244(n+1)` -/
def P9451184863548072993.Spec : Prop :=
  ∀ n, P9451184863548072993.a n = A297111 (n + 1)

theorem P9451184863548072993.correct : P9451184863548072993.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel]

end A297111

/-! ## A297111.P5464641205347008934

`2*A000010(n+1)-A297115(n+1)`
-/

namespace A297111.P5464641205347008934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A297115 (n + 1)

end

end A297111.P5464641205347008934

namespace A297111

/-- `2*A000010(n+1)-A297115(n+1)` -/
def P5464641205347008934.Spec : Prop :=
  ∀ n, P5464641205347008934.a n = A297111 (n + 1)

theorem P5464641205347008934.correct : P5464641205347008934.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P5464641205347008934.a, A297111.P9451184863548072993.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A297115, A297115.P17041612972225485539.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A083254, A083254.P7544960031424623367.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A297114, A297114.P2765220314566008295.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P12117506196993281359

`∑{d}[n+1, #*A378756((n+1)/#)]`
-/

namespace A297111.P12117506196993281359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A378756 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297111.P12117506196993281359

namespace A297111

/-- `∑{d}[n+1, #*A378756((n+1)/#)]` -/
def P12117506196993281359.Spec : Prop :=
  ∀ n, P12117506196993281359.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P10866171507701805557

`A297117(n+1)+sqrt(A127473(n+1))`
-/

namespace A297111.P10866171507701805557
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A297117 (n + 1) : ℝ) + Real.sqrt (A127473 (n + 1) : ℝ)

end

end A297111.P10866171507701805557

namespace A297111

/-- `A297117(n+1)+sqrt(A127473(n+1))` -/
def P10866171507701805557.Spec : Prop :=
  ∀ n, P10866171507701805557.a n = (A297111 (n + 1) : ℝ)

end A297111

/-! ## A297111.P1059657672687047695

`∑[A001511(n+1)]-A300244(n+1)`
-/

namespace A297111.P1059657672687047695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A300244 (n + 1)

end

end A297111.P1059657672687047695

namespace A297111

/-- `∑[A001511(n+1)]-A300244(n+1)` -/
def P1059657672687047695.Spec : Prop :=
  ∀ n, P1059657672687047695.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P1186364080067989750

`A297115(n+1)+2*A297117(n+1)`
-/

namespace A297111.P1186364080067989750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297115 (n + 1) + 2 * A297117 (n + 1)

end

end A297111.P1186364080067989750

namespace A297111

/-- `A297115(n+1)+2*A297117(n+1)` -/
def P1186364080067989750.Spec : Prop :=
  ∀ n, P1186364080067989750.a n = A297111 (n + 1)

theorem P1186364080067989750.correct : P1186364080067989750.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P1186364080067989750.a, A297111.P9451184863548072993.a, A005187, A005187.P3874015513960485494.a, A297115, A297115.P17041612972225485539.a, A297117, A297117.P14003803636479694355.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297114, A297114.P2765220314566008295.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P17631137223447956406

`A297117(n+1)-A219428(n+1)+n`
-/

namespace A297111.P17631137223447956406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297117 (n + 1) - A219428 (n + 1) + (n : ℤ)

end

end A297111.P17631137223447956406

namespace A297111

/-- `A297117(n+1)-A219428(n+1)+n` -/
def P17631137223447956406.Spec : Prop :=
  ∀ n, P17631137223447956406.a n = A297111 (n + 1)

theorem P17631137223447956406.correct : P17631137223447956406.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P17631137223447956406.a, A297111.P9451184863548072993.a, A005187, A005187.P3874015513960485494.a, A219428, A219428.P9184341513320465947.a, A297117, A297117.P14003803636479694355.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P14914552225075464663

`∑{d}[n+1, A008683(#)*A005187((n+1)/#)]`
-/

namespace A297111.P14914552225075464663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A005187 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297111.P14914552225075464663

namespace A297111

/-- `∑{d}[n+1, A008683(#)*A005187((n+1)/#)]` -/
def P14914552225075464663.Spec : Prop :=
  ∀ n, P14914552225075464663.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P17266395484291292504

`∑{d}[n+1, A007427(#)*A318446((n+1)/#)]`
-/

namespace A297111.P17266395484291292504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A318446 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297111.P17266395484291292504

namespace A297111

/-- `∑{d}[n+1, A007427(#)*A318446((n+1)/#)]` -/
def P17266395484291292504.Spec : Prop :=
  ∀ n, P17266395484291292504.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P13753213034962673916

`∑{d}[n+1, A008683(#)*A294898((n+1)/#)]+1+n`
-/

namespace A297111.P13753213034962673916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A294898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + 1 + (n : ℤ)

end

end A297111.P13753213034962673916

namespace A297111

/-- `∑{d}[n+1, A008683(#)*A294898((n+1)/#)]+1+n` -/
def P13753213034962673916.Spec : Prop :=
  ∀ n, P13753213034962673916.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P1022435767522764769

`A051953(n+1)+A297117(n+1)+A083254(n+1)`
-/

namespace A297111.P1022435767522764769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A297117 (n + 1) + A083254 (n + 1))

end

end A297111.P1022435767522764769

namespace A297111

/-- `A051953(n+1)+A297117(n+1)+A083254(n+1)` -/
def P1022435767522764769.Spec : Prop :=
  ∀ n, P1022435767522764769.a n = A297111 (n + 1)

theorem P1022435767522764769.correct : P1022435767522764769.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P1022435767522764769.a, A297111.P9451184863548072993.a, A005187, A005187.P3874015513960485494.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297117, A297117.P14003803636479694355.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000010, A000010.P4673923239450215316.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P1639734052481592425

`A005187(n+1)-(A317844(n+1)+A001065(n+1))`
-/

namespace A297111.P1639734052481592425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A317844 (n + 1) + A001065 (n + 1))

end

end A297111.P1639734052481592425

namespace A297111

/-- `A005187(n+1)-(A317844(n+1)+A001065(n+1))` -/
def P1639734052481592425.Spec : Prop :=
  ∀ n, P1639734052481592425.a n = A297111 (n + 1)

theorem P1639734052481592425.correct : P1639734052481592425.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P1639734052481592425.a, A297111.P9451184863548072993.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A317844, A317844.P7793600775375958411.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P5329761756524699409

`A000203(n+1)+A294898(n+1)-A300244(n+1)`
-/

namespace A297111.P5329761756524699409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A294898 (n + 1) - A300244 (n + 1))

end

end A297111.P5329761756524699409

namespace A297111

/-- `A000203(n+1)+A294898(n+1)-A300244(n+1)` -/
def P5329761756524699409.Spec : Prop :=
  ∀ n, P5329761756524699409.a n = A297111 (n + 1)

theorem P5329761756524699409.correct : P5329761756524699409.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P5329761756524699409.a, A297111.P9451184863548072993.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A294898, A294898.P11311681912968614755.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P8544939565879363969

`A318446(n+1)-(A318445(n+1)+A300244(n+1))`
-/

namespace A297111.P8544939565879363969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318446 (n + 1) - (A318445 (n + 1) + A300244 (n + 1))

end

end A297111.P8544939565879363969

namespace A297111

/-- `A318446(n+1)-(A318445(n+1)+A300244(n+1))` -/
def P8544939565879363969.Spec : Prop :=
  ∀ n, P8544939565879363969.a n = A297111 (n + 1)

theorem P8544939565879363969.correct : P8544939565879363969.Spec := by
  intro n
  simp only [A297111, Nat.add_sub_cancel, A297111.P8544939565879363969.a, A297111.P9451184863548072993.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A318445, A318445.P14423617105751206309.a, A318446, A318446.P15456378117456021358.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A211779, A211779.P11493622072280912374.a, A318447, A318447.P10080329051014422547.a, A318448, A318448.P18323809931802074675.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P11735613842914743111.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297111

/-! ## A297111.P8585976963328733411

`A346238(n+1)-(A346237(n+1)+A300244(n+1))`
-/

namespace A297111.P8585976963328733411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - (A346237 (n + 1) + A300244 (n + 1))

end

end A297111.P8585976963328733411

namespace A297111

/-- `A346238(n+1)-(A346237(n+1)+A300244(n+1))` -/
def P8585976963328733411.Spec : Prop :=
  ∀ n, P8585976963328733411.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P3490788873356303588

`A011371(2*(n+1))-A300244(n+1)`
-/

namespace A297111.P3490788873356303588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (2 * (n + 1)) - A300244 (n + 1)

end

end A297111.P3490788873356303588

namespace A297111

/-- `A011371(2*(n+1))-A300244(n+1)` -/
def P3490788873356303588.Spec : Prop :=
  ∀ n, P3490788873356303588.a n = A297111 (n + 1)

end A297111

/-! ## A297111.P3870625659209812096

`A324397(A005940(n+2))+1+n`
-/

namespace A297111.P3870625659209812096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324397 (A005940 (n + 2)).toNat + 1 + (n : ℤ)

end

end A297111.P3870625659209812096

namespace A297111

/-- `A324397(A005940(n+2))+1+n` -/
def P3870625659209812096.Spec : Prop :=
  ∀ n, P3870625659209812096.a n = A297111 (n + 1)

end A297111

/-!
# A297112: Möbius transform of A156552.

The programs for A297112, the canonical program `A297112.P4192810520716380487` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297112 has offset 1).

The definition of A297112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297112.P4192810520716380487

`A131577(A297113(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A297112

/-- `A131577(A297113(n+1))` -/
def P4192810520716380487.Spec : Prop :=
  ∀ n, P4192810520716380487.a n = A297112 (n + 1)

theorem P4192810520716380487.correct : P4192810520716380487.Spec := by
  intro n
  simp only [A297112, Nat.add_sub_cancel]

end A297112

/-! ## A297112.P9599882295689057588

`A364557(n+1)-A000007(n)`
-/

namespace A297112.P9599882295689057588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364557 (n + 1) - A000007 n

end

end A297112.P9599882295689057588

namespace A297112

/-- `A364557(n+1)-A000007(n)` -/
def P9599882295689057588.Spec : Prop :=
  ∀ n, P9599882295689057588.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P324551622278184795

`A057427(n)*A364557(n+1)`
-/

namespace A297112.P324551622278184795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A364557 (n + 1)

end

end A297112.P324551622278184795

namespace A297112

/-- `A057427(n)*A364557(n+1)` -/
def P324551622278184795.Spec : Prop :=
  ∀ n, P324551622278184795.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P2366445330376288822

`and(A057428(n), A364557(n+1))`
-/

namespace A297112.P2366445330376288822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A364557 (n + 1))

end

end A297112.P2366445330376288822

namespace A297112

/-- `and(A057428(n), A364557(n+1))` -/
def P2366445330376288822.Spec : Prop :=
  ∀ n, P2366445330376288822.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P11695891117971119236

`and(A134824(n), A364557(n+1))`
-/

namespace A297112.P11695891117971119236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A364557 (n + 1))

end

end A297112.P11695891117971119236

namespace A297112

/-- `and(A134824(n), A364557(n+1))` -/
def P11695891117971119236.Spec : Prop :=
  ∀ n, P11695891117971119236.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P2841737900370084639

`A156552(n+1)-A297168(n+1)`
-/

namespace A297112.P2841737900370084639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (n + 1) - A297168 (n + 1)

end

end A297112.P2841737900370084639

namespace A297112

/-- `A156552(n+1)-A297168(n+1)` -/
def P2841737900370084639.Spec : Prop :=
  ∀ n, P2841737900370084639.a n = A297112 (n + 1)

theorem P2841737900370084639.correct : P2841737900370084639.Spec := by
  intro n
  simp only [A297112, Nat.add_sub_cancel, A297112.P2841737900370084639.a, A297112.P4192810520716380487.a, A131577, A131577.P3998309598604981540.a, A156552, A156552.P4268073137713085227.a, A297113, A297113.P441289280190658386.a, A297168, A297168.P17205494295370266601.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A364557, A364557.P16113127302810243144.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A059841, A059841.P7264174615531153985.a, A122111, A122111.P18124015185857335041.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297112

/-! ## A297112.P13431401080343799877

`∑{d}[n+1, A008683(#)*A156552((n+1)/#)]`
-/

namespace A297112.P13431401080343799877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A156552 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297112.P13431401080343799877

namespace A297112

/-- `∑{d}[n+1, A008683(#)*A156552((n+1)/#)]` -/
def P13431401080343799877.Spec : Prop :=
  ∀ n, P13431401080343799877.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P1348745566612027094

`∑{d}[n+1, A046692(#)*A329372((n+1)/#)]`
-/

namespace A297112.P1348745566612027094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A329372 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297112.P1348745566612027094

namespace A297112

/-- `∑{d}[n+1, A046692(#)*A329372((n+1)/#)]` -/
def P1348745566612027094.Spec : Prop :=
  ∀ n, P1348745566612027094.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P9720983992645133839

`2^A297167(n+1)-A290079(A000040(n+1))`
-/

namespace A297112.P9720983992645133839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A297167 (n + 1) : ℤ) - (A290079 (A000040 (n + 1)).toNat : ℚ)

end

end A297112.P9720983992645133839

namespace A297112

/-- `2^A297167(n+1)-A290079(A000040(n+1))` -/
def P9720983992645133839.Spec : Prop :=
  ∀ n, P9720983992645133839.a n = (A297112 (n + 1) : ℚ)

end A297112

/-! ## A297112.P1732422078736677410

`and(A297106(n+1), A324195(n+1))`
-/

namespace A297112.P1732422078736677410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A297106 (n + 1)) (A324195 (n + 1))

end

end A297112.P1732422078736677410

namespace A297112

/-- `and(A297106(n+1), A324195(n+1))` -/
def P1732422078736677410.Spec : Prop :=
  ∀ n, P1732422078736677410.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P5772872590488661261

`gcd(A131572(n), A297106(n+1))`
-/

namespace A297112.P5772872590488661261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131572 n) (A297106 (n + 1))

end

end A297112.P5772872590488661261

namespace A297112

/-- `gcd(A131572(n), A297106(n+1))` -/
def P5772872590488661261.Spec : Prop :=
  ∀ n, (P5772872590488661261.a n : ℤ) = A297112 (n + 1)

end A297112

/-! ## A297112.P8932571102225985097

`A364557(n+1)%A001875(n)`
-/

namespace A297112.P8932571102225985097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364557 (n + 1)) (A001875 n)

end

end A297112.P8932571102225985097

namespace A297112

/-- `A364557(n+1)%A001875(n)` -/
def P8932571102225985097.Spec : Prop :=
  ∀ n, P8932571102225985097.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P2631737982124869361

`and(A000225(n), A364557(n+1))`
-/

namespace A297112.P2631737982124869361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A364557 (n + 1))

end

end A297112.P2631737982124869361

namespace A297112

/-- `and(A000225(n), A364557(n+1))` -/
def P2631737982124869361.Spec : Prop :=
  ∀ n, P2631737982124869361.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P4005612337579382423

`and(A296965(n), A364557(n+1))`
-/

namespace A297112.P4005612337579382423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A296965 n) (A364557 (n + 1))

end

end A297112.P4005612337579382423

namespace A297112

/-- `and(A296965(n), A364557(n+1))` -/
def P4005612337579382423.Spec : Prop :=
  ∀ n, P4005612337579382423.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P4120437645322819937

`and(A192033(n), A364557(n+1))`
-/

namespace A297112.P4120437645322819937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A192033 n) (A364557 (n + 1))

end

end A297112.P4120437645322819937

namespace A297112

/-- `and(A192033(n), A364557(n+1))` -/
def P4120437645322819937.Spec : Prop :=
  ∀ n, P4120437645322819937.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P14658136694181049698

`and(A281500(n), A364557(n+1))`
-/

namespace A297112.P14658136694181049698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281500 n) (A364557 (n + 1))

end

end A297112.P14658136694181049698

namespace A297112

/-- `and(A281500(n), A364557(n+1))` -/
def P14658136694181049698.Spec : Prop :=
  ∀ n, P14658136694181049698.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P18367986178036796573

`and(A140683(n), A364557(n+1))`
-/

namespace A297112.P18367986178036796573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A140683 n) (A364557 (n + 1))

end

end A297112.P18367986178036796573

namespace A297112

/-- `and(A140683(n), A364557(n+1))` -/
def P18367986178036796573.Spec : Prop :=
  ∀ n, P18367986178036796573.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P17847056752903839318

`and(A153893(n), A364557(n+1))`
-/

namespace A297112.P17847056752903839318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153893 n) (A364557 (n + 1))

end

end A297112.P17847056752903839318

namespace A297112

/-- `and(A153893(n), A364557(n+1))` -/
def P17847056752903839318.Spec : Prop :=
  ∀ n, P17847056752903839318.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P3094047145619324682

`and(A086224(n), A364557(n+1))`
-/

namespace A297112.P3094047145619324682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086224 n) (A364557 (n + 1))

end

end A297112.P3094047145619324682

namespace A297112

/-- `and(A086224(n), A364557(n+1))` -/
def P3094047145619324682.Spec : Prop :=
  ∀ n, P3094047145619324682.a n = A297112 (n + 1)

end A297112

/-! ## A297112.P1503797254595730739

`and(A153894(n), A364557(n+1))`
-/

namespace A297112.P1503797254595730739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153894 n) (A364557 (n + 1))

end

end A297112.P1503797254595730739

namespace A297112

/-- `and(A153894(n), A364557(n+1))` -/
def P1503797254595730739.Spec : Prop :=
  ∀ n, P1503797254595730739.a n = A297112 (n + 1)

end A297112

/-!
# A297113: a(1) = 0, a(2) = 1, after which, a(n) = a(n/2) if n is of the form 4k+2, and otherwise a(n) = 1+a(A252463(n)).

The programs for A297113, the canonical program `A297113.P441289280190658386` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297113 has offset 1).

The definition of A297113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046660, A061395, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297113.P441289280190658386

`A046660(n+1)+A061395(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A297113

/-- `A046660(n+1)+A061395(n+1)` -/
def P441289280190658386.Spec : Prop :=
  ∀ n, P441289280190658386.a n = A297113 (n + 1)

theorem P441289280190658386.correct : P441289280190658386.Spec := by
  intro n
  simp only [A297113, Nat.add_sub_cancel]

end A297113

/-! ## A297113.P8540029206980627972

`A252464(n+1)-A297155(n+1)`
-/

namespace A297113.P8540029206980627972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A297155 (n + 1)

end

end A297113.P8540029206980627972

namespace A297113

/-- `A252464(n+1)-A297155(n+1)` -/
def P8540029206980627972.Spec : Prop :=
  ∀ n, P8540029206980627972.a n = A297113 (n + 1)

theorem P8540029206980627972.correct : P8540029206980627972.Spec := by
  intro n
  simp only [A297113, Nat.add_sub_cancel, A297113.P8540029206980627972.a, A297113.P441289280190658386.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A252464, A252464.P11274602121942962009.a, A297155, A297155.P1611206963555320167.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A059841, A059841.P7264174615531153985.a, A122111, A122111.P18124015185857335041.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297113

/-! ## A297113.P17851128515061354542

`(A297167(n+1)+1)%(n+1)`
-/

namespace A297113.P17851128515061354542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297167 (n + 1) + 1) (n + 1 : ℤ)

end

end A297113.P17851128515061354542

namespace A297113

/-- `(A297167(n+1)+1)%(n+1)` -/
def P17851128515061354542.Spec : Prop :=
  ∀ n, P17851128515061354542.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P8752528774088983008

`A079067(n+1)+∑{e}[n+1, #]`
-/

namespace A297113.P8752528774088983008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) + ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A297113.P8752528774088983008

namespace A297113

/-- `A079067(n+1)+∑{e}[n+1, #]` -/
def P8752528774088983008.Spec : Prop :=
  ∀ n, P8752528774088983008.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P16484738997916706358

`A252464(A217434(n+1))`
-/

namespace A297113.P16484738997916706358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A217434 (n + 1)).toNat

end

end A297113.P16484738997916706358

namespace A297113

/-- `A252464(A217434(n+1))` -/
def P16484738997916706358.Spec : Prop :=
  ∀ n, P16484738997916706358.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P3932466341209244870

`A297167(n+1)+A057427(n)`
-/

namespace A297113.P3932466341209244870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) + A057427 n

end

end A297113.P3932466341209244870

namespace A297113

/-- `A297167(n+1)+A057427(n)` -/
def P3932466341209244870.Spec : Prop :=
  ∀ n, P3932466341209244870.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P5265746713088359479

`A297167(n+1)-A057428(n)`
-/

namespace A297113.P5265746713088359479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) - A057428 n

end

end A297113.P5265746713088359479

namespace A297113

/-- `A297167(n+1)-A057428(n)` -/
def P5265746713088359479.Spec : Prop :=
  ∀ n, P5265746713088359479.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P15897350295112985818

`A079067(n+1)+Δ[A022559(n)]`
-/

namespace A297113.P15897350295112985818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) + (f1 (n + 1) - f1 n)

end

end A297113.P15897350295112985818

namespace A297113

/-- `A079067(n+1)+Δ[A022559(n)]` -/
def P15897350295112985818.Spec : Prop :=
  ∀ n, P15897350295112985818.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P9890389081422541631

`A079067(n+1)+A001222(n+1)`
-/

namespace A297113.P9890389081422541631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 1) + A001222 (n + 1)

end

end A297113.P9890389081422541631

namespace A297113

/-- `A079067(n+1)+A001222(n+1)` -/
def P9890389081422541631.Spec : Prop :=
  ∀ n, P9890389081422541631.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P11741555547781486759

`A375136(n+1)+A252735(n+1)`
-/

namespace A297113.P11741555547781486759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375136 (n + 1) + A252735 (n + 1)

end

end A297113.P11741555547781486759

namespace A297113

/-- `A375136(n+1)+A252735(n+1)` -/
def P11741555547781486759.Spec : Prop :=
  ∀ n, P11741555547781486759.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P3113914016159294750

`A297167(n+1)+1-A000007(n)`
-/

namespace A297113.P3113914016159294750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (n + 1) + (1 - A000007 n)

end

end A297113.P3113914016159294750

namespace A297113

/-- `A297167(n+1)+1-A000007(n)` -/
def P3113914016159294750.Spec : Prop :=
  ∀ n, P3113914016159294750.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P16531821219318789807

`A056239(n+1)-A325166(n+1)`
-/

namespace A297113.P16531821219318789807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) - A325166 (n + 1)

end

end A297113.P16531821219318789807

namespace A297113

/-- `A056239(n+1)-A325166(n+1)` -/
def P16531821219318789807.Spec : Prop :=
  ∀ n, P16531821219318789807.a n = A297113 (n + 1)

theorem P16531821219318789807.correct : P16531821219318789807.Spec := by
  intro n
  simp only [A297113, Nat.add_sub_cancel, A297113.P16531821219318789807.a, A297113.P441289280190658386.a, A046660, A046660.P3614759855976580945.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A325166, A325166.P2969046862009635167.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A059841, A059841.P7264174615531153985.a, A122111, A122111.P18124015185857335041.a, A048881, A048881.P16567064232951496228.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297113

/-! ## A297113.P13048019386793646910

`A061395(n+1)+A001222((n+1)/∏{p}[n+1, #])`
-/

namespace A297113.P13048019386793646910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A297113.P13048019386793646910

namespace A297113

/-- `A061395(n+1)+A001222((n+1)/∏{p}[n+1, #])` -/
def P13048019386793646910.Spec : Prop :=
  ∀ n, P13048019386793646910.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P12137815811008962075

`A061395(n+1)+A001222(A003557(n+1))`
-/

namespace A297113.P12137815811008962075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A001222 (A003557 (n + 1)).toNat

end

end A297113.P12137815811008962075

namespace A297113

/-- `A061395(n+1)+A001222(A003557(n+1))` -/
def P12137815811008962075.Spec : Prop :=
  ∀ n, P12137815811008962075.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P17620688182623435880

`A055396(A006530(n+1))+A046660(n+1)`
-/

namespace A297113.P17620688182623435880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006530 (n + 1)).toNat + A046660 (n + 1)

end

end A297113.P17620688182623435880

namespace A297113

/-- `A055396(A006530(n+1))+A046660(n+1)` -/
def P17620688182623435880.Spec : Prop :=
  ∀ n, P17620688182623435880.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P5436038654038756522

`A001222(n+1)+A061395(n+1)-A001221(n+1)`
-/

namespace A297113.P5436038654038756522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A061395 (n + 1) - A001221 (n + 1))

end

end A297113.P5436038654038756522

namespace A297113

/-- `A001222(n+1)+A061395(n+1)-A001221(n+1)` -/
def P5436038654038756522.Spec : Prop :=
  ∀ n, P5436038654038756522.a n = A297113 (n + 1)

theorem P5436038654038756522.correct : P5436038654038756522.Spec := by
  intro n
  simp only [A297113, Nat.add_sub_cancel, A297113.P5436038654038756522.a, A297113.P441289280190658386.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A029837, A029837.P1050578713049589.a, A059841, A059841.P7264174615531153985.a, A087207, A087207.P12536008426233777954.a, A122111, A122111.P18124015185857335041.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A064989, A064989.P13349672914146769936.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A297108, A297108.P15990807296291497671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297113

/-! ## A297113.P17380616745953268553

`A061395(n+1)+A324192(n+1)-A324179(n+1)`
-/

namespace A297113.P17380616745953268553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + (A324192 (n + 1) - A324179 (n + 1))

end

end A297113.P17380616745953268553

namespace A297113

/-- `A061395(n+1)+A324192(n+1)-A324179(n+1)` -/
def P17380616745953268553.Spec : Prop :=
  ∀ n, P17380616745953268553.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P12226901508814655881

`A049084(A006530(n+1))+A001222(A003557(n+1))`
-/

namespace A297113.P12226901508814655881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A006530 (n + 1)).toNat + A001222 (A003557 (n + 1)).toNat

end

end A297113.P12226901508814655881

namespace A297113

/-- `A049084(A006530(n+1))+A001222(A003557(n+1))` -/
def P12226901508814655881.Spec : Prop :=
  ∀ n, P12226901508814655881.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P2523228463883139320

`A046660(n+1)+A056239(n+1)-A056239(A052126(n+1))`
-/

namespace A297113.P2523228463883139320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + (A056239 (n + 1) - A056239 (A052126 (n + 1)).toNat)

end

end A297113.P2523228463883139320

namespace A297113

/-- `A046660(n+1)+A056239(n+1)-A056239(A052126(n+1))` -/
def P2523228463883139320.Spec : Prop :=
  ∀ n, P2523228463883139320.a n = A297113 (n + 1)

end A297113

/-! ## A297113.P16891631080678739025

`A297167(n+1)+A297112(n+1)/A364557(n+1)`
-/

namespace A297113.P16891631080678739025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297167 (n + 1) : ℚ) + (A297112 (n + 1) : ℚ) / (A364557 (n + 1) : ℚ)

end

end A297113.P16891631080678739025

namespace A297113

/-- `A297167(n+1)+A297112(n+1)/A364557(n+1)` -/
def P16891631080678739025.Spec : Prop :=
  ∀ n, P16891631080678739025.a n = (A297113 (n + 1) : ℚ)

end A297113

/-!
# A297114: Möbius transform of A294898, where A294898 is deficiency minus binary weight.

The programs for A297114, the canonical program `A297114.P2765220314566008295` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297114 has offset 1).

The definition of A297114 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297111, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297114.P2765220314566008295

`A297111(n+1)-(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A297114

/-- `A297111(n+1)-(n+1)` -/
def P2765220314566008295.Spec : Prop :=
  ∀ n, P2765220314566008295.a n = A297114 (n + 1)

theorem P2765220314566008295.correct : P2765220314566008295.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel]

end A297114

/-! ## A297114.P16645650554057717529

`A297117(n+1)-A051953(n+1)`
-/

namespace A297114.P16645650554057717529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297117 (n + 1) - A051953 (n + 1)

end

end A297114.P16645650554057717529

namespace A297114

/-- `A297117(n+1)-A051953(n+1)` -/
def P16645650554057717529.Spec : Prop :=
  ∀ n, P16645650554057717529.a n = A297114 (n + 1)

theorem P16645650554057717529.correct : P16645650554057717529.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P16645650554057717529.a, A297114.P2765220314566008295.a, A051953, A051953.P11179276897610979764.a, A297111, A297111.P9451184863548072993.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P15893353833036759077

`A083254(n+1)-A297115(n+1)`
-/

namespace A297114.P15893353833036759077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) - A297115 (n + 1)

end

end A297114.P15893353833036759077

namespace A297114

/-- `A083254(n+1)-A297115(n+1)` -/
def P15893353833036759077.Spec : Prop :=
  ∀ n, P15893353833036759077.a n = A297114 (n + 1)

theorem P15893353833036759077.correct : P15893353833036759077.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P15893353833036759077.a, A297114.P2765220314566008295.a, A083254, A083254.P7544960031424623367.a, A297111, A297111.P9451184863548072993.a, A297115, A297115.P17041612972225485539.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P6922349869549119898

`A294898(n+1)-A317844(n+1)`
-/

namespace A297114.P6922349869549119898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) - A317844 (n + 1)

end

end A297114.P6922349869549119898

namespace A297114

/-- `A294898(n+1)-A317844(n+1)` -/
def P6922349869549119898.Spec : Prop :=
  ∀ n, P6922349869549119898.a n = A297114 (n + 1)

theorem P6922349869549119898.correct : P6922349869549119898.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P6922349869549119898.a, A297114.P2765220314566008295.a, A294898, A294898.P11311681912968614755.a, A297111, A297111.P9451184863548072993.a, A317844, A317844.P7793600775375958411.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P5109209405829242161

`A011371(n+1)-A300244(n+1)`
-/

namespace A297114.P5109209405829242161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (n + 1) - A300244 (n + 1)

end

end A297114.P5109209405829242161

namespace A297114

/-- `A011371(n+1)-A300244(n+1)` -/
def P5109209405829242161.Spec : Prop :=
  ∀ n, P5109209405829242161.a n = A297114 (n + 1)

end A297114

/-! ## A297114.P7908060929586303309

`A297117(n+1)-(A219428(n+1)+1)`
-/

namespace A297114.P7908060929586303309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297117 (n + 1) - (A219428 (n + 1) + 1)

end

end A297114.P7908060929586303309

namespace A297114

/-- `A297117(n+1)-(A219428(n+1)+1)` -/
def P7908060929586303309.Spec : Prop :=
  ∀ n, P7908060929586303309.a n = A297114 (n + 1)

theorem P7908060929586303309.correct : P7908060929586303309.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P7908060929586303309.a, A297114.P2765220314566008295.a, A219428, A219428.P9184341513320465947.a, A297111, A297111.P9451184863548072993.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A051953, A051953.P11179276897610979764.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P14218646999355405781

`∑{d}[n+1, A008683(#)*A294898((n+1)/#)]`
-/

namespace A297114.P14218646999355405781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A294898 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297114.P14218646999355405781

namespace A297114

/-- `∑{d}[n+1, A008683(#)*A294898((n+1)/#)]` -/
def P14218646999355405781.Spec : Prop :=
  ∀ n, P14218646999355405781.a n = A297114 (n + 1)

end A297114

/-! ## A297114.P432693189527423123

`∑{d}[n+1, A007427(#)*A318448((n+1)/#)]`
-/

namespace A297114.P432693189527423123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A318448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297114.P432693189527423123

namespace A297114

/-- `∑{d}[n+1, A007427(#)*A318448((n+1)/#)]` -/
def P432693189527423123.Spec : Prop :=
  ∀ n, P432693189527423123.a n = A297114 (n + 1)

end A297114

/-! ## A297114.P13990987417964782541

`A005187(n+1)-(A317844(n+1)+A000203(n+1))`
-/

namespace A297114.P13990987417964782541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A317844 (n + 1) + A000203 (n + 1))

end

end A297114.P13990987417964782541

namespace A297114

/-- `A005187(n+1)-(A317844(n+1)+A000203(n+1))` -/
def P13990987417964782541.Spec : Prop :=
  ∀ n, P13990987417964782541.a n = A297114 (n + 1)

theorem P13990987417964782541.correct : P13990987417964782541.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P13990987417964782541.a, A297114.P2765220314566008295.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A297111, A297111.P9451184863548072993.a, A317844, A317844.P7793600775375958411.a, A001065, A001065.P4097147489331274860.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P6522326578009863174

`A001065(n+1)+A294898(n+1)-A300244(n+1)`
-/

namespace A297114.P6522326578009863174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A294898 (n + 1) - A300244 (n + 1))

end

end A297114.P6522326578009863174

namespace A297114

/-- `A001065(n+1)+A294898(n+1)-A300244(n+1)` -/
def P6522326578009863174.Spec : Prop :=
  ∀ n, P6522326578009863174.a n = A297114 (n + 1)

theorem P6522326578009863174.correct : P6522326578009863174.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P6522326578009863174.a, A297114.P2765220314566008295.a, A001065, A001065.P4097147489331274860.a, A294898, A294898.P11311681912968614755.a, A297111, A297111.P9451184863548072993.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005187, A005187.P3874015513960485494.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P807822509078143036

`A318448(n+1)-(A318447(n+1)+A317844(n+1))`
-/

namespace A297114.P807822509078143036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318448 (n + 1) - (A318447 (n + 1) + A317844 (n + 1))

end

end A297114.P807822509078143036

namespace A297114

/-- `A318448(n+1)-(A318447(n+1)+A317844(n+1))` -/
def P807822509078143036.Spec : Prop :=
  ∀ n, P807822509078143036.a n = A297114 (n + 1)

theorem P807822509078143036.correct : P807822509078143036.Spec := by
  intro n
  simp only [A297114, Nat.add_sub_cancel, A297114.P807822509078143036.a, A297114.P2765220314566008295.a, A297111, A297111.P9451184863548072993.a, A317844, A317844.P7793600775375958411.a, A318447, A318447.P10080329051014422547.a, A318448, A318448.P18323809931802074675.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A292257, A292257.P4438175682071365739.a, A294898, A294898.P11311681912968614755.a, A296074, A296074.P13795180973919370839.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000120, A000120.P2816527436160941581.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005843, A005843.P3167286115683555970.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A033880, A033880.P6005875780263802708.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297114

/-! ## A297114.P5627290634450209990

`A324397(A005940(n+2))`
-/

namespace A297114.P5627290634450209990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324397 (A005940 (n + 2)).toNat

end

end A297114.P5627290634450209990

namespace A297114

/-- `A324397(A005940(n+2))` -/
def P5627290634450209990.Spec : Prop :=
  ∀ n, P5627290634450209990.a n = A297114 (n + 1)

end A297114

/-!
# A297115: Möbius transform of A000120, binary weight of n.

The programs for A297115, the canonical program `A297115.P17041612972225485539` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297115 has offset 1).

The definition of A297115 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A083254, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297115.P17041612972225485539

`A083254(n+1)-A297114(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A297115

/-- `A083254(n+1)-A297114(n+1)` -/
def P17041612972225485539.Spec : Prop :=
  ∀ n, P17041612972225485539.a n = A297115 (n + 1)

theorem P17041612972225485539.correct : P17041612972225485539.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel]

end A297115

/-! ## A297115.P18066169969217101766

`A000010(n+1)-A297117(n+1)`
-/

namespace A297115.P18066169969217101766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A297117 (n + 1)

end

end A297115.P18066169969217101766

namespace A297115

/-- `A000010(n+1)-A297117(n+1)` -/
def P18066169969217101766.Spec : Prop :=
  ∀ n, P18066169969217101766.a n = A297115 (n + 1)

theorem P18066169969217101766.correct : P18066169969217101766.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P18066169969217101766.a, A297115.P17041612972225485539.a, A000010, A000010.P4673923239450215316.a, A083254, A083254.P7544960031424623367.a, A297114, A297114.P2765220314566008295.a, A297117, A297117.P14003803636479694355.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P11614443681340195210

`sqrt(A127473(n+1))-A297117(n+1)`
-/

namespace A297115.P11614443681340195210
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A297117 (n + 1) : ℝ)

end

end A297115.P11614443681340195210

namespace A297115

/-- `sqrt(A127473(n+1))-A297117(n+1)` -/
def P11614443681340195210.Spec : Prop :=
  ∀ n, P11614443681340195210.a n = (A297115 (n + 1) : ℝ)

end A297115

/-! ## A297115.P14795993493239935244

`Δ[A100449(n)/4]-A297117(n+1)`
-/

namespace A297115.P14795993493239935244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A297117 (n + 1) : ℚ)

end

end A297115.P14795993493239935244

namespace A297115

/-- `Δ[A100449(n)/4]-A297117(n+1)` -/
def P14795993493239935244.Spec : Prop :=
  ∀ n, P14795993493239935244.a n = (A297115 (n + 1) : ℚ)

end A297115

/-! ## A297115.P13698470239080598714

`2*A000010(n+1)-A297111(n+1)`
-/

namespace A297115.P13698470239080598714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (n + 1) - A297111 (n + 1)

end

end A297115.P13698470239080598714

namespace A297115

/-- `2*A000010(n+1)-A297111(n+1)` -/
def P13698470239080598714.Spec : Prop :=
  ∀ n, P13698470239080598714.a n = A297115 (n + 1)

theorem P13698470239080598714.correct : P13698470239080598714.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P13698470239080598714.a, A297115.P17041612972225485539.a, A000010, A000010.P4673923239450215316.a, A083254, A083254.P7544960031424623367.a, A297111, A297111.P9451184863548072993.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A173557, A173557.P15666735857375843373.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P9321290910067080499

`A297111(n+1)-2*A297117(n+1)`
-/

namespace A297115.P9321290910067080499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - 2 * A297117 (n + 1)

end

end A297115.P9321290910067080499

namespace A297115

/-- `A297111(n+1)-2*A297117(n+1)` -/
def P9321290910067080499.Spec : Prop :=
  ∀ n, P9321290910067080499.a n = A297115 (n + 1)

theorem P9321290910067080499.correct : P9321290910067080499.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P9321290910067080499.a, A297115.P17041612972225485539.a, A083254, A083254.P7544960031424623367.a, A297111, A297111.P9451184863548072993.a, A297114, A297114.P2765220314566008295.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A051953, A051953.P11179276897610979764.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P14862362851381100938

`n-(A297117(n+1)+A219428(n+1))`
-/

namespace A297115.P14862362851381100938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A297117 (n + 1) + A219428 (n + 1))

end

end A297115.P14862362851381100938

namespace A297115

/-- `n-(A297117(n+1)+A219428(n+1))` -/
def P14862362851381100938.Spec : Prop :=
  ∀ n, P14862362851381100938.a n = A297115 (n + 1)

theorem P14862362851381100938.correct : P14862362851381100938.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P14862362851381100938.a, A297115.P17041612972225485539.a, A083254, A083254.P7544960031424623367.a, A219428, A219428.P9184341513320465947.a, A297114, A297114.P2765220314566008295.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A297111, A297111.P9451184863548072993.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A173557, A173557.P15666735857375843373.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P7151949488019486399

`∑{d}[n+1, A008683(#)*A000120((n+1)/#)]`
-/

namespace A297115.P7151949488019486399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A000120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297115.P7151949488019486399

namespace A297115

/-- `∑{d}[n+1, A008683(#)*A000120((n+1)/#)]` -/
def P7151949488019486399.Spec : Prop :=
  ∀ n, P7151949488019486399.a n = A297115 (n + 1)

end A297115

/-! ## A297115.P12127890443245025358

`∑{d}[n+1, A007427(#)*A093653((n+1)/#)]`
-/

namespace A297115.P12127890443245025358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A093653 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297115.P12127890443245025358

namespace A297115

/-- `∑{d}[n+1, A007427(#)*A093653((n+1)/#)]` -/
def P12127890443245025358.Spec : Prop :=
  ∀ n, P12127890443245025358.a n = A297115 (n + 1)

end A297115

/-! ## A297115.P17432145726369286998

`∑{d}[n+1, A083254(#)*A379106((n+1)/#)]`
-/

namespace A297115.P17432145726369286998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A379106 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297115.P17432145726369286998

namespace A297115

/-- `∑{d}[n+1, A083254(#)*A379106((n+1)/#)]` -/
def P17432145726369286998.Spec : Prop :=
  ∀ n, P17432145726369286998.a n = A297115 (n + 1)

end A297115

/-! ## A297115.P5050705789297281223

`A000010(n+1)-(A297114(n+1)+A051953(n+1))`
-/

namespace A297115.P5050705789297281223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A297114 (n + 1) + A051953 (n + 1))

end

end A297115.P5050705789297281223

namespace A297115

/-- `A000010(n+1)-(A297114(n+1)+A051953(n+1))` -/
def P5050705789297281223.Spec : Prop :=
  ∀ n, P5050705789297281223.a n = A297115 (n + 1)

theorem P5050705789297281223.correct : P5050705789297281223.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P5050705789297281223.a, A297115.P17041612972225485539.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P15988499686094898390

`A051953(n+1)+A083254(n+1)-A297117(n+1)`
-/

namespace A297115.P15988499686094898390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A083254 (n + 1) - A297117 (n + 1))

end

end A297115.P15988499686094898390

namespace A297115

/-- `A051953(n+1)+A083254(n+1)-A297117(n+1)` -/
def P15988499686094898390.Spec : Prop :=
  ∀ n, P15988499686094898390.a n = A297115 (n + 1)

theorem P15988499686094898390.correct : P15988499686094898390.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P15988499686094898390.a, A297115.P17041612972225485539.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297114, A297114.P2765220314566008295.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A297111, A297111.P9451184863548072993.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A173557, A173557.P15666735857375843373.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P11742075987567311469

`A083254(n+1)+A317844(n+1)-A294898(n+1)`
-/

namespace A297115.P11742075987567311469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (n + 1) + (A317844 (n + 1) - A294898 (n + 1))

end

end A297115.P11742075987567311469

namespace A297115

/-- `A083254(n+1)+A317844(n+1)-A294898(n+1)` -/
def P11742075987567311469.Spec : Prop :=
  ∀ n, P11742075987567311469.a n = A297115 (n + 1)

theorem P11742075987567311469.correct : P11742075987567311469.Spec := by
  intro n
  simp only [A297115, Nat.add_sub_cancel, A297115.P11742075987567311469.a, A297115.P17041612972225485539.a, A083254, A083254.P7544960031424623367.a, A294898, A294898.P11311681912968614755.a, A297114, A297114.P2765220314566008295.a, A317844, A317844.P7793600775375958411.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, A297111, A297111.P9451184863548072993.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297115

/-! ## A297115.P12635175416846049682

`A323913(n+1)-(A323912(n+1)+A297114(n+1))`
-/

namespace A297115.P12635175416846049682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323913 (n + 1) - (A323912 (n + 1) + A297114 (n + 1))

end

end A297115.P12635175416846049682

namespace A297115

/-- `A323913(n+1)-(A323912(n+1)+A297114(n+1))` -/
def P12635175416846049682.Spec : Prop :=
  ∀ n, P12635175416846049682.a n = A297115 (n + 1)

end A297115

/-!
# A297116: Odd bisection of A297115, Möbius transform of A000120 (binary weight of n).

The programs for A297116, the canonical program `A297116.P10389749861646648007` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297116 has offset 1).

The definition of A297116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A297115, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297116.P10389749861646648007

`A297115(2*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A297116

/-- `A297115(2*n+1)` -/
def P10389749861646648007.Spec : Prop :=
  ∀ n, P10389749861646648007.a n = A297116 (n + 1)

theorem P10389749861646648007.correct : P10389749861646648007.Spec := by
  intro n
  simp only [A297116, Nat.add_sub_cancel]

end A297116

/-! ## A297116.P12960936048949336539

`A378987(n+1)-A297114(2*n+1)`
-/

namespace A297116.P12960936048949336539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378987 (n + 1) - A297114 (2 * n + 1)

end

end A297116.P12960936048949336539

namespace A297116

/-- `A378987(n+1)-A297114(2*n+1)` -/
def P12960936048949336539.Spec : Prop :=
  ∀ n, P12960936048949336539.a n = A297116 (n + 1)

end A297116

/-! ## A297116.P6612685666049705513

`A000010(2*n+1)-A297117(2*n+1)`
-/

namespace A297116.P6612685666049705513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - A297117 (2 * n + 1)

end

end A297116.P6612685666049705513

namespace A297116

/-- `A000010(2*n+1)-A297117(2*n+1)` -/
def P6612685666049705513.Spec : Prop :=
  ∀ n, P6612685666049705513.a n = A297116 (n + 1)

theorem P6612685666049705513.correct : P6612685666049705513.Spec := by
  intro n
  simp only [A297116, Nat.add_sub_cancel, A297116.P6612685666049705513.a, A297116.P10389749861646648007.a, A000010, A000010.P4673923239450215316.a, A297115, A297115.P17041612972225485539.a, A297117, A297117.P14003803636479694355.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A173557, A173557.P15666735857375843373.a, A297114, A297114.P2765220314566008295.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A297111, A297111.P9451184863548072993.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005187, A005187.P3874015513960485494.a, A059841, A059841.P7264174615531153985.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297116

/-! ## A297116.P16054831817655456164

`2*A000010(2*n+1)-A297111(2*n+1)`
-/

namespace A297116.P16054831817655456164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000010 (2 * n + 1) - A297111 (2 * n + 1)

end

end A297116.P16054831817655456164

namespace A297116

/-- `2*A000010(2*n+1)-A297111(2*n+1)` -/
def P16054831817655456164.Spec : Prop :=
  ∀ n, P16054831817655456164.a n = A297116 (n + 1)

theorem P16054831817655456164.correct : P16054831817655456164.Spec := by
  intro n
  simp only [A297116, Nat.add_sub_cancel, A297116.P16054831817655456164.a, A297116.P10389749861646648007.a, A000010, A000010.P4673923239450215316.a, A297111, A297111.P9451184863548072993.a, A297115, A297115.P17041612972225485539.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A083254, A083254.P7544960031424623367.a, A173557, A173557.P15666735857375843373.a, A297114, A297114.P2765220314566008295.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297116

/-! ## A297116.P10423761697622058562

`A297111(2*n+1)-2*A297117(2*n+1)`
-/

namespace A297116.P10423761697622058562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (2 * n + 1) - 2 * A297117 (2 * n + 1)

end

end A297116.P10423761697622058562

namespace A297116

/-- `A297111(2*n+1)-2*A297117(2*n+1)` -/
def P10423761697622058562.Spec : Prop :=
  ∀ n, P10423761697622058562.a n = A297116 (n + 1)

theorem P10423761697622058562.correct : P10423761697622058562.Spec := by
  intro n
  simp only [A297116, Nat.add_sub_cancel, A297116.P10423761697622058562.a, A297116.P10389749861646648007.a, A297111, A297111.P9451184863548072993.a, A297115, A297115.P17041612972225485539.a, A297117, A297117.P14003803636479694355.a, A005187, A005187.P3874015513960485494.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297114, A297114.P2765220314566008295.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A000010, A000010.P4673923239450215316.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297116

/-! ## A297116.P1806436807130340881

`A083254(2*n+1)-A297114(2*n+1)`
-/

namespace A297116.P1806436807130340881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083254 (2 * n + 1) - A297114 (2 * n + 1)

end

end A297116.P1806436807130340881

namespace A297116

/-- `A083254(2*n+1)-A297114(2*n+1)` -/
def P1806436807130340881.Spec : Prop :=
  ∀ n, P1806436807130340881.a n = A297116 (n + 1)

end A297116

/-! ## A297116.P3095800451041852188

`sqrt(A127473(2*n+1))-A297117(2*n+1)`
-/

namespace A297116.P3095800451041852188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (2 * n + 1) : ℝ) - (A297117 (2 * n + 1) : ℝ)

end

end A297116.P3095800451041852188

namespace A297116

/-- `sqrt(A127473(2*n+1))-A297117(2*n+1)` -/
def P3095800451041852188.Spec : Prop :=
  ∀ n, P3095800451041852188.a n = (A297116 (n + 1) : ℝ)

end A297116

/-! ## A297116.P2065274352303657254

`A051953(2*n+1)+A083254(2*n+1)-A297117(2*n+1)`
-/

namespace A297116.P2065274352303657254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (2 * n + 1) + (A083254 (2 * n + 1) - A297117 (2 * n + 1))

end

end A297116.P2065274352303657254

namespace A297116

/-- `A051953(2*n+1)+A083254(2*n+1)-A297117(2*n+1)` -/
def P2065274352303657254.Spec : Prop :=
  ∀ n, P2065274352303657254.a n = A297116 (n + 1)

theorem P2065274352303657254.correct : P2065274352303657254.Spec := by
  intro n
  simp only [A297116, Nat.add_sub_cancel, A297116.P2065274352303657254.a, A297116.P10389749861646648007.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297115, A297115.P17041612972225485539.a, A297117, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297116

/-!
# A297117: Möbius transform of A011371, n minus (number of 1's in binary expansion of n).

The programs for A297117, the canonical program `A297117.P14003803636479694355` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297117 has offset 1).

The definition of A297117 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A297114, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297117.P14003803636479694355

`A297114(n+1)+A051953(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A297117

/-- `A297114(n+1)+A051953(n+1)` -/
def P14003803636479694355.Spec : Prop :=
  ∀ n, P14003803636479694355.a n = A297117 (n + 1)

theorem P14003803636479694355.correct : P14003803636479694355.Spec := by
  intro n
  simp only [A297117, Nat.add_sub_cancel]

end A297117

/-! ## A297117.P10437545223483808898

`A297111(n+1)-A000010(n+1)`
-/

namespace A297117.P10437545223483808898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - A000010 (n + 1)

end

end A297117.P10437545223483808898

namespace A297117

/-- `A297111(n+1)-A000010(n+1)` -/
def P10437545223483808898.Spec : Prop :=
  ∀ n, P10437545223483808898.a n = A297117 (n + 1)

theorem P10437545223483808898.correct : P10437545223483808898.Spec := by
  intro n
  simp only [A297117, Nat.add_sub_cancel, A297117.P10437545223483808898.a, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A297111, A297111.P9451184863548072993.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A005187, A005187.P3874015513960485494.a, A173557, A173557.P15666735857375843373.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297117

/-! ## A297117.P3958431047410813104

`A000010(n+1)-A297115(n+1)`
-/

namespace A297117.P3958431047410813104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A297115 (n + 1)

end

end A297117.P3958431047410813104

namespace A297117

/-- `A000010(n+1)-A297115(n+1)` -/
def P3958431047410813104.Spec : Prop :=
  ∀ n, P3958431047410813104.a n = A297117 (n + 1)

theorem P3958431047410813104.correct : P3958431047410813104.Spec := by
  intro n
  simp only [A297117, Nat.add_sub_cancel, A297117.P3958431047410813104.a, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A297114, A297114.P2765220314566008295.a, A297115, A297115.P17041612972225485539.a, A003557, A003557.P6364735403900941810.a, A083254, A083254.P7544960031424623367.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297117

/-! ## A297117.P18345016494715492384

`A297111(n+1)+1-A039649(n+1)`
-/

namespace A297117.P18345016494715492384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + (1 - A039649 (n + 1))

end

end A297117.P18345016494715492384

namespace A297117

/-- `A297111(n+1)+1-A039649(n+1)` -/
def P18345016494715492384.Spec : Prop :=
  ∀ n, P18345016494715492384.a n = A297117 (n + 1)

theorem P18345016494715492384.correct : P18345016494715492384.Spec := by
  intro n
  simp only [A297117, Nat.add_sub_cancel, A297117.P18345016494715492384.a, A297117.P14003803636479694355.a, A039649, A039649.P16717312505280968063.a, A051953, A051953.P11179276897610979764.a, A297111, A297111.P9451184863548072993.a, A297114, A297114.P2765220314566008295.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297117

/-! ## A297117.P11363723645564621938

`A297111(n+1)-ceil(A140434(n+1)/2)`
-/

namespace A297117.P11363723645564621938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - ⌈(A140434 (n + 1) : ℚ) / 2⌉

end

end A297117.P11363723645564621938

namespace A297117

/-- `A297111(n+1)-ceil(A140434(n+1)/2)` -/
def P11363723645564621938.Spec : Prop :=
  ∀ n, P11363723645564621938.a n = A297117 (n + 1)

end A297117

/-! ## A297117.P12252521290183313625

`∑{d}[n+1, A008683(#)*A011371((n+1)/#)]`
-/

namespace A297117.P12252521290183313625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A011371 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297117.P12252521290183313625

namespace A297117

/-- `∑{d}[n+1, A008683(#)*A011371((n+1)/#)]` -/
def P12252521290183313625.Spec : Prop :=
  ∀ n, P12252521290183313625.a n = A297117 (n + 1)

end A297117

/-! ## A297117.P2639441886188009042

`A000010(n+1)+A297114(n+1)-A083254(n+1)`
-/

namespace A297117.P2639441886188009042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A297114 (n + 1) - A083254 (n + 1))

end

end A297117.P2639441886188009042

namespace A297117

/-- `A000010(n+1)+A297114(n+1)-A083254(n+1)` -/
def P2639441886188009042.Spec : Prop :=
  ∀ n, P2639441886188009042.a n = A297117 (n + 1)

theorem P2639441886188009042.correct : P2639441886188009042.Spec := by
  intro n
  simp only [A297117, Nat.add_sub_cancel, A297117.P2639441886188009042.a, A297117.P14003803636479694355.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297114, A297114.P2765220314566008295.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A297111, A297111.P9451184863548072993.a, A001221, A001221.P10258181745752134128.a, A005187, A005187.P3874015513960485494.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297117

/-! ## A297117.P6488006111739368715

`A297111(n+1)-(A083254(n+1)+A051953(n+1))`
-/

namespace A297117.P6488006111739368715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - (A083254 (n + 1) + A051953 (n + 1))

end

end A297117.P6488006111739368715

namespace A297117

/-- `A297111(n+1)-(A083254(n+1)+A051953(n+1))` -/
def P6488006111739368715.Spec : Prop :=
  ∀ n, P6488006111739368715.a n = A297117 (n + 1)

theorem P6488006111739368715.correct : P6488006111739368715.Spec := by
  intro n
  simp only [A297117, Nat.add_sub_cancel, A297117.P6488006111739368715.a, A297117.P14003803636479694355.a, A051953, A051953.P11179276897610979764.a, A083254, A083254.P7544960031424623367.a, A297111, A297111.P9451184863548072993.a, A297114, A297114.P2765220314566008295.a, A000010, A000010.P4673923239450215316.a, A005187, A005187.P3874015513960485494.a, A300244, A300244.P9625396769520001980.f1, A300244.P9625396769520001980.a, A003557, A003557.P6364735403900941810.a, A157658, A157658.P9261385800012601708.f1, A157658.P9261385800012601708.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297117

/-! ## A297117.P2170418064081002063

`A297111(n+1)-(A300725(n+1)+A300724(n+1))`
-/

namespace A297117.P2170418064081002063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) - (A300725 (n + 1) + A300724 (n + 1))

end

end A297117.P2170418064081002063

namespace A297117

/-- `A297111(n+1)-(A300725(n+1)+A300724(n+1))` -/
def P2170418064081002063.Spec : Prop :=
  ∀ n, P2170418064081002063.a n = A297117 (n + 1)

end A297117

/-! ## A297117.P17256370090485881548

`A300724(n+1)+A300725(n+1)-A297115(n+1)`
-/

namespace A297117.P17256370090485881548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300724 (n + 1) + (A300725 (n + 1) - A297115 (n + 1))

end

end A297117.P17256370090485881548

namespace A297117

/-- `A300724(n+1)+A300725(n+1)-A297115(n+1)` -/
def P17256370090485881548.Spec : Prop :=
  ∀ n, P17256370090485881548.a n = A297117 (n + 1)

end A297117

/-!
# A297118: Number of minimal edge covers in the n-Fibonacci cube graph.

The programs for A297118, there is no canonical definition to state claims against.
-/

/-! ## A297118.P80511236619037670

`A290791(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A297118.P80511236619037670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A290791 (a (n - 1)).toNat

end

end A297118.P80511236619037670

/-!
# A297120: Number of compositions derived from the overpartitions of n.

The programs for A297120, there is no canonical definition to state claims against.
-/

/-! ## A297120.P366853123727785232

`2*A296624(2*n)-A296626(2*n)-A364466(n)`
-/

namespace A297120.P366853123727785232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A296624 (2 * n) - A296626 (2 * n) - A364466 n

end

end A297120.P366853123727785232

/-! ## A297120.P8810267701495069480

`A304662(n)+A185255(A027424(n+1))-A364466(n)`
-/

namespace A297120.P8810267701495069480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304662 n + A185255 (A027424 (n + 1)).toNat - A364466 n

end

end A297120.P8810267701495069480

/-! ## A297120.P11030384574645346580

`floor(sqrt(sqrt(A192317(5*n))))`
-/

namespace A297120.P11030384574645346580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A192317 (5 * n) : ℝ))⌋

end

end A297120.P11030384574645346580

/-!
# A297122: a(n) = n^5*H(n) where H() is the Hurwitz class number.

The programs for A297122, there is no canonical definition to state claims against.
-/

/-! ## A297122.P2274480823619103300

`n^5*A259825(n)/12`
-/

namespace A297122.P2274480823619103300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 5 : ℤ) * A259825 n : ℚ) / 12

end

end A297122.P2274480823619103300

/-! ## A297122.P7406598914983486141

`A000583(n)*A072670(A134957(n))`
-/

namespace A297122.P7406598914983486141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n * A072670 (A134957 n).toNat

end

end A297122.P7406598914983486141

/-!
# A297123: a(n) = 462*n^6 + 330*n^4 - 165*n^3 + 55*n^2 - 11*n + 1.

The programs for A297123, the canonical program `A297123.P1393507899003785294` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297123 has offset 0).

The definition of A297123 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `462*n^6+330*n^4-165*n^3+55*n²-11*n+1` (program `A297123.P1393507899003785294`, by `A297123.P1393507899003785294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297123.P1393507899003785294

`462*n^6+330*n^4-165*n^3+55*n²-11*n+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297123

/-- `462*n^6+330*n^4-165*n^3+55*n²-11*n+1` -/
def P1393507899003785294.Spec : Prop :=
  ∀ n, P1393507899003785294.a n = A297123 n

theorem P1393507899003785294.correct : P1393507899003785294.Spec := by
  intro n
  simp only [A297123]

end A297123

/-!
# A297124: Numbers having an up-first zigzag pattern in base 3; see Comments.

The programs for A297124, there is no canonical definition to state claims against.
-/

/-! ## A297124.P14338122121084696995

`A043089(A004760(2*(n+2))-(n+2))`
-/

namespace A297124.P14338122121084696995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 (A004760 (2 * (n + 2)) - (n + 2 : ℤ)).toNat

end

end A297124.P14338122121084696995

/-!
# A297126: Numbers whose base-3 digits d(m), d(m-1),..., d(0) have m=0 or else d(i) = d(i+1) for some i in {0,1,...,m-1}.

The programs for A297126, the canonical program `A297126.P3482392127868777149` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297126 has offset 1).

The definition of A297126 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297126.P187383365567418009

`comp[floor(atan(n))*A031941(n+1)]`
-/

namespace A297126.P187383365567418009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋ * A031941 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297126.P187383365567418009

namespace A297126

/-- `comp[floor(atan(n))*A031941(n+1)]` -/
def P187383365567418009.Spec : Prop :=
  ∀ n, (P187383365567418009.a n : ℤ) = A297126 (n + 1)

end A297126

/-! ## A297126.P8400417674212286149

`comp[A043089(n)%A022629(n)]`
-/

namespace A297126.P8400417674212286149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043089 n) (A022629 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297126.P8400417674212286149

namespace A297126

/-- `comp[A043089(n)%A022629(n)]` -/
def P8400417674212286149.Spec : Prop :=
  ∀ n, (P8400417674212286149.a n : ℤ) = A297126 (n + 1)

end A297126

/-! ## A297126.P7076371700603921789

`comp[A043089(2-A000038(n)+n)]`
-/

namespace A297126.P7076371700603921789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 (2 - A000038 n + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297126.P7076371700603921789

namespace A297126

/-- `comp[A043089(2-A000038(n)+n)]` -/
def P7076371700603921789.Spec : Prop :=
  ∀ n, (P7076371700603921789.a n : ℤ) = A297126 (n + 1)

end A297126

/-! ## A297126.P12136252520557988129

`comp[A043089(n+1)%A043307(n+1)]`
-/

namespace A297126.P12136252520557988129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043089 (n + 1)) (A043307 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297126.P12136252520557988129

namespace A297126

/-- `comp[A043089(n+1)%A043307(n+1)]` -/
def P12136252520557988129.Spec : Prop :=
  ∀ n, (P12136252520557988129.a n : ℤ) = A297126 (n + 1)

end A297126

/-! ## A297126.P9013579268038460896

`comp[A043089(A000038(C(2, n+2))+n)]`
-/

namespace A297126.P9013579268038460896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043089 (A000038 (Nat.choose 2 (n + 2)) + (n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297126.P9013579268038460896

namespace A297126

/-- `comp[A043089(A000038(C(2, n+2))+n)]` -/
def P9013579268038460896.Spec : Prop :=
  ∀ n, (P9013579268038460896.a n : ℤ) = A297126 (n + 1)

end A297126

/-! ## A297126.P3482392127868777149

`comp[(eq[1, A043277(n+1)]+1)%(n²+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297126

/-- `comp[(eq[1, A043277(n+1)]+1)%(n²+1)]` -/
def P3482392127868777149.Spec : Prop :=
  ∀ n, (P3482392127868777149.a n : ℤ) = A297126 (n + 1)

theorem P3482392127868777149.correct : P3482392127868777149.Spec := by
  intro n
  simp only [A297126, Nat.add_sub_cancel]

end A297126

/-!
# A297127: a(n) = (1/2) * Sum_{|k|

The programs for A297127, there is no canonical definition to state claims against.
-/

/-! ## A297127.P2145513701638224350

`A297123(A000040(n+1))+A076847(n+1)`
-/

namespace A297127.P2145513701638224350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297123 (A000040 (n + 1)).toNat + A076847 (n + 1)

end

end A297127.P2145513701638224350

/-! ## A297127.P17523813992926401338

`A297123(record[A039650(n+1)])+A076847(n+1)`
-/

namespace A297127.P17523813992926401338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A076847 (n + 1)

end

end A297127.P17523813992926401338

/-! ## A297127.P11282588005857014479

`A297123(record[A020639(n+2)])+A076847(n+1)`
-/

namespace A297127.P11282588005857014479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A076847 (n + 1)

end

end A297127.P11282588005857014479

/-! ## A297127.P11850640390150511231

`A297123(record[A000010(n+1)+1])+A076847(n+1)`
-/

namespace A297127.P11850640390150511231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A076847 (n + 1)

end

end A297127.P11850640390150511231

/-! ## A297127.P13791538101097872374

`A297123(record[A003958(n+1)+1])+A076847(n+1)`
-/

namespace A297127.P13791538101097872374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297123 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A076847 (n + 1)

end

end A297127.P13791538101097872374

/-!
# A297129: Numbers having a down-first zigzag pattern in base 4; see Comments.

The programs for A297129, there is no canonical definition to state claims against.
-/

/-! ## A297129.P7594378155269055569

`record[A289813(A297144(n+1))]`
-/

namespace A297129.P7594378155269055569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A297144 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297129.P7594378155269055569

/-! ## A297129.P11577803472438247695

`A101349(A002379(n))+A032859(n+5)`
-/

namespace A297129.P11577803472438247695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101349 (A002379 n).toNat + A032859 (n + 5)

end

end A297129.P11577803472438247695

/-! ## A297129.P7327990350846247778

`A122840(A153893(n))+A032859(n+5)`
-/

namespace A297129.P7327990350846247778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A153893 n).toNat + A032859 (n + 5)

end

end A297129.P7327990350846247778

/-! ## A297129.P6779563468775180026

`A032859(n+5)+A000007(A283877(n))`
-/

namespace A297129.P6779563468775180026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032859 (n + 5) + A000007 (A283877 n).toNat

end

end A297129.P6779563468775180026

/-! ## A297129.P9095117319100177089

`A032859(n+5)/A058306(A295147(n))`
-/

namespace A297129.P9095117319100177089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032859 (n + 5) : ℚ) / (A058306 (A295147 n).toNat : ℚ)

end

end A297129.P9095117319100177089

/-!
# A297130: Numbers whose base-4 digits d(m), d(m-1),..., d(0) have m=0 or else d(i) = d(i+1) for some i in {0,1,...,m-1}.

The programs for A297130, there is no canonical definition to state claims against.
-/

/-! ## A297130.P15028108714327844790

`comp[A031942(n+3)%∑[n+1]²]`
-/

namespace A297130.P15028108714327844790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031942 (n + 3)) (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297130.P15028108714327844790

/-! ## A297130.P13990581480352578539

`comp[A031942(n+1)-C(6, n²)%4]`
-/

namespace A297130.P13990581480352578539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031942 (n + 1) - ((Nat.choose 6 (n ^ 2) % 4 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297130.P13990581480352578539

/-! ## A297130.P9859517402216417320

`comp[A043090(n+2)%(xor(1, n²)+n²)]`
-/

namespace A297130.P9859517402216417320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043090 (n + 2)) (Nat.xor 1 (n ^ 2) + n ^ 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297130.P9859517402216417320

/-! ## A297130.P173525924804433573

`comp[A043090(n)%A033638(n)]`
-/

namespace A297130.P173525924804433573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043090 n) (A033638 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297130.P173525924804433573

/-! ## A297130.P15358856204601636599

`comp[A043090(n+1)%A043308(n+1)]`
-/

namespace A297130.P15358856204601636599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043090 (n + 1)) (A043308 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297130.P15358856204601636599

/-! ## A297130.P16041140114831120896

`comp[A043090(n+2)%A043073(n+1)]`
-/

namespace A297130.P16041140114831120896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A043090 (n + 2)) (A043073 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297130.P16041140114831120896

/-!
# A297131: Numbers having an up-first zigzag pattern in base 5; see Comments.

The programs for A297131, there is no canonical definition to state claims against.
-/

/-! ## A297131.P17531863916852615988

`A028900(∩[A297146(n+1), A007091(n)])`
-/

namespace A297131.P17531863916852615988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A297131.P17531863916852615988

/-!
# A297132: Numbers having a down-first zigzag pattern in base 5; see Comments.

The programs for A297132, there is no canonical definition to state claims against.
-/

/-! ## A297132.P16165588646817107364

`A028900(∩[A297147(n+1), A007091(n)])`
-/

namespace A297132.P16165588646817107364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028900 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A297132.P16165588646817107364

/-! ## A297132.P9793472606075754607

`A032860(n+6)%A265792(n+1)`
-/

namespace A297132.P9793472606075754607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032860 (n + 6)) (A265792 (n + 1))

end

end A297132.P9793472606075754607

/-! ## A297132.P14141752031249056076

`A006519(3^floor(n/2))*A032860(n+6)`
-/

namespace A297132.P14141752031249056076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat * A032860 (n + 6)

end

end A297132.P14141752031249056076

/-! ## A297132.P4635359733696977644

`A032860(n+6)^A074465(A000079(n))`
-/

namespace A297132.P4635359733696977644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032860 (n + 6) : ℚ) ^ (A074465 (A000079 n).toNat : ℤ)

end

end A297132.P4635359733696977644

/-!
# A297133: Numbers whose base-5 digits d(m), d(m-1),..., d(0) have m=0 or else d(i) = d(i+1) for some i in {0,1,...,m-1}.

The programs for A297133, there is no canonical definition to state claims against.
-/

/-! ## A297133.P15576183030659432583

`comp[A031943(n+3)%A053012(n+1)]`
-/

namespace A297133.P15576183030659432583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031943 (n + 3)) (A053012 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A297133.P15576183030659432583

/-!
# A297134: Numbers having an up-first zigzag pattern in base 6; see Comments.

The programs for A297134, there is no canonical definition to state claims against.
-/

/-! ## A297134.P13343371577088023102

`A032844(A062399(n)+6)`
-/

namespace A297134.P13343371577088023102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032844 (A062399 n + 6).toNat

end

end A297134.P13343371577088023102

/-!
# A297135: Numbers having a down-first zigzag pattern in base 6; see Comments.

The programs for A297135, there is no canonical definition to state claims against.
-/

/-! ## A297135.P1733739577838581438

`A032861(n+7)%A258694(n)`
-/

namespace A297135.P1733739577838581438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032861 (n + 7)) (A258694 n)

end

end A297135.P1733739577838581438

/-! ## A297135.P16344997543418737163

`A032861(n+7)+and(1, A294961(n+1))`
-/

namespace A297135.P16344997543418737163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032861 (n + 7) + Int.land 1 (A294961 (n + 1))

end

end A297135.P16344997543418737163

/-! ## A297135.P11475175689635865038

`A032861(n+7)+A000007(A136625(n))`
-/

namespace A297135.P11475175689635865038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032861 (n + 7) + A000007 (A136625 n).toNat

end

end A297135.P11475175689635865038

/-! ## A297135.P5084293271513443206

`A032861(n+7)+A000038(A000043(n+1))`
-/

namespace A297135.P5084293271513443206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032861 (n + 7) + A000038 (A000043 (n + 1)).toNat

end

end A297135.P5084293271513443206

/-!
# A297137: Numbers having an up-first zigzag pattern in base 7; see Comments.

The programs for A297137, there is no canonical definition to state claims against.
-/

/-! ## A297137.P7362971225092127171

`A032845(n+7)%A054987(2*n+1)`
-/

namespace A297137.P7362971225092127171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032845 (n + 7)) (A054987 (2 * n + 1))

end

end A297137.P7362971225092127171

/-! ## A297137.P1768078758895404192

`A000265(A000079(n))*A032845(n+7)`
-/

namespace A297137.P1768078758895404192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000079 n).toNat * A032845 (n + 7)

end

end A297137.P1768078758895404192

/-! ## A297137.P13489671095500772439

`A032845(n+7)%A000096(A001513(n))`
-/

namespace A297137.P13489671095500772439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032845 (n + 7)) (A000096 (A001513 n).toNat)

end

end A297137.P13489671095500772439

/-! ## A297137.P9232786513087696773

`A032845(n+7)^A007318(A001263(n+1))`
-/

namespace A297137.P9232786513087696773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032845 (n + 7) : ℚ) ^ (A007318 (A001263 (n + 1)).toNat : ℤ)

end

end A297137.P9232786513087696773

/-!
# A297138: Numbers having a down-first zigzag pattern in base 7; see Comments.

The programs for A297138, there is no canonical definition to state claims against.
-/

/-! ## A297138.P7848962657406720188

`A000034(A163758(n))*A032862(n+8)`
-/

namespace A297138.P7848962657406720188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A163758 n).toNat * A032862 (n + 8)

end

end A297138.P7848962657406720188

/-! ## A297138.P1386947977559600429

`A032862(n+8)%A269344(A028310(n))`
-/

namespace A297138.P1386947977559600429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032862 (n + 8)) (A269344 (A028310 n).toNat)

end

end A297138.P1386947977559600429

/-! ## A297138.P11594905197697365267

`A209229(A030072(n+5))+A032862(n+8)`
-/

namespace A297138.P11594905197697365267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A030072 (n + 5)).toNat + A032862 (n + 8)

end

end A297138.P11594905197697365267

/-! ## A297138.P10838078890297541811

`lt[A145906(n+3), A003418(A053829(n))]`
-/

namespace A297138.P10838078890297541811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145906 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A053829 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297138.P10838078890297541811

/-!
# A297140: Numbers having an up-first zigzag pattern in base 8; see Comments.

The programs for A297140, there is no canonical definition to state claims against.
-/

/-! ## A297140.P12953928654344924087

`A000041(A111332(n))*A032846(n+8)`
-/

namespace A297140.P12953928654344924087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A111332 n).toNat * A032846 (n + 8)

end

end A297140.P12953928654344924087

/-! ## A297140.P193416645147350336

`A318721(A000040(n+1))+A032846(n+8)`
-/

namespace A297140.P193416645147350336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318721 (A000040 (n + 1)).toNat + A032846 (n + 8)

end

end A297140.P193416645147350336

/-!
# A297141: Numbers having a down-first zigzag pattern in base 8; see Comments.

The programs for A297141, there is no canonical definition to state claims against.
-/

/-! ## A297141.P8515561832246997124

`A032863(n+9)*A117358(p?[or(1, n²)])`
-/

namespace A297141.P8515561832246997124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032863 (n + 9) * A117358 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A297141.P8515561832246997124

/-! ## A297141.P10262191047671198641

`A032863(n+9)*A327936(p?[or(1, n²)])`
-/

namespace A297141.P10262191047671198641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032863 (n + 9) * A327936 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A297141.P10262191047671198641

/-! ## A297141.P7499516086609449484

`A032863(n+9)%A235760(A008574(n))`
-/

namespace A297141.P7499516086609449484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032863 (n + 9)) (A235760 (A008574 n).toNat)

end

end A297141.P7499516086609449484

/-! ## A297141.P18161996599489285919

`A014963(A329599(n+10))*A032863(n+9)`
-/

namespace A297141.P18161996599489285919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A329599 (n + 10)).toNat * A032863 (n + 9)

end

end A297141.P18161996599489285919

/-! ## A297141.P11836247925388170213

`lt[A025326(3*n+2), A152213(A173529(n+1))]`
-/

namespace A297141.P11836247925388170213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025326 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152213 (A173529 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297141.P11836247925388170213

/-!
# A297143: Numbers having an up-first zigzag pattern in base 9; see Comments.

The programs for A297143, there is no canonical definition to state claims against.
-/

/-! ## A297143.P6020766597733723035

`A000196(A032847(n+9)²)`
-/

namespace A297143.P6020766597733723035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A032847 (n + 9) ^ 2).toNat

end

end A297143.P6020766597733723035

/-! ## A297143.P9946748584223965691

`A032847(n+9)%p?[A047732(n)]`
-/

namespace A297143.P9946748584223965691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047732 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032847 (n + 9)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A297143.P9946748584223965691

/-! ## A297143.P10581126514178592560

`A131242(A328081(n))!*A032847(n+9)`
-/

namespace A297143.P10581126514178592560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A131242 (A328081 n).toNat).toNat : ℤ) * A032847 (n + 9)

end

end A297143.P10581126514178592560

/-! ## A297143.P14759352151674045569

`A003557(A139668(n+1))*A032847(n+9)`
-/

namespace A297143.P14759352151674045569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A139668 (n + 1)).toNat * A032847 (n + 9)

end

end A297143.P14759352151674045569

/-!
# A297144: Numbers having a down-first zigzag pattern in base 9; see Comments.

The programs for A297144, there is no canonical definition to state claims against.
-/

/-! ## A297144.P6051254655999341330

`A032864(n+10)*A337135(A001275(n+1))`
-/

namespace A297144.P6051254655999341330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032864 (n + 10) * A337135 (A001275 (n + 1)).toNat

end

end A297144.P6051254655999341330

/-! ## A297144.P7433989641523063803

`A032864(n+10)*A054977(A348433(n+1))`
-/

namespace A297144.P7433989641523063803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032864 (n + 10) * A054977 (A348433 (n + 1)).toNat

end

end A297144.P7433989641523063803

/-! ## A297144.P11807289780117312780

`A032864(n+10)*A329379(A176983(n+4))`
-/

namespace A297144.P11807289780117312780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032864 (n + 10) * A329379 (A176983 (n + 4)).toNat

end

end A297144.P11807289780117312780

/-! ## A297144.P9834644280524380490

`A032864(n+10)*A305936(A076078(2*n+1))`
-/

namespace A297144.P9834644280524380490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032864 (n + 10) * A305936 (A076078 (2 * n + 1)).toNat

end

end A297144.P9834644280524380490

/-! ## A297144.P14967020744174616628

`A032864(n+10)/A329379(A176983(n+5))`
-/

namespace A297144.P14967020744174616628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032864 (n + 10) : ℚ) / (A329379 (A176983 (n + 5)).toNat : ℚ)

end

end A297144.P14967020744174616628

/-!
# A297146: Numbers having an up-first zigzag pattern in base 10; see Comments.

The programs for A297146, there is no canonical definition to state claims against.
-/

/-! ## A297146.P17242027763933515102

`lt[A098488(n), A321801(n)]`
-/

namespace A297146.P17242027763933515102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297146.P17242027763933515102

/-! ## A297146.P15611527138908151284

`lt[A098488(n), A321802(n)]`
-/

namespace A297146.P15611527138908151284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297146.P15611527138908151284

/-! ## A297146.P15963973609596436955

`lt[A056143(n), A056142(A321801(n))]`
-/

namespace A297146.P15963973609596436955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056143 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297146.P15963973609596436955

/-! ## A297146.P10525929287400680078

`lt[A059995(n), A217657(A321801(n))]`
-/

namespace A297146.P10525929287400680078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297146.P10525929287400680078

/-! ## A297146.P4976131386851724904

`lt[A355222(A355221(n)), A321802(n)]`
-/

namespace A297146.P4976131386851724904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355222 (A355221 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297146.P4976131386851724904

/-!
# A297147: Numbers having a down-first zigzag pattern in base 10; see Comments.

The programs for A297147, there is no canonical definition to state claims against.
-/

/-! ## A297147.P15807579323405763051

`lt[n, A098488(A321801(n))]`
-/

namespace A297147.P15807579323405763051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297147.P15807579323405763051

/-! ## A297147.P14157499406931202325

`lt[n², A098488(n)*A321802(n)]`
-/

namespace A297147.P14157499406931202325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n * A321802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297147.P14157499406931202325

/-! ## A297147.P15768793746536612898

`lt[A056142(n), A056143(A321801(n))]`
-/

namespace A297147.P15768793746536612898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056143 (A321801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297147.P15768793746536612898

/-! ## A297147.P1050876378713397765

`lt[2, A213217(n)%11]`
-/

namespace A297147.P1050876378713397765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213217 n) 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297147.P1050876378713397765

/-! ## A297147.P13871952878875282837

`eq[0, A151909(A193581(n))]`
-/

namespace A297147.P13871952878875282837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 (A193581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297147.P13871952878875282837

/-! ## A297147.P13876273757311263974

`eq[3, A002033(A213217(n))]`
-/

namespace A297147.P13876273757311263974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297147.P13876273757311263974

/-! ## A297147.P7282971476122212331

`lt[0, A008683(A213217(n)+1)]`
-/

namespace A297147.P7282971476122212331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A213217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297147.P7282971476122212331

/-! ## A297147.P17823396026782722887

`eq[2, A001222(A213217(n)+1)]`
-/

namespace A297147.P17823396026782722887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A213217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297147.P17823396026782722887

/-! ## A297147.P10091451471655635991

`eq[2, A105700(A213217(n)+1)]`
-/

namespace A297147.P10091451471655635991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A213217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297147.P10091451471655635991

/-! ## A297147.P4955831257164394937

`eq[4, A000005(A213217(n)+1)]`
-/

namespace A297147.P4955831257164394937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A213217 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297147.P4955831257164394937

/-!
# A297148: 

The programs for A297148, there is no canonical definition to state claims against.
-/

/-! ## A297148.P17798618212185616528

`∪[A032559(n+1), A171901(n+1)]`
-/

namespace A297148.P17798618212185616528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297148.P17798618212185616528

/-! ## A297148.P18246049675097341784

`∪[A044821(n+1), A171901(n+1)]`
-/

namespace A297148.P18246049675097341784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297148.P18246049675097341784

/-! ## A297148.P13350826104616236229

`∪[A044911(n+1), A171901(n+1)]`
-/

namespace A297148.P13350826104616236229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297148.P13350826104616236229

/-! ## A297148.P17158890682835953522

`∪[A082810(n+1), A171901(n+1)]`
-/

namespace A297148.P17158890682835953522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297148.P17158890682835953522

/-! ## A297148.P6135781868216658874

`∪[A171901(n+1), A276142(n+1)]`
-/

namespace A297148.P6135781868216658874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A297148.P6135781868216658874

/-! ## A297148.P5414799557943678736

`lt[A321802(n)², A084984(3*n+1)]`
-/

namespace A297148.P5414799557943678736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321802 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A297148.P5414799557943678736

/-!
# A297149: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A297149, there is no canonical definition to state claims against.
-/

/-! ## A297149.P16924603782247350486

`A296502(n)+2*A296484(n)`
-/

namespace A297149.P16924603782247350486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296502 n + 2 * A296484 n

end

end A297149.P16924603782247350486

/-! ## A297149.P16985963794942182124

`A296484(n)+A296502(n)+A296484(n)%A299636(n)`
-/

namespace A297149.P16985963794942182124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 n + (A296502 n + Int.tmod (A296484 n) (A299636 n))

end

end A297149.P16985963794942182124

/-! ## A297149.P8269200920475093842

`A296502(n+1)-A296484(n)`
-/

namespace A297149.P8269200920475093842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296502 (n + 1) - A296484 n

end

end A297149.P8269200920475093842

/-! ## A297149.P17265182248630588057

`A296502(n+1)-Δ[A296502(n)/3]`
-/

namespace A297149.P17265182248630588057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296502 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296502 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A297149.P17265182248630588057

/-! ## A297149.P7663192410082245177

`A296502(n)+A131380(Δ[A296502(n)])`
-/

namespace A297149.P7663192410082245177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296502 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296502 n + A131380 (f1 (n + 1) - f1 n).toNat

end

end A297149.P7663192410082245177

/-! ## A297149.P16877624142890766243

`A016789(∑[A296484(n)])-A296484(n)`
-/

namespace A297149.P16877624142890766243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A296484 n

end

end A297149.P16877624142890766243

/-!
# A297150: Let b(k) denote A292081(k); the sequence lists numbers b(2n) where for all m > n, b(2m) > b(2n).

The programs for A297150, the canonical program `A297150.P3820632814485889049` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297150 has offset 1).

The definition of A297150 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297150.P3820632814485889049

`5*A049591(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A297150

/-- `5*A049591(n+1)` -/
def P3820632814485889049.Spec : Prop :=
  ∀ n, P3820632814485889049.a n = A297150 (n + 1)

theorem P3820632814485889049.correct : P3820632814485889049.Spec := by
  intro n
  simp only [A297150, Nat.add_sub_cancel]

end A297150

/-! ## A297150.P2649293354805046038

`A056240(A297925(n+1))`
-/

namespace A297150.P2649293354805046038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A297925 (n + 1)).toNat

end

end A297150.P2649293354805046038

namespace A297150

/-- `A056240(A297925(n+1))` -/
def P2649293354805046038.Spec : Prop :=
  ∀ n, P2649293354805046038.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P1221153299451026581

`5*(A136798(n+1)-1)`
-/

namespace A297150.P1221153299451026581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A136798 (n + 1) - 1)

end

end A297150.P1221153299451026581

namespace A297150

/-- `5*(A136798(n+1)-1)` -/
def P1221153299451026581.Spec : Prop :=
  ∀ n, P1221153299451026581.a n = A297150 (n + 1)

theorem P1221153299451026581.correct : P1221153299451026581.Spec := by
  intro n
  simp only [A297150, Nat.add_sub_cancel, A297150.P1221153299451026581.a, A297150.P3820632814485889049.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A136798, A136798.P11682257404800107167.a, A001223, A001223.P5034056745985311719.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297150

/-! ## A297150.P623005745056180466

`5*(A107987(n+1)-2)`
-/

namespace A297150.P623005745056180466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A107987 (n + 1) - 2)

end

end A297150.P623005745056180466

namespace A297150

/-- `5*(A107987(n+1)-2)` -/
def P623005745056180466.Spec : Prop :=
  ∀ n, P623005745056180466.a n = A297150 (n + 1)

theorem P623005745056180466.correct : P623005745056180466.Spec := by
  intro n
  simp only [A297150, Nat.add_sub_cancel, A297150.P623005745056180466.a, A297150.P3820632814485889049.a, A049591, A049591.P2776477659953961474.f1, A049591.P2776477659953961474.f2, A049591.P2776477659953961474.a, A107987, A107987.P5415694799470960516.a, A001223, A001223.P5034056745985311719.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297150

/-! ## A297150.P3101166718647351683

`5*A067774(n+2)`
-/

namespace A297150.P3101166718647351683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A067774 (n + 2)

end

end A297150.P3101166718647351683

namespace A297150

/-- `5*A067774(n+2)` -/
def P3101166718647351683.Spec : Prop :=
  ∀ n, P3101166718647351683.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P13619671415088093705

`A001750(A049579(n+1))`
-/

namespace A297150.P13619671415088093705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (A049579 (n + 1)).toNat

end

end A297150.P13619671415088093705

namespace A297150

/-- `A001750(A049579(n+1))` -/
def P13619671415088093705.Spec : Prop :=
  ∀ n, P13619671415088093705.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P13361651573379512383

`5*p?[A007921(n+1)]`
-/

namespace A297150.P13361651573379512383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007921 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297150.P13361651573379512383

namespace A297150

/-- `5*p?[A007921(n+1)]` -/
def P13361651573379512383.Spec : Prop :=
  ∀ n, P13361651573379512383.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P7158823142473450778

`5*p?[A018252(n+3)-2]`
-/

namespace A297150.P7158823142473450778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 3) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297150.P7158823142473450778

namespace A297150

/-- `5*p?[A018252(n+3)-2]` -/
def P7158823142473450778.Spec : Prop :=
  ∀ n, P7158823142473450778.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P12659404082805947889

`A064502(A297925(2*n+1-n))`
-/

namespace A297150.P12659404082805947889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 (A297925 (2 * n + 1 - n)).toNat

end

end A297150.P12659404082805947889

namespace A297150

/-- `A064502(A297925(2*n+1-n))` -/
def P12659404082805947889.Spec : Prop :=
  ∀ n, P12659404082805947889.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P13298497621884507721

`5*A332461(A141515(n+2)+1)`
-/

namespace A297150.P13298497621884507721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A332461 (A141515 (n + 2) + 1).toNat

end

end A297150.P13298497621884507721

namespace A297150

/-- `5*A332461(A141515(n+2)+1)` -/
def P13298497621884507721.Spec : Prop :=
  ∀ n, P13298497621884507721.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P5046197440663292858

`5*p?[A165971(A080513(n))+n]`
-/

namespace A297150.P5046197440663292858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (A080513 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297150.P5046197440663292858

namespace A297150

/-- `5*p?[A165971(A080513(n))+n]` -/
def P5046197440663292858.Spec : Prop :=
  ∀ n, P5046197440663292858.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P10315821217401576129

`5*p?[A175553(n+1)]`
-/

namespace A297150.P10315821217401576129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297150.P10315821217401576129

namespace A297150

/-- `5*p?[A175553(n+1)]` -/
def P10315821217401576129.Spec : Prop :=
  ∀ n, P10315821217401576129.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P1397768774123327038

`5*p?[A179620(n+1)]`
-/

namespace A297150.P1397768774123327038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297150.P1397768774123327038

namespace A297150

/-- `5*p?[A179620(n+1)]` -/
def P1397768774123327038.Spec : Prop :=
  ∀ n, P1397768774123327038.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P7050482475456141307

`5*eq[n, A093074(n+1)]`
-/

namespace A297150.P7050482475456141307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297150.P7050482475456141307

namespace A297150

/-- `5*eq[n, A093074(n+1)]` -/
def P7050482475456141307.Spec : Prop :=
  ∀ n, (P7050482475456141307.a n : ℤ) = A297150 (n + 1)

end A297150

/-! ## A297150.P14825877354900456515

`A008587(A049591(n+1))`
-/

namespace A297150.P14825877354900456515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A049591 (n + 1)).toNat

end

end A297150.P14825877354900456515

namespace A297150

/-- `A008587(A049591(n+1))` -/
def P14825877354900456515.Spec : Prop :=
  ∀ n, P14825877354900456515.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P11605447236805237802

`A063093(A136798(n+1))`
-/

namespace A297150.P11605447236805237802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063093 (A136798 (n + 1)).toNat

end

end A297150.P11605447236805237802

namespace A297150

/-- `A063093(A136798(n+1))` -/
def P11605447236805237802.Spec : Prop :=
  ∀ n, P11605447236805237802.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P2974245090148520061

`A008587(A067774(n+2))`
-/

namespace A297150.P2974245090148520061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A067774 (n + 2)).toNat

end

end A297150.P2974245090148520061

namespace A297150

/-- `A008587(A067774(n+2))` -/
def P2974245090148520061.Spec : Prop :=
  ∀ n, P2974245090148520061.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P3408017089786592668

`A091574(A141515(n+2))`
-/

namespace A297150.P3408017089786592668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091574 (A141515 (n + 2)).toNat

end

end A297150.P3408017089786592668

namespace A297150

/-- `A091574(A141515(n+2))` -/
def P3408017089786592668.Spec : Prop :=
  ∀ n, P3408017089786592668.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P5534607500514964943

`record[5*A093074(A007921(n+1)+1)]`
-/

namespace A297150.P5534607500514964943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A093074 (A007921 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297150.P5534607500514964943

namespace A297150

/-- `record[5*A093074(A007921(n+1)+1)]` -/
def P5534607500514964943.Spec : Prop :=
  ∀ n, P5534607500514964943.a n = A297150 (n + 1)

end A297150

/-! ## A297150.P7287891533706147313

`5*record[A093074(A256258(n+3)+1)]`
-/

namespace A297150.P7287891533706147313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A256258 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297150.P7287891533706147313

namespace A297150

/-- `5*record[A093074(A256258(n+3)+1)]` -/
def P7287891533706147313.Spec : Prop :=
  ∀ n, P7287891533706147313.a n = A297150 (n + 1)

end A297150

/-!
# A297151: a(n) = Sum_{i=0..n} Sum_{j=0..n} Sum_{k=0..n} binomial(n,i)*binomial(n,j)*binomial(n,k)*max(i,j,k).

The programs for A297151, the canonical program `A297151.P14839027657882619678` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297151 has offset 0).

The definition of A297151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A297151.P14839027657882619678

`n*2^(3*n-1)+3*n*2^(n-2)*C(2*n, n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297151

/-- `n*2^(3*n-1)+3*n*2^(n-2)*C(2*n, n)` -/
def P14839027657882619678.Spec : Prop :=
  ∀ n, P14839027657882619678.a n = (A297151 n : ℚ)

end A297151

/-!
# A297152: Positive numbers whose decimal expansion contains a 3-digit substring abc such that b > a > c.

The programs for A297152, there is no canonical definition to state claims against.
-/

/-! ## A297152.P13274058452768365816

`lt[n, A056965(n)*A283001(n)]`
-/

namespace A297152.P13274058452768365816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n * A283001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A297152.P13274058452768365816

/-! ## A297152.P17068961212953897647

`eq[A004186(n)+1, A194233(n+1)]`
-/

namespace A297152.P17068961212953897647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297152.P17068961212953897647

/-! ## A297152.P8996281907340850046

`eq[A227362(n)+1, A194233(n+1)]`
-/

namespace A297152.P8996281907340850046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227362 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194233 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A297152.P8996281907340850046

/-! ## A297152.P3716594770638126249

`∩[A032848(n+1), A071590(n+1)]`
-/

namespace A297152.P3716594770638126249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297152.P3716594770638126249

/-! ## A297152.P5701606237043917913

`∩[A071590(n+1), A134853(n+1)]`
-/

namespace A297152.P5701606237043917913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297152.P5701606237043917913

/-! ## A297152.P6023792337762176786

`∩[A071590(n+1), A296884(n+1)]`
-/

namespace A297152.P6023792337762176786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297152.P6023792337762176786

/-! ## A297152.P1948979108797050058

`∩[A071590(n+1), A297146(n+1)]`
-/

namespace A297152.P1948979108797050058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297152.P1948979108797050058

/-!
# A297153: Reversing binary representation of A083254(n), 2*phi(n) - n.

The programs for A297153, the canonical program `A297153.P15480407933502326326` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297153 has offset 1).

The definition of A297153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297153.P15480407933502326326

`xor(A083254(n+1)+A074057(n+3), A074057(n+3))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A297153

/-- `xor(A083254(n+1)+A074057(n+3), A074057(n+3))` -/
def P15480407933502326326.Spec : Prop :=
  ∀ n, P15480407933502326326.a n = A297153 (n + 1)

theorem P15480407933502326326.correct : P15480407933502326326.Spec := by
  intro n
  simp only [A297153, Nat.add_sub_cancel]

end A297153

/-!
# A297155: a(1) = a(2) = 0, after which, a(n) = 1+a(n/2) if n is of the form 4k+2, otherwise a(n) = a(A252463(n)).

The programs for A297155, the canonical program `A297155.P1611206963555320167` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297155 has offset 1).

The definition of A297155 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252464, A297113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297155.P1611206963555320167

`A252464(n+1)-A297113(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A297155

/-- `A252464(n+1)-A297113(n+1)` -/
def P1611206963555320167.Spec : Prop :=
  ∀ n, P1611206963555320167.a n = A297155 (n + 1)

theorem P1611206963555320167.correct : P1611206963555320167.Spec := by
  intro n
  simp only [A297155, Nat.add_sub_cancel]

end A297155

/-! ## A297155.P17991053581843098418

`A037800(A156552(n+1))`
-/

namespace A297155.P17991053581843098418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A156552 (n + 1)).toNat

end

end A297155.P17991053581843098418

namespace A297155

/-- `A037800(A156552(n+1))` -/
def P17991053581843098418.Spec : Prop :=
  ∀ n, P17991053581843098418.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P17996932016237634369

`floor(∑{p}[n+1, root(γ, #)])`
-/

namespace A297155.P17996932016237634369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋

end

end A297155.P17996932016237634369

namespace A297155

/-- `floor(∑{p}[n+1, root(γ, #)])` -/
def P17996932016237634369.Spec : Prop :=
  ∀ n, P17996932016237634369.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P11737953732703262402

`floor(∑{p}[n+1, n+1-#]/(n+1))`
-/

namespace A297155.P11737953732703262402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℤ) - (p : ℤ)) : ℤ) : ℚ) / (n + 1 : ℚ)⌋

end

end A297155.P11737953732703262402

namespace A297155

/-- `floor(∑{p}[n+1, n+1-#]/(n+1))` -/
def P11737953732703262402.Spec : Prop :=
  ∀ n, P11737953732703262402.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P9005798756383780184

`log2(A007875(n+1))`
-/

namespace A297155.P9005798756383780184
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A007875 (n + 1) : ℝ)

end

end A297155.P9005798756383780184

namespace A297155

/-- `log2(A007875(n+1))` -/
def P9005798756383780184.Spec : Prop :=
  ∀ n, P9005798756383780184.a n = (A297155 (n + 1) : ℝ)

end A297155

/-! ## A297155.P11408069821570829567

`n%A378993(n+1)`
-/

namespace A297155.P11408069821570829567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A378993 (n + 1))

end

end A297155.P11408069821570829567

namespace A297155

/-- `n%A378993(n+1)` -/
def P11408069821570829567.Spec : Prop :=
  ∀ n, P11408069821570829567.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P2830636383805016640

`ceil(log(A259936(n+1)))`
-/

namespace A297155.P2830636383805016640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A259936 (n + 1) : ℝ)⌉

end

end A297155.P2830636383805016640

namespace A297155

/-- `ceil(log(A259936(n+1)))` -/
def P2830636383805016640.Spec : Prop :=
  ∀ n, P2830636383805016640.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P15777217227952359542

`A110475(∏{p}[n+1, #])`
-/

namespace A297155.P15777217227952359542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110475 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P15777217227952359542

namespace A297155

/-- `A110475(∏{p}[n+1, #])` -/
def P15777217227952359542.Spec : Prop :=
  ∀ n, P15777217227952359542.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P1733399615486290238

`A225230(∏{p}[n+1, #])`
-/

namespace A297155.P1733399615486290238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225230 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P1733399615486290238

namespace A297155

/-- `A225230(∏{p}[n+1, #])` -/
def P1733399615486290238.Spec : Prop :=
  ∀ n, P1733399615486290238.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P8522967961757805066

`A231122(∏{p}[n+1, #])`
-/

namespace A297155.P8522967961757805066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P8522967961757805066

namespace A297155

/-- `A231122(∏{p}[n+1, #])` -/
def P8522967961757805066.Spec : Prop :=
  ∀ n, P8522967961757805066.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P15473168439149540618

`A252736(∏{p}[n+1, #])`
-/

namespace A297155.P15473168439149540618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P15473168439149540618

namespace A297155

/-- `A252736(∏{p}[n+1, #])` -/
def P15473168439149540618.Spec : Prop :=
  ∀ n, P15473168439149540618.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P2016926361980800331

`A268374(∏{p}[n+1, #])`
-/

namespace A297155.P2016926361980800331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268374 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P2016926361980800331

namespace A297155

/-- `A268374(∏{p}[n+1, #])` -/
def P2016926361980800331.Spec : Prop :=
  ∀ n, P2016926361980800331.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P10168515023954980079

`A325226(∏{p}[n+1, #])`
-/

namespace A297155.P10168515023954980079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325226 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P10168515023954980079

namespace A297155

/-- `A325226(∏{p}[n+1, #])` -/
def P10168515023954980079.Spec : Prop :=
  ∀ n, P10168515023954980079.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P5931050868239329803

`A362983(∏{p}[n+1, #])`
-/

namespace A297155.P5931050868239329803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362983 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A297155.P5931050868239329803

namespace A297155

/-- `A362983(∏{p}[n+1, #])` -/
def P5931050868239329803.Spec : Prop :=
  ∀ n, P5931050868239329803.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P10474618247289389726

`floor(log(cosh(A001221(n+1))))`
-/

namespace A297155.P10474618247289389726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.cosh (A001221 (n + 1) : ℝ))⌋

end

end A297155.P10474618247289389726

namespace A297155

/-- `floor(log(cosh(A001221(n+1))))` -/
def P10474618247289389726.Spec : Prop :=
  ∀ n, P10474618247289389726.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P6187107942412067276

`floor(log(A082476(n+1))/2)`
-/

namespace A297155.P6187107942412067276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A082476 (n + 1) : ℝ) / 2⌋

end

end A297155.P6187107942412067276

namespace A297155

/-- `floor(log(A082476(n+1))/2)` -/
def P6187107942412067276.Spec : Prop :=
  ∀ n, P6187107942412067276.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P200830285607291621

`∑{e}[A034444(n+1), #-1]`
-/

namespace A297155.P200830285607291621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A297155.P200830285607291621

namespace A297155

/-- `∑{e}[A034444(n+1), #-1]` -/
def P200830285607291621.Spec : Prop :=
  ∀ n, P200830285607291621.a n = A297155 (n + 1)

end A297155

/-! ## A297155.P3828527513364342951

`∏{e}[A074816(n+1), #]-1`
-/

namespace A297155.P3828527513364342951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A297155.P3828527513364342951

namespace A297155

/-- `∏{e}[A074816(n+1), #]-1` -/
def P3828527513364342951.Spec : Prop :=
  ∀ n, P3828527513364342951.a n = A297155 (n + 1)

end A297155

/-!
# A297156: Möbius transform of A243354.

The programs for A297156, the canonical program `A297156.P15478329871067049887` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297156 has offset 1).

The definition of A297156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297156.P15478329871067049887

`∑{d}[n+1, A008683(#)*A243354((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297156

/-- `∑{d}[n+1, A008683(#)*A243354((n+1)/#)]` -/
def P15478329871067049887.Spec : Prop :=
  ∀ n, P15478329871067049887.a n = A297156 (n + 1)

theorem P15478329871067049887.correct : P15478329871067049887.Spec := by
  intro n
  simp only [A297156, Nat.add_sub_cancel]

end A297156

/-!
# A297158: Ludic ladder sequence: a(n) = Sum_{k=1..n} (-1)^LudicPi(k), where LudicPi(n) = A192512(n)-1 gives the number of Ludic numbers > 1 and <= n.

The programs for A297158, there is no canonical definition to state claims against.
-/

/-! ## A297158.P13615976949074898581

`∑[A062157(∑[A237427(n)%2])]`
-/

namespace A297158.P13615976949074898581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237427 n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297158.P13615976949074898581

/-! ## A297158.P11774516930279170469

`∑[A062157(∑[A237427(n)])]`
-/

namespace A297158.P11774516930279170469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237427 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297158.P11774516930279170469

/-!
# A297159: a(n) = 3*n - 2*phi(n) - sigma(n); Difference between the deficiency of n and its Moebius-transform.

The programs for A297159, the canonical program `A297159.P13683911670693545293` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297159 has offset 1).

The definition of A297159 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297159.P14029420522089976832

`A033879(n+1)-A083254(n+1)`
-/

namespace A297159.P14029420522089976832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A083254 (n + 1)

end

end A297159.P14029420522089976832

namespace A297159

/-- `A033879(n+1)-A083254(n+1)` -/
def P14029420522089976832.Spec : Prop :=
  ∀ n, P14029420522089976832.a n = A297159 (n + 1)

theorem P14029420522089976832.correct : P14029420522089976832.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P14029420522089976832.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A083254, A083254.P7544960031424623367.a, A003557, A003557.P6364735403900941810.a, A033880, A033880.P6005875780263802708.a, A173557, A173557.P15666735857375843373.a, A001065, A001065.P4097147489331274860.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P13683911670693545293

`3*(n+1)-2*A000010(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A297159

/-- `3*(n+1)-2*A000010(n+1)-A000203(n+1)` -/
def P13683911670693545293.Spec : Prop :=
  ∀ n, P13683911670693545293.a n = A297159 (n + 1)

theorem P13683911670693545293.correct : P13683911670693545293.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel]

end A297159

/-! ## A297159.P6014998157417207634

`A051953(n+1)-A051709(n+1)`
-/

namespace A297159.P6014998157417207634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A051709 (n + 1)

end

end A297159.P6014998157417207634

namespace A297159

/-- `A051953(n+1)-A051709(n+1)` -/
def P6014998157417207634.Spec : Prop :=
  ∀ n, P6014998157417207634.a n = A297159 (n + 1)

theorem P6014998157417207634.correct : P6014998157417207634.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P6014998157417207634.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A051709, A051709.P8066883811744733228.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P6336341500557721109

`A046640(n+1)-A153011(n+1)`
-/

namespace A297159.P6336341500557721109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - A153011 (n + 1)

end

end A297159.P6336341500557721109

namespace A297159

/-- `A046640(n+1)-A153011(n+1)` -/
def P6336341500557721109.Spec : Prop :=
  ∀ n, P6336341500557721109.a n = A297159 (n + 1)

theorem P6336341500557721109.correct : P6336341500557721109.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P6336341500557721109.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046640, A046640.P10355392584185486359.a, A153011, A153011.P18266022580685187752.a, A003557, A003557.P6364735403900941810.a, A045763, A045763.P9156243808986750239.a, A051953, A051953.P11179276897610979764.a, A152770, A152770.P4996422170920482869.a, A173557, A173557.P15666735857375843373.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A062249, A062249.P5473932307129171226.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P10337719259052636306

`A053158(n+1)-A209187(n+1)`
-/

namespace A297159.P10337719259052636306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A209187 (n + 1)

end

end A297159.P10337719259052636306

namespace A297159

/-- `A053158(n+1)-A209187(n+1)` -/
def P10337719259052636306.Spec : Prop :=
  ∀ n, P10337719259052636306.a n = A297159 (n + 1)

theorem P10337719259052636306.correct : P10337719259052636306.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P10337719259052636306.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A053158, A053158.P11533641159092355549.a, A209187, A209187.P1822992089248699320.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P18151811398653456621

`A324048(n+1)-A091818(n+1)`
-/

namespace A297159.P18151811398653456621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1) - A091818 (n + 1)

end

end A297159.P18151811398653456621

namespace A297159

/-- `A324048(n+1)-A091818(n+1)` -/
def P18151811398653456621.Spec : Prop :=
  ∀ n, P18151811398653456621.a n = A297159 (n + 1)

theorem P18151811398653456621.correct : P18151811398653456621.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P18151811398653456621.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A091818, A091818.P1536144604709334989.a, A324048, A324048.P2740531755121187895.a, A001065, A001065.P4097147489331274860.a, A003557, A003557.P6364735403900941810.a, A083254, A083254.P7544960031424623367.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P5135473217585150089

`A235796(n+1)-A074057(n+3)`
-/

namespace A297159.P5135473217585150089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) - A074057 (n + 3)

end

end A297159.P5135473217585150089

namespace A297159

/-- `A235796(n+1)-A074057(n+3)` -/
def P5135473217585150089.Spec : Prop :=
  ∀ n, P5135473217585150089.a n = A297159 (n + 1)

theorem P5135473217585150089.correct : P5135473217585150089.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P5135473217585150089.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A074057, A074057.P5713316463646011208.a, A235796, A235796.P5769590272751401819.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P3678938374402606545

`A033885(n+1)-2*A000010(n+1)`
-/

namespace A297159.P3678938374402606545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - 2 * A000010 (n + 1)

end

end A297159.P3678938374402606545

namespace A297159

/-- `A033885(n+1)-2*A000010(n+1)` -/
def P3678938374402606545.Spec : Prop :=
  ∀ n, P3678938374402606545.a n = A297159 (n + 1)

theorem P3678938374402606545.correct : P3678938374402606545.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P3678938374402606545.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033885, A033885.P621255430935931612.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P2571067191212880405

`A001065(n+1)-2*A051709(n+1)`
-/

namespace A297159.P2571067191212880405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - 2 * A051709 (n + 1)

end

end A297159.P2571067191212880405

namespace A297159

/-- `A001065(n+1)-2*A051709(n+1)` -/
def P2571067191212880405.Spec : Prop :=
  ∀ n, P2571067191212880405.a n = A297159 (n + 1)

theorem P2571067191212880405.correct : P2571067191212880405.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P2571067191212880405.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051709, A051709.P8066883811744733228.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P15652494090400482120

`2*A051953(n+1)-A001065(n+1)`
-/

namespace A297159.P15652494090400482120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051953 (n + 1) - A001065 (n + 1)

end

end A297159.P15652494090400482120

namespace A297159

/-- `2*A051953(n+1)-A001065(n+1)` -/
def P15652494090400482120.Spec : Prop :=
  ∀ n, P15652494090400482120.a n = A297159 (n + 1)

theorem P15652494090400482120.correct : P15652494090400482120.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P15652494090400482120.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P2030563047430345335

`A324048(n+1)-2*A001065(n+1)`
-/

namespace A297159.P2030563047430345335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324048 (n + 1) - 2 * A001065 (n + 1)

end

end A297159.P2030563047430345335

namespace A297159

/-- `A324048(n+1)-2*A001065(n+1)` -/
def P2030563047430345335.Spec : Prop :=
  ∀ n, P2030563047430345335.a n = A297159 (n + 1)

theorem P2030563047430345335.correct : P2030563047430345335.Spec := by
  intro n
  simp only [A297159, Nat.add_sub_cancel, A297159.P2030563047430345335.a, A297159.P13683911670693545293.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A324048, A324048.P2740531755121187895.a, A003557, A003557.P6364735403900941810.a, A083254, A083254.P7544960031424623367.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297159

/-! ## A297159.P2861791986935810235

`∑{d}[n+1, A033879(#)*A157658((n+1)/#)]`
-/

namespace A297159.P2861791986935810235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P2861791986935810235

namespace A297159

/-- `∑{d}[n+1, A033879(#)*A157658((n+1)/#)]` -/
def P2861791986935810235.Spec : Prop :=
  ∀ n, P2861791986935810235.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P35562150759932445

`∑{d}[n+1, A051953(#)*A153881((n+1)/#)]`
-/

namespace A297159.P35562150759932445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A153881 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P35562150759932445

namespace A297159

/-- `∑{d}[n+1, A051953(#)*A153881((n+1)/#)]` -/
def P35562150759932445.Spec : Prop :=
  ∀ n, P35562150759932445.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P17764580308796160933

`∑{d}[n+1, A008683(#)*A296074((n+1)/#)]`
-/

namespace A297159.P17764580308796160933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A296074 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P17764580308796160933

namespace A297159

/-- `∑{d}[n+1, A008683(#)*A296074((n+1)/#)]` -/
def P17764580308796160933.Spec : Prop :=
  ∀ n, P17764580308796160933.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P4122857709812550248

`∑{d}[n+1, A001065(#)*A378225((n+1)/#)]`
-/

namespace A297159.P4122857709812550248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A378225 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P4122857709812550248

namespace A297159

/-- `∑{d}[n+1, A001065(#)*A378225((n+1)/#)]` -/
def P4122857709812550248.Spec : Prop :=
  ∀ n, P4122857709812550248.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P16233797894259842402

`∑{d}[n+1, A062790(#)*A378216((n+1)/#)]`
-/

namespace A297159.P16233797894259842402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P16233797894259842402

namespace A297159

/-- `∑{d}[n+1, A062790(#)*A378216((n+1)/#)]` -/
def P16233797894259842402.Spec : Prop :=
  ∀ n, P16233797894259842402.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P12293623373179119304

`∑{d}[n+1, A211779(#)*A378219((n+1)/#)]`
-/

namespace A297159.P12293623373179119304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A211779 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P12293623373179119304

namespace A297159

/-- `∑{d}[n+1, A211779(#)*A378219((n+1)/#)]` -/
def P12293623373179119304.Spec : Prop :=
  ∀ n, P12293623373179119304.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P9912129299465685628

`∑{d}[n+1, A245211(#)*A378211((n+1)/#)]`
-/

namespace A297159.P9912129299465685628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245211 d * A378211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P9912129299465685628

namespace A297159

/-- `∑{d}[n+1, A245211(#)*A378211((n+1)/#)]` -/
def P9912129299465685628.Spec : Prop :=
  ∀ n, P9912129299465685628.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P11368318787244182376

`∑{d}[n+1, A057427(#-1)*A083254((n+1)/#)]`
-/

namespace A297159.P11368318787244182376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A083254 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297159.P11368318787244182376

namespace A297159

/-- `∑{d}[n+1, A057427(#-1)*A083254((n+1)/#)]` -/
def P11368318787244182376.Spec : Prop :=
  ∀ n, P11368318787244182376.a n = A297159 (n + 1)

end A297159

/-! ## A297159.P7817990046130474845

`A033879(n+1)-A117966(A297154(n+1))`
-/

namespace A297159.P7817990046130474845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - A117966 (A297154 (n + 1)).toNat

end

end A297159.P7817990046130474845

namespace A297159

/-- `A033879(n+1)-A117966(A297154(n+1))` -/
def P7817990046130474845.Spec : Prop :=
  ∀ n, P7817990046130474845.a n = A297159 (n + 1)

end A297159

/-!
# A297160: Positions of records in A220400.

The programs for A297160, there is no canonical definition to state claims against.
-/

/-! ## A297160.P13182096245049979162

`A334267(∑[∑[∑{e}[n+1, #]+1]])`
-/

namespace A297160.P13182096245049979162
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A297160.P13182096245049979162

/-! ## A297160.P12940953322853800098

`A334267(A022789(n+1))`
-/

namespace A297160.P12940953322853800098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A022789 (n + 1)).toNat

end

end A297160.P12940953322853800098

/-! ## A297160.P16895315239939463138

`A334267(A115006(n)+1)`
-/

namespace A297160.P16895315239939463138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A115006 n + 1).toNat

end

end A297160.P16895315239939463138

/-!
# A297162: Restricted growth sequence transform of A297172, which is Möbius transform of A253564.

The programs for A297162, there is no canonical definition to state claims against.
-/

/-! ## A297162.P12894363818226511269

`A096825(A000032(n)*A016825(n))`
-/

namespace A297162.P12894363818226511269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A000032 n * A016825 n).toNat

end

end A297162.P12894363818226511269

/-! ## A297162.P12841481844675348579

`A082076(A028387(n)*A330994(n))`
-/

namespace A297162.P12841481844675348579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (A028387 n * A330994 n).toNat

end

end A297162.P12841481844675348579

/-! ## A297162.P12812790423760929787

`A001222(A324644(n+1)+A003202(n))`
-/

namespace A297162.P12812790423760929787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A324644 (n + 1) + A003202 n).toNat

end

end A297162.P12812790423760929787

/-! ## A297162.P17493118893228491177

`A363486(n+1)+A045778(A181565(n))`
-/

namespace A297162.P17493118893228491177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (n + 1) + A045778 (A181565 n).toNat

end

end A297162.P17493118893228491177

/-! ## A297162.P12466082192810391945

`A026400(and(A033081(n+1), A061931(n+1)))`
-/

namespace A297162.P12466082192810391945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026400 (Int.land (A033081 (n + 1)) (A061931 (n + 1))).toNat

end

end A297162.P12466082192810391945

/-!
# A297163: Permutation of natural numbers: a(n) = A156552(1+A005940(1+n)).

The programs for A297163, the canonical program `A297163.P17430785458312278322` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297163 has offset 0).

The definition of A297163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297163.P17430785458312278322

`A156552(1+A005940(1+n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A297163

/-- `A156552(1+A005940(1+n))` -/
def P17430785458312278322.Spec : Prop :=
  ∀ n, P17430785458312278322.a n = A297163 n

theorem P17430785458312278322.correct : P17430785458312278322.Spec := by
  intro n
  simp only [A297163]

end A297163

/-! ## A297163.P14370922582837646257

`A005941(A005940(n+1)+1)-1`
-/

namespace A297163.P14370922582837646257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A005940 (n + 1) + 1).toNat - 1

end

end A297163.P14370922582837646257

namespace A297163

/-- `A005941(A005940(n+1)+1)-1` -/
def P14370922582837646257.Spec : Prop :=
  ∀ n, P14370922582837646257.a n = A297163 n

end A297163

/-! ## A297163.P8635724856024593763

`A156552(A364499(n+1)+n+2)`
-/

namespace A297163.P8635724856024593763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A364499 (n + 1) + (n + 2 : ℤ)).toNat

end

end A297163.P8635724856024593763

namespace A297163

/-- `A156552(A364499(n+1)+n+2)` -/
def P8635724856024593763.Spec : Prop :=
  ∀ n, P8635724856024593763.a n = A297163 n

end A297163

/-! ## A297163.P16644925055467559889

`A156552(A243353(A006068(n))+1)`
-/

namespace A297163.P16644925055467559889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A243353 (A006068 n).toNat + 1).toNat

end

end A297163.P16644925055467559889

namespace A297163

/-- `A156552(A243353(A006068(n))+1)` -/
def P16644925055467559889.Spec : Prop :=
  ∀ n, P16644925055467559889.a n = A297163 n

end A297163

/-! ## A297163.P4476863843806140174

`A156552(A064216(A244154(n))+1)`
-/

namespace A297163.P4476863843806140174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A064216 (A244154 n).toNat + 1).toNat

end

end A297163.P4476863843806140174

namespace A297163

/-- `A156552(A064216(A244154(n))+1)` -/
def P4476863843806140174.Spec : Prop :=
  ∀ n, P4476863843806140174.a n = A297163 n

end A297163

/-! ## A297163.P6571126481680534184

`A156552(A302024(A052330(n))+1)`
-/

namespace A297163.P6571126481680534184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A302024 (A052330 n).toNat + 1).toNat

end

end A297163.P6571126481680534184

namespace A297163

/-- `A156552(A302024(A052330(n))+1)` -/
def P6571126481680534184.Spec : Prop :=
  ∀ n, P6571126481680534184.a n = A297163 n

end A297163

/-! ## A297163.P15247957636910609229

`A156552(A279338(A279344(n))+1)`
-/

namespace A297163.P15247957636910609229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A279338 (A279344 n).toNat + 1).toNat

end

end A297163.P15247957636910609229

namespace A297163

/-- `A156552(A279338(A279344(n))+1)` -/
def P15247957636910609229.Spec : Prop :=
  ∀ n, P15247957636910609229.a n = A297163 n

end A297163

/-! ## A297163.P5407758078134051842

`A156552(A324641(n+1)+1-A324640(n+1))`
-/

namespace A297163.P5407758078134051842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A324641 (n + 1) + (1 - A324640 (n + 1))).toNat

end

end A297163.P5407758078134051842

namespace A297163

/-- `A156552(A324641(n+1)+1-A324640(n+1))` -/
def P5407758078134051842.Spec : Prop :=
  ∀ n, P5407758078134051842.a n = A297163 n

end A297163

/-! ## A297163.P628612357216587142

`A156552(A227413(A246365(n+1))+1)`
-/

namespace A297163.P628612357216587142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A227413 (A246365 (n + 1)).toNat + 1).toNat

end

end A297163.P628612357216587142

namespace A297163

/-- `A156552(A227413(A246365(n+1))+1)` -/
def P628612357216587142.Spec : Prop :=
  ∀ n, P628612357216587142.a n = A297163 n

end A297163

/-!
# A297164: Permutation of nonnegative integers: a(n) = A156552(A005940(1+n)-1).

The programs for A297164, the canonical program `A297164.P5502083951874882206` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297164 has offset 1).

The definition of A297164 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297164.P5502083951874882206

`A156552(A005940(1+n+1)-1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A297164

/-- `A156552(A005940(1+n+1)-1)` -/
def P5502083951874882206.Spec : Prop :=
  ∀ n, P5502083951874882206.a n = A297164 (n + 1)

theorem P5502083951874882206.correct : P5502083951874882206.Spec := by
  intro n
  simp only [A297164, Nat.add_sub_cancel]

end A297164

/-! ## A297164.P10806942362320172952

`A005941(A005940(n+2)-1)-1`
-/

namespace A297164.P10806942362320172952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (A005940 (n + 2) - 1).toNat - 1

end

end A297164.P10806942362320172952

namespace A297164

/-- `A005941(A005940(n+2)-1)-1` -/
def P10806942362320172952.Spec : Prop :=
  ∀ n, P10806942362320172952.a n = A297164 (n + 1)

end A297164

/-! ## A297164.P3892576562501590709

`A156552(A364499(n+2)+n+1)`
-/

namespace A297164.P3892576562501590709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A364499 (n + 2) + (n + 1 : ℤ)).toNat

end

end A297164.P3892576562501590709

namespace A297164

/-- `A156552(A364499(n+2)+n+1)` -/
def P3892576562501590709.Spec : Prop :=
  ∀ n, P3892576562501590709.a n = A297164 (n + 1)

end A297164

/-! ## A297164.P11419891161457812153

`A156552(A163511(A054429(n+1))-1)`
-/

namespace A297164.P11419891161457812153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A163511 (A054429 (n + 1)).toNat - 1).toNat

end

end A297164.P11419891161457812153

namespace A297164

/-- `A156552(A163511(A054429(n+1))-1)` -/
def P11419891161457812153.Spec : Prop :=
  ∀ n, P11419891161457812153.a n = A297164 (n + 1)

end A297164

/-! ## A297164.P9536040917644699007

`A156552(A057428(n+1)+A005940(n+2))`
-/

namespace A297164.P9536040917644699007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A057428 (n + 1) + A005940 (n + 2)).toNat

end

end A297164.P9536040917644699007

namespace A297164

/-- `A156552(A057428(n+1)+A005940(n+2))` -/
def P9536040917644699007.Spec : Prop :=
  ∀ n, P9536040917644699007.a n = A297164 (n + 1)

end A297164

/-! ## A297164.P13565264261836243480

`A156552(A033999(2*n+1)+A005940(n+2))`
-/

namespace A297164.P13565264261836243480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A033999 (2 * n + 1) + A005940 (n + 2)).toNat

end

end A297164.P13565264261836243480

namespace A297164

/-- `A156552(A033999(2*n+1)+A005940(n+2))` -/
def P13565264261836243480.Spec : Prop :=
  ∀ n, P13565264261836243480.a n = A297164 (n + 1)

end A297164

/-! ## A297164.P17140493764590246115

`A156552(A246275(A253552(n+1)))`
-/

namespace A297164.P17140493764590246115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (A246275 (A253552 (n + 1)).toNat).toNat

end

end A297164.P17140493764590246115

namespace A297164

/-- `A156552(A246275(A253552(n+1)))` -/
def P17140493764590246115.Spec : Prop :=
  ∀ n, P17140493764590246115.a n = A297164 (n + 1)

end A297164

/-! ## A297164.P6917313047743379667

`∑{d}[A246275(A253552(n+1)), A297112(#)]`
-/

namespace A297164.P6917313047743379667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (A253552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297112 d

end

end A297164.P6917313047743379667

namespace A297164

/-- `∑{d}[A246275(A253552(n+1)), A297112(#)]` -/
def P6917313047743379667.Spec : Prop :=
  ∀ n, P6917313047743379667.a n = A297164 (n + 1)

end A297164

/-!
# A297165: Permutation of natural numbers: a(n) = A005940(2+A156552(n)), a(0) = 1.

The programs for A297165, the canonical program `A297165.P1652888233073832174` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297165 has offset 0).

The definition of A297165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297165.P1652888233073832174

`A341511(∑[abs(char[1]-1+n)])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A297165

/-- `A341511(∑[abs(char[1]-1+n)])` -/
def P1652888233073832174.Spec : Prop :=
  ∀ n, P1652888233073832174.a n = A297165 n

theorem P1652888233073832174.correct : P1652888233073832174.Spec := by
  intro n
  simp only [A297165]

end A297165

/-! ## A297165.P1513481656700808677

`A341510(∑[char[1]+n]+1)`
-/

namespace A297165.P1513481656700808677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A297165.P1513481656700808677

namespace A297165

/-- `A341510(∑[char[1]+n]+1)` -/
def P1513481656700808677.Spec : Prop :=
  ∀ n, P1513481656700808677.a n = A297165 n

end A297165

/-! ## A297165.P7011741611941031622

`A207801(((n+1)/A032742(n+1)*A283463(n+1))%A128389(n+1))`
-/

namespace A297165.P7011741611941031622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ))) (A128389 (n + 1))).toNat

end

end A297165.P7011741611941031622

namespace A297165

/-- `A207801(((n+1)/A032742(n+1)*A283463(n+1))%A128389(n+1))` -/
def P7011741611941031622.Spec : Prop :=
  ∀ n, P7011741611941031622.a n = A297165 n

end A297165

/-! ## A297165.P8734570856737255036

`A207801(((n+1)/A032742(n+1)*A283463(n+1))%A034316(n))`
-/

namespace A297165.P8734570856737255036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207801 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A032742 (n + 1) : ℚ) * (A283463 (n + 1) : ℚ))) (A034316 n)).toNat

end

end A297165.P8734570856737255036

namespace A297165

/-- `A207801(((n+1)/A032742(n+1)*A283463(n+1))%A034316(n))` -/
def P8734570856737255036.Spec : Prop :=
  ∀ n, P8734570856737255036.a n = A297165 n

end A297165

/-!
# A297166: Permutation of nonnegative integers: a(n) = A005940(A156552(n)), a(1) = 0.

The programs for A297166, there is no canonical definition to state claims against.
-/

/-! ## A297166.P7976414499807542723

`A005940(A156552(3^C(a(n-1), 68)+n))` with `a(0)=0`
-/

namespace A297166.P7976414499807542723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005940 (A156552 (3 ^ Nat.choose (a (n - 1)).toNat 68 + n)).toNat

end

end A297166.P7976414499807542723

/-! ## A297166.P15992570829372454665

`A156552(A266646(n+1))%p?[A018783(n)]`
-/

namespace A297166.P15992570829372454665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156552 (A266646 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A297166.P15992570829372454665

/-! ## A297166.P5226266309596576489

`A156552(A266646(n+1)^A008835(n+1))`
-/

namespace A297166.P5226266309596576489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A297166.P5226266309596576489

/-! ## A297166.P3731809887781453327

`A252754(A266646(n+1)^A008835(n+1))`
-/

namespace A297166.P3731809887781453327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A297166.P3731809887781453327

/-! ## A297166.P13332199968154214507

`A269388(A266646(n+1)^A008835(n+1))`
-/

namespace A297166.P13332199968154214507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (SequenceMachineLib.roundAway ((A266646 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A297166.P13332199968154214507

/-!
# A297167: a(1) = 0, for n > 1, a(n) = -1 + the excess of n (A046660) + the index of the largest prime factor (A061395).

The programs for A297167, the canonical program `A297167.P13113550866660970867` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297167 has offset 1).

The definition of A297167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A252464, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297167.P13113550866660970867

`A252464(n+1)-A001221(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A297167

/-- `A252464(n+1)-A001221(n+1)` -/
def P13113550866660970867.Spec : Prop :=
  ∀ n, P13113550866660970867.a n = A297167 (n + 1)

theorem P13113550866660970867.correct : P13113550866660970867.Spec := by
  intro n
  simp only [A297167, Nat.add_sub_cancel]

end A297167

/-! ## A297167.P8005343715954623250

`(A297113(n+1)-1)%(n+1)`
-/

namespace A297167.P8005343715954623250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297113 (n + 1) - 1) (n + 1 : ℤ)

end

end A297167.P8005343715954623250

namespace A297167

/-- `(A297113(n+1)-1)%(n+1)` -/
def P8005343715954623250.Spec : Prop :=
  ∀ n, P8005343715954623250.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P7735698818560582538

`A028310(A297113(n+1))-1`
-/

namespace A297167.P7735698818560582538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A297113 (n + 1)).toNat - 1

end

end A297167.P7735698818560582538

namespace A297167

/-- `A028310(A297113(n+1))-1` -/
def P7735698818560582538.Spec : Prop :=
  ∀ n, P7735698818560582538.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P11243508618096884903

`A297113(n+1)+A057428(n)`
-/

namespace A297167.P11243508618096884903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + A057428 n

end

end A297167.P11243508618096884903

namespace A297167

/-- `A297113(n+1)+A057428(n)` -/
def P11243508618096884903.Spec : Prop :=
  ∀ n, P11243508618096884903.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P769904094689722422

`A297113(n+1)-A057427(n)`
-/

namespace A297167.P769904094689722422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) - A057427 n

end

end A297167.P769904094689722422

namespace A297167

/-- `A297113(n+1)-A057427(n)` -/
def P769904094689722422.Spec : Prop :=
  ∀ n, P769904094689722422.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P13810033507230066549

`A252735(n+1)+A046660(n+1)`
-/

namespace A297167.P13810033507230066549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1) + A046660 (n + 1)

end

end A297167.P13810033507230066549

namespace A297167

/-- `A252735(n+1)+A046660(n+1)` -/
def P13810033507230066549.Spec : Prop :=
  ∀ n, P13810033507230066549.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P4972384759136889550

`A252736(n+1)+A079067(n+1)`
-/

namespace A297167.P4972384759136889550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1) + A079067 (n + 1)

end

end A297167.P4972384759136889550

namespace A297167

/-- `A252736(n+1)+A079067(n+1)` -/
def P4972384759136889550.Spec : Prop :=
  ∀ n, P4972384759136889550.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P13520329089804175840

`A325134(n+1)-A083399(n+1)`
-/

namespace A297167.P13520329089804175840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (n + 1) - A083399 (n + 1)

end

end A297167.P13520329089804175840

namespace A297167

/-- `A325134(n+1)-A083399(n+1)` -/
def P13520329089804175840.Spec : Prop :=
  ∀ n, P13520329089804175840.a n = A297167 (n + 1)

theorem P13520329089804175840.correct : P13520329089804175840.Spec := by
  intro n
  simp only [A297167, Nat.add_sub_cancel, A297167.P13520329089804175840.a, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A083399, A083399.P16148020281325742632.a, A252464, A252464.P11274602121942962009.a, A325134, A325134.P8946370293622767949.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297167

/-! ## A297167.P12211238335180633326

`A061395(A064989(n+1))+∑{e}[n+1, #-1]`
-/

namespace A297167.P12211238335180633326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064989 (n + 1)).toNat + ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A297167.P12211238335180633326

namespace A297167

/-- `A061395(A064989(n+1))+∑{e}[n+1, #-1]` -/
def P12211238335180633326.Spec : Prop :=
  ∀ n, P12211238335180633326.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P6633344219900290151

`A061395(A064989(n+1))+A046660(n+1)`
-/

namespace A297167.P6633344219900290151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A064989 (n + 1)).toNat + A046660 (n + 1)

end

end A297167.P6633344219900290151

namespace A297167

/-- `A061395(A064989(n+1))+A046660(n+1)` -/
def P6633344219900290151.Spec : Prop :=
  ∀ n, P6633344219900290151.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P13659526657547625125

`A252464(n+1)-A252464(A034444(n+1))`
-/

namespace A297167.P13659526657547625125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A252464 (A034444 (n + 1)).toNat

end

end A297167.P13659526657547625125

namespace A297167

/-- `A252464(n+1)-A252464(A034444(n+1))` -/
def P13659526657547625125.Spec : Prop :=
  ∀ n, P13659526657547625125.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P14795893168892911727

`A252464(A252463(n+1))-A297155(n+1)`
-/

namespace A297167.P14795893168892911727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (A252463 (n + 1)).toNat - A297155 (n + 1)

end

end A297167.P14795893168892911727

namespace A297167

/-- `A252464(A252463(n+1))-A297155(n+1)` -/
def P14795893168892911727.Spec : Prop :=
  ∀ n, P14795893168892911727.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P15820665200427813994

`A252464(n+1)-(A171182(n+1)+A171157(n+1))`
-/

namespace A297167.P15820665200427813994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - (A171182 (n + 1) + A171157 (n + 1))

end

end A297167.P15820665200427813994

namespace A297167

/-- `A252464(n+1)-(A171182(n+1)+A171157(n+1))` -/
def P15820665200427813994.Spec : Prop :=
  ∀ n, P15820665200427813994.a n = A297167 (n + 1)

theorem P15820665200427813994.correct : P15820665200427813994.Spec := by
  intro n
  simp only [A297167, Nat.add_sub_cancel, A297167.P15820665200427813994.a, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A171157, A171157.P8672816315949041848.a, A171182, A171182.P3095861321190241851.a, A252464, A252464.P11274602121942962009.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297167

/-! ## A297167.P959827662580257413

`A297113(n+1)+A297155(n+1)-A001221(n+1)`
-/

namespace A297167.P959827662580257413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) + (A297155 (n + 1) - A001221 (n + 1))

end

end A297167.P959827662580257413

namespace A297167

/-- `A297113(n+1)+A297155(n+1)-A001221(n+1)` -/
def P959827662580257413.Spec : Prop :=
  ∀ n, P959827662580257413.a n = A297167 (n + 1)

theorem P959827662580257413.correct : P959827662580257413.Spec := by
  intro n
  simp only [A297167, Nat.add_sub_cancel, A297167.P959827662580257413.a, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A252464, A252464.P11274602121942962009.a, A297113, A297113.P441289280190658386.a, A297155, A297155.P1611206963555320167.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A046660, A046660.P3614759855976580945.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A122111, A122111.P18124015185857335041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297167

/-! ## A297167.P15206075311714921657

`A066911(n+1)+A252464(n+1)-A349555(n+1)`
-/

namespace A297167.P15206075311714921657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066911 (n + 1) + (A252464 (n + 1) - A349555 (n + 1))

end

end A297167.P15206075311714921657

namespace A297167

/-- `A066911(n+1)+A252464(n+1)-A349555(n+1)` -/
def P15206075311714921657.Spec : Prop :=
  ∀ n, P15206075311714921657.a n = A297167 (n + 1)

theorem P15206075311714921657.correct : P15206075311714921657.Spec := by
  intro n
  simp only [A297167, Nat.add_sub_cancel, A297167.P15206075311714921657.a, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A066911, A066911.P6571933624612694988.f2, A066911.P6571933624612694988.f1, A066911.P6571933624612694988.a, A252464, A252464.P11274602121942962009.a, A349555, A349555.P9568767328218763309.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A105221, A105221.P17719623874901943766.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A008472, A008472.P6567490011312877583.f1, A008472.P6567490011312877583.a, A010051, A010051.P15078252821583414300.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A100995, A100995.P9596901243079307024.f1, A100995.P9596901243079307024.a, A193056, A193056.P6449544040074946363.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A297167

/-! ## A297167.P11332993938299233597

`A297113(2*(n+1))+A000035(n+1)-2`
-/

namespace A297167.P11332993938299233597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (2 * (n + 1)) + (A000035 (n + 1) - 2)

end

end A297167.P11332993938299233597

namespace A297167

/-- `A297113(2*(n+1))+A000035(n+1)-2` -/
def P11332993938299233597.Spec : Prop :=
  ∀ n, P11332993938299233597.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P9324186431208572487

`A243055(2*(n+1))+A046660(n+1)`
-/

namespace A297167.P9324186431208572487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243055 (2 * (n + 1)) + A046660 (n + 1)

end

end A297167.P9324186431208572487

namespace A297167

/-- `A243055(2*(n+1))+A046660(n+1)` -/
def P9324186431208572487.Spec : Prop :=
  ∀ n, P9324186431208572487.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P14281560089986976383

`A297113(n+1)-A257990(A093641(n+1))`
-/

namespace A297167.P14281560089986976383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) - A257990 (A093641 (n + 1)).toNat

end

end A297167.P14281560089986976383

namespace A297167

/-- `A297113(n+1)-A257990(A093641(n+1))` -/
def P14281560089986976383.Spec : Prop :=
  ∀ n, P14281560089986976383.a n = A297167 (n + 1)

end A297167

/-! ## A297167.P16234227361165715987

`A297113(n+1)-A257990(A174090(n+1))`
-/

namespace A297167.P16234227361165715987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (n + 1) - A257990 (A174090 (n + 1)).toNat

end

end A297167.P16234227361165715987

namespace A297167

/-- `A297113(n+1)-A257990(A174090(n+1))` -/
def P16234227361165715987.Spec : Prop :=
  ∀ n, P16234227361165715987.a n = A297167 (n + 1)

end A297167

/-!
# A297168: Difference between A156552 and its Moebius transform: a(n) = A156552(n) - A297112(n).

The programs for A297168, the canonical program `A297168.P17205494295370266601` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297168 has offset 1).

The definition of A297168 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A297112, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297168.P17205494295370266601

`A156552(n+1)-A297112(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297168

/-- `A156552(n+1)-A297112(n+1)` -/
def P17205494295370266601.Spec : Prop :=
  ∀ n, P17205494295370266601.a n = A297168 (n + 1)

theorem P17205494295370266601.correct : P17205494295370266601.Spec := by
  intro n
  simp only [A297168, Nat.add_sub_cancel]

end A297168

/-! ## A297168.P4359078720824265377

`A005941(n+1)-(A297112(n+1)+1)`
-/

namespace A297168.P4359078720824265377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - (A297112 (n + 1) + 1)

end

end A297168.P4359078720824265377

namespace A297168

/-- `A005941(n+1)-(A297112(n+1)+1)` -/
def P4359078720824265377.Spec : Prop :=
  ∀ n, P4359078720824265377.a n = A297168 (n + 1)

theorem P4359078720824265377.correct : P4359078720824265377.Spec := by
  intro n
  simp only [A297168, Nat.add_sub_cancel, A297168.P4359078720824265377.a, A297168.P17205494295370266601.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A156552, A156552.P4268073137713085227.a, A297112, A297112.P4192810520716380487.a, A131577, A131577.P3998309598604981540.a, A297113, A297113.P441289280190658386.a, A364557, A364557.P16113127302810243144.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A297167, A297167.P13113550866660970867.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A252464, A252464.P11274602121942962009.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297168

/-! ## A297168.P16205967076028005104

`∑{d}[n+1, A297112(#)]-A297112(n+1)`
-/

namespace A297168.P16205967076028005104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A297112 d - A297112 (n + 1)

end

end A297168.P16205967076028005104

namespace A297168

/-- `∑{d}[n+1, A297112(#)]-A297112(n+1)` -/
def P16205967076028005104.Spec : Prop :=
  ∀ n, P16205967076028005104.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P2738169977742320776

`∑{d}[n+1, A156552(#)*A157658((n+1)/#)]`
-/

namespace A297168.P2738169977742320776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156552 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A297168.P2738169977742320776

namespace A297168

/-- `∑{d}[n+1, A156552(#)*A157658((n+1)/#)]` -/
def P2738169977742320776.Spec : Prop :=
  ∀ n, P2738169977742320776.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P13855942348420030898

`A005941(n+1)-A094373(A297113(n+1))`
-/

namespace A297168.P13855942348420030898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005941 (n + 1) - A094373 (A297113 (n + 1)).toNat

end

end A297168.P13855942348420030898

namespace A297168

/-- `A005941(n+1)-A094373(A297113(n+1))` -/
def P13855942348420030898.Spec : Prop :=
  ∀ n, P13855942348420030898.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P17112507303853563432

`A048675(n+1)+A323905(n+1)-A297112(n+1)`
-/

namespace A297168.P17112507303853563432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1) + (A323905 (n + 1) - A297112 (n + 1))

end

end A297168.P17112507303853563432

namespace A297168

/-- `A048675(n+1)+A323905(n+1)-A297112(n+1)` -/
def P17112507303853563432.Spec : Prop :=
  ∀ n, P17112507303853563432.a n = A297168 (n + 1)

theorem P17112507303853563432.correct : P17112507303853563432.Spec := by
  intro n
  simp only [A297168, Nat.add_sub_cancel, A297168.P17112507303853563432.a, A297168.P17205494295370266601.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A156552, A156552.P4268073137713085227.a, A297112, A297112.P4192810520716380487.a, A323905, A323905.P339970777162455812.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A131577, A131577.P3998309598604981540.a, A297108, A297108.P15990807296291497671.a, A297113, A297113.P441289280190658386.a, A046660, A046660.P3614759855976580945.a, A061395, A061395.P8431317036300486107.a, A297109, A297109.P3226708849595875613.a, A364557, A364557.P16113127302810243144.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A020500, A020500.P12751166166803317150.f1, A020500.P12751166166803317150.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A297167, A297167.P13113550866660970867.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A297168

/-! ## A297168.P17580708781315570667

`A323244(n+1)+A324865(n+1)-A297112(n+1)`
-/

namespace A297168.P17580708781315570667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323244 (n + 1) + (A324865 (n + 1) - A297112 (n + 1))

end

end A297168.P17580708781315570667

namespace A297168

/-- `A323244(n+1)+A324865(n+1)-A297112(n+1)` -/
def P17580708781315570667.Spec : Prop :=
  ∀ n, P17580708781315570667.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P178118356177107057

`A292380(n+1)+A292382(n+1)-A297112(n+1)`
-/

namespace A297168.P178118356177107057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1) + (A292382 (n + 1) - A297112 (n + 1))

end

end A297168.P178118356177107057

namespace A297168

/-- `A292380(n+1)+A292382(n+1)-A297112(n+1)` -/
def P178118356177107057.Spec : Prop :=
  ∀ n, P178118356177107057.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P1005771190657939136

`A305418(A091202(n+1))-A297112(n+1)`
-/

namespace A297168.P1005771190657939136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305418 (A091202 (n + 1)).toNat - A297112 (n + 1)

end

end A297168.P1005771190657939136

namespace A297168

/-- `A305418(A091202(n+1))-A297112(n+1)` -/
def P1005771190657939136.Spec : Prop :=
  ∀ n, P1005771190657939136.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P3787216500637055013

`A252754(A250245(n+1))-A297112(n+1)`
-/

namespace A297168.P3787216500637055013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252754 (A250245 (n + 1)).toNat - A297112 (n + 1)

end

end A297168.P3787216500637055013

namespace A297168

/-- `A252754(A250245(n+1))-A297112(n+1)` -/
def P3787216500637055013.Spec : Prop :=
  ∀ n, P3787216500637055013.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P14554845505553800498

`A269388(A302025(n+1))-A297112(n+1)`
-/

namespace A297168.P14554845505553800498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269388 (A302025 (n + 1)).toNat - A297112 (n + 1)

end

end A297168.P14554845505553800498

namespace A297168

/-- `A269388(A302025(n+1))-A297112(n+1)` -/
def P14554845505553800498.Spec : Prop :=
  ∀ n, P14554845505553800498.a n = A297168 (n + 1)

end A297168

/-! ## A297168.P11833405718290361341

`A244153(A048673(n+1))-A297112(n+1)`
-/

namespace A297168.P11833405718290361341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244153 (A048673 (n + 1)).toNat - A297112 (n + 1)

end

end A297168.P11833405718290361341

namespace A297168

/-- `A244153(A048673(n+1))-A297112(n+1)` -/
def P11833405718290361341.Spec : Prop :=
  ∀ n, P11833405718290361341.a n = A297168 (n + 1)

end A297168

/-!
# A297169: Restricted growth sequence transform of a(1) = -1, a(n) = A297168(n) for n > 1.

The programs for A297169, there is no canonical definition to state claims against.
-/

/-! ## A297169.P953902388566485990

`A300827(n+1)-A032741(A291551(n))`
-/

namespace A297169.P953902388566485990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) - A032741 (A291551 n).toNat

end

end A297169.P953902388566485990

/-! ## A297169.P5431150702219106703

`A353565(A000005(2^n))`
-/

namespace A297169.P5431150702219106703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353565 (A000005 (2 ^ n)).toNat

end

end A297169.P5431150702219106703

/-! ## A297169.P8394395895145514010

`A257992(3^A353565(n+1))`
-/

namespace A297169.P8394395895145514010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A353565 (n + 1) : ℤ))).toNat

end

end A297169.P8394395895145514010

/-! ## A297169.P5906271345311923927

`A353571(3^A353565(n+1))`
-/

namespace A297169.P5906271345311923927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353571 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A353565 (n + 1) : ℤ))).toNat

end

end A297169.P5906271345311923927

/-! ## A297169.P16099180622241162578

`A000195(ceil(exp(A353565(n+1))))`
-/

namespace A297169.P16099180622241162578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 ⌈Real.exp (A353565 (n + 1) : ℝ)⌉.toNat

end

end A297169.P16099180622241162578

/-!
# A297170: a(n) = gcd(phi(n), sigma(n)-n).

The programs for A297170, the canonical program `A297170.P17524158691492541290` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297170 has offset 1).

The definition of A297170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A297170.P563848719445015889

`gcd(A000010(n+1), A001065(n+1))`
-/

namespace A297170.P563848719445015889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000010 (n + 1)) (A001065 (n + 1))

end

end A297170.P563848719445015889

namespace A297170

/-- `gcd(A000010(n+1), A001065(n+1))` -/
def P563848719445015889.Spec : Prop :=
  ∀ n, (P563848719445015889.a n : ℤ) = A297170 (n + 1)

end A297170

/-! ## A297170.P17524158691492541290

`gcd(A000010(n+1), A000203(n+1)-(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A297170

/-- `gcd(A000010(n+1), A000203(n+1)-(n+1))` -/
def P17524158691492541290.Spec : Prop :=
  ∀ n, (P17524158691492541290.a n : ℤ) = A297170 (n + 1)

theorem P17524158691492541290.correct : P17524158691492541290.Spec := by
  intro n
  simp only [A297170, Nat.add_sub_cancel]

end A297170

/-! ## A297170.P18433127272212376224

`gcd(∑{d}[n+1, #]-(n+1), (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A297170.P18433127272212376224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A297170.P18433127272212376224

namespace A297170

/-- `gcd(∑{d}[n+1, #]-(n+1), (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P18433127272212376224.Spec : Prop :=
  ∀ n, (P18433127272212376224.a n : ℤ) = A297170 (n + 1)

end A297170

/-! ## A297170.P1252570263879705107

`gcd(A048050(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A297170.P1252570263879705107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048050 (n + 1) + 1) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))

end

end A297170.P1252570263879705107

namespace A297170

/-- `gcd(A048050(n+1)+1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P1252570263879705107.Spec : Prop :=
  ∀ n, (P1252570263879705107.a n : ℤ) = A297170 (n + 1)

end A297170

/-! ## A297170.P7152924624884286982

`gcd(Δ[A002088(n)], A001065(n+1))`
-/

namespace A297170.P7152924624884286982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A001065 (n + 1))

end

end A297170.P7152924624884286982

namespace A297170

/-- `gcd(Δ[A002088(n)], A001065(n+1))` -/
def P7152924624884286982.Spec : Prop :=
  ∀ n, (P7152924624884286982.a n : ℤ) = A297170 (n + 1)

end A297170

/-! ## A297170.P13863705954685122768

`gcd(A173455(n+1), A209187(n+1))`
-/

namespace A297170.P13863705954685122768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173455 (n + 1)) (A209187 (n + 1))

end

end A297170.P13863705954685122768

namespace A297170

/-- `gcd(A173455(n+1), A209187(n+1))` -/
def P13863705954685122768.Spec : Prop :=
  ∀ n, (P13863705954685122768.a n : ℤ) = A297170 (n + 1)

end A297170

/-! ## A297170.P1458702615013942000

`gcd(∑{d}[n+1, #]-(n+1), A354102(A267099(n+1)))`
-/

namespace A297170.P1458702615013942000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ)) (A354102 (A267099 (n + 1)).toNat)

end

end A297170.P1458702615013942000

namespace A297170

/-- `gcd(∑{d}[n+1, #]-(n+1), A354102(A267099(n+1)))` -/
def P1458702615013942000.Spec : Prop :=
  ∀ n, (P1458702615013942000.a n : ℤ) = A297170 (n + 1)

end A297170

/-!
# A297171: Möbius transform of A243071.

The programs for A297171, the canonical program `A297171.P15785350754724193361` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297171 has offset 1).

The definition of A297171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297171.P15785350754724193361

`∑{d}[n+1, A008683(#)*A243071((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297171

/-- `∑{d}[n+1, A008683(#)*A243071((n+1)/#)]` -/
def P15785350754724193361.Spec : Prop :=
  ∀ n, P15785350754724193361.a n = A297171 (n + 1)

theorem P15785350754724193361.correct : P15785350754724193361.Spec := by
  intro n
  simp only [A297171, Nat.add_sub_cancel]

end A297171

/-! ## A297171.P3570278909817466617

`A364571(A243071(n+1))`
-/

namespace A297171.P3570278909817466617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364571 (A243071 (n + 1)).toNat

end

end A297171.P3570278909817466617

namespace A297171

/-- `A364571(A243071(n+1))` -/
def P3570278909817466617.Spec : Prop :=
  ∀ n, P3570278909817466617.a n = A297171 (n + 1)

end A297171

/-! ## A297171.P2027277066711176671

`A364571(A156552(A163511(A156552(n+1))))`
-/

namespace A297171.P2027277066711176671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364571 (A156552 (A163511 (A156552 (n + 1)).toNat).toNat).toNat

end

end A297171.P2027277066711176671

namespace A297171

/-- `A364571(A156552(A163511(A156552(n+1))))` -/
def P2027277066711176671.Spec : Prop :=
  ∀ n, P2027277066711176671.a n = A297171 (n + 1)

end A297171

/-!
# A297172: Möbius transform of A253564.

The programs for A297172, the canonical program `A297172.P9931995060715450119` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297172 has offset 1).

The definition of A297172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297172.P9931995060715450119

`∑{d}[n+1, A008683(#)*A253564((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297172

/-- `∑{d}[n+1, A008683(#)*A253564((n+1)/#)]` -/
def P9931995060715450119.Spec : Prop :=
  ∀ n, P9931995060715450119.a n = A297172 (n + 1)

theorem P9931995060715450119.correct : P9931995060715450119.Spec := by
  intro n
  simp only [A297172, Nat.add_sub_cancel]

end A297172

/-! ## A297172.P13781653585503185548

`A322483(A108951(n+1))-A336466(n+2)`
-/

namespace A297172.P13781653585503185548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A108951 (n + 1)).toNat - A336466 (n + 2)

end

end A297172.P13781653585503185548

namespace A297172

/-- `A322483(A108951(n+1))-A336466(n+2)` -/
def P13781653585503185548.Spec : Prop :=
  ∀ n, P13781653585503185548.a n = A297172 (n + 1)

end A297172

/-! ## A297172.P6018216211283693276

`A006995(n+1)%A306284(A108951(n+1))`
-/

namespace A297172.P6018216211283693276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006995 (n + 1)) (A306284 (A108951 (n + 1)).toNat)

end

end A297172.P6018216211283693276

namespace A297172

/-- `A006995(n+1)%A306284(A108951(n+1))` -/
def P6018216211283693276.Spec : Prop :=
  ∀ n, P6018216211283693276.a n = A297172 (n + 1)

end A297172

/-! ## A297172.P12981707985826819998

`A000225(A049888(n+1))%A122111(n+1)`
-/

namespace A297172.P12981707985826819998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (A049888 (n + 1)).toNat) (A122111 (n + 1))

end

end A297172.P12981707985826819998

namespace A297172

/-- `A000225(A049888(n+1))%A122111(n+1)` -/
def P12981707985826819998.Spec : Prop :=
  ∀ n, P12981707985826819998.a n = A297172 (n + 1)

end A297172

/-! ## A297172.P6637742531271898204

`A038573(A027193(3*n+4))%A241916(A241909(n+1))`
-/

namespace A297172.P6637742531271898204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038573 (A027193 (3 * n + 4)).toNat) (A241916 (A241909 (n + 1)).toNat)

end

end A297172.P6637742531271898204

namespace A297172

/-- `A038573(A027193(3*n+4))%A241916(A241909(n+1))` -/
def P6637742531271898204.Spec : Prop :=
  ∀ n, P6637742531271898204.a n = A297172 (n + 1)

end A297172

/-!
# A297173: Smallest difference between indices of prime divisors of n, or 0 if n is a prime power.

The programs for A297173, the canonical program `A297173.P2608014564017656804` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297173 has offset 1).

The definition of A297173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297173.P14140649124476372869

`A242411(A293448(n+1)*A330749(n+1))`
-/

namespace A297173.P14140649124476372869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (A293448 (n + 1) * A330749 (n + 1)).toNat

end

end A297173.P14140649124476372869

namespace A297173

/-- `A242411(A293448(n+1)*A330749(n+1))` -/
def P14140649124476372869.Spec : Prop :=
  ∀ n, P14140649124476372869.a n = A297173 (n + 1)

end A297173

/-! ## A297173.P14119077703943053707

`A242411(A325351(n+1)/A074828((n+1)²)*A348717(n+1))`
-/

namespace A297173.P14119077703943053707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242411 (SequenceMachineLib.roundAway ((A325351 (n + 1) : ℚ) / (A074828 ((n + 1) ^ 2) : ℚ) * (A348717 (n + 1) : ℚ))).toNat

end

end A297173.P14119077703943053707

namespace A297173

/-- `A242411(A325351(n+1)/A074828((n+1)²)*A348717(n+1))` -/
def P14119077703943053707.Spec : Prop :=
  ∀ n, P14119077703943053707.a n = A297173 (n + 1)

end A297173

/-! ## A297173.P11838583985869670033

`A305079(A001221(n+1)^A243055(n+1))`
-/

namespace A297173.P11838583985869670033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A243055 (n + 1) : ℤ))).toNat

end

end A297173.P11838583985869670033

namespace A297173

/-- `A305079(A001221(n+1)^A243055(n+1))` -/
def P11838583985869670033.Spec : Prop :=
  ∀ n, P11838583985869670033.a n = A297173 (n + 1)

end A297173

/-! ## A297173.P10084550528101948776

`A305079(A001221(n+1)^A286470(n+1))`
-/

namespace A297173.P10084550528101948776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (SequenceMachineLib.roundAway ((A001221 (n + 1) : ℚ) ^ (A286470 (n + 1) : ℤ))).toNat

end

end A297173.P10084550528101948776

namespace A297173

/-- `A305079(A001221(n+1)^A286470(n+1))` -/
def P10084550528101948776.Spec : Prop :=
  ∀ n, P10084550528101948776.a n = A297173 (n + 1)

end A297173

/-! ## A297173.P2608014564017656804

`gcd(A243055(A140211(n+1)), A243055(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A297173

/-- `gcd(A243055(A140211(n+1)), A243055(n+1))` -/
def P2608014564017656804.Spec : Prop :=
  ∀ n, (P2608014564017656804.a n : ℤ) = A297173 (n + 1)

theorem P2608014564017656804.correct : P2608014564017656804.Spec := by
  intro n
  simp only [A297173, Nat.add_sub_cancel]

end A297173

/-! ## A297173.P12305852672630383815

`gcd(A286470(A088835(n+1)²), A286470(n+1))`
-/

namespace A297173.P12305852672630383815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286470 (A088835 (n + 1) ^ 2).toNat) (A286470 (n + 1))

end

end A297173.P12305852672630383815

namespace A297173

/-- `gcd(A286470(A088835(n+1)²), A286470(n+1))` -/
def P12305852672630383815.Spec : Prop :=
  ∀ n, (P12305852672630383815.a n : ℤ) = A297173 (n + 1)

end A297173

/-! ## A297173.P8215562755260458373

`A355524(∏{p}[n+1, #]+1-floor(atan(n)))`
-/

namespace A297173.P8215562755260458373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355524 (((∏ p ∈ Nat.primeFactors (f1 n), p + 1 : ℕ) : ℤ) - ⌊Real.arctan (n : ℝ)⌋).toNat

end

end A297173.P8215562755260458373

namespace A297173

/-- `A355524(∏{p}[n+1, #]+1-floor(atan(n)))` -/
def P8215562755260458373.Spec : Prop :=
  ∀ n, P8215562755260458373.a n = A297173 (n + 1)

end A297173

/-! ## A297173.P14170327578355815372

`gcd(A286470(n+1), A326291(n+1))`
-/

namespace A297173.P14170327578355815372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286470 (n + 1)) (A326291 (n + 1))

end

end A297173.P14170327578355815372

namespace A297173

/-- `gcd(A286470(n+1), A326291(n+1))` -/
def P14170327578355815372.Spec : Prop :=
  ∀ n, (P14170327578355815372.a n : ℤ) = A297173 (n + 1)

end A297173

/-! ## A297173.P1249216481485553417

`A328167(A348717(n+1))`
-/

namespace A297173.P1249216481485553417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (A348717 (n + 1)).toNat

end

end A297173.P1249216481485553417

namespace A297173

/-- `A328167(A348717(n+1))` -/
def P1249216481485553417.Spec : Prop :=
  ∀ n, P1249216481485553417.a n = A297173 (n + 1)

end A297173

/-!
# A297175: Rational primes that decompose in the field Q(sqrt(19)).

The programs for A297175, there is no canonical definition to state claims against.
-/

/-! ## A297175.P12155479176359725545

`p?[A038891(n+1)+char[3]]`
-/

namespace A297175.P12155479176359725545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297175.P12155479176359725545

/-! ## A297175.P16441045009342205067

`A038891(A326178(n)+1)`
-/

namespace A297175.P16441045009342205067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (A326178 n + 1).toNat

end

end A297175.P16441045009342205067

/-! ## A297175.P9571643396690686712

`A038891(floor(sqrt(A082111(n))))`
-/

namespace A297175.P9571643396690686712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (Int.sqrt (A082111 n)).toNat

end

end A297175.P9571643396690686712

/-! ## A297175.P5657226583927390374

`∩[A038891(n+1), A198191(n+1)]`
-/

namespace A297175.P5657226583927390374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297175.P5657226583927390374

/-! ## A297175.P13860769084465063521

`∩[A038891(n+1), A160544(n+1)]`
-/

namespace A297175.P13860769084465063521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297175.P13860769084465063521

/-! ## A297175.P3671816290491053936

`∩[A038891(n+1), A269020(n+1)]`
-/

namespace A297175.P3671816290491053936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297175.P3671816290491053936

/-! ## A297175.P12159045997872753157

`p?[A009001(n)*A011585(n)]`
-/

namespace A297175.P12159045997872753157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A011585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297175.P12159045997872753157

/-! ## A297175.P16721365072063329829

`A038891(A293754(n+1))`
-/

namespace A297175.P16721365072063329829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038891 (A293754 (n + 1)).toNat

end

end A297175.P16721365072063329829

/-!
# A297176: Inert rational primes in the field Q(sqrt(19)).

The programs for A297176, there is no canonical definition to state claims against.
-/

/-! ## A297176.P12490523759280151061

`A038892(n+2)`
-/

namespace A297176.P12490523759280151061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (n + 2)

end

end A297176.P12490523759280151061

/-! ## A297176.P17276934556280434303

`A038892(A052938(Δ[n²])-1)*A057979(2*n)`
-/

namespace A297176.P17276934556280434303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat * A057979 (2 * n)

end

end A297176.P17276934556280434303

/-! ## A297176.P4228364775022658011

`A000010(((-1)^n)²)*A038892(A052938(Δ[n²])-1)`
-/

namespace A297176.P4228364775022658011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (((-1) ^ n) ^ 2).toNat * A038892 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat

end

end A297176.P4228364775022658011

/-! ## A297176.P4482121783490066650

`A038892(A052938(Δ[n²])-1)-A001222((-1)^(2*n))`
-/

namespace A297176.P4482121783490066650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat - A001222 ((-1) ^ (2 * n)).toNat

end

end A297176.P4482121783490066650

/-! ## A297176.P4462592754501645925

`p?[A000265(A038892(A028310(n)))]`
-/

namespace A297176.P4462592754501645925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A038892 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297176.P4462592754501645925

/-! ## A297176.P5808267961328512772

`A014963(A038892(A052938(Δ[n²])-1))`
-/

namespace A297176.P5808267961328512772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A038892 (A052938 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1).toNat).toNat

end

end A297176.P5808267961328512772

/-! ## A297176.P8207801501476591042

`record[A038892(A263275(A005408(n)))]`
-/

namespace A297176.P8207801501476591042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (A263275 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297176.P8207801501476591042

/-! ## A297176.P17449249956117143872

`p?[A009001(n)*A011585(2*n)]`
-/

namespace A297176.P17449249956117143872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A011585 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297176.P17449249956117143872

/-! ## A297176.P3448763723791007104

`record[A038892(A000267(A004442(n)))]`
-/

namespace A297176.P3448763723791007104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038892 (A000267 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297176.P3448763723791007104

/-!
# A297177: Rational primes that decompose in the field Q(sqrt(23)).

The programs for A297177, there is no canonical definition to state claims against.
-/

/-! ## A297177.P13537811875150570084

`p?[A009001(n)*A011586(n)]`
-/

namespace A297177.P13537811875150570084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A011586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297177.P13537811875150570084

/-! ## A297177.P5230521702718699849

`p?[eq[A009531(n), A011586(n)]]`
-/

namespace A297177.P5230521702718699849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011586 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A297177.P5230521702718699849

/-! ## A297177.P3015385890959547858

`eq[1, and(2, n)+A011586(n)*A231734(n+1)]`
-/

namespace A297177.P3015385890959547858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℤ) + A011586 n * A231734 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A297177.P3015385890959547858

/-! ## A297177.P14887669861054992004

`p?[n*A028961(A028961(8*n))+n*A133872(n)]`
-/

namespace A297177.P14887669861054992004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028961 (A028961 (8 * n)).toNat + (n : ℤ) * A133872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A297177.P14887669861054992004

/-! ## A297177.P2005976630194373578

`∩[A038897(n+1), A272260(n+1)]`
-/

namespace A297177.P2005976630194373578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272260 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A297177.P2005976630194373578

/-!
# A297178: Triangle read by rows: T(n,k) = number of partitions of genus 2 of n elements with k parts (n >= 6, 2 <= k <= n-4).

The programs for A297178, there is no canonical definition to state claims against.
-/

/-! ## A297178.P8453936557888505703

`∑[A158279(A056535(3*n+2))]`
-/

namespace A297178.P8453936557888505703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158279 (A056535 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297178.P8453936557888505703

/-!
# A297180: a(n) is the smallest positive integer of length (distance from origin) n in the Cayley graph of the integers generated by all powers of 7.

The programs for A297180, the canonical program `A297180.P9574775226719977974` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297180 has offset 1).

The definition of A297180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297180.P9619230272315070360

`∑[ceil(7^(ceil(n/3)-1))]`
-/

namespace A297180.P9619230272315070360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) ^ (⌈(n : ℚ) / 3⌉ - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297180.P9619230272315070360

namespace A297180

/-- `∑[ceil(7^(ceil(n/3)-1))]` -/
def P9619230272315070360.Spec : Prop :=
  ∀ n, P9619230272315070360.a n = A297180 (n + 1)

end A297180

/-! ## A297180.P9574775226719977974

`7*a(n-3)-3` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297180

/-- `7*a(n-3)-3` -/
def P9574775226719977974.Spec : Prop :=
  ∀ n, P9574775226719977974.a n = A297180 (n + 1)

theorem P9574775226719977974.correct : P9574775226719977974.Spec := by
  intro n
  simp only [A297180, Nat.add_sub_cancel]

end A297180

/-! ## A297180.P16419675830735089585

`lcm(7, a(n-3))-3` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A297180.P16419675830735089585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  (Int.lcm 7 (a (n - 3)) : ℤ) - 3

end

end A297180.P16419675830735089585

namespace A297180

/-- `lcm(7, a(n-3))-3` -/
def P16419675830735089585.Spec : Prop :=
  ∀ n, P16419675830735089585.a n = A297180 (n + 1)

end A297180

/-! ## A297180.P9131531780186796079

`A181303(2*n+1)/2+1`
-/

namespace A297180.P9131531780186796079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181303 (2 * n + 1) : ℚ) / 2 + 1

end

end A297180.P9131531780186796079

namespace A297180

/-- `A181303(2*n+1)/2+1` -/
def P9131531780186796079.Spec : Prop :=
  ∀ n, P9131531780186796079.a n = (A297180 (n + 1) : ℚ)

end A297180

/-! ## A297180.P10854092559368545444

`round((A181303(A005843(n)+1)+1)/2)`
-/

namespace A297180.P10854092559368545444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A181303 (A005843 n + 1).toNat + 1 : ℚ) / 2)

end

end A297180.P10854092559368545444

namespace A297180

/-- `round((A181303(A005843(n)+1)+1)/2)` -/
def P10854092559368545444.Spec : Prop :=
  ∀ n, P10854092559368545444.a n = A297180 (n + 1)

end A297180

/-!
# A297181: a(n) is the smallest positive integer of length (distance from origin) n in the Cayley graph of the integers generated by all powers of 11.

The programs for A297181, the canonical program `A297181.P17634340097830474649` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297181 has offset 1).

The definition of A297181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297181.P17634340097830474649

`a(n-1)+11*a(n-5)-11*a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297181

/-- `a(n-1)+11*a(n-5)-11*a(n-6)` -/
def P17634340097830474649.Spec : Prop :=
  ∀ n, P17634340097830474649.a n = A297181 (n + 1)

theorem P17634340097830474649.correct : P17634340097830474649.Spec := by
  intro n
  simp only [A297181, Nat.add_sub_cancel]

end A297181

/-! ## A297181.P4185039217566475424

`∑[11^A059995(A004273(n))]`
-/

namespace A297181.P4185039217566475424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A059995 (A004273 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297181.P4185039217566475424

namespace A297181

/-- `∑[11^A059995(A004273(n))]` -/
def P4185039217566475424.Spec : Prop :=
  ∀ n, P4185039217566475424.a n = (A297181 (n + 1) : ℚ)

end A297181

/-! ## A297181.P16206837205136699701

`∑[11^A059995(A004275(n))]`
-/

namespace A297181.P16206837205136699701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A059995 (A004275 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297181.P16206837205136699701

namespace A297181

/-- `∑[11^A059995(A004275(n))]` -/
def P16206837205136699701.Spec : Prop :=
  ∀ n, P16206837205136699701.a n = (A297181 (n + 1) : ℚ)

end A297181

/-! ## A297181.P5351345869346480525

`∑[11^A002265(A173633(n))]`
-/

namespace A297181.P5351345869346480525
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A002265 (A173633 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297181.P5351345869346480525

namespace A297181

/-- `∑[11^A002265(A173633(n))]` -/
def P5351345869346480525.Spec : Prop :=
  ∀ n, P5351345869346480525.a n = (A297181 (n + 1) : ℚ)

end A297181

/-! ## A297181.P9397890529740301710

`∑[11^A059995(A004278(n+1))]`
-/

namespace A297181.P9397890529740301710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A059995 (A004278 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297181.P9397890529740301710

namespace A297181

/-- `∑[11^A059995(A004278(n+1))]` -/
def P9397890529740301710.Spec : Prop :=
  ∀ n, P9397890529740301710.a n = (A297181 (n + 1) : ℚ)

end A297181

/-! ## A297181.P13395040186146582804

`∑[11^A059995(A004280(n+1))]`
-/

namespace A297181.P13395040186146582804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (11 : ℚ) ^ (A059995 (A004280 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297181.P13395040186146582804

namespace A297181

/-- `∑[11^A059995(A004280(n+1))]` -/
def P13395040186146582804.Spec : Prop :=
  ∀ n, P13395040186146582804.a n = (A297181 (n + 1) : ℚ)

end A297181

/-! ## A297181.P2942466499075530564

`∑[∏[gcd(11, A294372(n))]]`
-/

namespace A297181.P2942466499075530564
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 11 (A294372 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297181.P2942466499075530564

namespace A297181

/-- `∑[∏[gcd(11, A294372(n))]]` -/
def P2942466499075530564.Spec : Prop :=
  ∀ n, (P2942466499075530564.a n : ℤ) = A297181 (n + 1)

end A297181

/-!
# A297182: a(n) is the smallest positive integer of length (distance from origin) n in the Cayley graph of the integers generated by all powers of 13.

The programs for A297182, the canonical program `A297182.P9683775374571746082` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297182 has offset 1).

The definition of A297182 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 538 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297182.P11530083644380028700

`∑[13^A002264(A140106(n+1))]`
-/

namespace A297182.P11530083644380028700
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A002264 (A140106 (n + 1)).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297182.P11530083644380028700

namespace A297182

/-- `∑[13^A002264(A140106(n+1))]` -/
def P11530083644380028700.Spec : Prop :=
  ∀ n, P11530083644380028700.a n = (A297182 (n + 1) : ℚ)

end A297182

/-! ## A297182.P9683775374571746082

`a(n-1)+13*a(n-6)-13*a(n-7)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=7`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297182

/-- `a(n-1)+13*a(n-6)-13*a(n-7)` -/
def P9683775374571746082.Spec : Prop :=
  ∀ n, P9683775374571746082.a n = A297182 (n + 1)

theorem P9683775374571746082.correct : P9683775374571746082.Spec := by
  intro n
  simp only [A297182, Nat.add_sub_cancel]

end A297182

/-! ## A297182.P8573328754924462083

`∑[∏[gcd(13, A288020(n))]]`
-/

namespace A297182.P8573328754924462083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 13 (A288020 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297182.P8573328754924462083

namespace A297182

/-- `∑[∏[gcd(13, A288020(n))]]` -/
def P8573328754924462083.Spec : Prop :=
  ∀ n, (P8573328754924462083.a n : ℤ) = A297182 (n + 1)

end A297182

/-! ## A297182.P1055902153034434313

`∑[A033049(A173862(A065033(n)))]`
-/

namespace A297182.P1055902153034434313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 (A173862 (A065033 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297182.P1055902153034434313

namespace A297182

/-- `∑[A033049(A173862(A065033(n)))]` -/
def P1055902153034434313.Spec : Prop :=
  ∀ n, P1055902153034434313.a n = A297182 (n + 1)

end A297182

/-! ## A297182.P18007990843554880888

`lt[A086800(A025730(n)), A053597(n+1)]+1`
-/

namespace A297182.P18007990843554880888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086800 (A025730 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053597 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A297182.P18007990843554880888

namespace A297182

/-- `lt[A086800(A025730(n)), A053597(n+1)]+1` -/
def P18007990843554880888.Spec : Prop :=
  ∀ n, (P18007990843554880888.a n : ℤ) = A297182 (n + 1)

end A297182

/-!
# A297183: Number of open binary words of length n.

The programs for A297183, there is no canonical definition to state claims against.
-/

/-! ## A297183.P15753185312407428896

`2^n-A226452(n)`
-/

namespace A297183.P15753185312407428896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A226452 n

end

end A297183.P15753185312407428896

/-! ## A297183.P17953456231579046921

`abs(A000079(n)-A226452(n))`
-/

namespace A297183.P17953456231579046921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A226452 n|

end

end A297183.P17953456231579046921

/-! ## A297183.P4168898004569266975

`and(-A226452(n), A000225(n))`
-/

namespace A297183.P4168898004569266975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A226452 n) (A000225 n)

end

end A297183.P4168898004569266975

/-! ## A297183.P8557475328871401511

`A000051(n)-(A226452(n)+1)`
-/

namespace A297183.P8557475328871401511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A226452 n + 1)

end

end A297183.P8557475328871401511

/-! ## A297183.P2012742313532203001

`abs(∑[A011782(n)]-A226452(n))`
-/

namespace A297183.P2012742313532203001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - A226452 n|

end

end A297183.P2012742313532203001

/-!
# A297184: Number of closed binary words of length n that are not privileged.

The programs for A297184, there is no canonical definition to state claims against.
-/

/-! ## A297184.P11148177011684892941

`2*A297185(n)`
-/

namespace A297184.P11148177011684892941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A297185 n

end

end A297184.P11148177011684892941

/-! ## A297184.P10318316180061504318

`A226452(n)-A231208(n)`
-/

namespace A297184.P10318316180061504318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226452 n - A231208 n

end

end A297184.P10318316180061504318

/-! ## A297184.P15046902400518020104

`A297185(n)/abs(A065357(n)/2)`
-/

namespace A297184.P15046902400518020104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297185 n : ℚ) / |(A065357 n : ℚ) / 2|

end

end A297184.P15046902400518020104

/-! ## A297184.P10804881733846125757

`A297185(char[1]+n)+A297185(n)`
-/

namespace A297184.P10804881733846125757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297185 ((if ∃ j, f1 j = n then 1 else 0) + n) + A297185 n

end

end A297184.P10804881733846125757

/-! ## A297184.P3732420854822733502

`2^n-A297183(n)-A231208(n)`
-/

namespace A297184.P3732420854822733502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A297183 n - A231208 n

end

end A297184.P3732420854822733502

/-!
# A297185: One-half of the number of closed binary words of length n that are not privileged.

The programs for A297185, there is no canonical definition to state claims against.
-/

/-! ## A297185.P6716860124406336307

`A297184(n)/2`
-/

namespace A297185.P6716860124406336307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297184 n : ℚ) / 2

end

end A297185.P6716860124406336307

/-! ## A297185.P9218199749129655253

`(A226452(n)-A231208(n))/2`
-/

namespace A297185.P9218199749129655253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226452 n - A231208 n : ℚ) / 2

end

end A297185.P9218199749129655253

/-! ## A297185.P14841363149921100935

`(2^n-(A297183(n)+A231208(n)))/2`
-/

namespace A297185.P14841363149921100935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - (A297183 n + A231208 n) : ℚ) / 2

end

end A297185.P14841363149921100935

/-! ## A297185.P1566860015142380174

`(A000079(n)-A297183(n)-A231208(n))/2`
-/

namespace A297185.P1566860015142380174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n - A297183 n - A231208 n : ℚ) / 2

end

end A297185.P1566860015142380174

/-! ## A297185.P15045493663328554107

`(A000051(n)-(A297183(n)+1)-A231208(n))/2`
-/

namespace A297185.P15045493663328554107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n - (A297183 n + 1) - A231208 n : ℚ) / 2

end

end A297185.P15045493663328554107

/-!
# A297186: Row sums of triangle A297495.

The programs for A297186, there is no canonical definition to state claims against.
-/

/-! ## A297186.P14570219694340722618

`A297496(n+1)-A297495(n+1)`
-/

namespace A297186.P14570219694340722618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297496 (n + 1) - A297495 (n + 1)

end

end A297186.P14570219694340722618

/-! ## A297186.P10961791333102844256

`record[Δ[A297495(A117142(n+1))]]`
-/

namespace A297186.P10961791333102844256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A117142 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297186.P10961791333102844256

/-! ## A297186.P14162843334966738476

`A297495(∑[n+2])-A297495(n+1)`
-/

namespace A297186.P14162843334966738476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (∑ j ∈ Finset.range (n + 1), f1 j) - A297495 (n + 1)

end

end A297186.P14162843334966738476

/-! ## A297186.P7113160924532473884

`record[A297495(A117142(n+2))]-A297495(n+1)`
-/

namespace A297186.P7113160924532473884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A117142 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A297495 (n + 1)

end

end A297186.P7113160924532473884

/-! ## A297186.P15919665494357746787

`record[A297495(A038722(n+2))]-A297495(n+1)`
-/

namespace A297186.P15919665494357746787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297495 (A038722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A297495 (n + 1)

end

end A297186.P15919665494357746787

/-!
# A297187: Row sums of triangle A297497.

The programs for A297187, there is no canonical definition to state claims against.
-/

/-! ## A297187.P211154006931052252

`A297498(n+1)-A297497(n+1)`
-/

namespace A297187.P211154006931052252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297498 (n + 1) - A297497 (n + 1)

end

end A297187.P211154006931052252

/-! ## A297187.P9765783506267632222

`record[Δ[A297497(A117142(n+1))]]`
-/

namespace A297187.P9765783506267632222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (A117142 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297187.P9765783506267632222

/-! ## A297187.P18425683252762460016

`record[Δ[A297497(A316669(n+1))]]`
-/

namespace A297187.P18425683252762460016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (A316669 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297187.P18425683252762460016

/-! ## A297187.P12840187002232447301

`A297497(∑[n+2])-A297497(n+1)`
-/

namespace A297187.P12840187002232447301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (∑ j ∈ Finset.range (n + 1), f1 j) - A297497 (n + 1)

end

end A297187.P12840187002232447301

/-! ## A297187.P3106838276241600105

`record[A297497(A061579(n))-A297497(n)]`
-/

namespace A297187.P3106838276241600105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (A061579 n).toNat - A297497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297187.P3106838276241600105

/-! ## A297187.P5851201081851097767

`record[A297497(A117142(n+1))]-A297497(n+1)`
-/

namespace A297187.P5851201081851097767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A297497 (n + 1)

end

end A297187.P5851201081851097767

/-! ## A297187.P374120275658930821

`record[A297497(A316669(n+2))-A297497(n+1)]`
-/

namespace A297187.P374120275658930821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297497 (A316669 (n + 2)).toNat - A297497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A297187.P374120275658930821

/-!
# A297188: Sums of antidiagonals in A297359.

The programs for A297188, there is no canonical definition to state claims against.
-/

/-! ## A297188.P6388709235472317016

`2^n+A032600(n+1)*A328615(A004153(n))`
-/

namespace A297188.P6388709235472317016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A032600 (n + 1) * A328615 (A004153 n).toNat

end

end A297188.P6388709235472317016

/-! ## A297188.P12642243132092601877

`∑[2*A344962(a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A297188.P12642243132092601877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * A344962 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297188.P12642243132092601877

/-! ## A297188.P10766665408084816586

`A172311(A065954(n+1))`
-/

namespace A297188.P10766665408084816586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (A065954 (n + 1)).toNat

end

end A297188.P10766665408084816586

/-! ## A297188.P6887804261557900087

`A307784(A178744(n+1))`
-/

namespace A297188.P6887804261557900087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307784 (A178744 (n + 1)).toNat

end

end A297188.P6887804261557900087

/-!
# A297189: Expansion of (x + 3*x^2 - 2*x^3 - 3*x^4)/(1 - 8*x^2 + 9*x^4).

The programs for A297189, the canonical program `A297189.P2272892042758644701` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297189 has offset 0).

The definition of A297189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2-2x^3-3x^4)/(1-8x^2+9x^4))` (program `A297189.P2272892042758644701`, by `A297189.P2272892042758644701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A297189.P2272892042758644701

`ogf((x+3x^2-2x^3-3x^4)/(1-8x^2+9x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A297189

/-- `ogf((x+3x^2-2x^3-3x^4)/(1-8x^2+9x^4))` -/
def P2272892042758644701.Spec : Prop :=
  ∀ n, P2272892042758644701.a n = A297189 n

theorem P2272892042758644701.correct : P2272892042758644701.Spec := by
  intro n
  simp only [A297189]

end A297189

/-! ## A297189.P9136387190458998290

`8*a(n-2)-9*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=21`
-/

namespace A297189.P9136387190458998290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 6, 21] fun n a =>
  8 * a (n - 2) - 9 * a (n - 4)

end

end A297189.P9136387190458998290

namespace A297189

/-- `8*a(n-2)-9*a(n-4)` -/
def P9136387190458998290.Spec : Prop :=
  ∀ n, P9136387190458998290.a n = A297189 n

end A297189

/-! ## A297189.P5898341684967539662

`A051162(A127111(n))`
-/

namespace A297189.P5898341684967539662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (A127111 n).toNat

end

end A297189.P5898341684967539662

namespace A297189

/-- `A051162(A127111(n))` -/
def P5898341684967539662.Spec : Prop :=
  ∀ n, P5898341684967539662.a n = A297189 n

end A297189

/-!
# A297190: Numbers not in A072099.

The programs for A297190, there is no canonical definition to state claims against.
-/

/-! ## A297190.P13780766991916474428

`(n+2)*A072099(n+2)`
-/

namespace A297190.P13780766991916474428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A072099 (n + 2)

end

end A297190.P13780766991916474428

/-! ## A297190.P1149671837926036342

`(n+2)*A072649(A295857(n+2))`
-/

namespace A297190.P1149671837926036342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A072649 (A295857 (n + 2)).toNat

end

end A297190.P1149671837926036342

/-! ## A297190.P7777764850060090385

`lt[A330973(A260831(n+1)), 6]*A179239(n+2)`
-/

namespace A297190.P7777764850060090385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A260831 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) * A179239 (n + 2)

end

end A297190.P7777764850060090385

/-! ## A297190.P16743515815425059107

`comp[n²]*A070939(A007283(n))`
-/

namespace A297190.P16743515815425059107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A070939 (A007283 n).toNat

end

end A297190.P16743515815425059107

/-! ## A297190.P10442977468592874599

`comp[n²]*A007814(A000079(n+2))`
-/

namespace A297190.P10442977468592874599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A007814 (A000079 (n + 2)).toNat

end

end A297190.P10442977468592874599

/-!
# A297191: Irregular triangle read by rows formed by taking every other row of the Delannoy array (A008288) regarded as a triangle.

The programs for A297191, the canonical program `A297191.P975483691287345532` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297191 has offset 0).

The definition of A297191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5030 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297191.P975483691287345532

`A008288(A161983(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A297191

/-- `A008288(A161983(n))` -/
def P975483691287345532.Spec : Prop :=
  ∀ n, P975483691287345532.a n = A297191 n

theorem P975483691287345532.correct : P975483691287345532.Spec := by
  intro n
  simp only [A297191]

end A297191

/-! ## A297191.P10132302328484627544

`A008288(A007606(n+1)-1)`
-/

namespace A297191.P10132302328484627544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A007606 (n + 1) - 1).toNat

end

end A297191.P10132302328484627544

namespace A297191

/-- `A008288(A007606(n+1)-1)` -/
def P10132302328484627544.Spec : Prop :=
  ∀ n, P10132302328484627544.a n = A297191 n

theorem P10132302328484627544.correct : P10132302328484627544.Spec := by
  intro n
  simp only [A297191, Nat.add_sub_cancel, A297191.P10132302328484627544.a, A297191.P975483691287345532.a, A007606, A007606.P7799483194053309628.f1, A007606.P7799483194053309628.a, A008288, A008288.P3441482626856859975.a, A161983, A161983.P7486085872780093251.a, A381232, A381232.P8771641921475039308.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A297191

/-! ## A297191.P5238207700565829696

`A008288(eq[2, gcd(2, A003056(n))])`
-/

namespace A297191.P5238207700565829696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A003056 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A297191.P5238207700565829696

namespace A297191

/-- `A008288(eq[2, gcd(2, A003056(n))])` -/
def P5238207700565829696.Spec : Prop :=
  ∀ n, P5238207700565829696.a n = A297191 n

end A297191

/-! ## A297191.P15741249355870873770

`A008288(A116942(2*n))`
-/

namespace A297191.P15741249355870873770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A116942 (2 * n)).toNat

end

end A297191.P15741249355870873770

namespace A297191

/-- `A008288(A116942(2*n))` -/
def P15741249355870873770.Spec : Prop :=
  ∀ n, P15741249355870873770.a n = A297191 n

end A297191

/-! ## A297191.P17193120846148390075

`A008288(A316670(n+1))`
-/

namespace A297191.P17193120846148390075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A316670 (n + 1)).toNat

end

end A297191.P17193120846148390075

namespace A297191

/-- `A008288(A316670(n+1))` -/
def P17193120846148390075.Spec : Prop :=
  ∀ n, P17193120846148390075.a n = A297191 n

end A297191

/-! ## A297191.P15131882977416819685

`A140750(eq[3-a(n-1), A071028(n)]+1)` with `a(0)=1`
-/

namespace A297191.P15131882977416819685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A297191.P15131882977416819685

namespace A297191

/-- `A140750(eq[3-a(n-1), A071028(n)]+1)` -/
def P15131882977416819685.Spec : Prop :=
  ∀ n, P15131882977416819685.a n = A297191 n

end A297191

/-! ## A297191.P6541633285130691547

`A008288(lt[A008297(n+1), 0])`
-/

namespace A297191.P6541633285130691547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A297191.P6541633285130691547

namespace A297191

/-- `A008288(lt[A008297(n+1), 0])` -/
def P6541633285130691547.Spec : Prop :=
  ∀ n, P6541633285130691547.a n = A297191 n

end A297191

/-! ## A297191.P6154758612523435664

`A008288(A316965(n)+1)`
-/

namespace A297191.P6154758612523435664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A316965 n + 1).toNat

end

end A297191.P6154758612523435664

namespace A297191

/-- `A008288(A316965(n)+1)` -/
def P6154758612523435664.Spec : Prop :=
  ∀ n, P6154758612523435664.a n = A297191 n

end A297191

/-! ## A297191.P16799175025684496390

`A112475(A317303(n+1))`
-/

namespace A297191.P16799175025684496390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A317303 (n + 1)).toNat

end

end A297191.P16799175025684496390

namespace A297191

/-- `A112475(A317303(n+1))` -/
def P16799175025684496390.Spec : Prop :=
  ∀ n, P16799175025684496390.a n = A297191 n

end A297191

/-! ## A297191.P7802314833187707443

`A140750(A140750(n+1)²)*A140750(A337254(n+1))`
-/

namespace A297191.P7802314833187707443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140750 (A140750 (n + 1) ^ 2).toNat * A140750 (A337254 (n + 1)).toNat

end

end A297191.P7802314833187707443

namespace A297191

/-- `A140750(A140750(n+1)²)*A140750(A337254(n+1))` -/
def P7802314833187707443.Spec : Prop :=
  ∀ n, P7802314833187707443.a n = A297191 n

end A297191

/-!
# A297192: Left-hand half of triangle A297191.

The programs for A297192, the canonical program `A297192.P4818272099896905294` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A297192 has offset 0).

The definition of A297192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A297192.P4818272099896905294

`A297191(A063656(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A297192

/-- `A297191(A063656(n))` -/
def P4818272099896905294.Spec : Prop :=
  ∀ n, P4818272099896905294.a n = A297192 n

theorem P4818272099896905294.correct : P4818272099896905294.Spec := by
  intro n
  simp only [A297192]

end A297192

/-! ## A297192.P10323073421028587149

`A297191(2*n-A051162(n))`
-/

namespace A297192.P10323073421028587149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 ((2 * n : ℤ) - A051162 n).toNat

end

end A297192.P10323073421028587149

namespace A297192

/-- `A297191(2*n-A051162(n))` -/
def P10323073421028587149.Spec : Prop :=
  ∀ n, P10323073421028587149.a n = A297192 n

end A297192

/-! ## A297192.P18415309565143910287

`A297191(n-A051162(n)+n)`
-/

namespace A297192.P18415309565143910287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 ((n : ℤ) - A051162 n + (n : ℤ)).toNat

end

end A297192.P18415309565143910287

namespace A297192

/-- `A297191(n-A051162(n)+n)` -/
def P18415309565143910287.Spec : Prop :=
  ∀ n, P18415309565143910287.a n = A297192 n

end A297192

/-! ## A297192.P138105951383427783

`A297191(n-(A051162(n)-n))`
-/

namespace A297192.P138105951383427783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 ((n : ℤ) - (A051162 n - (n : ℤ))).toNat

end

end A297192.P138105951383427783

namespace A297192

/-- `A297191(n-(A051162(n)-n))` -/
def P138105951383427783.Spec : Prop :=
  ∀ n, P138105951383427783.a n = A297192 n

end A297192

/-! ## A297192.P18034462303238211469

`A297191(A001614(n+1)-A002260(n+1))`
-/

namespace A297192.P18034462303238211469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A001614 (n + 1) - A002260 (n + 1)).toNat

end

end A297192.P18034462303238211469

namespace A297192

/-- `A297191(A001614(n+1)-A002260(n+1))` -/
def P18034462303238211469.Spec : Prop :=
  ∀ n, P18034462303238211469.a n = A297192 n

end A297192

/-! ## A297192.P16736328092540746447

`A297191(A002024(n+1)²-A002260(n+1))`
-/

namespace A297192.P16736328092540746447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (A002024 (n + 1) ^ 2 - A002260 (n + 1)).toNat

end

end A297192.P16736328092540746447

namespace A297192

/-- `A297191(A002024(n+1)²-A002260(n+1))` -/
def P16736328092540746447.Spec : Prop :=
  ∀ n, P16736328092540746447.a n = A297192 n

end A297192

/-! ## A297192.P13172838004402933226

`A008288(A292564(n))`
-/

namespace A297192.P13172838004402933226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A292564 n).toNat

end

end A297192.P13172838004402933226

namespace A297192

/-- `A008288(A292564(n))` -/
def P13172838004402933226.Spec : Prop :=
  ∀ n, P13172838004402933226.a n = A297192 n

end A297192

/-! ## A297192.P12837259948126837496

`A008288(A185868(n+1)-A002260(n+1))`
-/

namespace A297192.P12837259948126837496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (A185868 (n + 1) - A002260 (n + 1)).toNat

end

end A297192.P12837259948126837496

namespace A297192

/-- `A008288(A185868(n+1)-A002260(n+1))` -/
def P12837259948126837496.Spec : Prop :=
  ∀ n, P12837259948126837496.a n = A297192 n

end A297192

/-! ## A297192.P2713183323006945404

`A112475(A341706(n+1))`
-/

namespace A297192.P2713183323006945404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112475 (A341706 (n + 1)).toNat

end

end A297192.P2713183323006945404

namespace A297192

/-- `A112475(A341706(n+1))` -/
def P2713183323006945404.Spec : Prop :=
  ∀ n, P2713183323006945404.a n = A297192 n

end A297192

/-!
# A297193: Irregular triangle read by rows: rows are partial alternating sums of rows of A297191.

The programs for A297193, there is no canonical definition to state claims against.
-/

/-! ## A297193.P990895541630149798

`A343152(A272867(n))`
-/

namespace A297193.P990895541630149798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343152 (A272867 n).toNat

end

end A297193.P990895541630149798

/-!
# A297194: Left-hand half of triangle A297193.

The programs for A297194, there is no canonical definition to state claims against.
-/

/-! ## A297194.P1615640667841904582

`A297193(A063656(gcd(n, A010816(n))))`
-/

namespace A297194.P1615640667841904582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297193 (A063656 (Int.gcd (n : ℤ) (A010816 n))).toNat

end

end A297194.P1615640667841904582

/-! ## A297194.P9132547320349845464

`A297193(A063656(n))`
-/

namespace A297194.P9132547320349845464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297193 (A063656 n).toNat

end

end A297194.P9132547320349845464

/-! ## A297194.P18380841236390502828

`A297193(eq[0, A023969(n)])`
-/

namespace A297194.P18380841236390502828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297194.P18380841236390502828

/-! ## A297194.P2381702424212163633

`A297193(lt[0, A267708(n)])`
-/

namespace A297194.P2381702424212163633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A297194.P2381702424212163633

/-! ## A297194.P1444929291602742364

`A297193(eq[1, A267708(n)])`
-/

namespace A297194.P1444929291602742364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297193 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A297194.P1444929291602742364

/-!
# A297195: Number of bitriangular permutations (row sums of A272644 if that triangle is prefixed with two rows for n=0,1).

The programs for A297195, there is no canonical definition to state claims against.
-/

/-! ## A297195.P578650170056129150

`A180121(A086880(n))`
-/

namespace A297195.P578650170056129150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180121 (A086880 n).toNat

end

end A297195.P578650170056129150

/-! ## A297195.P2156435404318359852

`A375496(A002890(n))`
-/

namespace A297195.P2156435404318359852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (A002890 n).toNat

end

end A297195.P2156435404318359852

/-! ## A297195.P5830214163405313018

`A035942(A169677(n+1))`
-/

namespace A297195.P5830214163405313018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035942 (A169677 (n + 1)).toNat

end

end A297195.P5830214163405313018

/-!
# A297196: Number of label-increasing forests with branching bounded by 3.

The programs for A297196, there is no canonical definition to state claims against.
-/

/-! ## A297196.P15470871997171475441

`A195177(A213094(n)+1+n)`
-/

namespace A297196.P15470871997171475441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A213094 n + 1 + (n : ℤ)).toNat

end

end A297196.P15470871997171475441

/-! ## A297196.P6918748717058804525

`A195177(A213094(n)+A036467(n))`
-/

namespace A297196.P6918748717058804525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A213094 n + A036467 n).toNat

end

end A297196.P6918748717058804525

/-! ## A297196.P2249001145060865501

`A195177(A326178(A213094(n)+n))`
-/

namespace A297196.P2249001145060865501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A326178 (A213094 n + (n : ℤ)).toNat).toNat

end

end A297196.P2249001145060865501

/-! ## A297196.P3107458462749972681

`A289496(A355536(n+4)+A261052(n))`
-/

namespace A297196.P3107458462749972681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289496 (A355536 (n + 4) + A261052 n).toNat

end

end A297196.P3107458462749972681

/-!
# A297197: Related to label-increasing forests with branching bounded by 3.

The programs for A297197, there is no canonical definition to state claims against.
-/

/-! ## A297197.P12891488125861688614

`∑[A220658(∑[A162326(n)])]`
-/

namespace A297197.P12891488125861688614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297197.P12891488125861688614

/-! ## A297197.P10832525785401512348

`A219665(n+1)+A185715(A303563(n))`
-/

namespace A297197.P10832525785401512348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (n + 1) + A185715 (A303563 n).toNat

end

end A297197.P10832525785401512348

/-!
# A297198: Related to label-increasing forests with branching bounded by 3.

The programs for A297198, there is no canonical definition to state claims against.
-/

/-! ## A297198.P13403375270068636138

`A061091(3*n*a(n-1))` with `a(0)=1`
-/

namespace A297198.P13403375270068636138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061091 (3 * ((n : ℤ) * a (n - 1))).toNat

end

end A297198.P13403375270068636138

/-! ## A297198.P16857658605652660753

`∑[A000120(a(n-1)²+1)+n*a(n-1)]` with `a(0)=1`
-/

namespace A297198.P16857658605652660753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000120 (f1 (n - 1) ^ 2 + 1).toNat + (n : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A297198.P16857658605652660753

/-!
# A297199: a(n) = number of partitions of n into consecutive positive cubes.

The programs for A297199, there is no canonical definition to state claims against.
-/

/-! ## A297199.P14191934031850757179

`and(A136622(A136623(n+1)), A279329(n+1))`
-/

namespace A297199.P14191934031850757179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A136622 (A136623 (n + 1)).toNat) (A279329 (n + 1))

end

end A297199.P14191934031850757179

/-! ## A297199.P5494450317549826889

`val(A138880(n+2), A138880(A360458(n+1)))`
-/

namespace A297199.P5494450317549826889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A138880 (n + 2)).toNat (A138880 (A360458 (n + 1)).toNat).toNat

end

end A297199.P5494450317549826889

/-! ## A297199.P2044711231552271291

`A096270(A281669(n+1)*A327884(n))`
-/

namespace A297199.P2044711231552271291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A281669 (n + 1) * A327884 n).toNat

end

end A297199.P2044711231552271291

/-! ## A297199.P12071625162897058102

`A096270(A327884(n)*A331845(n+1))`
-/

namespace A297199.P12071625162897058102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A327884 n * A331845 (n + 1)).toNat

end

end A297199.P12071625162897058102

/-! ## A297199.P404724457252516332

`A139351(A281669(n+1)^A049687(n))`
-/

namespace A297199.P404724457252516332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A281669 (n + 1) : ℚ) ^ (A049687 n : ℤ))).toNat

end

end A297199.P404724457252516332

/-! ## A297199.P3214521625476611934

`A139351(A281669(n+1)^A072405(n))`
-/

namespace A297199.P3214521625476611934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A281669 (n + 1) : ℚ) ^ (A072405 n : ℤ))).toNat

end

end A297199.P3214521625476611934

/-! ## A297199.P4789617649551710836

`A139351(A331845(n+1)^A049687(n))`
-/

namespace A297199.P4789617649551710836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A331845 (n + 1) : ℚ) ^ (A049687 n : ℤ))).toNat

end

end A297199.P4789617649551710836

/-! ## A297199.P16275396553785651605

`A139351(A331845(n+1)^A072405(n))`
-/

namespace A297199.P16275396553785651605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (SequenceMachineLib.roundAway ((A331845 (n + 1) : ℚ) ^ (A072405 n : ℤ))).toNat

end

end A297199.P16275396553785651605

/-! ## A297199.P14515179609011487367

`A096270(lcm(A281669(n+1), A327884(n)))`
-/

namespace A297199.P14515179609011487367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (Int.lcm (A281669 (n + 1)) (A327884 n))

end

end A297199.P14515179609011487367

/-! ## A297199.P1727189714974991456

`A279329(and(A279329(n), A320390(n+1))+n+1)`
-/

namespace A297199.P1727189714974991456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279329 (Int.land (A279329 n) (A320390 (n + 1)) + (n + 1 : ℤ)).toNat

end

end A297199.P1727189714974991456

