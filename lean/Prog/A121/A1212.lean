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
import Seq.B000.C031
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A121200: a(n) = 2*n + 7^n + 5^n.

The programs for A121200, the canonical program `A121200.P3738993836091328120` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121200 has offset 0).

The definition of A121200 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+7^n+5^n` (program `A121200.P3738993836091328120`, by `A121200.P3738993836091328120.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121200.P3738993836091328120

`2*n+7^n+5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121200

/-- `2*n+7^n+5^n` -/
def P3738993836091328120.Spec : Prop :=
  ∀ n, (P3738993836091328120.a n : ℤ) = A121200 n

theorem P3738993836091328120.correct : P3738993836091328120.Spec := by
  intro n
  simp only [A121200]

end A121200

/-! ## A121200.P6066102770712607694

`2*(A081188(n)+n)`
-/

namespace A121200.P6066102770712607694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081188 n + (n : ℤ))

end

end A121200.P6066102770712607694

namespace A121200

/-- `2*(A081188(n)+n)` -/
def P6066102770712607694.Spec : Prop :=
  ∀ n, P6066102770712607694.a n = A121200 n

end A121200

/-! ## A121200.P9268671152155951914

`2*(A104745(n)+A081200(n))`
-/

namespace A121200.P9268671152155951914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A104745 n + A081200 n)

end

end A121200.P9268671152155951914

namespace A121200

/-- `2*(A104745(n)+A081200(n))` -/
def P9268671152155951914.Spec : Prop :=
  ∀ n, P9268671152155951914.a n = A121200 n

end A121200

/-! ## A121200.P13421728263322781724

`xor(1, A176972(n)+A107585(n))`
-/

namespace A121200.P13421728263322781724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A176972 n + A107585 n)

end

end A121200.P13421728263322781724

namespace A121200

/-- `xor(1, A176972(n)+A107585(n))` -/
def P13421728263322781724.Spec : Prop :=
  ∀ n, P13421728263322781724.a n = A121200 n

end A121200

/-! ## A121200.P7640300709578361853

`(A226199(n)+A104745(n))/2*A133265(2*n)`
-/

namespace A121200.P7640300709578361853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226199 n + A104745 n : ℚ) / 2 * (A133265 (2 * n) : ℚ)

end

end A121200.P7640300709578361853

namespace A121200

/-- `(A226199(n)+A104745(n))/2*A133265(2*n)` -/
def P7640300709578361853.Spec : Prop :=
  ∀ n, P7640300709578361853.a n = (A121200 n : ℚ)

end A121200

/-! ## A121200.P5342766477557253717

`(A226199(n)+A104745(n))/2*A020639(A020739(n))`
-/

namespace A121200.P5342766477557253717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226199 n + A104745 n : ℚ) / 2 * (A020639 (A020739 n).toNat : ℚ)

end

end A121200.P5342766477557253717

namespace A121200

/-- `(A226199(n)+A104745(n))/2*A020639(A020739(n))` -/
def P5342766477557253717.Spec : Prop :=
  ∀ n, P5342766477557253717.a n = (A121200 n : ℚ)

end A121200

/-!
# A121201: a(n) = 7^n+5^n-2n.

The programs for A121201, the canonical program `A121201.P2699179684705439182` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121201 has offset 0).

The definition of A121201 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+5^n-2*n` (program `A121201.P2699179684705439182`, by `A121201.P2699179684705439182.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121201.P2699179684705439182

`7^n+5^n-2*n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121201

/-- `7^n+5^n-2*n` -/
def P2699179684705439182.Spec : Prop :=
  ∀ n, P2699179684705439182.a n = A121201 n

theorem P2699179684705439182.correct : P2699179684705439182.Spec := by
  intro n
  simp only [A121201]

end A121201

/-! ## A121201.P14703024571686966402

`2*(A081188(n)-n)`
-/

namespace A121201.P14703024571686966402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081188 n - (n : ℤ))

end

end A121201.P14703024571686966402

namespace A121201

/-- `2*(A081188(n)-n)` -/
def P14703024571686966402.Spec : Prop :=
  ∀ n, P14703024571686966402.a n = A121201 n

end A121201

/-! ## A121201.P1088936701813715783

`abs(2*n-A074616(n))`
-/

namespace A121201.P1088936701813715783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A074616 n|

end

end A121201.P1088936701813715783

namespace A121201

/-- `abs(2*n-A074616(n))` -/
def P1088936701813715783.Spec : Prop :=
  ∀ n, P1088936701813715783.a n = A121201 n

end A121201

/-! ## A121201.P8798902709203795663

`lcm(2, (A024076(n)+A024050(n))/2)`
-/

namespace A121201.P8798902709203795663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((A024076 n + A024050 n : ℚ) / 2))

end

end A121201.P8798902709203795663

namespace A121201

/-- `lcm(2, (A024076(n)+A024050(n))/2)` -/
def P8798902709203795663.Spec : Prop :=
  ∀ n, (P8798902709203795663.a n : ℤ) = A121201 n

end A121201

/-! ## A121201.P13328707872625663048

`gcd(2*n-A074616(n), A000038(n))`
-/

namespace A121201.P13328707872625663048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n : ℤ) - A074616 n) (A000038 n)

end

end A121201.P13328707872625663048

namespace A121201

/-- `gcd(2*n-A074616(n), A000038(n))` -/
def P13328707872625663048.Spec : Prop :=
  ∀ n, (P13328707872625663048.a n : ℤ) = A121201 n

end A121201

/-! ## A121201.P15495603191544463811

`(A024076(n)+A024050(n))/2*A020639(2*(n+1))`
-/

namespace A121201.P15495603191544463811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024076 n + A024050 n : ℚ) / 2 * (A020639 (2 * (n + 1)) : ℚ)

end

end A121201.P15495603191544463811

namespace A121201

/-- `(A024076(n)+A024050(n))/2*A020639(2*(n+1))` -/
def P15495603191544463811.Spec : Prop :=
  ∀ n, P15495603191544463811.a n = (A121201 n : ℚ)

end A121201

/-! ## A121201.P18286038539164074726

`(A024076(n)+A024050(n))/2*A001316(A001316(n))`
-/

namespace A121201.P18286038539164074726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024076 n + A024050 n : ℚ) / 2 * (A001316 (A001316 n).toNat : ℚ)

end

end A121201.P18286038539164074726

namespace A121201

/-- `(A024076(n)+A024050(n))/2*A001316(A001316(n))` -/
def P18286038539164074726.Spec : Prop :=
  ∀ n, P18286038539164074726.a n = (A121201 n : ℚ)

end A121201

/-! ## A121201.P5003710621630874957

`(A024076(n)+A024050(n))/2*A240554(∑[n+2])`
-/

namespace A121201.P5003710621630874957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024076 n + A024050 n : ℚ) / 2 * (A240554 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A121201.P5003710621630874957

namespace A121201

/-- `(A024076(n)+A024050(n))/2*A240554(∑[n+2])` -/
def P5003710621630874957.Spec : Prop :=
  ∀ n, P5003710621630874957.a n = (A121201 n : ℚ)

end A121201

/-!
# A121202: a(n) = 12*n + 7^n - 5^n.

The programs for A121202, the canonical program `A121202.P17255747412819128300` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121202 has offset 0).

The definition of A121202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*n+7^n-5^n` (program `A121202.P17255747412819128300`, by `A121202.P17255747412819128300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121202.P12193148674715432450

`7^n-5^n+12*n`
-/

namespace A121202.P12193148674715432450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) - (5 ^ n : ℤ) + (12 * n : ℤ)

end

end A121202.P12193148674715432450

namespace A121202

/-- `7^n-5^n+12*n` -/
def P12193148674715432450.Spec : Prop :=
  ∀ n, P12193148674715432450.a n = A121202 n

theorem P12193148674715432450.correct : P12193148674715432450.Spec := by
  intro n
  simp only [A121202, Nat.add_sub_cancel, A121202.P12193148674715432450.a, A121202.P17255747412819128300.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A121202

/-! ## A121202.P17255747412819128300

`12*n+7^n-5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121202

/-- `12*n+7^n-5^n` -/
def P17255747412819128300.Spec : Prop :=
  ∀ n, P17255747412819128300.a n = A121202 n

theorem P17255747412819128300.correct : P17255747412819128300.Spec := by
  intro n
  simp only [A121202]

end A121202

/-! ## A121202.P7001903339301213032

`abs(A107585(n)-A221909(n))`
-/

namespace A121202.P7001903339301213032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107585 n - A221909 n|

end

end A121202.P7001903339301213032

namespace A121202

/-- `abs(A107585(n)-A221909(n))` -/
def P7001903339301213032.Spec : Prop :=
  ∀ n, P7001903339301213032.a n = A121202 n

end A121202

/-! ## A121202.P46578770670883624

`xor(1, A176972(n)-A107585(n))`
-/

namespace A121202.P46578770670883624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A176972 n - A107585 n)

end

end A121202.P46578770670883624

namespace A121202

/-- `xor(1, A176972(n)-A107585(n))` -/
def P46578770670883624.Spec : Prop :=
  ∀ n, P46578770670883624.a n = A121202 n

end A121202

/-! ## A121202.P10703148423159761141

`(A107585(n)-A221909(n))*A057428(n)`
-/

namespace A121202.P10703148423159761141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A107585 n - A221909 n) * A057428 n

end

end A121202.P10703148423159761141

namespace A121202

/-- `(A107585(n)-A221909(n))*A057428(n)` -/
def P10703148423159761141.Spec : Prop :=
  ∀ n, P10703148423159761141.a n = A121202 n

end A121202

/-!
# A121203: a(n) = 2n+7^n-5^n.

The programs for A121203, the canonical program `A121203.P12453466661429367012` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121203 has offset 0).

The definition of A121203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n+7^n-5^n` (program `A121203.P12453466661429367012`, by `A121203.P12453466661429367012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121203.P12453466661429367012

`2*n+7^n-5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121203

/-- `2*n+7^n-5^n` -/
def P12453466661429367012.Spec : Prop :=
  ∀ n, P12453466661429367012.a n = A121203 n

theorem P12453466661429367012.correct : P12453466661429367012.Spec := by
  intro n
  simp only [A121203]

end A121203

/-! ## A121203.P10354847329417406750

`2*(A081200(n)+n)`
-/

namespace A121203.P10354847329417406750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081200 n + (n : ℤ))

end

end A121203.P10354847329417406750

namespace A121203

/-- `2*(A081200(n)+n)` -/
def P10354847329417406750.Spec : Prop :=
  ∀ n, P10354847329417406750.a n = A121203 n

end A121203

/-! ## A121203.P347337459572895429

`abs(A008592(n)-A121202(n))`
-/

namespace A121203.P347337459572895429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A121202 n|

end

end A121203.P347337459572895429

namespace A121203

/-- `abs(A008592(n)-A121202(n))` -/
def P347337459572895429.Spec : Prop :=
  ∀ n, P347337459572895429.a n = A121203 n

end A121203

/-! ## A121203.P12047031856015761475

`abs(A024050(n)-A226199(n))`
-/

namespace A121203.P12047031856015761475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024050 n - A226199 n|

end

end A121203.P12047031856015761475

namespace A121203

/-- `abs(A024050(n)-A226199(n))` -/
def P12047031856015761475.Spec : Prop :=
  ∀ n, P12047031856015761475.a n = A121203 n

end A121203

/-! ## A121203.P4145323408332135792

`abs(A221907(n)-A221909(n))`
-/

namespace A121203.P4145323408332135792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A221907 n - A221909 n|

end

end A121203.P4145323408332135792

namespace A121203

/-- `abs(A221907(n)-A221909(n))` -/
def P4145323408332135792.Spec : Prop :=
  ∀ n, P4145323408332135792.a n = A121203 n

end A121203

/-! ## A121203.P5930069247276934851

`(A121213(n)+2*n)%A121200(n)`
-/

namespace A121203.P5930069247276934851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121213 n + (2 * n : ℤ)) (A121200 n)

end

end A121203.P5930069247276934851

namespace A121203

/-- `(A121213(n)+2*n)%A121200(n)` -/
def P5930069247276934851.Spec : Prop :=
  ∀ n, P5930069247276934851.a n = A121203 n

end A121203

/-! ## A121203.P1087454555617970058

`lcm(2, 2*n-(A000351(n)-A000420(n)))`
-/

namespace A121203.P1087454555617970058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 * n : ℤ) - (A000351 n - A000420 n))

end

end A121203.P1087454555617970058

namespace A121203

/-- `lcm(2, 2*n-(A000351(n)-A000420(n)))` -/
def P1087454555617970058.Spec : Prop :=
  ∀ n, (P1087454555617970058.a n : ℤ) = A121203 n

end A121203

/-! ## A121203.P3685625669068759411

`(2*A221909(n))%A121199(n)`
-/

namespace A121203.P3685625669068759411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A221909 n) (A121199 n)

end

end A121203.P3685625669068759411

namespace A121203

/-- `(2*A221909(n))%A121199(n)` -/
def P3685625669068759411.Spec : Prop :=
  ∀ n, P3685625669068759411.a n = A121203 n

end A121203

/-! ## A121203.P7139344423584033043

`(A155640(n)+A004273(n))%A155625(n)`
-/

namespace A121203.P7139344423584033043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155640 n + A004273 n) (A155625 n)

end

end A121203.P7139344423584033043

namespace A121203

/-- `(A155640(n)+A004273(n))%A155625(n)` -/
def P7139344423584033043.Spec : Prop :=
  ∀ n, P7139344423584033043.a n = A121203 n

end A121203

/-!
# A121204: a(n) = -2*n + 7^n - 5^n.

The programs for A121204, the canonical program `A121204.P1203383832111083492` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121204 has offset 0).

The definition of A121204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-2*n+7^n-5^n` (program `A121204.P1203383832111083492`, by `A121204.P1203383832111083492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121204.P1203383832111083492

`-2*n+7^n-5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121204

/-- `-2*n+7^n-5^n` -/
def P1203383832111083492.Spec : Prop :=
  ∀ n, P1203383832111083492.a n = A121204 n

theorem P1203383832111083492.correct : P1203383832111083492.Spec := by
  intro n
  simp only [A121204]

end A121204

/-! ## A121204.P18199379937333842037

`2*(A081200(n)-n)`
-/

namespace A121204.P18199379937333842037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081200 n - (n : ℤ))

end

end A121204.P18199379937333842037

namespace A121204

/-- `2*(A081200(n)-n)` -/
def P18199379937333842037.Spec : Prop :=
  ∀ n, P18199379937333842037.a n = A121204 n

end A121204

/-! ## A121204.P15085710833600843070

`abs(2*n-A121213(n))`
-/

namespace A121204.P15085710833600843070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A121213 n|

end

end A121204.P15085710833600843070

namespace A121204

/-- `abs(2*n-A121213(n))` -/
def P15085710833600843070.Spec : Prop :=
  ∀ n, P15085710833600843070.a n = A121204 n

end A121204

/-! ## A121204.P5979324044983942185

`abs(4*n-A121203(n))`
-/

namespace A121204.P5979324044983942185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 * n : ℤ) - A121203 n|

end

end A121204.P5979324044983942185

namespace A121204

/-- `abs(4*n-A121203(n))` -/
def P5979324044983942185.Spec : Prop :=
  ∀ n, P5979324044983942185.a n = A121204 n

end A121204

/-! ## A121204.P13976626638861090774

`abs(2*n+1-A155640(n))`
-/

namespace A121204.P13976626638861090774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) - A155640 n|

end

end A121204.P13976626638861090774

namespace A121204

/-- `abs(2*n+1-A155640(n))` -/
def P13976626638861090774.Spec : Prop :=
  ∀ n, P13976626638861090774.a n = A121204 n

end A121204

/-!
# A121205: "666" in bases 7 and higher rewritten in base 10.

The programs for A121205, the canonical program `A121205.P10727869559218402705` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121205 has offset 7).

The definition of A121205 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121205.P10727869559218402705

`a(n-1)+12*(n+7)` with `a(0)=342`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121205

/-- `a(n-1)+12*(n+7)` -/
def P10727869559218402705.Spec : Prop :=
  ∀ n, (P10727869559218402705.a n : ℤ) = A121205 (n + 7)

theorem P10727869559218402705.correct : P10727869559218402705.Spec := by
  intro n
  simp only [A121205, Nat.add_sub_cancel]

end A121205

/-! ## A121205.P5961318330465767769

`6*((n+7)²+n+7+1)`
-/

namespace A121205.P5961318330465767769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * ((n + 7) ^ 2 + (n + 7) + 1)

end

end A121205.P5961318330465767769

namespace A121205

/-- `6*((n+7)²+n+7+1)` -/
def P5961318330465767769.Spec : Prop :=
  ∀ n, (P5961318330465767769.a n : ℤ) = A121205 (n + 7)

theorem P5961318330465767769.correct : P5961318330465767769.Spec := by
  intro n
  induction n with
  | zero => simp [A121205, A121205.P5961318330465767769.a, A121205.P10727869559218402705.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A121205, Nat.add_sub_cancel, A121205.P5961318330465767769.a, A121205.P10727869559218402705.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A121205

/-! ## A121205.P3271067835645300710

`floor(6/Δ[atan(n+7)])`
-/

namespace A121205.P3271067835645300710
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 7 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / (f1 (n + 1) - f1 n)⌋

end

end A121205.P3271067835645300710

namespace A121205

/-- `floor(6/Δ[atan(n+7)])` -/
def P3271067835645300710.Spec : Prop :=
  ∀ n, P3271067835645300710.a n = A121205 (n + 7)

end A121205

/-! ## A121205.P6852638639278804549

`round(6/Δ[atan(n+7)])`
-/

namespace A121205.P6852638639278804549
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 7 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (6 / (f1 (n + 1) - f1 n))

end

end A121205.P6852638639278804549

namespace A121205

/-- `round(6/Δ[atan(n+7)])` -/
def P6852638639278804549.Spec : Prop :=
  ∀ n, P6852638639278804549.a n = A121205 (n + 7)

end A121205

/-! ## A121205.P15546480593491056749

`ceil(6/Δ[atan(n+7)])-1`
-/

namespace A121205.P15546480593491056749
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 7 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈6 / (f1 (n + 1) - f1 n)⌉ - 1

end

end A121205.P15546480593491056749

namespace A121205

/-- `ceil(6/Δ[atan(n+7)])-1` -/
def P15546480593491056749.Spec : Prop :=
  ∀ n, P15546480593491056749.a n = A121205 (n + 7)

end A121205

/-! ## A121205.P2493380790691633061

`xor(1, ceil(6/Δ[atan(n+7)]))`
-/

namespace A121205.P2493380790691633061
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n + 7 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈6 / (f1 (n + 1) - f1 n)⌉

end

end A121205.P2493380790691633061

namespace A121205

/-- `xor(1, ceil(6/Δ[atan(n+7)]))` -/
def P2493380790691633061.Spec : Prop :=
  ∀ n, P2493380790691633061.a n = A121205 (n + 7)

end A121205

/-! ## A121205.P7211690996481317457

`Δ[3*A202440(n+3)]`
-/

namespace A121205.P7211690996481317457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A202440 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121205.P7211690996481317457

namespace A121205

/-- `Δ[3*A202440(n+3)]` -/
def P7211690996481317457.Spec : Prop :=
  ∀ n, P7211690996481317457.a n = A121205 (n + 7)

end A121205

/-! ## A121205.P2976995096164828475

`A004277(A003215(n+7))+4`
-/

namespace A121205.P2976995096164828475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003215 (n + 7)).toNat + 4

end

end A121205.P2976995096164828475

namespace A121205

/-- `A004277(A003215(n+7))+4` -/
def P2976995096164828475.Spec : Prop :=
  ∀ n, P2976995096164828475.a n = A121205 (n + 7)

end A121205

/-!
# A121206: a(n) = (2n)! mod n(2n+1).

The programs for A121206, the canonical program `A121206.P857648089124675638` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121206 has offset 1).

The definition of A121206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121206.P857648089124675638

`C(∏{p}[2*(n+1)+1, #-1], 2*n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121206

/-- `C(∏{p}[2*(n+1)+1, #-1], 2*n+1)` -/
def P857648089124675638.Spec : Prop :=
  ∀ n, (P857648089124675638.a n : ℤ) = A121206 (n + 1)

theorem P857648089124675638.correct : P857648089124675638.Spec := by
  intro n
  simp only [A121206, Nat.add_sub_cancel]

end A121206

/-! ## A121206.P14828278907646778866

`∏{p}[2*n+3, C(#, #%(n+1))]+or(1, -n)%2`
-/

namespace A121206.P14828278907646778866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p (p % (n + 1)) : ℕ) : ℤ) + Int.tmod (Int.lor 1 (-(n : ℤ))) 2

end

end A121206.P14828278907646778866

namespace A121206

/-- `∏{p}[2*n+3, C(#, #%(n+1))]+or(1, -n)%2` -/
def P14828278907646778866.Spec : Prop :=
  ∀ n, P14828278907646778866.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P4886862606319499649

`A369033(2*n+3)-1`
-/

namespace A121206.P4886862606319499649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369033 (2 * n + 3) - 1

end

end A121206.P4886862606319499649

namespace A121206

/-- `A369033(2*n+3)-1` -/
def P4886862606319499649.Spec : Prop :=
  ∀ n, P4886862606319499649.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P4361149557253946791

`2*(n+1)*A101264(n+1)`
-/

namespace A121206.P4361149557253946791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A101264 (n + 1))

end

end A121206.P4361149557253946791

namespace A121206

/-- `2*(n+1)*A101264(n+1)` -/
def P4361149557253946791.Spec : Prop :=
  ∀ n, P4361149557253946791.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P5026924067774095718

`C(A037225(n+1), 2*n+1)`
-/

namespace A121206.P5026924067774095718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A037225 (n + 1)).toNat (2 * n + 1)

end

end A121206.P5026924067774095718

namespace A121206

