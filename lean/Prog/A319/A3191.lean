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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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

/-!
# A319100: Number of solutions to x^6 == 1 (mod n).

The programs for A319100, the canonical program `A319100.P5580130370207246504` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319100 has offset 1).

The definition of A319100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A293483, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319100.P17875270125052409818

`A060594(n+1)*A060839(n+1)`
-/

namespace A319100.P17875270125052409818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) * A060839 (n + 1)

end

end A319100.P17875270125052409818

namespace A319100

/-- `A060594(n+1)*A060839(n+1)` -/
def P17875270125052409818.Spec : Prop :=
  ∀ n, P17875270125052409818.a n = A319100 (n + 1)

end A319100

/-! ## A319100.P5580130370207246504

`A000010(n+1)/A293483(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A319100

/-- `A000010(n+1)/A293483(n+1)` -/
def P5580130370207246504.Spec : Prop :=
  ∀ n, P5580130370207246504.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P1117385052453861202

`∑{d}[n+1, A307381(#)]`
-/

namespace A319100.P1117385052453861202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307381 d

end

end A319100.P1117385052453861202

namespace A319100

/-- `∑{d}[n+1, A307381(#)]` -/
def P1117385052453861202.Spec : Prop :=
  ∀ n, P1117385052453861202.a n = A319100 (n + 1)

end A319100

/-! ## A319100.P10801286719202049304

`Δ[A005728(n)]/A293483(n+1)`
-/

namespace A319100.P10801286719202049304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A293483 (n + 1) : ℚ)

end

end A319100.P10801286719202049304

namespace A319100

/-- `Δ[A005728(n)]/A293483(n+1)` -/
def P10801286719202049304.Spec : Prop :=
  ∀ n, P10801286719202049304.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P16234472318887562442

`A349137(Δ[n²])/A293483(n+1)`
-/

namespace A319100.P16234472318887562442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A293483 (n + 1) : ℚ)

end

end A319100.P16234472318887562442

namespace A319100

/-- `A349137(Δ[n²])/A293483(n+1)` -/
def P16234472318887562442.Spec : Prop :=
  ∀ n, P16234472318887562442.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P17004271896198304111

`A000010(n+1)/A046073(n+1)*A060839(n+1)`
-/

namespace A319100.P17004271896198304111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A046073 (n + 1) : ℚ) * (A060839 (n + 1) : ℚ)

end

end A319100.P17004271896198304111

namespace A319100

/-- `A000010(n+1)/A046073(n+1)*A060839(n+1)` -/
def P17004271896198304111.Spec : Prop :=
  ∀ n, P17004271896198304111.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P12953033513719914262

`A060839(n+1)*A087692(n+1)/A293483(n+1)`
-/

namespace A319100.P12953033513719914262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) * A087692 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ)

end

end A319100.P12953033513719914262

namespace A319100

/-- `A060839(n+1)*A087692(n+1)/A293483(n+1)` -/
def P12953033513719914262.Spec : Prop :=
  ∀ n, P12953033513719914262.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P9894342671795982419

`A293482(n+1)/A293483(n+1)*A319099(n+1)`
-/

namespace A319100.P9894342671795982419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293482 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ) * (A319099 (n + 1) : ℚ)

end

end A319100.P9894342671795982419

namespace A319100

/-- `A293482(n+1)/A293483(n+1)*A319099(n+1)` -/
def P9894342671795982419.Spec : Prop :=
  ∀ n, P9894342671795982419.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P4960136494165846753

`A293484(n+1)/A293483(n+1)*A319101(n+1)`
-/

namespace A319100.P4960136494165846753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293484 (n + 1) : ℚ) / (A293483 (n + 1) : ℚ) * (A319101 (n + 1) : ℚ)

end

end A319100.P4960136494165846753

namespace A319100

/-- `A293484(n+1)/A293483(n+1)*A319101(n+1)` -/
def P4960136494165846753.Spec : Prop :=
  ∀ n, P4960136494165846753.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P16209163941325200549

`A000010(n+1)²/(A046073(n+1)*A087692(n+1))`
-/

namespace A319100.P16209163941325200549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) ^ 2 : ℚ) / (A046073 (n + 1) * A087692 (n + 1) : ℚ)

end

end A319100.P16209163941325200549

namespace A319100

/-- `A000010(n+1)²/(A046073(n+1)*A087692(n+1))` -/
def P16209163941325200549.Spec : Prop :=
  ∀ n, P16209163941325200549.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P16231870343002742546

`A046073(n+1)/A087692(n+1)*A060594(n+1)²`
-/

namespace A319100.P16231870343002742546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A087692 (n + 1) : ℚ) * (A060594 (n + 1) ^ 2 : ℚ)

end

end A319100.P16231870343002742546

namespace A319100

/-- `A046073(n+1)/A087692(n+1)*A060594(n+1)²` -/
def P16231870343002742546.Spec : Prop :=
  ∀ n, P16231870343002742546.a n = (A319100 (n + 1) : ℚ)

end A319100

/-! ## A319100.P15161160515295729374

`A060839(n+1)²/A046073(n+1)*A087692(n+1)`
-/

namespace A319100.P15161160515295729374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060839 (n + 1) ^ 2 : ℚ) / (A046073 (n + 1) : ℚ) * (A087692 (n + 1) : ℚ)

end

end A319100.P15161160515295729374

namespace A319100

/-- `A060839(n+1)²/A046073(n+1)*A087692(n+1)` -/
def P15161160515295729374.Spec : Prop :=
  ∀ n, P15161160515295729374.a n = (A319100 (n + 1) : ℚ)

end A319100

/-!
# A319101: Number of solutions to x^7 == 1 (mod n).

The programs for A319101, there is no canonical definition to state claims against.
-/

/-! ## A319101.P10101902171232475993

`A000010(n+1)/A293484(n+1)`
-/

namespace A319101.P10101902171232475993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A293484 (n + 1) : ℚ)

end

end A319101.P10101902171232475993

/-! ## A319101.P12944942411104301810

`∑{d}[n+1, A307382(#)]`
-/

namespace A319101.P12944942411104301810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307382 d

end

end A319101.P12944942411104301810

/-! ## A319101.P3167673783992406192

`A073103(n+1)*A250207(n+1)/A293484(n+1)`
-/

namespace A319101.P3167673783992406192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073103 (n + 1) * A250207 (n + 1) : ℚ) / (A293484 (n + 1) : ℚ)

end

end A319101.P3167673783992406192

/-! ## A319101.P17161303085034437304

`A247257(n+1)/A293484(n+1)*A293485(n+1)`
-/

namespace A319101.P17161303085034437304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247257 (n + 1) : ℚ) / (A293484 (n + 1) : ℚ) * (A293485 (n + 1) : ℚ)

end

end A319101.P17161303085034437304

/-! ## A319101.P15137693967696127057

`A293483(n+1)/A293484(n+1)*A319100(n+1)`
-/

namespace A319101.P15137693967696127057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293483 (n + 1) : ℚ) / (A293484 (n + 1) : ℚ) * (A319100 (n + 1) : ℚ)

end

end A319101.P15137693967696127057

/-! ## A319101.P3075286221802071988

`A109010(A081727(n+1))`
-/

namespace A319101.P3075286221802071988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A081727 (n + 1)).toNat

end

end A319101.P3075286221802071988

/-! ## A319101.P13997642169076652935

`gcd(A000225(n)%8, A000010(n+1))`
-/

namespace A319101.P13997642169076652935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000225 n) 8) (A000010 (n + 1))

end

end A319101.P13997642169076652935

/-! ## A319101.P3804470070292776683

`gcd(A005009(n), A053575(n+1))`
-/

namespace A319101.P3804470070292776683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005009 n) (A053575 (n + 1))

end

end A319101.P3804470070292776683

/-! ## A319101.P6524912148156561024

`A109010(A308828(n+1))`
-/

namespace A319101.P6524912148156561024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A308828 (n + 1)).toNat

end

end A319101.P6524912148156561024

/-! ## A319101.P6336113223988013542

`gcd(7, Δ[A210000(n)])`
-/

namespace A319101.P6336113223988013542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (f1 (n + 1) - f1 n)

end

end A319101.P6336113223988013542

/-! ## A319101.P6628876300010814344

`A109010(A007732(n+1)²)`
-/

namespace A319101.P6628876300010814344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A007732 (n + 1) ^ 2).toNat

end

end A319101.P6628876300010814344

/-! ## A319101.P3756629737939468140

`2-A291578(A000010(n+1)²)`
-/

namespace A319101.P3756629737939468140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A291578 (A000010 (n + 1) ^ 2).toNat

end

end A319101.P3756629737939468140

/-! ## A319101.P14800609941505502855

`A109010(A000010(n+1)²)`
-/

namespace A319101.P14800609941505502855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A000010 (n + 1) ^ 2).toNat

end

end A319101.P14800609941505502855

/-! ## A319101.P13622817612609887073

`A109010(A002322(n+1)²)`
-/

namespace A319101.P13622817612609887073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A002322 (n + 1) ^ 2).toNat

end

end A319101.P13622817612609887073

/-! ## A319101.P8064482519650051145

`A109010(A007733(n+1)²)`
-/

namespace A319101.P8064482519650051145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109010 (A007733 (n + 1) ^ 2).toNat

end

end A319101.P8064482519650051145

/-!
# A319102: Triangle read by rows: The k-th column has alternating blocks of k 1's followed by k 0's (see example).

The programs for A319102, the canonical program `A319102.P8736418722383109281` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319102 has offset 1).

The definition of A319102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319102.P17108093334503300812

`A010766(n+1)%2`
-/

namespace A319102.P17108093334503300812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010766 (n + 1)) 2

end

end A319102.P17108093334503300812

namespace A319102

/-- `A010766(n+1)%2` -/
def P17108093334503300812.Spec : Prop :=
  ∀ n, P17108093334503300812.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P6210896611407696851

`A358877(n+1)%2`
-/

namespace A319102.P6210896611407696851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A358877 (n + 1)) 2

end

end A319102.P6210896611407696851

namespace A319102

/-- `A358877(n+1)%2` -/
def P6210896611407696851.Spec : Prop :=
  ∀ n, P6210896611407696851.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P3171507414334351380

`A360610(n+1)%2`
-/

namespace A319102.P3171507414334351380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360610 (n + 1)) 2

end

end A319102.P3171507414334351380

namespace A319102

/-- `A360610(n+1)%2` -/
def P3171507414334351380.Spec : Prop :=
  ∀ n, P3171507414334351380.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P13049259475436376259

`and(1, A174557(n+1))`
-/

namespace A319102.P13049259475436376259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A174557 (n + 1))

end

end A319102.P13049259475436376259

namespace A319102

/-- `and(1, A174557(n+1))` -/
def P13049259475436376259.Spec : Prop :=
  ∀ n, P13049259475436376259.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P8736418722383109281

`ceil(ratio[A074909(n)])%2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A319102

/-- `ceil(ratio[A074909(n)])%2` -/
def P8736418722383109281.Spec : Prop :=
  ∀ n, P8736418722383109281.a n = A319102 (n + 1)

theorem P8736418722383109281.correct : P8736418722383109281.Spec := by
  intro n
  simp only [A319102, Nat.add_sub_cancel]

end A319102

/-! ## A319102.P1895380077891463348

`ceil(ratio[A181971(n)])%2`
-/

namespace A319102.P1895380077891463348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ 2

end

end A319102.P1895380077891463348

namespace A319102

/-- `ceil(ratio[A181971(n)])%2` -/
def P1895380077891463348.Spec : Prop :=
  ∀ n, P1895380077891463348.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P16282475422129217464

`log2(gcd(2, A050206(n+2)))`
-/

namespace A319102.P16282475422129217464
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A050206 (n + 2)) : ℝ)

end

end A319102.P16282475422129217464

namespace A319102

/-- `log2(gcd(2, A050206(n+2)))` -/
def P16282475422129217464.Spec : Prop :=
  ∀ n, P16282475422129217464.a n = (A319102 (n + 1) : ℝ)

end A319102

/-! ## A319102.P2451740275251821764

`and(1, A010766(C(n+1, n)))`
-/

namespace A319102.P2451740275251821764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A010766 (Nat.choose (n + 1) n))

end

end A319102.P2451740275251821764

namespace A319102

/-- `and(1, A010766(C(n+1, n)))` -/
def P2451740275251821764.Spec : Prop :=
  ∀ n, P2451740275251821764.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P11132173674614485346

`A000035(A010766(n+1))`
-/

namespace A319102.P11132173674614485346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A010766 (n + 1)).toNat

end

end A319102.P11132173674614485346

namespace A319102

/-- `A000035(A010766(n+1))` -/
def P11132173674614485346.Spec : Prop :=
  ∀ n, P11132173674614485346.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P6183259154985948785

`A128174(A286245(n+1))`
-/

namespace A319102.P6183259154985948785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (A286245 (n + 1)).toNat

end

end A319102.P6183259154985948785

namespace A319102

/-- `A128174(A286245(n+1))` -/
def P6183259154985948785.Spec : Prop :=
  ∀ n, P6183259154985948785.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P3431246686437046180

`A059841(A010766(n+1)+1)`
-/

namespace A319102.P3431246686437046180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A010766 (n + 1) + 1).toNat

end

end A319102.P3431246686437046180

namespace A319102

/-- `A059841(A010766(n+1)+1)` -/
def P3431246686437046180.Spec : Prop :=
  ∀ n, P3431246686437046180.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P6272443945423186528

`2-A040001(A010766(n+1)²)`
-/

namespace A319102.P6272443945423186528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A040001 (A010766 (n + 1) ^ 2).toNat

end

end A319102.P6272443945423186528

namespace A319102

/-- `2-A040001(A010766(n+1)²)` -/
def P6272443945423186528.Spec : Prop :=
  ∀ n, P6272443945423186528.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P1647051175049049612

`ceil(ratio[A029635(n)])%2`
-/

namespace A319102.P1647051175049049612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉ 2

end

end A319102.P1647051175049049612

namespace A319102

/-- `ceil(ratio[A029635(n)])%2` -/
def P1647051175049049612.Spec : Prop :=
  ∀ n, P1647051175049049612.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P14647487914047754615

`A003985(A128489(n+1))`
-/

namespace A319102.P14647487914047754615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003985 (A128489 (n + 1)).toNat

end

end A319102.P14647487914047754615

namespace A319102

/-- `A003985(A128489(n+1))` -/
def P14647487914047754615.Spec : Prop :=
  ∀ n, P14647487914047754615.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P16228301445394672519

`A013942(2*(n+1))%2`
-/

namespace A319102.P16228301445394672519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013942 (2 * (n + 1))) 2

end

end A319102.P16228301445394672519

namespace A319102

/-- `A013942(2*(n+1))%2` -/
def P16228301445394672519.Spec : Prop :=
  ∀ n, P16228301445394672519.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P18367578209100911658

`A266216(A085383(n+1))`
-/

namespace A319102.P18367578209100911658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266216 (A085383 (n + 1)).toNat

end

end A319102.P18367578209100911658

namespace A319102

/-- `A266216(A085383(n+1))` -/
def P18367578209100911658.Spec : Prop :=
  ∀ n, P18367578209100911658.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P15840719885876159250

`A000035(A360610(n+1))`
-/

namespace A319102.P15840719885876159250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A360610 (n + 1)).toNat

end

end A319102.P15840719885876159250

namespace A319102

/-- `A000035(A360610(n+1))` -/
def P15840719885876159250.Spec : Prop :=
  ∀ n, P15840719885876159250.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P10311746568349089391

`A059841(A360610(n+1)+1)`
-/

namespace A319102.P10311746568349089391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A360610 (n + 1) + 1).toNat

end

end A319102.P10311746568349089391

namespace A319102

/-- `A059841(A360610(n+1)+1)` -/
def P10311746568349089391.Spec : Prop :=
  ∀ n, P10311746568349089391.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P7999454829911787929

`and(A010766(n+1), A174692(n))`
-/

namespace A319102.P7999454829911787929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010766 (n + 1)) (A174692 n)

end

end A319102.P7999454829911787929

namespace A319102

/-- `and(A010766(n+1), A174692(n))` -/
def P7999454829911787929.Spec : Prop :=
  ∀ n, P7999454829911787929.a n = A319102 (n + 1)

end A319102

/-! ## A319102.P8762429671945375772

`and(A174692(n), A360610(n+1))`
-/

namespace A319102.P8762429671945375772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174692 n) (A360610 (n + 1))

end

end A319102.P8762429671945375772

namespace A319102

/-- `and(A174692(n), A360610(n+1))` -/
def P8762429671945375772.Spec : Prop :=
  ∀ n, P8762429671945375772.a n = A319102 (n + 1)

end A319102

/-!
# A319104: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^(k^2))^(1/k^2).

The programs for A319104, there is no canonical definition to state claims against.
-/

/-! ## A319104.P5606091358156051678

`∏[or(n, A100656(3*n+1))]`
-/

namespace A319104.P5606091358156051678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A100656 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319104.P5606091358156051678

/-! ## A319104.P7304453258362305792

`A000027(∏[A078903(n+3)])`
-/

namespace A319104.P7304453258362305792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078903 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319104.P7304453258362305792

/-! ## A319104.P6278168894925427586

`∏[A001222(A056000(2^n))]`
-/

namespace A319104.P6278168894925427586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A056000 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A319104.P6278168894925427586

/-! ## A319104.P5378719072117150562

`A000027(∏[A121262(n)+n])`
-/

namespace A319104.P5378719072117150562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319104.P5378719072117150562

/-! ## A319104.P11068366407777396562

`A071364(∏[A280542(n)+n])`
-/

namespace A319104.P11068366407777396562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280542 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071364 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319104.P11068366407777396562

/-!
# A319105: Expansion of e.g.f. Product_{k>=0} 1/(1 - x^(2^k))^(1/2^k).

The programs for A319105, there is no canonical definition to state claims against.
-/

/-! ## A319105.P15105796028608624840

`A340192(C(∑[n], n))`
-/

namespace A319105.P15105796028608624840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340192 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A319105.P15105796028608624840

/-! ## A319105.P2626167557221842484

`∏{e}[(n-2)*a(n-1)*n², A000040(#)]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A319105.P2626167557221842484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4] fun n f1 =>
  ((n : ℤ) - 2) * f1 (n - 1) * (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A319105.P2626167557221842484

/-!
# A319106: Expansion of Product_{k>=1} (1 + x^k)^ceiling(k/2).

The programs for A319106, there is no canonical definition to state claims against.
-/

/-! ## A319106.P16060800949399233629

`A002024(A087956(n))-∑{e}[n+1, #]`
-/

namespace A319106.P16060800949399233629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A087956 n).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A319106.P16060800949399233629

/-! ## A319106.P7309966938873591411

`A002024(A087956(n))-A001222(n+1)`
-/

namespace A319106.P7309966938873591411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A087956 n).toNat - A001222 (n + 1)

end

end A319106.P7309966938873591411

/-! ## A319106.P824003826475774123

`A259361(A223537(n)+A014396(n))`
-/

namespace A319106.P824003826475774123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A223537 n + A014396 n).toNat

