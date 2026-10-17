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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A278700: Number of Goldbach partitions (p,q) of 2n such that all primes from p to q (inclusive) appear as a part in some Goldbach partition of p+q = 2n.

The programs for A278700, there is no canonical definition to state claims against.
-/

/-! ## A278700.P7315302093326551003

`A004526(A346399(n+1)+A166486(2*(n+1)))`
-/

namespace A278700.P7315302093326551003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A346399 (n + 1) + A166486 (2 * (n + 1))).toNat

end

end A278700.P7315302093326551003

/-! ## A278700.P10990120797811190586

`A002375(n+1)-A279103(n+1)`
-/

namespace A278700.P10990120797811190586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A279103 (n + 1)

end

end A278700.P10990120797811190586

/-! ## A278700.P11320323267425845285

`A240708(n+1)-A279103(n+1)`
-/

namespace A278700.P11320323267425845285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240708 (n + 1) - A279103 (n + 1)

end

end A278700.P11320323267425845285

/-! ## A278700.P10945651298122683888

`A190353(2*(n+1))-A279103(n+1)`
-/

namespace A278700.P10945651298122683888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190353 (2 * (n + 1)) - A279103 (n + 1)

end

end A278700.P10945651298122683888

/-! ## A278700.P735484988703135733

`ceil(A002372(n+1)/2-A279103(n+1))`
-/

namespace A278700.P735484988703135733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 (n + 1) : ℚ) / 2 - (A279103 (n + 1) : ℚ)⌉

end

end A278700.P735484988703135733

/-! ## A278700.P13680104458310293018

`A045917(n+1)-(A279103(n+1)+char[1])`
-/

namespace A278700.P13680104458310293018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1) - (A279103 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A278700.P13680104458310293018

/-! ## A278700.P14165426829638876046

`(n+1)%A227065(n+1)-A279103(n+1)`
-/

namespace A278700.P14165426829638876046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A227065 (n + 1)) - A279103 (n + 1)

end

end A278700.P14165426829638876046

/-! ## A278700.P1758487853693800584

`A110654(A002372(n+1))-A279103(n+1)`
-/

namespace A278700.P1758487853693800584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A002372 (n + 1)).toNat - A279103 (n + 1)

end

end A278700.P1758487853693800584

/-! ## A278700.P17237148633115077161

`A045917(n+1)%A000010(n+1)-A279103(n+1)`
-/

namespace A278700.P17237148633115077161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045917 (n + 1)) (A000010 (n + 1)) - A279103 (n + 1)

end

end A278700.P17237148633115077161

/-! ## A278700.P2095742261609776309

`floor(sqrt(A279315(n+1)))`
-/

namespace A278700.P2095742261609776309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A279315 (n + 1))

end

end A278700.P2095742261609776309

/-!
# A278701: Square array A(n, k) read by antidiagonals downwards: A(n,k) = characteristic function of base-n Wieferich primes: 1 if prime(k) is a base-n Wieferich prime, 0 otherwise, where k runs over the positive integers starting from 1.

The programs for A278701, there is no canonical definition to state claims against.
-/

/-! ## A278701.P2188604259829026533

`floor(atan(A258045(n+2)))`
-/

namespace A278701.P2188604259829026533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A258045 (n + 2) : ℝ)⌋

end

end A278701.P2188604259829026533

/-! ## A278701.P14312857132102506784

`A014306(n*C(A258045(n+2), 2))`
-/

namespace A278701.P14312857132102506784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014306 (n * Nat.choose (A258045 (n + 2)).toNat 2)

end

end A278701.P14312857132102506784

/-! ## A278701.P10153113423300978490

`floor(A258045(A000027(n+1)+1)/2)`
-/

namespace A278701.P10153113423300978490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258045 (A000027 (n + 1) + 1).toNat : ℚ) / 2⌋

end

end A278701.P10153113423300978490

/-! ## A278701.P10548442943089664551

`floor(A258045(A026741(2*(n+2)))/2)`
-/

namespace A278701.P10548442943089664551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258045 (A026741 (2 * (n + 2))).toNat : ℚ) / 2⌋

end

end A278701.P10548442943089664551

/-! ## A278701.P6010334180045478037

`round(A258045(n+2)/A073259(n+1))`
-/

namespace A278701.P6010334180045478037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A258045 (n + 2) : ℚ) / (A073259 (n + 1) : ℚ))

end

end A278701.P6010334180045478037

/-! ## A278701.P8334258805514580152

`A258011(n+1)%A258045(n+2)!`
-/

namespace A278701.P8334258805514580152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258011 (n + 1)) (Nat.factorial (A258045 (n + 2)).toNat : ℤ)

end

end A278701.P8334258805514580152

/-! ## A278701.P3333316152483038175

`A258030(n+1)%A258045(n+2)!`
-/

namespace A278701.P3333316152483038175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258030 (n + 1)) (Nat.factorial (A258045 (n + 2)).toNat : ℤ)

end

end A278701.P3333316152483038175

/-! ## A278701.P12139336511455307005

`A258032(n+1)%A258045(n+2)!`
-/

namespace A278701.P12139336511455307005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258032 (n + 1)) (Nat.factorial (A258045 (n + 2)).toNat : ℤ)

end

end A278701.P12139336511455307005

/-! ## A278701.P1341293304800073274

`A258039(n+1)%A258045(n+2)!`
-/

namespace A278701.P1341293304800073274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258039 (n + 1)) (Nat.factorial (A258045 (n + 2)).toNat : ℤ)

end

end A278701.P1341293304800073274

/-! ## A278701.P954731166446701110

`A258029(n+4)%A258045(n+2)!`
-/

namespace A278701.P954731166446701110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258029 (n + 4)) (Nat.factorial (A258045 (n + 2)).toNat : ℤ)

end

end A278701.P954731166446701110

/-!
# A278703: Divide a full period sine wave into n equally spaced points along the x-axis, labeled 1 through n, from left to right. Rank the points according to their sine value and read by rows.

The programs for A278703, there is no canonical definition to state claims against.
-/

/-! ## A278703.P817655312502991083

`A178798(∑[A008619(n)])+A004736(n+1)`
-/

namespace A278703.P817655312502991083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A004736 (n + 1)

end

end A278703.P817655312502991083

/-! ## A278703.P13040510912401573290

`A178798(A087811(n+1))+A004736(n+1)`
-/

namespace A278703.P13040510912401573290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A087811 (n + 1)).toNat + A004736 (n + 1)

end

end A278703.P13040510912401573290

/-! ## A278703.P13821649318206831710

`A178798(A087811(n+1))+A001511(A054582(n))`
-/

namespace A278703.P13821649318206831710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A087811 (n + 1)).toNat + A001511 (A054582 n).toNat

end

end A278703.P13821649318206831710

/-! ## A278703.P8555395460380825765

`A178798(A087811(n+1))+A000005(A130321(n))`
-/

namespace A278703.P8555395460380825765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A087811 (n + 1)).toNat + A000005 (A130321 n).toNat

end

end A278703.P8555395460380825765

/-! ## A278703.P11584974321497990740

`A054635(A144019(3*(n+1)))+A025652(n+1)`
-/

namespace A278703.P11584974321497990740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 (A144019 (3 * (n + 1))).toNat + A025652 (n + 1)

end

end A278703.P11584974321497990740

/-!
# A278704: Number of triangles in all simple labeled graphs on n nodes.

The programs for A278704, there is no canonical definition to state claims against.
-/

/-! ## A278704.P11129031926098313657

`4*(6/n+2)*a(n-1)*A011782(n)` with `a(0)=1`
-/

namespace A278704.P11129031926098313657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((6 / (n : ℚ) + 2) * a (n - 1)) * (A011782 n : ℚ)

end

end A278704.P11129031926098313657

/-! ## A278704.P16988972479470047070

`(n+3)/abs(n/a(n-1))*A000079(n+2)` with `a(0)=1`
-/

namespace A278704.P16988972479470047070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 3 : ℚ) / |(n : ℚ) / a (n - 1)| * (A000079 (n + 2) : ℚ)

end

end A278704.P16988972479470047070

/-! ## A278704.P6605743214905560411

`2*(n+3)*a(n-1)/n*A000079(n+1)` with `a(0)=1`
-/

namespace A278704.P6605743214905560411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 * (n + 3) : ℚ) * a (n - 1) / (n : ℚ) * (A000079 (n + 1) : ℚ)

end

end A278704.P6605743214905560411

/-! ## A278704.P2683674741354276148

`A277219(A167614(n+2))`
-/

namespace A278704.P2683674741354276148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277219 (A167614 (n + 2)).toNat

end

end A278704.P2683674741354276148

/-! ## A278704.P16527755511698079666

`A000079(∑[n])*A038846(n)`
-/

namespace A278704.P16527755511698079666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j) * A038846 n

end

end A278704.P16527755511698079666

/-!
# A278705: Number of length-4 cycles in all simple labeled graphs on n nodes.

The programs for A278705, there is no canonical definition to state claims against.
-/

/-! ## A278705.P10343202700301852274

`12*A278736(n+4)`
-/

namespace A278705.P10343202700301852274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A278736 (n + 4)

end

end A278705.P10343202700301852274

/-! ## A278705.P13446225696222443080

`2^A052905(n)*A033487(n+1)`
-/

namespace A278705.P13446225696222443080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A052905 n : ℤ) * (A033487 (n + 1) : ℚ)

end

end A278705.P13446225696222443080

/-! ## A278705.P6378702419335565324

`A000079(A055999(n))*A112415(n)`
-/

namespace A278705.P6378702419335565324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A055999 n).toNat * A112415 n

end

end A278705.P6378702419335565324

/-! ## A278705.P438157862220301939

`A001816(n)*A011782(A034856(n+1))`
-/

namespace A278705.P438157862220301939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001816 n * A011782 (A034856 (n + 1)).toNat

end

end A278705.P438157862220301939

/-! ## A278705.P2397546961369077639

`A020707(n)*A080929(A034856(n+1))`
-/

namespace A278705.P2397546961369077639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n * A080929 (A034856 (n + 1)).toNat

end

end A278705.P2397546961369077639

/-!
# A278706: a(n) = a(n-1) + a(n-3) + a(n-5) - a(n-6), a(0) = a(1) = a(2) = 1, a(3) = 2, a(4) = 3, a(5) = 5.

The programs for A278706, the canonical program `A278706.P1564688871306528054` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278706 has offset 0).

The definition of A278706 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-5)-a(n-6)` (program `A278706.P1564688871306528054`, by `A278706.P1564688871306528054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A278706.P1564688871306528054

`a(n-1)+a(n-3)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278706

/-- `a(n-1)+a(n-3)+a(n-5)-a(n-6)` -/
def P1564688871306528054.Spec : Prop :=
  ∀ n, P1564688871306528054.a n = A278706 n

theorem P1564688871306528054.correct : P1564688871306528054.Spec := by
  intro n
  simp only [A278706]

end A278706

/-! ## A278706.P14135662638639705931

`A375815(A274114(n))`
-/

namespace A278706.P14135662638639705931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375815 (A274114 n).toNat

end

end A278706.P14135662638639705931

namespace A278706

/-- `A375815(A274114(n))` -/
def P14135662638639705931.Spec : Prop :=
  ∀ n, P14135662638639705931.a n = A278706 n

end A278706

/-! ## A278706.P3603955071175923501

`A002024(A052702(n)+A001385(n))`
-/

namespace A278706.P3603955071175923501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A052702 n + A001385 n).toNat

end

end A278706.P3603955071175923501

namespace A278706

/-- `A002024(A052702(n)+A001385(n))` -/
def P3603955071175923501.Spec : Prop :=
  ∀ n, P3603955071175923501.a n = A278706 n

end A278706

/-! ## A278706.P5763925572663006964

`A002024(or(A026810(n), A088357(n)))`
-/

namespace A278706.P5763925572663006964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A026810 n) (A088357 n)).toNat

end

end A278706.P5763925572663006964

namespace A278706

/-- `A002024(or(A026810(n), A088357(n)))` -/
def P5763925572663006964.Spec : Prop :=
  ∀ n, P5763925572663006964.a n = A278706 n

end A278706

/-! ## A278706.P5506661040904728001

`A002024(or(A038763(n), A088357(n)))`
-/

namespace A278706.P5506661040904728001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.lor (A038763 n) (A088357 n)).toNat

end

end A278706.P5506661040904728001

namespace A278706

/-- `A002024(or(A038763(n), A088357(n)))` -/
def P5506661040904728001.Spec : Prop :=
  ∀ n, P5506661040904728001.a n = A278706 n

end A278706

/-!
# A278708: Fibonacci sequence starting 154, 144.

The programs for A278708, the canonical program `A278708.P11084698145813629118` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278708 has offset 1).

The definition of A278708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278708.P11084698145813629118

`a(n-1)+a(n-2)` with `a(0)=154, a(1)=144`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278708

/-- `a(n-1)+a(n-2)` -/
def P11084698145813629118.Spec : Prop :=
  ∀ n, (P11084698145813629118.a n : ℤ) = A278708 (n + 1)

theorem P11084698145813629118.correct : P11084698145813629118.Spec := by
  intro n
  simp only [A278708, Nat.add_sub_cancel]

end A278708

/-! ## A278708.P9248817589351166046

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=154, a(1)=144`

`floor` is left out, it is the identity on integers.
-/

namespace A278708.P9248817589351166046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [154, 144] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A278708.P9248817589351166046

namespace A278708

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P9248817589351166046.Spec : Prop :=
  ∀ n, P9248817589351166046.a n = A278708 (n + 1)

end A278708

/-! ## A278708.P13189903814773537367

`A000045(n)+11*A206564(n+1)`
-/

namespace A278708.P13189903814773537367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 11 * A206564 (n + 1)

end

end A278708.P13189903814773537367

namespace A278708

/-- `A000045(n)+11*A206564(n+1)` -/
def P13189903814773537367.Spec : Prop :=
  ∀ n, P13189903814773537367.a n = A278708 (n + 1)

end A278708

/-! ## A278708.P273583891502010900

`A097657(n)+11*A206607(n+1)`
-/

namespace A278708.P273583891502010900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097657 n + 11 * A206607 (n + 1)

end

end A278708.P273583891502010900

namespace A278708

/-- `A097657(n)+11*A206607(n+1)` -/
def P273583891502010900.Spec : Prop :=
  ∀ n, P273583891502010900.a n = A278708 (n + 1)

end A278708

/-! ## A278708.P12536104547464440281

`Δ[a(n-1)-(char[1]-a(n-2))]` with `a(0)=144, a(1)=298`
-/

namespace A278708.P12536104547464440281
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [144, 298] fun n f1 =>
  f1 (n - 1) - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278708.P12536104547464440281

namespace A278708

/-- `Δ[a(n-1)-(char[1]-a(n-2))]` -/
def P12536104547464440281.Spec : Prop :=
  ∀ n, P12536104547464440281.a n = A278708 (n + 1)

end A278708

/-!
# A278710: Convolution square of A255528.

The programs for A278710, there is no canonical definition to state claims against.
-/

/-! ## A278710.P5878441885510807387

`A279928(∑[n+3])`
-/

namespace A278710.P5878441885510807387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278710.P5878441885510807387

/-! ## A278710.P17374158972162744

`A279928(A027379(n+1))+A000035(2*n)`
-/

namespace A278710.P17374158972162744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A027379 (n + 1)).toNat + A000035 (2 * n)

end

end A278710.P17374158972162744