/-- `C(A037225(n+1), 2*n+1)` -/
def P5026924067774095718.Spec : Prop :=
  ∀ n, (P5026924067774095718.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P18204199032538375203

`C(A060684(n+1), 2*n+1)`
-/

namespace A121206.P18204199032538375203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A060684 (n + 1)).toNat (2 * n + 1)

end

end A121206.P18204199032538375203

namespace A121206

/-- `C(A060684(n+1), 2*n+1)` -/
def P18204199032538375203.Spec : Prop :=
  ∀ n, (P18204199032538375203.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P17355560231587550874

`C(A060685(n+1), 2*n+1)`
-/

namespace A121206.P17355560231587550874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A060685 (n + 1)).toNat (2 * n + 1)

end

end A121206.P17355560231587550874

namespace A121206

/-- `C(A060685(n+1), 2*n+1)` -/
def P17355560231587550874.Spec : Prop :=
  ∀ n, (P17355560231587550874.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P9341199229818317329

`C(A071294(n+1), 2*n+1)`
-/

namespace A121206.P9341199229818317329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071294 (n + 1)).toNat (2 * n + 1)

end

end A121206.P9341199229818317329

namespace A121206

/-- `C(A071294(n+1), 2*n+1)` -/
def P9341199229818317329.Spec : Prop :=
  ∀ n, (P9341199229818317329.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P1125544665177589351

`C(A329726(n+1), 2*n+1)`
-/

namespace A121206.P1125544665177589351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A329726 (n + 1)).toNat (2 * n + 1)

end

end A121206.P1125544665177589351

namespace A121206

/-- `C(A329726(n+1), 2*n+1)` -/
def P1125544665177589351.Spec : Prop :=
  ∀ n, (P1125544665177589351.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P10843656657335079776

`A145737(n+1)-A158388(n)`
-/

namespace A121206.P10843656657335079776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145737 (n + 1) - A158388 n

end

end A121206.P10843656657335079776

namespace A121206

/-- `A145737(n+1)-A158388(n)` -/
def P10843656657335079776.Spec : Prop :=
  ∀ n, P10843656657335079776.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P11782321327466901273

`Δ[A101301(A000720(2*(n+1)))]`
-/

namespace A121206.P11782321327466901273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101301 (A000720 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121206.P11782321327466901273

namespace A121206

/-- `Δ[A101301(A000720(2*(n+1)))]` -/
def P11782321327466901273.Spec : Prop :=
  ∀ n, P11782321327466901273.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P12128483764570588136

`A153881(n+1)+A145737(n+1)`
-/

namespace A121206.P12128483764570588136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) + A145737 (n + 1)

end

end A121206.P12128483764570588136

namespace A121206

/-- `A153881(n+1)+A145737(n+1)` -/
def P12128483764570588136.Spec : Prop :=
  ∀ n, P12128483764570588136.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P11869278580094012441

`A005843(n+1)*A101264(n+1)`
-/

namespace A121206.P11869278580094012441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) * A101264 (n + 1)

end

end A121206.P11869278580094012441

namespace A121206

/-- `A005843(n+1)*A101264(n+1)` -/
def P11869278580094012441.Spec : Prop :=
  ∀ n, P11869278580094012441.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P3099413112857086961

`lcm(A060684(n+1), A156707(n+1))`
-/

namespace A121206.P3099413112857086961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060684 (n + 1)) (A156707 (n + 1))

end

end A121206.P3099413112857086961

namespace A121206

/-- `lcm(A060684(n+1), A156707(n+1))` -/
def P3099413112857086961.Spec : Prop :=
  ∀ n, (P3099413112857086961.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P9986104464407125849

`C(A057063(n+2), 2*n+1)`
-/

namespace A121206.P9986104464407125849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057063 (n + 2)).toNat (2 * n + 1)

end

end A121206.P9986104464407125849

namespace A121206

/-- `C(A057063(n+2), 2*n+1)` -/
def P9986104464407125849.Spec : Prop :=
  ∀ n, (P9986104464407125849.a n : ℤ) = A121206 (n + 1)

end A121206

/-! ## A121206.P5680636592539098209

`A085090(n+2)-A101264(n+1)`
-/

namespace A121206.P5680636592539098209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 2) - A101264 (n + 1)

end

end A121206.P5680636592539098209

namespace A121206

/-- `A085090(n+2)-A101264(n+1)` -/
def P5680636592539098209.Spec : Prop :=
  ∀ n, P5680636592539098209.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P2097026867819565700

`A063524(n+1)+A085090(n+2)-A101808(n+1)`
-/

namespace A121206.P2097026867819565700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 1) + (A085090 (n + 2) - A101808 (n + 1))

end

end A121206.P2097026867819565700

namespace A121206

/-- `A063524(n+1)+A085090(n+2)-A101808(n+1)` -/
def P2097026867819565700.Spec : Prop :=
  ∀ n, P2097026867819565700.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P4161891048317760835

`A305818(n+1)+A085090(n+2)-A086668(n+1)`
-/

namespace A121206.P4161891048317760835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + (A085090 (n + 2) - A086668 (n + 1))

end

end A121206.P4161891048317760835

namespace A121206

/-- `A305818(n+1)+A085090(n+2)-A086668(n+1)` -/
def P4161891048317760835.Spec : Prop :=
  ∀ n, P4161891048317760835.a n = A121206 (n + 1)

end A121206

/-! ## A121206.P1244282240819507065

`A099802(n+1)+A085090(n+2)-A099802(n+2)`
-/

namespace A121206.P1244282240819507065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (n + 1) + (A085090 (n + 2) - A099802 (n + 2))

end

end A121206.P1244282240819507065

namespace A121206

/-- `A099802(n+1)+A085090(n+2)-A099802(n+2)` -/
def P1244282240819507065.Spec : Prop :=
  ∀ n, P1244282240819507065.a n = A121206 (n + 1)

end A121206

/-!
# A121207: Triangle read by rows. The definition is by diagonals. The r-th diagonal from the right, for r >= 0, is given by b(0) = b(1) = 1; b(n+1) = Sum_{k=0..n} binomial(n+2,k+r)*a(k).

The programs for A121207, there is no canonical definition to state claims against.
-/

/-! ## A121207.P12445194778077814968

`A186020(A061579(n))`
-/

namespace A121207.P12445194778077814968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A061579 n).toNat

end

end A121207.P12445194778077814968

/-! ## A121207.P9702643480336794629

`A186020(A114327(n)+n)`
-/

namespace A121207.P9702643480336794629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A114327 n + (n : ℤ)).toNat

end

end A121207.P9702643480336794629

/-! ## A121207.P4991814938763297067

`A186020(A038722(n+1)-1)`
-/

namespace A121207.P4991814938763297067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A038722 (n + 1) - 1).toNat

end

end A121207.P4991814938763297067

/-! ## A121207.P6736620020977316070

`A186020(A025581(n)+n-A002262(n))`
-/

namespace A121207.P6736620020977316070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A121207.P6736620020977316070

/-! ## A121207.P3645363352705322953

`A186020(n-(A002262(n)-A025581(n)))`
-/

namespace A121207.P3645363352705322953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A121207.P3645363352705322953

/-!
# A121210: Number of free hexagonal polygons of symmetry class C_(2h) and area n.

The programs for A121210, there is no canonical definition to state claims against.
-/

/-! ## A121210.P1519736148798033664

`∑[A059906(A316631(n)!)]`
-/

namespace A121210.P1519736148798033664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.factorial (A316631 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121210.P1519736148798033664

/-! ## A121210.P4812271641066558743

`A302867(A015623(n+2)+1)`
-/

namespace A121210.P4812271641066558743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302867 (A015623 (n + 2) + 1).toNat

end

end A121210.P4812271641066558743

/-! ## A121210.P908852437845129404

`∑[A059906(A322993(n+1)!)]`
-/

namespace A121210.P908852437845129404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.factorial (A322993 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121210.P908852437845129404

/-! ## A121210.P5599756853490380897

`∑[A145395(A246277(n+1)!)]`
-/

namespace A121210.P5599756853490380897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145395 (Nat.factorial (A246277 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121210.P5599756853490380897

/-! ## A121210.P14833115262218424024

`∑[A059906(A346468(n+1)!)]`
-/

namespace A121210.P14833115262218424024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.factorial (A346468 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121210.P14833115262218424024

/-!
# A121213: a(n) = 7^n - 5^n.

The programs for A121213, the canonical program `A121213.P12174951734277892704` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121213 has offset 0).

The definition of A121213 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-5^n` (program `A121213.P12174951734277892704`, by `A121213.P12174951734277892704.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121213.P12174951734277892704

`7^n-5^n`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121213

/-- `7^n-5^n` -/
def P12174951734277892704.Spec : Prop :=
  ∀ n, P12174951734277892704.a n = A121213 n

theorem P12174951734277892704.correct : P12174951734277892704.Spec := by
  intro n
  simp only [A121213]

end A121213

/-! ## A121213.P8375894419366545880

`2*A081200(n)`
-/

namespace A121213.P8375894419366545880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081200 n

end

end A121213.P8375894419366545880

namespace A121213

/-- `2*A081200(n)` -/
def P8375894419366545880.Spec : Prop :=
  ∀ n, P8375894419366545880.a n = A121213 n

end A121213

/-! ## A121213.P17118370950001742862

`xor(1, A155640(n))`
-/

namespace A121213.P17118370950001742862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155640 n)

end

end A121213.P17118370950001742862

namespace A121213

/-- `xor(1, A155640(n))` -/
def P17118370950001742862.Spec : Prop :=
  ∀ n, P17118370950001742862.a n = A121213 n

end A121213

/-! ## A121213.P9638960254121824818

`abs(2*n-A121203(n))`
-/

namespace A121213.P9638960254121824818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A121203 n|

end

end A121213.P9638960254121824818

namespace A121213

/-- `abs(2*n-A121203(n))` -/
def P9638960254121824818.Spec : Prop :=
  ∀ n, P9638960254121824818.a n = A121213 n

end A121213

/-! ## A121213.P17917915338447221877

`2*(A121204(n)/2+n)`
-/

namespace A121213.P17917915338447221877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A121204 n : ℚ) / 2 + (n : ℚ))

end

end A121213.P17917915338447221877

namespace A121213

/-- `2*(A121204(n)/2+n)` -/
def P17917915338447221877.Spec : Prop :=
  ∀ n, P17917915338447221877.a n = (A121213 n : ℚ)

theorem P17917915338447221877.correct : P17917915338447221877.Spec := by
  intro n
  simp only [A121213, Nat.add_sub_cancel, A121213.P17917915338447221877.a, A121213.P12174951734277892704.a, A121204, A121204.P1203383832111083492.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A121213

/-! ## A121213.P11423182802395420133

`abs(A000351(n)-A000420(n))`
-/

namespace A121213.P11423182802395420133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A000420 n|

end

end A121213.P11423182802395420133

namespace A121213

/-- `abs(A000351(n)-A000420(n))` -/
def P11423182802395420133.Spec : Prop :=
  ∀ n, P11423182802395420133.a n = A121213 n

end A121213

/-! ## A121213.P12612075404047752487

`abs(A024051(n)-A024077(n))`
-/

namespace A121213.P12612075404047752487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024051 n - A024077 n|

end

end A121213.P12612075404047752487

namespace A121213

/-- `abs(A024051(n)-A024077(n))` -/
def P12612075404047752487.Spec : Prop :=
  ∀ n, P12612075404047752487.a n = A121213 n

end A121213

/-! ## A121213.P11740406152757712346

`abs(A034474(n)-A034491(n))`
-/

namespace A121213.P11740406152757712346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A034491 n|

end

end A121213.P11740406152757712346

namespace A121213

/-- `abs(A034474(n)-A034491(n))` -/
def P11740406152757712346.Spec : Prop :=
  ∀ n, P11740406152757712346.a n = A121213 n

end A121213

/-! ## A121213.P7406636443019811548

`abs(A001047(n)-A135163(n))`
-/

namespace A121213.P7406636443019811548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001047 n - A135163 n|

end

end A121213.P7406636443019811548

namespace A121213

/-- `abs(A001047(n)-A135163(n))` -/
def P7406636443019811548.Spec : Prop :=
  ∀ n, P7406636443019811548.a n = A121213 n

end A121213

/-! ## A121213.P6637909846028735316

`abs(A155588(n)-A155590(n))`
-/

namespace A121213.P6637909846028735316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155588 n - A155590 n|

end

end A121213.P6637909846028735316

namespace A121213

/-- `abs(A155588(n)-A155590(n))` -/
def P6637909846028735316.Spec : Prop :=
  ∀ n, P6637909846028735316.a n = A121213 n

end A121213

/-! ## A121213.P13937013740835956419

`∑[A055272(n)-A005054(n)]`
-/

namespace A121213.P13937013740835956419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121213.P13937013740835956419

namespace A121213

/-- `∑[A055272(n)-A005054(n)]` -/
def P13937013740835956419.Spec : Prop :=
  ∀ n, P13937013740835956419.a n = A121213 n

end A121213

/-! ## A121213.P12097347274714359118

`Δ[A023000(n)-A003463(n)]`
-/

namespace A121213.P12097347274714359118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A121213.P12097347274714359118

namespace A121213

/-- `Δ[A023000(n)-A003463(n)]` -/
def P12097347274714359118.Spec : Prop :=
  ∀ n, P12097347274714359118.a n = A121213 n

end A121213

/-! ## A121213.P11199670978201802540

`2*(A034494(n)-A034478(n))`
-/

namespace A121213.P11199670978201802540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034494 n - A034478 n)

end

end A121213.P11199670978201802540

namespace A121213

/-- `2*(A034494(n)-A034478(n))` -/
def P11199670978201802540.Spec : Prop :=
  ∀ n, P11199670978201802540.a n = A121213 n

end A121213

/-! ## A121213.P13554621758353749911

`lcm(2, A074608(n)-A074606(n))`
-/

namespace A121213.P13554621758353749911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A074608 n - A074606 n)

end

end A121213.P13554621758353749911

namespace A121213

/-- `lcm(2, A074608(n)-A074606(n))` -/
def P13554621758353749911.Spec : Prop :=
  ∀ n, (P13554621758353749911.a n : ℤ) = A121213 n

end A121213

/-! ## A121213.P9303346166456354254

`A074616(n+1)%A074616(n)`
-/

namespace A121213.P9303346166456354254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074616 (n + 1)) (A074616 n)

end

end A121213.P9303346166456354254

namespace A121213

/-- `A074616(n+1)%A074616(n)` -/
def P9303346166456354254.Spec : Prop :=
  ∀ n, P9303346166456354254.a n = A121213 n

end A121213

/-! ## A121213.P1457851988422506852

`A074544(n)%A074539(n)`
-/

namespace A121213.P1457851988422506852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074544 n) (A074539 n)

end

end A121213.P1457851988422506852

namespace A121213

/-- `A074544(n)%A074539(n)` -/
def P1457851988422506852.Spec : Prop :=
  ∀ n, P1457851988422506852.a n = A121213 n

end A121213

/-! ## A121213.P2506833481620236924

`abs(A074563(n)-A074568(n))`
-/

namespace A121213.P2506833481620236924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074563 n - A074568 n|

end

end A121213.P2506833481620236924

namespace A121213

/-- `abs(A074563(n)-A074568(n))` -/
def P2506833481620236924.Spec : Prop :=
  ∀ n, P2506833481620236924.a n = A121213 n

end A121213

/-!
# A121214: Dimensions of the irreducible representations of the algebraic group SL4 (equivalently, simple Lie algebra of type A3) over the complex numbers, listed in increasing order.

The programs for A121214, there is no canonical definition to state claims against.
-/

/-! ## A121214.P13450996931835200701

`record[C(A334671(n+1), A054899(n))]`
-/

namespace A121214.P13450996931835200701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A334671 (n + 1)).toNat (A054899 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121214.P13450996931835200701

/-! ## A121214.P970448531895888661

`eq[A060862(A289832(n+1)), A308680(n)]`
-/

namespace A121214.P970448531895888661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A289832 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121214.P970448531895888661

/-! ## A121214.P18424736691492083861

`eq[A057077(A343297(n+4)), A070914(n)]`
-/

namespace A121214.P18424736691492083861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A343297 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121214.P18424736691492083861

/-!
# A121216: a(1)=1, a(2) = 2; thereafter a(n) = the smallest positive integer which does not occur earlier in the sequence and which is coprime to a(n-2).

The programs for A121216, there is no canonical definition to state claims against.
-/

/-! ## A121216.P10867693674972611477

`A352935(n+1)+1+n`
-/

namespace A121216.P10867693674972611477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352935 (n + 1) + 1 + (n : ℤ)

end

end A121216.P10867693674972611477

/-! ## A121216.P15064334340148167155

`A352933(n)+a(n-1)` with `a(0)=1`
-/

namespace A121216.P15064334340148167155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A352933 n + a (n - 1)

end

end A121216.P15064334340148167155

/-! ## A121216.P7085057431487271349

`∑[A352933(A028310(n))]`
-/

namespace A121216.P7085057431487271349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121216.P7085057431487271349

/-! ## A121216.P14831549710171508964

`∑[a(A141747(n))*A352933(n)]` with `a(0)=1`
-/

namespace A121216.P14831549710171508964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A141747 n).toNat * A352933 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121216.P14831549710171508964

/-! ## A121216.P9113119644942398745

`∑[A352933(n+1)]+1-A352933(n+1)`
-/

namespace A121216.P9113119644942398745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A352933 (n + 1))

end

end A121216.P9113119644942398745

/-! ## A121216.P10765549833322808896

`∑[A352933(A233583(n+1))]`
-/

namespace A121216.P10765549833322808896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352933 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121216.P10765549833322808896

/-!
# A121217: a(1)=1, a(2)=2, a(3)=3; for n > 3, a(n) is the smallest positive integer which does not occur earlier in the sequence and which is not coprime to a(n-2).

The programs for A121217, there is no canonical definition to state claims against.
-/

/-! ## A121217.P2713395142820302609

`A157684(3*A357992(n+1))`
-/

namespace A121217.P2713395142820302609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (3 * A357992 (n + 1)).toNat

end

end A121217.P2713395142820302609

/-! ## A121217.P16828390014289213312

`A357992(n+1)%A093046(n+1)`
-/

namespace A121217.P16828390014289213312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357992 (n + 1)) (A093046 (n + 1))

end

end A121217.P16828390014289213312

/-! ## A121217.P12100071800099110465

`A357992(n+1)+A010872(3*C(n, 4)+3*C(n, 3))`
-/

namespace A121217.P12100071800099110465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357992 (n + 1) + A010872 (3 * Nat.choose n 4 + 3 * Nat.choose n 3)

end

end A121217.P12100071800099110465

/-! ## A121217.P17360518524218089965

`A357992(n+1)+A000007(A000031(n))`
-/

namespace A121217.P17360518524218089965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357992 (n + 1) + A000007 (A000031 n).toNat

end

end A121217.P17360518524218089965

/-! ## A121217.P1130509737117344056

`A357992(n+1)+A000007(A341403(n))`
-/

namespace A121217.P1130509737117344056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357992 (n + 1) + A000007 (A341403 n).toNat

end

end A121217.P1130509737117344056

/-!
# A121218: a(n) = (n-th prime)th positive integer which is coprime to n.

The programs for A121218, there is no canonical definition to state claims against.
-/

/-! ## A121218.P6208637092885111257

`A126571(A072205(n+1)+n)`
-/

namespace A121218.P6208637092885111257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A072205 (n + 1) + (n : ℤ)).toNat

end

end A121218.P6208637092885111257

/-! ## A121218.P7543794940709166422

`A126571(A036689(n+1)/2+n+1)`
-/

namespace A121218.P7543794940709166422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (SequenceMachineLib.roundAway ((A036689 (n + 1) : ℚ) / 2 + (n + 1 : ℚ))).toNat

end

end A121218.P7543794940709166422

/-! ## A121218.P5355694618383819968

`A126571(A008619(A036689(n+1))+n)`
-/

namespace A121218.P5355694618383819968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126571 (A008619 (A036689 (n + 1)).toNat + (n : ℤ)).toNat

end

end A121218.P5355694618383819968

/-!
# A121220: Number of fixed hexagonal polygons (or benzenoids) with n cells.

The programs for A121220, there is no canonical definition to state claims against.
-/

/-! ## A121220.P13109717267065680646

`A001207(n+1)-A389191(n+1)`
-/

namespace A121220.P13109717267065680646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) - A389191 (n + 1)

end

end A121220.P13109717267065680646

/-! ## A121220.P7985250858839212361

`2*A212086(n+1)-A197958(n+1)-A389191(n+1)`
-/

namespace A121220.P7985250858839212361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A212086 (n + 1) - A197958 (n + 1) - A389191 (n + 1)

end

end A121220.P7985250858839212361

/-! ## A121220.P11995966939202687444

`A001207(n+1)-A122303(A112426(n+1))`
-/

namespace A121220.P11995966939202687444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) - A122303 (A112426 (n + 1)).toNat

end

end A121220.P11995966939202687444

/-!
# A121221: Number of degeneracies on the sets of N ordinary trees with p vertices.

The programs for A121221, there is no canonical definition to state claims against.
-/

/-! ## A121221.P13624953925093008670

`A331835(A000096(n!))`
-/

namespace A121221.P13624953925093008670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331835 (A000096 (Nat.factorial n)).toNat

end

end A121221.P13624953925093008670

/-! ## A121221.P16931123020655289324

`A316468(2*A316697(n+1))`
-/

namespace A121221.P16931123020655289324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316468 (2 * A316697 (n + 1)).toNat

end

end A121221.P16931123020655289324

/-!
# A121222: Number of degeneracies on the sets of N ordinary trees with p vertices.

The programs for A121222, there is no canonical definition to state claims against.
-/

/-! ## A121222.P18099848102994796237

`A277945(n+1)+A125067(A095296(n+1))`
-/