end

end A319106.P824003826475774123

/-! ## A319106.P3049892335007398559

`A161288(n+1)+A137735(A045883(n))`
-/

namespace A319106.P3049892335007398559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161288 (n + 1) + A137735 (A045883 n).toNat

end

end A319106.P3049892335007398559

/-! ## A319106.P10993621461452986589

`A161301(n+1)+A137735(A045883(n))`
-/

namespace A319106.P10993621461452986589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161301 (n + 1) + A137735 (A045883 n).toNat

end

end A319106.P10993621461452986589

/-!
# A319110: Expansion of Product_{k>=1} 1/(1 - (k - 1)*x^k).

The programs for A319110, there is no canonical definition to state claims against.
-/

/-! ## A319110.P14729218579331855186

`xor(A094769(n+1), A353629(A094776(n)))`
-/

namespace A319110.P14729218579331855186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A094769 (n + 1)) (A353629 (A094776 n).toNat)

end

end A319110.P14729218579331855186

/-! ## A319110.P2823450678591418598

`A057574(n)-A000045(A007307(n))`
-/

namespace A319110.P2823450678591418598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057574 n - A000045 (A007307 n).toNat

end

end A319110.P2823450678591418598

/-! ## A319110.P8645656252451749871

`A271106(A245116(n))+A245142(n+3)`
-/

namespace A319110.P8645656252451749871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271106 (A245116 n).toNat + A245142 (n + 3)

end

end A319110.P8645656252451749871

/-! ## A319110.P13021549819261069416

`A339396(A039915(n+1)%A135958(n))`
-/

namespace A319110.P13021549819261069416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 (Int.tmod (A039915 (n + 1)) (A135958 n)).toNat

end

end A319110.P13021549819261069416

/-! ## A319110.P16565304229267916804

`A339396(eq[A010051(n+1), A280865(n)])`
-/

namespace A319110.P16565304229267916804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A319110.P16565304229267916804

/-!
# A319111: Expansion of Product_{k>=1} 1/(1 - phi(k)*x^k), where phi = Euler totient function (A000010).

The programs for A319111, there is no canonical definition to state claims against.
-/

/-! ## A319111.P13407706771137520582

`A321578(ceil(exp(n-1)))`
-/

namespace A319111.P13407706771137520582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321578 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A319111.P13407706771137520582

/-! ## A319111.P5445527791684821066

`A055086(A088456(n+1)-n)`
-/

namespace A319111.P5445527791684821066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A088456 (n + 1) - (n : ℤ)).toNat

end

end A319111.P5445527791684821066

/-! ## A319111.P14563279319774349628

`A055086(A242096(n)+A052948(n))`
-/

namespace A319111.P14563279319774349628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A242096 n + A052948 n).toNat

end

end A319111.P14563279319774349628

/-! ## A319111.P2015982676103196206

`A293137(A052948(n)+A004247(n))`
-/

namespace A319111.P2015982676103196206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A052948 n + A004247 n).toNat

end

end A319111.P2015982676103196206

/-! ## A319111.P10620866430781383330

`A055086(A261083(n)+A052948(n))`
-/

namespace A319111.P10620866430781383330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A261083 n + A052948 n).toNat

end

end A319111.P10620866430781383330

/-!
# A319112: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^prime(k)/prime(k)).

The programs for A319112, there is no canonical definition to state claims against.
-/

/-! ## A319112.P4232349678981184334

`A357709(A005626(n+2))`
-/

namespace A319112.P4232349678981184334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357709 (A005626 (n + 2)).toNat

end

end A319112.P4232349678981184334

/-! ## A319112.P18342022776529937818

`A059995(11*A081096(n))`
-/

namespace A319112.P18342022776529937818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (11 * A081096 n).toNat

end

end A319112.P18342022776529937818

/-! ## A319112.P601356611228316257

`A059995(lcm(11, A081096(n)))`
-/

namespace A319112.P601356611228316257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (Int.lcm 11 (A081096 n))

end

end A319112.P601356611228316257

/-!
# A319114: Number of simple toroidal graphs on n nodes.

The programs for A319114, there is no canonical definition to state claims against.
-/

/-! ## A319114.P14560550138608955350

`A226893(A010748(n))`
-/

namespace A319114.P14560550138608955350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226893 (A010748 n).toNat

end

end A319114.P14560550138608955350

/-! ## A319114.P16718415450047142802

`A333213(A071725(n))`
-/

namespace A319114.P16718415450047142802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333213 (A071725 n).toNat

end

end A319114.P16718415450047142802

/-! ## A319114.P16530973431328214197

`A157894(A287993(n))`
-/

namespace A319114.P16530973431328214197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157894 (A287993 n).toNat

end

end A319114.P16530973431328214197

/-!
# A319115: Number of simple connected toroidal graphs on n nodes.

The programs for A319115, there is no canonical definition to state claims against.
-/

/-! ## A319115.P10072236138327329375

`A241064(A122491(n))`
-/

namespace A319115.P10072236138327329375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241064 (A122491 n).toNat

end

end A319115.P10072236138327329375

/-! ## A319115.P3813416601419309597

`A348469(A082938(n))`
-/

namespace A319115.P3813416601419309597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348469 (A082938 n).toNat

end

end A319115.P3813416601419309597

/-! ## A319115.P12077112721524922117

`A292149(A148713(n))`
-/

namespace A319115.P12077112721524922117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292149 (A148713 n).toNat

end

end A319115.P12077112721524922117

/-!
# A319116: Signs of the Maclaurin coefficients of 1/(exp(x) + Pi/2).

The programs for A319116, there is no canonical definition to state claims against.
-/

/-! ## A319116.P12388705922018395946

`(-1)^∑[n%11]`
-/

namespace A319116.P12388705922018395946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319116.P12388705922018395946

/-! ## A319116.P2058657526946961299

`(-1)^A130489(n)`
-/

namespace A319116.P2058657526946961299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A130489 n : ℤ)

end

end A319116.P2058657526946961299

/-! ## A319116.P5865255691000315576

`A033999(∑[n%11])`
-/

namespace A319116.P5865255691000315576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319116.P5865255691000315576

/-! ## A319116.P940165604650812760

`(-1)^∑[A010880(n)]`
-/

namespace A319116.P940165604650812760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A319116.P940165604650812760

/-! ## A319116.P16800200949550720592

`(-1)^∑[A055649(n)]`
-/

namespace A319116.P16800200949550720592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055649 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A319116.P16800200949550720592

/-! ## A319116.P15815151425600595375

`-(-1)^A037086(2*(n+2))`
-/

namespace A319116.P15815151425600595375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A037086 (2 * (n + 2)) : ℤ))

end

end A319116.P15815151425600595375

/-! ## A319116.P16393159372520900217

`A033999(A130489(n))`
-/

namespace A319116.P16393159372520900217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A130489 n).toNat

end

end A319116.P16393159372520900217

/-! ## A319116.P14239718631845323411

`A057077(A178787(n))`
-/

namespace A319116.P14239718631845323411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (A178787 n).toNat

end

end A319116.P14239718631845323411

/-! ## A319116.P4931702707679890714

`A359738(A315034(n))`
-/

namespace A319116.P4931702707679890714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359738 (A315034 n).toNat

end

end A319116.P4931702707679890714

/-! ## A319116.P14108197710753996973

`A033999(∑[A010880(n)])`
-/

namespace A319116.P14108197710753996973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010880 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319116.P14108197710753996973

/-!
# A319117: Sign of the n-th Maclaurin coefficient of 1/(exp(x) + exp(1)/2).

The programs for A319117, there is no canonical definition to state claims against.
-/

/-! ## A319117.P11260220852635881080

`(-1)^ceil(n/(log2(log(3))+2))`
-/

namespace A319117.P11260220852635881080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌈(n : ℝ) / (Real.logb 2 (Real.log (3 : ℝ)) + 2)⌉ : ℤ)

end

end A319117.P11260220852635881080

/-! ## A319117.P13561554055068346769

`1-and(2, 1-A054900(n)+n)`
-/

namespace A319117.P13561554055068346769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (1 - A054900 n + (n : ℤ))

end

end A319117.P13561554055068346769

/-! ## A319117.P8742517009590959072

`A087960(n-∑[val(C(4, n+1)+n, 16)])`
-/

namespace A319117.P8742517009590959072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 4 (n + 1) + n) 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319117.P8742517009590959072

/-! ## A319117.P13832076014246023804

`and(2, A188462(2*n+1)+9+n)-1`
-/

namespace A319117.P13832076014246023804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A188462 (2 * n + 1) + 9 + (n : ℤ)) - 1

end

end A319117.P13832076014246023804

/-! ## A319117.P4091692652003481175

`A087960(floor((and(n, -5)/3+2)*sqrt(2))²)`
-/

namespace A319117.P4091692652003481175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (⌊((Int.land (n : ℤ) (-5) : ℚ) / 3 + 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2).toNat

end

end A319117.P4091692652003481175

/-! ## A319117.P14307950869292478170

`A330034(A004940(n+1))`
-/

namespace A319117.P14307950869292478170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330034 (A004940 (n + 1)).toNat

end

end A319117.P14307950869292478170

/-! ## A319117.P3962352568548887976

`A087960(n-A054900(n))`
-/

namespace A319117.P3962352568548887976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 ((n : ℤ) - A054900 n).toNat

end

end A319117.P3962352568548887976

/-! ## A319117.P452217589461319270

`A087960(∑[A040324(n)²])`
-/

namespace A319117.P452217589461319270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040324 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319117.P452217589461319270

/-! ## A319117.P17012632379667283588

`A057077(∑[char[A056962(n)]])`
-/

namespace A319117.P17012632379667283588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319117.P17012632379667283588

/-! ## A319117.P3679492678639990370

`A091337(or(1, A063460(n+1)))`
-/

namespace A319117.P3679492678639990370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (Int.lor 1 (A063460 (n + 1))).toNat

end

end A319117.P3679492678639990370

/-!
# A319118: Number of multimin tree-factorizations of n.

The programs for A319118, there is no canonical definition to state claims against.
-/

/-! ## A319118.P2709280785816982004

`A052330(A252736(A006241(n+1)²))`
-/

namespace A319118.P2709280785816982004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A252736 (A006241 (n + 1) ^ 2).toNat).toNat

end

end A319118.P2709280785816982004

/-! ## A319118.P15712808086539202314

`A000003(A060160(A317545(n+1))+2)`
-/

namespace A319118.P15712808086539202314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (A060160 (A317545 (n + 1)).toNat + 2).toNat

end

end A319118.P15712808086539202314

/-! ## A319118.P17574304712645741400

`A000005(A110679(A319002(n+1)-1))`
-/

namespace A319118.P17574304712645741400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A110679 (A319002 (n + 1) - 1).toNat).toNat

end

end A319118.P17574304712645741400

/-! ## A319118.P5385537716459855603

`A330813(∏{d}[A319002(n+1), A006530(#)])`
-/

namespace A319118.P5385537716459855603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330813 (∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d).toNat

end

end A319118.P5385537716459855603

/-! ## A319118.P7698144627137094232

`A025487(A319002(n+1)%A089085(n+1))`
-/

namespace A319118.P7698144627137094232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (Int.tmod (A319002 (n + 1)) (A089085 (n + 1))).toNat

end

end A319118.P7698144627137094232

/-!
# A319119: Number of multimin tree-factorizations of Heinz numbers of integer partitions of n.

The programs for A319119, there is no canonical definition to state claims against.
-/

/-! ## A319119.P15297452778793134277

`A247983(A246065(n)+3)`
-/

namespace A319119.P15297452778793134277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247983 (A246065 n + 3).toNat

end

end A319119.P15297452778793134277

/-! ## A319119.P16331789093972902086

`∑[A276512(∏[A099884(n)])]`
-/

namespace A319119.P16331789093972902086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276512 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319119.P16331789093972902086

/-!
# A319120: T(n, k) = binomial(n - k - 1, k)*binomial(2*n - 2*k, n)/(n + 1), for n >= 1 and 0 <= k <= floor((n - 1)/2), triangle read by rows.

The programs for A319120, there is no canonical definition to state claims against.
-/

/-! ## A319120.P14597770039663910300

`A120986(A091018(n))`
-/

namespace A319120.P14597770039663910300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A091018 n).toNat

end

end A319120.P14597770039663910300

/-! ## A319120.P566167229457649435

`A120986(A056536(n+1)-1)`
-/

namespace A319120.P566167229457649435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120986 (A056536 (n + 1) - 1).toNat

end

end A319120.P566167229457649435

/-! ## A319120.P10360037800937624759

`A118919(n)+A085974(A000149(n))`
-/

namespace A319120.P10360037800937624759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118919 n + A085974 (A000149 n).toNat

end

end A319120.P10360037800937624759

/-! ## A319120.P17039623559122490467

`A118919(n)+A102683(A000108(n))`
-/

namespace A319120.P17039623559122490467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118919 n + A102683 (A000108 n).toNat

end

end A319120.P17039623559122490467

/-! ## A319120.P4960937777559054313

`A171368(A126331(n))+A118919(n)`
-/

namespace A319120.P4960937777559054313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171368 (A126331 n).toNat + A118919 n

end

end A319120.P4960937777559054313

/-!
# A319121: Number of complete multimin tree-factorizations of Heinz numbers of integer partitions of n.

The programs for A319121, there is no canonical definition to state claims against.
-/

/-! ## A319121.P4049223161206248901

`A141204(A109154(n))`
-/

namespace A319121.P4049223161206248901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141204 (A109154 n).toNat

end

end A319121.P4049223161206248901

/-! ## A319121.P13799677655583224203

`∑[A256133(A320181(n))]`
-/

namespace A319121.P13799677655583224203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (A320181 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319121.P13799677655583224203

/-!
# A319122: Number of phylogenetic plane trees on n labels.

The programs for A319122, there is no canonical definition to state claims against.
-/

/-! ## A319122.P3716609442298233290

`A277130(A002110(n+1))`
-/

namespace A319122.P3716609442298233290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277130 (A002110 (n + 1)).toNat

end

end A319122.P3716609442298233290

/-!
# A319123: Number of series-reduced plane trees with n leaves such that each branch directly under any given node has a different number of leaves.

The programs for A319123, there is no canonical definition to state claims against.
-/

/-! ## A319123.P4263028516930630734

`or(A001045(n), A008620(A178872(n)))`
-/

namespace A319123.P4263028516930630734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001045 n) (A008620 (A178872 n).toNat)

end

end A319123.P4263028516930630734

/-! ## A319123.P1063582240229710558

`or(A113983(A026595(n)), A141200(n+1))`
-/

namespace A319123.P1063582240229710558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113983 (A026595 n).toNat) (A141200 (n + 1))

end

end A319123.P1063582240229710558

/-! ## A319123.P15260261167720015898

`A006984(A148802(n))`
-/

namespace A319123.P15260261167720015898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A148802 n).toNat

end

end A319123.P15260261167720015898

/-!
# A319126: Convex hull primes, that is, prime numbers corresponding to the convex hull of PrimePi, the prime counting function.

The programs for A319126, there is no canonical definition to state claims against.
-/

/-! ## A319126.P8036730994490784114

`record[A385654(∑[n+2])]`
-/

namespace A319126.P8036730994490784114
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385654 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319126.P8036730994490784114

/-! ## A319126.P7541031424038176800

`A385654(A120552(n))`
-/

namespace A319126.P7541031424038176800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385654 (A120552 n).toNat

end

end A319126.P7541031424038176800

/-! ## A319126.P17090796581946635641

`∩[A124661(n+1), A191878(n+1)]`
-/

namespace A319126.P17090796581946635641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319126.P17090796581946635641

/-! ## A319126.P1180413087876916558

`∩[A124661(n+1), A256212(n+1)]`
-/

namespace A319126.P1180413087876916558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319126.P1180413087876916558

/-! ## A319126.P12142251485894110854

`∩[A192588(n+1), A385503(n+1)]`
-/

namespace A319126.P12142251485894110854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319126.P12142251485894110854

/-!
# A319127: Crossing number of the complete bipartite graph K_{6,n}.

The programs for A319127, the canonical program `A319127.P2305335718442919278` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319127 has offset 1).

The definition of A319127 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319127.P10616414862791720045

`6*floor((n+1)/2)*floor(n/2)`
-/

namespace A319127.P10616414862791720045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n + 1 : ℚ) / 2⌋ * ⌊(n : ℚ) / 2⌋

end

end A319127.P10616414862791720045

namespace A319127

/-- `6*floor((n+1)/2)*floor(n/2)` -/
def P10616414862791720045.Spec : Prop :=
  ∀ n, P10616414862791720045.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P2305335718442919278

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319127

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2305335718442919278.Spec : Prop :=
  ∀ n, P2305335718442919278.a n = A319127 (n + 1)

theorem P2305335718442919278.correct : P2305335718442919278.Spec := by
  intro n
  simp only [A319127, Nat.add_sub_cancel]

end A319127

/-! ## A319127.P5329194960877445194

`∑[3*and(n, -2)]`
-/

namespace A319127.P5329194960877445194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P5329194960877445194

namespace A319127

/-- `∑[3*and(n, -2)]` -/
def P5329194960877445194.Spec : Prop :=
  ∀ n, P5329194960877445194.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P14328751691276553922

`∑[3*(or(1, n)-1)]`
-/

namespace A319127.P14328751691276553922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.lor 1 n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P14328751691276553922

namespace A319127

/-- `∑[3*(or(1, n)-1)]` -/
def P14328751691276553922.Spec : Prop :=
  ∀ n, P14328751691276553922.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P6575737839845764341

`∑[3*xor(1, or(1, n))]`
-/