/-! ## A278710.P15858047562520040896

`A000034(2*n)*A279928(A027379(n+1))`
-/

namespace A278710.P15858047562520040896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A279928 (A027379 (n + 1)).toNat

end

end A278710.P15858047562520040896

/-! ## A278710.P14874722312366589293

`A279928(A027379(n+1))^(2-A057427(n))`
-/

namespace A278710.P14874722312366589293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279928 (A027379 (n + 1)).toNat : ℚ) ^ (2 - A057427 n : ℤ)

end

end A278710.P14874722312366589293

/-! ## A278710.P10661500323292916996

`A279928(A055998(n+1))%A073157(n+1)`
-/

namespace A278710.P10661500323292916996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A279928 (A055998 (n + 1)).toNat) (A073157 (n + 1))

end

end A278710.P10661500323292916996

/-! ## A278710.P4263055741920595798

`A279928(A027379(n+1))+A010051(2*(n+2))`
-/

namespace A278710.P4263055741920595798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A027379 (n + 1)).toNat + A010051 (2 * (n + 2))

end

end A278710.P4263055741920595798

/-! ## A278710.P11692525479140286542

`A279928(A027379(n+1))*A309873(2*n+1)`
-/

namespace A278710.P11692525479140286542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279928 (A027379 (n + 1)).toNat * A309873 (2 * n + 1)

end

end A278710.P11692525479140286542

/-!
# A278711: Triangle T read by rows: T(n, m), for n >= 2, and m=1, 2, ..., n-1, equals the positive integer solution x of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

The programs for A278711, the canonical program `A278711.P2667105724991810827` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278711 has offset 2).

The definition of A278711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278711.P3204528142516006983

`(comp[∑[n]]-n)*A278712(n+2)`
-/

namespace A278711.P3204528142516006983
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A278712 (n + 2)

end

end A278711.P3204528142516006983

namespace A278711

/-- `(comp[∑[n]]-n)*A278712(n+2)` -/
def P3204528142516006983.Spec : Prop :=
  ∀ n, P3204528142516006983.a n = A278711 (n + 2)

end A278711

/-! ## A278711.P15096761961034885239

`(n-comp[∑[n]])²*A225950(n+2)`
-/

namespace A278711.P15096761961034885239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 * A225950 (n + 2)

end

end A278711.P15096761961034885239

namespace A278711

/-- `(n-comp[∑[n]])²*A225950(n+2)` -/
def P15096761961034885239.Spec : Prop :=
  ∀ n, P15096761961034885239.a n = A278711 (n + 2)

end A278711

/-! ## A278711.P15617033906627999917

`A278712(n+2)*A357372(n+1)`
-/

namespace A278711.P15617033906627999917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278712 (n + 2) * A357372 (n + 1)

end

end A278711.P15617033906627999917

namespace A278711

/-- `A278712(n+2)*A357372(n+1)` -/
def P15617033906627999917.Spec : Prop :=
  ∀ n, P15617033906627999917.a n = A278711 (n + 2)

end A278711

/-! ## A278711.P2667105724991810827

`lcm(A140978(n+1), A225950(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A278711

/-- `lcm(A140978(n+1), A225950(n+2))` -/
def P2667105724991810827.Spec : Prop :=
  ∀ n, (P2667105724991810827.a n : ℤ) = A278711 (n + 2)

theorem P2667105724991810827.correct : P2667105724991810827.Spec := by
  intro n
  simp only [A278711, Nat.add_sub_cancel]

end A278711

/-! ## A278711.P17298697677480497240

`A278712(n+2)²/A120070(n+2)`
-/

namespace A278711.P17298697677480497240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278712 (n + 2) ^ 2 : ℚ) / (A120070 (n + 2) : ℚ)

end

end A278711.P17298697677480497240

namespace A278711

/-- `A278712(n+2)²/A120070(n+2)` -/
def P17298697677480497240.Spec : Prop :=
  ∀ n, P17298697677480497240.a n = (A278711 (n + 2) : ℚ)

end A278711

/-! ## A278711.P6312945585658500665

`lcm(A003057(n+2)², A278712(n+2))`
-/

namespace A278711.P6312945585658500665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003057 (n + 2) ^ 2) (A278712 (n + 2))

end

end A278711.P6312945585658500665

namespace A278711

/-- `lcm(A003057(n+2)², A278712(n+2))` -/
def P6312945585658500665.Spec : Prop :=
  ∀ n, (P6312945585658500665.a n : ℤ) = A278711 (n + 2)

end A278711

/-! ## A278711.P16612214318908307526

`lcm(A048761(A195437(n)), A278712(n+2))`
-/

namespace A278711.P16612214318908307526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048761 (A195437 n).toNat) (A278712 (n + 2))

end

end A278711.P16612214318908307526

namespace A278711

/-- `lcm(A048761(A195437(n)), A278712(n+2))` -/
def P16612214318908307526.Spec : Prop :=
  ∀ n, (P16612214318908307526.a n : ℤ) = A278711 (n + 2)

end A278711

/-!
# A278712: Triangle T read by rows: T(n, m), for n >= 2, and m = 1, 2, ..., n-1, equals the square root of the positive integer solution y of y^2 = x^3 - A(n, m)^2*x with the area A(n, m) = A249869(n, m) of the primitive Pythagorean triangle characterized by (n, m) or 0 if no such triangle exists.

The programs for A278712, the canonical program `A278712.P11642607934964256146` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278712 has offset 2).

The definition of A278712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278712.P2675030671371498222

`(comp[∑[n]]-n)*A225950(n+2)`
-/

namespace A278712.P2675030671371498222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A225950 (n + 2)

end

end A278712.P2675030671371498222

namespace A278712

/-- `(comp[∑[n]]-n)*A225950(n+2)` -/
def P2675030671371498222.Spec : Prop :=
  ∀ n, P2675030671371498222.a n = A278712 (n + 2)

end A278712

/-! ## A278712.P18189689572838824250

`A278711(n+2)/(comp[∑[n]]-n)`
-/

namespace A278712.P18189689572838824250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278711 (n + 2) : ℚ) / ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℚ)

end

end A278712.P18189689572838824250

namespace A278712

/-- `A278711(n+2)/(comp[∑[n]]-n)` -/
def P18189689572838824250.Spec : Prop :=
  ∀ n, P18189689572838824250.a n = (A278712 (n + 2) : ℚ)

end A278712

/-! ## A278712.P11642607934964256146

`lcm(∑[A073423(n)], A225950(n+2))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A278712

/-- `lcm(∑[A073423(n)], A225950(n+2))` -/
def P11642607934964256146.Spec : Prop :=
  ∀ n, (P11642607934964256146.a n : ℤ) = A278712 (n + 2)

theorem P11642607934964256146.correct : P11642607934964256146.Spec := by
  intro n
  simp only [A278712, Nat.add_sub_cancel]

end A278712

/-! ## A278712.P17763285017950396439

`A225950(n+2)*A357372(n+1)`
-/

namespace A278712.P17763285017950396439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225950 (n + 2) * A357372 (n + 1)

end

end A278712.P17763285017950396439

namespace A278712

/-- `A225950(n+2)*A357372(n+1)` -/
def P17763285017950396439.Spec : Prop :=
  ∀ n, P17763285017950396439.a n = A278712 (n + 2)

end A278712

/-! ## A278712.P13266673437580786766

`sqrt(A120070(n+2)*A278711(n+2))`
-/

namespace A278712.P13266673437580786766
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A120070 (n + 2) * A278711 (n + 2) : ℝ)

end

end A278712.P13266673437580786766

namespace A278712

/-- `sqrt(A120070(n+2)*A278711(n+2))` -/
def P13266673437580786766.Spec : Prop :=
  ∀ n, P13266673437580786766.a n = (A278712 (n + 2) : ℝ)

end A278712

/-! ## A278712.P2924131742665091255

`sqrt(A225950(n+2)*A278711(n+2))`
-/

namespace A278712.P2924131742665091255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A225950 (n + 2) * A278711 (n + 2) : ℝ)

end

end A278712.P2924131742665091255

namespace A278712

/-- `sqrt(A225950(n+2)*A278711(n+2))` -/
def P2924131742665091255.Spec : Prop :=
  ∀ n, P2924131742665091255.a n = (A278712 (n + 2) : ℝ)

end A278712

/-! ## A278712.P10982765835080030135

`floor(A278711(n+2)/A003057(n+2))`
-/

namespace A278712.P10982765835080030135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A278711 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)⌋

end

end A278712.P10982765835080030135

namespace A278712

/-- `floor(A278711(n+2)/A003057(n+2))` -/
def P10982765835080030135.Spec : Prop :=
  ∀ n, P10982765835080030135.a n = A278712 (n + 2)

end A278712

/-! ## A278712.P1811913409701968292

`1/A106448(n+1)*A278711(n+2)`
-/

namespace A278712.P1811913409701968292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A106448 (n + 1) : ℚ) * (A278711 (n + 2) : ℚ)

end

end A278712.P1811913409701968292

namespace A278712

/-- `1/A106448(n+1)*A278711(n+2)` -/
def P1811913409701968292.Spec : Prop :=
  ∀ n, P1811913409701968292.a n = (A278712 (n + 2) : ℚ)

end A278712

/-! ## A278712.P505434754542890127

`A004736(n+1)/2*A225951(n+2)`
-/

namespace A278712.P505434754542890127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / 2 * (A225951 (n + 2) : ℚ)

end

end A278712.P505434754542890127

namespace A278712

/-- `A004736(n+1)/2*A225951(n+2)` -/
def P505434754542890127.Spec : Prop :=
  ∀ n, P505434754542890127.a n = (A278712 (n + 2) : ℚ)

end A278712

/-! ## A278712.P14290453281512638158

`A001281(A004736(n+1)*A225951(n+2))`
-/

namespace A278712.P14290453281512638158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A004736 (n + 1) * A225951 (n + 2)).toNat

end

end A278712.P14290453281512638158

namespace A278712

/-- `A001281(A004736(n+1)*A225951(n+2))` -/
def P14290453281512638158.Spec : Prop :=
  ∀ n, P14290453281512638158.a n = A278712 (n + 2)

end A278712

/-!
# A278713: Numerators of (n-1)*(n-3)/(6*(2*n-1)); equivalently, numerators of Dedekind sum s(2,2*n-1).

The programs for A278713, the canonical program `A278713.P4379502417608644159` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278713 has offset 1).

The definition of A278713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278713.P4379502417608644159

`A067998(n)/gcd(A054000(n+2), A067998(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A278713

/-- `A067998(n)/gcd(A054000(n+2), A067998(n))` -/
def P4379502417608644159.Spec : Prop :=
  ∀ n, P4379502417608644159.a n = (A278713 (n + 1) : ℚ)

end A278713

/-! ## A278713.P8191340500431317600

`A278715(2*(n²+1))`
-/

namespace A278713.P8191340500431317600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278715 (2 * (n ^ 2 + 1))

end

end A278713.P8191340500431317600

namespace A278713

/-- `A278715(2*(n²+1))` -/
def P8191340500431317600.Spec : Prop :=
  ∀ n, P8191340500431317600.a n = A278713 (n + 1)

end A278713

/-!
# A278714: Denominators of (n-1)*(n-3)/(6*(2*n-1)), for n >= 1. Denominators of Dedekind sum s(2, 2*n-1).

The programs for A278714, the canonical program `A278714.P11221124697154422280` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278714 has offset 1).

The definition of A278714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278714.P11221124697154422280

`gcd(6, 1-n)*A096431(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A278714

/-- `gcd(6, 1-n)*A096431(n+1)` -/
def P11221124697154422280.Spec : Prop :=
  ∀ n, P11221124697154422280.a n = A278714 (n + 1)

theorem P11221124697154422280.correct : P11221124697154422280.Spec := by
  intro n
  simp only [A278714, Nat.add_sub_cancel]

end A278714

/-! ## A278714.P15531178848653373270

`A089145(n+2)*A106611(2*n+1)`
-/

namespace A278714.P15531178848653373270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089145 (n + 2) * A106611 (2 * n + 1)

end

end A278714.P15531178848653373270

namespace A278714

/-- `A089145(n+2)*A106611(2*n+1)` -/
def P15531178848653373270.Spec : Prop :=
  ∀ n, P15531178848653373270.a n = A278714 (n + 1)

end A278714

/-! ## A278714.P9006659516251990950

`A060791(2*n+1)*A306764(2*n)`
-/

namespace A278714.P9006659516251990950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (2 * n + 1) * A306764 (2 * n)

end

end A278714.P9006659516251990950

namespace A278714

/-- `A060791(2*n+1)*A306764(2*n)` -/
def P9006659516251990950.Spec : Prop :=
  ∀ n, P9006659516251990950.a n = A278714 (n + 1)

end A278714

/-! ## A278714.P5081709971163315068

`A106611(2*n+1)*A306764(2*n)`
-/

namespace A278714.P5081709971163315068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (2 * n + 1) * A306764 (2 * n)

end

end A278714.P5081709971163315068

namespace A278714

/-- `A106611(2*n+1)*A306764(2*n)` -/
def P5081709971163315068.Spec : Prop :=
  ∀ n, P5081709971163315068.a n = A278714 (n + 1)

end A278714

/-! ## A278714.P4941863340213714369

`A106621(2*n+1)*A306764(2*n)`
-/

namespace A278714.P4941863340213714369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (2 * n + 1) * A306764 (2 * n)

end

end A278714.P4941863340213714369

namespace A278714

/-- `A106621(2*n+1)*A306764(2*n)` -/
def P4941863340213714369.Spec : Prop :=
  ∀ n, P4941863340213714369.a n = A278714 (n + 1)

end A278714

/-! ## A278714.P3736012068093446669

`A060791(2*n+1)*A089128(n+5)`
-/

namespace A278714.P3736012068093446669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (2 * n + 1) * A089128 (n + 5)

end

end A278714.P3736012068093446669

namespace A278714

/-- `A060791(2*n+1)*A089128(n+5)` -/
def P3736012068093446669.Spec : Prop :=
  ∀ n, P3736012068093446669.a n = A278714 (n + 1)

end A278714

/-! ## A278714.P3538652476718688811

`gcd((9*n+3)*A069038(2*n+1), A001105(2*n+1))`
-/

namespace A278714.P3538652476718688811
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((9 * n + 3 : ℤ) * A069038 (2 * n + 1)) (A001105 (2 * n + 1))

end

end A278714.P3538652476718688811

namespace A278714

/-- `gcd((9*n+3)*A069038(2*n+1), A001105(2*n+1))` -/
def P3538652476718688811.Spec : Prop :=
  ∀ n, (P3538652476718688811.a n : ℤ) = A278714 (n + 1)

end A278714

/-! ## A278714.P5235318689271639722

`gcd(A060791(2*(n+2)), A060791(n+5))*A060791(2*n+1)`
-/

namespace A278714.P5235318689271639722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A060791 (2 * (n + 2))) (A060791 (n + 5)) : ℤ) * A060791 (2 * n + 1)

end

end A278714.P5235318689271639722

namespace A278714

/-- `gcd(A060791(2*(n+2)), A060791(n+5))*A060791(2*n+1)` -/
def P5235318689271639722.Spec : Prop :=
  ∀ n, P5235318689271639722.a n = A278714 (n + 1)

end A278714

/-! ## A278714.P13042544896678767984

`gcd(A000982(4*n+2), A005585(4*n+2))`
-/