namespace A121222.P18099848102994796237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277945 (n + 1) + A125067 ((A095296 (n + 1)).toNat + 10)

end

end A121222.P18099848102994796237

/-!
# A121227: Number of labeled multigraphs with loops and with n edges and no vertex of degree 0.

The programs for A121227, there is no canonical definition to state claims against.
-/

/-! ## A121227.P6477557051642489784

`(ceil(sin(n)²)+1)*A121316(n)`
-/

namespace A121227.P6477557051642489784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A121316 n

end

end A121227.P6477557051642489784

/-! ## A121227.P3943044621203157462

`A014963(A001316(n))*A121316(n)`
-/

namespace A121227.P3943044621203157462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A121316 n

end

end A121227.P3943044621203157462

/-! ## A121227.P11918362686372773628

`A020639(A004277(n))*A121316(n)`
-/

namespace A121227.P11918362686372773628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A121316 n

end

end A121227.P11918362686372773628

/-! ## A121227.P9033280521524777051

`A020639(A008574(n))*A121316(n)`
-/

namespace A121227.P9033280521524777051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008574 n).toNat * A121316 n

end

end A121227.P9033280521524777051

/-! ## A121227.P17851801617905796941

`A020639(A046109(n))*A121316(n)`
-/

namespace A121227.P17851801617905796941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A046109 n).toNat * A121316 n

end

end A121227.P17851801617905796941

/-! ## A121227.P2115101787301513071

`A020639(A103517(n))*A121316(n)`
-/

namespace A121227.P2115101787301513071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A103517 n).toNat * A121316 n

end

end A121227.P2115101787301513071

/-! ## A121227.P2752464098061642474

`A121316(n)*A173677(A077107(n))`
-/

namespace A121227.P2752464098061642474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121316 n * A173677 (A077107 n).toNat

end

end A121227.P2752464098061642474

/-! ## A121227.P16179926334754484542

`A020639(A333787(n+1))*A121316(n)`
-/

namespace A121227.P16179926334754484542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A333787 (n + 1)).toNat * A121316 n

end

end A121227.P16179926334754484542

/-! ## A121227.P12447170920123922887

`A020639(A344700(n+1))*A121316(n)`
-/

namespace A121227.P12447170920123922887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A344700 (n + 1)).toNat * A121316 n

end

end A121227.P12447170920123922887

/-!
# A121228: Number of ways to write the numbers 1 through 3n on the faces of three n-sided dice, so that the 1st die beats the 2nd with probability > 1/2, the 2nd beats the 3rd with probability > 1/2 and the 3rd beats the 1st with probability > 1/2, and the first die contains the number 1.

The programs for A121228, there is no canonical definition to state claims against.
-/

/-! ## A121228.P6962968102817283235

`A003415(n)*A213407(A000262(n))`
-/

namespace A121228.P6962968102817283235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n * A213407 (A000262 n).toNat

end

end A121228.P6962968102817283235

/-!
# A121229: Beginning with a(1) = 1 and a(2) = 2, a(n) is not equal to the product of two consecutive (distinct) earlier terms.

The programs for A121229, there is no canonical definition to state claims against.
-/

/-! ## A121229.P3671325405496869878

`floor(sqrt(A286290(n+1)))`
-/

namespace A121229.P3671325405496869878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A286290 (n + 1))

end

end A121229.P3671325405496869878

/-! ## A121229.P14265706077924771298

`A286290(n)/a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A121229.P14265706077924771298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  (A286290 n : ℚ) / a (n - 1)

end

end A121229.P14265706077924771298

/-! ## A121229.P11818810618062926473

`comp[A286290(ceil(n/6)+2)-1]+1`
-/

namespace A121229.P11818810618062926473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286290 (⌈(n : ℚ) / 6⌉ + 2).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A121229.P11818810618062926473

/-! ## A121229.P4506383900846822674

`ceil(A286290(n+1)/A286291(n+1))`
-/

namespace A121229.P4506383900846822674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286290 (n + 1) : ℚ) / (A286291 (n + 1) : ℚ)⌉

end

end A121229.P4506383900846822674

/-! ## A121229.P13084278765190905882

`comp[A286290(n+1)%A286304(3*n+1)]`
-/

namespace A121229.P13084278765190905882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286290 (n + 1)) (A286304 (3 * n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A121229.P13084278765190905882

/-! ## A121229.P11326439047502717488

`A286291(n-gcd(a(n-1), A000040(n))+1)` with `a(0)=1`
-/

namespace A121229.P11326439047502717488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286291 ((n : ℤ) - (Int.gcd (a (n - 1)) (A000040 n) : ℤ) + 1).toNat

end

end A121229.P11326439047502717488

/-! ## A121229.P9120265525889992697

`lt[n, A064745(n+1)]+1`
-/

namespace A121229.P9120265525889992697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A121229.P9120265525889992697

/-! ## A121229.P16886600458116181660

`A064736(A004277(n))`
-/

namespace A121229.P16886600458116181660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A004277 n).toNat

end

end A121229.P16886600458116181660

/-! ## A121229.P7531506733213854069

`A064736(A004275(n+1))`
-/

namespace A121229.P7531506733213854069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A004275 (n + 1)).toNat

end

end A121229.P7531506733213854069

/-! ## A121229.P3587848398923921303

`A064736(A004273(n)+1)`
-/

namespace A121229.P3587848398923921303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A004273 n + 1).toNat

end

end A121229.P3587848398923921303

/-! ## A121229.P8668390269875323332

`A064736(A028310(2*n))`
-/

namespace A121229.P8668390269875323332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A028310 (2 * n)).toNat

end

end A121229.P8668390269875323332

/-! ## A121229.P6038615182187530249

`A064736(A028310(n)+n)`
-/

namespace A121229.P6038615182187530249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (A028310 n + (n : ℤ)).toNat

end

end A121229.P6038615182187530249

/-! ## A121229.P14609156017543931596

`A064736(record[A064745(n+1)])`
-/

namespace A121229.P14609156017543931596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121229.P14609156017543931596

/-! ## A121229.P9126963517684275076

`A064736(record[A210771(n+1)])`
-/

namespace A121229.P9126963517684275076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A121229.P9126963517684275076

/-! ## A121229.P16318493310506747799

`A064736(eq[val(n+1, 2), A209229(n+1)])`
-/

namespace A121229.P16318493310506747799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A121229.P16318493310506747799

/-! ## A121229.P14556336245736868287

`floor(sqrt(A064736(Δ[n²])))`
-/

namespace A121229.P14556336245736868287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A064736 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A121229.P14556336245736868287

/-! ## A121229.P14054971765113339142

`record[floor(sqrt(A064736(n+1)))]`
-/

namespace A121229.P14054971765113339142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A064736 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121229.P14054971765113339142

/-! ## A121229.P14398583590044571968

`floor(sqrt(A064736(2*n+1)-n))`
-/

namespace A121229.P14398583590044571968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A064736 (2 * n + 1) - (n : ℤ))

end

end A121229.P14398583590044571968

/-! ## A121229.P8217796628681746904

`record[A064736(n+2)]/A064736(2*(n+1))`
-/

namespace A121229.P8217796628681746904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064736 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A064736 (2 * (n + 1)) : ℚ)

end

end A121229.P8217796628681746904

/-! ## A121229.P12898738596294095625

`record[A064736(A093178(n))/A064736(n+1)]`
-/

namespace A121229.P12898738596294095625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064736 (A093178 n).toNat : ℚ) / (A064736 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121229.P12898738596294095625

/-!
# A121230: First Hadamard-Sylvester matrix self -similar matrix based on the Padovan/ Minimal Pisot 3 X 3 matrix as an 9 X 9 matrix: Characteristic Polynomial:1 - x - x^3 - x^4 - x^5 + 3 x^6 + 2 x^7 - x^9.

The programs for A121230, the canonical program `A121230.P14265443088859899044` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121230 has offset 1).

The definition of A121230 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121230.P14265443088859899044

`a(n-1)+a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` with `a(0)=0, a(1)=13, a(2)=5, a(3)=22, a(4)=42, a(5)=54`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121230

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)+a(n-5)-a(n-6)` -/
def P14265443088859899044.Spec : Prop :=
  ∀ n, P14265443088859899044.a n = A121230 (n + 1)

theorem P14265443088859899044.correct : P14265443088859899044.Spec := by
  intro n
  simp only [A121230, Nat.add_sub_cancel]

end A121230

/-!
# A121231: Number of n X n binary matrices M (that is, real matrices with entries 0 and 1) such that M^2 is also a binary matrix.

The programs for A121231, there is no canonical definition to state claims against.
-/

/-! ## A121231.P14472850369137541861

`A213990(A179865(n+1))-floor(acot(n))`
-/

namespace A121231.P14472850369137541861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (A179865 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A121231.P14472850369137541861

/-! ## A121231.P11344312537570382860

`record[gcd(A144225(n+1), A213990(n+1))]`
-/

namespace A121231.P11344312537570382860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A144225 (n + 1)) (A213990 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121231.P11344312537570382860

/-! ## A121231.P13691780911217509604

`A213990(A179865(n+1))-A058348(n)`
-/

namespace A121231.P13691780911217509604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213990 (A179865 (n + 1)).toNat - A058348 n

end

end A121231.P13691780911217509604

/-! ## A121231.P6932334310167718571

`A213990(A179865(n+1))^A178487(n)`
-/

namespace A121231.P6932334310167718571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213990 (A179865 (n + 1)).toNat : ℚ) ^ (A178487 n : ℤ)

end

end A121231.P6932334310167718571

/-!
# A121233: Palindromes whose ten's complements are squares.

The programs for A121233, there is no canonical definition to state claims against.
-/

/-! ## A121233.P4792439549443668978

`filter[A051221(n+2), A136522(#)]`
-/

namespace A121233.P4792439549443668978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A121233.P4792439549443668978

/-! ## A121233.P1059686871150310389

`∩[A051221(n+1), A110751(n+1)]`
-/

namespace A121233.P1059686871150310389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121233.P1059686871150310389

/-! ## A121233.P13669265118177403813

`∩[A051221(n+1), A324988(n+1)]`
-/

namespace A121233.P13669265118177403813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A121233.P13669265118177403813

/-!
# A121235: Multiply-Add Recurrence Invariant (MARI) numbers.

The programs for A121235, there is no canonical definition to state claims against.
-/

/-! ## A121235.P6268441394463137971

`A007629(n+1)-A034336(A034336(n))`
-/

namespace A121235.P6268441394463137971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007629 (n + 1) - A034336 (A034336 n).toNat

end

end A121235.P6268441394463137971

/-! ## A121235.P17567929914330046367

`A007629(n+1)-A071648(A132105(n))`
-/

namespace A121235.P17567929914330046367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007629 (n + 1) - A071648 (A132105 n).toNat

end

end A121235.P17567929914330046367

/-! ## A121235.P1470774377755707291

`A007629(n+1)-A325226(A000312(n))`
-/

namespace A121235.P1470774377755707291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007629 (n + 1) - A325226 (A000312 n).toNat

end

end A121235.P1470774377755707291

/-!
# A121237: 

The programs for A121237, there is no canonical definition to state claims against.
-/

/-! ## A121237.P10293202216072150294

`∑[(n+1)^Δ[∑[n]²]]`
-/

namespace A121237.P10293202216072150294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121237.P10293202216072150294

/-!
# A121238: a(n) = (-1)^(1+n+A088585(n)).

The programs for A121238, the canonical program `A121238.P10938906385621132598` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121238 has offset 0).

The definition of A121238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088585, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121238.P10938906385621132598