namespace A319127.P6575737839845764341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 1 (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P6575737839845764341

namespace A319127

/-- `∑[3*xor(1, or(1, n))]` -/
def P6575737839845764341.Spec : Prop :=
  ∀ n, (P6575737839845764341.a n : ℤ) = A319127 (n + 1)

end A319127

/-! ## A319127.P17557750336165941913

`∑[3*(n-n%2)]`
-/

namespace A319127.P17557750336165941913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P17557750336165941913

namespace A319127

/-- `∑[3*(n-n%2)]` -/
def P17557750336165941913.Spec : Prop :=
  ∀ n, P17557750336165941913.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P6042309215865164003

`∑[a(n-2)+6]` with `a(0)=0, a(1)=0`
-/

namespace A319127.P6042309215865164003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P6042309215865164003

namespace A319127

/-- `∑[a(n-2)+6]` -/
def P6042309215865164003.Spec : Prop :=
  ∀ n, (P6042309215865164003.a n : ℤ) = A319127 (n + 1)

end A319127

/-! ## A319127.P1703373838268675068

`-∑[a(n-2)-6]` with `a(0)=0, a(1)=0`
-/

namespace A319127.P1703373838268675068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319127.P1703373838268675068

namespace A319127

/-- `-∑[a(n-2)-6]` -/
def P1703373838268675068.Spec : Prop :=
  ∀ n, P1703373838268675068.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P6336218088837157560

`∑[∑[6-a(n-1)]]` with `a(0)=0, a(1)=0`
-/

namespace A319127.P6336218088837157560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P6336218088837157560

namespace A319127

/-- `∑[∑[6-a(n-1)]]` -/
def P6336218088837157560.Spec : Prop :=
  ∀ n, P6336218088837157560.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P551624372657997419

`∑[3*(gcd(2, n)+n-2)]`
-/

namespace A319127.P551624372657997419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((Nat.gcd 2 n : ℤ) + ((n : ℤ) - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P551624372657997419

namespace A319127

/-- `∑[3*(gcd(2, n)+n-2)]` -/
def P551624372657997419.Spec : Prop :=
  ∀ n, P551624372657997419.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P2426851801032357097

`∑[3*lcm(2, n)%(n+1)]`
-/

namespace A319127.P2426851801032357097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.lcm 2 n % (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P2426851801032357097

namespace A319127

/-- `∑[3*lcm(2, n)%(n+1)]` -/
def P2426851801032357097.Spec : Prop :=
  ∀ n, (P2426851801032357097.a n : ℤ) = A319127 (n + 1)

end A319127

/-! ## A319127.P6613140459308383493

`∑[∑[∑[ogf(6x^2/(1+x))]]]`
-/

namespace A319127.P6613140459308383493
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 6] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P6613140459308383493

namespace A319127

/-- `∑[∑[∑[ogf(6x^2/(1+x))]]]` -/
def P6613140459308383493.Spec : Prop :=
  ∀ n, P6613140459308383493.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P6092396129540432109

`ogf(6x^2/(1-2x+2x^3-x^4))`
-/

namespace A319127.P6092396129540432109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 6] [1, -2, 0, 2, -1] n

end

end A319127.P6092396129540432109

namespace A319127

/-- `ogf(6x^2/(1-2x+2x^3-x^4))` -/
def P6092396129540432109.Spec : Prop :=
  ∀ n, P6092396129540432109.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P15937084372989291740

`a(n-2)+6*(n-1)` with `a(0)=0, a(1)=0`
-/

namespace A319127.P15937084372989291740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 2) + 6 * ((n : ℤ) - 1)

end

end A319127.P15937084372989291740

namespace A319127

/-- `a(n-2)+6*(n-1)` -/
def P15937084372989291740.Spec : Prop :=
  ∀ n, P15937084372989291740.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P3780356469228148296

`6*n-(6-a(n-2))` with `a(0)=0, a(1)=0`
-/

namespace A319127.P3780356469228148296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  (6 * n : ℤ) - (6 - a (n - 2))

end

end A319127.P3780356469228148296

namespace A319127

/-- `6*n-(6-a(n-2))` -/
def P3780356469228148296.Spec : Prop :=
  ∀ n, P3780356469228148296.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P1145371201567020095

`∑[eq[n-2, and(n, n+2)]-(n+2)]`
-/

namespace A319127.P1145371201567020095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n : ℤ) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P1145371201567020095

namespace A319127

/-- `∑[eq[n-2, and(n, n+2)]-(n+2)]` -/
def P1145371201567020095.Spec : Prop :=
  ∀ n, P1145371201567020095.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P1184362622257076453

`∑[∑[A021169(n)]]`
-/

namespace A319127.P1184362622257076453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P1184362622257076453

namespace A319127

/-- `∑[∑[A021169(n)]]` -/
def P1184362622257076453.Spec : Prop :=
  ∀ n, P1184362622257076453.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P2422868519900348413

`∑[2*A168237(n)]`
-/

namespace A319127.P2422868519900348413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P2422868519900348413

namespace A319127

/-- `∑[2*A168237(n)]` -/
def P2422868519900348413.Spec : Prop :=
  ∀ n, P2422868519900348413.a n = A319127 (n + 1)

end A319127

/-! ## A319127.P4116437927369833764

`∑[3*A052928(n)]`
-/

namespace A319127.P4116437927369833764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A052928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319127.P4116437927369833764

namespace A319127

/-- `∑[3*A052928(n)]` -/
def P4116437927369833764.Spec : Prop :=
  ∀ n, P4116437927369833764.a n = A319127 (n + 1)

end A319127

/-!
# A319128: Interleave n*(3*n - 2), 3*n^2 + n - 1, n=0,0,1,1, ... .

The programs for A319128, the canonical program `A319128.P2863074692727965397` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319128 has offset 0).

The definition of A319128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319128.P2863074692727965397

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319128

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P2863074692727965397.Spec : Prop :=
  ∀ n, P2863074692727965397.a n = A319128 n

theorem P2863074692727965397.correct : P2863074692727965397.Spec := by
  intro n
  simp only [A319128]

end A319128

/-! ## A319128.P16382025610461318717

`floor(3*(n/2)²-n)`
-/

namespace A319128.P16382025610461318717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * ((n : ℚ) / 2) ^ 2 - (n : ℚ)⌋

end

end A319128.P16382025610461318717

namespace A319128

/-- `floor(3*(n/2)²-n)` -/
def P16382025610461318717.Spec : Prop :=
  ∀ n, P16382025610461318717.a n = A319128 n

end A319128

/-! ## A319128.P16011639395830217463

`∑[∑[(n²-1)%4]]+1`
-/

namespace A319128.P16011639395830217463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A319128.P16011639395830217463

namespace A319128

/-- `∑[∑[(n²-1)%4]]+1` -/
def P16011639395830217463.Spec : Prop :=
  ∀ n, P16011639395830217463.a n = A319128 n

end A319128

/-! ## A319128.P1378910393482186710

`∑[a(n-2)+3]` with `a(0)=0, a(1)=-1, a(2)=2`
-/

namespace A319128.P1378910393482186710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 2] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319128.P1378910393482186710

namespace A319128

/-- `∑[a(n-2)+3]` -/
def P1378910393482186710.Spec : Prop :=
  ∀ n, P1378910393482186710.a n = A319128 n

end A319128

/-! ## A319128.P6294186763885717007

`1-∑[a(n-2)-3]` with `a(0)=1, a(1)=1`
-/

namespace A319128.P6294186763885717007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319128.P6294186763885717007

namespace A319128

/-- `1-∑[a(n-2)-3]` -/
def P6294186763885717007.Spec : Prop :=
  ∀ n, P6294186763885717007.a n = A319128 n

end A319128

/-! ## A319128.P7966884110963833777

`∑[3*(n-∑[n%2])]-n`
-/

namespace A319128.P7966884110963833777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A319128.P7966884110963833777

namespace A319128

/-- `∑[3*(n-∑[n%2])]-n` -/
def P7966884110963833777.Spec : Prop :=
  ∀ n, P7966884110963833777.a n = A319128 n

end A319128

/-! ## A319128.P2640568027174392458

`ogf((-x+3x^2+x^3)/(1-2x+2x^3-x^4))`
-/

namespace A319128.P2640568027174392458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 3, 1] [1, -2, 0, 2, -1] n

end

end A319128.P2640568027174392458

namespace A319128

/-- `ogf((-x+3x^2+x^3)/(1-2x+2x^3-x^4))` -/
def P2640568027174392458.Spec : Prop :=
  ∀ n, P2640568027174392458.a n = A319128 n

end A319128

/-! ## A319128.P6044684483200179021

`3*floor(n/2)+a(n-1)-1` with `a(0)=0`
-/

namespace A319128.P6044684483200179021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * ⌊(n : ℚ) / 2⌋ + (a (n - 1) - 1)

end

end A319128.P6044684483200179021

namespace A319128

/-- `3*floor(n/2)+a(n-1)-1` -/
def P6044684483200179021.Spec : Prop :=
  ∀ n, P6044684483200179021.a n = A319128 n

end A319128

/-! ## A319128.P6920890482632266789

`3*floor(n/2)-(1-a(n-1))` with `a(0)=0`
-/

namespace A319128.P6920890482632266789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  3 * ⌊(n : ℚ) / 2⌋ - (1 - a (n - 1))

end

end A319128.P6920890482632266789

namespace A319128

/-- `3*floor(n/2)-(1-a(n-1))` -/
def P6920890482632266789.Spec : Prop :=
  ∀ n, P6920890482632266789.a n = A319128 n

end A319128

/-! ## A319128.P10601527442080995837

`A242477(n)-n`
-/

namespace A319128.P10601527442080995837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242477 n - (n : ℤ)

end

end A319128.P10601527442080995837

namespace A319128

/-- `A242477(n)-n` -/
def P10601527442080995837.Spec : Prop :=
  ∀ n, P10601527442080995837.a n = A319128 n

end A319128

/-! ## A319128.P12429498095187604232

`∑[A168237(n)]-n`
-/

namespace A319128.P12429498095187604232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168237 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A319128.P12429498095187604232

namespace A319128

/-- `∑[A168237(n)]-n` -/
def P12429498095187604232.Spec : Prop :=
  ∀ n, P12429498095187604232.a n = A319128 n

end A319128

/-! ## A319128.P13413476462790230356

`3*A002620(n)-n`
-/

namespace A319128.P13413476462790230356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002620 n - (n : ℤ)

end

end A319128.P13413476462790230356

namespace A319128

/-- `3*A002620(n)-n` -/
def P13413476462790230356.Spec : Prop :=
  ∀ n, P13413476462790230356.a n = A319128 n

end A319128

/-! ## A319128.P11440426572265359844

`1-∑[∑[A115634(n)]]`
-/

namespace A319128.P11440426572265359844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115634 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319128.P11440426572265359844

namespace A319128

/-- `1-∑[∑[A115634(n)]]` -/
def P11440426572265359844.Spec : Prop :=
  ∀ n, P11440426572265359844.a n = A319128 n

end A319128

/-! ## A319128.P14372609867137680722

`n²-abs(A131723(n))`
-/

namespace A319128.P14372609867137680722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - |A131723 n|

end

end A319128.P14372609867137680722

namespace A319128

/-- `n²-abs(A131723(n))` -/
def P14372609867137680722.Spec : Prop :=
  ∀ n, P14372609867137680722.a n = A319128 n

end A319128

/-! ## A319128.P2476883040271220999

`n²-∑[A030451(n)]`
-/

namespace A319128.P2476883040271220999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319128.P2476883040271220999

namespace A319128

/-- `n²-∑[A030451(n)]` -/
def P2476883040271220999.Spec : Prop :=
  ∀ n, P2476883040271220999.a n = A319128 n

end A319128

/-! ## A319128.P12501923917723805467

`A238377(n)-Δ[n²]`
-/

namespace A319128.P12501923917723805467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238377 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A319128.P12501923917723805467

namespace A319128

/-- `A238377(n)-Δ[n²]` -/
def P12501923917723805467.Spec : Prop :=
  ∀ n, P12501923917723805467.a n = A319128 n

end A319128

/-! ## A319128.P11558237280062912090

`A195041(n)-∑[2*n]`
-/

namespace A319128.P11558237280062912090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195041 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A319128.P11558237280062912090

namespace A319128

/-- `A195041(n)-∑[2*n]` -/
def P11558237280062912090.Spec : Prop :=
  ∀ n, P11558237280062912090.a n = A319128 n

end A319128

/-! ## A319128.P8422592687107834805

`n²-(A004652(n)+n)`
-/

namespace A319128.P8422592687107834805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (A004652 n + (n : ℤ))

end

end A319128.P8422592687107834805

namespace A319128

/-- `n²-(A004652(n)+n)` -/
def P8422592687107834805.Spec : Prop :=
  ∀ n, P8422592687107834805.a n = A319128 n

end A319128

/-! ## A319128.P9239436870498176169

`A319127(n+1)/2-n`
-/

namespace A319128.P9239436870498176169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319127 (n + 1) : ℚ) / 2 - (n : ℚ)

end

end A319128.P9239436870498176169

namespace A319128

/-- `A319127(n+1)/2-n` -/
def P9239436870498176169.Spec : Prop :=
  ∀ n, P9239436870498176169.a n = (A319128 n : ℚ)

end A319128

/-! ## A319128.P11768889394028993019

`3*A033638(n)-(n+3)`
-/

namespace A319128.P11768889394028993019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033638 n - (n + 3 : ℤ)

end

end A319128.P11768889394028993019

namespace A319128

/-- `3*A033638(n)-(n+3)` -/
def P11768889394028993019.Spec : Prop :=
  ∀ n, P11768889394028993019.a n = A319128 n

end A319128

/-!
# A319130: Expansion of Product_{k>=1} 1/(1 - x^k)^(2^omega(k)), where omega(k) = number of distinct primes dividing k (A001221).

The programs for A319130, there is no canonical definition to state claims against.
-/

/-! ## A319130.P1923529117540283126

`A329467(n)+A178798(A006981(n))`
-/

namespace A319130.P1923529117540283126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329467 n + A178798 (A006981 n).toNat

end

end A319130.P1923529117540283126

/-! ## A319130.P12852062393512765240

`A329467(n)+A089805(A163598(n+1))`
-/

namespace A319130.P12852062393512765240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329467 n + A089805 (A163598 (n + 1)).toNat

end

end A319130.P12852062393512765240

/-! ## A319130.P8863933764529415920

`A329467(n)+A178798(A159288(n+1))`
-/

namespace A319130.P8863933764529415920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329467 n + A178798 (A159288 (n + 1)).toNat

end

end A319130.P8863933764529415920

/-!
# A319131: a(n) = Sum_{d|n} Sum_{p|d, p prime} p.

The programs for A319131, the canonical program `A319131.P10960371744779715006` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319131 has offset 1).

The definition of A319131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319131.P15018358321766963361

`∑{d}[n+1, A008472(#)]`
-/

namespace A319131.P15018358321766963361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008472 d

end

end A319131.P15018358321766963361

namespace A319131

/-- `∑{d}[n+1, A008472(#)]` -/
def P15018358321766963361.Spec : Prop :=
  ∀ n, P15018358321766963361.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P15299513329689061923

`∑{p}[n+1, #*A000005((n+1)/#)]`
-/

namespace A319131.P15299513329689061923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A319131.P15299513329689061923

namespace A319131

/-- `∑{p}[n+1, #*A000005((n+1)/#)]` -/
def P15299513329689061923.Spec : Prop :=
  ∀ n, P15299513329689061923.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P5129382584030786497

`A351746(n+1)+A062799(n+1)`
-/

namespace A319131.P5129382584030786497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351746 (n + 1) + A062799 (n + 1)

end

end A319131.P5129382584030786497

namespace A319131

/-- `A351746(n+1)+A062799(n+1)` -/
def P5129382584030786497.Spec : Prop :=
  ∀ n, P5129382584030786497.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P1004579784321791758

`∑{d}[n+1, A000005(#)*A061397((n+1)/#)]`
-/

namespace A319131.P1004579784321791758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319131.P1004579784321791758

namespace A319131

/-- `∑{d}[n+1, A000005(#)*A061397((n+1)/#)]` -/
def P1004579784321791758.Spec : Prop :=
  ∀ n, P1004579784321791758.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P10960371744779715006