namespace A278714.P13042544896678767984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000982 (4 * n + 2)) (A005585 (4 * n + 2))

end

end A278714.P13042544896678767984

namespace A278714

/-- `gcd(A000982(4*n+2), A005585(4*n+2))` -/
def P13042544896678767984.Spec : Prop :=
  ∀ n, (P13042544896678767984.a n : ℤ) = A278714 (n + 1)

end A278714

/-! ## A278714.P1931839119176786992

`gcd(12*n+6, A060099(A008458(4*n+1)))`
-/

namespace A278714.P1931839119176786992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 * n + 6 : ℤ) (A060099 (A008458 (4 * n + 1)).toNat)

end

end A278714.P1931839119176786992

namespace A278714

/-- `gcd(12*n+6, A060099(A008458(4*n+1)))` -/
def P1931839119176786992.Spec : Prop :=
  ∀ n, (P1931839119176786992.a n : ℤ) = A278714 (n + 1)

end A278714

/-!
# A278715: Table T read by rows. T(k, h) gives the numerators of the Dedekind sums s(h, k) with gcd(h, k) = 1 or 0 otherwise.

The programs for A278715, there is no canonical definition to state claims against.
-/

/-! ## A278715.P3333097195161396340

`Δ[5%A300759(A306641(n))]`
-/

namespace A278715.P3333097195161396340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A300759 (A306641 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278715.P3333097195161396340

/-! ## A278715.P4591223300124426217

`Δ[A005811(A036035(A243202(n)))]`
-/

namespace A278715.P4591223300124426217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A036035 (A243202 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278715.P4591223300124426217

/-! ## A278715.P1827046550879151399

`Δ[A028641(A004881(A129246(n+1))²)]`
-/

namespace A278715.P1827046550879151399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028641 (A004881 (A129246 (n + 1)).toNat ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A278715.P1827046550879151399

/-! ## A278715.P14911250585035759944

`Δ[A157386(n+1)]%A001223(A187829(n+1))`
-/

namespace A278715.P14911250585035759944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A001223 (A187829 (n + 1)).toNat)

end

end A278715.P14911250585035759944

/-! ## A278715.P15327445933212547189

`and(5, A265115(n+1))-A103452(n)`
-/

namespace A278715.P15327445933212547189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A265115 (n + 1)) - A103452 n

end

end A278715.P15327445933212547189

/-!
# A278717: Triangle read by rows: T(n, m) gives the difference between the even and odd leg of the primitive Pythagorean triangle determined by (n, m) with n > m >= 1, gcd(n, m) = 1 and n+m odd, or 0 for other (n, m).

The programs for A278717, there is no canonical definition to state claims against.
-/

/-! ## A278717.P3065653095841580569

`A057105(n+1)*A249866(n+2)`
-/

namespace A278717.P3065653095841580569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057105 (n + 1) * A249866 (n + 2)

end

end A278717.P3065653095841580569

/-! ## A278717.P13704771135368429297

`A225952(n+2)-A225950(n+2)`
-/

namespace A278717.P13704771135368429297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225952 (n + 2) - A225950 (n + 2)

end

end A278717.P13704771135368429297

/-! ## A278717.P15466205648512793184

`A057105(n+1)%A300291(n+2)`
-/

namespace A278717.P15466205648512793184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057105 (n + 1)) (A300291 (n + 2))

end

end A278717.P15466205648512793184

/-! ## A278717.P14023587153748773123

`2*A225952(n+2)-A225949(n+2)`
-/

namespace A278717.P14023587153748773123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A225952 (n + 2) - A225949 (n + 2)

end

end A278717.P14023587153748773123

/-! ## A278717.P319539151281358689

`A225949(n+2)-2*A225950(n+2)`
-/

namespace A278717.P319539151281358689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) - 2 * A225950 (n + 2)

end

end A278717.P319539151281358689

/-! ## A278717.P10754581593522395714

`A225949(n+2)-A005843(A225950(n+2))`
-/

namespace A278717.P10754581593522395714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225949 (n + 2) - A005843 (A225950 (n + 2)).toNat

end

end A278717.P10754581593522395714

/-! ## A278717.P6910551936486324015

`A005843(A225952(n+2))-A225949(n+2)`
-/

namespace A278717.P6910551936486324015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A225952 (n + 2)).toNat - A225949 (n + 2)

end

end A278717.P6910551936486324015

/-! ## A278717.P16398306886349204485

`A225952(n+2)-A278712(n+2)/A003057(n+2)`
-/

namespace A278717.P16398306886349204485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225952 (n + 2) : ℚ) - (A278712 (n + 2) : ℚ) / (A003057 (n + 2) : ℚ)

end

end A278717.P16398306886349204485

/-! ## A278717.P8420274467685673286

`and(A054431(n+1), A057105(n+1))*A057105(n+1)`
-/

namespace A278717.P8420274467685673286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054431 (n + 1)) (A057105 (n + 1)) * A057105 (n + 1)

end

end A278717.P8420274467685673286

/-! ## A278717.P3681674739385731051

`A225952(n+2)+(-1)^A006038(n+1)*A225950(n+2)`
-/

namespace A278717.P3681674739385731051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225952 (n + 2) : ℚ) + (-1 : ℚ) ^ (A006038 (n + 1) : ℤ) * (A225950 (n + 2) : ℚ)

end

end A278717.P3681674739385731051

/-!
# A278718: Numerators of A189733: periodic sequence repeating [0, 1, 1, 1, 0, -1].

The programs for A278718, the canonical program `A278718.P4426041122127376006` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278718 has offset 0).

The definition of A278718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278718.P4426041122127376006

`(1+(-1)^floor((n-1)/3))/2-floor((n+1)/6)+floor(n/6)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278718

/-- `(1+(-1)^floor((n-1)/3))/2-floor((n+1)/6)+floor(n/6)` -/
def P4426041122127376006.Spec : Prop :=
  ∀ n, P4426041122127376006.a n = (A278718 n : ℚ)

end A278718

/-!
# A278719: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A278719, there is no canonical definition to state claims against.
-/

/-! ## A278719.P16639797664464956283

`A007088(A278859(n))`
-/

namespace A278719.P16639797664464956283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278859 n).toNat

end

end A278719.P16639797664464956283

/-! ## A278719.P13314123126167762135

`A185544(2*A278859(n))`
-/

namespace A278719.P13314123126167762135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278859 n).toNat

end

end A278719.P13314123126167762135

/-! ## A278719.P10323469711486380024

`A281410(A004891(n+1))`
-/

namespace A278719.P10323469711486380024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281410 (A004891 (n + 1)).toNat

end

end A278719.P10323469711486380024

/-! ## A278719.P3213570898633389401

`A281410(A001222(5^n))`
-/

namespace A278719.P3213570898633389401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281410 (A001222 (5 ^ n)).toNat

end

end A278719.P3213570898633389401

/-!
# A278720: The p-defect p - N(p) of the congruence y^2 == x^3 + 4*x (mod p) for primes p, where N(p) is the number of solutions given by A276730.

The programs for A278720, there is no canonical definition to state claims against.
-/

/-! ## A278720.P6579433959268876318

`A000040(n+1)-A276730(n+1)`
-/

namespace A278720.P6579433959268876318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276730 (n + 1)

end

end A278720.P6579433959268876318

/-! ## A278720.P2475790604106154339

`A272207(n+1)+A273163(n+1)-A276730(n+1)`
-/

namespace A278720.P2475790604106154339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272207 (n + 1) + (A273163 (n + 1) - A276730 (n + 1))

end

end A278720.P2475790604106154339

/-! ## A278720.P13155857964528797084

`A276664(n+1)+A276695(n+1)-A276730(n+1)`
-/

namespace A278720.P13155857964528797084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276664 (n + 1) + (A276695 (n + 1) - A276730 (n + 1))

end

end A278720.P13155857964528797084

/-! ## A278720.P14846418375855514459

`A008578(n+2)-A276730(n+1)`
-/

namespace A278720.P14846418375855514459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A276730 (n + 1)

end

end A278720.P14846418375855514459

/-! ## A278720.P4798855007764633858

`p?[(n+1)*A001222(n+1)]-A276730(n+1)`
-/

namespace A278720.P4798855007764633858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276730 (n + 1)

end

end A278720.P4798855007764633858

/-! ## A278720.P1380336197138449818

`eq[1, A032741(n)]-A276730(n+1)`
-/

namespace A278720.P1380336197138449818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A276730 (n + 1)

end

end A278720.P1380336197138449818

/-! ## A278720.P6760603234612462035

`p?[A057723(n+1)]-A276730(n+1)`
-/

namespace A278720.P6760603234612462035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276730 (n + 1)

end

end A278720.P6760603234612462035

/-! ## A278720.P16044726021736518599

`p?[A045965(n+1)]-A276730(n+1)`
-/

namespace A278720.P16044726021736518599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A276730 (n + 1)

end

end A278720.P16044726021736518599

/-! ## A278720.P12558991308865378720

`A083140(∑[n]+2)-A276730(n+1)`
-/

namespace A278720.P12558991308865378720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A276730 (n + 1)

end

end A278720.P12558991308865378720

/-!
# A278721: Number of nX2 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278721, the canonical program `A278721.P3620013212311657528` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278721 has offset 1).

The definition of A278721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278721.P3620013212311657528

`A000582(n+10)+A010965(n)-A000580(n+7)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A278721

/-- `A000582(n+10)+A010965(n)-A000580(n+7)` -/
def P3620013212311657528.Spec : Prop :=
  ∀ n, P3620013212311657528.a n = A278721 (n + 1)

theorem P3620013212311657528.correct : P3620013212311657528.Spec := by
  intro n
  simp only [A278721, Nat.add_sub_cancel]

end A278721

/-! ## A278721.P12221967057494635309

`A278727(∑[n+1]+2)`
-/

namespace A278721.P12221967057494635309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278721.P12221967057494635309

namespace A278721

/-- `A278727(∑[n+1]+2)` -/
def P12221967057494635309.Spec : Prop :=
  ∀ n, P12221967057494635309.a n = A278721 (n + 1)

end A278721

/-! ## A278721.P13573798690681855190

`record[A278727(A286158(n+1)+2)]`
-/

namespace A278721.P13573798690681855190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278721.P13573798690681855190

namespace A278721

/-- `record[A278727(A286158(n+1)+2)]` -/
def P13573798690681855190.Spec : Prop :=
  ∀ n, P13573798690681855190.a n = A278721 (n + 1)

end A278721

/-! ## A278721.P183257644286023052

`record[A010054(n)*A278727(n+2)]`
-/

namespace A278721.P183257644286023052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A278727 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278721.P183257644286023052

namespace A278721

/-- `record[A010054(n)*A278727(n+2)]` -/
def P183257644286023052.Spec : Prop :=
  ∀ n, P183257644286023052.a n = A278721 (n + 1)

end A278721

/-! ## A278721.P16305954065339790923

`record[A278727(A000096(∑{e}[n+1, #]+1))]`
-/

namespace A278721.P16305954065339790923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A000096 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278721.P16305954065339790923

namespace A278721

/-- `record[A278727(A000096(∑{e}[n+1, #]+1))]` -/
def P16305954065339790923.Spec : Prop :=
  ∀ n, P16305954065339790923.a n = A278721 (n + 1)

end A278721

/-!
# A278722: Number of nX3 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278722, there is no canonical definition to state claims against.
-/

/-! ## A278722.P16283576710540632182

`A278727(∑[n+2]+4)`
-/

namespace A278722.P16283576710540632182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278722.P16283576710540632182

/-! ## A278722.P1248212202484853410

`record[A278727(A286158(n+1)+3)]`
-/

namespace A278722.P1248212202484853410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A286158 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278722.P1248212202484853410

/-! ## A278722.P18070567079736501941

`lcm((-1)^n, A278727(A167614(n+1)))`
-/

namespace A278722.P18070567079736501941
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A278727 (A167614 (n + 1)).toNat)

end

end A278722.P18070567079736501941

/-! ## A278722.P2865759146649908688

`A278727(A167614(n+1))+A025469(n)`
-/

namespace A278722.P2865759146649908688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A167614 (n + 1)).toNat + A025469 n

end

end A278722.P2865759146649908688

/-! ## A278722.P3884423047888617447

`A278727(A167614(n+1))+A185284(n)`
-/

namespace A278722.P3884423047888617447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A167614 (n + 1)).toNat + A185284 n

end

end A278722.P3884423047888617447

/-!
# A278723: Number of nX4 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278723, there is no canonical definition to state claims against.
-/

/-! ## A278723.P18351296851443070749

`A278727(A374004(n+1))`
-/

namespace A278723.P18351296851443070749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A374004 (n + 1)).toNat

end

end A278723.P18351296851443070749

/-! ## A278723.P10226937432435050193

`A278727(A141214(n)+7)`
-/

namespace A278723.P10226937432435050193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A141214 n + 7).toNat

end

end A278723.P10226937432435050193

/-! ## A278723.P9351192739629716248

`A278727(A167614(n+2)+1)`
-/

namespace A278723.P9351192739629716248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A167614 (n + 2) + 1).toNat

end

end A278723.P9351192739629716248

/-! ## A278723.P3050662784109824950

`A278727(∑[n+4]+3)`
-/

namespace A278723.P3050662784109824950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A278723.P3050662784109824950

/-! ## A278723.P18100476585747095712

`A278727(A155212(n)+5)%A144739(n+3)`
-/

namespace A278723.P18100476585747095712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278727 (A155212 n + 5).toNat) (A144739 (n + 3))

end

end A278723.P18100476585747095712

/-!
# A278724: Number of nX5 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278724, there is no canonical definition to state claims against.
-/

/-! ## A278724.P291521733240653167

`A278727(∑[n+4]+11)`
-/

namespace A278724.P291521733240653167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A278724.P291521733240653167

/-! ## A278724.P2390221816320704717

`A278727(A253145(n+3)+5)%A278752(n+4)`
-/

namespace A278724.P2390221816320704717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278727 (A253145 (n + 3) + 5).toNat) (A278752 (n + 4))

end

end A278724.P2390221816320704717

/-!
# A278725: Number of n X 6 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278725, there is no canonical definition to state claims against.
-/

/-! ## A278725.P16891329219253114388

`A278727(A374007(n+1))`
-/

namespace A278725.P16891329219253114388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A374007 (n + 1)).toNat

end

end A278725.P16891329219253114388

/-! ## A278725.P8973342665285607483

`A278727(A077169(n+6)+1)`
-/

namespace A278725.P8973342665285607483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A077169 (n + 6) + 1).toNat

end

end A278725.P8973342665285607483

/-! ## A278725.P17327522289051658349

`A278727(eq[7, A123229(n+1)])`
-/

namespace A278725.P17327522289051658349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278725.P17327522289051658349

/-!
# A278726: Number of nX7 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order.

The programs for A278726, there is no canonical definition to state claims against.
-/

/-! ## A278726.P15337825174474318837

`A278727(A374008(n+1))`
-/

namespace A278726.P15337825174474318837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A374008 (n + 1)).toNat

end

end A278726.P15337825174474318837

/-! ## A278726.P9758526881850644464

`A278727(A055999(n+4))`
-/

namespace A278726.P9758526881850644464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (A055999 (n + 4)).toNat

end

end A278726.P9758526881850644464

/-! ## A278726.P16839592669292025924

`A278727(eq[4, A219347(n)])`
-/

namespace A278726.P16839592669292025924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278726.P16839592669292025924