`(-1)^(1+n+A088585(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121238

/-- `(-1)^(1+n+A088585(n))` -/
def P10938906385621132598.Spec : Prop :=
  ∀ n, P10938906385621132598.a n = (A121238 n : ℚ)

end A121238

/-! ## A121238.P17355601786885769635

`Δ[xor(n, 2*n-1)]%2`
-/

namespace A121238.P17355601786885769635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A121238.P17355601786885769635

namespace A121238

/-- `Δ[xor(n, 2*n-1)]%2` -/
def P17355601786885769635.Spec : Prop :=
  ∀ n, P17355601786885769635.a n = A121238 n

end A121238

/-! ## A121238.P8977511941034359914

`Δ[or(n, -(2*n))²]%2`
-/

namespace A121238.P8977511941034359914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(2 * n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 2

end

end A121238.P8977511941034359914

namespace A121238

/-- `Δ[or(n, -(2*n))²]%2` -/
def P8977511941034359914.Spec : Prop :=
  ∀ n, P8977511941034359914.a n = A121238 n

end A121238

/-! ## A121238.P6064286923555910709

`-Δ[xor(n, -(2*n))]%2`
-/

namespace A121238.P6064286923555910709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(f1 (n + 1) - f1 n)) 2

end

end A121238.P6064286923555910709

namespace A121238

/-- `-Δ[xor(n, -(2*n))]%2` -/
def P6064286923555910709.Spec : Prop :=
  ∀ n, P6064286923555910709.a n = A121238 n

end A121238

/-! ## A121238.P2439948137481489651

`(Δ[and(n, -(2*n))]+1)%2`
-/

namespace A121238.P2439948137481489651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n + 1) 2

end

end A121238.P2439948137481489651

namespace A121238

/-- `(Δ[and(n, -(2*n))]+1)%2` -/
def P2439948137481489651.Spec : Prop :=
  ∀ n, P2439948137481489651.a n = A121238 n

end A121238

/-! ## A121238.P15048391438094413490

`2*char[and(n, n-1)+n]-1`
-/

namespace A121238.P15048391438094413490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1

end

end A121238.P15048391438094413490

namespace A121238

/-- `2*char[and(n, n-1)+n]-1` -/
def P15048391438094413490.Spec : Prop :=
  ∀ n, P15048391438094413490.a n = A121238 n

end A121238

/-! ## A121238.P9609995272248417273

`or(1, -char[comp[and(n, n-1)+n]])`
-/

namespace A121238.P9609995272248417273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A121238.P9609995272248417273

namespace A121238

/-- `or(1, -char[comp[and(n, n-1)+n]])` -/
def P9609995272248417273.Spec : Prop :=
  ∀ n, P9609995272248417273.a n = A121238 n

end A121238

/-! ## A121238.P7339249336631674735

`or(1, -char[or(n, n+1)+2+n])`
-/

namespace A121238.P7339249336631674735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A121238.P7339249336631674735

namespace A121238

/-- `or(1, -char[or(n, n+1)+2+n])` -/
def P7339249336631674735.Spec : Prop :=
  ∀ n, P7339249336631674735.a n = A121238 n

end A121238

/-! ## A121238.P8516198287898041025

`∏[A121241(n)]`
-/

namespace A121238.P8516198287898041025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121241 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A121238.P8516198287898041025

namespace A121238

/-- `∏[A121241(n)]` -/
def P8516198287898041025.Spec : Prop :=
  ∀ n, P8516198287898041025.a n = A121238 n

end A121238

/-! ## A121238.P4304850026512949597

`or(1, A112347(n))`
-/

namespace A121238.P4304850026512949597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112347 n)

end

end A121238.P4304850026512949597

namespace A121238

/-- `or(1, A112347(n))` -/
def P4304850026512949597.Spec : Prop :=
  ∀ n, P4304850026512949597.a n = A121238 n

end A121238

/-! ## A121238.P7675963050662645829

`1-2*A038189(n)`
-/

namespace A121238.P7675963050662645829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A038189 n

end

end A121238.P7675963050662645829

namespace A121238

/-- `1-2*A038189(n)` -/
def P7675963050662645829.Spec : Prop :=
  ∀ n, P7675963050662645829.a n = A121238 n

end A121238

/-! ## A121238.P12603800148656390204

`1-and(2, A300867(n))`
-/

namespace A121238.P12603800148656390204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A300867 n)

end

end A121238.P12603800148656390204

namespace A121238

/-- `1-and(2, A300867(n))` -/
def P12603800148656390204.Spec : Prop :=
  ∀ n, P12603800148656390204.a n = A121238 n

end A121238

/-! ## A121238.P8166001986912800417

`A034947(char[n²]+n)`
-/

namespace A121238.P8166001986912800417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A121238.P8166001986912800417

namespace A121238

/-- `A034947(char[n²]+n)` -/
def P8166001986912800417.Spec : Prop :=
  ∀ n, P8166001986912800417.a n = A121238 n

end A121238

/-! ## A121238.P3004199221944018027

`or(1, 2-A125047(n+1))`
-/

namespace A121238.P3004199221944018027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 - A125047 (n + 1))

end

end A121238.P3004199221944018027

namespace A121238

/-- `or(1, 2-A125047(n+1))` -/
def P3004199221944018027.Spec : Prop :=
  ∀ n, P3004199221944018027.a n = A121238 n

end A121238

/-! ## A121238.P12221117732524226878

`A034947(n)^a(n-1)` with `a(0)=1`
-/

namespace A121238.P12221117732524226878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A034947 n : ℝ) ^ (a (n - 1))

end

end A121238.P12221117732524226878

namespace A121238

/-- `A034947(n)^a(n-1)` -/
def P12221117732524226878.Spec : Prop :=
  ∀ n, P12221117732524226878.a n = (A121238 n : ℝ)

end A121238

/-! ## A121238.P13407043005250177659

`1-2*char[A091067(n+1)]`
-/

namespace A121238.P13407043005250177659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A121238.P13407043005250177659

namespace A121238

/-- `1-2*char[A091067(n+1)]` -/
def P13407043005250177659.Spec : Prop :=
  ∀ n, P13407043005250177659.a n = A121238 n

end A121238

/-! ## A121238.P11867055779310820393

`1-2*char[A269363(n+1)]`
-/

namespace A121238.P11867055779310820393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ)

end

end A121238.P11867055779310820393

namespace A121238

/-- `1-2*char[A269363(n+1)]` -/
def P11867055779310820393.Spec : Prop :=
  ∀ n, P11867055779310820393.a n = A121238 n

end A121238

/-! ## A121238.P17886540860058455607

`A112347(n*a(n-1)²)` with `a(0)=1`
-/

namespace A121238.P17886540860058455607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112347 ((n : ℤ) * a (n - 1) ^ 2).toNat

end

end A121238.P17886540860058455607

namespace A121238

/-- `A112347(n*a(n-1)²)` -/
def P17886540860058455607.Spec : Prop :=
  ∀ n, P17886540860058455607.a n = A121238 n

end A121238

/-! ## A121238.P12721402718002765482

`A112347(n/a(n-1)²)` with `a(0)=1`
-/

namespace A121238.P12721402718002765482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112347 (SequenceMachineLib.roundAway ((n : ℚ) / (a (n - 1) ^ 2 : ℚ))).toNat

end

end A121238.P12721402718002765482

namespace A121238

/-- `A112347(n/a(n-1)²)` -/
def P12721402718002765482.Spec : Prop :=
  ∀ n, P12721402718002765482.a n = A121238 n

end A121238

/-! ## A121238.P10238962669712103999

`A112347(n^a(n-1)²)` with `a(0)=1`
-/

namespace A121238.P10238962669712103999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A112347 (SequenceMachineLib.roundAway ((n : ℚ) ^ (a (n - 1) ^ 2 : ℤ))).toNat

end

end A121238.P10238962669712103999

namespace A121238

/-- `A112347(n^a(n-1)²)` -/
def P10238962669712103999.Spec : Prop :=
  ∀ n, P10238962669712103999.a n = A121238 n

end A121238

/-!
# A121239: Decimal expansion of 10-e.

The programs for A121239, there is no canonical definition to state claims against.
-/

/-! ## A121239.P11210305165396324279

`9-A001113(n)`
-/

namespace A121239.P11210305165396324279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001113 (n + 1)

end

end A121239.P11210305165396324279

/-! ## A121239.P5395983120391310322

`A187747(n)+A030644(n)`
-/

namespace A121239.P5395983120391310322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 n + A030644 (n + 1)

end

end A121239.P5395983120391310322

/-! ## A121239.P7594582223656332182

`A153805(n)+Δ[A001113(n)]`
-/

namespace A121239.P7594582223656332182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n + (f1 (n + 1) - f1 n)

end

end A121239.P7594582223656332182

/-! ## A121239.P4932212973111687546

`A000796(n)+9-A073212(n)`
-/

namespace A121239.P4932212973111687546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) + (9 - A073212 n)

end

end A121239.P4932212973111687546

/-! ## A121239.P2047234402953346375

`9-(A091131(n)+A000007(n))`
-/

namespace A121239.P2047234402953346375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A091131 (n + 1) + A000007 n)

end

end A121239.P2047234402953346375

/-! ## A121239.P2548406391669886523

`7-A023444(A000796(n)-A187747(n))`
-/

namespace A121239.P2548406391669886523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A023444 (A000796 (n + 1) - A187747 n).toNat

end

end A121239.P2548406391669886523

/-! ## A121239.P6386236137116696183

`A153805(n)+Δ[A000796(n)-A187747(n)]`
-/

namespace A121239.P6386236137116696183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) - A187747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n + (f1 (n + 1) - f1 n)

end

end A121239.P6386236137116696183

/-! ## A121239.P2683852952784389502

`9-(A228239(n+1)+A231325(n+1)-A000796(n))`
-/

namespace A121239.P2683852952784389502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - (A228239 (n + 1) + (A231325 (n + 1) - A000796 (n + 1)))

end

end A121239.P2683852952784389502

/-! ## A121239.P18256307356052649954

`9-A001355(2*(n+1))`
-/

namespace A121239.P18256307356052649954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A001355 (2 * (n + 1))

end

end A121239.P18256307356052649954

/-! ## A121239.P659513862995113424

`9-A110779(2*n+1)`
-/

namespace A121239.P659513862995113424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A110779 (2 * n + 1)

end

end A121239.P659513862995113424

/-! ## A121239.P6802511644917401155

`A127794(A001511(2*n+3))-(A123152(n+1)-(A187747(n)+1))`
-/

namespace A121239.P6802511644917401155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127794 (A001511 (2 * n + 3)).toNat - (A123152 (n + 1) - (A187747 n + 1))

end

end A121239.P6802511644917401155

/-! ## A121239.P10951032873914104278

`a(n-1)-A095942(n)` with `a(0)=7`
-/

namespace A121239.P10951032873914104278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) - A095942 n

end

end A121239.P10951032873914104278

/-! ## A121239.P16388219110281687443

`A153805(n)+A095942(n+1)`
-/

namespace A121239.P16388219110281687443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n + A095942 (n + 1)

end

end A121239.P16388219110281687443

/-!
# A121240: Numerator of sum_{k=1..n} 1/2^prime(k).

The programs for A121240, the canonical program `A121240.P5910405895771289228` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121240 has offset 1).

The definition of A121240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121240.P5910405895771289228

`A072762(A000040(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121240

/-- `A072762(A000040(n+1))` -/
def P5910405895771289228.Spec : Prop :=
  ∀ n, P5910405895771289228.a n = A121240 (n + 1)

theorem P5910405895771289228.correct : P5910405895771289228.Spec := by
  intro n
  simp only [A121240, Nat.add_sub_cancel]

end A121240

/-! ## A121240.P1758003692117560855

`A072762(p?[comp[n²]])`
-/

namespace A121240.P1758003692117560855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072762 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121240.P1758003692117560855

namespace A121240

/-- `A072762(p?[comp[n²]])` -/
def P1758003692117560855.Spec : Prop :=
  ∀ n, P1758003692117560855.a n = A121240 (n + 1)

end A121240

/-! ## A121240.P7303979687483108947

`A072762(Δ[A007504(n)])`
-/

namespace A121240.P7303979687483108947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072762 (f1 (n + 1) - f1 n).toNat

end

end A121240.P7303979687483108947

namespace A121240

/-- `A072762(Δ[A007504(n)])` -/
def P7303979687483108947.Spec : Prop :=
  ∀ n, P7303979687483108947.a n = A121240 (n + 1)

end A121240

/-! ## A121240.P16112451012622955403

`A072762(A030291(n+1))`
-/

namespace A121240.P16112451012622955403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072762 (A030291 (n + 1)).toNat

end

end A121240.P16112451012622955403

namespace A121240

/-- `A072762(A030291(n+1))` -/
def P16112451012622955403.Spec : Prop :=
  ∀ n, P16112451012622955403.a n = A121240 (n + 1)

end A121240

/-! ## A121240.P7230782055405228801

`A072762(A030475(n+1))`
-/

namespace A121240.P7230782055405228801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072762 (A030475 (n + 1)).toNat

end

end A121240.P7230782055405228801

namespace A121240

/-- `A072762(A030475(n+1))` -/
def P7230782055405228801.Spec : Prop :=
  ∀ n, P7230782055405228801.a n = A121240 (n + 1)

end A121240

/-!
# A121241: Change 0 to -1 in A090678.

The programs for A121241, the canonical program `A121241.P15878834596494796512` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121241 has offset 0).

The definition of A121241 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A088567, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A121241.P15878834596494796512

`(-1)^(1+A088567(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121241

/-- `(-1)^(1+A088567(n))` -/
def P15878834596494796512.Spec : Prop :=
  ∀ n, P15878834596494796512.a n = (A121241 n : ℚ)

end A121241

/-! ## A121241.P6243191667268632949

`-(a(n-2)*a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121241.P6243191667268632949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  -(a (n - 2) * a ⌊(n : ℚ) / 2⌋.toNat)

end

end A121241.P6243191667268632949

namespace A121241

/-- `-(a(n-2)*a(floor(n/2)))` -/
def P6243191667268632949.Spec : Prop :=
  ∀ n, P6243191667268632949.a n = A121241 n

end A121241

/-! ## A121241.P10804986482604553510

`1-abs(a(n-2)+a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121241.P10804986482604553510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - |a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat|

end

end A121241.P10804986482604553510

namespace A121241

/-- `1-abs(a(n-2)+a(floor(n/2)))` -/
def P10804986482604553510.Spec : Prop :=
  ∀ n, P10804986482604553510.a n = A121241 n

end A121241

/-! ## A121241.P460427581008018469

`1-dr(a(n-2)+a(floor(n/2)))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121241.P460427581008018469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - (SequenceMachineLib.digitalRoot (a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat) : ℤ)

end

end A121241.P460427581008018469

namespace A121241

/-- `1-dr(a(n-2)+a(floor(n/2)))` -/
def P460427581008018469.Spec : Prop :=
  ∀ n, P460427581008018469.a n = A121241 n

end A121241

/-! ## A121241.P3491171796809986804

`a(∑[n]%n)*a(n-1)/(-1)^n` with `a(0)=1, a(1)=1`
-/

namespace A121241.P3491171796809986804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a ((∑ j ∈ Finset.range (n + 1), f1 j) % n) * a (n - 1) / ((-1) ^ n : ℚ)

end

end A121241.P3491171796809986804

namespace A121241

/-- `a(∑[n]%n)*a(n-1)/(-1)^n` -/
def P3491171796809986804.Spec : Prop :=
  ∀ n, P3491171796809986804.a n = (A121241 n : ℚ)

end A121241

/-! ## A121241.P14557701896940684024

`(1-(a(n-2)+a(floor(n/2)))^4)%2` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121241.P14557701896940684024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  Int.tmod (1 - (a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat) ^ 4) 2

end

end A121241.P14557701896940684024

namespace A121241

/-- `(1-(a(n-2)+a(floor(n/2)))^4)%2` -/
def P14557701896940684024.Spec : Prop :=
  ∀ n, P14557701896940684024.a n = A121241 n

end A121241

/-! ## A121241.P8968026857206845387

`1-(a(n-2)+a(floor(n/2)))*a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A121241.P8968026857206845387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - (a (n - 2) + a ⌊(n : ℚ) / 2⌋.toNat) * a (n - 2)

end

end A121241.P8968026857206845387

namespace A121241

/-- `1-(a(n-2)+a(floor(n/2)))*a(n-2)` -/
def P8968026857206845387.Spec : Prop :=
  ∀ n, P8968026857206845387.a n = A121241 n

end A121241

/-! ## A121241.P12801913844780273672

`round(sin(exp(A006464(n))))`
-/

namespace A121241.P12801913844780273672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Real.exp (A006464 n : ℝ)))

end

end A121241.P12801913844780273672

namespace A121241

/-- `round(sin(exp(A006464(n))))` -/
def P12801913844780273672.Spec : Prop :=
  ∀ n, P12801913844780273672.a n = A121241 n

end A121241

/-! ## A121241.P17052693453875430715

`2*A090678(n)-1`
-/

namespace A121241.P17052693453875430715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090678 n - 1

end

end A121241.P17052693453875430715

namespace A121241

/-- `2*A090678(n)-1` -/
def P17052693453875430715.Spec : Prop :=
  ∀ n, P17052693453875430715.a n = A121241 n

end A121241

/-! ## A121241.P8839775198075619151

`-(-1)^A298414(n)`
-/

namespace A121241.P8839775198075619151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A298414 n : ℤ))

end

end A121241.P8839775198075619151

namespace A121241

/-- `-(-1)^A298414(n)` -/
def P8839775198075619151.Spec : Prop :=
  ∀ n, P8839775198075619151.a n = (A121241 n : ℚ)

end A121241

/-! ## A121241.P2978345227687034865

`ratio[A121238(abs(1-n))]`
-/

namespace A121241.P2978345227687034865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 |1 - (n : ℤ)|.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A121241.P2978345227687034865

namespace A121241

/-- `ratio[A121238(abs(1-n))]` -/
def P2978345227687034865.Spec : Prop :=
  ∀ n, P2978345227687034865.a n = (A121241 n : ℚ)

end A121241

/-! ## A121241.P13460171644071424242

`round(cos((A004200(n)/2)²))`
-/

namespace A121241.P13460171644071424242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (((A004200 n : ℚ) / 2) ^ 2 : ℝ))

end

end A121241.P13460171644071424242

namespace A121241

/-- `round(cos((A004200(n)/2)²))` -/
def P13460171644071424242.Spec : Prop :=
  ∀ n, P13460171644071424242.a n = A121241 n

end A121241

/-! ## A121241.P7551490495983569255

`A121238(C(n, 2))`
-/

namespace A121241.P7551490495983569255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 (Nat.choose n 2)

end

end A121241.P7551490495983569255

namespace A121241

/-- `A121238(C(n, 2))` -/
def P7551490495983569255.Spec : Prop :=
  ∀ n, P7551490495983569255.a n = A121241 n

end A121241

/-! ## A121241.P12494859571396080967

`1-2*A038189(C(n, 2))`
-/

namespace A121241.P12494859571396080967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A038189 (Nat.choose n 2)

end

end A121241.P12494859571396080967

namespace A121241

/-- `1-2*A038189(C(n, 2))` -/
def P12494859571396080967.Spec : Prop :=
  ∀ n, P12494859571396080967.a n = A121241 n

end A121241

/-! ## A121241.P16595675233992811941

`2-A099545(abs(∑[1-n])+1)`
-/

namespace A121241.P16595675233992811941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099545 (|∑ j ∈ Finset.range (n + 1), f1 j| + 1).toNat

end

end A121241.P16595675233992811941

namespace A121241

/-- `2-A099545(abs(∑[1-n])+1)` -/
def P16595675233992811941.Spec : Prop :=
  ∀ n, P16595675233992811941.a n = A121241 n

end A121241

/-! ## A121241.P7570941159112773072

`A121238(A161680(n))`
-/

namespace A121241.P7570941159112773072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121238 (A161680 n).toNat

end

end A121241.P7570941159112773072

namespace A121241

/-- `A121238(A161680(n))` -/
def P7570941159112773072.Spec : Prop :=
  ∀ n, P7570941159112773072.a n = A121241 n

end A121241

/-! ## A121241.P11067487526608308907

`lcm(2, A110036(n))-1`
-/

namespace A121241.P11067487526608308907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A110036 n) : ℤ) - 1

end

end A121241.P11067487526608308907

namespace A121241

/-- `lcm(2, A110036(n))-1` -/
def P11067487526608308907.Spec : Prop :=
  ∀ n, P11067487526608308907.a n = A121241 n

end A121241

/-! ## A121241.P8789642578663976144

`A062157(A088567(n))`
-/

namespace A121241.P8789642578663976144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A088567 n).toNat

end

end A121241.P8789642578663976144

namespace A121241

/-- `A062157(A088567(n))` -/
def P8789642578663976144.Spec : Prop :=
  ∀ n, P8789642578663976144.a n = A121241 n

end A121241

/-! ## A121241.P17464152378476734042

`A165326(A242634(n))`
-/

namespace A121241.P17464152378476734042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A242634 n).toNat

end

end A121241.P17464152378476734042

namespace A121241

/-- `A165326(A242634(n))` -/
def P17464152378476734042.Spec : Prop :=
  ∀ n, P17464152378476734042.a n = A121241 n

end A121241

/-! ## A121241.P3540304896532553000

`A034947(∑[or(64, n)]-n)`
-/

namespace A121241.P3540304896532553000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 64 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A121241.P3540304896532553000

namespace A121241

/-- `A034947(∑[or(64, n)]-n)` -/
def P3540304896532553000.Spec : Prop :=
  ∀ n, P3540304896532553000.a n = A121241 n

end A121241

/-!
# A121242: Number of 2's in first n primes.

The programs for A121242, the canonical program `A121242.P3942440470820535273` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121242 has offset 1).

The definition of A121242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121242.P3942440470820535273

`∑[A085976(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121242

/-- `∑[A085976(n+1)]` -/
def P3942440470820535273.Spec : Prop :=
  ∀ n, P3942440470820535273.a n = A121242 (n + 1)

theorem P3942440470820535273.correct : P3942440470820535273.Spec := by
  intro n
  simp only [A121242, Nat.add_sub_cancel]

end A121242

/-! ## A121242.P17205989148267984557

`A085976(n+1)+A061579(A061579(a(n-1)))` with `a(0)=1`
-/

namespace A121242.P17205989148267984557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085976 (n + 1) + A061579 (A061579 (a (n - 1)).toNat).toNat

end

end A121242.P17205989148267984557

namespace A121242

/-- `A085976(n+1)+A061579(A061579(a(n-1)))` -/
def P17205989148267984557.Spec : Prop :=
  ∀ n, P17205989148267984557.a n = A121242 (n + 1)

end A121242

/-! ## A121242.P8242447128354204136

`∑[A316863(Δ[A007504(n)])]`
-/

namespace A121242.P8242447128354204136
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P8242447128354204136

namespace A121242

/-- `∑[A316863(Δ[A007504(n)])]` -/
def P8242447128354204136.Spec : Prop :=
  ∀ n, P8242447128354204136.a n = A121242 (n + 1)

end A121242

/-! ## A121242.P15820793137108014703

`∑[A102683(A171051(n+1))]`
-/

namespace A121242.P15820793137108014703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A171051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P15820793137108014703

namespace A121242

/-- `∑[A102683(A171051(n+1))]` -/
def P15820793137108014703.Spec : Prop :=
  ∀ n, P15820793137108014703.a n = A121242 (n + 1)

end A121242

/-! ## A121242.P18138295249393586779

`∑[A316863(A000040(n+1))]`
-/

namespace A121242.P18138295249393586779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P18138295249393586779

namespace A121242

/-- `∑[A316863(A000040(n+1))]` -/
def P18138295249393586779.Spec : Prop :=
  ∀ n, P18138295249393586779.a n = A121242 (n + 1)

end A121242

/-! ## A121242.P7686808559478552584

`∑[A316863(p?[A091203(n)])]`
-/

namespace A121242.P7686808559478552584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121242.P7686808559478552584

namespace A121242

/-- `∑[A316863(p?[A091203(n)])]` -/
def P7686808559478552584.Spec : Prop :=
  ∀ n, P7686808559478552584.a n = A121242 (n + 1)

end A121242

/-!
# A121243: Primes of the form 4*x^2 + 4*x*y + 9*y^2.

The programs for A121243, there is no canonical definition to state claims against.
-/

/-! ## A121243.P4269912993088448565

`p?[A004768(eq[1, A286813(n)])]`
-/

namespace A121243.P4269912993088448565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286813 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121243.P4269912993088448565

/-! ## A121243.P16990806524933393419

`p?[A004768(n)*A286813(n)]`
-/

namespace A121243.P16990806524933393419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004768 n * A286813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121243.P16990806524933393419

/-! ## A121243.P7389294025341095445

`eq[A028597(n), A048785(n)]`
-/

namespace A121243.P7389294025341095445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A121243.P7389294025341095445

/-! ## A121243.P4805458120470889543

`p?[A014681(A004768(n)+A286813(n)%3)]`
-/

namespace A121243.P4805458120470889543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A004768 n + Int.tmod (A286813 n) 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A121243.P4805458120470889543

/-! ## A121243.P8373221480787810819

`∪[A325068(n+1), A325070(n+1)]`
-/

namespace A121243.P8373221480787810819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A121243.P8373221480787810819

/-!
# A121244: Number of score vectors for tournaments on n nodes that do not determine the tournament uniquely.

The programs for A121244, there is no canonical definition to state claims against.
-/

/-! ## A121244.P16592295673393801451

`A000571(n+1)-A000570(n+1)`
-/

namespace A121244.P16592295673393801451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1) - A000570 (n + 1)

end

end A121244.P16592295673393801451

/-! ## A121244.P7707406057583815543

`A000571(n+1)+A121272(n+1)-A000568(n+1)`
-/

namespace A121244.P7707406057583815543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1) + (A121272 (n + 1) - A000568 (n + 1))

end

end A121244.P7707406057583815543

/-! ## A121244.P12384507506480841711

`A000571(n+1)-(A350912(A179865(n+2))-A121272(n+1))`
-/

namespace A121244.P12384507506480841711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1) - (A350912 (A179865 (n + 2)).toNat - A121272 (n + 1))

end

end A121244.P12384507506480841711

/-! ## A121244.P16642346899076466441

`A000571(n+1)-A216256(A159035(n)+n%3*floor(n/3))`
-/

namespace A121244.P16642346899076466441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1) - A216256 (A159035 n + ((n % 3 : ℕ) : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A121244.P16642346899076466441

/-! ## A121244.P13741472705311454607

`A000571(n+1)-A000194(A121832(3*n+1))`
-/

namespace A121244.P13741472705311454607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000571 (n + 1) - A000194 (A121832 (3 * n + 1)).toNat

end

end A121244.P13741472705311454607

/-!
# A121245: (Floor(n*Pi))^n.

The programs for A121245, the canonical program `A121245.P458030698565162847` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121245 has offset 1).

The definition of A121245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*π)^(n+1)` (program `A121245.P458030698565162847`, by `A121245.P458030698565162847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121245.P458030698565162847

`floor((n+1)*π)^(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121245

/-- `floor((n+1)*π)^(n+1)` -/
def P458030698565162847.Spec : Prop :=
  ∀ n, P458030698565162847.a n = A121245 (n + 1)

theorem P458030698565162847.correct : P458030698565162847.Spec := by
  intro n
  simp only [A121245, Nat.add_sub_cancel]

end A121245

/-! ## A121245.P10271569443634557295

`A127451(n+1)^n*A127451(n+1)`
-/

namespace A121245.P10271569443634557295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127451 (n + 1) ^ n * A127451 (n + 1)

end

end A121245.P10271569443634557295

namespace A121245

/-- `A127451(n+1)^n*A127451(n+1)` -/
def P10271569443634557295.Spec : Prop :=
  ∀ n, P10271569443634557295.a n = A121245 (n + 1)

end A121245

/-! ## A121245.P6745273472014061150

`or(A022844(n+1)^(n+1), A000038(n))`
-/

namespace A121245.P6745273472014061150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A022844 (n + 1) ^ (n + 1)) (A000038 n)

end

end A121245.P6745273472014061150

namespace A121245

/-- `or(A022844(n+1)^(n+1), A000038(n))` -/
def P6745273472014061150.Spec : Prop :=
  ∀ n, P6745273472014061150.a n = A121245 (n + 1)

end A121245

/-! ## A121245.P3738630176611500533

`record[A022844(A008611(n))^A008611(n)]`
-/

namespace A121245.P3738630176611500533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022844 (A008611 n).toNat : ℚ) ^ (A008611 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121245.P3738630176611500533

namespace A121245

/-- `record[A022844(A008611(n))^A008611(n)]` -/
def P3738630176611500533.Spec : Prop :=
  ∀ n, P3738630176611500533.a n = (A121245 (n + 1) : ℚ)

end A121245

/-! ## A121245.P10995111991467717618

`record[A022844(A028242(n))^A028242(n)]`
-/

namespace A121245.P10995111991467717618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022844 (A028242 n).toNat : ℚ) ^ (A028242 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121245.P10995111991467717618

namespace A121245

/-- `record[A022844(A028242(n))^A028242(n)]` -/
def P10995111991467717618.Spec : Prop :=
  ∀ n, P10995111991467717618.a n = (A121245 (n + 1) : ℚ)

end A121245

/-!
# A121246: a(n) = ceiling((Pi^n)*(e^n)).

The programs for A121246, the canonical program `A121246.P2636457287280973120` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121246 has offset 1).

The definition of A121246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121246.P15116356691357612447

`ceil((π*e)^(n+1))`
-/

namespace A121246.P15116356691357612447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi * Real.exp 1) ^ (n + 1)⌉

end

end A121246.P15116356691357612447

namespace A121246

/-- `ceil((π*e)^(n+1))` -/
def P15116356691357612447.Spec : Prop :=
  ∀ n, P15116356691357612447.a n = A121246 (n + 1)

end A121246

/-! ## A121246.P2636457287280973120

`A062541(n+1)+1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121246

/-- `A062541(n+1)+1` -/
def P2636457287280973120.Spec : Prop :=
  ∀ n, P2636457287280973120.a n = A121246 (n + 1)

theorem P2636457287280973120.correct : P2636457287280973120.Spec := by
  intro n
  simp only [A121246, Nat.add_sub_cancel]

end A121246

/-!
# A121247: Floor((Pi*n)^n).

The programs for A121247, there is no canonical definition to state claims against.
-/

/-! ## A121247.P16087743105134865028

`floor((π*(n+1))^(n+1))`
-/

namespace A121247.P16087743105134865028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi * (n + 1 : ℝ)) ^ (n + 1)⌋

end

end A121247.P16087743105134865028

/-! ## A121247.P4532039553488619329

`A121276(n+1)-1`
-/

namespace A121247.P4532039553488619329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121276 (n + 1) - 1

end

end A121247.P4532039553488619329

/-! ## A121247.P17187260752979885685

`record[A121276(A133310(n))-1]`
-/

namespace A121247.P17187260752979885685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121276 (A133310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121247.P17187260752979885685

/-! ## A121247.P499279572144906418

`A134824(n+2)+A121276(n+1)`
-/

namespace A121247.P499279572144906418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A121276 (n + 1)

end

end A121247.P499279572144906418

/-! ## A121247.P17200727182809026786

`abs(A121276(n+1)+A057428(n+1))`
-/

namespace A121247.P17200727182809026786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121276 (n + 1) + A057428 (n + 1)|

end

end A121247.P17200727182809026786

/-!
# A121248: Numbers k such that the sum of the first 2^k primes is a prime.

The programs for A121248, there is no canonical definition to state claims against.
-/

/-! ## A121248.P5410804719416268178

`record[and(A009994(3*n+1), A101200(n+1))]`
-/

namespace A121248.P5410804719416268178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009994 (3 * n + 1)) (A101200 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121248.P5410804719416268178

/-!
# A121250: Numbers n such that n^2 + 14 is prime.

The programs for A121250, there is no canonical definition to state claims against.
-/

/-! ## A121250.P16904814530577789686

`sqrt(A243449(n+1)-14)`
-/

namespace A121250.P16904814530577789686
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A243449 (n + 1) - 14 : ℝ)

end

end A121250.P16904814530577789686