`∑{d}[n+1, A007425(#)*A137851((n+1)/#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A319131

/-- `∑{d}[n+1, A007425(#)*A137851((n+1)/#)]` -/
def P10960371744779715006.Spec : Prop :=
  ∀ n, P10960371744779715006.a n = A319131 (n + 1)

theorem P10960371744779715006.correct : P10960371744779715006.Spec := by
  intro n
  simp only [A319131, Nat.add_sub_cancel]

end A319131

/-! ## A319131.P16051947577854972485

`∑{d}[n+1, A038712(#)*A300852((n+1)/#)]`
-/

namespace A319131.P16051947577854972485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A300852 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319131.P16051947577854972485

namespace A319131

/-- `∑{d}[n+1, A038712(#)*A300852((n+1)/#)]` -/
def P16051947577854972485.Spec : Prop :=
  ∀ n, P16051947577854972485.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P17028479385065098132

`∑{d}[n+1, A023900(#)*A329354((n+1)/#)]`
-/

namespace A319131.P17028479385065098132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A329354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319131.P17028479385065098132

namespace A319131

/-- `∑{d}[n+1, A023900(#)*A329354((n+1)/#)]` -/
def P17028479385065098132.Spec : Prop :=
  ∀ n, P17028479385065098132.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P9705430646905702334

`∑{d}[n+1, A130054(#)*A328260((n+1)/#)]`
-/

namespace A319131.P9705430646905702334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319131.P9705430646905702334

namespace A319131

/-- `∑{d}[n+1, A130054(#)*A328260((n+1)/#)]` -/
def P9705430646905702334.Spec : Prop :=
  ∀ n, P9705430646905702334.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P2114200682415796919

`∑{d}[n+1, A345266(#²)]`
-/

namespace A319131.P2114200682415796919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A345266 (d ^ 2)

end

end A319131.P2114200682415796919

namespace A319131

/-- `∑{d}[n+1, A345266(#²)]` -/
def P2114200682415796919.Spec : Prop :=
  ∀ n, P2114200682415796919.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P8287178496054521569

`∑{d}[n+1, A063958(#²)]`
-/

namespace A319131.P8287178496054521569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063958 (d ^ 2)

end

end A319131.P8287178496054521569

namespace A319131

/-- `∑{d}[n+1, A063958(#²)]` -/
def P8287178496054521569.Spec : Prop :=
  ∀ n, P8287178496054521569.a n = A319131 (n + 1)

end A319131

/-! ## A319131.P5889089991519059856

`∑{d}[n+1, A097974(#²)]`
-/

namespace A319131.P5889089991519059856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A097974 (d ^ 2)

end

end A319131.P5889089991519059856

namespace A319131

/-- `∑{d}[n+1, A097974(#²)]` -/
def P5889089991519059856.Spec : Prop :=
  ∀ n, P5889089991519059856.a n = A319131 (n + 1)

end A319131

/-!
# A319132: a(n) = Sum_{d|n} Sum_{j|d} mu(j)^2*j, where mu = Möbius function (A008683).

The programs for A319132, the canonical program `A319132.P2708375044891269701` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319132 has offset 1).

The definition of A319132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A319132.P2708375044891269701

`∑{d}[n+1, A048250(#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319132

/-- `∑{d}[n+1, A048250(#)]` -/
def P2708375044891269701.Spec : Prop :=
  ∀ n, P2708375044891269701.a n = A319132 (n + 1)

theorem P2708375044891269701.correct : P2708375044891269701.Spec := by
  intro n
  simp only [A319132, Nat.add_sub_cancel]

end A319132

/-! ## A319132.P469230570748144018

`∑{d}[n+1, A000203(A007947(#))]`
-/

namespace A319132.P469230570748144018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (A007947 d).toNat

end

end A319132.P469230570748144018

namespace A319132

/-- `∑{d}[n+1, A000203(A007947(#))]` -/
def P469230570748144018.Spec : Prop :=
  ∀ n, P469230570748144018.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P11306268503943954945

`∑{d}[n+1, A000203(#/A003557(#))]`
-/

namespace A319132.P11306268503943954945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (SequenceMachineLib.roundAway ((d : ℚ) / (A003557 d : ℚ))).toNat

end

end A319132.P11306268503943954945

namespace A319132

/-- `∑{d}[n+1, A000203(#/A003557(#))]` -/
def P11306268503943954945.Spec : Prop :=
  ∀ n, P11306268503943954945.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P13455321237158390112

`∑{d}[n+1, A007913(#)*A034444((n+1)/#)]`
-/

namespace A319132.P13455321237158390112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P13455321237158390112

namespace A319132

/-- `∑{d}[n+1, A007913(#)*A034444((n+1)/#)]` -/
def P13455321237158390112.Spec : Prop :=
  ∀ n, P13455321237158390112.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P18010097989137022278

`∑{d}[n+1, A008966(#)*A069088((n+1)/#)]`
-/

namespace A319132.P18010097989137022278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A069088 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P18010097989137022278

namespace A319132

/-- `∑{d}[n+1, A008966(#)*A069088((n+1)/#)]` -/
def P18010097989137022278.Spec : Prop :=
  ∀ n, P18010097989137022278.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P43718677989706543

`∑{d}[n+1, A046970(#)*A065764((n+1)/#)]`
-/

namespace A319132.P43718677989706543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046970 d * A065764 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P43718677989706543

namespace A319132

/-- `∑{d}[n+1, A046970(#)*A065764((n+1)/#)]` -/
def P43718677989706543.Spec : Prop :=
  ∀ n, P43718677989706543.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P2519675630724219841

`∑{d}[n+1, A064950(#)*A101035((n+1)/#)]`
-/

namespace A319132.P2519675630724219841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064950 d * A101035 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P2519675630724219841

namespace A319132

/-- `∑{d}[n+1, A064950(#)*A101035((n+1)/#)]` -/
def P2519675630724219841.Spec : Prop :=
  ∀ n, P2519675630724219841.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P10274215226579886108

`∑{d}[n+1, A038712(#)*A300894((n+1)/#)]`
-/

namespace A319132.P10274215226579886108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A300894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P10274215226579886108

namespace A319132

/-- `∑{d}[n+1, A038712(#)*A300894((n+1)/#)]` -/
def P10274215226579886108.Spec : Prop :=
  ∀ n, P10274215226579886108.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P15707557750054614258

`∑{d}[n+1, A019554(#)*A344326((n+1)/#)]`
-/

namespace A319132.P15707557750054614258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 d * A344326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P15707557750054614258

namespace A319132

/-- `∑{d}[n+1, A019554(#)*A344326((n+1)/#)]` -/
def P15707557750054614258.Spec : Prop :=
  ∀ n, P15707557750054614258.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P3476276210410816198

`∑{d}[n+1, A023900(#)*A357938((n+1)/#)]`
-/

namespace A319132.P3476276210410816198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P3476276210410816198

namespace A319132

/-- `∑{d}[n+1, A023900(#)*A357938((n+1)/#)]` -/
def P3476276210410816198.Spec : Prop :=
  ∀ n, P3476276210410816198.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P15822986213939111594

`∑{d}[n+1, A072861(#)*A351654((n+1)/#)]`
-/

namespace A319132.P15822986213939111594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072861 d * A351654 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P15822986213939111594

namespace A319132

/-- `∑{d}[n+1, A072861(#)*A351654((n+1)/#)]` -/
def P15822986213939111594.Spec : Prop :=
  ∀ n, P15822986213939111594.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P3802006579385847209

`∑{d}[n+1, A010684(#-1)*A206787((n+1)/#)]`
-/

namespace A319132.P3802006579385847209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010684 (d - 1) * A206787 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319132.P3802006579385847209

namespace A319132

/-- `∑{d}[n+1, A010684(#-1)*A206787((n+1)/#)]` -/
def P3802006579385847209.Spec : Prop :=
  ∀ n, P3802006579385847209.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P10761528311711117925

`∑{d}[(n+1)², A007913(#)]`
-/

namespace A319132.P10761528311711117925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007913 d

end

end A319132.P10761528311711117925

namespace A319132

/-- `∑{d}[(n+1)², A007913(#)]` -/
def P10761528311711117925.Spec : Prop :=
  ∀ n, P10761528311711117925.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P13101809592604195666

`∑{d}[(n+1)², A336643(#)]`
-/

namespace A319132.P13101809592604195666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336643 d

end

end A319132.P13101809592604195666

namespace A319132

/-- `∑{d}[(n+1)², A336643(#)]` -/
def P13101809592604195666.Spec : Prop :=
  ∀ n, P13101809592604195666.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P6942335839699127173

`A069088((n+1)²)`
-/

namespace A319132.P6942335839699127173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069088 ((n + 1) ^ 2)

end

end A319132.P6942335839699127173

namespace A319132

/-- `A069088((n+1)²)` -/
def P6942335839699127173.Spec : Prop :=
  ∀ n, P6942335839699127173.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P628632239091940889

`∑{d}[n+1, A295295(#²)]`
-/

namespace A319132.P628632239091940889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A295295 (d ^ 2)

end

end A319132.P628632239091940889

namespace A319132

/-- `∑{d}[n+1, A295295(#²)]` -/
def P628632239091940889.Spec : Prop :=
  ∀ n, P628632239091940889.a n = A319132 (n + 1)

end A319132

/-! ## A319132.P16947650712332122833

`∑{d}[n+1, A323363(#²)]`
-/

namespace A319132.P16947650712332122833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323363 (d ^ 2)

end

end A319132.P16947650712332122833

namespace A319132

/-- `∑{d}[n+1, A323363(#²)]` -/
def P16947650712332122833.Spec : Prop :=
  ∀ n, P16947650712332122833.a n = A319132 (n + 1)

end A319132

/-!
# A319135: Irregular triangle read by rows in which row n lists the positive divisors of n that are <= sqrt(n) in decreasing order.

The programs for A319135, there is no canonical definition to state claims against.
-/

/-! ## A319135.P2183407868386935362

`floor(A157466(n)/A161908(n+1))`
-/

namespace A319135.P2183407868386935362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157466 n : ℚ) / (A161908 (n + 1) : ℚ)⌋

end

end A319135.P2183407868386935362

/-! ## A319135.P8917101531656830957

`A335572(n+1)-A161908(n+1)`
-/

namespace A319135.P8917101531656830957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335572 (n + 1) - A161908 (n + 1)

end

end A319135.P8917101531656830957

/-! ## A319135.P4046404077745029255

`A161908(n+1)-A368312(n+1)`
-/

namespace A319135.P4046404077745029255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161908 (n + 1) - A368312 (n + 1)

end

end A319135.P4046404077745029255

/-! ## A319135.P1607715984057489992

`ceil(A020888(n+1)/A161908(n+1))`
-/

namespace A319135.P1607715984057489992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020888 (n + 1) : ℚ) / (A161908 (n + 1) : ℚ)⌉

end

end A319135.P1607715984057489992

/-! ## A319135.P14745825626963668772

`ceil(A099802(n+1)/A161908(n+1))`
-/

namespace A319135.P14745825626963668772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099802 (n + 1) : ℚ) / (A161908 (n + 1) : ℚ)⌉

end

end A319135.P14745825626963668772

/-! ## A319135.P11022254001868048462

`∑[char[A211275(n+1)]]/A161908(n+1)`
-/

namespace A319135.P11022254001868048462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211275 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A161908 (n + 1) : ℚ)

end

end A319135.P11022254001868048462

/-! ## A319135.P7039336283980792910

`floor(A061017(2*n+1)/A161908(n+1))`
-/

namespace A319135.P7039336283980792910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061017 (2 * n + 1) : ℚ) / (A161908 (n + 1) : ℚ)⌋

end

end A319135.P7039336283980792910

/-! ## A319135.P4661599165835656615

`round(A020887(n+1)/(2*A161908(n+1)))`
-/

namespace A319135.P4661599165835656615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020887 (n + 1) : ℚ) / (2 * A161908 (n + 1) : ℚ))

end

end A319135.P4661599165835656615

/-! ## A319135.P17712845051362979601

`round(A001281(A020887(n+1))/A161908(n+1))`
-/

namespace A319135.P17712845051362979601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001281 (A020887 (n + 1)).toNat : ℚ) / (A161908 (n + 1) : ℚ))

end

end A319135.P17712845051362979601

/-! ## A319135.P2536965576093647597

`round(A002265(A120427(n+1))/A161908(n+1))`
-/

namespace A319135.P2536965576093647597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002265 (A120427 (n + 1)).toNat : ℚ) / (A161908 (n + 1) : ℚ))

end

end A319135.P2536965576093647597

/-!
# A319136: Number of complete planar branching factorizations of n.

The programs for A319136, there is no canonical definition to state claims against.
-/

/-! ## A319136.P990033966864074484

`A008480(n+1)*A318577(A061142(n+1))`
-/

namespace A319136.P990033966864074484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A318577 (A061142 (n + 1)).toNat

end

end A319136.P990033966864074484

/-! ## A319136.P3590847980399566545

`A008480(n+1)*A318577(A068794(n+1))`
-/

namespace A319136.P3590847980399566545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A318577 (A068794 (n + 1)).toNat

end

end A319136.P3590847980399566545

/-! ## A319136.P4819601661899147868

`A008480(n+1)*A318577(A165824(n+1))`
-/

namespace A319136.P4819601661899147868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1) * A318577 (A165824 (n + 1)).toNat

end

end A319136.P4819601661899147868

/-! ## A319136.P15085653496613089304

`A303639(∏{e}[n+1, #+1]^A343652(n+1))`
-/

namespace A319136.P15085653496613089304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (A343652 (n + 1) : ℤ))).toNat

end

end A319136.P15085653496613089304

/-! ## A319136.P1152010515040387659

`A001055(∏{d}[n+1, #]/(n+1))%A328705(n+1)`
-/

namespace A319136.P1152010515040387659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat) (A328705 (n + 1))

end

end A319136.P1152010515040387659

/-!
# A319137: Number of strict planar branching factorizations of n.

The programs for A319137, there is no canonical definition to state claims against.
-/

/-! ## A319137.P13574564087897762973

`A231557(∏{e}[n+1, #+1]!)`
-/

namespace A319137.P13574564087897762973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231557 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A319137.P13574564087897762973

/-! ## A319137.P14800611911405893292

`A347967(∏{e}[n+1, #+1]!)`
-/

namespace A319137.P14800611911405893292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347967 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A319137.P14800611911405893292

/-! ## A319137.P1234176251834254484

`or(1, A163109(∏{d}[n+1, #]/(n+1)))`
-/

namespace A319137.P1234176251834254484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163109 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat)

end

end A319137.P1234176251834254484

/-! ## A319137.P2369599816654344574

`A160097(A072195(n+1))`
-/

namespace A319137.P2369599816654344574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160097 (A072195 (n + 1)).toNat

end

end A319137.P2369599816654344574

/-! ## A319137.P14641577787213919488

`A168113(A069626(n+1))`
-/

namespace A319137.P14641577787213919488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168113 (A069626 (n + 1)).toNat

end

end A319137.P14641577787213919488

/-!
# A319138: Number of complete strict planar branching factorizations of n.

The programs for A319138, there is no canonical definition to state claims against.
-/

/-! ## A319138.P6930330119782021404

`A001222(∏{p}[n+1, #]^A316771(n+1))`
-/

namespace A319138.P6930330119782021404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) ^ (A316771 (n + 1) : ℤ))).toNat

end

end A319138.P6930330119782021404

/-! ## A319138.P12485703544411478535

`A001222(A183103(n+1))-A329747(n+1)`
-/

namespace A319138.P12485703544411478535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A183103 (n + 1)).toNat - A329747 (n + 1)

end

end A319138.P12485703544411478535

/-! ## A319138.P1373320190328232424

`A001222(A007947(n+1)^A316771(n+1))`
-/

namespace A319138.P1373320190328232424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) ^ (A316771 (n + 1) : ℤ))).toNat

end

end A319138.P1373320190328232424

/-! ## A319138.P16625008000004901676

`A180026(n+1)^A000045(A179926(n+1))`
-/

namespace A319138.P16625008000004901676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180026 (n + 1) : ℚ) ^ (A000045 (A179926 (n + 1)).toNat : ℤ)

end

end A319138.P16625008000004901676

/-!
# A319139: a(n) is the smallest position k >= 1 on the diagonal at which a record gap of size n between two adjacent Dyck paths of the symmetric representation of sigma starts.

The programs for A319139, there is no canonical definition to state claims against.
-/

/-! ## A319139.P4443979355731854935

`A240542(A128605(n+2)-1)+1`
-/

namespace A319139.P4443979355731854935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240542 (A128605 (n + 2) - 1).toNat + 1

end

end A319139.P4443979355731854935

/-!
# A319140: Total number of binary digits in all partitions of n into distinct parts.

The programs for A319140, there is no canonical definition to state claims against.
-/

/-! ## A319140.P4360732237417385802

`record[A306460(∑[A272510(n)])]`
-/

namespace A319140.P4360732237417385802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272510 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306460 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319140.P4360732237417385802

/-!
# A319142: Total number of binary digits in the partitions of n into odd parts.

The programs for A319142, there is no canonical definition to state claims against.
-/

/-! ## A319142.P8257293931055106553

`A003004(A003082(n))+A003002(n)`
-/

namespace A319142.P8257293931055106553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A003082 n).toNat + A003002 n

end

end A319142.P8257293931055106553

/-! ## A319142.P17722524904192252802

`A342383(A180662(n)+A115269(n))`
-/

namespace A319142.P17722524904192252802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A180662 n + A115269 n).toNat

end

end A319142.P17722524904192252802

/-!
# A319144: E.g.f. A(x) satisfies: [x^(n-1)] exp(n^2*x) / A(x)^n = 0 for n>1.

The programs for A319144, there is no canonical definition to state claims against.
-/

/-! ## A319144.P2178410143402742435

`∑[A284752(∏[A005190(n)])]`
-/

namespace A319144.P2178410143402742435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005190 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284752 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319144.P2178410143402742435

/-!
# A319145: E.g.f. A = A(x,m) satisfies: cn(A + x, m) + sn(A - x, m) = 1, where sn(x,m) and cn(x,m) are Jacobi elliptic functions with parameter m, as an irregular triangle of coefficients read by rows.

The programs for A319145, there is no canonical definition to state claims against.
-/

/-! ## A319145.P10014434972351035951

`∏{e}[(2*n+1)!, lcm(2, #*(n-3))]`
-/

namespace A319145.P10014434972351035951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.lcm 2 ((Nat.factorization (f1 n) p : ℤ) * ((n : ℤ) - 3))

end

end A319145.P10014434972351035951

/-!
# A319146: L.g.f. A(x) satisfies: [x^(n-1)] exp( n^2*x - n*A(x) ) = 0 for n>1.

The programs for A319146, there is no canonical definition to state claims against.
-/

/-! ## A319146.P5673770209757065005

`(n+2)*A292963(A347022(n))`
-/

namespace A319146.P5673770209757065005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A292963 (A347022 n).toNat

end

end A319146.P5673770209757065005

/-!
# A319147: E.g.f.: Limit_{N->oo} [ Sum_{n>=0} (N^2 + N*n + n^2)^n * (x/N)^n/n! ]^(1/N).

The programs for A319147, there is no canonical definition to state claims against.
-/

/-! ## A319147.P10041940406451944082

`or(A065066(A052889(n)), A155806(n))`
-/

namespace A319147.P10041940406451944082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A065066 (A052889 n).toNat) (A155806 n)

end

end A319147.P10041940406451944082

/-! ## A319147.P14808235333186996877

`or(A155806(n), A229185(A115587(n+1)))`
-/

namespace A319147.P14808235333186996877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A155806 n) (A229185 (A115587 (n + 1)).toNat)

end

end A319147.P14808235333186996877

/-!
# A319148: Irregular triangle T(n,m) where row n lists differences m = j*p - r - 1, with iterator 1 <= j <= A002110(n), p = prime(n+1), and r is the smallest number that exceeds j*p that is coprime to A002110(n+1).

The programs for A319148, there is no canonical definition to state claims against.
-/

/-! ## A319148.P7760429789299261310

`A265745(n)%A085192(A005578(n))`
-/

namespace A319148.P7760429789299261310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265745 n) (A085192 (A005578 n).toNat)

end

end A319148.P7760429789299261310

/-! ## A319148.P17446086515064708471