/-! ## A278726.P12498099140212015619

`A278727(eq[6, A193592(n)])`
-/

namespace A278726.P12498099140212015619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278726.P12498099140212015619

/-!
# A278728: Number of n X 2 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278728, there is no canonical definition to state claims against.
-/

/-! ## A278728.P16353638546548980499

`A278734(∑[n+1]+2)`
-/

namespace A278728.P16353638546548980499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278728.P16353638546548980499

/-! ## A278728.P14045166689116797035

`A278734(A000096(n)+3)%A278729(n+1)`
-/

namespace A278728.P14045166689116797035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278734 (A000096 n + 3).toNat) (A278729 (n + 1))

end

end A278728.P14045166689116797035

/-! ## A278728.P10596347810927199111

`record[A278734(Δ[A003453(n+5)])]`
-/

namespace A278728.P10596347810927199111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278728.P10596347810927199111

/-!
# A278729: Number of nX3 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278729, there is no canonical definition to state claims against.
-/

/-! ## A278729.P6872793298722398238

`A278734(∑[n+2]+4)`
-/

namespace A278729.P6872793298722398238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278729.P6872793298722398238

/-! ## A278729.P7593936165185464910

`lcm((-1)^n, A278734(A167614(n+1)))`
-/

namespace A278729.P7593936165185464910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A278734 (A167614 (n + 1)).toNat)

end

end A278729.P7593936165185464910

/-! ## A278729.P8297272939722672956

`A278734(A167614(n+1))+A011734(n)`
-/

namespace A278729.P8297272939722672956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A167614 (n + 1)).toNat + A011734 n

end

end A278729.P8297272939722672956

/-! ## A278729.P17475064414675242846

`A278734(A167614(n+1))+A025469(n)`
-/

namespace A278729.P17475064414675242846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A167614 (n + 1)).toNat + A025469 n

end

end A278729.P17475064414675242846

/-! ## A278729.P7505307427196605097

`A278734(A167614(n+1))+A185036(n)`
-/

namespace A278729.P7505307427196605097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A167614 (n + 1)).toNat + A185036 n

end

end A278729.P7505307427196605097

/-!
# A278730: Number of nX4 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278730, there is no canonical definition to state claims against.
-/

/-! ## A278730.P8980526044920151959

`A278734(A374004(n+1))`
-/

namespace A278730.P8980526044920151959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A374004 (n + 1)).toNat

end

end A278730.P8980526044920151959

/-! ## A278730.P17914691152575780161

`A278734(A052905(n)+9)`
-/

namespace A278730.P17914691152575780161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A052905 n + 9).toNat

end

end A278730.P17914691152575780161

/-! ## A278730.P8993051434089255681

`A278734(A167614(n+2)+1)`
-/

namespace A278730.P8993051434089255681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A167614 (n + 2) + 1).toNat

end

end A278730.P8993051434089255681

/-! ## A278730.P16420052600671859845

`A278734(eq[5, A131818(n+1)])`
-/

namespace A278730.P16420052600671859845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278730.P16420052600671859845

/-! ## A278730.P8936834317505007122

`A278734(∑[n+4]+3)`
-/

namespace A278730.P8936834317505007122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A278730.P8936834317505007122

/-!
# A278731: Number of nX5 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278731, there is no canonical definition to state claims against.
-/

/-! ## A278731.P5805819754261516140

`A278734(∑[n+4]+11)`
-/

namespace A278731.P5805819754261516140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A278731.P5805819754261516140

/-!
# A278732: Number of n X 6 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278732, there is no canonical definition to state claims against.
-/

/-! ## A278732.P6605116706077013035

`A278734(A374007(n+1))`
-/

namespace A278732.P6605116706077013035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A374007 (n + 1)).toNat

end

end A278732.P6605116706077013035

/-! ## A278732.P14535991872699305596

`A278734(A167499(n+4)+1)`
-/

namespace A278732.P14535991872699305596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A167499 (n + 4) + 1).toNat

end

end A278732.P14535991872699305596

/-! ## A278732.P13026194133577010941

`A278734(eq[7, A131818(n+1)])`
-/

namespace A278732.P13026194133577010941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278732.P13026194133577010941

/-! ## A278732.P13091441223317571350

`A278734(eq[5, A193592(n)])`
-/

namespace A278732.P13091441223317571350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278732.P13091441223317571350

/-! ## A278732.P3459597188544102644

`A278734(eq[6, A200370(n+1)])`
-/

namespace A278732.P3459597188544102644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278732.P3459597188544102644

/-!
# A278733: 

The programs for A278733, there is no canonical definition to state claims against.
-/

/-! ## A278733.P16679655881003304341

`A278734(eq[6, A193592(n)])`
-/

namespace A278733.P16679655881003304341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278733.P16679655881003304341

/-! ## A278733.P9653105641448171366

`A278734(A005408(n)+A167499(n+4)+1)`
-/

namespace A278733.P9653105641448171366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278734 (A005408 n + (A167499 (n + 4) + 1)).toNat

end

end A278733.P9653105641448171366

/-!
# A278734: T(n,k)=Number of nXk 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly one mistake.

The programs for A278734, there is no canonical definition to state claims against.
-/

/-! ## A278734.P2434117419624662456

`A032765(n)*A073524(A162273(n))`
-/

namespace A278734.P2434117419624662456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n * A073524 (A162273 n).toNat

end

end A278734.P2434117419624662456

/-!
# A278735: Smallest prime-indexed prime ending an arithmetic progression of n prime-indexed primes.

The programs for A278735, there is no canonical definition to state claims against.
-/

/-! ## A278735.P12463660189949050784

`A279021(∑[n+1])`
-/

namespace A278735.P12463660189949050784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279021 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A278735.P12463660189949050784

/-! ## A278735.P12372534600091148087

`record[A279021(A133825(n))]`
-/

namespace A278735.P12372534600091148087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279021 (A133825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278735.P12372534600091148087

/-! ## A278735.P2742843052625587138

`or(1, A279021(A025747(n)))`
-/

namespace A278735.P2742843052625587138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A279021 (A025747 n).toNat)

end

end A278735.P2742843052625587138

/-!
# A278736: Number of size-4 cliques in all simple labeled graphs on n nodes.

The programs for A278736, there is no canonical definition to state claims against.
-/

/-! ## A278736.P15228804859851117128

`8^n*∑[∑[∑[n+1]]]*∏[2^n]`
-/

namespace A278736.P15228804859851117128
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f4 j)

end

end A278736.P15228804859851117128

/-! ## A278736.P9625937665855421277

`A278705(n+4)/12`
-/

namespace A278736.P9625937665855421277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278705 (n + 4) : ℚ) / 12

end

end A278736.P9625937665855421277

/-! ## A278736.P16078555883310543921

`A277219(eq[4, A002262(n)])`
-/

namespace A278736.P16078555883310543921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278736.P16078555883310543921

/-! ## A278736.P15835695291394508934

`A277219(eq[5, A002260(n+1)])`
-/

namespace A278736.P15835695291394508934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278736.P15835695291394508934

/-! ## A278736.P9689178507577369391

`A277219(eq[7, A066657(n+1)])`
-/

namespace A278736.P9689178507577369391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277219 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278736.P9689178507577369391

/-!
# A278739: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 105", based on the 5-celled von Neumann neighborhood.

The programs for A278739, there is no canonical definition to state claims against.
-/

/-! ## A278739.P9607724053722723409

`A007088(A278863(n))`
-/

namespace A278739.P9607724053722723409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278863 n).toNat

end

end A278739.P9607724053722723409

/-! ## A278739.P16648399980499895383

`A185544(2*A278863(n))`
-/

namespace A278739.P16648399980499895383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278863 n).toNat

end

end A278739.P16648399980499895383

/-! ## A278739.P3498772893089186635

`A281411(A004891(n+1))`
-/

namespace A278739.P3498772893089186635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281411 (A004891 (n + 1)).toNat

end

end A278739.P3498772893089186635

/-! ## A278739.P6450083959576622159

`A281411(A004913(n+1))`
-/

namespace A278739.P6450083959576622159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281411 (A004913 (n + 1)).toNat

end

end A278739.P6450083959576622159

/-!
# A278741: Odd numbers k such that tau(k-1) is a prime.

The programs for A278741, the canonical program `A278741.P14531857081843335100` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278741 has offset 1).

The definition of A278741 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061286, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A278741.P14531857081843335100

`A061286(n+1)+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A278741

/-- `A061286(n+1)+1` -/
def P14531857081843335100.Spec : Prop :=
  ∀ n, P14531857081843335100.a n = A278741 (n + 1)

theorem P14531857081843335100.correct : P14531857081843335100.Spec := by
  intro n
  simp only [A278741, Nat.add_sub_cancel]

end A278741

/-! ## A278741.P6349645348319319900

`record[A243305(n+1)]`
-/

namespace A278741.P6349645348319319900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278741.P6349645348319319900

namespace A278741

/-- `record[A243305(n+1)]` -/
def P6349645348319319900.Spec : Prop :=
  ∀ n, P6349645348319319900.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P726786468075552725

`A098102(n+1)+2`
-/

namespace A278741.P726786468075552725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098102 (n + 1) + 2

end

end A278741.P726786468075552725

namespace A278741

/-- `A098102(n+1)+2` -/
def P726786468075552725.Spec : Prop :=
  ∀ n, P726786468075552725.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P11446500485358264624

`A229065(n+1)-2`
-/

namespace A278741.P11446500485358264624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229065 (n + 1) - 2

end

end A278741.P11446500485358264624

namespace A278741

/-- `A229065(n+1)-2` -/
def P11446500485358264624.Spec : Prop :=
  ∀ n, P11446500485358264624.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P4029462004962193171

`Δ[A080355(n+1)]+1`
-/

namespace A278741.P4029462004962193171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A278741.P4029462004962193171

namespace A278741

/-- `Δ[A080355(n+1)]+1` -/
def P4029462004962193171.Spec : Prop :=
  ∀ n, P4029462004962193171.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P9086292930483409751

`record[A066781(n+1)+1]`
-/

namespace A278741.P9086292930483409751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066781 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278741.P9086292930483409751

namespace A278741

/-- `record[A066781(n+1)+1]` -/
def P9086292930483409751.Spec : Prop :=
  ∀ n, P9086292930483409751.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P258466565401540962

`record[A100371(n+1)+2]`
-/

namespace A278741.P258466565401540962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100371 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278741.P258466565401540962

namespace A278741

/-- `record[A100371(n+1)+2]` -/
def P258466565401540962.Spec : Prop :=
  ∀ n, P258466565401540962.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P6574541845289046984

`record[A226305(n+1)+2]`
-/

namespace A278741.P6574541845289046984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226305 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278741.P6574541845289046984

namespace A278741

/-- `record[A226305(n+1)+2]` -/
def P6574541845289046984.Spec : Prop :=
  ∀ n, P6574541845289046984.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P18263177552015182454

`record[A358820(n+2)+1]`
-/

namespace A278741.P18263177552015182454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358820 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278741.P18263177552015182454

namespace A278741

/-- `record[A358820(n+2)+1]` -/
def P18263177552015182454.Spec : Prop :=
  ∀ n, P18263177552015182454.a n = A278741 (n + 1)

end A278741

/-! ## A278741.P3392289458810251944

`2*A135620(n+1)+1`
-/

namespace A278741.P3392289458810251944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135620 (n + 1) + 1

end

end A278741.P3392289458810251944

namespace A278741

/-- `2*A135620(n+1)+1` -/
def P3392289458810251944.Spec : Prop :=
  ∀ n, P3392289458810251944.a n = A278741 (n + 1)

end A278741

/-!
# A278742: Lexicographically least strictly increasing sequence such that, for any n>0, Sum_{k=1..n} a(k) can be computed without carries in base 10.

The programs for A278742, there is no canonical definition to state claims against.
-/

/-! ## A278742.P2055879176597859732

`eq[0, A336206(n+1)]+1`
-/

namespace A278742.P2055879176597859732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A278742.P2055879176597859732

/-! ## A278742.P5346757779419422891

`eq[A000038(n), A336206(A028310(n))]`
-/

namespace A278742.P5346757779419422891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336206 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278742.P5346757779419422891

/-! ## A278742.P6786816567915792976

`A000035(A053575(n+1))+lt[A336206(n+1)², 1]`
-/

namespace A278742.P6786816567915792976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336206 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A053575 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A278742.P6786816567915792976

/-! ## A278742.P6569969189298262489

`lt[A336206(n+1), A240328(n+2)+1]+1`
-/

namespace A278742.P6569969189298262489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A278742.P6569969189298262489

/-! ## A278742.P16001639767697408909

`eq[A000007(n), A336206(A028310(n))]`
-/

namespace A278742.P16001639767697408909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336206 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278742.P16001639767697408909

/-!
# A278744: Number of steps (modular reductions) in calculating the GCD of n-th consecutive primes p(n) and p(n+1) by the Euclidean algorithm.

The programs for A278744, there is no canonical definition to state claims against.
-/

/-! ## A278744.P3584745889655082297

`A071866(n+1)-1`
-/

namespace A278744.P3584745889655082297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071866 (n + 1) - 1

end

end A278744.P3584745889655082297

/-! ## A278744.P13195354583536543884

`A049843(∑[n+1]+1)`
-/

namespace A278744.P13195354583536543884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049843 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278744.P13195354583536543884

/-! ## A278744.P18246149372312386249

`dr(A049843(C(n+2, 2)+1))`
-/

namespace A278744.P18246149372312386249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A049843 (Nat.choose (n + 2) 2 + 1))

end

end A278744.P18246149372312386249

/-! ## A278744.P2493869464853657214

`A049843(C(n+2, n)+1)%6`
-/

namespace A278744.P2493869464853657214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049843 (Nat.choose (n + 2) n + 1)) 6

end

end A278744.P2493869464853657214

/-! ## A278744.P4339498846284919065

`round(sqrt((A049843(C(n+3, 2)-(n+1))+1)²+1))-1`
-/

namespace A278744.P4339498846284919065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A049843 (Nat.choose (n + 3) 2 - (n + 1)) + 1) ^ 2 + 1 : ℝ)) - 1

end

end A278744.P4339498846284919065

/-! ## A278744.P12015426678058330663

`A049843(A000096(n)+2)%6`
-/

namespace A278744.P12015426678058330663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049843 (A000096 n + 2).toNat) 6

end

end A278744.P12015426678058330663

/-! ## A278744.P101888050167854375

`A260196(n+2)+A071866(n+1)`
-/

namespace A278744.P101888050167854375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A071866 (n + 1)

end

end A278744.P101888050167854375

/-! ## A278744.P17277929546281688087

`A058197(n+1)%A071866(n+1)`
-/

namespace A278744.P17277929546281688087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A071866 (n + 1))

end

end A278744.P17277929546281688087

/-! ## A278744.P1847907709805122882

`A072828(n+1)%A071866(n+1)`
-/

namespace A278744.P1847907709805122882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A071866 (n + 1))

end

end A278744.P1847907709805122882

/-! ## A278744.P17996648178986565120

`A127229(n+5)%A071866(n+1)`
-/

namespace A278744.P17996648178986565120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A071866 (n + 1))

end

end A278744.P17996648178986565120

/-! ## A278744.P12441467050712714539

`xor(-A008836(n+1)², -A071866(n+1))`
-/

namespace A278744.P12441467050712714539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(A008836 (n + 1) ^ 2)) (-A071866 (n + 1))

end

end A278744.P12441467050712714539

/-! ## A278744.P1649991583028430870

`A049002(A000040(n+1))%A071866(n+1)`
-/

namespace A278744.P1649991583028430870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049002 (A000040 (n + 1)).toNat) (A071866 (n + 1))

end

end A278744.P1649991583028430870

/-! ## A278744.P17468835618610154671

`abs(A071866(n+1)+A008683(A001359(n+1)))`
-/

namespace A278744.P17468835618610154671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A071866 (n + 1) + A008683 (A001359 (n + 1)).toNat|

end

end A278744.P17468835618610154671

/-!
# A278747: E.g.f. B(x) is defined by: B(x) = 1 + Integral C(x)*A(x)^2 - C(x)^2*A(x) dx, where A(x) and C(x) are described by A278746 and A278748, respectively.

The programs for A278747, there is no canonical definition to state claims against.
-/

/-! ## A278747.P4103524225610809593

`A034952(n)*A345764(A341247(n+8))`
-/

namespace A278747.P4103524225610809593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034952 n * A345764 (A341247 (n + 8)).toNat

end

end A278747.P4103524225610809593

/-!
# A278749: E.g.f. C(x) + S(x), such that C(x)^2 - S(x)^2 = 1, 3*C(x)^2 - 2*D(x)^3 = 1, and D(x) = 1 + Integral S(x)*C(x) dx.

The programs for A278749, there is no canonical definition to state claims against.
-/

/-! ## A278749.P13237706267861623183

`A008611(A130707(n)+A054093(n+1))`
-/

namespace A278749.P13237706267861623183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A130707 n + A054093 (n + 1)).toNat

end

end A278749.P13237706267861623183

/-!
# A278750: E.g.f. S(x) = Integral C(x)*D(x)^2 dx, where C(x)^2 - S(x)^2 = 1 and 3*C(x)^2 - 2*D(x)^3 = 1.

The programs for A278750, there is no canonical definition to state claims against.
-/

/-! ## A278750.P5512765509266205555

`A278749(Δ[n²])`
-/

namespace A278750.P5512765509266205555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278749 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278750.P5512765509266205555

/-! ## A278750.P11238729606642406760

`record[A278749(n*n%2)]`
-/

namespace A278750.P11238729606642406760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278749 (n * (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278750.P11238729606642406760

/-! ## A278750.P3245465730621556913

`((-1)^n)²*A278749(2*n+1)`
-/

namespace A278750.P3245465730621556913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n) ^ 2 * A278749 (2 * n + 1)

end

end A278750.P3245465730621556913

/-! ## A278750.P45183216935761169

`record[A278749((n+1)/2^val(n+1, 2))]`
-/

namespace A278750.P45183216935761169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278749 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278750.P45183216935761169

/-! ## A278750.P10331686207600453950

`record[A278749(A004442(n))]`
-/

namespace A278750.P10331686207600453950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278749 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278750.P10331686207600453950

/-!
# A278751: E.g.f. C(x) = 1 + Integral S(x)*D(x)^2 dx, where C(x)^2 - S(x)^2 = 1 and 3*C(x)^2 - 2*D(x)^3 = 1.

The programs for A278751, there is no canonical definition to state claims against.
-/

/-! ## A278751.P76892192319719017

`A278749(2*n)`
-/

namespace A278751.P76892192319719017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278749 (2 * n)

end

end A278751.P76892192319719017

/-! ## A278751.P3777475958549814339

`or(1, A278749(A004277(n)))`
-/

namespace A278751.P3777475958549814339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278749 (A004277 n).toNat)

end

end A278751.P3777475958549814339

/-! ## A278751.P16904489188486486500

`or(1, A278749(A005843(n)))`
-/

namespace A278751.P16904489188486486500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278749 (A005843 n).toNat)

end

end A278751.P16904489188486486500

/-! ## A278751.P10199804666287439563

`A278749(A004277(n))^A178334(n)`
-/

namespace A278751.P10199804666287439563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278749 (A004277 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A278751.P10199804666287439563

/-! ## A278751.P13746491174185253057

`lcm(A097807(n), A278749(A004277(n)))`
-/

namespace A278751.P13746491174185253057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A097807 n) (A278749 (A004277 n).toNat)

end

end A278751.P13746491174185253057

/-!
# A278752: E.g.f. D(x) = 1 + Integral S(x)*C(x) dx, where C(x)^2 - S(x)^2 = 1 and 3*C(x)^2 - 2*D(x)^3 = 1.

The programs for A278752, there is no canonical definition to state claims against.
-/

/-! ## A278752.P17638228375367443667

`A165404(∑{digits}[n, #^#]-floor(n/(xor(n, n+1)+1)))`
-/

namespace A278752.P17638228375367443667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165404 (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x ^ x).sum : ℕ) : ℤ) - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋).toNat