/-! ## A121250.P13693495071080411158

`A159075(n+1)+floor(sqrt(A243449(n+1)))`
-/

namespace A121250.P13693495071080411158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 1) + Int.sqrt (A243449 (n + 1))

end

end A121250.P13693495071080411158

/-! ## A121250.P3253069911295323522

`root(A243449(n+1)-14, A133265(A133265(n)))`
-/

namespace A121250.P3253069911295323522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243449 (n + 1) - 14 : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A121250.P3253069911295323522

/-! ## A121250.P10251853781298636598

`A016945(A121817(n+1))`
-/

namespace A121250.P10251853781298636598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 (A121817 (n + 1)).toNat

end

end A121250.P10251853781298636598

/-! ## A121250.P2360743836199096486

`(A243449(n+1)-14)^2^A008683(A005382(n+1))`
-/

namespace A121250.P2360743836199096486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A243449 (n + 1) - 14 : ℝ) ^ ((2 : ℚ) ^ (A008683 (A005382 (n + 1)).toNat : ℤ) : ℝ)

end

end A121250.P2360743836199096486

/-! ## A121250.P1015975468455718455

`A079945(A079945(3*A121817(n+1)))`
-/

namespace A121250.P1015975468455718455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079945 (A079945 (3 * A121817 (n + 1)).toNat).toNat

end

end A121250.P1015975468455718455

/-! ## A121250.P1585555674845992259

`A029579(floor(sqrt(A243449(n+1))))`
-/

namespace A121250.P1585555674845992259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.sqrt (A243449 (n + 1))).toNat

end

end A121250.P1585555674845992259

/-!
# A121251: Number of labeled graphs without isolated vertices and with n edges.

The programs for A121251, there is no canonical definition to state claims against.
-/

/-! ## A121251.P5476799676206777694

`ceil(A173219(n)/2)`
-/

namespace A121251.P5476799676206777694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173219 n : ℚ) / 2⌉

end

end A121251.P5476799676206777694

/-! ## A121251.P5495047823662000029

`ceil(A265937(n)/4)`
-/

namespace A121251.P5495047823662000029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265937 n : ℚ) / 4⌉

end

end A121251.P5495047823662000029

/-! ## A121251.P13688845008290005094

`A331277(∑[n+2]+3)`
-/

namespace A121251.P13688845008290005094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331277 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A121251.P13688845008290005094

/-! ## A121251.P16925058090225485760

`A173219(A028310(n))/2`
-/

namespace A121251.P16925058090225485760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173219 (A028310 n).toNat : ℚ) / 2

end

end A121251.P16925058090225485760

/-! ## A121251.P8544802062657557848

`A011782(n)/A011782(n+1)*A173219(n)`
-/

namespace A121251.P8544802062657557848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) / (A011782 (n + 1) : ℚ) * (A173219 n : ℚ)

end

end A121251.P8544802062657557848

/-!
# A121252: Number of labeled digraphs without isolated vertices and with n arcs.

The programs for A121252, there is no canonical definition to state claims against.
-/

/-! ## A121252.P10814176519667187088

`ceil(A173218(n)/2)`
-/

namespace A121252.P10814176519667187088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173218 n : ℚ) / 2⌉

end

end A121252.P10814176519667187088

/-! ## A121252.P1407917914042515647

`A173218(n)/A029653(A000217(n))`
-/

namespace A121252.P1407917914042515647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173218 n : ℚ) / (A029653 (A000217 n).toNat : ℚ)

end

end A121252.P1407917914042515647

/-! ## A121252.P13710407759325645964

`A173218(n)/A014963(A062383(n))`
-/

namespace A121252.P13710407759325645964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173218 n : ℚ) / (A014963 (A062383 n).toNat : ℚ)

end

end A121252.P13710407759325645964

/-! ## A121252.P3522029554965801211

`A173218(n)/A014963(A000079(n))`
-/

namespace A121252.P3522029554965801211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173218 n : ℚ) / (A014963 (A000079 n).toNat : ℚ)

end

end A121252.P3522029554965801211

/-!
# A121253: a(n) = a(n-1)*a(n-3)+1 with a(0)=a(1)=a(2)=0.

The programs for A121253, the canonical program `A121253.P13329130382805795486` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121253 has offset 0).

The definition of A121253 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)+1` (program `A121253.P13329130382805795486`, by `A121253.P13329130382805795486.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121253.P13329130382805795486

`a(n-1)*a(n-3)+1` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121253

/-- `a(n-1)*a(n-3)+1` -/
def P13329130382805795486.Spec : Prop :=
  ∀ n, (P13329130382805795486.a n : ℤ) = A121253 n

theorem P13329130382805795486.correct : P13329130382805795486.Spec := by
  intro n
  simp only [A121253]

end A121253

/-! ## A121253.P15016961950440952954

`1-floor(-a(n-1))*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A121253.P15016961950440952954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 - (-a (n - 1)) * a (n - 3)

end

end A121253.P15016961950440952954

namespace A121253

/-- `1-floor(-a(n-1))*a(n-3)` -/
def P15016961950440952954.Spec : Prop :=
  ∀ n, P15016961950440952954.a n = A121253 n

end A121253

/-! ## A121253.P17472902958553288522

`1-round(-a(n-1))*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A121253.P17472902958553288522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 - (-a (n - 1)) * a (n - 3)

end

end A121253.P17472902958553288522

namespace A121253

/-- `1-round(-a(n-1))*a(n-3)` -/
def P17472902958553288522.Spec : Prop :=
  ∀ n, P17472902958553288522.a n = A121253 n

end A121253

/-! ## A121253.P8954861437826653357

`-xor(a(n-3)*a(n-1), -1)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A121253.P8954861437826653357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  -Int.xor (a (n - 3) * a (n - 1)) (-1)

end

end A121253.P8954861437826653357

namespace A121253

/-- `-xor(a(n-3)*a(n-1), -1)` -/
def P8954861437826653357.Spec : Prop :=
  ∀ n, P8954861437826653357.a n = A121253 n

end A121253

/-! ## A121253.P6629251526486146991

`1-(char[1]-a(n-1))*a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A121253.P6629251526486146991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1)) * a (n - 3)

end

end A121253.P6629251526486146991

namespace A121253

/-- `1-(char[1]-a(n-1))*a(n-3)` -/
def P6629251526486146991.Spec : Prop :=
  ∀ n, P6629251526486146991.a n = A121253 n

end A121253

/-!
# A121254: Number of conjugated cycles composed of six carbons in (n,n)-nanotubes in terms of the number of naphthalene units.

The programs for A121254, the canonical program `A121254.P16208038616091930799` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121254 has offset 1).

The definition of A121254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121254.P16208038616091930799

`4*A117202(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121254

/-- `4*A117202(n+1)` -/
def P16208038616091930799.Spec : Prop :=
  ∀ n, P16208038616091930799.a n = A121254 (n + 1)

theorem P16208038616091930799.correct : P16208038616091930799.Spec := by
  intro n
  simp only [A121254, Nat.add_sub_cancel]

end A121254

/-! ## A121254.P14623141692929521905

`4*A128620(2*n)`
-/

namespace A121254.P14623141692929521905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A128620 (2 * n)

end

end A121254.P14623141692929521905

namespace A121254

/-- `4*A128620(2*n)` -/
def P14623141692929521905.Spec : Prop :=
  ∀ n, P14623141692929521905.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P13498131303373349676

`2*A099920(Δ[n²])`
-/

namespace A121254.P13498131303373349676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099920 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A121254.P13498131303373349676

namespace A121254

/-- `2*A099920(Δ[n²])` -/
def P13498131303373349676.Spec : Prop :=
  ∀ n, P13498131303373349676.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P9186070970186956017

`(n+1)/2*A155110(n)`
-/

namespace A121254.P9186070970186956017
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A155110 n : ℚ)

end

end A121254.P9186070970186956017

namespace A121254

/-- `(n+1)/2*A155110(n)` -/
def P9186070970186956017.Spec : Prop :=
  ∀ n, P9186070970186956017.a n = (A121254 (n + 1) : ℚ)

end A121254

/-! ## A121254.P13766958981054513964

`(n+1)*A022087(Δ[n²])`
-/

namespace A121254.P13766958981054513964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022087 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A121254.P13766958981054513964

namespace A121254

/-- `(n+1)*A022087(Δ[n²])` -/
def P13766958981054513964.Spec : Prop :=
  ∀ n, P13766958981054513964.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P8438535823434378554

`2*(n+1)*A052995(n+1)`
-/

namespace A121254.P8438535823434378554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A052995 (n + 1))

end

end A121254.P8438535823434378554

namespace A121254

/-- `2*(n+1)*A052995(n+1)` -/
def P8438535823434378554.Spec : Prop :=
  ∀ n, P8438535823434378554.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P13366606037436372901

`2*(n+1)*A055819(n+1)`
-/

namespace A121254.P13366606037436372901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * A055819 (n + 1))

end

end A121254.P13366606037436372901

namespace A121254

/-- `2*(n+1)*A055819(n+1)` -/
def P13366606037436372901.Spec : Prop :=
  ∀ n, P13366606037436372901.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P10525848334476653559

`4*(n+1)*A001519(n+1)`
-/

namespace A121254.P10525848334476653559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A001519 (n + 1)

end

end A121254.P10525848334476653559

namespace A121254

/-- `4*(n+1)*A001519(n+1)` -/
def P10525848334476653559.Spec : Prop :=
  ∀ n, P10525848334476653559.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P8479800512433720487

`4*(n+1)*A000045(Δ[n²])`
-/

namespace A121254.P8479800512433720487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A121254.P8479800512433720487

namespace A121254

/-- `4*(n+1)*A000045(Δ[n²])` -/
def P8479800512433720487.Spec : Prop :=
  ∀ n, P8479800512433720487.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P1065238415645987080

`4*(n+1)*Δ[A000045(2*n)]`
-/

namespace A121254.P1065238415645987080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * (f1 (n + 1) - f1 n))

end

end A121254.P1065238415645987080

namespace A121254

/-- `4*(n+1)*Δ[A000045(2*n)]` -/
def P1065238415645987080.Spec : Prop :=
  ∀ n, P1065238415645987080.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P10907186487532978454

`4*(n+1)*Δ[A001611(2*n)]`
-/

namespace A121254.P10907186487532978454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * (f1 (n + 1) - f1 n)

end

end A121254.P10907186487532978454

namespace A121254

/-- `4*(n+1)*Δ[A001611(2*n)]` -/
def P10907186487532978454.Spec : Prop :=
  ∀ n, P10907186487532978454.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P8665042520775754968

`4*(n+1)*A000045(record[xor(1, n)])`
-/

namespace A121254.P8665042520775754968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A000045 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A121254.P8665042520775754968

namespace A121254

/-- `4*(n+1)*A000045(record[xor(1, n)])` -/
def P8665042520775754968.Spec : Prop :=
  ∀ n, P8665042520775754968.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P14648262348844966556

`4*(n+1)*A000045(2*n+1)`
-/

namespace A121254.P14648262348844966556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) * A000045 (2 * n + 1)

end

end A121254.P14648262348844966556

namespace A121254

/-- `4*(n+1)*A000045(2*n+1)` -/
def P14648262348844966556.Spec : Prop :=
  ∀ n, P14648262348844966556.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P8559150000501306885

`A059558(n+1)*A122367(n)`
-/

namespace A121254.P8559150000501306885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059558 (n + 1) * A122367 n

end

end A121254.P8559150000501306885

namespace A121254

/-- `A059558(n+1)*A122367(n)` -/
def P8559150000501306885.Spec : Prop :=
  ∀ n, P8559150000501306885.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P13036693108040579525

`2*(A054444(n)+A027989(n))`
-/

namespace A121254.P13036693108040579525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054444 n + A027989 n)

end

end A121254.P13036693108040579525

namespace A121254

/-- `2*(A054444(n)+A027989(n))` -/
def P13036693108040579525.Spec : Prop :=
  ∀ n, P13036693108040579525.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P4749011813313945863

`A203573(n)+A099920(2*n)`
-/

namespace A121254.P4749011813313945863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203573 n + A099920 (2 * n)

end

end A121254.P4749011813313945863

namespace A121254

/-- `A203573(n)+A099920(2*n)` -/
def P4749011813313945863.Spec : Prop :=
  ∀ n, P4749011813313945863.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P1098812612581884969

`A008586(n+1)*A127968(2*n)`
-/

namespace A121254.P1098812612581884969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) * A127968 (2 * n)

end

end A121254.P1098812612581884969

namespace A121254

/-- `A008586(n+1)*A127968(2*n)` -/
def P1098812612581884969.Spec : Prop :=
  ∀ n, P1098812612581884969.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P18267743653360916441

`A099924(2*n)+A099920(2*n)`
-/

namespace A121254.P18267743653360916441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099924 (2 * n) + A099920 (2 * n)

end

end A121254.P18267743653360916441

namespace A121254

/-- `A099924(2*n)+A099920(2*n)` -/
def P18267743653360916441.Spec : Prop :=
  ∀ n, P18267743653360916441.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P14686023645087441841

`A000045(A005408(n))*4*(n+1)`
-/

namespace A121254.P14686023645087441841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A005408 n).toNat * (4 * (n + 1) : ℤ)

end

end A121254.P14686023645087441841

namespace A121254

/-- `A000045(A005408(n))*4*(n+1)` -/
def P14686023645087441841.Spec : Prop :=
  ∀ n, P14686023645087441841.a n = A121254 (n + 1)

end A121254

/-! ## A121254.P4639039720369533265

`A000045(2*n+1)*Δ[A001844(n)]`
-/

namespace A121254.P4639039720369533265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n + 1) * (f1 (n + 1) - f1 n)

end

end A121254.P4639039720369533265

namespace A121254

/-- `A000045(2*n+1)*Δ[A001844(n)]` -/
def P4639039720369533265.Spec : Prop :=
  ∀ n, P4639039720369533265.a n = A121254 (n + 1)

end A121254

/-!
# A121255: Number of conjugated cycles composed of ten carbons in (n,n)-nanotubes in terms of the number of naphthalene units.

The programs for A121255, the canonical program `A121255.P2170403274723306593` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121255 has offset 1).

The definition of A121255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 233 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121255.P2170403274723306593

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=36, a(3)=128`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121255

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P2170403274723306593.Spec : Prop :=
  ∀ n, P2170403274723306593.a n = A121255 (n + 1)

theorem P2170403274723306593.correct : P2170403274723306593.Spec := by
  intro n
  simp only [A121255, Nat.add_sub_cancel]

end A121255

/-! ## A121255.P14884154222584511788

`A309874(2*(n+1))-2`
-/

namespace A121255.P14884154222584511788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309874 (2 * (n + 1)) - 2

end

end A121255.P14884154222584511788

namespace A121255

/-- `A309874(2*(n+1))-2` -/
def P14884154222584511788.Spec : Prop :=
  ∀ n, P14884154222584511788.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P9022280734359768078

`2*A006490(2*(n+1))`
-/

namespace A121255.P9022280734359768078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006490 (2 * (n + 1))

end

end A121255.P9022280734359768078

namespace A121255

/-- `2*A006490(2*(n+1))` -/
def P9022280734359768078.Spec : Prop :=
  ∀ n, P9022280734359768078.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P14408568026451679607

`(n+1)*A022087(2*n)`
-/

namespace A121255.P14408568026451679607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A022087 (2 * n)

end

end A121255.P14408568026451679607

namespace A121255

/-- `(n+1)*A022087(2*n)` -/
def P14408568026451679607.Spec : Prop :=
  ∀ n, P14408568026451679607.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P17830250927613176402

`4*(n+1)*A001906(n)`
-/

namespace A121255.P17830250927613176402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A001906 n)

end

end A121255.P17830250927613176402

namespace A121255

/-- `4*(n+1)*A001906(n)` -/
def P17830250927613176402.Spec : Prop :=
  ∀ n, P17830250927613176402.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P1571284416049118836

`Δ[A032908(n)]*4*(n+1)`
-/

namespace A121255.P1571284416049118836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (4 * (n + 1) : ℤ)

end

end A121255.P1571284416049118836

namespace A121255

/-- `Δ[A032908(n)]*4*(n+1)` -/
def P1571284416049118836.Spec : Prop :=
  ∀ n, P1571284416049118836.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P15739087674912404643

`2*(n+1)*A062114(2*n)`
-/

namespace A121255.P15739087674912404643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A062114 (2 * n)

end

end A121255.P15739087674912404643

namespace A121255

/-- `2*(n+1)*A062114(2*n)` -/
def P15739087674912404643.Spec : Prop :=
  ∀ n, P15739087674912404643.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P3408989327005790166

`4*(n+1)*A000045(2*n)`
-/

namespace A121255.P3408989327005790166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A000045 (2 * n))

end

end A121255.P3408989327005790166

namespace A121255

/-- `4*(n+1)*A000045(2*n)` -/
def P3408989327005790166.Spec : Prop :=
  ∀ n, P3408989327005790166.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P14261526676221066902

`4*(n+1)*A212804(2*n+1)`
-/

namespace A121255.P14261526676221066902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ((n + 1 : ℤ) * A212804 (2 * n + 1))

end

end A121255.P14261526676221066902

namespace A121255

/-- `4*(n+1)*A212804(2*n+1)` -/
def P14261526676221066902.Spec : Prop :=
  ∀ n, P14261526676221066902.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P5736102419074485655

`(A001611(2*n)-1)*4*(n+1)`
-/

namespace A121255.P5736102419074485655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n) - 1) * (4 * (n + 1) : ℤ)

end

end A121255.P5736102419074485655

namespace A121255

/-- `(A001611(2*n)-1)*4*(n+1)` -/
def P5736102419074485655.Spec : Prop :=
  ∀ n, P5736102419074485655.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P1598131902813498418

`2*2*(n+1)*A005013(2*n)`
-/

namespace A121255.P1598131902813498418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (2 * (n + 1)) : ℤ) * A005013 (2 * n)

end

end A121255.P1598131902813498418

namespace A121255

/-- `2*2*(n+1)*A005013(2*n)` -/
def P1598131902813498418.Spec : Prop :=
  ∀ n, P1598131902813498418.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P13741035691361369735

`A343539(n)-A167478(n)`
-/

namespace A121255.P13741035691361369735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343539 n - A167478 n

end

end A121255.P13741035691361369735

namespace A121255

/-- `A343539(n)-A167478(n)` -/
def P13741035691361369735.Spec : Prop :=
  ∀ n, P13741035691361369735.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P263955125937140842

`A099920(n)*A156279(n)`
-/

namespace A121255.P263955125937140842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n * A156279 n

end

end A121255.P263955125937140842

namespace A121255

/-- `A099920(n)*A156279(n)` -/
def P263955125937140842.Spec : Prop :=
  ∀ n, P263955125937140842.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P667282486932138915

`A001906(n)*A059558(n+1)`
-/

namespace A121255.P667282486932138915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A059558 (n + 1)

end

end A121255.P667282486932138915

namespace A121255

/-- `A001906(n)*A059558(n+1)` -/
def P667282486932138915.Spec : Prop :=
  ∀ n, P667282486932138915.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P2049636106818622028

`A000045(2*n)*Δ[A001844(n)]`
-/

namespace A121255.P2049636106818622028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * (f1 (n + 1) - f1 n)

end

end A121255.P2049636106818622028

namespace A121255

/-- `A000045(2*n)*Δ[A001844(n)]` -/
def P2049636106818622028.Spec : Prop :=
  ∀ n, P2049636106818622028.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P1812953073672370422

`A000045(2*n)*Δ[A046092(n)]`
-/

namespace A121255.P1812953073672370422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * (f1 (n + 1) - f1 n)

end

end A121255.P1812953073672370422

namespace A121255

/-- `A000045(2*n)*Δ[A046092(n)]` -/
def P1812953073672370422.Spec : Prop :=
  ∀ n, P1812953073672370422.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P13423894294185302751

`A111282(n+1)*A163300(n+1)`
-/

namespace A121255.P13423894294185302751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (n + 1) * A163300 (n + 1)

end

end A121255.P13423894294185302751

namespace A121255

/-- `A111282(n+1)*A163300(n+1)` -/
def P13423894294185302751.Spec : Prop :=
  ∀ n, P13423894294185302751.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P17583244527950554590

`A000045(2*n)*A008574(n+1)`
-/

namespace A121255.P17583244527950554590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A008574 (n + 1)

end

end A121255.P17583244527950554590

namespace A121255

/-- `A000045(2*n)*A008574(n+1)` -/
def P17583244527950554590.Spec : Prop :=
  ∀ n, P17583244527950554590.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P4532123999422948651

`A000045(2*n)*A008586(n+1)`
-/

namespace A121255.P4532123999422948651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) * A008586 (n + 1)

end

end A121255.P4532123999422948651

namespace A121255

/-- `A000045(2*n)*A008586(n+1)` -/
def P4532123999422948651.Spec : Prop :=
  ∀ n, P4532123999422948651.a n = A121255 (n + 1)

end A121255

/-! ## A121255.P8768050850977408999

`A006355(2*n+1)*A103517(n)`
-/

namespace A121255.P8768050850977408999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (2 * n + 1) * A103517 n

end

end A121255.P8768050850977408999

namespace A121255

/-- `A006355(2*n+1)*A103517(n)` -/
def P8768050850977408999.Spec : Prop :=
  ∀ n, P8768050850977408999.a n = A121255 (n + 1)

end A121255

/-!
# A121256: a(n) = a(n-1)*a(n-3) - 1, starting with a(0)=a(1)=a(2)=2.

The programs for A121256, the canonical program `A121256.P141823623086615065` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121256 has offset 0).

The definition of A121256 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-3)-1` (program `A121256.P141823623086615065`, by `A121256.P141823623086615065.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121256.P141823623086615065