`A005812(2*(n+1))-A078142(A098293(n+2))`
-/

namespace A319148.P17446086515064708471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (2 * (n + 1)) - A078142 (A098293 (n + 2)).toNat

end

end A319148.P17446086515064708471

/-! ## A319148.P9369855972586869720

`and(A179764(n+2), A179784(A179749(3*n+1)))`
-/

namespace A319148.P9369855972586869720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179764 (n + 2)) (A179784 (A179749 (3 * n + 1)).toNat)

end

end A319148.P9369855972586869720

/-! ## A319148.P16682675765619618663

`and(A179764(n+2), A179765(A179780(2*n+5)))`
-/

namespace A319148.P16682675765619618663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A179764 (n + 2)) (A179765 (A179780 (2 * n + 5)).toNat)

end

end A319148.P16682675765619618663

/-! ## A319148.P7809071335077866874

`A012265(and(n, A020985(A020732(n))))`
-/

namespace A319148.P7809071335077866874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012265 (Int.land (n : ℤ) (A020985 (A020732 n).toNat)).toNat

end

end A319148.P7809071335077866874

/-!
# A319149: Number of superperiodic integer partitions of n.

The programs for A319149, there is no canonical definition to state claims against.
-/

/-! ## A319149.P3017129354506648423

`A054977(A000070(n))*A080513(A318505(n+1))`
-/

namespace A319149.P3017129354506648423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A000070 n).toNat * A080513 (A318505 (n + 1)).toNat

end

end A319149.P3017129354506648423

/-! ## A319149.P6582185424532647334

`A080513(A318505(n+1))+A000038(A158482(n+1))`
-/

namespace A319149.P6582185424532647334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A318505 (n + 1)).toNat + A000038 (A158482 (n + 1)).toNat

end

end A319149.P6582185424532647334

/-! ## A319149.P2655359238891259084

`abs(or(A321887(n+1), A335447(n+1)))`
-/

namespace A319149.P2655359238891259084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (A321887 (n + 1)) (A335447 (n + 1))|

end

end A319149.P2655359238891259084

/-! ## A319149.P17700117610317817490

`A108582(A127613(n+1))`
-/

namespace A319149.P17700117610317817490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108582 (A127613 (n + 1)).toNat

end

end A319149.P17700117610317817490

/-! ## A319149.P7102153486366367382

`A039836(A263432(n+1))`
-/

namespace A319149.P7102153486366367382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A263432 (n + 1)).toNat

end

end A319149.P7102153486366367382

/-!
# A319150: a(n) = gcd(A275286(n), A001818(n+1)) / A025549(n+1)^2.

The programs for A319150, there is no canonical definition to state claims against.
-/

/-! ## A319150.P10100184368859387907

`A025547(n+1)²/A294971(n)`
-/

namespace A319150.P10100184368859387907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025547 (n + 1) ^ 2 : ℚ) / (A294971 n : ℚ)

end

end A319150.P10100184368859387907

/-! ## A319150.P18069048419002843270

`gcd(A014951(A078633(n+1)), A056942(2*(n+1)))`
-/

namespace A319150.P18069048419002843270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014951 (A078633 (n + 1)).toNat) (A056942 (2 * (n + 1)))

end

end A319150.P18069048419002843270

/-! ## A319150.P14620973656193559810

`11^∑{e}[A296712(A248771(n+1))+1, log2(#)]`
-/

namespace A319150.P14620973656193559810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296712 (A248771 (n + 1)).toNat + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (11 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Real.logb 2 (Nat.factorization (f1 n).natAbs p : ℝ))

end

end A319150.P14620973656193559810

/-! ## A319150.P12371288246448729264

`A001287(floor(A351876(n+1)/A260991(n+1)))`
-/

namespace A319150.P12371288246448729264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (⌊(A351876 (n + 1) : ℚ) / (A260991 (n + 1) : ℚ)⌋.toNat + 10)

end

end A319150.P12371288246448729264

/-!
# A319151: Heinz numbers of superperiodic integer partitions.

The programs for A319151, there is no canonical definition to state claims against.
-/

/-! ## A319151.P3214632703035290115

`record[A321366(2*n+1)]%A234665(n+1)`
-/

namespace A319151.P3214632703035290115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321366 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A234665 (n + 1))

end

end A319151.P3214632703035290115

/-! ## A319151.P16349544282537377018

`record[A034699(A071892(A168056(n)))]`
-/

namespace A319151.P16349544282537377018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A071892 (A168056 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319151.P16349544282537377018

/-! ## A319151.P12839908581391478918

`A061345(n)+A000007(A028563(n))`
-/

namespace A319151.P12839908581391478918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n + A000007 (A028563 n).toNat

end

end A319151.P12839908581391478918

/-! ## A319151.P17252915402889088161

`A061345(n)+A000007(A066834(n))`
-/

namespace A319151.P17252915402889088161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n + A000007 (A066834 n).toNat

end

end A319151.P17252915402889088161

/-! ## A319151.P2030851395557494771

`A061345(n)+A008683(A244623(n+1))`
-/

namespace A319151.P2030851395557494771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n + A008683 (A244623 (n + 1)).toNat

end

end A319151.P2030851395557494771

/-! ## A319151.P11191526888208768933

`eq[A010141(n), A286851(n)]`
-/

namespace A319151.P11191526888208768933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319151.P11191526888208768933

/-! ## A319151.P2118621631720889990

`eq[A040166(n), A286851(n)]`
-/

namespace A319151.P2118621631720889990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319151.P2118621631720889990

/-! ## A319151.P2734339786661925172

`eq[A040357(n), A286851(n)]`
-/

namespace A319151.P2734339786661925172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319151.P2734339786661925172

/-!
# A319152: Nonprime Heinz numbers of superperiodic integer partitions.

The programs for A319152, there is no canonical definition to state claims against.
-/

/-! ## A319152.P17902742048555361360

`∩[A001597(n+1), A319151(n+1)]`
-/

namespace A319152.P17902742048555361360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319152.P17902742048555361360

/-! ## A319152.P10976848729716113404

`∩[A001694(n+1), A319151(n+1)]`
-/

namespace A319152.P10976848729716113404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319152.P10976848729716113404

/-! ## A319152.P5067444300981412185

`∩[A038838(n+1), A319151(n+1)]`
-/

namespace A319152.P5067444300981412185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319152.P5067444300981412185

/-! ## A319152.P12372632445323585123

`∩[A053850(n+1), A319151(n+1)]`
-/

namespace A319152.P12372632445323585123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319152.P12372632445323585123

/-! ## A319152.P501831419544053346

`∩[A057109(n+1), A319151(n+1)]`
-/

namespace A319152.P501831419544053346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319152.P501831419544053346

/-!
# A319153: Number of integer partitions of n that reduce to 2, meaning their Heinz number maps to 2 under A304464.

The programs for A319153, there is no canonical definition to state claims against.
-/

/-! ## A319153.P11948640500109291097

`A325267(n+1)+char[1]`
-/

namespace A319153.P11948640500109291097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325267 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A319153.P11948640500109291097

/-! ## A319153.P12992208490351712576

`A141044(n)*A325267(n+1)`
-/

namespace A319153.P12992208490351712576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A325267 (n + 1)

end

end A319153.P12992208490351712576

/-! ## A319153.P8822158463982319945

`(A033322(n+1)+1)*A325267(n+1)`
-/

namespace A319153.P8822158463982319945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033322 (n + 1) + 1) * A325267 (n + 1)

end

end A319153.P8822158463982319945

/-! ## A319153.P3039278097031984734

`A014963(A051890(n))*A325267(n+1)`
-/

namespace A319153.P3039278097031984734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A051890 n).toNat * A325267 (n + 1)

end

end A319153.P3039278097031984734

/-! ## A319153.P2602486294950700208

`A007862(A000040(n+1))*A325267(n+1)`
-/

namespace A319153.P2602486294950700208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (A000040 (n + 1)).toNat * A325267 (n + 1)

end

end A319153.P2602486294950700208

/-!
# A319155: Number of bicolored graphs on 2n unlabeled nodes without isolated nodes and which are invariant when the two color classes are interchanged.

The programs for A319155, there is no canonical definition to state claims against.
-/

/-! ## A319155.P12281198318939868257

`A045917(∑{d}[n+1, #^(#-1)]+val((n+1)², 2)+1)`
-/

namespace A319155.P12281198318939868257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ ((d : ℤ) - 1 : ℤ) + (SequenceMachineLib.valuation ((n + 1) ^ 2) 2 + 1 : ℚ))).toNat

end

end A319155.P12281198318939868257

/-! ## A319155.P15831516410250271806

`A090861(A149762(n))`
-/

namespace A319155.P15831516410250271806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A149762 n).toNat

end

end A319155.P15831516410250271806

/-!
# A319156: Number of ways to build a contiguous building with n LEGO blocks of size 1 X 2 which is flat, i.e., with all blocks in parallel position.

The programs for A319156, there is no canonical definition to state claims against.
-/

/-! ## A319156.P1577807437640724021

`A005843(A123764(n+1))-A123765(n+1)`
-/

namespace A319156.P1577807437640724021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A123764 (n + 1)).toNat - A123765 (n + 1)

end

end A319156.P1577807437640724021

/-! ## A319156.P12781773611288342499

`A005843(A123764(n+1))-A347257(n+1)`
-/

namespace A319156.P12781773611288342499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A123764 (n + 1)).toNat - A347257 (n + 1)

end

end A319156.P12781773611288342499

/-! ## A319156.P12671535576021271136

`(A096267(n+1)/2)%p?[2^n-1]`
-/

namespace A319156.P12671535576021271136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A096267 (n + 1) : ℚ) / 2)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A319156.P12671535576021271136

/-!
# A319158: Given an equilateral triangular grid with side n, containing n(n+1)/2 points, a(n) is the minimal number of points to be selected, such that any equilateral triangle of points will include at least one of the selection, if the triangle has the same orientation as the grid.

The programs for A319158, there is no canonical definition to state claims against.
-/

/-! ## A319158.P16545075380633734391

`ceil(7/20*n²)`
-/

namespace A319158.P16545075380633734391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 : ℚ) / 20 * (n ^ 2 : ℚ)⌉

end

end A319158.P16545075380633734391

/-! ## A319158.P13187191246974997684

`abs(floor(n²*log2(atan(1))))`
-/

namespace A319158.P13187191246974997684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(n ^ 2 : ℝ) * Real.logb 2 (Real.arctan (1 : ℝ))⌋|

end

end A319158.P13187191246974997684

/-! ## A319158.P10961872719550638839

`∑[val((n+1)*4^n, 8)]`
-/

namespace A319158.P10961872719550638839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 1) * 4 ^ n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319158.P10961872719550638839

/-! ## A319158.P14886000958753721182

`floor(∑[(n+1)^atan(3)/3])`
-/

namespace A319158.P14886000958753721182
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (Real.arctan (3 : ℝ)) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A319158.P14886000958753721182

/-! ## A319158.P11140481101285428145

`round(C(2*n+1, 2)/3^ϕ)`
-/

namespace A319158.P11140481101285428145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (2 * n + 1) 2 : ℝ) / (3 : ℝ) ^ Real.goldenRatio)

end

end A319158.P11140481101285428145

/-!
# A319159: Given an equilateral triangular grid with side n, containing n(n+1)/2 points, a(n) is the minimal number of points to be selected, such that any equilateral triangle of points will include at least one of the selection.

The programs for A319159, there is no canonical definition to state claims against.
-/

/-! ## A319159.P3491380988928993357

`ceil(∑[n^cos(50)])+1`
-/

namespace A319159.P3491380988928993357
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.cos (50 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ + 1

end

end A319159.P3491380988928993357

/-! ## A319159.P4279613188820440358

`round(∑[∑[root((n+1)/21, 8)]])`
-/

namespace A319159.P4279613188820440358
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 21 : ℝ) ^ (1 / (8 : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319159.P4279613188820440358

/-! ## A319159.P7907872740876971362

`ceil(∑[floor(ϕ*n)+1]*acot(ϕ))`
-/

namespace A319159.P7907872740876971362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) * SequenceMachineLib.acot Real.goldenRatio⌉

end

end A319159.P7907872740876971362

/-! ## A319159.P2150948066265278020

`ceil(∑[or(2, ceil(8*n/3))/3])`
-/

namespace A319159.P2150948066265278020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lor 2 ⌈8 * ((n : ℚ) / 3)⌉ : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A319159.P2150948066265278020

/-! ## A319159.P13246676330074109394

`ceil(∑[∑[(n+1)/or(2, n+1)]])`
-/

namespace A319159.P13246676330074109394
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.lor 2 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A319159.P13246676330074109394

/-!
# A319160: Number of integer partitions of n whose multiplicities appear with relatively prime multiplicities.

The programs for A319160, there is no canonical definition to state claims against.
-/

/-! ## A319160.P5146948126147014557

`A049472(Δ[record[A191429(n+1)]])`
-/

namespace A319160.P5146948126147014557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191429 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (f1 (n + 1) - f1 n).toNat

end

end A319160.P5146948126147014557

/-! ## A319160.P10653489118627413839

`A325330((n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A319160.P10653489118627413839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325330 ((n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9))

end

end A319160.P10653489118627413839

/-! ## A319160.P6957983338754153302

`A105224(A006728(n))`
-/

namespace A319160.P6957983338754153302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (A006728 n).toNat

end

end A319160.P6957983338754153302

/-! ## A319160.P13117701790363727892

`A367068(A221942(n))`
-/

namespace A319160.P13117701790363727892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367068 (A221942 n).toNat

end

end A319160.P13117701790363727892

/-! ## A319160.P4526536054800197140

`A325330(A043315(n+1))`
-/

namespace A319160.P4526536054800197140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325330 (A043315 (n + 1)).toNat

end

end A319160.P4526536054800197140

/-!
# A319161: Numbers whose prime multiplicities appear with relatively prime multiplicities.

The programs for A319161, there is no canonical definition to state claims against.
-/

/-! ## A319161.P5647508144661166986

`eq[0, A354353(n+1)]+1`
-/

namespace A319161.P5647508144661166986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354353 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A319161.P5647508144661166986

/-! ## A319161.P2207479400295535282

`lt[A362611(n+1), 2]+1`
-/

namespace A319161.P2207479400295535282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362611 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A319161.P2207479400295535282

/-! ## A319161.P5894033768269343856

`comp[A182853(n+1)-1]+1`
-/

namespace A319161.P5894033768269343856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319161.P5894033768269343856

/-! ## A319161.P1061413232362067670

`comp[A362605(n+1)-1]+1`
-/

namespace A319161.P1061413232362067670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362605 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A319161.P1061413232362067670

/-! ## A319161.P9625797758589596144

`comp[eq[2, A304455(n+1)]]+1`
-/

namespace A319161.P9625797758589596144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304455 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A319161.P9625797758589596144

/-! ## A319161.P6381757377547191967

`comp[eq[3, A182850(n+1)]]+1`
-/

namespace A319161.P6381757377547191967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182850 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A319161.P6381757377547191967

/-! ## A319161.P10965927996601189774

`comp[(n+3)*A354353(n+3)]`
-/

namespace A319161.P10965927996601189774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A354353 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A319161.P10965927996601189774

/-! ## A319161.P10691701157009047514

`comp[A062759(n+1)%(n+1)]`
-/

namespace A319161.P10691701157009047514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062759 (n + 1)) (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A319161.P10691701157009047514

/-! ## A319161.P15361421930729558259

`eq[1, A292262(A074206(n))]`
-/

namespace A319161.P15361421930729558259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292262 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A319161.P15361421930729558259

/-! ## A319161.P4350814569627101582

`∪[A000097(n), A356862(n+1)]`
-/

namespace A319161.P4350814569627101582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000097 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319161.P4350814569627101582

/-!
# A319162: Number of periodic integer partitions of n whose multiplicities are aperiodic, meaning the multiplicities of these multiplicities are relatively prime.

The programs for A319162, there is no canonical definition to state claims against.
-/

/-! ## A319162.P4752341228720906856

`A325770(A178442(n+1))+A060034(n+1)`
-/

namespace A319162.P4752341228720906856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (A178442 (n + 1)).toNat + A060034 (n + 1)

end

end A319162.P4752341228720906856

/-! ## A319162.P16759065515330364356

`A325770(A178442(n+1))+A018783(n+1)-A024994(n+1)`
-/

namespace A319162.P16759065515330364356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (A178442 (n + 1)).toNat + (A018783 (n + 1) - A024994 (n + 1))

end

end A319162.P16759065515330364356

/-! ## A319162.P5279973045487181050

`A162351(ceil(sqrt(A058352(n))))`
-/

namespace A319162.P5279973045487181050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 ⌈Real.sqrt (A058352 n : ℝ)⌉.toNat

end

end A319162.P5279973045487181050

/-! ## A319162.P6326628749883401254

`A235963(A178472(A043320(n+1)))`
-/

namespace A319162.P6326628749883401254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A178472 (A043320 (n + 1)).toNat).toNat

end

end A319162.P6326628749883401254

/-! ## A319162.P6406659278585565766

`A060034(n+1)+A032741(A187829(n+1))`
-/

namespace A319162.P6406659278585565766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060034 (n + 1) + A032741 (A187829 (n + 1)).toNat

end

end A319162.P6406659278585565766

/-!
# A319163: Perfect powers whose prime multiplicities appear with relatively prime multiplicities.

The programs for A319163, there is no canonical definition to state claims against.
-/

/-! ## A319163.P4640066683755680175

`record[A327498(A072103(n+1))]`
-/

namespace A319163.P4640066683755680175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A072103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319163.P4640066683755680175

/-! ## A319163.P3832342773578581320

`record[A327498(A001597(n+2))]`
-/

namespace A319163.P3832342773578581320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (A001597 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319163.P3832342773578581320

/-! ## A319163.P2247120382418861195

`filter[A182852(n+2), A075802(#)]`
-/

namespace A319163.P2247120382418861195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182852 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A319163.P2247120382418861195

/-! ## A319163.P15038415472454535876

`filter[A001597(n+2), A351564(#)]`
-/

namespace A319163.P15038415472454535876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A319163.P15038415472454535876

/-! ## A319163.P5762834475829606189

`record[A327498(Δ[A076408(n+1)])]`
-/

namespace A319163.P5762834475829606189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076408 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327498 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319163.P5762834475829606189

/-! ## A319163.P5865988818640655332

`∩[A001597(n+1), A356862(n+1)]`
-/

namespace A319163.P5865988818640655332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319163.P5865988818640655332

/-! ## A319163.P11834355339058565514

`∩[A001597(n+1), A359178(n+1)]`
-/

namespace A319163.P11834355339058565514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319163.P11834355339058565514

/-! ## A319163.P15678312252326749147

`∪[A134612(n+1), A386762(n+1)]`
-/

namespace A319163.P15678312252326749147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319163.P15678312252326749147

/-! ## A319163.P1985041579271517686

`∪[A134612(n+1), A389864(n+1)]`
-/

namespace A319163.P1985041579271517686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319163.P1985041579271517686

/-! ## A319163.P13204593810782003106

`∪[A134612(n+1), A390379(n+1)]`
-/

namespace A319163.P13204593810782003106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319163.P13204593810782003106

/-!
# A319164: Number of integer partitions of n that are neither relatively prime nor aperiodic.

The programs for A319164, there is no canonical definition to state claims against.
-/

/-! ## A319164.P7146206390455841218

`A018783(n+1)+A100953(n+1)-A000837(n+1)`
-/

namespace A319164.P7146206390455841218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) + (A100953 (n + 1) - A000837 (n + 1))

end

end A319164.P7146206390455841218

/-! ## A319164.P3911682194598462263

`(A100953(n+1)+A000041(n+1))%A000837(n+1)`
-/

namespace A319164.P3911682194598462263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100953 (n + 1) + A000041 (n + 1)) (A000837 (n + 1))

end

end A319164.P3911682194598462263

/-! ## A319164.P16903389832529428242

`A018783(n+1)-A319179(n+1)`
-/

namespace A319164.P16903389832529428242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - A319179 (n + 1)

end

end A319164.P16903389832529428242

/-! ## A319164.P11699770749800562112

`∑{d}[n+1, A319179(#)]-A319179(n+1)`
-/

namespace A319164.P11699770749800562112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319179 d - A319179 (n + 1)

end

end A319164.P11699770749800562112

/-! ## A319164.P1767462248553162213

`A024994(n+1)+A060034(n+1)-A319179(n+1)`
-/

namespace A319164.P1767462248553162213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024994 (n + 1) + (A060034 (n + 1) - A319179 (n + 1))

end

end A319164.P1767462248553162213

/-! ## A319164.P5070635919780484143

`A305735(n+1)+A305736(n+1)-A319179(n+1)`
-/

namespace A319164.P5070635919780484143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305735 (n + 1) + (A305736 (n + 1) - A319179 (n + 1))

end

end A319164.P5070635919780484143

/-!
# A319165: Perfect powers whose prime indices are not relatively prime.

The programs for A319165, there is no canonical definition to state claims against.
-/

/-! ## A319165.P2676868487227033888

`record[A327656(A001597(n+4))]`
-/

namespace A319165.P2676868487227033888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A001597 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319165.P2676868487227033888

/-! ## A319165.P15661134247974576701

`∪[A207701(n+1), A319152(n+1)]`
-/

namespace A319165.P15661134247974576701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319165.P15661134247974576701

/-! ## A319165.P17703857608528580660

`∪[A319152(n+1), A329786(n+1)]`
-/

namespace A319165.P17703857608528580660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319165.P17703857608528580660

/-! ## A319165.P6847031406606242640

`∪[A319152(n+1), A343000(n+1)]`
-/

namespace A319165.P6847031406606242640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319165.P6847031406606242640

/-! ## A319165.P1458391944450551018

`∪[A319152(n+1), A343002(n+1)]`
-/

namespace A319165.P1458391944450551018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319165.P1458391944450551018

/-!
# A319166: Number of primitive polynomials of degree n over GF(11).

The programs for A319166, there is no canonical definition to state claims against.
-/

/-! ## A319166.P12049700495498463475

`A366685(n+1)/(n+1)`
-/

namespace A319166.P12049700495498463475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366685 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A319166.P12049700495498463475

/-! ## A319166.P7636880001590176953

`A158502(A046691(n+3))`
-/

namespace A319166.P7636880001590176953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A046691 (n + 3)).toNat