end

end A278752.P17638228375367443667

/-!
# A278753: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A278753, the canonical program `A278753.P10591540415365618920` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278753 has offset 0).

The definition of A278753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278753.P13204155145477009175

`A282415(n)-Δ[A289404(n)]`
-/

namespace A278753.P13204155145477009175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - (f1 (n + 1) - f1 n)

end

end A278753.P13204155145477009175

namespace A278753

/-- `A282415(n)-Δ[A289404(n)]` -/
def P13204155145477009175.Spec : Prop :=
  ∀ n, P13204155145477009175.a n = A278753 n

end A278753

/-! ## A278753.P5136103903350112737

`A285540(n)-A287468(n+1)`
-/

namespace A278753.P5136103903350112737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285540 n - A287468 (n + 1)

end

end A278753.P5136103903350112737

namespace A278753

/-- `A285540(n)-A287468(n+1)` -/
def P5136103903350112737.Spec : Prop :=
  ∀ n, P5136103903350112737.a n = A278753 n

end A278753

/-! ## A278753.P1426756728181193342

`A282415(n)-Δ[A094026(or(1, n))]`
-/

namespace A278753.P1426756728181193342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - (f1 (n + 1) - f1 n)

end

end A278753.P1426756728181193342

namespace A278753

/-- `A282415(n)-Δ[A094026(or(1, n))]` -/
def P1426756728181193342.Spec : Prop :=
  ∀ n, P1426756728181193342.a n = A278753 n

end A278753

/-! ## A278753.P13474771025553423501

`A282415(n)-Δ[or(1, A285612(n))]`
-/

namespace A278753.P13474771025553423501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A285612 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - (f1 (n + 1) - f1 n)

end

end A278753.P13474771025553423501

namespace A278753

/-- `A282415(n)-Δ[or(1, A285612(n))]` -/
def P13474771025553423501.Spec : Prop :=
  ∀ n, P13474771025553423501.a n = A278753 n

end A278753

/-! ## A278753.P14221707492432165632

`A282415(n)-Δ[A287468(n-and(1, n))]`
-/

namespace A278753.P14221707492432165632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (n - Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - (f1 (n + 1) - f1 n)

end

end A278753.P14221707492432165632

namespace A278753

/-- `A282415(n)-Δ[A287468(n-and(1, n))]` -/
def P14221707492432165632.Spec : Prop :=
  ∀ n, P14221707492432165632.a n = A278753 n

end A278753

/-! ## A278753.P10591540415365618920

`A287468(A109043(n))-A287468(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A278753

/-- `A287468(A109043(n))-A287468(n+1)` -/
def P10591540415365618920.Spec : Prop :=
  ∀ n, P10591540415365618920.a n = A278753 n

theorem P10591540415365618920.correct : P10591540415365618920.Spec := by
  intro n
  simp only [A278753]

end A278753

/-! ## A278753.P4420211400282425378

`A282415(n)-Δ[A027828(A056020(n+1))]`
-/

namespace A278753.P4420211400282425378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 (A056020 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282415 n - (f1 (n + 1) - f1 n)

end

end A278753.P4420211400282425378

namespace A278753

/-- `A282415(n)-Δ[A027828(A056020(n+1))]` -/
def P4420211400282425378.Spec : Prop :=
  ∀ n, P4420211400282425378.a n = A278753 n

end A278753

/-! ## A278753.P15101632237252377027

`gcd(Δ[A285540(n)], A287468(n))`
-/

namespace A278753.P15101632237252377027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285540 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A287468 n)

end

end A278753.P15101632237252377027

namespace A278753

/-- `gcd(Δ[A285540(n)], A287468(n))` -/
def P15101632237252377027.Spec : Prop :=
  ∀ n, (P15101632237252377027.a n : ℤ) = A278753 n

end A278753

/-!
# A278754: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A278754, the canonical program `A278754.P1604936635740070644` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278754 has offset 0).

The definition of A278754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A278754.P1604936635740070644

`floor(A288661(n+1)/10)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A278754

/-- `floor(A288661(n+1)/10)` -/
def P1604936635740070644.Spec : Prop :=
  ∀ n, P1604936635740070644.a n = A278754 n

theorem P1604936635740070644.correct : P1604936635740070644.Spec := by
  intro n
  simp only [A278754]

end A278754

/-! ## A278754.P2778179729020024441

`A285541(n)%A285540(n+1)`
-/

namespace A278754.P2778179729020024441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285541 n) (A285540 (n + 1))

end

end A278754.P2778179729020024441

namespace A278754

/-- `A285541(n)%A285540(n+1)` -/
def P2778179729020024441.Spec : Prop :=
  ∀ n, P2778179729020024441.a n = A278754 n

end A278754

/-! ## A278754.P11375392178809046793

`round(A282415(n)/ratio[A282416(n)])`
-/

namespace A278754.P11375392178809046793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A282415 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))

end

end A278754.P11375392178809046793

namespace A278754

/-- `round(A282415(n)/ratio[A282416(n)])` -/
def P11375392178809046793.Spec : Prop :=
  ∀ n, P11375392178809046793.a n = A278754 n

end A278754

/-! ## A278754.P3009578833469164763

`A285541(A059029(n))%A289404(3*n+4)`
-/

namespace A278754.P3009578833469164763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285541 (A059029 n).toNat) (A289404 (3 * n + 4))

end

end A278754.P3009578833469164763

namespace A278754

/-- `A285541(A059029(n))%A289404(3*n+4)` -/
def P3009578833469164763.Spec : Prop :=
  ∀ n, P3009578833469164763.a n = A278754 n

end A278754

/-! ## A278754.P16435986120063747700

`A007088(A278756(n))`
-/

namespace A278754.P16435986120063747700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278756 n).toNat

end

end A278754.P16435986120063747700

namespace A278754

/-- `A007088(A278756(n))` -/
def P16435986120063747700.Spec : Prop :=
  ∀ n, P16435986120063747700.a n = A278754 n

end A278754

/-!
# A278755: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A278755, the canonical program `A278755.P4889053376093808566` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278755 has offset 0).

The definition of A278755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278755.P4889053376093808566

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=8, a(4)=7, a(5)=48`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278755

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P4889053376093808566.Spec : Prop :=
  ∀ n, P4889053376093808566.a n = A278755 n

theorem P4889053376093808566.correct : P4889053376093808566.Spec := by
  intro n
  simp only [A278755]

end A278755

/-! ## A278755.P6697335017140837857

`A282417(n)-Δ[A052551(n)]`
-/

namespace A278755.P6697335017140837857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 n - (f1 (n + 1) - f1 n)

end

end A278755.P6697335017140837857

namespace A278755

/-- `A282417(n)-Δ[A052551(n)]` -/
def P6697335017140837857.Spec : Prop :=
  ∀ n, P6697335017140837857.a n = A278755 n

end A278755

/-! ## A278755.P14418062426628079460

`xor(A056453(n+2), A280412(n))`
-/

namespace A278755.P14418062426628079460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056453 (n + 2)) (A280412 n)

end

end A278755.P14418062426628079460

namespace A278755

/-- `xor(A056453(n+2), A280412(n))` -/
def P14418062426628079460.Spec : Prop :=
  ∀ n, P14418062426628079460.a n = A278755 n

end A278755

/-! ## A278755.P10556198026417076998

`A282417(n)-Δ[A056453(n+1)]`
-/

namespace A278755.P10556198026417076998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 n - (f1 (n + 1) - f1 n)

end

end A278755.P10556198026417076998

namespace A278755

/-- `A282417(n)-Δ[A056453(n+1)]` -/
def P10556198026417076998.Spec : Prop :=
  ∀ n, P10556198026417076998.a n = A278755 n

end A278755

/-! ## A278755.P16988169361582064660

`xor(A080924(n+1)-1, A075427(n))`
-/

namespace A278755.P16988169361582064660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A080924 (n + 1) - 1) (A075427 n)

end

end A278755.P16988169361582064660

namespace A278755

/-- `xor(A080924(n+1)-1, A075427(n))` -/
def P16988169361582064660.Spec : Prop :=
  ∀ n, P16988169361582064660.a n = A278755 n

end A278755

/-! ## A278755.P774940173471681812

`A052551(n)*A094024(n)-A000035(n)`
-/

namespace A278755.P774940173471681812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n * A094024 n - A000035 n

end

end A278755.P774940173471681812

namespace A278755

/-- `A052551(n)*A094024(n)-A000035(n)` -/
def P774940173471681812.Spec : Prop :=
  ∀ n, P774940173471681812.a n = A278755 n

end A278755

/-! ## A278755.P8167584506721510137

`A052551(n)^A000034(n)-A000035(n)`
-/

namespace A278755.P8167584506721510137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052551 n : ℚ) ^ (A000034 n : ℤ) - (A000035 n : ℚ)

end

end A278755.P8167584506721510137

namespace A278755

/-- `A052551(n)^A000034(n)-A000035(n)` -/
def P8167584506721510137.Spec : Prop :=
  ∀ n, P8167584506721510137.a n = (A278755 n : ℚ)

end A278755

/-! ## A278755.P2810769523171338288

`and(A085903(n+1), A282417(n))`
-/

namespace A278755.P2810769523171338288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085903 (n + 1)) (A282417 n)

end

end A278755.P2810769523171338288

namespace A278755

/-- `and(A085903(n+1), A282417(n))` -/
def P2810769523171338288.Spec : Prop :=
  ∀ n, P2810769523171338288.a n = A278755 n

end A278755

/-! ## A278755.P8970273709350364132

`xor(A208901(n+1), A279872(n))`
-/

namespace A278755.P8970273709350364132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A208901 (n + 1)) (A279872 n)

end

end A278755.P8970273709350364132

namespace A278755

/-- `xor(A208901(n+1), A279872(n))` -/
def P8970273709350364132.Spec : Prop :=
  ∀ n, P8970273709350364132.a n = A278755 n

end A278755

/-! ## A278755.P7434588874953320306

`xor(A122746(n)-1, A282418(n))`
-/

namespace A278755.P7434588874953320306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122746 n - 1) (A282418 n)

end

end A278755.P7434588874953320306

namespace A278755

/-- `xor(A122746(n)-1, A282418(n))` -/
def P7434588874953320306.Spec : Prop :=
  ∀ n, P7434588874953320306.a n = A278755 n

end A278755

/-! ## A278755.P11204952537374131122

`and(A282417(n+2), A282417(n))`
-/

namespace A278755.P11204952537374131122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A282417 (n + 2)) (A282417 n)

end

end A278755.P11204952537374131122

namespace A278755

/-- `and(A282417(n+2), A282417(n))` -/
def P11204952537374131122.Spec : Prop :=
  ∀ n, P11204952537374131122.a n = A278755 n

end A278755

/-! ## A278755.P10823541992048802968

`and(A285542(n), A290234(n+2))`
-/

namespace A278755.P10823541992048802968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285542 n) (A290234 (n + 2))

end

end A278755.P10823541992048802968

namespace A278755

/-- `and(A285542(n), A290234(n+2))` -/
def P10823541992048802968.Spec : Prop :=
  ∀ n, P10823541992048802968.a n = A278755 n

end A278755

/-! ## A278755.P4693123234116627839

`and(a(n-1)²-1, A279880(n+1))` with `a(0)=1`
-/

namespace A278755.P4693123234116627839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.land (a (n - 1) ^ 2 - 1) (A279880 (n + 1))

end

end A278755.P4693123234116627839

namespace A278755

/-- `and(a(n-1)²-1, A279880(n+1))` -/
def P4693123234116627839.Spec : Prop :=
  ∀ n, P4693123234116627839.a n = A278755 n

end A278755

/-! ## A278755.P6481649219027134324

`A282417(2*n)+A103424(n+1)-A282417(n+1)`
-/

namespace A278755.P6481649219027134324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282417 (2 * n) + (A103424 (n + 1) - A282417 (n + 1))

end

end A278755.P6481649219027134324

namespace A278755

/-- `A282417(2*n)+A103424(n+1)-A282417(n+1)` -/
def P6481649219027134324.Spec : Prop :=
  ∀ n, P6481649219027134324.a n = A278755 n

end A278755

/-! ## A278755.P17671158131560536224

`or(A279879(2*n), A279879(n+1))-A279879(n+1)`
-/

namespace A278755.P17671158131560536224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279879 (2 * n)) (A279879 (n + 1)) - A279879 (n + 1)

end

end A278755.P17671158131560536224

namespace A278755

/-- `or(A279879(2*n), A279879(n+1))-A279879(n+1)` -/
def P17671158131560536224.Spec : Prop :=
  ∀ n, P17671158131560536224.a n = A278755 n

end A278755

/-! ## A278755.P4095488263555043900

`A288664(n+1)%(A288664(n)+1)²`
-/

namespace A278755.P4095488263555043900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288664 (n + 1)) ((A288664 n + 1) ^ 2)

end

end A278755.P4095488263555043900

namespace A278755

/-- `A288664(n+1)%(A288664(n)+1)²` -/
def P4095488263555043900.Spec : Prop :=
  ∀ n, P4095488263555043900.a n = A278755 n

end A278755

/-!
# A278756: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 65", based on the 5-celled von Neumann neighborhood.

The programs for A278756, the canonical program `A278756.P12660760106230396608` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278756 has offset 0).

The definition of A278756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278756.P12660760106230396608

`7*a(n-2)-14*a(n-4)+8*a(n-6)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=1, a(4)=28, a(5)=3`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278756

/-- `7*a(n-2)-14*a(n-4)+8*a(n-6)` -/
def P12660760106230396608.Spec : Prop :=
  ∀ n, P12660760106230396608.a n = A278756 n

theorem P12660760106230396608.correct : P12660760106230396608.Spec := by
  intro n
  simp only [A278756]

end A278756

/-! ## A278756.P17871589478664251994

`floor(A288663(n+1)/2)`
-/

namespace A278756.P17871589478664251994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A288663 (n + 1) : ℚ) / 2⌋

end

end A278756.P17871589478664251994

namespace A278756

/-- `floor(A288663(n+1)/2)` -/
def P17871589478664251994.Spec : Prop :=
  ∀ n, P17871589478664251994.a n = A278756 n

end A278756

/-! ## A278756.P17222246344628316079

`A059222(n+1)+2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A278756.P17222246344628316079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A059222 (n + 1) + 2 * a (n - 2)