`a(n-1)*a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121256

/-- `a(n-1)*a(n-3)-1` -/
def P141823623086615065.Spec : Prop :=
  ∀ n, P141823623086615065.a n = A121256 n

theorem P141823623086615065.correct : P141823623086615065.Spec := by
  intro n
  simp only [A121256]

end A121256

/-! ## A121256.P5237069065898539247

`a(n-1)/a(n-3)^(-1)-1` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A121256.P5237069065898539247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  a (n - 1) / a (n - 3) ^ (-1 : ℤ) - 1

end

end A121256.P5237069065898539247

namespace A121256

/-- `a(n-1)/a(n-3)^(-1)-1` -/
def P5237069065898539247.Spec : Prop :=
  ∀ n, P5237069065898539247.a n = (A121256 n : ℚ)

end A121256

/-! ## A121256.P13126186401565416727

`A199969(a(n-1)*a(n-3))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A121256.P13126186401565416727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  A199969 (a (n - 1) * a (n - 3)).toNat

end

end A121256.P13126186401565416727

namespace A121256

/-- `A199969(a(n-1)*a(n-3))` -/
def P13126186401565416727.Spec : Prop :=
  ∀ n, P13126186401565416727.a n = A121256 n

end A121256

/-! ## A121256.P9999071114208291426

`A233583(a(n-1)*a(n-3))` with `a(0)=2, a(1)=2, a(2)=2`
-/

namespace A121256.P9999071114208291426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2] fun n a =>
  A233583 (a (n - 1) * a (n - 3)).toNat

end

end A121256.P9999071114208291426

namespace A121256

/-- `A233583(a(n-1)*a(n-3))` -/
def P9999071114208291426.Spec : Prop :=
  ∀ n, P9999071114208291426.a n = A121256 n

end A121256

/-!
# A121257: Number of conjugated cycles composed of six carbons in (1,1)-nanotubes in terms of the number of naphthalene units.

The programs for A121257, the canonical program `A121257.P17841054764828038356` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121257 has offset 1).

The definition of A121257 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121257.P17841054764828038356

`4*A001870(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121257

/-- `4*A001870(n)` -/
def P17841054764828038356.Spec : Prop :=
  ∀ n, P17841054764828038356.a n = A121257 (n + 1)

theorem P17841054764828038356.correct : P17841054764828038356.Spec := by
  intro n
  simp only [A121257, Nat.add_sub_cancel]

end A121257

/-! ## A121257.P4000737526308422832

`6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=4, a(1)=20, a(2)=76, a(3)=260`
-/

namespace A121257.P4000737526308422832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 20, 76, 260] fun n a =>
  6 * a (n - 1) - 11 * a (n - 2) + 6 * a (n - 3) - a (n - 4)

end

end A121257.P4000737526308422832

namespace A121257

/-- `6*a(n-1)-11*a(n-2)+6*a(n-3)-a(n-4)` -/
def P4000737526308422832.Spec : Prop :=
  ∀ n, P4000737526308422832.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P244305617159125046

`2*A281199(n+2)`
-/

namespace A121257.P244305617159125046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A281199 (n + 2)

end

end A121257.P244305617159125046

namespace A121257

/-- `2*A281199(n+2)` -/
def P244305617159125046.Spec : Prop :=
  ∀ n, P244305617159125046.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P419280374978446529

`∑[2*Δ[A166336(n)]]`
-/

namespace A121257.P419280374978446529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166336 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121257.P419280374978446529

namespace A121257

/-- `∑[2*Δ[A166336(n)]]` -/
def P419280374978446529.Spec : Prop :=
  ∀ n, P419280374978446529.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P6981846466373157364

`∑[∑[4*A038731(n)]]`
-/

namespace A121257.P6981846466373157364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A038731 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121257.P6981846466373157364

namespace A121257

/-- `∑[∑[4*A038731(n)]]` -/
def P6981846466373157364.Spec : Prop :=
  ∀ n, P6981846466373157364.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P4381674109422289666

`∑[A320947(2*(n+1))]`
-/

namespace A121257.P4381674109422289666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320947 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121257.P4381674109422289666

namespace A121257

/-- `∑[A320947(2*(n+1))]` -/
def P4381674109422289666.Spec : Prop :=
  ∀ n, P4381674109422289666.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P7791935175211653369

`∑[4*A030267(n+1)]`
-/

namespace A121257.P7791935175211653369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A030267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121257.P7791935175211653369

namespace A121257

/-- `∑[4*A030267(n+1)]` -/
def P7791935175211653369.Spec : Prop :=
  ∀ n, P7791935175211653369.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P11672545886581049131

`2*(A166336(n+1)-1)`
-/

namespace A121257.P11672545886581049131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166336 (n + 1) - 1)

end

end A121257.P11672545886581049131

namespace A121257

/-- `2*(A166336(n+1)-1)` -/
def P11672545886581049131.Spec : Prop :=
  ∀ n, P11672545886581049131.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P2360287130286911259

`2*A001629(2*n+3)`
-/

namespace A121257.P2360287130286911259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001629 (2 * n + 3)

end

end A121257.P2360287130286911259

namespace A121257

/-- `2*A001629(2*n+3)` -/
def P2360287130286911259.Spec : Prop :=
  ∀ n, P2360287130286911259.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P747349737914576034

`4*A024458(2*(n+1))`
-/

namespace A121257.P747349737914576034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024458 (2 * (n + 1))

end

end A121257.P747349737914576034

namespace A121257

/-- `4*A024458(2*(n+1))` -/
def P747349737914576034.Spec : Prop :=
  ∀ n, P747349737914576034.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P686891718274194084

`4*A025078(2*n+1)`
-/

namespace A121257.P686891718274194084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A025078 (2 * n + 1)

end

end A121257.P686891718274194084

namespace A121257

/-- `4*A025078(2*n+1)` -/
def P686891718274194084.Spec : Prop :=
  ∀ n, P686891718274194084.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P9442596920311980772

`4*A089089(2*(n+1))`
-/

namespace A121257.P9442596920311980772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089089 (2 * (n + 1))

end

end A121257.P9442596920311980772

namespace A121257

/-- `4*A089089(2*(n+1))` -/
def P9442596920311980772.Spec : Prop :=
  ∀ n, P9442596920311980772.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P28117265822112711

`4*A089098(2*(n+1))`
-/

namespace A121257.P28117265822112711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A089098 (2 * (n + 1))

end

end A121257.P28117265822112711

namespace A121257

/-- `4*A089098(2*(n+1))` -/
def P28117265822112711.Spec : Prop :=
  ∀ n, P28117265822112711.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P4148168873401146395

`∑[2*A029907(2*(n+1))]`
-/

namespace A121257.P4148168873401146395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029907 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121257.P4148168873401146395

namespace A121257

/-- `∑[2*A029907(2*(n+1))]` -/
def P4148168873401146395.Spec : Prop :=
  ∀ n, P4148168873401146395.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P15980597509069915469

`A001870(n+1)-A167423(n)`
-/

namespace A121257.P15980597509069915469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001870 (n + 1) - A167423 n

end

end A121257.P15980597509069915469

namespace A121257

/-- `A001870(n+1)-A167423(n)` -/
def P15980597509069915469.Spec : Prop :=
  ∀ n, P15980597509069915469.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P11908252587017854592

`A001871(n+1)-A059505(n+1)`
-/

namespace A121257.P11908252587017854592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001871 (n + 1) - A059505 (n + 1)

end

end A121257.P11908252587017854592

namespace A121257

/-- `A001871(n+1)-A059505(n+1)` -/
def P11908252587017854592.Spec : Prop :=
  ∀ n, P11908252587017854592.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P207625996182483667

`2*(A054444(n+1)-A027989(n+1))`
-/

namespace A121257.P207625996182483667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054444 (n + 1) - A027989 (n + 1))

end

end A121257.P207625996182483667

namespace A121257

/-- `2*(A054444(n+1)-A027989(n+1))` -/
def P207625996182483667.Spec : Prop :=
  ∀ n, P207625996182483667.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P13826350904676174249

`A023610(2*n+1)+A010049(2*(n+1))`
-/

namespace A121257.P13826350904676174249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (2 * n + 1) + A010049 (2 * (n + 1))

end

end A121257.P13826350904676174249

namespace A121257

/-- `A023610(2*n+1)+A010049(2*(n+1))` -/
def P13826350904676174249.Spec : Prop :=
  ∀ n, P13826350904676174249.a n = A121257 (n + 1)

end A121257

/-! ## A121257.P4595942558787663749

`2*(A010049(2*n)+A007502(2*(n+1)))`
-/

namespace A121257.P4595942558787663749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A010049 (2 * n) + A007502 (2 * (n + 1)))

end

end A121257.P4595942558787663749

namespace A121257

/-- `2*(A010049(2*n)+A007502(2*(n+1)))` -/
def P4595942558787663749.Spec : Prop :=
  ∀ n, P4595942558787663749.a n = A121257 (n + 1)

end A121257

/-!
# A121258: a(n) = a(n-1)*a(n-2)*a(n-3) - 1 with a(0)=a(1)=a(2)=2.

The programs for A121258, the canonical program `A121258.P15130234278378042824` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121258 has offset 0).

The definition of A121258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)*a(n-3)-1` (program `A121258.P15130234278378042824`, by `A121258.P15130234278378042824.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121258.P15130234278378042824

`a(n-1)*a(n-2)*a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121258

/-- `a(n-1)*a(n-2)*a(n-3)-1` -/
def P15130234278378042824.Spec : Prop :=
  ∀ n, P15130234278378042824.a n = A121258 n

theorem P15130234278378042824.correct : P15130234278378042824.Spec := by
  intro n
  simp only [A121258]

end A121258

/-! ## A121258.P10434926537810851285

`A201163(a(n-1))` with `a(0)=2, a(1)=2, a(2)=2, a(3)=7`
-/

namespace A121258.P10434926537810851285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 7] fun n a =>
  A201163 (a (n - 1)).toNat

end

end A121258.P10434926537810851285

namespace A121258

/-- `A201163(a(n-1))` -/
def P10434926537810851285.Spec : Prop :=
  ∀ n, P10434926537810851285.a n = A121258 n

end A121258

/-! ## A121258.P2360692246123504585

`A000096(a(n-1)-1)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=7`
-/

namespace A121258.P2360692246123504585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 2, 7] fun n a =>
  A000096 (a (n - 1) - 1).toNat

end

end A121258.P2360692246123504585

namespace A121258

/-- `A000096(a(n-1)-1)` -/
def P2360692246123504585.Spec : Prop :=
  ∀ n, P2360692246123504585.a n = A121258 n

end A121258

/-!
# A121259: Numbers k such that (3*k^2 + 1)/4 is prime.

The programs for A121259, there is no canonical definition to state claims against.
-/

/-! ## A121259.P8644480968372191043

`2*A111251(n+1)+1`
-/

namespace A121259.P8644480968372191043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111251 (n + 1) + 1

end

end A121259.P8644480968372191043

/-! ## A121259.P15964053826583018021

`2*A002504(n+1)-1`
-/

namespace A121259.P15964053826583018021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002504 (n + 1) - 1

end

end A121259.P15964053826583018021

/-! ## A121259.P412457783975800130

`sqrt((4*A002407(n+1)-1)/3)`
-/

namespace A121259.P412457783975800130
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((4 * A002407 (n + 1) - 1 : ℚ) / 3 : ℝ)

end

end A121259.P412457783975800130

/-! ## A121259.P13496836204192906564

`ceil(2*A002640(n+1)/3)`
-/

namespace A121259.P13496836204192906564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((A002640 (n + 1) : ℚ) / 3)⌉

end

end A121259.P13496836204192906564

/-! ## A121259.P11574580616131774209

`A111251(n+1)+A002504(n+1)`
-/

namespace A121259.P11574580616131774209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111251 (n + 1) + A002504 (n + 1)

end

end A121259.P11574580616131774209

/-! ## A121259.P6695333368903711819

`A002640(n+1)-A111251(n+1)`
-/

namespace A121259.P6695333368903711819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002640 (n + 1) - A111251 (n + 1)

end

end A121259.P6695333368903711819

/-! ## A121259.P17799175053376961380

`A002407(n+1)%A002640(n+1)`
-/

namespace A121259.P17799175053376961380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002407 (n + 1)) (A002640 (n + 1))

end

end A121259.P17799175053376961380

/-! ## A121259.P4827655935424175912

`2*eq[1, A350090(n)]+1`
-/

namespace A121259.P4827655935424175912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A121259.P4827655935424175912

/-! ## A121259.P16638924809702580295

`A005408(A111251(n+1))`
-/

namespace A121259.P16638924809702580295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A111251 (n + 1)).toNat

end

end A121259.P16638924809702580295

/-! ## A121259.P13998557897454588081

`A004273(A002504(n+1))`
-/

namespace A121259.P13998557897454588081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A002504 (n + 1)).toNat

end

end A121259.P13998557897454588081

/-! ## A121259.P6579014638078177781

`A004273(A111251(n+1)+1)`
-/

namespace A121259.P6579014638078177781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A111251 (n + 1) + 1).toNat

end

end A121259.P6579014638078177781

/-! ## A121259.P3123649625167390162

`A004280(A111251(n+1)+2)`
-/

namespace A121259.P3123649625167390162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A111251 (n + 1) + 2).toNat

end

end A121259.P3123649625167390162

/-! ## A121259.P9413037062622740956

`A004442(2*A111251(n+1))`
-/

namespace A121259.P9413037062622740956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A111251 (n + 1)).toNat

end

end A121259.P9413037062622740956

/-! ## A121259.P14913920345846423792

`A020725(2*A111251(n+1))`
-/

namespace A121259.P14913920345846423792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * A111251 (n + 1)).toNat

end

end A121259.P14913920345846423792

/-! ## A121259.P5822282482196641819

`A109613(2*A111251(n+1))`
-/

namespace A121259.P5822282482196641819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A111251 (n + 1)).toNat

end

end A121259.P5822282482196641819

/-! ## A121259.P6792425250418060749

`A023443(2*A002504(n+1))`
-/

namespace A121259.P6792425250418060749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A002504 (n + 1)).toNat

end

end A121259.P6792425250418060749

/-! ## A121259.P13904709624738371802

`A004396(A002640(n+1))`
-/

namespace A121259.P13904709624738371802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A002640 (n + 1)).toNat

end

end A121259.P13904709624738371802

/-! ## A121259.P16447025948573180943

`A004523(A002640(n+1)+1)`
-/

namespace A121259.P16447025948573180943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A002640 (n + 1) + 1).toNat

end

end A121259.P16447025948573180943

/-! ## A121259.P10107533158981780264

`A008620(2*A002640(n+1))`
-/

namespace A121259.P10107533158981780264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A002640 (n + 1)).toNat

end

end A121259.P10107533158981780264

/-!
# A121260: Beginning with a(1)=0, take a(n) to be the smallest number not equal to the product of two consecutive (not distinct) earlier terms.

The programs for A121260, there is no canonical definition to state claims against.
-/

/-! ## A121260.P3195304794857344438

`floor(log2(A349759(2^floor(n/2))))`
-/

namespace A121260.P3195304794857344438
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A349759 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat).toNat

end

end A121260.P3195304794857344438

/-! ## A121260.P17978186498723835914

`∑[A014963(A274840(n))%A115638(n)]`
-/