end

end A319166.P7636880001590176953

/-! ## A319166.P10736872913813572393

`A158502(Δ[A023545(n+1)])`
-/

namespace A319166.P10736872913813572393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (f1 (n + 1) - f1 n).toNat

end

end A319166.P10736872913813572393

/-! ## A319166.P11404333073681106795

`A158502(A000124(n+5)-5)`
-/

namespace A319166.P11404333073681106795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A000124 (n + 5) - 5).toNat

end

end A319166.P11404333073681106795

/-! ## A319166.P10942815002479851948

`A158502(A000096(n+3)+n+2)`
-/

namespace A319166.P10942815002479851948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158502 (A000096 (n + 3) + (n + 2 : ℤ)).toNat

end

end A319166.P10942815002479851948

/-!
# A319167: Primes p such that A194113(p) is a prime.

The programs for A319167, there is no canonical definition to state claims against.
-/

/-! ## A319167.P15382864670130917044

`p?[A318957(n+1)]`
-/

namespace A319167.P15382864670130917044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319167.P15382864670130917044

/-! ## A319167.P2810670715362693413

`p?[record[A318957(A331742(n))]]`
-/

namespace A319167.P2810670715362693413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (A331742 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319167.P2810670715362693413

/-! ## A319167.P5492722458135181934

`∩[A348283(n+1), A318957(n+1)]`
-/

namespace A319167.P5492722458135181934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P5492722458135181934

/-! ## A319167.P16710065430024943511

`∩[A000040(n+1), A318957(n+1)]`
-/

namespace A319167.P16710065430024943511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P16710065430024943511

/-! ## A319167.P11812214474503875969

`∩[A004139(n+1), A318957(n+1)]`
-/

namespace A319167.P11812214474503875969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P11812214474503875969

/-! ## A319167.P10220805482601701600

`∩[A045319(n+1), A318957(n+1)]`
-/

namespace A319167.P10220805482601701600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P10220805482601701600

/-! ## A319167.P17809517297231320324

`∩[A045344(n+1), A318957(n+1)]`
-/

namespace A319167.P17809517297231320324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P17809517297231320324

/-! ## A319167.P1758542311629413113

`∩[A065091(n+1), A318957(n+1)]`
-/

namespace A319167.P1758542311629413113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P1758542311629413113

/-! ## A319167.P5900075803633812060

`∩[A065396(n+1), A318957(n+1)]`
-/

namespace A319167.P5900075803633812060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P5900075803633812060

/-! ## A319167.P7230228986957247240

`∩[A071621(n+1), A318957(n+1)]`
-/

namespace A319167.P7230228986957247240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P7230228986957247240

/-! ## A319167.P3037579880772572809

`∩[A261123(n+1), A318957(n+1)]`
-/

namespace A319167.P3037579880772572809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P3037579880772572809

/-! ## A319167.P4416376920984032719

`∩[A051948(n+1), A318957(n+1)]`
-/

namespace A319167.P4416376920984032719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P4416376920984032719

/-! ## A319167.P16451785812437868670

`∩[A053813(n+1), A318957(n+1)]`
-/

namespace A319167.P16451785812437868670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P16451785812437868670

/-! ## A319167.P16475695705680052576

`∩[A140826(n+1), A318957(n+1)]`
-/

namespace A319167.P16475695705680052576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P16475695705680052576

/-! ## A319167.P3220836117383887518

`∩[A161346(n+1), A318957(n+1)]`
-/

namespace A319167.P3220836117383887518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P3220836117383887518

/-! ## A319167.P17592291749096008493

`∩[A162787(n+1), A318957(n+1)]`
-/

namespace A319167.P17592291749096008493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P17592291749096008493

/-! ## A319167.P16651116290178437139

`∩[A301987(n+1), A318957(n+1)]`
-/

namespace A319167.P16651116290178437139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319167.P16651116290178437139

/-! ## A319167.P13406692344774680776

`p?[record[A318957(A203814(n))]]`
-/

namespace A319167.P13406692344774680776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A319167.P13406692344774680776

/-! ## A319167.P16580083588608606335

`record[A020639(A318957(n+2))]`
-/

namespace A319167.P16580083588608606335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A318957 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319167.P16580083588608606335

/-! ## A319167.P13534761478349832326

`filter[A318957(n+1), A010051(#)]`
-/

namespace A319167.P13534761478349832326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A319167.P13534761478349832326

/-!
# A319168: Frobenius pseudoprimes == 1,4 (mod 5) with respect to Fibonacci polynomial x^2 - x - 1.

The programs for A319168, there is no canonical definition to state claims against.
-/

/-! ## A319168.P9168459254322103097

`∩[A081264(n+1), A094401(n+1)]`
-/

namespace A319168.P9168459254322103097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P9168459254322103097

/-! ## A319168.P7973873562513773776

`∩[A094401(n+1), A212424(n+1)]`
-/

namespace A319168.P7973873562513773776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P7973873562513773776

/-! ## A319168.P11267045469080081283

`∩[A069106(n+1), A212424(n+1)]`
-/

namespace A319168.P11267045469080081283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P11267045469080081283

/-! ## A319168.P745102700369831527

`∩[A094394(n+1), A212424(n+1)]`
-/

namespace A319168.P745102700369831527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P745102700369831527

/-! ## A319168.P12254013651380884165

`∩[A049062(n+1), A069106(n+1)]`
-/

namespace A319168.P12254013651380884165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P12254013651380884165

/-! ## A319168.P879918684132739791

`∩[A049062(n+1), A094401(n+1)]`
-/

namespace A319168.P879918684132739791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P879918684132739791

/-! ## A319168.P17017359069665068474

`∩[A005845(n+1), A093372(n+1)]`
-/

namespace A319168.P17017359069665068474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P17017359069665068474

/-! ## A319168.P8235246570569619522

`∩[A069106(n+1), A093372(n+1)]`
-/

namespace A319168.P8235246570569619522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P8235246570569619522

/-! ## A319168.P11057539870677266099

`∩[A081264(n+1), A093372(n+1)]`
-/

namespace A319168.P11057539870677266099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P11057539870677266099

/-! ## A319168.P6608462241696026400

`∩[A093372(n+1), A094401(n+1)]`
-/

namespace A319168.P6608462241696026400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P6608462241696026400

/-! ## A319168.P10476083806706544614

`∩[A093372(n+1), A212424(n+1)]`
-/

namespace A319168.P10476083806706544614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P10476083806706544614

/-! ## A319168.P17831461769678523723

`∩[A093372(n+1), A337625(n+1)]`
-/

namespace A319168.P17831461769678523723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P17831461769678523723

/-! ## A319168.P10995462022435728732

`∩[A094401(n+1), A339523(n+1)]`
-/

namespace A319168.P10995462022435728732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319168.P10995462022435728732

/-!
# A319170: Triangular numbers of the form 2..21..1; n_times 2 followed with n_times 1; n >= 1.

The programs for A319170, the canonical program `A319170.P10289215034148849069` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319170 has offset 1).

The definition of A319170 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319170.P10289215034148849069

`1/9*(2*10^(n+1)+1)*(10^(n+1)-1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319170

/-- `1/9*(2*10^(n+1)+1)*(10^(n+1)-1)` -/
def P10289215034148849069.Spec : Prop :=
  ∀ n, P10289215034148849069.a n = (A319170 (n + 1) : ℚ)

end A319170

/-! ## A319170.P9520993342266620218

`C(or(3, ∑[10*a(n-1)]), 2)` with `a(0)=6`
-/

namespace A319170.P9520993342266620218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 3 (∑ j ∈ Finset.range (n + 1), f1 j)) 2

end

end A319170.P9520993342266620218

namespace A319170

/-- `C(or(3, ∑[10*a(n-1)]), 2)` -/
def P9520993342266620218.Spec : Prop :=
  ∀ n, (P9520993342266620218.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P7483432554608212963

`C(A067275(n+2), 2)`
-/

namespace A319170.P7483432554608212963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A067275 (n + 2)).toNat 2

end

end A319170.P7483432554608212963

namespace A319170

/-- `C(A067275(n+2), 2)` -/
def P7483432554608212963.Spec : Prop :=
  ∀ n, (P7483432554608212963.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P7698743937498698715

`C(sqrt(A109344(n+1)), 2)`
-/

namespace A319170.P7698743937498698715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A109344 (n + 1) : ℝ))).toNat 2

end

end A319170.P7698743937498698715

namespace A319170

/-- `C(sqrt(A109344(n+1)), 2)` -/
def P7698743937498698715.Spec : Prop :=
  ∀ n, (P7698743937498698715.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P7558053494492727038

`C(A173805(n+1)+6, 2)`
-/

namespace A319170.P7558053494492727038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A173805 (n + 1) + 6).toNat 2

end

end A319170.P7558053494492727038

namespace A319170

/-- `C(A173805(n+1)+6, 2)` -/
def P7558053494492727038.Spec : Prop :=
  ∀ n, (P7558053494492727038.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P720734287460405445

`C(∑[A090019(n+1)]+1, 2)`
-/

namespace A319170.P720734287460405445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2

end

end A319170.P720734287460405445

namespace A319170

/-- `C(∑[A090019(n+1)]+1, 2)` -/
def P720734287460405445.Spec : Prop :=
  ∀ n, (P720734287460405445.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P6813407186930053239

`C(2*A002277(n+1)+1, 2)`
-/

namespace A319170.P6813407186930053239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A002277 (n + 1) + 1).toNat 2

end

end A319170.P6813407186930053239

namespace A319170

/-- `C(2*A002277(n+1)+1, 2)` -/
def P6813407186930053239.Spec : Prop :=
  ∀ n, (P6813407186930053239.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P4321158859129599332

`A002276(2*(n+1))-∑[10^n]`
-/

namespace A319170.P4321158859129599332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 (2 * (n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A319170.P4321158859129599332

namespace A319170

/-- `A002276(2*(n+1))-∑[10^n]` -/
def P4321158859129599332.Spec : Prop :=
  ∀ n, P4321158859129599332.a n = A319170 (n + 1)

end A319170

/-! ## A319170.P6424308725864741048

`C(6*A002275(2*n+1-n)+1, 2)`
-/

namespace A319170.P6424308725864741048
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (6 * A002275 (2 * n + 1 - n) + 1).toNat 2

end

end A319170.P6424308725864741048

namespace A319170

/-- `C(6*A002275(2*n+1-n)+1, 2)` -/
def P6424308725864741048.Spec : Prop :=
  ∀ n, (P6424308725864741048.a n : ℤ) = A319170 (n + 1)

end A319170

/-! ## A319170.P7985664546542254927

`A178630(n+1)+A002277(n+1)`
-/

namespace A319170.P7985664546542254927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178630 (n + 1) + A002277 (n + 1)

end

end A319170.P7985664546542254927

namespace A319170

/-- `A178630(n+1)+A002277(n+1)` -/
def P7985664546542254927.Spec : Prop :=
  ∀ n, P7985664546542254927.a n = A319170 (n + 1)

end A319170

/-!
# A319171: Square array, read by antidiagonals, upwards: T(n,k) is the number of groups of order prime(k+1)^n.

The programs for A319171, there is no canonical definition to state claims against.
-/

/-! ## A319171.P1352782568686888434

`A000001(A319075(n))`
-/

namespace A319171.P1352782568686888434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A319075 n).toNat

end

end A319171.P1352782568686888434

/-! ## A319171.P13825836215180158238

`A066060(lcm(2, A319075(n)))`
-/

namespace A319171.P13825836215180158238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.lcm 2 (A319075 n))

end

end A319171.P13825836215180158238

/-! ## A319171.P6683704857733531929

`A066060(A319075(n)+char[1])`
-/

namespace A319171.P6683704857733531929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (A319075 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A319171.P6683704857733531929

/-! ## A319171.P16535706590485383588

`A066060(or(char[1], A319075(n)))`
-/

namespace A319171.P16535706590485383588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319075 n)).toNat

end

end A319171.P16535706590485383588

/-! ## A319171.P4601043468508462779

`A066060(xor(char[1], A319075(n)))`
-/

namespace A319171.P4601043468508462779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066060 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A319075 n)).toNat

end

end A319171.P4601043468508462779

/-!
# A319172: a(n) = 2*(a(n-1) + a(n-3)) - a(n-4), with a(0) = 1, a(1) = 2, a(2) = 5 and a(3) = 12.

The programs for A319172, the canonical program `A319172.P5166476025837480669` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319172 has offset 0).

The definition of A319172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*(a(n-1)+a(n-3))-a(n-4)` (program `A319172.P5166476025837480669`, by `A319172.P5166476025837480669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A319172.P5166476025837480669

`2*(a(n-1)+a(n-3))-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319172

/-- `2*(a(n-1)+a(n-3))-a(n-4)` -/
def P5166476025837480669.Spec : Prop :=
  ∀ n, P5166476025837480669.a n = A319172 n

theorem P5166476025837480669.correct : P5166476025837480669.Spec := by
  intro n
  simp only [A319172]

end A319172

/-! ## A319172.P2568831876468679012

`ogf((1+x^2)/(1-2x-2x^3+x^4))`
-/

namespace A319172.P2568831876468679012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 0, -2, 1] n

end

end A319172.P2568831876468679012

namespace A319172

/-- `ogf((1+x^2)/(1-2x-2x^3+x^4))` -/
def P2568831876468679012.Spec : Prop :=
  ∀ n, P2568831876468679012.a n = A319172 n

end A319172

/-! ## A319172.P7569141332938554203

`A018009(n)-A019427(A324069(n))`
-/

namespace A319172.P7569141332938554203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018009 n - A019427 (A324069 n).toNat

end

end A319172.P7569141332938554203

namespace A319172

/-- `A018009(n)-A019427(A324069(n))` -/
def P7569141332938554203.Spec : Prop :=
  ∀ n, P7569141332938554203.a n = A319172 n

end A319172

/-!
# A319174: a(n) = n! * [x^n] Product_{k>=1} 1/(1 - x^k/k!)^n.

The programs for A319174, there is no canonical definition to state claims against.
-/

/-! ## A319174.P5541033828054090373

`A246678(∑{d}[A145162(n), #])`
-/

namespace A319174.P5541033828054090373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246678 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A319174.P5541033828054090373

/-!
# A319175: a(n) = n! * [x^n] Product_{k>=1} (1 + x^k/k!)^n.

The programs for A319175, there is no canonical definition to state claims against.
-/