end

end A278756.P17222246344628316079

namespace A278756

/-- `A059222(n+1)+2*a(n-2)` -/
def P17222246344628316079.Spec : Prop :=
  ∀ n, P17222246344628316079.a n = A278756 n

end A278756

/-! ## A278756.P17096827250568701169

`lcm(A106624(n), A316742(n))`
-/

namespace A278756.P17096827250568701169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106624 n) (A316742 n)

end

end A278756.P17096827250568701169

namespace A278756

/-- `lcm(A106624(n), A316742(n))` -/
def P17096827250568701169.Spec : Prop :=
  ∀ n, (P17096827250568701169.a n : ℤ) = A278756 n

end A278756

/-! ## A278756.P12965938723710271820

`xor(A131572(n), A288664(n))`
-/

namespace A278756.P12965938723710271820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A131572 n) (A288664 n)

end

end A278756.P12965938723710271820

namespace A278756

/-- `xor(A131572(n), A288664(n))` -/
def P12965938723710271820.Spec : Prop :=
  ∀ n, P12965938723710271820.a n = A278756 n

end A278756

/-! ## A278756.P403139445427315015

`floor(A282418(n)/A000034(n))`
-/

namespace A278756.P403139445427315015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282418 n : ℚ) / (A000034 n : ℚ)⌋

end

end A278756.P403139445427315015

namespace A278756

/-- `floor(A282418(n)/A000034(n))` -/
def P403139445427315015.Spec : Prop :=
  ∀ n, P403139445427315015.a n = A278756 n

end A278756

/-! ## A278756.P16012218053202419042

`A282418(n)-Δ[A016116(n)]`
-/

namespace A278756.P16012218053202419042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282418 n - (f1 (n + 1) - f1 n)

end

end A278756.P16012218053202419042

namespace A278756

/-- `A282418(n)-Δ[A016116(n)]` -/
def P16012218053202419042.Spec : Prop :=
  ∀ n, P16012218053202419042.a n = A278756 n

end A278756

/-! ## A278756.P2526123171212345249

`Δ[A075427(n)]*A106624(n)`
-/

namespace A278756.P2526123171212345249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A106624 n

end

end A278756.P2526123171212345249

namespace A278756

/-- `Δ[A075427(n)]*A106624(n)` -/
def P2526123171212345249.Spec : Prop :=
  ∀ n, P2526123171212345249.a n = A278756 n

end A278756

/-! ## A278756.P867653816785272922

`xor(Δ[A274230(n)], A051049(n))`
-/

namespace A278756.P867653816785272922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A051049 n)

end

end A278756.P867653816785272922

namespace A278756

/-- `xor(Δ[A274230(n)], A051049(n))` -/
def P867653816785272922.Spec : Prop :=
  ∀ n, P867653816785272922.a n = A278756 n

end A278756

/-! ## A278756.P9583838893460369017

`A094024(n+1)*A106624(n)`
-/

namespace A278756.P9583838893460369017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (n + 1) * A106624 n

end

end A278756.P9583838893460369017

namespace A278756

/-- `A094024(n+1)*A106624(n)` -/
def P9583838893460369017.Spec : Prop :=
  ∀ n, P9583838893460369017.a n = A278756 n

end A278756

/-! ## A278756.P37532715420297144

`A285543(n)%A285542(n+1)`
-/

namespace A278756.P37532715420297144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285543 n) (A285542 (n + 1))

end

end A278756.P37532715420297144

namespace A278756

/-- `A285543(n)%A285542(n+1)` -/
def P37532715420297144.Spec : Prop :=
  ∀ n, P37532715420297144.a n = A278756 n

end A278756

/-! ## A278756.P1831880968337989518

`xor(A016116(n)-1, A279872(n))`
-/

namespace A278756.P1831880968337989518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A016116 n - 1) (A279872 n)

end

end A278756.P1831880968337989518

namespace A278756

/-- `xor(A016116(n)-1, A279872(n))` -/
def P1831880968337989518.Spec : Prop :=
  ∀ n, P1831880968337989518.a n = A278756 n

end A278756

/-! ## A278756.P7690329864826227323

`(A000225(n)-a(n-1))*A000034(n+1)` with `a(0)=1`
-/

namespace A278756.P7690329864826227323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A000225 n - a (n - 1)) * A000034 (n + 1)

end

end A278756.P7690329864826227323

namespace A278756

/-- `(A000225(n)-a(n-1))*A000034(n+1)` -/
def P7690329864826227323.Spec : Prop :=
  ∀ n, P7690329864826227323.a n = A278756 n

end A278756

/-! ## A278756.P10736040195706397566

`A016116(n)*A094024(n+1)-A000035(n)`
-/

namespace A278756.P10736040195706397566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A094024 (n + 1) - A000035 n

end

end A278756.P10736040195706397566

namespace A278756

/-- `A016116(n)*A094024(n+1)-A000035(n)` -/
def P10736040195706397566.Spec : Prop :=
  ∀ n, P10736040195706397566.a n = A278756 n

end A278756

/-! ## A278756.P9145818603275189972

`A052957(n+1)%A000051(n+1)-A016116(n)`
-/

namespace A278756.P9145818603275189972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052957 (n + 1)) (A000051 (n + 1)) - A016116 n

end

end A278756.P9145818603275189972

namespace A278756

/-- `A052957(n+1)%A000051(n+1)-A016116(n)` -/
def P9145818603275189972.Spec : Prop :=
  ∀ n, P9145818603275189972.a n = A278756 n

end A278756

/-!
# A278757: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A278757, there is no canonical definition to state claims against.
-/

/-! ## A278757.P138114006981493524

`A007088(A278759(n))`
-/

namespace A278757.P138114006981493524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278759 n).toNat

end

end A278757.P138114006981493524

/-! ## A278757.P13135744501538116552

`A007088(A277929(n)+A285778(n)-A285649(n))`
-/

namespace A278757.P13135744501538116552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277929 n + (A285778 n - A285649 n)).toNat

end

end A278757.P13135744501538116552

/-! ## A278757.P14957784819109729971

`A007088(A277929(n)-(A285649(n)-A285778(n)))`
-/

namespace A278757.P14957784819109729971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A277929 n - (A285649 n - A285778 n)).toNat

end

end A278757.P14957784819109729971

/-! ## A278757.P16991231076153876882

`A185544(2*A278759(n))`
-/

namespace A278757.P16991231076153876882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278759 n).toNat

end

end A278757.P16991231076153876882

/-! ## A278757.P826553895187327113

`A185544(2*(A277929(n)+A285778(n)-A285649(n)))`
-/

namespace A278757.P826553895187327113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A277929 n + (A285778 n - A285649 n))).toNat

end

end A278757.P826553895187327113

/-!
# A278758: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A278758, there is no canonical definition to state claims against.
-/

/-! ## A278758.P1505234200897839806

`A007088(A278760(n))`
-/

namespace A278758.P1505234200897839806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278760 n).toNat

end

end A278758.P1505234200897839806

/-! ## A278758.P144353526538947008

`A007088(lcm(A040003(n), A278759(n))/2)`
-/

namespace A278758.P144353526538947008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((Int.lcm (A040003 n) (A278759 n) : ℚ) / 2)).toNat

end

end A278758.P144353526538947008

/-! ## A278758.P15301314379044512197

`A007088(A106624(n)%4*A007873(n+1))`
-/

namespace A278758.P15301314379044512197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A106624 n) 4 * A007873 (n + 1)).toNat

end

end A278758.P15301314379044512197

/-! ## A278758.P1659713243759101170

`A185544(2*A278760(n))`
-/

namespace A278758.P1659713243759101170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278760 n).toNat

end

end A278758.P1659713243759101170

/-! ## A278758.P14557006016611482589

`A185544(lcm(A040003(n), A278759(n)))`
-/

namespace A278758.P14557006016611482589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm (A040003 n) (A278759 n))

end

end A278758.P14557006016611482589

/-!
# A278759: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A278759, the canonical program `A278759.P7935447487712477436` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278759 has offset 0).

The definition of A278759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278759.P7935447487712477436

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=10, a(4)=0, a(5)=63, a(6)=0, a(7)=255`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278759

/-- `5*a(n-2)-4*a(n-4)` -/
def P7935447487712477436.Spec : Prop :=
  ∀ n, P7935447487712477436.a n = A278759 n

theorem P7935447487712477436.correct : P7935447487712477436.Spec := by
  intro n
  simp only [A278759]

end A278759

/-! ## A278759.P16023467151253855787

`A277929(n)+A285778(n)-A285649(n)`
-/

namespace A278759.P16023467151253855787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277929 n + (A285778 n - A285649 n)

end

end A278759.P16023467151253855787

namespace A278759

/-- `A277929(n)+A285778(n)-A285649(n)` -/
def P16023467151253855787.Spec : Prop :=
  ∀ n, P16023467151253855787.a n = A278759 n

end A278759

/-! ## A278759.P17472465182840221597

`A038572(A131034(n)*A278760(n))`
-/

namespace A278759.P17472465182840221597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A131034 n * A278760 n).toNat

end

end A278759.P17472465182840221597

namespace A278759

/-- `A038572(A131034(n)*A278760(n))` -/
def P17472465182840221597.Spec : Prop :=
  ∀ n, P17472465182840221597.a n = A278759 n

end A278759

/-! ## A278759.P7803820696401855161

`A038572(lcm(A131034(n), A278760(n)))`
-/

namespace A278759.P7803820696401855161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (Int.lcm (A131034 n) (A278760 n))

end

end A278759.P7803820696401855161

namespace A278759

/-- `A038572(lcm(A131034(n), A278760(n)))` -/
def P7803820696401855161.Spec : Prop :=
  ∀ n, P7803820696401855161.a n = A278759 n

end A278759

/-!
# A278760: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 73", based on the 5-celled von Neumann neighborhood.

The programs for A278760, the canonical program `A278760.P8570072940549640215` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278760 has offset 0).

The definition of A278760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278760.P8570072940549640215

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=6, a(3)=5, a(4)=0, a(5)=63, a(6)=0, a(7)=255`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278760

/-- `5*a(n-2)-4*a(n-4)` -/
def P8570072940549640215.Spec : Prop :=
  ∀ n, P8570072940549640215.a n = A278760 n

theorem P8570072940549640215.correct : P8570072940549640215.Spec := by
  intro n
  simp only [A278760]

end A278760

/-! ## A278760.P5630498591164021259

`lcm(A040003(n), A278759(n))/2`
-/

namespace A278760.P5630498591164021259
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A040003 n) (A278759 n) : ℚ) / 2

end

end A278760.P5630498591164021259

namespace A278760

/-- `lcm(A040003(n), A278759(n))/2` -/
def P5630498591164021259.Spec : Prop :=
  ∀ n, P5630498591164021259.a n = (A278760 n : ℚ)

end A278760

/-! ## A278760.P15047452890919865025

`A106624(n)%4*A007873(n+1)`
-/

namespace A278760.P15047452890919865025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106624 n) 4 * A007873 (n + 1)

end

end A278760.P15047452890919865025

namespace A278760

/-- `A106624(n)%4*A007873(n+1)` -/
def P15047452890919865025.Spec : Prop :=
  ∀ n, P15047452890919865025.a n = A278760 n

end A278760

/-! ## A278760.P3588075715271406328

`A278758(n)%4*A007873(n+1)`
-/

namespace A278760.P3588075715271406328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278758 n) 4 * A007873 (n + 1)

end

end A278760.P3588075715271406328

namespace A278760

/-- `A278758(n)%4*A007873(n+1)` -/
def P3588075715271406328.Spec : Prop :=
  ∀ n, P3588075715271406328.a n = A278760 n

end A278760

/-! ## A278760.P524395292141985392

`xor(A127648(A006355(n)), A285778(n))`
-/

namespace A278760.P524395292141985392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A127648 (A006355 n).toNat) (A285778 n)