namespace A121260.P17978186498723835914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A274840 n).toNat) (A115638 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121260.P17978186498723835914

/-! ## A121260.P9603386338986162292

`∑[A287341(A244630(n+1))]`
-/

namespace A121260.P9603386338986162292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287341 (A244630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121260.P9603386338986162292

/-! ## A121260.P15294035602719912566

`∑[A101825(A152113(n+1)-A082766(n+1))]`
-/

namespace A121260.P15294035602719912566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (A152113 (n + 1) - A082766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121260.P15294035602719912566

/-! ## A121260.P6581008227266671802

`∑[A101825(A152113(n+1)%A082766(n+1))]`
-/

namespace A121260.P6581008227266671802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101825 (Int.tmod (A152113 (n + 1)) (A082766 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121260.P6581008227266671802

/-!
# A121261: Beginning with a(1)=0, a(n) repeated not equal to the product of earlier terms (not distinct).

The programs for A121261, there is no canonical definition to state claims against.
-/

/-! ## A121261.P4684903563902523319

`∑{e}[3^floor(n/2), A100959(#)]`
-/

namespace A121261.P4684903563902523319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A100959 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A121261.P4684903563902523319

/-! ## A121261.P1336247773380338798

`∑[A162642(A286311(A141310(n)))]`
-/

namespace A121261.P1336247773380338798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A286311 (A141310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121261.P1336247773380338798

/-! ## A121261.P12965779147619659659

`∑[∑{e}[gcd(2, n)^(n+1)-1, #]]`
-/

namespace A121261.P12965779147619659659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ (n + 1) : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121261.P12965779147619659659

/-! ## A121261.P10492863788524113026

`∑[∑{e}[∑[2^n]^and(1, n+1), 2-#]]`
-/

namespace A121261.P10492863788524113026
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ Nat.land 1 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121261.P10492863788524113026

/-! ## A121261.P7131720011435226077

`∑[∑{e}[xor(1, -(2^n+(-2)^n)), 2-#]]`
-/

namespace A121261.P7131720011435226077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-((2 ^ n : ℤ) + (-2) ^ n))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (2 - (Nat.factorization (f2 n).natAbs p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121261.P7131720011435226077

/-!
# A121262: The characteristic function of the multiples of four.

The programs for A121262, the canonical program `A121262.P5808261376347758400` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121262 has offset 0).

The definition of A121262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121262.P5808261376347758400

`a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121262

/-- `a(n-4)` -/
def P5808261376347758400.Spec : Prop :=
  ∀ n, (P5808261376347758400.a n : ℤ) = A121262 n

theorem P5808261376347758400.correct : P5808261376347758400.Spec := by
  intro n
  simp only [A121262]

end A121262

/-!
# A121263: Descending dungeons: see Comments lines for definition.

The programs for A121263, there is no canonical definition to state claims against.
-/

/-! ## A121263.P14885799649266674259

`A121266(∑[n]+n)`
-/

namespace A121263.P14885799649266674259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10)

end

end A121263.P14885799649266674259

/-! ## A121263.P17953896852895213895

`and(-1, A121266(n*(n+3)/2))`
-/

namespace A121263.P17953896852895213895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A121266 ((SequenceMachineLib.roundAway ((n : ℚ) * ((n + 3 : ℚ) / 2))).toNat + 10))

end

end A121263.P17953896852895213895

/-! ## A121263.P15931664222940475175

`record[A121266(A316964(n))]`
-/

namespace A121263.P15931664222940475175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A316964 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121263.P15931664222940475175

/-! ## A121263.P3076300940617930821

`record[A121266(A175631(n+1))]`
-/

namespace A121263.P3076300940617930821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A175631 (n + 1)).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121263.P3076300940617930821

/-! ## A121263.P12477251007126443037

`or(char[1], A121266(A000096(n)))`
-/

namespace A121263.P12477251007126443037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A121266 ((A000096 n).toNat + 10))

end

end A121263.P12477251007126443037

/-!
# A121264: See Comments for definition.

The programs for A121264, there is no canonical definition to state claims against.
-/

/-! ## A121264.P16268508452615378446

`A368458(a(n-1))+1` with `a(0)=2`
-/

namespace A121264.P16268508452615378446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A368458 (a (n - 1)).toNat + 1

end

end A121264.P16268508452615378446

/-!
# A121265: Descending dungeons: a(10)=10; for n>10, a(n) = a(n-1) read as if it were written in base n.

The programs for A121265, there is no canonical definition to state claims against.
-/

/-! ## A121265.P18066219271383361394

`A122734(n)+A121263(n)`
-/

namespace A121265.P18066219271383361394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122734 (n + 10) + A121263 (n + 10)

end

end A121265.P18066219271383361394

/-! ## A121265.P2911537089585885398

`A127744(n)+A121295(n)`
-/

namespace A121265.P2911537089585885398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127744 (n + 10) + A121295 (n + 10)

end

end A121265.P2911537089585885398

/-! ## A121265.P12237029592370495243

`A122734(n)+A121266(∑[n]+n)`
-/

namespace A121265.P12237029592370495243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122734 (n + 10) + A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10)

end

end A121265.P12237029592370495243

/-! ## A121265.P6520649798444399211

`A122734(n)+record[A121266(A316964(n))]`
-/

namespace A121265.P6520649798444399211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A316964 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122734 (n + 10) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121265.P6520649798444399211

/-! ## A121265.P7417606634111624553

`A121263(n)+A131011(n)+A127744(n)`
-/

namespace A121265.P7417606634111624553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121263 (n + 10) + (A131011 (n + 10) + A127744 (n + 10))

end

end A121265.P7417606634111624553

/-!
# A121266: Triangle read by rows: row n (n>= 10) gives n-10 successive bases used in computing A121263(n) followed by A121263(n) itself.

The programs for A121266, there is no canonical definition to state claims against.
-/

/-! ## A121266.P13525825084308074339

`A309559(n)%A126727(n+1)+9`
-/

namespace A121266.P13525825084308074339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309559 n) (A126727 (n + 1)) + 9

end

end A121266.P13525825084308074339

/-! ## A121266.P7544798887293084306

`A141418(n+1)+10%A126727(n+1)`
-/

namespace A121266.P7544798887293084306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + Int.tmod 10 (A126727 (n + 1))

end

end A121266.P7544798887293084306

/-! ## A121266.P838997634423778560

`A020723(A309559(n)%A126727(n+1))`
-/

namespace A121266.P838997634423778560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (Int.tmod (A309559 n) (A126727 (n + 1))).toNat

end

end A121266.P838997634423778560

/-! ## A121266.P10864127768047933242

`A133082(n+2)+10-A002262(n)`
-/

namespace A121266.P10864127768047933242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133082 (n + 2) + (10 - A002262 n)

end

end A121266.P10864127768047933242

/-! ## A121266.P12101043915976777142

`A309559(n)+A165024(n+3)²`
-/

namespace A121266.P12101043915976777142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + A165024 (n + 3) ^ 2

end

end A121266.P12101043915976777142

/-! ## A121266.P3531742459372882542

`A141418(n+1)+A090568(n+7)`
-/

namespace A121266.P3531742459372882542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141418 (n + 1) + A090568 (n + 7)

end

end A121266.P3531742459372882542

/-! ## A121266.P11443612344349270028

`A216875(A296082(A079848(n+1)))+A141418(n+1)`
-/

namespace A121266.P11443612344349270028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216875 (A296082 (A079848 (n + 1)).toNat).toNat + A141418 (n + 1)

end

end A121266.P11443612344349270028

/-! ## A121266.P10897366697388467096

`A189834(A001222(A278696(n+1)))+A141418(n+1)`
-/

namespace A121266.P10897366697388467096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189834 (A001222 (A278696 (n + 1)).toNat).toNat + A141418 (n + 1)

end

end A121266.P10897366697388467096

/-!
# A121267: Number of decimal digits in A047777(n).

The programs for A121267, there is no canonical definition to state claims against.
-/

/-! ## A121267.P10923155615564265177

`A229181(n*a(n-1)/gcd(n, a(n-1))+1)` with `a(0)=1`
-/

namespace A121267.P10923155615564265177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229181 (SequenceMachineLib.roundAway ((n : ℚ) * ((a (n - 1) : ℚ) / (Int.gcd (n : ℤ) (a (n - 1)) : ℚ)) + 1)).toNat

end

end A121267.P10923155615564265177

/-! ## A121267.P8583534654454007994

`A229181(A001104(n+1))`
-/

namespace A121267.P8583534654454007994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229181 (A001104 (n + 1)).toNat

end

end A121267.P8583534654454007994

/-! ## A121267.P5521654090447506970

`A229181(A002998(n+1))`
-/

namespace A121267.P5521654090447506970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229181 (A002998 (n + 1)).toNat

end

end A121267.P5521654090447506970

/-! ## A121267.P1329157420854798344

`A229181(A028431(n+1))`
-/

namespace A121267.P1329157420854798344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229181 (A028431 (n + 1)).toNat

end

end A121267.P1329157420854798344

/-! ## A121267.P3952015002663586996

`A229181(A032555(n+1))`
-/

namespace A121267.P3952015002663586996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229181 (A032555 (n + 1)).toNat

end

end A121267.P3952015002663586996

/-!
# A121271: Number of different vertex-degree sequences of simple 3-uniform hypergraphs on n vertices.

The programs for A121271, there is no canonical definition to state claims against.
-/

/-! ## A121271.P15203261253162341293

`A286569(∏[n!])`
-/

namespace A121271.P15203261253162341293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286569 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A121271.P15203261253162341293

/-! ## A121271.P5455253802975633392

`A078639(A000041(n))`
-/

namespace A121271.P5455253802975633392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078639 (A000041 n).toNat

end

end A121271.P5455253802975633392

/-!
# A121272: Number of outcomes of unlabeled n-team round-robin tournaments that are not uniquely defined by their score vectors.

The programs for A121272, there is no canonical definition to state claims against.
-/

/-! ## A121272.P1974194112097131722

`A000568(n+1)-A000570(n+1)`
-/

namespace A121272.P1974194112097131722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000568 (n + 1) - A000570 (n + 1)

end

end A121272.P1974194112097131722

/-! ## A121272.P5737373904811715075

`A000568(n+1)+A121244(n+1)-A000571(n+1)`
-/

namespace A121272.P5737373904811715075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000568 (n + 1) + (A121244 (n + 1) - A000571 (n + 1))

end

end A121272.P5737373904811715075

/-! ## A121272.P12141244173808918820

`A350912(A179865(n+2))-A000570(n+1)`
-/

namespace A121272.P12141244173808918820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350912 (A179865 (n + 2)).toNat - A000570 (n + 1)

end

end A121272.P12141244173808918820

/-! ## A121272.P6939521286536097024

`A000568(n+1)-A216256(A159035(n)+n%3*floor(n/3))`
-/

namespace A121272.P6939521286536097024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000568 (n + 1) - A216256 (A159035 n + ((n % 3 : ℕ) : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A121272.P6939521286536097024

/-! ## A121272.P12401709836285296615

`A000568(n+1)-A261104(A301875(n)+A185648(n))`
-/

namespace A121272.P12401709836285296615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000568 (n + 1) - A261104 (A301875 n + A185648 n).toNat

end

end A121272.P12401709836285296615

/-!
# A121273: Number of different n-dimensional convex regular polytopes that can tile n-dimensional space.

The programs for A121273, the canonical program `A121273.P17788081356120354033` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121273 has offset 1).

The definition of A121273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121273.P17788081356120354033

`a(4%n)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121273

/-- `a(4%n)` -/
def P17788081356120354033.Spec : Prop :=
  ∀ n, (P17788081356120354033.a n : ℤ) = A121273 (n + 1)

theorem P17788081356120354033.correct : P17788081356120354033.Spec := by
  intro n
  simp only [A121273, Nat.add_sub_cancel]

end A121273

/-!
# A121275: a(n) = (ceiling(n*Pi))^n.

The programs for A121275, the canonical program `A121275.P7210575488310228893` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121275 has offset 1).

The definition of A121275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil((n+1)*π)^(n+1)` (program `A121275.P7210575488310228893`, by `A121275.P7210575488310228893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121275.P7210575488310228893

`ceil((n+1)*π)^(n+1)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121275

/-- `ceil((n+1)*π)^(n+1)` -/
def P7210575488310228893.Spec : Prop :=
  ∀ n, P7210575488310228893.a n = A121275 (n + 1)

theorem P7210575488310228893.correct : P7210575488310228893.Spec := by
  intro n
  simp only [A121275, Nat.add_sub_cancel]

end A121275

/-! ## A121275.P14288495712500441965

`(Δ[A022795(n+1)]^((n+1)/2))²`
-/

namespace A121275.P14288495712500441965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022795 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ)) ^ 2

end

end A121275.P14288495712500441965

namespace A121275

/-- `(Δ[A022795(n+1)]^((n+1)/2))²` -/
def P14288495712500441965.Spec : Prop :=
  ∀ n, P14288495712500441965.a n = (A121275 (n + 1) : ℝ)

end A121275

/-! ## A121275.P16267621767804219100

`record[A121381(A008612(n))^A008612(n)]`
-/

namespace A121275.P16267621767804219100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121381 (A008612 n).toNat : ℚ) ^ (A008612 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121275.P16267621767804219100

namespace A121275

/-- `record[A121381(A008612(n))^A008612(n)]` -/
def P16267621767804219100.Spec : Prop :=
  ∀ n, P16267621767804219100.a n = (A121275 (n + 1) : ℚ)

end A121275

/-! ## A121275.P13838858615773070241

`record[A121381(A008624(n))^A008624(n)]`
-/

namespace A121275.P13838858615773070241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121381 (A008624 n).toNat : ℚ) ^ (A008624 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121275.P13838858615773070241

namespace A121275

/-- `record[A121381(A008624(n))^A008624(n)]` -/
def P13838858615773070241.Spec : Prop :=
  ∀ n, P13838858615773070241.a n = (A121275 (n + 1) : ℚ)

end A121275

/-! ## A121275.P1807182126601594738

`record[A121381(A057979(n))^A057979(n)]`
-/

namespace A121275.P1807182126601594738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121381 (A057979 n).toNat : ℚ) ^ (A057979 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121275.P1807182126601594738

namespace A121275

/-- `record[A121381(A057979(n))^A057979(n)]` -/
def P1807182126601594738.Spec : Prop :=
  ∀ n, P1807182126601594738.a n = (A121275 (n + 1) : ℚ)

end A121275

/-!
# A121276: Ceiling((n*Pi)^n).

The programs for A121276, there is no canonical definition to state claims against.
-/

/-! ## A121276.P7995056926402693757

`ceil((π*(n+1))^(n+1))`
-/

namespace A121276.P7995056926402693757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.pi * (n + 1 : ℝ)) ^ (n + 1)⌉

end

end A121276.P7995056926402693757

/-! ## A121276.P14112918208790152791

`A121247(n+1)+1`
-/

namespace A121276.P14112918208790152791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121247 (n + 1) + 1

end

end A121276.P14112918208790152791

/-! ## A121276.P8134540544333711340

`floor((π*(n+1))^(n+1))-A057428(2^n)`
-/

namespace A121276.P8134540544333711340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.pi * (n + 1 : ℝ)) ^ (n + 1)⌋ - A057428 (2 ^ n)

end

end A121276.P8134540544333711340

/-! ## A121276.P17270337575460119697

`A057427(A033453(n))+floor((π*(n+1))^(n+1))`
-/

namespace A121276.P17270337575460119697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A033453 n).toNat + ⌊(Real.pi * (n + 1 : ℝ)) ^ (n + 1)⌋

end

end A121276.P17270337575460119697

/-!
# A121279: Ceiling((Pi/e)^n).

The programs for A121279, there is no canonical definition to state claims against.
-/

/-! ## A121279.P14815618949523564868

`A057427(n)+A032739(n)`
-/

namespace A121279.P14815618949523564868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032739 n

end

end A121279.P14815618949523564868

/-! ## A121279.P3617615770824217546

`A032739(n)-A057428(n)`
-/

namespace A121279.P3617615770824217546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032739 n - A057428 n

end

end A121279.P3617615770824217546

/-! ## A121279.P14071051581869804961

`A032739(n)+and(1, A000040(n+1))`
-/

namespace A121279.P14071051581869804961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032739 n + Int.land 1 (A000040 (n + 1))

end

end A121279.P14071051581869804961

/-! ## A121279.P13923196408621582275

`A032739(n)+A121282(n)-A121283(n)`
-/

namespace A121279.P13923196408621582275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032739 n + (A121282 n - A121283 n)

end

end A121279.P13923196408621582275

/-! ## A121279.P17036911927644457399

`A032739(n)%A001925(n)+1`
-/

namespace A121279.P17036911927644457399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032739 n) (A001925 n) + 1

end

end A121279.P17036911927644457399

/-!
# A121280: Position where concatenate(1,...,n) occurs for the first time in the decimals of Pi (where 3, 1, 4,... are at position 0, 1, 2,...).

The programs for A121280, there is no canonical definition to state claims against.
-/

/-! ## A121280.P3047602548801033322

`A068987(n+1)-1`
-/

namespace A121280.P3047602548801033322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068987 (n + 1) - 1

end

end A121280.P3047602548801033322

/-! ## A121280.P10301152348618786266

`record[A068987(A137734(n))-1]`
-/

namespace A121280.P10301152348618786266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068987 (A137734 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121280.P10301152348618786266

/-! ## A121280.P14109797903733342754

`record[A068987(A137735(n))-1]`
-/

namespace A121280.P14109797903733342754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068987 (A137735 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121280.P14109797903733342754

/-! ## A121280.P2778941501875836707

`record[A068987(A193592(n))-1]`
-/

namespace A121280.P2778941501875836707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068987 (A193592 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121280.P2778941501875836707

/-! ## A121280.P494245595944719900

`A321800(n)+A068987(n+1)`
-/

namespace A121280.P494245595944719900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n + A068987 (n + 1)

end

end A121280.P494245595944719900

/-!
# A121281: Triangle T(n,k) read by rows: T(n,0) = A002110(n) and T(n,k) = A002110(n)/prime(k) for 1<=k<=n.

The programs for A121281, the canonical program `A121281.P9987452267455542035` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121281 has offset 0).

The definition of A121281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121281.P9987452267455542035

`A077011(((n+1)²+2)%A014132(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A121281

/-- `A077011(((n+1)²+2)%A014132(n+1))` -/
def P9987452267455542035.Spec : Prop :=
  ∀ n, P9987452267455542035.a n = A121281 n

theorem P9987452267455542035.correct : P9987452267455542035.Spec := by
  intro n
  simp only [A121281]

end A121281

/-! ## A121281.P2555340884395592758

`A077011(A038722(n+1)-A003056(n))`
-/

namespace A121281.P2555340884395592758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A038722 (n + 1) - A003056 n).toNat

end

end A121281.P2555340884395592758

namespace A121281

/-- `A077011(A038722(n+1)-A003056(n))` -/
def P2555340884395592758.Spec : Prop :=
  ∀ n, P2555340884395592758.a n = A121281 n

end A121281

/-! ## A121281.P15736866819379021577

`A002110(A002024(n+1))/A019565(A048645(n+1))`
-/

namespace A121281.P15736866819379021577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (A002024 (n + 1)).toNat : ℚ) / (A019565 (A048645 (n + 1)).toNat : ℚ)

end

end A121281.P15736866819379021577

namespace A121281

/-- `A002110(A002024(n+1))/A019565(A048645(n+1))` -/
def P15736866819379021577.Spec : Prop :=
  ∀ n, P15736866819379021577.a n = (A121281 n : ℚ)

end A121281

/-! ## A121281.P18023380195511863406

`A098012(A127739(n+1))/A019565(A048645(n+1))`
-/

namespace A121281.P18023380195511863406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098012 (A127739 (n + 1)).toNat : ℚ) / (A019565 (A048645 (n + 1)).toNat : ℚ)

end

end A121281.P18023380195511863406

namespace A121281

/-- `A098012(A127739(n+1))/A019565(A048645(n+1))` -/
def P18023380195511863406.Spec : Prop :=
  ∀ n, P18023380195511863406.a n = (A121281 n : ℚ)

end A121281

/-! ## A121281.P9260707367285022048

`A275733(A143122(n)-1)`
-/

namespace A121281.P9260707367285022048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A143122 n - 1).toNat

end

end A121281.P9260707367285022048

namespace A121281

/-- `A275733(A143122(n)-1)` -/
def P9260707367285022048.Spec : Prop :=
  ∀ n, P9260707367285022048.a n = A121281 n

end A121281

/-!
# A121282: a(n) = ceiling(n*Pi*e).

The programs for A121282, the canonical program `A121282.P1369761665035734199` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121282 has offset 0).

The definition of A121282 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*π*e)` (program `A121282.P1369761665035734199`, by `A121282.P1369761665035734199.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121282.P1369761665035734199

`ceil(n*π*e)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121282

/-- `ceil(n*π*e)` -/
def P1369761665035734199.Spec : Prop :=
  ∀ n, P1369761665035734199.a n = A121282 n

theorem P1369761665035734199.correct : P1369761665035734199.Spec := by
  intro n
  simp only [A121282]

end A121282

/-! ## A121282.P9471659895277809282

`A121283(n)+A057427(n)`
-/

namespace A121282.P9471659895277809282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + A057427 n

end

end A121282.P9471659895277809282

namespace A121282

/-- `A121283(n)+A057427(n)` -/
def P9471659895277809282.Spec : Prop :=
  ∀ n, P9471659895277809282.a n = A121282 n

end A121282

/-! ## A121282.P8920543295246051869

`A121283(n)-A057428(n)`
-/

namespace A121282.P8920543295246051869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n - A057428 n

end

end A121282.P8920543295246051869

namespace A121282

/-- `A121283(n)-A057428(n)` -/
def P8920543295246051869.Spec : Prop :=
  ∀ n, P8920543295246051869.a n = A121282 n

end A121282

/-! ## A121282.P8185687748209333309

`A121283(n)+1-A000007(n)`
-/

namespace A121282.P8185687748209333309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + (1 - A000007 n)

end

end A121282.P8185687748209333309

namespace A121282

/-- `A121283(n)+1-A000007(n)` -/
def P8185687748209333309.Spec : Prop :=
  ∀ n, P8185687748209333309.a n = A121282 n

end A121282

/-! ## A121282.P6290656123924345315

`A121283(n)+A028235(A006530(n+1))`
-/

namespace A121282.P6290656123924345315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + A028235 (A006530 (n + 1)).toNat

end

end A121282.P6290656123924345315

namespace A121282

/-- `A121283(n)+A028235(A006530(n+1))` -/
def P6290656123924345315.Spec : Prop :=
  ∀ n, P6290656123924345315.a n = A121282 n

end A121282

/-! ## A121282.P9634875324967599507

`A121283(n)+A051903(A005117(n+1))`
-/

namespace A121282.P9634875324967599507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + A051903 (A005117 (n + 1)).toNat

end

end A121282.P9634875324967599507

namespace A121282

/-- `A121283(n)+A051903(A005117(n+1))` -/
def P9634875324967599507.Spec : Prop :=
  ∀ n, P9634875324967599507.a n = A121282 n

end A121282

/-! ## A121282.P1561613515568817103

`A121283(n)+A051903(A007947(n+1))`
-/

namespace A121282.P1561613515568817103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + A051903 (A007947 (n + 1)).toNat

end

end A121282.P1561613515568817103

namespace A121282

/-- `A121283(n)+A051903(A007947(n+1))` -/
def P1561613515568817103.Spec : Prop :=
  ∀ n, P1561613515568817103.a n = A121282 n

end A121282

/-! ## A121282.P18133904169359400124

`A285718(A285718(n+1)+1)+A121283(n)`
-/

namespace A121282.P18133904169359400124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285718 (A285718 (n + 1) + 1).toNat + A121283 n

end

end A121282.P18133904169359400124

namespace A121282

/-- `A285718(A285718(n+1)+1)+A121283(n)` -/
def P18133904169359400124.Spec : Prop :=
  ∀ n, P18133904169359400124.a n = A121282 n

end A121282

/-! ## A121282.P10494296276967431058

`A121283(n)+A051903(lt[A051903(n+1), 2]+1)`
-/

namespace A121282.P10494296276967431058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + A051903 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A121282.P10494296276967431058

namespace A121282

/-- `A121283(n)+A051903(lt[A051903(n+1), 2]+1)` -/
def P10494296276967431058.Spec : Prop :=
  ∀ n, P10494296276967431058.a n = A121282 n

end A121282

/-! ## A121282.P15170934032176475925

`record[A121283(A175126(n+1))+and(1, n)]`
-/

namespace A121282.P15170934032176475925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 (A175126 (n + 1)).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121282.P15170934032176475925

namespace A121282

/-- `record[A121283(A175126(n+1))+and(1, n)]` -/
def P15170934032176475925.Spec : Prop :=
  ∀ n, P15170934032176475925.a n = A121282 n

end A121282

/-! ## A121282.P11419114007995347560

`A121283(n)+A051903(eq[1, A046951(n+1)]+1)`
-/

namespace A121282.P11419114007995347560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + A051903 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A121282.P11419114007995347560

namespace A121282

/-- `A121283(n)+A051903(eq[1, A046951(n+1)]+1)` -/
def P11419114007995347560.Spec : Prop :=
  ∀ n, P11419114007995347560.a n = A121282 n

end A121282

/-! ## A121282.P6122426410085065690

`A121283(n)+and(1, p?[A175126(n)])`
-/

namespace A121282.P6122426410085065690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + Int.land 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A121282.P6122426410085065690

namespace A121282

/-- `A121283(n)+and(1, p?[A175126(n)])` -/
def P6122426410085065690.Spec : Prop :=
  ∀ n, P6122426410085065690.a n = A121282 n

end A121282

/-! ## A121282.P9904151892042500467

`A121279(n)+A121283(n)-A032739(n)`
-/

namespace A121282.P9904151892042500467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121279 n + (A121283 n - A032739 n)

end

end A121282.P9904151892042500467

namespace A121282

/-- `A121279(n)+A121283(n)-A032739(n)` -/
def P9904151892042500467.Spec : Prop :=
  ∀ n, P9904151892042500467.a n = A121282 n

end A121282

/-! ## A121282.P9416616327095513084

`A153152(A121283(n))`
-/

namespace A121282.P9416616327095513084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A121283 n).toNat

end

end A121282.P9416616327095513084

namespace A121282

/-- `A153152(A121283(n))` -/
def P9416616327095513084.Spec : Prop :=
  ∀ n, P9416616327095513084.a n = A121282 n

end A121282

/-! ## A121282.P13338167760908952407

`A121283(n)+A014963(∑[n+1])%(n+1)`
-/

namespace A121282.P13338167760908952407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121283 n + Int.tmod (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A121282.P13338167760908952407

namespace A121282

/-- `A121283(n)+A014963(∑[n+1])%(n+1)` -/
def P13338167760908952407.Spec : Prop :=
  ∀ n, P13338167760908952407.a n = A121282 n

end A121282

/-!
# A121283: a(n) = floor(n*Pi*e).

The programs for A121283, the canonical program `A121283.P11909458141426571489` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121283 has offset 0).

The definition of A121283 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*π*e)` (program `A121283.P11909458141426571489`, by `A121283.P11909458141426571489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A121283.P11909458141426571489

`floor(n*π*e)`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A121283

/-- `floor(n*π*e)` -/
def P11909458141426571489.Spec : Prop :=
  ∀ n, P11909458141426571489.a n = A121283 n

theorem P11909458141426571489.correct : P11909458141426571489.Spec := by
  intro n
  simp only [A121283]

end A121283

/-! ## A121283.P15393820827302944799

`A121282(n)+A057428(n)`
-/

namespace A121283.P15393820827302944799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121282 n + A057428 n

end

end A121283.P15393820827302944799

namespace A121283

/-- `A121282(n)+A057428(n)` -/
def P15393820827302944799.Spec : Prop :=
  ∀ n, P15393820827302944799.a n = A121283 n

end A121283

/-! ## A121283.P1762257458620719147

`A121282(n)-A057427(n)`
-/

namespace A121283.P1762257458620719147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121282 n - A057427 n

end

end A121283.P1762257458620719147

namespace A121283

/-- `A121282(n)-A057427(n)` -/
def P1762257458620719147.Spec : Prop :=
  ∀ n, P1762257458620719147.a n = A121283 n

end A121283

/-! ## A121283.P2738684524994167222

`A000007(n)+A121282(n)-1`
-/

namespace A121283.P2738684524994167222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A121282 n - 1)

end

end A121283.P2738684524994167222

namespace A121283

/-- `A000007(n)+A121282(n)-1` -/
def P2738684524994167222.Spec : Prop :=
  ∀ n, P2738684524994167222.a n = A121283 n

end A121283

/-! ## A121283.P13025585871844639538

`A121282(n)-char[A322589(n+1)]`
-/

namespace A121283.P13025585871844639538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322589 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121282 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121283.P13025585871844639538

namespace A121283

/-- `A121282(n)-char[A322589(n+1)]` -/
def P13025585871844639538.Spec : Prop :=
  ∀ n, P13025585871844639538.a n = A121283 n

end A121283

/-! ## A121283.P12308135464678786952

`A121282(n)-char[A323368(n+1)]`
-/

namespace A121283.P12308135464678786952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323368 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121282 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A121283.P12308135464678786952

namespace A121283

/-- `A121282(n)-char[A323368(n+1)]` -/
def P12308135464678786952.Spec : Prop :=
  ∀ n, P12308135464678786952.a n = A121283 n

end A121283

/-! ## A121283.P3244132422935732090

`A121282(n)-A100019(n)%(n+1)`
-/

namespace A121283.P3244132422935732090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121282 n - Int.tmod (A100019 n) (n + 1 : ℤ)

end

end A121283.P3244132422935732090

namespace A121283

/-- `A121282(n)-A100019(n)%(n+1)` -/
def P3244132422935732090.Spec : Prop :=
  ∀ n, P3244132422935732090.a n = A121283 n

end A121283

/-! ## A121283.P15685199979159896001

`A121282(n)-val(A001248(n+1)+1, 2)`
-/

namespace A121283.P15685199979159896001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121282 n - (SequenceMachineLib.valuation (A001248 (n + 1) + 1).toNat 2 : ℤ)

end

end A121283.P15685199979159896001

namespace A121283

/-- `A121282(n)-val(A001248(n+1)+1, 2)` -/
def P15685199979159896001.Spec : Prop :=
  ∀ n, P15685199979159896001.a n = A121283 n

end A121283

/-! ## A121283.P9666647218630032904

`A000007(A099801(n))-(1-A121282(n))`
-/

namespace A121283.P9666647218630032904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A099801 n).toNat - (1 - A121282 n)

end

end A121283.P9666647218630032904

namespace A121283

/-- `A000007(A099801(n))-(1-A121282(n))` -/
def P9666647218630032904.Spec : Prop :=
  ∀ n, P9666647218630032904.a n = A121283 n

end A121283

/-! ## A121283.P7029668263651128558

`A032739(n)+A121282(n)-A121279(n)`
-/

namespace A121283.P7029668263651128558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032739 n + (A121282 n - A121279 n)

end

end A121283.P7029668263651128558

namespace A121283

/-- `A032739(n)+A121282(n)-A121279(n)` -/
def P7029668263651128558.Spec : Prop :=
  ∀ n, P7029668263651128558.a n = A121283 n

end A121283

/-! ## A121283.P4801446428990751839

`A153151(A121282(n))`
-/

namespace A121283.P4801446428990751839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A121282 n).toNat

end

end A121283.P4801446428990751839

namespace A121283

/-- `A153151(A121282(n))` -/
def P4801446428990751839.Spec : Prop :=
  ∀ n, P4801446428990751839.a n = A121283 n

end A121283

/-!
# A121284: Triangle T(n,k), 1<=k<=n, read by rows given by T(n,k) = A003266(n)/A000045(k).

The programs for A121284, there is no canonical definition to state claims against.
-/

/-! ## A121284.P1032096051794135825

`A003266(row(n)+1)/A000045(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121284.P1032096051794135825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003266 (SequenceMachineLib.triRow n + 1) : ℚ) / (A000045 (SequenceMachineLib.triCol n + 1) : ℚ)

end

end A121284.P1032096051794135825

/-! ## A121284.P15294079798828757860

`A003266(A002024(n+1))/A104763(n+1)`
-/

namespace A121284.P15294079798828757860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003266 (A002024 (n + 1)).toNat : ℚ) / (A104763 (n + 1) : ℚ)

end

end A121284.P15294079798828757860

/-! ## A121284.P17420402362421351784

`A193595(A057944(n))/A104763(n+1)`
-/

namespace A121284.P17420402362421351784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193595 (A057944 n).toNat : ℚ) / (A104763 (n + 1) : ℚ)