/-! ## A319175.P13021253822753288339

`A091072(C(∑[n], n)+1)-1`
-/

namespace A319175.P13021253822753288339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n + 1) - 1

end

end A319175.P13021253822753288339

/-! ## A319175.P4688576392299603419

`A257088(C(∑[n], n)-ceil(n/2))`
-/

namespace A319175.P4688576392299603419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat

end

end A319175.P4688576392299603419

/-!
# A319176: a(n) = n! * [x^n] Product_{k>=1} 1/(1 - x^k/k)^n.

The programs for A319176, there is no canonical definition to state claims against.
-/

/-! ## A319176.P10461458951420039178

`A060030(∏[2^n]-∑{e}[n+1, #])`
-/

namespace A319176.P10461458951420039178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060030 (∏ j ∈ Finset.range (n + 1), f1 j - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A319176.P10461458951420039178

/-!
# A319177: a(n) = n! * [x^n] Product_{k>=1} (1 + x^k/k)^n.

The programs for A319177, there is no canonical definition to state claims against.
-/

/-! ## A319177.P1936074674090771692

`A350359(n!²)`
-/

namespace A319177.P1936074674090771692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350359 (Nat.factorial n ^ 2)

end

end A319177.P1936074674090771692

/-!
# A319179: Number of integer partitions of n that are relatively prime but not aperiodic. Number of integer partitions of n that are aperiodic but not relatively prime.

The programs for A319179, there is no canonical definition to state claims against.
-/

/-! ## A319179.P17293982546949474168

`A000837(n+1)-A100953(n+1)`
-/

namespace A319179.P17293982546949474168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 (n + 1) - A100953 (n + 1)

end

end A319179.P17293982546949474168

/-! ## A319179.P7671243193604643154

`A018783(n+1)-A319164(n+1)`
-/

namespace A319179.P7671243193604643154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1) - A319164 (n + 1)

end

end A319179.P7671243193604643154

/-! ## A319179.P14857216907328421078

`∑{d}[n+1, A100953(#)]-A100953(n+1)`
-/

namespace A319179.P14857216907328421078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100953 d - A100953 (n + 1)

end

end A319179.P14857216907328421078

/-! ## A319179.P18305096849012530285

`∑{d}[n+1, A007427(#)*A168111((n+1)/#)]`
-/

namespace A319179.P18305096849012530285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A168111 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A319179.P18305096849012530285

/-! ## A319179.P3773492675733709787

`A168532(A000124(n))-A100953(n+1)`
-/

namespace A319179.P3773492675733709787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (A000124 n).toNat - A100953 (n + 1)

end

end A319179.P3773492675733709787

/-! ## A319179.P14307156891131834384

`A000041(n+1)-(A100953(n+1)+A018783(n+1))`
-/

namespace A319179.P14307156891131834384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A100953 (n + 1) + A018783 (n + 1))

end

end A319179.P14307156891131834384

/-! ## A319179.P15934772380392712368

`A000041(n+1)-(A319164(n+1)+A000837(n+1))`
-/

namespace A319179.P15934772380392712368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A319164 (n + 1) + A000837 (n + 1))

end

end A319179.P15934772380392712368

/-! ## A319179.P18101591637866420831

`A339397(n+1)+A339398(n+1)-A100953(n+1)`
-/

namespace A319179.P18101591637866420831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339397 (n + 1) + (A339398 (n + 1) - A100953 (n + 1))

end

end A319179.P18101591637866420831

/-!
# A319180: Perfect powers whose prime indices are relatively prime.

The programs for A319180, there is no canonical definition to state claims against.
-/

/-! ## A319180.P9737825932787803715

`record[A316437(A072103(n+1))]`
-/

namespace A319180.P9737825932787803715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A072103 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319180.P9737825932787803715

/-! ## A319180.P10174588424352949929

`record[A316437(A001597(n+2))]`
-/

namespace A319180.P10174588424352949929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A001597 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319180.P10174588424352949929

/-! ## A319180.P15407374637943728911

`record[A327529(A045542(n+1)+1)]`
-/

namespace A319180.P15407374637943728911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (A045542 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319180.P15407374637943728911

/-! ## A319180.P1574055340522954864

`∩[A001597(n+1), A289509(n+1)]`
-/

namespace A319180.P1574055340522954864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A319180.P1574055340522954864

/-!
# A319181: Numbers that are not perfect powers but whose prime indices have a common divisor > 1.

The programs for A319181, there is no canonical definition to state claims against.
-/

/-! ## A319181.P15899807625927055399

`comp[∪[∪[n^3, n²], A289509(n+1)]]`
-/

namespace A319181.P15899807625927055399
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289509 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f5 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A319181.P15899807625927055399

/-! ## A319181.P1159705162448561430

`record[A327656(A052410(n+3))]`
-/

namespace A319181.P1159705162448561430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A052410 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319181.P1159705162448561430

/-! ## A319181.P1941708908019980304

`filter[A328336(n+3), A132350(#)]`
-/

namespace A319181.P1941708908019980304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A319181.P1941708908019980304

/-! ## A319181.P7543806777111872528

`∪[A338552(n+1), p?[A004273(n)]]`
-/

namespace A319181.P7543806777111872528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319181.P7543806777111872528

/-! ## A319181.P13551786212138082561

`∪[A065091(n+1), A338552(n+1)]`
-/

namespace A319181.P13551786212138082561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319181.P13551786212138082561

/-! ## A319181.P2172270386410558318

`∪[A240699(n+1), A338552(n+1)]`
-/

namespace A319181.P2172270386410558318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319181.P2172270386410558318

/-! ## A319181.P863990517996659833

`∪[A318718(n+1), A338552(n+1)]`
-/

namespace A319181.P863990517996659833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318718 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338552 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A319181.P863990517996659833

/-! ## A319181.P15866719411722540177

`eq[A051904(n+1), A327513(n+1)]+1`
-/

namespace A319181.P15866719411722540177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327513 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A319181.P15866719411722540177

/-!
# A319182: Irregular triangle where T(n,k) is the number of set partitions of {1,...,n} with block-sizes given by the integer partition with Heinz number A215366(n,k).

The programs for A319182, there is no canonical definition to state claims against.
-/

/-! ## A319182.P6700490534145043347

`A124794(A215366(n+1))`
-/

namespace A319182.P6700490534145043347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (A215366 (n + 1)).toNat

end

end A319182.P6700490534145043347

/-! ## A319182.P14607223322630732830

`A124794(ratio[A215366(n)]*A215366(n))`
-/

namespace A319182.P14607223322630732830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124794 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A215366 n : ℚ))).toNat

end

end A319182.P14607223322630732830

/-!
# A319183: a(n) = phi(n^n - 1)/n where phi is A000010.

The programs for A319183, there is no canonical definition to state claims against.
-/

/-! ## A319183.P13069610710641068855

`A366821(n+2)/(n+2)`
-/

namespace A319183.P13069610710641068855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366821 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A319183.P13069610710641068855

/-! ## A319183.P13569659615612691665

`A369291(A058331(n+1))`
-/

namespace A319183.P13569659615612691665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A058331 (n + 1)).toNat

end

end A319183.P13569659615612691665

/-! ## A319183.P7387746513707003269

`A369291(A033816(n)+n)`
-/

namespace A319183.P7387746513707003269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A033816 n + (n : ℤ)).toNat

end

end A319183.P7387746513707003269

/-! ## A319183.P10503797059770534989

`A369291(A129194(2*(n+1))+1)`
-/

namespace A319183.P10503797059770534989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A129194 (2 * (n + 1)) + 1).toNat

end

end A319183.P10503797059770534989

/-! ## A319183.P10155060519617207997

`A369291(A000217(2*(n+1))-n)`
-/

namespace A319183.P10155060519617207997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369291 (A000217 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A319183.P10155060519617207997

/-!
# A319184: Numbers that are sums of consecutive pentagonal numbers.

The programs for A319184, there is no canonical definition to state claims against.
-/

/-! ## A319184.P10565634396146051777

`A000791(n+1)-A061260(n+1)`
-/

namespace A319184.P10565634396146051777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000791 (n + 1) - A061260 (n + 1)

end

end A319184.P10565634396146051777

/-! ## A319184.P15972836024809610325

`A340553(2*(n+1))-A267592(A118417(n))`
-/

namespace A319184.P15972836024809610325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340553 (2 * (n + 1)) - A267592 (A118417 n).toNat

end

end A319184.P15972836024809610325

/-! ## A319184.P11945264326695272456

`eq[A109072(A240832(n+1)), A308428(n+1)]`
-/

namespace A319184.P11945264326695272456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (A240832 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308428 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A319184.P11945264326695272456

/-! ## A319184.P2808519359971142604

`lt[A356430(n+1), A356403(A356403(n+3))]`
-/

namespace A319184.P2808519359971142604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356403 (A356403 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A319184.P2808519359971142604

/-!
# A319187: Number of pairwise coprime subsets of {1,...,n} of maximum cardinality (A036234).

The programs for A319187, the canonical program `A319187.P5382770131251099215` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319187 has offset 1).

The definition of A319187 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A045948, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319187.P5382770131251099215

`A000005(A045948(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A319187

/-- `A000005(A045948(n+1))` -/
def P5382770131251099215.Spec : Prop :=
  ∀ n, P5382770131251099215.a n = A319187 (n + 1)

theorem P5382770131251099215.correct : P5382770131251099215.Spec := by
  intro n
  simp only [A319187, Nat.add_sub_cancel]

end A319187

/-! ## A319187.P3488871654152386993

`A186974(A002815(n+1))`
-/

namespace A319187.P3488871654152386993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (A002815 (n + 1)).toNat

end

end A319187.P3488871654152386993

namespace A319187

/-- `A186974(A002815(n+1))` -/
def P3488871654152386993.Spec : Prop :=
  ∀ n, P3488871654152386993.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P1758015717405292890

`A186974(∑[A036234(n+1)])`
-/

namespace A319187.P1758015717405292890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319187.P1758015717405292890

namespace A319187

/-- `A186974(∑[A036234(n+1)])` -/
def P1758015717405292890.Spec : Prop :=
  ∀ n, P1758015717405292890.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P16348329558709246057

`A186974(∑[∑[C(A000010(n+1), n)]])`
-/

namespace A319187.P16348329558709246057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319187.P16348329558709246057

namespace A319187

/-- `A186974(∑[∑[C(A000010(n+1), n)]])` -/
def P16348329558709246057.Spec : Prop :=
  ∀ n, P16348329558709246057.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P12343886505748691220

`A186974(∑[∑[round(1/A000005(n+1))]])`
-/

namespace A319187.P12343886505748691220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A000005 (n + 1) : ℚ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319187.P12343886505748691220

namespace A319187

/-- `A186974(∑[∑[round(1/A000005(n+1))]])` -/
def P12343886505748691220.Spec : Prop :=
  ∀ n, P12343886505748691220.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P11799652701439836868

`A186974(∑[∑[A001222(n+1)!%2]])`
-/

namespace A319187.P11799652701439836868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001222 (n + 1)).toNat % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319187.P11799652701439836868

namespace A319187

/-- `A186974(∑[∑[A001222(n+1)!%2]])` -/
def P11799652701439836868.Spec : Prop :=
  ∀ n, P11799652701439836868.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P8392511229421087188

`A186974(∑[∑[char[A014963(n+1)-1]]])`
-/

namespace A319187.P8392511229421087188
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319187.P8392511229421087188

namespace A319187

/-- `A186974(∑[∑[char[A014963(n+1)-1]]])` -/
def P8392511229421087188.Spec : Prop :=
  ∀ n, P8392511229421087188.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P4539091936637331113

`A186974(∑[∑[char[A000040(n+1)-1]]+1])`
-/

namespace A319187.P4539091936637331113
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186974 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A319187.P4539091936637331113

namespace A319187

/-- `A186974(∑[∑[char[A000040(n+1)-1]]+1])` -/
def P4539091936637331113.Spec : Prop :=
  ∀ n, P4539091936637331113.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P14385677630324208411

`A000005(∏[A014963((n+1)/A014963(n+1))])`
-/

namespace A319187.P14385677630324208411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A319187.P14385677630324208411

namespace A319187

/-- `A000005(∏[A014963((n+1)/A014963(n+1))])` -/
def P14385677630324208411.Spec : Prop :=
  ∀ n, P14385677630324208411.a n = A319187 (n + 1)

end A319187

/-! ## A319187.P13298076695004392765

`A320111(2*A045948(n+1))`
-/

namespace A319187.P13298076695004392765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A045948 (n + 1)).toNat

end

end A319187.P13298076695004392765

namespace A319187

/-- `A320111(2*A045948(n+1))` -/
def P13298076695004392765.Spec : Prop :=
  ∀ n, P13298076695004392765.a n = A319187 (n + 1)

end A319187

/-!
# A319190: Number of regular hypergraphs spanning n vertices.

The programs for A319190, there is no canonical definition to state claims against.
-/

/-! ## A319190.P10005741565935056200

`A192861(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A319190.P10005741565935056200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  A192861 (a (n - 1) ^ 2).toNat

end

end A319190.P10005741565935056200

/-!
# A319191: Coefficient of p(y) / A056239(n)! in Product_{i >= 1} (1 + x_i), where p is power-sum symmetric functions and y is the integer partition with Heinz number n.

The programs for A319191, there is no canonical definition to state claims against.
-/

/-! ## A319191.P11372553633854425889

`A124795(n+1)*A321753(n+1)`
-/

namespace A319191.P11372553633854425889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (n + 1) * A321753 (n + 1)

end

end A319191.P11372553633854425889

/-! ## A319191.P4771338723484563956

`A124795(n+1)/A321753((n+1)/2^val(n+1, 2))`
-/

namespace A319191.P4771338723484563956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124795 (n + 1) : ℚ) / (A321753 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat : ℚ)

end

end A319191.P4771338723484563956

/-! ## A319191.P8591557721090566457

`A124795(n+1)*A353458(A364900(n))`
-/

namespace A319191.P8591557721090566457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (n + 1) * A353458 (A364900 n).toNat

end

end A319191.P8591557721090566457

/-! ## A319191.P11496246020396607795

`A034947(A108548(n+1))*A124795(n+1)`
-/

namespace A319191.P11496246020396607795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A108548 (n + 1)).toNat * A124795 (n + 1)

end

end A319191.P11496246020396607795

/-! ## A319191.P8451822440072516139

`A015343(A318995(n+1))*A124795(n+1)`
-/

namespace A319191.P8451822440072516139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A318995 (n + 1)).toNat * A124795 (n + 1)

end

end A319191.P8451822440072516139

/-!
# A319192: Irregular triangle where T(n,k) is the coefficient of p(y) in n! * Sum_{i1 < ... < in} (x_i1 * ... * x_in), where p is power-sum symmetric functions and y is the integer partition with Heinz number A215366(n,k).

The programs for A319192, there is no canonical definition to state claims against.
-/

/-! ## A319192.P4673390257605011020

`A124795(A215366(n+1))*A321753(A215366(n+1))`
-/

namespace A319192.P4673390257605011020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124795 (A215366 (n + 1)).toNat * A321753 (A215366 (n + 1)).toNat

end

end A319192.P4673390257605011020

/-! ## A319192.P11488016261843452700

`A319191(A215366(n+1))`
-/

namespace A319192.P11488016261843452700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319191 (A215366 (n + 1)).toNat

end

end A319192.P11488016261843452700

/-! ## A319192.P15380825784232270163

`A319191(A333483(n+1))`
-/

namespace A319192.P15380825784232270163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319191 (A333483 (n + 1)).toNat

end

end A319192.P15380825784232270163

/-!
# A319193: Irregular triangle where T(n,k) is the number of permutations of the integer partition with Heinz number A215366(n,k).

The programs for A319193, there is no canonical definition to state claims against.
-/

/-! ## A319193.P15635450134006642039

`A008480(A215366(n))`
-/

namespace A319193.P15635450134006642039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A215366 n).toNat

end

end A319193.P15635450134006642039

/-! ## A319193.P455212505735011669

`A318762(∏{e}[A215366(n), A000040(#)])`
-/

namespace A319193.P455212505735011669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A319193.P455212505735011669

/-! ## A319193.P8925920269333209960

`A168324(A215366(A000007(n)+n))`
-/

namespace A319193.P8925920269333209960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A215366 (A000007 n + (n : ℤ)).toNat).toNat

end

end A319193.P8925920269333209960

/-! ## A319193.P13262197916778434118

`A168324(A215366(A169585(n)+n))`
-/

namespace A319193.P13262197916778434118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168324 (A215366 (A169585 n + (n : ℤ)).toNat).toNat

end

end A319193.P13262197916778434118

/-! ## A319193.P6510017165442983960

`A321648(∏{p}[A122111(A215366(n)), #])`
-/

namespace A319193.P6510017165442983960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (A215366 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A319193.P6510017165442983960

/-! ## A319193.P12667674730493555177

`A298941(31*A215366(n))`
-/

namespace A319193.P12667674730493555177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (31 * A215366 n).toNat

end

end A319193.P12667674730493555177

/-! ## A319193.P16143254305166894342

`A298941(lcm(29, A215366(n)))`
-/

namespace A319193.P16143254305166894342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298941 (Int.lcm 29 (A215366 n))

end

end A319193.P16143254305166894342

/-!
# A319194: a(n) = Sum_{k=1..n} sigma_n(k).

The programs for A319194, there is no canonical definition to state claims against.
-/

/-! ## A319194.P5653255979613635452

`A356100(n+1)+A332469(n+1)`
-/

namespace A319194.P5653255979613635452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356100 (n + 1) + A332469 (n + 1)

end

end A319194.P5653255979613635452

/-! ## A319194.P16970376886499969891

`A319649(2*(n+1)²)`
-/

namespace A319194.P16970376886499969891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319649 (2 * (n + 1) ^ 2)

end

end A319194.P16970376886499969891

/-! ## A319194.P15914746798284768521

`A356100(n+1)+A344725(∑[4*n]+1)`
-/

namespace A319194.P15914746798284768521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356100 (n + 1) + A344725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A319194.P15914746798284768521

/-! ## A319194.P3278855051698071721

`A356100(n+1)+record[A003982(n)*A344725(n+1)]`
-/

namespace A319194.P3278855051698071721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A344725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356100 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319194.P3278855051698071721

/-! ## A319194.P6050829356208845086

`A356100(n+1)+A344725(A001844(n))+A025444(n)`
-/

namespace A319194.P6050829356208845086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356100 (n + 1) + (A344725 (A001844 n).toNat + A025444 n)

end

end A319194.P6050829356208845086

/-!
# A319195: Irregular triangle with the unique representation of positive integers in the tribonacci ABC-representation.

The programs for A319195, there is no canonical definition to state claims against.
-/

/-! ## A319195.P15137352043198537934

`A005117(A364545(n+1))%A288725(n+1)`
-/

namespace A319195.P15137352043198537934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005117 (A364545 (n + 1)).toNat) (A288725 (n + 1))