end

end A278760.P524395292141985392

namespace A278760

/-- `xor(A127648(A006355(n)), A285778(n))` -/
def P524395292141985392.Spec : Prop :=
  ∀ n, P524395292141985392.a n = A278760 n

end A278760

/-!
# A278762: Triangular array: row n shows the number of edges in successive levels of a graph of the partitions of n; see Comments.

The programs for A278762, there is no canonical definition to state claims against.
-/

/-! ## A278762.P15020107001925292713

`A278763(A038722(n+1))`
-/

namespace A278762.P15020107001925292713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278763 (A038722 (n + 1)).toNat

end

end A278762.P15020107001925292713

/-! ## A278762.P6845519071303707696

`A278763(A061579(n)+1)`
-/

namespace A278762.P6845519071303707696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278763 (A061579 n + 1).toNat

end

end A278762.P6845519071303707696

/-! ## A278762.P6459086766674390549

`A278763(A093995(n+1)-n)`
-/

namespace A278762.P6459086766674390549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278763 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A278762.P6459086766674390549

/-! ## A278762.P3095326711631078458

`A278763(A002024(n+1)²-n)`
-/

namespace A278762.P3095326711631078458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278763 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A278762.P3095326711631078458

/-! ## A278762.P9081392610652010272

`A278763(A278818(n))`
-/

namespace A278762.P9081392610652010272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278763 (A278818 n).toNat

end

end A278762.P9081392610652010272

/-!
# A278763: Triangular array: row n shows the number of edges in successive levels of a graph of the partitions of n; see Comments.

The programs for A278763, there is no canonical definition to state claims against.
-/

/-! ## A278763.P10642126631267019358

`A278762(∑[2*n]%comp[∑[n]]+1)`
-/

namespace A278763.P10642126631267019358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278762 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1)

end

end A278763.P10642126631267019358

/-! ## A278763.P3985244390584020376

`A278762(A038722(n+1))`
-/

namespace A278763.P3985244390584020376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278762 (A038722 (n + 1)).toNat

end

end A278763.P3985244390584020376

/-! ## A278763.P12502456477174198846

`A278762(A061579(n)+1)`
-/

namespace A278763.P12502456477174198846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278762 (A061579 n + 1).toNat

end

end A278763.P12502456477174198846

/-! ## A278763.P7747508984312726220

`A278762(A093995(n+1)-n)`
-/

namespace A278763.P7747508984312726220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278762 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A278763.P7747508984312726220

/-! ## A278763.P6950177790425291520

`A278762(A002024(n+1)²-n)`
-/

namespace A278763.P6950177790425291520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278762 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A278763.P6950177790425291520

/-!
# A278764: Pisot sequence T(5,13).

The programs for A278764, the canonical program `A278764.P17577922375375800556` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A278764 has offset 0).

The definition of A278764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A278764.P17577922375375800556

`floor(a(n-1)²/a(n-2))` with `a(0)=5, a(1)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A278764

/-- `floor(a(n-1)²/a(n-2))` -/
def P17577922375375800556.Spec : Prop :=
  ∀ n, P17577922375375800556.a n = A278764 n

theorem P17577922375375800556.correct : P17577922375375800556.Spec := by
  intro n
  simp only [A278764]

end A278764

/-! ## A278764.P3862607262426736997

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=5, a(1)=13`
-/

namespace A278764.P3862607262426736997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 13] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A278764.P3862607262426736997

namespace A278764

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P3862607262426736997.Spec : Prop :=
  ∀ n, P3862607262426736997.a n = A278764 n

theorem P3862607262426736997.correct : P3862607262426736997.Spec := by
  intro n
  simp only [A278764, Nat.add_sub_cancel, A278764.P3862607262426736997.a, A278764.P17577922375375800556.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A278764

/-! ## A278764.P17786885385415649262

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=5, a(1)=13`
-/

namespace A278764.P17786885385415649262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 13] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A278764.P17786885385415649262

namespace A278764

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P17786885385415649262.Spec : Prop :=
  ∀ n, P17786885385415649262.a n = A278764 n

end A278764

/-!
# A278767: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(2*k-1)).

The programs for A278767, there is no canonical definition to state claims against.
-/

/-! ## A278767.P2264613833623390468

`A204008(∏[dr(A296136(n+1))])`
-/

namespace A278767.P2264613833623390468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A296136 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204008 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A278767.P2264613833623390468

/-! ## A278767.P10866311180687146692

`or(2*A136499(a(n-1)+1), A229522(n+1))` with `a(0)=1, a(1)=1`
-/

namespace A278767.P10866311180687146692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor (2 * A136499 (a (n - 1) + 1).toNat) (A229522 (n + 1))

end

end A278767.P10866311180687146692

/-!
# A278768: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(3*k-1)/2).

The programs for A278768, there is no canonical definition to state claims against.
-/

/-! ## A278768.P16981253441579729944

`A094374(n)-A001222(A108404(n))`
-/

namespace A278768.P16981253441579729944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - A001222 (A108404 n).toNat

end

end A278768.P16981253441579729944

/-! ## A278768.P13867129462557298806

`A233583(A099754(n))-A089913(n+1)`
-/

namespace A278768.P13867129462557298806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A099754 n).toNat - A089913 (n + 1)

end

end A278768.P13867129462557298806

/-! ## A278768.P16622433745044871081

`A103685(n+1)+A001222(A074017(n+1)+1)`
-/

namespace A278768.P16622433745044871081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103685 (n + 1) + A001222 (A074017 (n + 1) + 1).toNat

end

end A278768.P16622433745044871081

/-!
# A278769: Expansion of Product_{k>=1} 1/(1 - x^k)^(k*(5*k-3)/2).

The programs for A278769, there is no canonical definition to state claims against.
-/

/-! ## A278769.P2031915341543500980

`A279216(n)+A001899(A000312(n))`
-/

namespace A278769.P2031915341543500980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279216 n + A001899 (A000312 n).toNat

end

end A278769.P2031915341543500980

/-! ## A278769.P16066900343203907228

`A343748(A000108(n))+A279216(n)`
-/

namespace A278769.P16066900343203907228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343748 (A000108 n).toNat + A279216 n

end

end A278769.P16066900343203907228

/-!
# A278771: Number of n X n 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278771, there is no canonical definition to state claims against.
-/

/-! ## A278771.P14407969562731603452

`A278778(∑[4*n]+1)`
-/

namespace A278771.P14407969562731603452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A278771.P14407969562731603452

/-! ## A278771.P14580733575831320753

`lcm(2, A278778(A001844(n)))`
-/

namespace A278771.P14580733575831320753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A278778 (A001844 n).toNat)

end

end A278771.P14580733575831320753

/-! ## A278771.P18386124928053387148

`record[A077606(n+1)*A278778(n+1)]`
-/

namespace A278771.P18386124928053387148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A278778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278771.P18386124928053387148

/-! ## A278771.P14712575294575928833

`A278778(A001844(n))+A000045(n-n%12)`
-/

namespace A278771.P14712575294575928833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A001844 n).toNat + A000045 (n - n % 12)

end

end A278771.P14712575294575928833

/-! ## A278771.P7594234785818378777

`A000203(or(n, -1)²)*A278778(A001844(n))`
-/

namespace A278771.P7594234785818378777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Int.lor (n : ℤ) (-1) ^ 2).toNat * A278778 (A001844 n).toNat

end

end A278771.P7594234785818378777

/-!
# A278772: Number of n X 2 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278772, there is no canonical definition to state claims against.
-/

/-! ## A278772.P3119043305814680978

`A278778(∑[n+1]+2)`
-/

namespace A278772.P3119043305814680978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278772.P3119043305814680978

/-! ## A278772.P6000473837021082539

`record[A278778(n+2)/A089759(n)]`
-/

namespace A278772.P6000473837021082539
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278778 (n + 2) : ℚ) / (A089759 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278772.P6000473837021082539

/-! ## A278772.P14174796341230552561

`record[A278778(n+2)/A262809(n)]`
-/

namespace A278772.P14174796341230552561
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278778 (n + 2) : ℚ) / (A262809 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278772.P14174796341230552561

/-! ## A278772.P16190089637251842385

`record[A278778(n+2)/A316674(n)]`
-/

namespace A278772.P16190089637251842385
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278778 (n + 2) : ℚ) / (A316674 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278772.P16190089637251842385

/-! ## A278772.P3804101860887804698

`record[A278778(n+2)/A331315(n)]`
-/

namespace A278772.P3804101860887804698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278778 (n + 2) : ℚ) / (A331315 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278772.P3804101860887804698

/-!
# A278773: Number of nX3 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278773, there is no canonical definition to state claims against.
-/

/-! ## A278773.P10622212636563987792

`A278778(∑[n+2]+4)`
-/

namespace A278773.P10622212636563987792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278773.P10622212636563987792

/-! ## A278773.P13188955404327763070

`A278778(A167614(n+1))+A025439(n)`
-/

namespace A278773.P13188955404327763070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A167614 (n + 1)).toNat + A025439 n

end

end A278773.P13188955404327763070

/-! ## A278773.P14941018640141630932

`A278778(A167614(n+1))+A185245(n)`
-/

namespace A278773.P14941018640141630932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A167614 (n + 1)).toNat + A185245 n

end

end A278773.P14941018640141630932

/-! ## A278773.P13925474355059749044

`A016068(n)*A278778(A167614(n+1))`
-/

namespace A278773.P13925474355059749044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016068 n * A278778 (A167614 (n + 1)).toNat

end

end A278773.P13925474355059749044

/-! ## A278773.P4976747886246804457

`A278778(A167614(n+1))%A017490(n)`
-/

namespace A278773.P4976747886246804457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278778 (A167614 (n + 1)).toNat) (A017490 n)

end

end A278773.P4976747886246804457

/-!
# A278774: Number of nX4 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278774, there is no canonical definition to state claims against.
-/

/-! ## A278774.P13140503460516030505

`A278778(A374004(n+1))`
-/

namespace A278774.P13140503460516030505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A374004 (n + 1)).toNat

end

end A278774.P13140503460516030505

/-! ## A278774.P3314446176796377167

`A278778(A141214(n)+7)`
-/

namespace A278774.P3314446176796377167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A141214 n + 7).toNat

end

end A278774.P3314446176796377167

/-! ## A278774.P11004733359457707812

`A278778(A055999(n)+10)`
-/

namespace A278774.P11004733359457707812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A055999 n + 10).toNat

end

end A278774.P11004733359457707812

/-! ## A278774.P9834004217946887040

`A278778(A167614(n+2)+1)`
-/

namespace A278774.P9834004217946887040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A167614 (n + 2) + 1).toNat

end

end A278774.P9834004217946887040

/-! ## A278774.P17178105258575882555

`A278778(A167499(n+2)-1)`
-/

namespace A278774.P17178105258575882555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A167499 (n + 2) - 1).toNat

end

end A278774.P17178105258575882555

/-!
# A278775: Number of nX5 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278775, there is no canonical definition to state claims against.
-/

/-! ## A278775.P15985667630366651692

`A278778(A374005(n+1))`
-/

namespace A278775.P15985667630366651692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A374005 (n + 1)).toNat

end

end A278775.P15985667630366651692

/-! ## A278775.P8967034918372052393

`A278778(A167499(n+3))`
-/

namespace A278775.P8967034918372052393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A167499 (n + 3)).toNat

end

end A278775.P8967034918372052393

/-! ## A278775.P791102231103074318

`A278778(A155212(n)+13)`
-/

namespace A278775.P791102231103074318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A155212 n + 13).toNat

end

end A278775.P791102231103074318

/-! ## A278775.P13724186296350867026

`A278778(A167614(n+3)+2)`
-/

namespace A278775.P13724186296350867026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A167614 (n + 3) + 2).toNat

end

end A278775.P13724186296350867026

/-! ## A278775.P15478723565257513038

`A278778(A141214(n+1)+8)`
-/

namespace A278775.P15478723565257513038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A141214 (n + 1) + 8).toNat

end

end A278775.P15478723565257513038

/-!
# A278776: Number of nX6 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278776, there is no canonical definition to state claims against.
-/

/-! ## A278776.P2279850451546132552

`A278778(A374007(n+1))`
-/

namespace A278776.P2279850451546132552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A374007 (n + 1)).toNat

end

end A278776.P2279850451546132552

/-! ## A278776.P17142200220271443598

`A278778(eq[7, A131818(n+1)])`
-/

namespace A278776.P17142200220271443598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278776.P17142200220271443598

/-! ## A278776.P13488661017176868839

`A278778(eq[3, A219347(n)])`
-/

namespace A278776.P13488661017176868839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278776.P13488661017176868839

/-! ## A278776.P2158185165734507576

`A278778(eq[5, A193592(n)])`
-/

namespace A278776.P2158185165734507576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278776.P2158185165734507576

/-! ## A278776.P4042478841922786317

`A278778(eq[6, A200370(n+1)])`
-/

namespace A278776.P4042478841922786317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278776.P4042478841922786317

/-!
# A278777: Number of nX7 0..1 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278777, there is no canonical definition to state claims against.
-/

/-! ## A278777.P13022311458267228594

`A278778(A374008(n+1))`
-/

namespace A278777.P13022311458267228594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A374008 (n + 1)).toNat

end

end A278777.P13022311458267228594

/-! ## A278777.P16314736406558829118

`A278778(eq[8, A131818(n+1)])`
-/

namespace A278777.P16314736406558829118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278777.P16314736406558829118

/-! ## A278777.P11543159689101885882

`A278778(A055999(n+4))`
-/

namespace A278777.P11543159689101885882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (A055999 (n + 4)).toNat

end

end A278777.P11543159689101885882

/-! ## A278777.P8550016115095659161

`A278778(eq[4, A219347(n)])`
-/

namespace A278777.P8550016115095659161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278777.P8550016115095659161

/-! ## A278777.P7651572673926314237

`A278778(eq[6, A193592(n)])`
-/

namespace A278777.P7651572673926314237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278778 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278777.P7651572673926314237

/-!
# A278779: Numbers m such that A000041(m) is of the form 2^2 * k for odd k.

The programs for A278779, there is no canonical definition to state claims against.
-/

/-! ## A278779.P15581223133827757048

`eq[2, A278478(n)]`
-/

namespace A278779.P15581223133827757048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278779.P15581223133827757048

/-! ## A278779.P14480898153951075067

`eq[4, A069935(n)]`
-/

namespace A278779.P14480898153951075067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278779.P14480898153951075067

/-! ## A278779.P770681394363512751

`eq[4, A132969(n)%8]`
-/

namespace A278779.P770681394363512751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132969 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278779.P770681394363512751

/-! ## A278779.P3921995761544418065

`lt[(2-A278478(n))², A057427(n)]`
-/

namespace A278779.P3921995761544418065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A278478 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A278779.P3921995761544418065

/-! ## A278779.P12379849616616338680

`eq[2, val(A000041(n), 2)]`
-/

namespace A278779.P12379849616616338680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278779.P12379849616616338680

/-! ## A278779.P1860047980107962765

`eq[3, A000065(n)%8]`
-/

namespace A278779.P1860047980107962765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278779.P1860047980107962765

/-! ## A278779.P5139583062443557722

`eq[7, xor(A000041(n), A000065(n))]`
-/

namespace A278779.P5139583062443557722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 n) (A000065 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278779.P5139583062443557722

/-! ## A278779.P1878089106685055391

`lt[A352889(val(A000041(n), 2)+2), 2]`
-/

namespace A278779.P1878089106685055391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352889 (SequenceMachineLib.valuation (A000041 n).toNat 2 + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A278779.P1878089106685055391

/-! ## A278779.P13276298394224577018

`eq[2, val(A299473(n), 2)]`
-/

namespace A278779.P13276298394224577018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299473 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278779.P13276298394224577018

/-! ## A278779.P8173716934164230074

`eq[4, A183011(n)%8]`
-/

namespace A278779.P8173716934164230074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278779.P8173716934164230074

/-! ## A278779.P3062187267195150373

`eq[2, val(A035363(2*n), 2)]`
-/

namespace A278779.P3062187267195150373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035363 (2 * n)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278779.P3062187267195150373

/-!
# A278780: Numbers m such that A000041(m) is of the form 2^3 * k for odd k.

The programs for A278780, there is no canonical definition to state claims against.
-/

/-! ## A278780.P8875466548622127727

`eq[3, A278478(n)]`
-/

namespace A278780.P8875466548622127727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278780.P8875466548622127727

/-! ## A278780.P5541715610651576785

`eq[8, A069935(n)]`
-/

namespace A278780.P5541715610651576785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278780.P5541715610651576785

/-! ## A278780.P16864263025827306385

`eq[3, val(A000041(n), 2)]`
-/

namespace A278780.P16864263025827306385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278780.P16864263025827306385

/-! ## A278780.P977853485829737816

`eq[7, A000065(n)%16]`
-/

namespace A278780.P977853485829737816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000065 n) 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278780.P977853485829737816

/-! ## A278780.P12630610418647854068

`eq[8, A299473(n)%16]`
-/

namespace A278780.P12630610418647854068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299473 n) 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278780.P12630610418647854068

/-! ## A278780.P10879236943225331262

`eq[8, A183011(n)%16]`
-/

namespace A278780.P10879236943225331262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183011 n) 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278780.P10879236943225331262

/-! ## A278780.P8088948582302120340

`eq[5, val(A035363(2*n), 2)+2]`
-/

namespace A278780.P8088948582302120340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A035363 (2 * n)).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278780.P8088948582302120340

/-!
# A278781: Numbers m such that A000041(m) is of the form 2^4 * k for odd k.

The programs for A278781, there is no canonical definition to state claims against.
-/

/-! ## A278781.P7080985572579452687

`eq[4, A278478(n)]`
-/

namespace A278781.P7080985572579452687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278781.P7080985572579452687

/-! ## A278781.P4250231512074902658

`eq[A040056(n), A069935(n)]`
-/

namespace A278781.P4250231512074902658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069935 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278781.P4250231512074902658

/-! ## A278781.P12342457377947881522

`eq[4, val(A000041(n), 2)]`
-/

namespace A278781.P12342457377947881522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000041 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278781.P12342457377947881522

/-! ## A278781.P10079785612642519332

`eq[4, val(A000065(n)+1, 2)]`
-/

namespace A278781.P10079785612642519332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000065 n + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278781.P10079785612642519332

/-! ## A278781.P16795194361151648286

`eq[4, val(A299473(n), 2)]`
-/

namespace A278781.P16795194361151648286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A299473 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278781.P16795194361151648286

/-! ## A278781.P13064766313582369240

`eq[5, val(A139582(n), 2)]`
-/

namespace A278781.P13064766313582369240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139582 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A278781.P13064766313582369240

/-!
# A278782: Numbers m such that A000041(m) is of the form 2^5 * k for odd k.

The programs for A278782, there is no canonical definition to state claims against.
-/

/-! ## A278782.P348054384291770906

`eq[5, A278478(n)]`
-/

namespace A278782.P348054384291770906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278782.P348054384291770906

/-!
# A278783: Numbers m such that A000041(m) is of the form 2^6 * k for odd k.

The programs for A278783, there is no canonical definition to state claims against.
-/

/-! ## A278783.P13033528167104378155

`eq[6, A278478(n)]`
-/

namespace A278783.P13033528167104378155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278783.P13033528167104378155

/-!
# A278784: Numbers m such that A000041(m) is of the form 2^7 * k for odd k.

The programs for A278784, there is no canonical definition to state claims against.
-/

/-! ## A278784.P5092624205623742166

`eq[7, A278478(n)]`
-/

namespace A278784.P5092624205623742166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278478 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A278784.P5092624205623742166

/-!
# A278785: Primes p such that prime(p-2) + prime(p-1) + prime(p+1) is prime.

The programs for A278785, there is no canonical definition to state claims against.
-/

/-! ## A278785.P17818476037253998815

`p?[A028767(n+1)+A016969(A262694(n))]`
-/

namespace A278785.P17818476037253998815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028767 (n + 1) + A016969 (A262694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278785.P17818476037253998815

/-! ## A278785.P10942864316006222780

`filter[A322477(n+2), A215581(#)]`
-/

namespace A278785.P10942864316006222780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322477 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215581 (f1 j).toNat = 1) n)

end

end A278785.P10942864316006222780

/-! ## A278785.P7174559271785680696

`filter[A204910(2*n+1), A215581(#)]`
-/

namespace A278785.P7174559271785680696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204910 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215581 (f1 j).toNat = 1) n)