end

end A121284.P17420402362421351784

/-! ## A121284.P11014469055380509555

`A193595(A057944(n))/A230871(A059268(n))`
-/

namespace A121284.P11014469055380509555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193595 (A057944 n).toNat : ℚ) / (A230871 (A059268 n).toNat : ℚ)

end

end A121284.P11014469055380509555

/-! ## A121284.P8541622288474484401

`A193595(A057944(n))/A000045(A002260(n+1))`
-/

namespace A121284.P8541622288474484401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193595 (A057944 n).toNat : ℚ) / (A000045 (A002260 (n + 1)).toNat : ℚ)

end

end A121284.P8541622288474484401

/-!
# A121285: a(0) = 1; for n>0, a(n) = (n+3)*2^(n-2)-n*binomial(n-1, floor( (n-1)/2 ))-(n-1)*binomial(n-2,floor((n-2)/2)).

The programs for A121285, the canonical program `A121285.P9254393504255520703` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121285 has offset 0).

The definition of A121285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A121285.P11271140189351183248

`A164990(n+1)-A100071(n)`
-/

namespace A121285.P11271140189351183248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164990 (n + 1) - A100071 n

end

end A121285.P11271140189351183248

namespace A121285

/-- `A164990(n+1)-A100071(n)` -/
def P11271140189351183248.Spec : Prop :=
  ∀ n, P11271140189351183248.a n = A121285 n

theorem P11271140189351183248.correct : P11271140189351183248.Spec := by
  intro n
  simp only [A121285, Nat.add_sub_cancel, A121285.P11271140189351183248.a, A121285.P9254393504255520703.a, A100071, A100071.P108043524234924627.a, A131352, A131352.P9718556863937062318.a, A164990, A164990.P7616358503839349732.a, A191386, A191386.P5013181058466511668.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A258431, A258431.P10302209761239524539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121285

/-! ## A121285.P9254393504255520703

`A131352(n)-2*A191386(n)-A100071(n)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A121285

/-- `A131352(n)-2*A191386(n)-A100071(n)` -/
def P9254393504255520703.Spec : Prop :=
  ∀ n, P9254393504255520703.a n = A121285 n

theorem P9254393504255520703.correct : P9254393504255520703.Spec := by
  intro n
  simp only [A121285]

end A121285

/-! ## A121285.P8668577259817948421

`A164990(n+1)-(A107373(n+1)+A058622(n))`
-/

namespace A121285.P8668577259817948421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164990 (n + 1) - (A107373 (n + 1) + A058622 n)

end

end A121285.P8668577259817948421

namespace A121285

/-- `A164990(n+1)-(A107373(n+1)+A058622(n))` -/
def P8668577259817948421.Spec : Prop :=
  ∀ n, P8668577259817948421.a n = A121285 n

end A121285

/-! ## A121285.P3576855685834686216

`A107373(n+1)+A164990(n+1)-A189391(n)`
-/

namespace A121285.P3576855685834686216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (A164990 (n + 1) - A189391 n)

end

end A121285.P3576855685834686216

namespace A121285

/-- `A107373(n+1)+A164990(n+1)-A189391(n)` -/
def P3576855685834686216.Spec : Prop :=
  ∀ n, P3576855685834686216.a n = A121285 n

end A121285

/-! ## A121285.P13169559182296770932

`A164990(n+1)+A001787(n)-A230137(n)`
-/

namespace A121285.P13169559182296770932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164990 (n + 1) + (A001787 n - A230137 n)

end

end A121285.P13169559182296770932

namespace A121285

/-- `A164990(n+1)+A001787(n)-A230137(n)` -/
def P13169559182296770932.Spec : Prop :=
  ∀ n, P13169559182296770932.a n = A121285 n

theorem P13169559182296770932.correct : P13169559182296770932.Spec := by
  intro n
  simp only [A121285, Nat.add_sub_cancel, A121285.P13169559182296770932.a, A121285.P9254393504255520703.a, A001787, A001787.P18099519164826187117.a, A100071, A100071.P108043524234924627.a, A131352, A131352.P9718556863937062318.a, A164990, A164990.P7616358503839349732.a, A191386, A191386.P5013181058466511668.a, A230137, A230137.P8347840085871938097.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A258431, A258431.P10302209761239524539.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A121285

/-!
# A121287: Numbers such that Sigma(n)*UnitarySigma(n) is divisible by UnitaryPhi(n)*n.

The programs for A121287, there is no canonical definition to state claims against.
-/

/-! ## A121287.P14895375393283825243

`lcm((n+1)*∑{d}[n+1, #], A329940(∑[2^n]))`
-/

namespace A121287.P14895375393283825243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (A329940 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A121287.P14895375393283825243

/-!
# A121289: a(n) = n/(largest triangular number dividing n).

The programs for A121289, there is no canonical definition to state claims against.
-/

/-! ## A121289.P13430284622739050967

`n/A115017(gcd(n, C(2, n)))`
-/

namespace A121289.P13430284622739050967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A115017 (Nat.gcd n (Nat.choose 2 n)) : ℚ)

end

end A121289.P13430284622739050967

/-! ## A121289.P4226944443871909684

`n/A115017(round(acot(n)+n))`
-/

namespace A121289.P4226944443871909684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A115017 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ)

end

end A121289.P4226944443871909684

/-! ## A121289.P2882428593838869113

`n/A115017(abs(1-n)+1)`
-/

namespace A121289.P2882428593838869113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A115017 (|1 - (n : ℤ)| + 1).toNat : ℚ)

end

end A121289.P2882428593838869113

/-! ## A121289.P220316119312826060

`gcd(n, A293961(A327027(n)))`
-/

namespace A121289.P220316119312826060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A293961 (A327027 n).toNat)

end

end A121289.P220316119312826060

/-! ## A121289.P2422371980122533095

`A051176(n^A331277(n))`
-/

namespace A121289.P2422371980122533095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A331277 n : ℤ))).toNat

end

end A121289.P2422371980122533095

/-!
# A121290: a(n) = (2^prime(n) - 8)/24 for n>=2.

The programs for A121290, the canonical program `A121290.P5615855219350300262` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A121290 has offset 2).

The definition of A121290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A121290.P5615855219350300262

`(2^A000040(n+2)-8)/24`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A121290

/-- `(2^A000040(n+2)-8)/24` -/
def P5615855219350300262.Spec : Prop :=
  ∀ n, P5615855219350300262.a n = (A121290 (n + 2) : ℚ)

end A121290

/-! ## A121290.P4770238028590101558

`A328284(p?[2*n+1])`
-/

namespace A121290.P4770238028590101558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A121290.P4770238028590101558

namespace A121290

/-- `A328284(p?[2*n+1])` -/
def P4770238028590101558.Spec : Prop :=
  ∀ n, P4770238028590101558.a n = A121290 (n + 2)

end A121290

/-! ## A121290.P6558647592852908717

`(A283107(n+1)-2)/3`
-/

namespace A121290.P6558647592852908717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283107 (n + 1) - 2 : ℚ) / 3

end

end A121290.P6558647592852908717

namespace A121290

/-- `(A283107(n+1)-2)/3` -/
def P6558647592852908717.Spec : Prop :=
  ∀ n, P6558647592852908717.a n = (A121290 (n + 2) : ℚ)

end A121290

/-! ## A121290.P12119914221898329270

`A253026(A103729(n))`
-/

namespace A121290.P12119914221898329270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253026 (A103729 n).toNat

end

end A121290.P12119914221898329270

namespace A121290

/-- `A253026(A103729(n))` -/
def P12119914221898329270.Spec : Prop :=
  ∀ n, P12119914221898329270.a n = A121290 (n + 2)

end A121290

/-! ## A121290.P3783209645224043528

`A002450(A067076(n+1))`
-/

namespace A121290.P3783209645224043528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 (A067076 (n + 1)).toNat

end

end A121290.P3783209645224043528

namespace A121290

/-- `A002450(A067076(n+1))` -/
def P3783209645224043528.Spec : Prop :=
  ∀ n, P3783209645224043528.a n = A121290 (n + 2)

end A121290

/-!
# A121291: Rounded partial sum of atomic weights of first n elements.

The programs for A121291, there is no canonical definition to state claims against.
-/

/-! ## A121291.P2277166966425894472

`∑[∑[A001511(A050342(2*(n+1)))]]`
-/

namespace A121291.P2277166966425894472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050342 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121291.P2277166966425894472

/-! ## A121291.P5072877942374355098

`∑[A018252(n+1)+A001221(A326648(n))]`
-/

namespace A121291.P5072877942374355098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + A001221 (A326648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121291.P5072877942374355098

/-! ## A121291.P7860030883454988794

`A002522(n+2)-A130255(A298143(n+4))`
-/

namespace A121291.P7860030883454988794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 2) - A130255 (A298143 (n + 4)).toNat

end

end A121291.P7860030883454988794

/-! ## A121291.P13541426746984836217

`A183147(A281151(n+1))`
-/

namespace A121291.P13541426746984836217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183147 (A281151 (n + 1)).toNat

end

end A121291.P13541426746984836217

/-! ## A121291.P285568135189368055

`∑[∑[A112106(A327475(n))]]`
-/

namespace A121291.P285568135189368055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112106 (A327475 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121291.P285568135189368055

/-!
# A121292: a(n) = Bell(3*n+1).

The programs for A121292, there is no canonical definition to state claims against.
-/

/-! ## A121292.P11684611243156005255

`A000110(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121292.P11684611243156005255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (3 * n + 1)

end

end A121292.P11684611243156005255

/-! ## A121292.P1304336184257783142

`A216333(Δ[n²])`
-/

namespace A121292.P1304336184257783142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216333 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A121292.P1304336184257783142

/-! ## A121292.P599490120953312691

`A011971(∑[9*n])`
-/

namespace A121292.P599490120953312691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A121292.P599490120953312691

/-! ## A121292.P6377807672283203221

`A134715(2*(n+1))`
-/

namespace A121292.P6377807672283203221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134715 (2 * (n + 1))

end

end A121292.P6377807672283203221

/-! ## A121292.P2582627782912693523

`A285013(6*n+1)`
-/

namespace A121292.P2582627782912693523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285013 (6 * n + 1)

end

end A121292.P2582627782912693523

/-!
# A121293: a(n) = Bell(3*n+2).

The programs for A121293, there is no canonical definition to state claims against.
-/

/-! ## A121293.P4324738036396896625

`A000110(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A121293.P4324738036396896625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (3 * n + 2)

end

end A121293.P4324738036396896625

/-! ## A121293.P11903539472550793098

`A216079(2*(n+1))`
-/

namespace A121293.P11903539472550793098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216079 (2 * (n + 1))

end

end A121293.P11903539472550793098

/-! ## A121293.P9998588370251099079

`A216333(2*(n+1))`
-/

namespace A121293.P9998588370251099079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216333 (2 * (n + 1))

end

end A121293.P9998588370251099079

/-! ## A121293.P8529469500949230579

`A188164(6*n+3)`
-/

namespace A121293.P8529469500949230579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (6 * n + 3)

end

end A121293.P8529469500949230579

/-! ## A121293.P9064244140526165126

`A285013(6*n+3)`
-/

namespace A121293.P9064244140526165126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285013 (6 * n + 3)

end

end A121293.P9064244140526165126

/-!
# A121294: a(m^2) = m^3; a(m^2+k) = m^3 + k*m, 0 <= k <= m; a(m*(m+1)) = (m+1)*m^2; a(m*(m+1)+k) = (m+1)m^2 + k*(2m+1), 0 <= k <= m+1; a((m+1)^2) = (m+1)^3.

The programs for A121294, there is no canonical definition to state claims against.
-/

/-! ## A121294.P11651776471711929906

`∑[dr(lcm(82, A000267(n)))]`
-/

namespace A121294.P11651776471711929906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lcm 82 (A000267 n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121294.P11651776471711929906

/-! ## A121294.P514123046624400394

`∑[A026741(floor(1/Δ[sqrt(n)]))]`
-/

namespace A121294.P514123046624400394
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ⌊1 / (f2 (n + 1) - f2 n)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121294.P514123046624400394

/-! ## A121294.P3057198263685172957

`∑[A107128(floor(1/Δ[sqrt(n)]))]`
-/

namespace A121294.P3057198263685172957
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 ⌊1 / (f2 (n + 1) - f2 n)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121294.P3057198263685172957

/-! ## A121294.P9183475533316298521

`∑[A232091(n+1)-floor(sqrt(n))²]`
-/

namespace A121294.P9183475533316298521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (n + 1) - (Nat.sqrt n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121294.P9183475533316298521

/-! ## A121294.P17261353958760322229

`∑[A106617(8*floor(sqrt(4*n+1)))]`
-/

namespace A121294.P17261353958760322229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (8 * Nat.sqrt (4 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A121294.P17261353958760322229

/-!
# A121295: Descending dungeons: for definition see Comments lines.

The programs for A121295, there is no canonical definition to state claims against.
-/

/-! ## A121295.P6585229202669130172

`A131011(n)+A121263(n)`
-/

namespace A121295.P6585229202669130172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + A121263 (n + 10)

end

end A121295.P6585229202669130172

/-! ## A121295.P7356867535342127306

`A131011(n)+A121266(∑[n]+n)`
-/

namespace A121295.P7356867535342127306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + A121266 (∑ j ∈ Finset.range (n + 1), f1 j + n + 10)

end

end A121295.P7356867535342127306

/-! ## A121295.P10741291559383005401

`A131011(n)+record[A121266(A061579(n))]`
-/

namespace A121295.P10741291559383005401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A061579 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121295.P10741291559383005401

/-! ## A121295.P10138147329704669245

`A131011(n)+record[A121266(A316964(n))]`
-/

namespace A121295.P10138147329704669245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A316964 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121295.P10138147329704669245

/-! ## A121295.P7961198662442622325

`A131011(n)+record[A121266(A175631(n+1))]`
-/

namespace A121295.P7961198662442622325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A175631 (n + 1)).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131011 (n + 10) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121295.P7961198662442622325

/-!
# A121296: Descending dungeons: like A121295 but read subscripts from top downwards.

The programs for A121296, there is no canonical definition to state claims against.
-/

/-! ## A121296.P18363397571515832300

`A128916(n)+A121295(n)`
-/

namespace A121296.P18363397571515832300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128916 (n + 10) + A121295 (n + 10)

end

end A121296.P18363397571515832300

/-! ## A121296.P11200731416381708472

`A130287(n)+A121263(n)`
-/

namespace A121296.P11200731416381708472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130287 (n + 10) + A121263 (n + 10)

end

end A121296.P11200731416381708472

/-! ## A121296.P6628085474629425350

`A131012(n)+A121265(n)`
-/

namespace A121296.P6628085474629425350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131012 n + A121265 (n + 10)

end

end A121296.P6628085474629425350

/-! ## A121296.P9563788144677950284

`A130287(n)+A121266(A000096(n))`
-/

namespace A121296.P9563788144677950284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130287 (n + 10) + A121266 ((A000096 n).toNat + 10)

end

end A121296.P9563788144677950284

/-! ## A121296.P18088114013306924280

`A130287(n)+record[A121266(A316964(n))]`
-/

namespace A121296.P18088114013306924280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121266 ((A316964 n).toNat + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130287 (n + 10) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A121296.P18088114013306924280

/-!
# A121298: Triangle read by rows: T(n,k) is the number of directed column-convex polyominoes of area n and height k (1<=k<=n; here by the height of a polyomino one means the number of lines of slope -1 that pass through the centers of the polyomino cells).

The programs for A121298, there is no canonical definition to state claims against.
-/

/-! ## A121298.P288050804911569013

`A130259(C(A000961(n+1), A277880(n+1)))`
-/

namespace A121298.P288050804911569013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130259 (Nat.choose (A000961 (n + 1)).toNat (A277880 (n + 1)).toNat)

end

end A121298.P288050804911569013

/-! ## A121298.P826390491348715409

`and(dr(A228135(3*(n+1))), A228117(n))`
-/

namespace A121298.P826390491348715409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.digitalRoot (A228135 (3 * (n + 1))) : ℤ) (A228117 n)

end

end A121298.P826390491348715409

/-! ## A121298.P7635551799783645026

`A184964(A013609(n))+A099089(n)`
-/

namespace A121298.P7635551799783645026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184964 (A013609 n).toNat + A099089 n

end

end A121298.P7635551799783645026

/-! ## A121298.P4147532331530533649

`A326016(A059300(n))+A099089(n)`
-/

namespace A121298.P4147532331530533649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A059300 n).toNat + A099089 n

end

end A121298.P4147532331530533649

/-! ## A121298.P9416526209667096567

`A241709(A153199(n))+A099089(n)`
-/

namespace A121298.P9416526209667096567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241709 (A153199 n).toNat + A099089 n

end

end A121298.P9416526209667096567

/-!
# A121299: Sum of the heights of all directed column-convex polyominoes of area n; here by the height of a polyomino one means the number of lines of slope -1 that pass through the centers of the polyomino cells.

The programs for A121299, there is no canonical definition to state claims against.
-/

/-! ## A121299.P3077499540290895439

`A002266(A108198(n)+A001629(2*(n+2)))`
-/

namespace A121299.P3077499540290895439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A108198 n + A001629 (2 * (n + 2))).toNat

end

end A121299.P3077499540290895439

/-! ## A121299.P9183549271313838957

`A002266(A167808(n)+A001629(2*(n+2)))`
-/

namespace A121299.P9183549271313838957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A167808 n + A001629 (2 * (n + 2))).toNat

end

end A121299.P9183549271313838957

/-! ## A121299.P4200098597886861015

`A002266(A117677(n+1)+A001629(2*(n+2)))`
-/

namespace A121299.P4200098597886861015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A117677 (n + 1) + A001629 (2 * (n + 2))).toNat

end

end A121299.P4200098597886861015