end

end A319195.P15137352043198537934

/-! ## A319195.P2897930988178864679

`(A342407(n)+∑[A269350(n+1)])%A288725(n+1)`
-/

namespace A319195.P2897930988178864679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342407 n + ∑ j ∈ Finset.range (n + 1), f1 j) (A288725 (n + 1))

end

end A319195.P2897930988178864679

/-! ## A319195.P3245584639048319059

`A384905(A375100(n+2))`
-/

namespace A319195.P3245584639048319059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384905 (A375100 (n + 2)).toNat

end

end A319195.P3245584639048319059

/-! ## A319195.P14742648094390082614

`A053615(A341363(2*(n+2)))%A237347(n+1)`
-/

namespace A319195.P14742648094390082614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053615 (A341363 (2 * (n + 2))).toNat) (A237347 (n + 1))

end

end A319195.P14742648094390082614

/-! ## A319195.P14287379906344127419

`A358011(gcd(A111123(3*n+1), A162611(2*n+3)))`
-/

namespace A319195.P14287379906344127419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358011 (Int.gcd (A111123 (3 * n + 1)) (A162611 (2 * n + 3)))

end

end A319195.P14287379906344127419

/-!
# A319196: a(n) = 2^(n-1)*Fibonacci(n-3), n >= 0.

The programs for A319196, the canonical program `A319196.P3358719192898857450` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319196 has offset 0).

The definition of A319196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A319196.P3358719192898857450

`2*(a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=-1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A319196

/-- `2*(a(n-1)+2*a(n-2))` -/
def P3358719192898857450.Spec : Prop :=
  ∀ n, P3358719192898857450.a n = A319196 n

theorem P3358719192898857450.correct : P3358719192898857450.Spec := by
  intro n
  simp only [A319196]

end A319196

/-! ## A319196.P16635564630698674038

`ogf((-1+3x)/(-1+2x+4x^2))`
-/

namespace A319196.P16635564630698674038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -2, -4] n

end

end A319196.P16635564630698674038

namespace A319196

/-- `ogf((-1+3x)/(-1+2x+4x^2))` -/
def P16635564630698674038.Spec : Prop :=
  ∀ n, P16635564630698674038.a n = A319196 n

end A319196

/-! ## A319196.P2748484645815710582

`2^(n-1)*(ϕ^(n-3)-(1-ϕ)^(n-3))/(2*ϕ-1)`
-/

namespace A319196.P2748484645815710582
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) * ((Real.goldenRatio ^ ((n : ℤ) - 3 : ℤ) - (1 - Real.goldenRatio) ^ ((n : ℤ) - 3 : ℤ)) / (2 * Real.goldenRatio - 1))

end

end A319196.P2748484645815710582

namespace A319196

/-- `2^(n-1)*(ϕ^(n-3)-(1-ϕ)^(n-3))/(2*ϕ-1)` -/
def P2748484645815710582.Spec : Prop :=
  ∀ n, P2748484645815710582.a n = (A319196 n : ℝ)

end A319196

/-! ## A319196.P6504603890139070604

`A085449(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A319196.P6504603890139070604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A085449 (n - 1) - a (n - 1)

end

end A319196.P6504603890139070604

namespace A319196

/-- `A085449(n-1)-a(n-1)` -/
def P6504603890139070604.Spec : Prop :=
  ∀ n, P6504603890139070604.a n = A319196 n

end A319196

/-! ## A319196.P3341971039226280933

`A166444(n)*A212804(n)-a(n-1)` with `a(0)=1`
-/

namespace A319196.P3341971039226280933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A166444 n * A212804 n - a (n - 1)

end

end A319196.P3341971039226280933

namespace A319196

/-- `A166444(n)*A212804(n)-a(n-1)` -/
def P3341971039226280933.Spec : Prop :=
  ∀ n, P3341971039226280933.a n = A319196 n

end A319196

/-! ## A319196.P486849509637200164

`A087131(n)-A063782(n)`
-/

namespace A319196.P486849509637200164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087131 n - A063782 n

end

end A319196.P486849509637200164

namespace A319196

/-- `A087131(n)-A063782(n)` -/
def P486849509637200164.Spec : Prop :=
  ∀ n, P486849509637200164.a n = A319196 n

end A319196

/-! ## A319196.P18121233284577185676

`A084057(n)-A103435(n)`
-/

namespace A319196.P18121233284577185676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - A103435 n

end

end A319196.P18121233284577185676

namespace A319196

/-- `A084057(n)-A103435(n)` -/
def P18121233284577185676.Spec : Prop :=
  ∀ n, P18121233284577185676.a n = A319196 n

end A319196

/-! ## A319196.P5840843216295435235

`A203579(n)-A006483(n)`
-/

namespace A319196.P5840843216295435235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n - A006483 n

end

end A319196.P5840843216295435235

namespace A319196

/-- `A203579(n)-A006483(n)` -/
def P5840843216295435235.Spec : Prop :=
  ∀ n, P5840843216295435235.a n = A319196 n

end A319196

/-! ## A319196.P4658672770245916556

`A063782(n)-A209084(n)`
-/

namespace A319196.P4658672770245916556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n - A209084 n

end

end A319196.P4658672770245916556

namespace A319196

/-- `A063782(n)-A209084(n)` -/
def P4658672770245916556.Spec : Prop :=
  ∀ n, P4658672770245916556.a n = A319196 n

end A319196

/-! ## A319196.P4825273201928211331

`A084057(n)-Δ[A014334(n)]`
-/

namespace A319196.P4825273201928211331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - (f1 (n + 1) - f1 n)

end

end A319196.P4825273201928211331

namespace A319196

/-- `A084057(n)-Δ[A014334(n)]` -/
def P4825273201928211331.Spec : Prop :=
  ∀ n, P4825273201928211331.a n = A319196 n

end A319196

/-! ## A319196.P5834495561362152827

`Δ[A085449(n)-A014334(n)]`
-/

namespace A319196.P5834495561362152827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n - A014334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A319196.P5834495561362152827

namespace A319196

/-- `Δ[A085449(n)-A014334(n)]` -/
def P5834495561362152827.Spec : Prop :=
  ∀ n, P5834495561362152827.a n = A319196 n

end A319196

/-! ## A319196.P4833738801589439975

`A084057(n)+1-A006483(n)`
-/

namespace A319196.P4833738801589439975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + (1 - A006483 n)

end

end A319196.P4833738801589439975

namespace A319196

/-- `A084057(n)+1-A006483(n)` -/
def P4833738801589439975.Spec : Prop :=
  ∀ n, P4833738801589439975.a n = A319196 n

end A319196

/-! ## A319196.P2865581189499466983

`A203579(n)-(A103435(n)+1)`
-/

namespace A319196.P2865581189499466983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n - (A103435 n + 1)

end

end A319196.P2865581189499466983

namespace A319196

/-- `A203579(n)-(A103435(n)+1)` -/
def P2865581189499466983.Spec : Prop :=
  ∀ n, P2865581189499466983.a n = A319196 n

end A319196

/-! ## A319196.P7235302708865829910

`2*A084057(n)-A063782(n)`
-/

namespace A319196.P7235302708865829910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084057 n - A063782 n

end

end A319196.P7235302708865829910

namespace A319196

/-- `2*A084057(n)-A063782(n)` -/
def P7235302708865829910.Spec : Prop :=
  ∀ n, P7235302708865829910.a n = A319196 n

end A319196

/-! ## A319196.P1943880144794185190

`A063782(n)-2*A103435(n)`
-/

namespace A319196.P1943880144794185190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n - 2 * A103435 n

end

end A319196.P1943880144794185190

namespace A319196

/-- `A063782(n)-2*A103435(n)` -/
def P1943880144794185190.Spec : Prop :=
  ∀ n, P1943880144794185190.a n = A319196 n

end A319196

/-! ## A319196.P10947980937488683153

`A084057(n)-2*A085449(n)`
-/

namespace A319196.P10947980937488683153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n - 2 * A085449 n

end

end A319196.P10947980937488683153

namespace A319196

/-- `A084057(n)-2*A085449(n)` -/
def P10947980937488683153.Spec : Prop :=
  ∀ n, P10947980937488683153.a n = A319196 n

end A319196

/-! ## A319196.P9657222451445043545

`A063727(n)-3*A085449(n)`
-/

namespace A319196.P9657222451445043545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063727 n - 3 * A085449 n

end

end A319196.P9657222451445043545

namespace A319196

/-- `A063727(n)-3*A085449(n)` -/
def P9657222451445043545.Spec : Prop :=
  ∀ n, P9657222451445043545.a n = A319196 n

end A319196

/-! ## A319196.P16795387639123467400

`A087131(n)/2-A103435(n)`
-/

namespace A319196.P16795387639123467400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 n : ℚ) / 2 - (A103435 n : ℚ)

end

end A319196.P16795387639123467400

namespace A319196

/-- `A087131(n)/2-A103435(n)` -/
def P16795387639123467400.Spec : Prop :=
  ∀ n, P16795387639123467400.a n = (A319196 n : ℚ)

end A319196

/-! ## A319196.P8785186906521872926

`A084057(n)-A209084(n)/2`
-/

namespace A319196.P8785186906521872926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084057 n : ℚ) - (A209084 n : ℚ) / 2

end

end A319196.P8785186906521872926

namespace A319196

/-- `A084057(n)-A209084(n)/2` -/
def P8785186906521872926.Spec : Prop :=
  ∀ n, P8785186906521872926.a n = (A319196 n : ℚ)

end A319196

/-! ## A319196.P3674101726074406281

`2^(n-1)*A000032(n)-A103435(n)`
-/

namespace A319196.P3674101726074406281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ) - (A103435 n : ℚ)

end

end A319196.P3674101726074406281

namespace A319196

/-- `2^(n-1)*A000032(n)-A103435(n)` -/
def P3674101726074406281.Spec : Prop :=
  ∀ n, P3674101726074406281.a n = (A319196 n : ℚ)

end A319196

/-!
# A319198: Partial sums of the infinite self-similar tribonacci word, written in the form A080843.

The programs for A319198, the canonical program `A319198.P4657250033471073454` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A319198 has offset 0).

The definition of A319198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A276797, A276798, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A319198.P4657250033471073454

`A276797(n+1)+2*(A276798(n+1)-1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A319198

/-- `A276797(n+1)+2*(A276798(n+1)-1)` -/
def P4657250033471073454.Spec : Prop :=
  ∀ n, P4657250033471073454.a n = A319198 n

theorem P4657250033471073454.correct : P4657250033471073454.Spec := by
  intro n
  simp only [A319198]

end A319198

/-! ## A319198.P7746412229988445022

`∑[A080843(n)]`
-/

namespace A319198.P7746412229988445022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P7746412229988445022

namespace A319198

/-- `∑[A080843(n)]` -/
def P7746412229988445022.Spec : Prop :=
  ∀ n, P7746412229988445022.a n = A319198 n

end A319198

/-! ## A319198.P16046484725953271173

`∑[1-A317198(n)]`
-/

namespace A319198.P16046484725953271173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A317198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P16046484725953271173

namespace A319198

/-- `∑[1-A317198(n)]` -/
def P16046484725953271173.Spec : Prop :=
  ∀ n, P16046484725953271173.a n = A319198 n

end A319198

/-! ## A319198.P11014082657099682853

`∑[4-Δ[A278040(n)]]`
-/

namespace A319198.P11014082657099682853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278040 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P11014082657099682853

namespace A319198

/-- `∑[4-Δ[A278040(n)]]` -/
def P11014082657099682853.Spec : Prop :=
  ∀ n, P11014082657099682853.a n = A319198 n

end A319198

/-! ## A319198.P8723557166366997714

`∑[A092782(n+1)-1]`
-/

namespace A319198.P8723557166366997714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092782 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P8723557166366997714

namespace A319198

/-- `∑[A092782(n+1)-1]` -/
def P8723557166366997714.Spec : Prop :=
  ∀ n, P8723557166366997714.a n = A319198 n

end A319198

/-! ## A319198.P16749251993272064866

`∑[4-A276789(n+1)]`
-/

namespace A319198.P16749251993272064866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A276789 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P16749251993272064866

namespace A319198

/-- `∑[4-A276789(n+1)]` -/
def P16749251993272064866.Spec : Prop :=
  ∀ n, P16749251993272064866.a n = A319198 n

end A319198

/-! ## A319198.P9416769781142306910

`∑[5-A305394(n+1)]`
-/

namespace A319198.P9416769781142306910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A305394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P9416769781142306910

namespace A319198

/-- `∑[5-A305394(n+1)]` -/
def P9416769781142306910.Spec : Prop :=
  ∀ n, P9416769781142306910.a n = A319198 n

end A319198

/-! ## A319198.P429158106484299226

`A324470(n+1)-(n+1)`
-/

namespace A319198.P429158106484299226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324470 (n + 1) - (n + 1 : ℤ)

end

end A319198.P429158106484299226

namespace A319198

/-- `A324470(n+1)-(n+1)` -/
def P429158106484299226.Spec : Prop :=
  ∀ n, P429158106484299226.a n = A319198 n

end A319198

/-! ## A319198.P8281749924288214730

`∑[(A317193(n+1)+2)%3]`
-/

namespace A319198.P8281749924288214730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317193 (n + 1) + 2) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P8281749924288214730

namespace A319198

/-- `∑[(A317193(n+1)+2)%3]` -/
def P8281749924288214730.Spec : Prop :=
  ∀ n, P8281749924288214730.a n = A319198 n

end A319198

/-! ## A319198.P5890535437591336480

`2*(n+1)+2*n+3-A278040(n+1)`
-/

namespace A319198.P5890535437591336480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) + ((2 * n + 3 : ℤ) - A278040 (n + 1))

end

end A319198.P5890535437591336480

namespace A319198

/-- `2*(n+1)+2*n+3-A278040(n+1)` -/
def P5890535437591336480.Spec : Prop :=
  ∀ n, P5890535437591336480.a n = A319198 n

end A319198

/-! ## A319198.P16428042203184023522

`∑[∑[A317950(n)]-A317950(n)]`
-/

namespace A319198.P16428042203184023522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317950 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A317950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P16428042203184023522

namespace A319198

/-- `∑[∑[A317950(n)]-A317950(n)]` -/
def P16428042203184023522.Spec : Prop :=
  ∀ n, P16428042203184023522.a n = A319198 n

end A319198

/-! ## A319198.P261590658929241694

`A324470(n+1)%A000027(n+1)`
-/

namespace A319198.P261590658929241694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324470 (n + 1)) (A000027 (n + 1))

end

end A319198.P261590658929241694

namespace A319198

/-- `A324470(n+1)%A000027(n+1)` -/
def P261590658929241694.Spec : Prop :=
  ∀ n, P261590658929241694.a n = A319198 n

end A319198

/-! ## A319198.P9252478836846217545

`4*n+5-A003144(A003144(n+2))`
-/

namespace A319198.P9252478836846217545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) - A003144 (A003144 (n + 2)).toNat

end

end A319198.P9252478836846217545

namespace A319198

/-- `4*n+5-A003144(A003144(n+2))` -/
def P9252478836846217545.Spec : Prop :=
  ∀ n, P9252478836846217545.a n = A319198 n

end A319198

/-! ## A319198.P6732328296234968376

`∑[A007814(A003796(n+2))]`
-/

namespace A319198.P6732328296234968376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A003796 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A319198.P6732328296234968376

namespace A319198

/-- `∑[A007814(A003796(n+2))]` -/
def P6732328296234968376.Spec : Prop :=
  ∀ n, P6732328296234968376.a n = A319198 n

end A319198

/-! ## A319198.P15635338998365082075

`A322407(A276796(n))`
-/

namespace A319198.P15635338998365082075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A276796 n).toNat

end

end A319198.P15635338998365082075

namespace A319198

/-- `A322407(A276796(n))` -/
def P15635338998365082075.Spec : Prop :=
  ∀ n, P15635338998365082075.a n = A319198 n

end A319198

/-! ## A319198.P7763699427229330504

`A322407(A276797(A278039(n)))`
-/

namespace A319198.P7763699427229330504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A276797 (A278039 n).toNat).toNat

end

end A319198.P7763699427229330504

namespace A319198

/-- `A322407(A276797(A278039(n)))` -/
def P7763699427229330504.Spec : Prop :=
  ∀ n, P7763699427229330504.a n = A319198 n

end A319198

/-! ## A319198.P2901311168394941612

`A322407(A276797(A276797(A278041(n))))`
-/

namespace A319198.P2901311168394941612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A276797 (A276797 (A278041 n).toNat).toNat).toNat

end

end A319198.P2901311168394941612

namespace A319198

/-- `A322407(A276797(A276797(A278041(n))))` -/
def P2901311168394941612.Spec : Prop :=
  ∀ n, P2901311168394941612.a n = A319198 n

end A319198

/-! ## A319198.P11522634784323822759

`A322407(A276797(A276797(A308200(n))))`
-/

namespace A319198.P11522634784323822759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322407 (A276797 (A276797 (A308200 n).toNat).toNat).toNat

end

end A319198.P11522634784323822759

namespace A319198

/-- `A322407(A276797(A276797(A308200(n))))` -/
def P11522634784323822759.Spec : Prop :=
  ∀ n, P11522634784323822759.a n = A319198 n

end A319198

/-!
# A319199: One of the three successive approximations up to 7^n for 7-adic integer 6^(1/3). This is the 6 (mod 7) case (except for n = 0).

The programs for A319199, there is no canonical definition to state claims against.
-/

/-! ## A319199.P6171184191914911740

`A000601(A103458(n))%A000420(n)`
-/

namespace A319199.P6171184191914911740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000601 (A103458 n).toNat) (A000420 n)

end

end A319199.P6171184191914911740