end

end A278785.P7174559271785680696

/-! ## A278785.P1451769586439333790

`A228228(n+2)+A104117(A200750(3*(n+1)))`
-/

namespace A278785.P1451769586439333790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228228 (n + 2) + A104117 (A200750 (3 * (n + 1))).toNat

end

end A278785.P1451769586439333790

/-! ## A278785.P15328837636716274252

`A000040(lt[5, p?[A078599(n+1)]])`
-/

namespace A278785.P15328837636716274252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A278785.P15328837636716274252

/-!
# A278786: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A278786, there is no canonical definition to state claims against.
-/

/-! ## A278786.P12395173850838100374

`A007088(A278788(n))`
-/

namespace A278786.P12395173850838100374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278788 n).toNat

end

end A278786.P12395173850838100374

/-! ## A278786.P14376506405214138547

`A185544(2*A278788(n))`
-/

namespace A278786.P14376506405214138547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278788 n).toNat

end

end A278786.P14376506405214138547

/-! ## A278786.P14093297727601909961

`A279826(A004892(n+1))`
-/

namespace A278786.P14093297727601909961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279826 (A004892 (n + 1)).toNat

end

end A278786.P14093297727601909961

/-! ## A278786.P1010215419252710613

`A279826(A004903(n+1))`
-/

namespace A278786.P1010215419252710613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279826 (A004903 (n + 1)).toNat

end

end A278786.P1010215419252710613

/-! ## A278786.P11726068303518555868

`A279826(A004914(n+1))`
-/

namespace A278786.P11726068303518555868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279826 (A004914 (n + 1)).toNat

end

end A278786.P11726068303518555868

/-!
# A278787: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A278787, there is no canonical definition to state claims against.
-/

/-! ## A278787.P15913100923947160372

`A007088(A278789(n))`
-/

namespace A278787.P15913100923947160372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A278789 n).toNat

end

end A278787.P15913100923947160372

/-! ## A278787.P1910254497243440703

`A305989(A278788(n)/A055642(n))`
-/

namespace A278787.P1910254497243440703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278788 n : ℚ) / (A055642 n : ℚ))).toNat

end

end A278787.P1910254497243440703

/-! ## A278787.P3951225759482213126

`A305989(A278788(n)/A237442(n+1))`
-/

namespace A278787.P3951225759482213126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A278788 n : ℚ) / (A237442 (n + 1) : ℚ))).toNat

end

end A278787.P3951225759482213126

/-! ## A278787.P8975913238498989111

`A305989(A278788(n))`
-/

namespace A278787.P8975913238498989111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A278788 n).toNat

end

end A278787.P8975913238498989111

/-! ## A278787.P16283255362740318450

`A185544(2*A278789(n))`
-/

namespace A278787.P16283255362740318450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A278789 n).toNat

end

end A278787.P16283255362740318450

/-!
# A278788: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A278788, there is no canonical definition to state claims against.
-/

/-! ## A278788.P4389716094616728972

`∏{e}[5^n, A279828(#)]`
-/

namespace A278788.P4389716094616728972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A279828 (Nat.factorization (f1 n) p)

end

end A278788.P4389716094616728972

/-! ## A278788.P15630926658795154473

`record[A304328(A279828(n))]`
-/

namespace A278788.P15630926658795154473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (A279828 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278788.P15630926658795154473

/-! ## A278788.P13290742941850877630

`A279828(A004892(n+1))`
-/

namespace A278788.P13290742941850877630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279828 (A004892 (n + 1)).toNat

end

end A278788.P13290742941850877630

/-! ## A278788.P6791093375738884009

`A279828(A004903(n+1))`
-/

namespace A278788.P6791093375738884009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279828 (A004903 (n + 1)).toNat

end

end A278788.P6791093375738884009

/-! ## A278788.P12279161558693008203

`A279828(A004914(n+1))`
-/

namespace A278788.P12279161558693008203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279828 (A004914 (n + 1)).toNat

end

end A278788.P12279161558693008203

/-!
# A278789: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 78", based on the 5-celled von Neumann neighborhood.

The programs for A278789, there is no canonical definition to state claims against.
-/

/-! ## A278789.P10984219229625679316

`A325401(A278788(n)/A193517(n+1))`
-/

namespace A278789.P10984219229625679316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278788 n : ℚ) / (A193517 (n + 1) : ℚ))).toNat

end

end A278789.P10984219229625679316

/-! ## A278789.P574088146436956757

`A325401(A278788(n)/A237442(n+1))`
-/

namespace A278789.P574088146436956757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A278788 n : ℚ) / (A237442 (n + 1) : ℚ))).toNat

end

end A278789.P574088146436956757

/-! ## A278789.P14638619595031446674

`A325401(A278788(n))`
-/

namespace A278789.P14638619595031446674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A278788 n).toNat

end

end A278789.P14638619595031446674

/-! ## A278789.P4546542379515984469

`A281589(lcm(2, A278788(n)))`
-/

namespace A278789.P4546542379515984469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (Int.lcm 2 (A278788 n))

end

end A278789.P4546542379515984469

/-! ## A278789.P7520176319979941949

`A281589(A278788(char[1]+n))`
-/

namespace A278789.P7520176319979941949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (A278788 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A278789.P7520176319979941949

/-!
# A278793: Number of nX2 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278793, there is no canonical definition to state claims against.
-/

/-! ## A278793.P14101441969308011757

`A278798(∑[n+1]+2)`
-/

namespace A278793.P14101441969308011757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A278793.P14101441969308011757

/-! ## A278793.P14849494595753033401

`record[A278798(∑[A152271(n)])]`
-/

namespace A278793.P14849494595753033401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278793.P14849494595753033401

/-! ## A278793.P14898407334988352591

`record[A278798(A117142(n+1))]`
-/

namespace A278793.P14898407334988352591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A117142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278793.P14898407334988352591

/-! ## A278793.P12184331123108730429

`record[A278798(A133263(∑{e}[n, #]))]`
-/

namespace A278793.P12184331123108730429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278793.P12184331123108730429

/-! ## A278793.P4444542539324658929

`record[A097806(n)*A278798(n+1)]`
-/

namespace A278793.P4444542539324658929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n * A278798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A278793.P4444542539324658929

/-!
# A278794: Number of nX3 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278794, there is no canonical definition to state claims against.
-/

/-! ## A278794.P1534980668795647838

`A278798(∑[n+2]+4)`
-/

namespace A278794.P1534980668795647838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A278794.P1534980668795647838

/-! ## A278794.P10196917920432645050

`A278798(A167614(n+1))+A025469(n)`
-/

namespace A278794.P10196917920432645050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A167614 (n + 1)).toNat + A025469 n

end

end A278794.P10196917920432645050

/-! ## A278794.P10063906753176034508

`A278798(A167614(n+1))+A235044(n)`
-/

namespace A278794.P10063906753176034508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A167614 (n + 1)).toNat + A235044 n

end

end A278794.P10063906753176034508

/-! ## A278794.P16756260005837591260

`A014598(n)*A278798(A167614(n+1))`
-/

namespace A278794.P16756260005837591260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014598 n * A278798 (A167614 (n + 1)).toNat

end

end A278794.P16756260005837591260

/-! ## A278794.P15203691088298814605

`A063435(n)*A278798(A167614(n+1))`
-/

namespace A278794.P15203691088298814605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A278798 (A167614 (n + 1)).toNat

end

end A278794.P15203691088298814605

/-!
# A278795: Number of n X 4 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278795, there is no canonical definition to state claims against.
-/

/-! ## A278795.P1068408338117488428

`A278798(A141214(n)+7)`
-/

namespace A278795.P1068408338117488428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A141214 n + 7).toNat

end

end A278795.P1068408338117488428

/-! ## A278795.P10711648347865381793

`A278798(A052905(n)+9)`
-/

namespace A278795.P10711648347865381793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A052905 n + 9).toNat

end

end A278795.P10711648347865381793

/-! ## A278795.P14500066473156167766

`A278798(A055999(n)+10)`
-/

namespace A278795.P14500066473156167766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A055999 n + 10).toNat

end

end A278795.P14500066473156167766

/-! ## A278795.P747422057149074737

`A278798(A167614(n+2)+1)`
-/

namespace A278795.P747422057149074737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A167614 (n + 2) + 1).toNat

end

end A278795.P747422057149074737

/-! ## A278795.P17960507835509314658

`A278798(A155212(n)+5)`
-/

namespace A278795.P17960507835509314658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A155212 n + 5).toNat

end

end A278795.P17960507835509314658

/-!
# A278796: Number of nX5 0..3 arrays with rows in nondecreasing lexicographic order and columns in nonincreasing lexicographic order, but with exactly two mistakes.

The programs for A278796, there is no canonical definition to state claims against.
-/

/-! ## A278796.P17075905701867654585

`A278798(A374005(n+1))`
-/

namespace A278796.P17075905701867654585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A374005 (n + 1)).toNat

end

end A278796.P17075905701867654585

/-! ## A278796.P8282494631643630469

`A278798(A056000(n)+15)`
-/

namespace A278796.P8282494631643630469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A056000 n + 15).toNat

end

end A278796.P8282494631643630469

/-! ## A278796.P6189151893871327938

`A278798(A051936(n+4)+14)`
-/

namespace A278796.P6189151893871327938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (A051936 (n + 4) + 14).toNat

end

end A278796.P6189151893871327938

/-! ## A278796.P13939384477028910508

`A278798(eq[6, A131818(n+1)])`
-/

namespace A278796.P13939384477028910508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A278796.P13939384477028910508

/-! ## A278796.P10691702313154128110

`A278798(Δ[A264443(n)])`
-/

namespace A278796.P10691702313154128110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (f1 (n + 1) - f1 n).toNat

end

end A278796.P10691702313154128110

/-!
# A278797: 

The programs for A278797, there is no canonical definition to state claims against.
-/

/-! ## A278797.P8738705281980050367

`A278798(∑[n+5]+16)`
-/

namespace A278797.P8738705281980050367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278798 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A278797.P8738705281980050367

/-!
# A278799: Prime numbers that can be written as concatenation of two nonprimes in decimal representation.

The programs for A278799, there is no canonical definition to state claims against.
-/

/-! ## A278799.P1753703081991945918

`p?[A066738(n+1)-A185238(n)]`
-/

namespace A278799.P1753703081991945918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066738 (n + 1) - A185238 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A278799.P1753703081991945918

