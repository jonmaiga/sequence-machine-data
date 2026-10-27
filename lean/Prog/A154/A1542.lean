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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B007.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A154202: Decimal expansion of log_9 (12).

The programs for A154202, there is no canonical definition to state claims against.
-/

/-! ## A154202.P3467004253133795678

`A153459(n-char[1])`
-/

namespace A154202.P3467004253133795678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153459 (n - (if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A154202.P3467004253133795678

/-! ## A154202.P5566051571605646767

`gcd(log2(A141044(n)), A152549(n))`
-/

namespace A154202.P5566051571605646767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (Real.logb 2 (A141044 n : ℝ))) (A152549 (n + 1))

end

end A154202.P5566051571605646767

/-! ## A154202.P10435753575143201260

`A153459(n)/A265953(C(2, n))`
-/

namespace A154202.P10435753575143201260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153459 (n + 1) : ℚ) / (A265953 (Nat.choose 2 n) : ℚ)

end

end A154202.P10435753575143201260

/-! ## A154202.P8942214602960168842

`gcd(A008683(A000079(n)), A153459(n))`
-/

namespace A154202.P8942214602960168842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000079 n).toNat) (A153459 (n + 1))

end

end A154202.P8942214602960168842

/-!
# A154216: Decimal expansion of log_24(12).

The programs for A154216, there is no canonical definition to state claims against.
-/

/-! ## A154216.P16697339404729852167

`9-A152901(n)`
-/

namespace A154216.P16697339404729852167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A152901 n

end

end A154216.P16697339404729852167

/-!
# A154218: Modified Fibonomial matrix.

The programs for A154218, there is no canonical definition to state claims against.
-/

/-! ## A154218.P4511894798548204240

`A068509(A129276(n))`
-/

namespace A154218.P4511894798548204240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068509 (A129276 n).toNat

end

end A154218.P4511894798548204240

/-! ## A154218.P18268355414535215068

`A156251(A174669(n))`
-/

namespace A154218.P18268355414535215068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156251 (A174669 n).toNat

end

end A154218.P18268355414535215068

/-! ## A154218.P2744011853885577354

`A220836(A180959(n))`
-/

namespace A154218.P2744011853885577354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220836 (A180959 n).toNat

end

end A154218.P2744011853885577354

/-! ## A154218.P18130159228786554634

`A262956(A174918(n))`
-/

namespace A154218.P18130159228786554634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (A174918 n).toNat

end

end A154218.P18130159228786554634

/-! ## A154218.P17632089614499228137

`A316398(A156950(n))`
-/

namespace A154218.P17632089614499228137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316398 (A156950 n).toNat

end

end A154218.P17632089614499228137

/-!
# A154219: Row sums of modified Fibonomial triangle A154218.

The programs for A154219, there is no canonical definition to state claims against.
-/

/-! ## A154219.P2981969522101371534

`A095173(A011782(n))+A004396(n)`
-/

namespace A154219.P2981969522101371534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095173 (A011782 n).toNat + A004396 n

end

end A154219.P2981969522101371534

/-! ## A154219.P17351575151149255873

`A061017(A052361(n+1)+A000124(n))`
-/

namespace A154219.P17351575151149255873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A052361 (n + 1) + A000124 n).toNat

end

end A154219.P17351575151149255873

/-! ## A154219.P243037557217539741

`A354325(n)+A172471(A052809(n+1))`
-/

namespace A154219.P243037557217539741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354325 n + A172471 (A052809 (n + 1)).toNat

end

end A154219.P243037557217539741

/-!
# A154220: a(n) is the integer remainder of A001163(n) divided by 10.

The programs for A154220, there is no canonical definition to state claims against.
-/

/-! ## A154220.P10502130118643725871

`A001163(n)%10`
-/

namespace A154220.P10502130118643725871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001163 n) 10

end

end A154220.P10502130118643725871

/-! ## A154220.P10051372811723400806

`A264148(2*n)%10`
-/

namespace A154220.P10051372811723400806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264148 (2 * n)) 10

end

end A154220.P10051372811723400806

/-!
# A154221: A simple Pascal-like triangle.

The programs for A154221, the canonical program `A154221.P10253953106395039828` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154221 has offset 0).

The definition of A154221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154221.P10253953106395039828

`A034008(A318274(n))+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154221

/-- `A034008(A318274(n))+1` -/
def P10253953106395039828.Spec : Prop :=
  ∀ n, P10253953106395039828.a n = A154221 n

theorem P10253953106395039828.correct : P10253953106395039828.Spec := by
  intro n
  simp only [A154221]

end A154221

/-! ## A154221.P1938578773689514736

`A094373(A318274(n)-1)`
-/

namespace A154221.P1938578773689514736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (A318274 n - 1).toNat

end

end A154221.P1938578773689514736

namespace A154221

/-- `A094373(A318274(n)-1)` -/
def P1938578773689514736.Spec : Prop :=
  ∀ n, P1938578773689514736.a n = A154221 n

end A154221

/-! ## A154221.P2958690783186642053

`A094373(A131923(n)%A132735(n))`
-/

namespace A154221.P2958690783186642053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (Int.tmod (A131923 n) (A132735 n)).toNat

end

end A154221.P2958690783186642053

namespace A154221

/-- `A094373(A131923(n)%A132735(n))` -/
def P2958690783186642053.Spec : Prop :=
  ∀ n, P2958690783186642053.a n = A154221 n

end A154221

/-! ## A154221.P12166022376671920372

`record[A093178(n)]-n-(n-A034008(A318274(n)))`
-/

namespace A154221.P12166022376671920372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ) - ((n : ℤ) - A034008 (A318274 n).toNat)

end

end A154221.P12166022376671920372

namespace A154221

/-- `record[A093178(n)]-n-(n-A034008(A318274(n)))` -/
def P12166022376671920372.Spec : Prop :=
  ∀ n, P12166022376671920372.a n = A154221 n

end A154221

/-! ## A154221.P7255148583821131717

`A166444(A003056(n)%A154986(n))+1`
-/

namespace A154221.P7255148583821131717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (Int.tmod (A003056 n) (A154986 n)).toNat + 1

end

end A154221.P7255148583821131717

namespace A154221

/-- `A166444(A003056(n)%A154986(n))+1` -/
def P7255148583821131717.Spec : Prop :=
  ∀ n, P7255148583821131717.a n = A154221 n

end A154221

/-! ## A154221.P17119102938928175492

`A328399(A113402(n+1)%A174690(n))`
-/

namespace A154221.P17119102938928175492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (Int.tmod (A113402 (n + 1)) (A174690 n)).toNat

end

end A154221.P17119102938928175492

namespace A154221

/-- `A328399(A113402(n+1)%A174690(n))` -/
def P17119102938928175492.Spec : Prop :=
  ∀ n, P17119102938928175492.a n = A154221 n

end A154221

/-! ## A154221.P7829215578823336853

`A008619(A257609(n)%A176200(n))`
-/

namespace A154221.P7829215578823336853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A257609 n) (A176200 n)).toNat

end

end A154221.P7829215578823336853

namespace A154221

/-- `A008619(A257609(n)%A176200(n))` -/
def P7829215578823336853.Spec : Prop :=
  ∀ n, P7829215578823336853.a n = A154221 n

end A154221

/-! ## A154221.P3917105282437961629

`A008619(and(-A004247(n), A113402(n+1)))`
-/

namespace A154221.P3917105282437961629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.land (-A004247 n) (A113402 (n + 1))).toNat

end

end A154221.P3917105282437961629

namespace A154221

/-- `A008619(and(-A004247(n), A113402(n+1)))` -/
def P3917105282437961629.Spec : Prop :=
  ∀ n, P3917105282437961629.a n = A154221 n

end A154221

/-! ## A154221.P638995766503303579

`A008619(A011782(A003056(n%A111910(n))))`
-/

namespace A154221.P638995766503303579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A011782 (A003056 (Int.tmod (n : ℤ) (A111910 n)).toNat).toNat).toNat

end

end A154221.P638995766503303579

namespace A154221

/-- `A008619(A011782(A003056(n%A111910(n))))` -/
def P638995766503303579.Spec : Prop :=
  ∀ n, P638995766503303579.a n = A154221 n

end A154221

/-! ## A154221.P1377723685035256191

`gcd(A008619(A113402(n+1)), A103452(n))`
-/

namespace A154221.P1377723685035256191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A113402 (n + 1)).toNat) (A103452 n)

end

end A154221.P1377723685035256191

namespace A154221

/-- `gcd(A008619(A113402(n+1)), A103452(n))` -/
def P1377723685035256191.Spec : Prop :=
  ∀ n, (P1377723685035256191.a n : ℤ) = A154221 n

end A154221

/-! ## A154221.P17116882996985378154

`A110654(A113402(n+1))%A166960(n+1)+1`
-/

namespace A154221.P17116882996985378154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A113402 (n + 1)).toNat) (A166960 (n + 1)) + 1

end

end A154221.P17116882996985378154

namespace A154221

/-- `A110654(A113402(n+1))%A166960(n+1)+1` -/
def P17116882996985378154.Spec : Prop :=
  ∀ n, P17116882996985378154.a n = A154221 n

end A154221

/-! ## A154221.P1517365487674183498

`A008619(A008619(A137688(n)%A060187(n+1)))`
-/

namespace A154221.P1517365487674183498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (Int.tmod (A137688 n) (A060187 (n + 1))).toNat).toNat

end

end A154221.P1517365487674183498

namespace A154221

/-- `A008619(A008619(A137688(n)%A060187(n+1)))` -/
def P1517365487674183498.Spec : Prop :=
  ∀ n, P1517365487674183498.a n = A154221 n

end A154221

/-! ## A154221.P3617363081653245241

`A053644(A025480(A173787(n)))+1`
-/

namespace A154221.P3617363081653245241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (A025480 (A173787 n).toNat).toNat + 1

end

end A154221.P3617363081653245241

namespace A154221

/-- `A053644(A025480(A173787(n)))+1` -/
def P3617363081653245241.Spec : Prop :=
  ∀ n, P3617363081653245241.a n = A154221 n

end A154221

/-! ## A154221.P3781133850380353978

`A008619(A008619(A137688(n))%A022167(n))`
-/

namespace A154221.P3781133850380353978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A008619 (A137688 n).toNat) (A022167 n)).toNat

end

end A154221.P3781133850380353978

namespace A154221

/-- `A008619(A008619(A137688(n))%A022167(n))` -/
def P3781133850380353978.Spec : Prop :=
  ∀ n, P3781133850380353978.a n = A154221 n

end A154221

/-! ## A154221.P14098008695427135508

`A029579(A003557(A137688(n))%A154980(n))`
-/

namespace A154221.P14098008695427135508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (Int.tmod (A003557 (A137688 n).toNat) (A154980 n)).toNat

end

end A154221.P14098008695427135508

namespace A154221

/-- `A029579(A003557(A137688(n))%A154980(n))` -/
def P14098008695427135508.Spec : Prop :=
  ∀ n, P14098008695427135508.a n = A154221 n

end A154221

/-!
# A154222: Row sums of number triangle A154221.

The programs for A154222, the canonical program `A154222.P3934506953959610754` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154222 has offset 0).

The definition of A154222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154222.P3934506953959610754

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154222

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P3934506953959610754.Spec : Prop :=
  ∀ n, P3934506953959610754.a n = A154222 n

theorem P3934506953959610754.correct : P3934506953959610754.Spec := by
  intro n
  simp only [A154222]

end A154222

/-! ## A154222.P14028856309710077448

`∑[floor(n*2^(n-3))]+1+n`
-/

namespace A154222.P14028856309710077448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A154222.P14028856309710077448

namespace A154222

/-- `∑[floor(n*2^(n-3))]+1+n` -/
def P14028856309710077448.Spec : Prop :=
  ∀ n, P14028856309710077448.a n = A154222 n

end A154222

/-! ## A154222.P1834512120653521995

`∑[A049610(n)+1]`
-/

namespace A154222.P1834512120653521995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154222.P1834512120653521995

namespace A154222

/-- `∑[A049610(n)+1]` -/
def P1834512120653521995.Spec : Prop :=
  ∀ n, P1834512120653521995.a n = A154222 n

end A154222

/-! ## A154222.P15831041911094369068

`∑[A336102(A004273(n))+1]`
-/

namespace A154222.P15831041911094369068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 (A004273 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154222.P15831041911094369068

namespace A154222

/-- `∑[A336102(A004273(n))+1]` -/
def P15831041911094369068.Spec : Prop :=
  ∀ n, P15831041911094369068.a n = A154222 n

end A154222

/-! ## A154222.P16650957975413829291

`abs(A000295(n)-A045623(n))`
-/

namespace A154222.P16650957975413829291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000295 n - A045623 n|

end

end A154222.P16650957975413829291

namespace A154222

/-- `abs(A000295(n)-A045623(n))` -/
def P16650957975413829291.Spec : Prop :=
  ∀ n, P16650957975413829291.a n = A154222 n

end A154222

/-! ## A154222.P15191856641541089250

`∑[A111297(n)-A000225(n)]`
-/

namespace A154222.P15191856641541089250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154222.P15191856641541089250

namespace A154222

/-- `∑[A111297(n)-A000225(n)]` -/
def P15191856641541089250.Spec : Prop :=
  ∀ n, P15191856641541089250.a n = A154222 n

end A154222

/-! ## A154222.P11570046657366340232

`∑[A045891(n)+1-A011782(n)]`
-/

namespace A154222.P11570046657366340232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n + (1 - A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154222.P11570046657366340232

namespace A154222

/-- `∑[A045891(n)+1-A011782(n)]` -/
def P11570046657366340232.Spec : Prop :=
  ∀ n, P11570046657366340232.a n = A154222 n

end A154222

/-! ## A154222.P16048645318036513944

`∑[A045623(n)+1-A109975(n)]`
-/

namespace A154222.P16048645318036513944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + (1 - A109975 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154222.P16048645318036513944

namespace A154222

/-- `∑[A045623(n)+1-A109975(n)]` -/
def P16048645318036513944.Spec : Prop :=
  ∀ n, P16048645318036513944.a n = A154222 n

end A154222

/-! ## A154222.P15086362008932550253

`gcd(A139756(n)+1+n, A000038(n))`
-/

namespace A154222.P15086362008932550253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A139756 n + 1 + (n : ℤ)) (A000038 n)

end

end A154222.P15086362008932550253

namespace A154222

/-- `gcd(A139756(n)+1+n, A000038(n))` -/
def P15086362008932550253.Spec : Prop :=
  ∀ n, (P15086362008932550253.a n : ℤ) = A154222 n

end A154222

/-! ## A154222.P4248129909695508885

`lcm(A139756(n)+1+n, A033999(n))`
-/

namespace A154222.P4248129909695508885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A139756 n + 1 + (n : ℤ)) (A033999 n)

end

end A154222.P4248129909695508885

namespace A154222

/-- `lcm(A139756(n)+1+n, A033999(n))` -/
def P4248129909695508885.Spec : Prop :=
  ∀ n, (P4248129909695508885.a n : ℤ) = A154222 n

end A154222

/-! ## A154222.P10504193268256671511

`((n-1)*A056469(n)+4)/2`
-/

namespace A154222.P10504193268256671511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A056469 n + 4 : ℚ) / 2

end

end A154222.P10504193268256671511

namespace A154222

/-- `((n-1)*A056469(n)+4)/2` -/
def P10504193268256671511.Spec : Prop :=
  ∀ n, P10504193268256671511.a n = (A154222 n : ℚ)

end A154222

/-! ## A154222.P18371142937539091250

`(A139756(n)+1+n)%A298215(n+1)`
-/

namespace A154222.P18371142937539091250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139756 n + 1 + (n : ℤ)) (A298215 (n + 1))

end

end A154222.P18371142937539091250

namespace A154222

/-- `(A139756(n)+1+n)%A298215(n+1)` -/
def P18371142937539091250.Spec : Prop :=
  ∀ n, P18371142937539091250.a n = A154222 n

end A154222

/-! ## A154222.P11153985915696206654

`∑[∑[A062110(∑[n]+2)]]`
-/

namespace A154222.P11153985915696206654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154222.P11153985915696206654

namespace A154222

/-- `∑[∑[A062110(∑[n]+2)]]` -/
def P11153985915696206654.Spec : Prop :=
  ∀ n, P11153985915696206654.a n = A154222 n

end A154222

/-!
# A154223: Diagonal sums of number triangle A154221.

The programs for A154223, the canonical program `A154223.P9681747968428157129` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154223 has offset 0).

The definition of A154223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154223.P9681747968428157129

`A008619(n)+∑[A007179(A289207(n))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A154223

/-- `A008619(n)+∑[A007179(A289207(n))]` -/
def P9681747968428157129.Spec : Prop :=
  ∀ n, P9681747968428157129.a n = A154223 n

theorem P9681747968428157129.correct : P9681747968428157129.Spec := by
  intro n
  simp only [A154223]

end A154223

/-! ## A154223.P6466659807604692870

`A008619(n)+A059078(n)+A059053(n)`
-/

namespace A154223.P6466659807604692870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (A059078 n + A059053 n)

end

end A154223.P6466659807604692870

namespace A154223

/-- `A008619(n)+A059078(n)+A059053(n)` -/
def P6466659807604692870.Spec : Prop :=
  ∀ n, P6466659807604692870.a n = A154223 n

end A154223

/-! ## A154223.P16795564002370057513

`A123108(n+2)+∑[A007179(A289207(n))]`
-/

namespace A154223.P16795564002370057513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154223.P16795564002370057513

namespace A154223

/-- `A123108(n+2)+∑[A007179(A289207(n))]` -/
def P16795564002370057513.Spec : Prop :=
  ∀ n, P16795564002370057513.a n = A154223 n

end A154223

/-! ## A154223.P17513326210726104272

`A004526(n)+1+A059078(n)+A059053(n)`
-/

namespace A154223.P17513326210726104272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + 1 + (A059078 n + A059053 n)

end

end A154223.P17513326210726104272

namespace A154223

/-- `A004526(n)+1+A059078(n)+A059053(n)` -/
def P17513326210726104272.Spec : Prop :=
  ∀ n, P17513326210726104272.a n = A154223 n

end A154223

/-! ## A154223.P8256135454944927441

`A110654(n+1)+A059078(n)+A059053(n)`
-/

namespace A154223.P8256135454944927441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) + (A059078 n + A059053 n)

end

end A154223.P8256135454944927441

namespace A154223

/-- `A110654(n+1)+A059078(n)+A059053(n)` -/
def P8256135454944927441.Spec : Prop :=
  ∀ n, P8256135454944927441.a n = A154223 n

end A154223

/-! ## A154223.P13211034270726928388

`A320525(A238531(n))+A008619(n)`
-/

namespace A154223.P13211034270726928388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A238531 n).toNat + A008619 n

end

end A154223.P13211034270726928388

namespace A154223

/-- `A320525(A238531(n))+A008619(n)` -/
def P13211034270726928388.Spec : Prop :=
  ∀ n, P13211034270726928388.a n = A154223 n

end A154223

/-! ## A154223.P7584539364573672318

`A320525(A089071(n+1))+A008619(n)`
-/

namespace A154223.P7584539364573672318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A089071 (n + 1)).toNat + A008619 n

end

end A154223.P7584539364573672318

namespace A154223

/-- `A320525(A089071(n+1))+A008619(n)` -/
def P7584539364573672318.Spec : Prop :=
  ∀ n, P7584539364573672318.a n = A154223 n

end A154223

/-! ## A154223.P14731267675842189276

`A320525(A152948(n+1))+A008619(n)`
-/

namespace A154223.P14731267675842189276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320525 (A152948 (n + 1)).toNat + A008619 n

end

end A154223.P14731267675842189276

namespace A154223

/-- `A320525(A152948(n+1))+A008619(n)` -/
def P14731267675842189276.Spec : Prop :=
  ∀ n, P14731267675842189276.a n = A154223 n

end A154223

/-!
# A154226: List of pairs: {(n*(n+1)/2)^2, (n!)^3}.

The programs for A154226, there is no canonical definition to state claims against.
-/

/-! ## A154226.P4381866137629662769

`A154028(n)^A085058(n²)`
-/

namespace A154226.P4381866137629662769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154028 n : ℚ) ^ (A085058 (n ^ 2) : ℤ)

end

end A154226.P4381866137629662769

/-! ## A154226.P17301699697532298985

`A154028(n)^A020639(A008486(n))`
-/

namespace A154226.P17301699697532298985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154028 n : ℚ) ^ (A020639 (A008486 n).toNat : ℤ)

end

end A154226.P17301699697532298985

/-! ## A154226.P5292626329623095163

`A154028(n)^A020639(A017233(n))`
-/

namespace A154226.P5292626329623095163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154028 n : ℚ) ^ (A020639 (A017233 n).toNat : ℤ)

end

end A154226.P5292626329623095163

/-! ## A154226.P7703015714437737183

`A154028(n)^A006530(A071044(n))`
-/

namespace A154226.P7703015714437737183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154028 n : ℚ) ^ (A006530 (A071044 n).toNat : ℤ)

end

end A154226.P7703015714437737183

/-! ## A154226.P11899645390382993249

`A154028(n)^A141310(A141310(n))`
-/

namespace A154226.P11899645390382993249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154028 n : ℚ) ^ (A141310 (A141310 n).toNat : ℤ)

end

end A154226.P11899645390382993249

/-!
# A154227: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + ((n+1)*(n+2)/2)*T(n-2, k-1), read by rows.

The programs for A154227, the canonical program `A154227.P6030794763849413054` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154227 has offset 0).

The definition of A154227 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154227.P6030794763849413054

`T(n-1,k)+T(n-1,k-1)+(row(n)+1)*(row(n)+2)/2*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154227

/-- `T(n-1,k)+T(n-1,k-1)+(row(n)+1)*(row(n)+2)/2*T(n-2,k-1)` -/
def P6030794763849413054.Spec : Prop :=
  ∀ n, P6030794763849413054.a n = (A154227 n : ℚ)

end A154227

/-! ## A154227.P10563239793326592709

`A055572(A155494(n))`
-/

namespace A154227.P10563239793326592709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A155494 n).toNat

end

end A154227.P10563239793326592709

namespace A154227

/-- `A055572(A155494(n))` -/
def P10563239793326592709.Spec : Prop :=
  ∀ n, P10563239793326592709.a n = A154227 n

end A154227

/-! ## A154227.P12644309612847609984

`A091863(A154979(n))`
-/

namespace A154227.P12644309612847609984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A154979 n).toNat

end

end A154227.P12644309612847609984

namespace A154227

/-- `A091863(A154979(n))` -/
def P12644309612847609984.Spec : Prop :=
  ∀ n, P12644309612847609984.a n = A154227 n

end A154227

/-! ## A154227.P2373306734356916771

`A136443(A111910(n))`
-/

namespace A154227.P2373306734356916771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136443 (A111910 n).toNat

end

end A154227.P2373306734356916771

namespace A154227

/-- `A136443(A111910(n))` -/
def P2373306734356916771.Spec : Prop :=
  ∀ n, P2373306734356916771.a n = A154227 n

end A154227

/-! ## A154227.P10200548564079193625

`A096532(A168293(n))`
-/

namespace A154227.P10200548564079193625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096532 (A168293 n).toNat

end

end A154227.P10200548564079193625

namespace A154227

/-- `A096532(A168293(n))` -/
def P10200548564079193625.Spec : Prop :=
  ∀ n, P10200548564079193625.a n = A154227 n

end A154227

/-!
# A154228: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + ((n+1)*(n+2)*(2*n+3)/6)*T(n-2, k-1), read by rows.

The programs for A154228, the canonical program `A154228.P17147190517605010301` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154228 has offset 0).

The definition of A154228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154228.P17147190517605010301

`T(n-1,k)+T(n-1,k-1)+(row(n)+1)*(row(n)+2)*(2*row(n)+3)/6*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154228

/-- `T(n-1,k)+T(n-1,k-1)+(row(n)+1)*(row(n)+2)*(2*row(n)+3)/6*T(n-2,k-1)` -/
def P17147190517605010301.Spec : Prop :=
  ∀ n, P17147190517605010301.a n = (A154228 n : ℚ)

end A154228

/-! ## A154228.P11437235107270907115

`A100919(A081582(n))`
-/

namespace A154228.P11437235107270907115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100919 (A081582 n).toNat

end

end A154228.P11437235107270907115

namespace A154228

/-- `A100919(A081582(n))` -/
def P11437235107270907115.Spec : Prop :=
  ∀ n, P11437235107270907115.a n = A154228 n

end A154228

/-! ## A154228.P12431107342710442667

`A166155(A168293(n))`
-/

namespace A154228.P12431107342710442667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166155 (A168293 n).toNat

end

end A154228.P12431107342710442667

namespace A154228

/-- `A166155(A168293(n))` -/
def P12431107342710442667.Spec : Prop :=
  ∀ n, P12431107342710442667.a n = A154228 n

end A154228

/-! ## A154228.P16677664261635456447

`A321698(A174450(n))`
-/

namespace A154228.P16677664261635456447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321698 (A174450 n).toNat

end

end A154228.P16677664261635456447

namespace A154228

/-- `A321698(A174450(n))` -/
def P16677664261635456447.Spec : Prop :=
  ∀ n, P16677664261635456447.a n = A154228 n

end A154228

/-! ## A154228.P3219348042367509725

`A260628(A008292(n+1))+A008292(n+1)`
-/

namespace A154228.P3219348042367509725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260628 (A008292 (n + 1)).toNat + A008292 (n + 1)

end

end A154228.P3219348042367509725

namespace A154228

/-- `A260628(A008292(n+1))+A008292(n+1)` -/
def P3219348042367509725.Spec : Prop :=
  ∀ n, P3219348042367509725.a n = A154228 n

end A154228

/-!
# A154229: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + ((n+1)*(n+2)/2)^2*T(n-2, k-1), read by rows.

The programs for A154229, the canonical program `A154229.P18010603619572816661` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154229 has offset 0).

The definition of A154229 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154229.P18010603619572816661

`T(n-1,k)+T(n-1,k-1)+((row(n)+1)*(row(n)+2)/2)²*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154229

/-- `T(n-1,k)+T(n-1,k-1)+((row(n)+1)*(row(n)+2)/2)²*T(n-2,k-1)` -/
def P18010603619572816661.Spec : Prop :=
  ∀ n, P18010603619572816661.a n = (A154229 n : ℚ)

end A154229

/-! ## A154229.P10822422708705848556

`A184401(A008958(n))-2`
-/

namespace A154229.P10822422708705848556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184401 (A008958 n).toNat - 2

end

end A154229.P10822422708705848556

namespace A154229

/-- `A184401(A008958(n))-2` -/
def P10822422708705848556.Spec : Prop :=
  ∀ n, P10822422708705848556.a n = A154229 n

end A154229

/-! ## A154229.P8568908940707478642

`A287354(A273891(n+1)^xor(n, floor(n/2)))`
-/

namespace A154229.P8568908940707478642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287354 (SequenceMachineLib.roundAway ((A273891 (n + 1) : ℚ) ^ (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ : ℤ))).toNat

end

end A154229.P8568908940707478642

namespace A154229

/-- `A287354(A273891(n+1)^xor(n, floor(n/2)))` -/
def P8568908940707478642.Spec : Prop :=
  ∀ n, P8568908940707478642.a n = A154229 n

end A154229

/-! ## A154229.P14850036956596048610

`A266403(A296115(n+1)^∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A154229.P14850036956596048610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266403 (A296115 (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), Nat.gcd (n + 1) (p ^ 2))).toNat

end

end A154229.P14850036956596048610

namespace A154229

/-- `A266403(A296115(n+1)^∏{p}[n+1, gcd(n+1, #²)])` -/
def P14850036956596048610.Spec : Prop :=
  ∀ n, P14850036956596048610.a n = A154229 n

end A154229

/-!
# A154230: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + ((n+1)*(n+2)*(2*n+3)*(3*n^2+9*n+5)/30)*T(n-2, k-1), read by rows.

The programs for A154230, there is no canonical definition to state claims against.
-/

/-! ## A154230.P4137008534712087572

`A178714(A226234(n)²)`
-/

namespace A154230.P4137008534712087572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178714 (A226234 n ^ 2).toNat

end

end A154230.P4137008534712087572

/-! ## A154230.P9511159483932309186

`A101468(A304156(n+1)^((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A154230.P9511159483932309186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101468 (SequenceMachineLib.roundAway ((A304156 (n + 1) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ))).toNat

end

end A154230.P9511159483932309186

/-! ## A154230.P9476921996142306663

`A007318(A321260(n))^A000174(n)`
-/

namespace A154230.P9476921996142306663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A321260 n).toNat : ℚ) ^ (A000174 n : ℤ)

end

end A154230.P9476921996142306663

/-! ## A154230.P5978034035236090535

`A007318(A321260(n))^A032741(n)`
-/

namespace A154230.P5978034035236090535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (A321260 n).toNat : ℚ) ^ (A032741 n : ℤ)

end

end A154230.P5978034035236090535

/-!
# A154231: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + ((n+1)^2*(n+2)^2*(2*n^2 +6*n +3)/12)*T(n-2, k-1), read by rows.

The programs for A154231, the canonical program `A154231.P17277059152269883906` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154231 has offset 0).

The definition of A154231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154231.P17277059152269883906

`T(n-1,k)+T(n-1,k-1)+(row(n)+1)²*(row(n)+2)²*(2*row(n)²+6*row(n)+3)/12*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154231

/-- `T(n-1,k)+T(n-1,k-1)+(row(n)+1)²*(row(n)+2)²*(2*row(n)²+6*row(n)+3)/12*T(n-2,k-1)` -/
def P17277059152269883906.Spec : Prop :=
  ∀ n, P17277059152269883906.a n = (A154231 n : ℚ)

end A154231

/-! ## A154231.P10444410595280351842

`A101203(A008619(n)^A116089(n))`
-/

namespace A154231.P10444410595280351842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A116089 n : ℤ))).toNat

end

end A154231.P10444410595280351842

namespace A154231

/-- `A101203(A008619(n)^A116089(n))` -/
def P10444410595280351842.Spec : Prop :=
  ∀ n, P10444410595280351842.a n = A154231 n

end A154231

/-!
# A154233: Triangle T(n, k) = T(n-1, k) + T(n-1, k-1) + (n^2 +n -1)*T(n-2, k-1), read by rows.

The programs for A154233, the canonical program `A154233.P7806915401115772600` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154233 has offset 0).

The definition of A154233 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `T(n-1,k)+T(n-1,k-1)+(row(n)²+row(n)-1)*T(n-2,k-1)` (program `A154233.P7806915401115772600`, by `A154233.P7806915401115772600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154233.P7806915401115772600

`T(n-1,k)+T(n-1,k-1)+(row(n)²+row(n)-1)*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154233

/-- `T(n-1,k)+T(n-1,k-1)+(row(n)²+row(n)-1)*T(n-2,k-1)` -/
def P7806915401115772600.Spec : Prop :=
  ∀ n, P7806915401115772600.a n = A154233 n

theorem P7806915401115772600.correct : P7806915401115772600.Spec := by
  intro n
  simp only [A154233]

end A154233

/-! ## A154233.P18037658221198079295

`A050595(A157243(n))`
-/

namespace A154233.P18037658221198079295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050595 (A157243 n).toNat

end

end A154233.P18037658221198079295

namespace A154233

/-- `A050595(A157243(n))` -/
def P18037658221198079295.Spec : Prop :=
  ∀ n, P18037658221198079295.a n = A154233 n

end A154233

/-! ## A154233.P6070795844918175515

`A097745(A141597(n))`
-/

namespace A154233.P6070795844918175515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097745 (A141597 n).toNat

end

end A154233.P6070795844918175515

namespace A154233

/-- `A097745(A141597(n))` -/
def P6070795844918175515.Spec : Prop :=
  ∀ n, P6070795844918175515.a n = A154233 n

end A154233

/-! ## A154233.P9760997213868503328

`A124886(A128592(n))`
-/

namespace A154233.P9760997213868503328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124886 (A128592 n).toNat

end

end A154233.P9760997213868503328

namespace A154233

/-- `A124886(A128592(n))` -/
def P9760997213868503328.Spec : Prop :=
  ∀ n, P9760997213868503328.a n = A154233 n

end A154233

/-! ## A154233.P3480451534419751708

`A101212(A152602(n))`
-/

namespace A154233.P3480451534419751708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101212 (A152602 n).toNat

end

end A154233.P3480451534419751708

namespace A154233

/-- `A101212(A152602(n))` -/
def P3480451534419751708.Spec : Prop :=
  ∀ n, P3480451534419751708.a n = A154233 n

end A154233

/-!
# A154234: Triangle read by rows: T(n,k) = (n mod d(k)), where d(i) is the number of divisors of i.

The programs for A154234, the canonical program `A154234.P10923171375270971651` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154234 has offset 1).

The definition of A154234 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154234.P10923171375270971651

`(row(n)+1)%A000005(col(n)+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A154234

/-- `(row(n)+1)%A000005(col(n)+1)` -/
def P10923171375270971651.Spec : Prop :=
  ∀ n, P10923171375270971651.a n = A154234 (n + 1)

theorem P10923171375270971651.correct : P10923171375270971651.Spec := by
  intro n
  simp only [A154234, Nat.add_sub_cancel]

end A154234

/-! ## A154234.P12288724100328397538

`round(sqrt(2*n))%A000005(A002260(n+1))`
-/

namespace A154234.P12288724100328397538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) (A000005 (A002260 (n + 1)).toNat)

end

end A154234.P12288724100328397538

namespace A154234

/-- `round(sqrt(2*n))%A000005(A002260(n+1))` -/
def P12288724100328397538.Spec : Prop :=
  ∀ n, P12288724100328397538.a n = A154234 (n + 1)

end A154234

/-! ## A154234.P4965962223340030436

`A130855(n)%A000005(A134868(n+1))`
-/

namespace A154234.P4965962223340030436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n) (A000005 (A134868 (n + 1)).toNat)

end

end A154234.P4965962223340030436

namespace A154234

/-- `A130855(n)%A000005(A134868(n+1))` -/
def P4965962223340030436.Spec : Prop :=
  ∀ n, P4965962223340030436.a n = A154234 (n + 1)

end A154234

/-! ## A154234.P18339023945207829316

`(comp[C(n, 2)]-(n+1))%A000005(A057555(2*n+1))`
-/

namespace A154234.P18339023945207829316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)) (A000005 (A057555 (2 * n + 1)).toNat)

end

end A154234.P18339023945207829316

namespace A154234

/-- `(comp[C(n, 2)]-(n+1))%A000005(A057555(2*n+1))` -/
def P18339023945207829316.Spec : Prop :=
  ∀ n, P18339023945207829316.a n = A154234 (n + 1)

end A154234

/-! ## A154234.P17894726764823150425

`A002024(n+1)%A000005(A057555(2*n+1))`
-/

namespace A154234.P17894726764823150425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A000005 (A057555 (2 * n + 1)).toNat)

end

end A154234.P17894726764823150425

namespace A154234

/-- `A002024(n+1)%A000005(A057555(2*n+1))` -/
def P17894726764823150425.Spec : Prop :=
  ∀ n, P17894726764823150425.a n = A154234 (n + 1)

end A154234

/-! ## A154234.P15306908826961118988

`A002024(n+1)%A000005(A000005(A059268(n)))`
-/

namespace A154234.P15306908826961118988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A000005 (A000005 (A059268 n).toNat).toNat)

end

end A154234.P15306908826961118988

namespace A154234

/-- `A002024(n+1)%A000005(A000005(A059268(n)))` -/
def P15306908826961118988.Spec : Prop :=
  ∀ n, P15306908826961118988.a n = A154234 (n + 1)

end A154234

/-!
# A154235: a(n) = ( (4 + sqrt(6))^n - (4 - sqrt(6))^n )/(2*sqrt(6)).

The programs for A154235, the canonical program `A154235.P5753854701155667783` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154235 has offset 1).

The definition of A154235 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((4+sqrt(6))^(n+1)-(4-sqrt(6))^(n+1))/(2*sqrt(6))` (program `A154235.P13286343875535175630`, by `A154235.P13286343875535175630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154235.P5753854701155667783

`8*a(n-1)-10*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154235

/-- `8*a(n-1)-10*a(n-2)` -/
def P5753854701155667783.Spec : Prop :=
  ∀ n, P5753854701155667783.a n = A154235 (n + 1)

theorem P5753854701155667783.correct : P5753854701155667783.Spec := by
  intro n
  simp only [A154235, Nat.add_sub_cancel]

end A154235

/-! ## A154235.P13286343875535175630

`((4+sqrt(6))^(n+1)-(4-sqrt(6))^(n+1))/(2*sqrt(6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154235.P13286343875535175630
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (6 : ℝ)) ^ (n + 1) - (4 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (6 : ℝ))

end

end A154235.P13286343875535175630

namespace A154235

/-- `((4+sqrt(6))^(n+1)-(4-sqrt(6))^(n+1))/(2*sqrt(6))` -/
def P13286343875535175630.Spec : Prop :=
  ∀ n, P13286343875535175630.a n = (A154235 (n + 1) : ℝ)

theorem P13286343875535175630.correct : P13286343875535175630.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154235, Nat.add_sub_cancel, A154235.P13286343875535175630.a, A154235.P5753854701155667783.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154235, Nat.add_sub_cancel, A154235.P13286343875535175630.a, A154235.P5753854701155667783.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154235

/-! ## A154235.P16760154434276661347

`ogf(1/(1-8x+10x^2))`
-/

namespace A154235.P16760154434276661347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 10] n

end

end A154235.P16760154434276661347

namespace A154235

/-- `ogf(1/(1-8x+10x^2))` -/
def P16760154434276661347.Spec : Prop :=
  ∀ n, P16760154434276661347.a n = A154235 (n + 1)

end A154235

/-! ## A154235.P1015270163705984804

`A143648(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A154235.P1015270163705984804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143648 n + 4 * a (n - 1)

end

end A154235.P1015270163705984804

namespace A154235

/-- `A143648(n)+4*a(n-1)` -/
def P1015270163705984804.Spec : Prop :=
  ∀ n, P1015270163705984804.a n = A154235 (n + 1)

end A154235

/-!
# A154236: a(n) = ( (5 + sqrt(6))^n - (5 - sqrt(6))^n )/(2*sqrt(6)).

The programs for A154236, the canonical program `A154236.P3144819962834926261` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154236 has offset 1).

The definition of A154236 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((5+sqrt(6))^(n+1)-(5-sqrt(6))^(n+1))/(2*sqrt(6))` (program `A154236.P17191596783523615558`, by `A154236.P17191596783523615558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154236.P3144819962834926261

`10*a(n-1)-19*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154236

/-- `10*a(n-1)-19*a(n-2)` -/
def P3144819962834926261.Spec : Prop :=
  ∀ n, P3144819962834926261.a n = A154236 (n + 1)

theorem P3144819962834926261.correct : P3144819962834926261.Spec := by
  intro n
  simp only [A154236, Nat.add_sub_cancel]

end A154236

/-! ## A154236.P17191596783523615558

`((5+sqrt(6))^(n+1)-(5-sqrt(6))^(n+1))/(2*sqrt(6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154236.P17191596783523615558
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (6 : ℝ)) ^ (n + 1) - (5 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (6 : ℝ))

end

end A154236.P17191596783523615558

namespace A154236

/-- `((5+sqrt(6))^(n+1)-(5-sqrt(6))^(n+1))/(2*sqrt(6))` -/
def P17191596783523615558.Spec : Prop :=
  ∀ n, P17191596783523615558.a n = (A154236 (n + 1) : ℝ)

theorem P17191596783523615558.correct : P17191596783523615558.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154236, Nat.add_sub_cancel, A154236.P17191596783523615558.a, A154236.P3144819962834926261.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154236, Nat.add_sub_cancel, A154236.P17191596783523615558.a, A154236.P3144819962834926261.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154236

/-! ## A154236.P423959575677162184

`ogf(1/(1-10x+19x^2))`
-/

namespace A154236.P423959575677162184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 19] n

end

end A154236.P423959575677162184

namespace A154236

/-- `ogf(1/(1-10x+19x^2))` -/
def P423959575677162184.Spec : Prop :=
  ∀ n, P423959575677162184.a n = A154236 (n + 1)

end A154236

/-! ## A154236.P536332299055769984

`∑[A164551(n)]`
-/

namespace A154236.P536332299055769984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154236.P536332299055769984

namespace A154236

/-- `∑[A164551(n)]` -/
def P536332299055769984.Spec : Prop :=
  ∀ n, P536332299055769984.a n = A154236 (n + 1)

end A154236

/-! ## A154236.P12035800291428029020

`A146962(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A154236.P12035800291428029020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146962 n + 5 * a (n - 1)

end

end A154236.P12035800291428029020

namespace A154236

/-- `A146962(n)+5*a(n-1)` -/
def P12035800291428029020.Spec : Prop :=
  ∀ n, P12035800291428029020.a n = A154236 (n + 1)

end A154236

/-! ## A154236.P12735783038189061717

`A164551(floor(sqrt(n²+1)))+a(n-1)` with `a(0)=1`
-/

namespace A154236.P12735783038189061717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164551 (Nat.sqrt (n ^ 2 + 1)) + a (n - 1)

end

end A154236.P12735783038189061717

namespace A154236

/-- `A164551(floor(sqrt(n²+1)))+a(n-1)` -/
def P12735783038189061717.Spec : Prop :=
  ∀ n, P12735783038189061717.a n = A154236 (n + 1)

end A154236

/-!
# A154237: a(n) = ( (6 + sqrt(6))^n - (6 - sqrt(6))^n )/(2*sqrt(6)).

The programs for A154237, the canonical program `A154237.P17687993323743831265` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154237 has offset 1).

The definition of A154237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154237.P17687993323743831265

`12*a(n-1)-30*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154237

/-- `12*a(n-1)-30*a(n-2)` -/
def P17687993323743831265.Spec : Prop :=
  ∀ n, P17687993323743831265.a n = A154237 (n + 1)

theorem P17687993323743831265.correct : P17687993323743831265.Spec := by
  intro n
  simp only [A154237, Nat.add_sub_cancel]

end A154237

/-! ## A154237.P9620449775698220056

`ogf(1/(1-12x+30x^2))`
-/

namespace A154237.P9620449775698220056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 30] n

end

end A154237.P9620449775698220056

namespace A154237

/-- `ogf(1/(1-12x+30x^2))` -/
def P9620449775698220056.Spec : Prop :=
  ∀ n, P9620449775698220056.a n = A154237 (n + 1)

end A154237

/-! ## A154237.P8950222642644274945

`A164552(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A154237.P8950222642644274945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164552 n + 2 * a (n - 1)

end

end A154237.P8950222642644274945

namespace A154237

/-- `A164552(n)+2*a(n-1)` -/
def P8950222642644274945.Spec : Prop :=
  ∀ n, P8950222642644274945.a n = A154237 (n + 1)

end A154237

/-! ## A154237.P2168471433754248041

`A145301(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A154237.P2168471433754248041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145301 n + 6 * a (n - 1)

end

end A154237.P2168471433754248041

namespace A154237

/-- `A145301(n)+6*a(n-1)` -/
def P2168471433754248041.Spec : Prop :=
  ∀ n, P2168471433754248041.a n = A154237 (n + 1)

end A154237

/-! ## A154237.P6006532077667679319

`A361290(A000096(n+6)+n+2)`
-/

namespace A154237.P6006532077667679319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361290 (A000096 (n + 6) + (n + 2 : ℤ)).toNat

end

end A154237.P6006532077667679319

namespace A154237

/-- `A361290(A000096(n+6)+n+2)` -/
def P6006532077667679319.Spec : Prop :=
  ∀ n, P6006532077667679319.a n = A154237 (n + 1)

end A154237

/-!
# A154239: a(n) = ( (7 + sqrt(6))^n - (7 - sqrt(6))^n )/(2*sqrt(6)).

The programs for A154239, the canonical program `A154239.P5485970863809865940` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154239 has offset 1).

The definition of A154239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154239.P5485970863809865940

`14*a(n-1)-43*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154239

/-- `14*a(n-1)-43*a(n-2)` -/
def P5485970863809865940.Spec : Prop :=
  ∀ n, P5485970863809865940.a n = A154239 (n + 1)

theorem P5485970863809865940.correct : P5485970863809865940.Spec := by
  intro n
  simp only [A154239, Nat.add_sub_cancel]

end A154239

/-! ## A154239.P9952030010468648267

`A164553(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A154239.P9952030010468648267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A164553 n + 3 * a (n - 1)

end

end A154239.P9952030010468648267

namespace A154239

/-- `A164553(n)+3*a(n-1)` -/
def P9952030010468648267.Spec : Prop :=
  ∀ n, P9952030010468648267.a n = A154239 (n + 1)

end A154239

/-! ## A154239.P9897582440205662029

`A152262(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A154239.P9897582440205662029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152262 n + 7 * a (n - 1)

end

end A154239.P9897582440205662029

namespace A154239

/-- `A152262(n)+7*a(n-1)` -/
def P9897582440205662029.Spec : Prop :=
  ∀ n, P9897582440205662029.a n = A154239 (n + 1)

end A154239

/-!
# A154240: a(n) = ( (8 + sqrt(6))^n - (8 - sqrt(6))^n )/(2*sqrt(6)).

The programs for A154240, the canonical program `A154240.P10553743466155335296` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154240 has offset 1).

The definition of A154240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((8+sqrt(6))^(n+1)-(8-sqrt(6))^(n+1))/(2*sqrt(6))` (program `A154240.P16901950314933943483`, by `A154240.P16901950314933943483.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154240.P10553743466155335296

`16*a(n-1)-58*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154240

/-- `16*a(n-1)-58*a(n-2)` -/
def P10553743466155335296.Spec : Prop :=
  ∀ n, P10553743466155335296.a n = A154240 (n + 1)

theorem P10553743466155335296.correct : P10553743466155335296.Spec := by
  intro n
  simp only [A154240, Nat.add_sub_cancel]

end A154240

/-! ## A154240.P16901950314933943483

`((8+sqrt(6))^(n+1)-(8-sqrt(6))^(n+1))/(2*sqrt(6))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154240.P16901950314933943483
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (6 : ℝ)) ^ (n + 1) - (8 - Real.sqrt (6 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (6 : ℝ))

end

end A154240.P16901950314933943483

namespace A154240

/-- `((8+sqrt(6))^(n+1)-(8-sqrt(6))^(n+1))/(2*sqrt(6))` -/
def P16901950314933943483.Spec : Prop :=
  ∀ n, P16901950314933943483.a n = (A154240 (n + 1) : ℝ)

theorem P16901950314933943483.correct : P16901950314933943483.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154240, Nat.add_sub_cancel, A154240.P16901950314933943483.a, A154240.P10553743466155335296.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154240, Nat.add_sub_cancel, A154240.P16901950314933943483.a, A154240.P10553743466155335296.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154240

/-! ## A154240.P13764825937717905956

`A152263(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A154240.P13764825937717905956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152263 n + 8 * a (n - 1)

end

end A154240.P13764825937717905956

namespace A154240

/-- `A152263(n)+8*a(n-1)` -/
def P13764825937717905956.Spec : Prop :=
  ∀ n, P13764825937717905956.a n = A154240 (n + 1)

end A154240

/-!
# A154241: a(n) = ( (9 + sqrt(6))^n - (9 - sqrt(6))^n )/(2*sqrt(6)).

The programs for A154241, the canonical program `A154241.P10184433855030782007` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154241 has offset 1).

The definition of A154241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154241.P10184433855030782007

`18*a(n-1)-75*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154241

/-- `18*a(n-1)-75*a(n-2)` -/
def P10184433855030782007.Spec : Prop :=
  ∀ n, P10184433855030782007.a n = A154241 (n + 1)

theorem P10184433855030782007.correct : P10184433855030782007.Spec := by
  intro n
  simp only [A154241, Nat.add_sub_cancel]

end A154241

/-! ## A154241.P12475531583669592820

`A152264(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A154241.P12475531583669592820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152264 n + 9 * a (n - 1)

end

end A154241.P12475531583669592820

namespace A154241

/-- `A152264(n)+9*a(n-1)` -/
def P12475531583669592820.Spec : Prop :=
  ∀ n, P12475531583669592820.a n = A154241 (n + 1)

end A154241

/-!
# A154242: Denominators of the coefficients of the polynomials 1/Sum_{n>=1} x^(n-1)/((2*n)!/n!) = 2*exp(-x/4)*sqrt(x)/ (sqrt(Pi)*erf(sqrt(x)/2)).

The programs for A154242, there is no canonical definition to state claims against.
-/

/-! ## A154242.P12871600742352115651

`A000010(A011782(n))*A154289(n)`
-/

namespace A154242.P12871600742352115651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A011782 n).toNat * A154289 n

end

end A154242.P12871600742352115651

/-!
# A154244: a(n) = 6*a(n-1) - 2*a(n-2) for n>1; a(1)=1, a(2)=6.

The programs for A154244, the canonical program `A154244.P12493025717604331271` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154244 has offset 1).

The definition of A154244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-2*a(n-2)` (program `A154244.P12493025717604331271`, by `A154244.P12493025717604331271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154244.P12493025717604331271

`6*a(n-1)-2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154244

/-- `6*a(n-1)-2*a(n-2)` -/
def P12493025717604331271.Spec : Prop :=
  ∀ n, P12493025717604331271.a n = A154244 (n + 1)

theorem P12493025717604331271.correct : P12493025717604331271.Spec := by
  intro n
  simp only [A154244, Nat.add_sub_cancel]

end A154244

/-! ## A154244.P16491924633838929570

`((3+sqrt(7))^(n+1)-(3-sqrt(7))^(n+1))/(2*sqrt(7))`
-/

namespace A154244.P16491924633838929570
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (7 : ℝ)) ^ (n + 1) - (3 - Real.sqrt (7 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (7 : ℝ))

end

end A154244.P16491924633838929570

namespace A154244

/-- `((3+sqrt(7))^(n+1)-(3-sqrt(7))^(n+1))/(2*sqrt(7))` -/
def P16491924633838929570.Spec : Prop :=
  ∀ n, P16491924633838929570.a n = (A154244 (n + 1) : ℝ)

theorem P16491924633838929570.correct : P16491924633838929570.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154244, Nat.add_sub_cancel, A154244.P16491924633838929570.a, A154244.P12493025717604331271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154244, Nat.add_sub_cancel, A154244.P16491924633838929570.a, A154244.P12493025717604331271.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154244

/-! ## A154244.P17445898124550406555

`ogf(1/(1-6x+2x^2))`
-/

namespace A154244.P17445898124550406555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 2] n

end

end A154244.P17445898124550406555

namespace A154244

/-- `ogf(1/(1-6x+2x^2))` -/
def P17445898124550406555.Spec : Prop :=
  ∀ n, P17445898124550406555.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P10798980379233802878

`round((sqrt(7)+3)*a(n-1))` with `a(0)=1`
-/

namespace A154244.P10798980379233802878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (7 : ℝ) + 3) * (a (n - 1) : ℝ))

end

end A154244.P10798980379233802878

namespace A154244

/-- `round((sqrt(7)+3)*a(n-1))` -/
def P10798980379233802878.Spec : Prop :=
  ∀ n, P10798980379233802878.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P1974537374707991259

`A249221(Δ[n²])`
-/

namespace A154244.P1974537374707991259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A154244.P1974537374707991259

namespace A154244

/-- `A249221(Δ[n²])` -/
def P1974537374707991259.Spec : Prop :=
  ∀ n, P1974537374707991259.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P2853579693348458709

`Δ[A180034(n)/3]`
-/

namespace A154244.P2853579693348458709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180034 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154244.P2853579693348458709

namespace A154244

/-- `Δ[A180034(n)/3]` -/
def P2853579693348458709.Spec : Prop :=
  ∀ n, P2853579693348458709.a n = (A154244 (n + 1) : ℚ)

end A154244

/-! ## A154244.P913961915260219776

`A146963(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A154244.P913961915260219776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146963 n + 3 * a (n - 1)

end

end A154244.P913961915260219776

namespace A154244

/-- `A146963(n)+3*a(n-1)` -/
def P913961915260219776.Spec : Prop :=
  ∀ n, P913961915260219776.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P3240684180657340628

`record[A249221(A000265(n+1))]`
-/

namespace A154244.P3240684180657340628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249221 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154244.P3240684180657340628

namespace A154244

/-- `record[A249221(A000265(n+1))]` -/
def P3240684180657340628.Spec : Prop :=
  ∀ n, P3240684180657340628.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P13117314404255326937

`record[A249221(A006257(n+1))]`
-/

namespace A154244.P13117314404255326937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249221 (A006257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154244.P13117314404255326937

namespace A154244

/-- `record[A249221(A006257(n+1))]` -/
def P13117314404255326937.Spec : Prop :=
  ∀ n, P13117314404255326937.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P8708861809432582145

`A060546(n)*A084069(n+1)`
-/

namespace A154244.P8708861809432582145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A084069 (n + 1)

end

end A154244.P8708861809432582145

namespace A154244

/-- `A060546(n)*A084069(n+1)` -/
def P8708861809432582145.Spec : Prop :=
  ∀ n, P8708861809432582145.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P9400727134817611439

`A016116(n+1)*A259596(2*n)`
-/

namespace A154244.P9400727134817611439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) * A259596 (2 * n)

end

end A154244.P9400727134817611439

namespace A154244

/-- `A016116(n+1)*A259596(2*n)` -/
def P9400727134817611439.Spec : Prop :=
  ∀ n, P9400727134817611439.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P3702953606903563592

`∑[A202638(n+1)]*A016116(n+1)`
-/

namespace A154244.P3702953606903563592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (n + 1)

end

end A154244.P3702953606903563592

namespace A154244

/-- `∑[A202638(n+1)]*A016116(n+1)` -/
def P3702953606903563592.Spec : Prop :=
  ∀ n, P3702953606903563592.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P13764332271726475737

`2*A249221(2*n+1)-A249221(2*n+1)`
-/

namespace A154244.P13764332271726475737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A249221 (2 * n + 1) - A249221 (2 * n + 1)

end

end A154244.P13764332271726475737

namespace A154244

/-- `2*A249221(2*n+1)-A249221(2*n+1)` -/
def P13764332271726475737.Spec : Prop :=
  ∀ n, P13764332271726475737.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P402154402609902737

`A249221(2*n+1)+A249221(2*(n+1))*A318880(2*n+1)`
-/

namespace A154244.P402154402609902737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249221 (2 * n + 1) + A249221 (2 * (n + 1)) * A318880 (2 * n + 1)

end

end A154244.P402154402609902737

namespace A154244

/-- `A249221(2*n+1)+A249221(2*(n+1))*A318880(2*n+1)` -/
def P402154402609902737.Spec : Prop :=
  ∀ n, P402154402609902737.a n = A154244 (n + 1)

end A154244

/-! ## A154244.P11256460694044478682

`A249221(2*n+3)-A249221(2*(n+1))`
-/

namespace A154244.P11256460694044478682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249221 (2 * n + 3) - A249221 (2 * (n + 1))

end

end A154244.P11256460694044478682

namespace A154244

/-- `A249221(2*n+3)-A249221(2*(n+1))` -/
def P11256460694044478682.Spec : Prop :=
  ∀ n, P11256460694044478682.a n = A154244 (n + 1)

end A154244

/-!
# A154245: a(n) = ( (4 + sqrt(7))^n - (4 - sqrt(7))^n )/(2*sqrt(7)).

The programs for A154245, the canonical program `A154245.P9112401975975649680` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154245 has offset 1).

The definition of A154245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((4+sqrt(7))^(n+1)-(4-sqrt(7))^(n+1))/(2*sqrt(7))` (program `A154245.P3812075800714183555`, by `A154245.P3812075800714183555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154245.P9112401975975649680

`8*a(n-1)-9*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154245

/-- `8*a(n-1)-9*a(n-2)` -/
def P9112401975975649680.Spec : Prop :=
  ∀ n, P9112401975975649680.a n = A154245 (n + 1)

theorem P9112401975975649680.correct : P9112401975975649680.Spec := by
  intro n
  simp only [A154245, Nat.add_sub_cancel]

end A154245

/-! ## A154245.P3812075800714183555

`((4+sqrt(7))^(n+1)-(4-sqrt(7))^(n+1))/(2*sqrt(7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154245.P3812075800714183555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (7 : ℝ)) ^ (n + 1) - (4 - Real.sqrt (7 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (7 : ℝ))

end

end A154245.P3812075800714183555

namespace A154245

/-- `((4+sqrt(7))^(n+1)-(4-sqrt(7))^(n+1))/(2*sqrt(7))` -/
def P3812075800714183555.Spec : Prop :=
  ∀ n, P3812075800714183555.a n = (A154245 (n + 1) : ℝ)

theorem P3812075800714183555.correct : P3812075800714183555.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154245, Nat.add_sub_cancel, A154245.P3812075800714183555.a, A154245.P9112401975975649680.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154245, Nat.add_sub_cancel, A154245.P3812075800714183555.a, A154245.P9112401975975649680.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154245

/-! ## A154245.P3167937757039726543

`ogf(1/(1-8x+9x^2))`
-/

namespace A154245.P3167937757039726543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 9] n

end

end A154245.P3167937757039726543

namespace A154245

/-- `ogf(1/(1-8x+9x^2))` -/
def P3167937757039726543.Spec : Prop :=
  ∀ n, P3167937757039726543.a n = A154245 (n + 1)

end A154245

/-! ## A154245.P6015645991202113584

`A002536(2*(n+1))`
-/

namespace A154245.P6015645991202113584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 (2 * (n + 1))

end

end A154245.P6015645991202113584

namespace A154245

/-- `A002536(2*(n+1))` -/
def P6015645991202113584.Spec : Prop :=
  ∀ n, P6015645991202113584.a n = A154245 (n + 1)

end A154245

/-! ## A154245.P9830232227661965071

`A146964(n)+4*a(n-1)` with `a(0)=1`
-/

namespace A154245.P9830232227661965071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146964 n + 4 * a (n - 1)

end

end A154245.P9830232227661965071

namespace A154245

/-- `A146964(n)+4*a(n-1)` -/
def P9830232227661965071.Spec : Prop :=
  ∀ n, P9830232227661965071.a n = A154245 (n + 1)

end A154245

/-! ## A154245.P2996561497431814316

`record[A002536(A005131(n))]`
-/

namespace A154245.P2996561497431814316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154245.P2996561497431814316

namespace A154245

/-- `record[A002536(A005131(n))]` -/
def P2996561497431814316.Spec : Prop :=
  ∀ n, P2996561497431814316.a n = A154245 (n + 1)

end A154245

/-! ## A154245.P8583321892411154403

`record[A002536(A029578(n+2))]`
-/

namespace A154245.P8583321892411154403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002536 (A029578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154245.P8583321892411154403

namespace A154245

/-- `record[A002536(A029578(n+2))]` -/
def P8583321892411154403.Spec : Prop :=
  ∀ n, P8583321892411154403.a n = A154245 (n + 1)

end A154245

/-! ## A154245.P9329640171438132816

`lcm(A002536(n+1), A002536(A005843(n+1)))`
-/

namespace A154245.P9329640171438132816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002536 (n + 1)) (A002536 (A005843 (n + 1)).toNat)

end

end A154245.P9329640171438132816

namespace A154245

/-- `lcm(A002536(n+1), A002536(A005843(n+1)))` -/
def P9329640171438132816.Spec : Prop :=
  ∀ n, (P9329640171438132816.a n : ℤ) = A154245 (n + 1)

end A154245

/-! ## A154245.P15147480703038467601

`A094432(n+1)+A094432(n+1)+A094431(n+1)`
-/

namespace A154245.P15147480703038467601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094432 (n + 1) + (A094432 (n + 1) + A094431 (n + 1))

end

end A154245.P15147480703038467601

namespace A154245

/-- `A094432(n+1)+A094432(n+1)+A094431(n+1)` -/
def P15147480703038467601.Spec : Prop :=
  ∀ n, P15147480703038467601.a n = A154245 (n + 1)

end A154245

/-!
# A154246: a(n) = ( (5 + sqrt(7))^n - (5 - sqrt(7))^n )/(2*sqrt(7)).

The programs for A154246, the canonical program `A154246.P3580945011515794044` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154246 has offset 1).

The definition of A154246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((5+sqrt(7))^(n+1)-(5-sqrt(7))^(n+1))/(2*sqrt(7))` (program `A154246.P11936652495740843736`, by `A154246.P11936652495740843736.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154246.P3580945011515794044

`10*a(n-1)-18*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154246

/-- `10*a(n-1)-18*a(n-2)` -/
def P3580945011515794044.Spec : Prop :=
  ∀ n, P3580945011515794044.a n = A154246 (n + 1)

theorem P3580945011515794044.correct : P3580945011515794044.Spec := by
  intro n
  simp only [A154246, Nat.add_sub_cancel]

end A154246

/-! ## A154246.P11936652495740843736

`((5+sqrt(7))^(n+1)-(5-sqrt(7))^(n+1))/(2*sqrt(7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154246.P11936652495740843736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (7 : ℝ)) ^ (n + 1) - (5 - Real.sqrt (7 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (7 : ℝ))

end

end A154246.P11936652495740843736

namespace A154246

/-- `((5+sqrt(7))^(n+1)-(5-sqrt(7))^(n+1))/(2*sqrt(7))` -/
def P11936652495740843736.Spec : Prop :=
  ∀ n, P11936652495740843736.a n = (A154246 (n + 1) : ℝ)

theorem P11936652495740843736.correct : P11936652495740843736.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154246, Nat.add_sub_cancel, A154246.P11936652495740843736.a, A154246.P3580945011515794044.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154246, Nat.add_sub_cancel, A154246.P11936652495740843736.a, A154246.P3580945011515794044.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154246

/-! ## A154246.P14905866193941599374

`ogf(1/(1-10x+18x^2))`
-/

namespace A154246.P14905866193941599374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -10, 18] n

end

end A154246.P14905866193941599374

namespace A154246

/-- `ogf(1/(1-10x+18x^2))` -/
def P14905866193941599374.Spec : Prop :=
  ∀ n, P14905866193941599374.a n = A154246 (n + 1)

end A154246

/-! ## A154246.P6160232587784436505

`A146965(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A154246.P6160232587784436505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146965 n + 5 * a (n - 1)

end

end A154246.P6160232587784436505

namespace A154246

/-- `A146965(n)+5*a(n-1)` -/
def P6160232587784436505.Spec : Prop :=
  ∀ n, P6160232587784436505.a n = A154246 (n + 1)

end A154246

/-!
# A154247: a(n) = ( (6 + sqrt(7))^n - (6 - sqrt(7))^n )/(2*sqrt(7)).

The programs for A154247, the canonical program `A154247.P6843118373545751470` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154247 has offset 1).

The definition of A154247 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154247.P6843118373545751470

`12*a(n-1)-29*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154247

/-- `12*a(n-1)-29*a(n-2)` -/
def P6843118373545751470.Spec : Prop :=
  ∀ n, P6843118373545751470.a n = A154247 (n + 1)

theorem P6843118373545751470.correct : P6843118373545751470.Spec := by
  intro n
  simp only [A154247, Nat.add_sub_cancel]

end A154247

/-! ## A154247.P10179196935832109945

`ogf(1/(1-12x+29x^2))`
-/

namespace A154247.P10179196935832109945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -12, 29] n

end

end A154247.P10179196935832109945

namespace A154247

/-- `ogf(1/(1-12x+29x^2))` -/
def P10179196935832109945.Spec : Prop :=
  ∀ n, P10179196935832109945.a n = A154247 (n + 1)

end A154247

/-! ## A154247.P2378103480155871760

`A146966(n)+6*a(n-1)` with `a(0)=1`
-/

namespace A154247.P2378103480155871760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A146966 n + 6 * a (n - 1)

end

end A154247.P2378103480155871760

namespace A154247

/-- `A146966(n)+6*a(n-1)` -/
def P2378103480155871760.Spec : Prop :=
  ∀ n, P2378103480155871760.a n = A154247 (n + 1)

end A154247

/-!
# A154248: a(n) = ( (7 + sqrt(7))^n - (7 - sqrt(7))^n )/(2*sqrt(7)).

The programs for A154248, the canonical program `A154248.P11593170440518132133` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154248 has offset 1).

The definition of A154248 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154248.P11593170440518132133

`14*a(n-1)-42*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154248

/-- `14*a(n-1)-42*a(n-2)` -/
def P11593170440518132133.Spec : Prop :=
  ∀ n, P11593170440518132133.a n = A154248 (n + 1)

theorem P11593170440518132133.correct : P11593170440518132133.Spec := by
  intro n
  simp only [A154248, Nat.add_sub_cancel]

end A154248

/-! ## A154248.P8784932787803923200

`A145302(n)+7*a(n-1)` with `a(0)=1`
-/

namespace A154248.P8784932787803923200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A145302 n + 7 * a (n - 1)

end

end A154248.P8784932787803923200

namespace A154248

/-- `A145302(n)+7*a(n-1)` -/
def P8784932787803923200.Spec : Prop :=
  ∀ n, P8784932787803923200.a n = A154248 (n + 1)

end A154248

/-! ## A154248.P8211150785117872365

`sqrt(A145020(n+1))`
-/

namespace A154248.P8211150785117872365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A145020 (n + 1) : ℝ)

end

end A154248.P8211150785117872365

namespace A154248

/-- `sqrt(A145020(n+1))` -/
def P8211150785117872365.Spec : Prop :=
  ∀ n, P8211150785117872365.a n = (A154248 (n + 1) : ℝ)

end A154248

/-! ## A154248.P8713227626302006988

`root(A145020(n+1), A239374(n+2))`
-/

namespace A154248.P8713227626302006988
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145020 (n + 1) : ℝ) ^ (1 / (A239374 (n + 2) : ℝ))

end

end A154248.P8713227626302006988

namespace A154248

/-- `root(A145020(n+1), A239374(n+2))` -/
def P8713227626302006988.Spec : Prop :=
  ∀ n, P8713227626302006988.a n = (A154248 (n + 1) : ℝ)

end A154248

/-! ## A154248.P13088759042245930474

`root(A145020(n+1), A001316(A001316(n)))`
-/

namespace A154248.P13088759042245930474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A145020 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A154248.P13088759042245930474

namespace A154248

/-- `root(A145020(n+1), A001316(A001316(n)))` -/
def P13088759042245930474.Spec : Prop :=
  ∀ n, P13088759042245930474.a n = (A154248 (n + 1) : ℝ)

end A154248

/-!
# A154249: a(n) = ( (8 + sqrt(7))^n - (8 - sqrt(7))^n )/(2*sqrt(7)).

The programs for A154249, the canonical program `A154249.P14020834262649085642` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154249 has offset 1).

The definition of A154249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((8+sqrt(7))^(n+1)-(8-sqrt(7))^(n+1))/(2*sqrt(7))` (program `A154249.P15189522407740915240`, by `A154249.P15189522407740915240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154249.P14020834262649085642

`16*a(n-1)-57*a(n-2)` with `a(0)=1, a(1)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154249

/-- `16*a(n-1)-57*a(n-2)` -/
def P14020834262649085642.Spec : Prop :=
  ∀ n, P14020834262649085642.a n = A154249 (n + 1)

theorem P14020834262649085642.correct : P14020834262649085642.Spec := by
  intro n
  simp only [A154249, Nat.add_sub_cancel]

end A154249

/-! ## A154249.P16488994632157974536

`((8+sqrt(7))^(n+1)-(8-sqrt(7))^(n+1))/sqrt(28)`
-/

namespace A154249.P16488994632157974536
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (7 : ℝ)) ^ (n + 1) - (8 - Real.sqrt (7 : ℝ)) ^ (n + 1)) / Real.sqrt (28 : ℝ)

end

end A154249.P16488994632157974536

namespace A154249

/-- `((8+sqrt(7))^(n+1)-(8-sqrt(7))^(n+1))/sqrt(28)` -/
def P16488994632157974536.Spec : Prop :=
  ∀ n, P16488994632157974536.a n = (A154249 (n + 1) : ℝ)

end A154249

/-! ## A154249.P15189522407740915240

`((8+sqrt(7))^(n+1)-(8-sqrt(7))^(n+1))/(2*sqrt(7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154249.P15189522407740915240
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((8 + Real.sqrt (7 : ℝ)) ^ (n + 1) - (8 - Real.sqrt (7 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (7 : ℝ))

end

end A154249.P15189522407740915240

namespace A154249

/-- `((8+sqrt(7))^(n+1)-(8-sqrt(7))^(n+1))/(2*sqrt(7))` -/
def P15189522407740915240.Spec : Prop :=
  ∀ n, P15189522407740915240.a n = (A154249 (n + 1) : ℝ)

theorem P15189522407740915240.correct : P15189522407740915240.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154249, Nat.add_sub_cancel, A154249.P15189522407740915240.a, A154249.P14020834262649085642.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154249, Nat.add_sub_cancel, A154249.P15189522407740915240.a, A154249.P14020834262649085642.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154249

/-! ## A154249.P10796270917307817497

`A152265(n)+8*a(n-1)` with `a(0)=1`
-/

namespace A154249.P10796270917307817497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152265 n + 8 * a (n - 1)

end

end A154249.P10796270917307817497

namespace A154249

/-- `A152265(n)+8*a(n-1)` -/
def P10796270917307817497.Spec : Prop :=
  ∀ n, P10796270917307817497.a n = A154249 (n + 1)

end A154249

/-!
# A154250: a(n) = ( (9 + sqrt(7))^n - (9 - sqrt(7))^n )/(2*sqrt(7)).

The programs for A154250, the canonical program `A154250.P177117203665952940` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154250 has offset 1).

The definition of A154250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((9+sqrt(7))^(n+1)-(9-sqrt(7))^(n+1))/(2*sqrt(7))` (program `A154250.P8076837093556546255`, by `A154250.P8076837093556546255.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154250.P177117203665952940

`18*a(n-1)-74*a(n-2)` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154250

/-- `18*a(n-1)-74*a(n-2)` -/
def P177117203665952940.Spec : Prop :=
  ∀ n, P177117203665952940.a n = A154250 (n + 1)

theorem P177117203665952940.correct : P177117203665952940.Spec := by
  intro n
  simp only [A154250, Nat.add_sub_cancel]

end A154250

/-! ## A154250.P8076837093556546255

`((9+sqrt(7))^(n+1)-(9-sqrt(7))^(n+1))/(2*sqrt(7))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A154250.P8076837093556546255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((9 + Real.sqrt (7 : ℝ)) ^ (n + 1) - (9 - Real.sqrt (7 : ℝ)) ^ (n + 1)) / (2 * Real.sqrt (7 : ℝ))

end

end A154250.P8076837093556546255

namespace A154250

/-- `((9+sqrt(7))^(n+1)-(9-sqrt(7))^(n+1))/(2*sqrt(7))` -/
def P8076837093556546255.Spec : Prop :=
  ∀ n, P8076837093556546255.a n = (A154250 (n + 1) : ℝ)

theorem P8076837093556546255.correct : P8076837093556546255.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A154250, Nat.add_sub_cancel, A154250.P8076837093556546255.a, A154250.P177117203665952940.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A154250, Nat.add_sub_cancel, A154250.P8076837093556546255.a, A154250.P177117203665952940.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A154250

/-! ## A154250.P15875614466523840565

`A152266(n)+9*a(n-1)` with `a(0)=1`
-/

namespace A154250.P15875614466523840565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152266 n + 9 * a (n - 1)

end

end A154250.P15875614466523840565

namespace A154250

/-- `A152266(n)+9*a(n-1)` -/
def P15875614466523840565.Spec : Prop :=
  ∀ n, P15875614466523840565.a n = A154250 (n + 1)

end A154250

/-!
# A154251: Expansion of (1-x+7x^2)/((1-x)(1-2x)).

The programs for A154251, the canonical program `A154251.P12135859548878711` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154251 has offset 0).

The definition of A154251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+7x^2)/(1-3x+2x^2))` (program `A154251.P12135859548878711`, by `A154251.P12135859548878711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154251.P12135859548878711

`ogf((1-x+7x^2)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154251

/-- `ogf((1-x+7x^2)/(1-3x+2x^2))` -/
def P12135859548878711.Spec : Prop :=
  ∀ n, P12135859548878711.a n = A154251 n

theorem P12135859548878711.correct : P12135859548878711.Spec := by
  intro n
  simp only [A154251]

end A154251

/-! ## A154251.P13890431287245963073

`2*a(n-1)+7` with `a(0)=1, a(1)=2`
-/

namespace A154251.P13890431287245963073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 7

end

end A154251.P13890431287245963073

namespace A154251

/-- `2*a(n-1)+7` -/
def P13890431287245963073.Spec : Prop :=
  ∀ n, (P13890431287245963073.a n : ℤ) = A154251 n

end A154251

/-! ## A154251.P8515905680565372625

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=9`
-/

namespace A154251.P8515905680565372625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 9] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154251.P8515905680565372625

namespace A154251

/-- `∑[2*a(n-1)]` -/
def P8515905680565372625.Spec : Prop :=
  ∀ n, (P8515905680565372625.a n : ℤ) = A154251 n

end A154251

/-! ## A154251.P8894927474486563083

`9-2*(1-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A154251.P8894927474486563083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  9 - 2 * (1 - a (n - 1))

end

end A154251.P8894927474486563083

namespace A154251

/-- `9-2*(1-a(n-1))` -/
def P8894927474486563083.Spec : Prop :=
  ∀ n, P8894927474486563083.a n = A154251 n

end A154251

/-! ## A154251.P8743045169703674721

`a(n-1)+a(n-1)+7` with `a(0)=1, a(1)=2`
-/

namespace A154251.P8743045169703674721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 7)

end

end A154251.P8743045169703674721

namespace A154251

/-- `a(n-1)+a(n-1)+7` -/
def P8743045169703674721.Spec : Prop :=
  ∀ n, (P8743045169703674721.a n : ℤ) = A154251 n

end A154251

/-! ## A154251.P339062889695021831

`∑[A160824(2*n+1)]`
-/

namespace A154251.P339062889695021831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160824 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154251.P339062889695021831

namespace A154251

/-- `∑[A160824(2*n+1)]` -/
def P339062889695021831.Spec : Prop :=
  ∀ n, P339062889695021831.a n = A154251 n

end A154251

/-! ## A154251.P11417595472677885804

`abs(4-3*(A042950(n)-1))`
-/

namespace A154251.P11417595472677885804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - 3 * (A042950 n - 1)|

end

end A154251.P11417595472677885804

namespace A154251

/-- `abs(4-3*(A042950(n)-1))` -/
def P11417595472677885804.Spec : Prop :=
  ∀ n, P11417595472677885804.a n = A154251 n

end A154251

/-! ## A154251.P4510708558655628152

`A116453(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154251.P4510708558655628152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A116453 n + a (n - 1)

end

end A154251.P4510708558655628152

namespace A154251

/-- `A116453(n)+a(n-1)` -/
def P4510708558655628152.Spec : Prop :=
  ∀ n, P4510708558655628152.a n = A154251 n

end A154251

/-! ## A154251.P14213564076381262804

`A397439(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154251.P14213564076381262804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A397439 n + a (n - 1)

end

end A154251.P14213564076381262804

namespace A154251

/-- `A397439(n)+a(n-1)` -/
def P14213564076381262804.Spec : Prop :=
  ∀ n, P14213564076381262804.a n = A154251 n

end A154251

/-! ## A154251.P617677760827944163

`2^n+7*(A011782(n)-1)`
-/

namespace A154251.P617677760827944163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + 7 * (A011782 n - 1)

end

end A154251.P617677760827944163

namespace A154251

/-- `2^n+7*(A011782(n)-1)` -/
def P617677760827944163.Spec : Prop :=
  ∀ n, P617677760827944163.a n = A154251 n

end A154251

/-! ## A154251.P8105977658648194383

`A005010(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154251.P8105977658648194383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A005010 (n - 2) + a (n - 1)

end

end A154251.P8105977658648194383

namespace A154251

/-- `A005010(n-2)+a(n-1)` -/
def P8105977658648194383.Spec : Prop :=
  ∀ n, P8105977658648194383.a n = A154251 n

end A154251

/-! ## A154251.P14365538291203035098

`ceil(2^(n-1))+A131130(n)-1`
-/

namespace A154251.P14365538291203035098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + (A131130 n - 1)

end

end A154251.P14365538291203035098

namespace A154251

/-- `ceil(2^(n-1))+A131130(n)-1` -/
def P14365538291203035098.Spec : Prop :=
  ∀ n, P14365538291203035098.a n = A154251 n

end A154251

/-! ## A154251.P16720709290158635906

`A053209(n)+1-A036453(n+1)²`
-/

namespace A154251.P16720709290158635906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053209 n + (1 - A036453 (n + 1) ^ 2)

end

end A154251.P16720709290158635906

namespace A154251

/-- `A053209(n)+1-A036453(n+1)²` -/
def P16720709290158635906.Spec : Prop :=
  ∀ n, P16720709290158635906.a n = A154251 n

end A154251

/-! ## A154251.P3665309628684811810

`A131130(n)+A000079(n)-A094373(n)`
-/

namespace A154251.P3665309628684811810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n + (A000079 n - A094373 n)

end

end A154251.P3665309628684811810

namespace A154251

/-- `A131130(n)+A000079(n)-A094373(n)` -/
def P3665309628684811810.Spec : Prop :=
  ∀ n, P3665309628684811810.a n = A154251 n

end A154251

/-! ## A154251.P14215879163899641387

`A095121(n)+A154118(n)-A000079(n)`
-/

namespace A154251.P14215879163899641387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (A154118 n - A000079 n)

end

end A154251.P14215879163899641387

namespace A154251

/-- `A095121(n)+A154118(n)-A000079(n)` -/
def P14215879163899641387.Spec : Prop :=
  ∀ n, P14215879163899641387.a n = A154251 n

end A154251

/-! ## A154251.P15235010007173878699

`A131128(n)+A154117(n)-A000079(n)`
-/

namespace A154251.P15235010007173878699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n + (A154117 n - A000079 n)

end

end A154251.P15235010007173878699

namespace A154251

/-- `A131128(n)+A154117(n)-A000079(n)` -/
def P15235010007173878699.Spec : Prop :=
  ∀ n, P15235010007173878699.a n = A154251 n

end A154251

/-! ## A154251.P8192406563918865400

`A131130(n)+A095121(n)-A083329(n)`
-/

namespace A154251.P8192406563918865400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131130 n + (A095121 n - A083329 n)

end

end A154251.P8192406563918865400

namespace A154251

/-- `A131130(n)+A095121(n)-A083329(n)` -/
def P8192406563918865400.Spec : Prop :=
  ∀ n, P8192406563918865400.a n = A154251 n

end A154251

/-! ## A154251.P4836568668846789410

`A095121(n)+A131128(n)-A094373(n)`
-/

namespace A154251.P4836568668846789410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (A131128 n - A094373 n)

end

end A154251.P4836568668846789410

namespace A154251

/-- `A095121(n)+A131128(n)-A094373(n)` -/
def P4836568668846789410.Spec : Prop :=
  ∀ n, P4836568668846789410.a n = A154251 n

end A154251

/-! ## A154251.P2972925772649751196

`A131128(n)+A131128(n)-A083329(n)`
-/

namespace A154251.P2972925772649751196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131128 n + (A131128 n - A083329 n)

end

end A154251.P2972925772649751196

namespace A154251

/-- `A131128(n)+A131128(n)-A083329(n)` -/
def P2972925772649751196.Spec : Prop :=
  ∀ n, P2972925772649751196.a n = A154251 n

end A154251

/-!
# A154252: Expansion of (1-x+8x^2)/((1-x)(1-2x)) .

The programs for A154252, the canonical program `A154252.P7940482620804903077` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154252 has offset 0).

The definition of A154252 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+8x^2)/(1-3x+2x^2))` (program `A154252.P7940482620804903077`, by `A154252.P7940482620804903077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154252.P7940482620804903077

`ogf((1-x+8x^2)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154252

/-- `ogf((1-x+8x^2)/(1-3x+2x^2))` -/
def P7940482620804903077.Spec : Prop :=
  ∀ n, P7940482620804903077.a n = A154252 n

theorem P7940482620804903077.correct : P7940482620804903077.Spec := by
  intro n
  simp only [A154252]

end A154252

/-! ## A154252.P18379296146404230902

`2*a(n-1)+8` with `a(0)=1, a(1)=2`
-/

namespace A154252.P18379296146404230902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + 8

end

end A154252.P18379296146404230902

namespace A154252

/-- `2*a(n-1)+8` -/
def P18379296146404230902.Spec : Prop :=
  ∀ n, (P18379296146404230902.a n : ℤ) = A154252 n

end A154252

/-! ## A154252.P17931129423222210346

`∑[2*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=10`
-/

namespace A154252.P17931129423222210346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 10] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154252.P17931129423222210346

namespace A154252

/-- `∑[2*a(n-1)]` -/
def P17931129423222210346.Spec : Prop :=
  ∀ n, (P17931129423222210346.a n : ℤ) = A154252 n

end A154252

/-! ## A154252.P138595517358440504

`a(n-1)+a(n-1)+8` with `a(0)=1, a(1)=2`
-/

namespace A154252.P138595517358440504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + 8)

end

end A154252.P138595517358440504

namespace A154252

/-- `a(n-1)+a(n-1)+8` -/
def P138595517358440504.Spec : Prop :=
  ∀ n, (P138595517358440504.a n : ℤ) = A154252 n

end A154252

/-! ## A154252.P499698006612319022

`4*(3-(2-a(n-1))/2)` with `a(0)=1, a(1)=2`
-/

namespace A154252.P499698006612319022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * (3 - (2 - a (n - 1)) / 2)

end

end A154252.P499698006612319022

namespace A154252

/-- `4*(3-(2-a(n-1))/2)` -/
def P499698006612319022.Spec : Prop :=
  ∀ n, P499698006612319022.a n = (A154252 n : ℚ)

end A154252

/-! ## A154252.P13687299523213500727

`abs(3-abs(3-A134062(n)))`
-/

namespace A154252.P13687299523213500727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(3 - |3 - A134062 n|)|

end

end A154252.P13687299523213500727

namespace A154252

/-- `abs(3-abs(3-A134062(n)))` -/
def P13687299523213500727.Spec : Prop :=
  ∀ n, P13687299523213500727.a n = A154252 n

end A154252

/-! ## A154252.P772399300886509532

`abs(2-5*A000225(n))-1`
-/

namespace A154252.P772399300886509532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 5 * A000225 n| - 1

end

end A154252.P772399300886509532

namespace A154252

/-- `abs(2-5*A000225(n))-1` -/
def P772399300886509532.Spec : Prop :=
  ∀ n, P772399300886509532.a n = A154252 n

end A154252

/-! ## A154252.P7257937001010196254

`A146523(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154252.P7257937001010196254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A146523 n + a (n - 1)

end

end A154252.P7257937001010196254

namespace A154252

/-- `A146523(n)+a(n-1)` -/
def P7257937001010196254.Spec : Prop :=
  ∀ n, P7257937001010196254.a n = A154252 n

end A154252

/-! ## A154252.P9870281778887124787

`A084215(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154252.P9870281778887124787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A084215 (n + 1) + a (n - 1)

end

end A154252.P9870281778887124787

namespace A154252

/-- `A084215(n+1)+a(n-1)` -/
def P9870281778887124787.Spec : Prop :=
  ∀ n, P9870281778887124787.a n = A154252 n

end A154252

/-! ## A154252.P4308634038090753731

`A020714(n-1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154252.P4308634038090753731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020714 (n - 1) + a (n - 1)

end

end A154252.P4308634038090753731

namespace A154252

/-- `A020714(n-1)+a(n-1)` -/
def P4308634038090753731.Spec : Prop :=
  ∀ n, P4308634038090753731.a n = A154252 n

end A154252

/-! ## A154252.P6945988939507743180

`A164143(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154252.P6945988939507743180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A164143 (n + 2) + a (n - 1)

end

end A154252.P6945988939507743180

namespace A154252

/-- `A164143(n+2)+a(n-1)` -/
def P6945988939507743180.Spec : Prop :=
  ∀ n, P6945988939507743180.a n = A154252 n

end A154252

/-! ## A154252.P1155099600276886024

`A257113(n+2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A154252.P1155099600276886024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A257113 (n + 2) + a (n - 1)

end

end A154252.P1155099600276886024

namespace A154252

/-- `A257113(n+2)+a(n-1)` -/
def P1155099600276886024.Spec : Prop :=
  ∀ n, P1155099600276886024.a n = A154252 n

end A154252

/-! ## A154252.P8502599261822425251

`A020714(n)-A040012(n)`
-/

namespace A154252.P8502599261822425251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020714 n - A040012 n

end

end A154252.P8502599261822425251

namespace A154252

/-- `A020714(n)-A040012(n)` -/
def P8502599261822425251.Spec : Prop :=
  ∀ n, P8502599261822425251.a n = A154252 n

end A154252

/-! ## A154252.P14511047011338028592

`2*A131128(n)-A000079(n)`
-/

namespace A154252.P14511047011338028592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131128 n - A000079 n

end

end A154252.P14511047011338028592

namespace A154252

/-- `2*A131128(n)-A000079(n)` -/
def P14511047011338028592.Spec : Prop :=
  ∀ n, P14511047011338028592.a n = A154252 n

end A154252

/-! ## A154252.P8910352162283453142

`2*A154118(n)-A095121(n)`
-/

namespace A154252.P8910352162283453142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154118 n - A095121 n

end

end A154252.P8910352162283453142

namespace A154252

/-- `2*A154118(n)-A095121(n)` -/
def P8910352162283453142.Spec : Prop :=
  ∀ n, P8910352162283453142.a n = A154252 n

end A154252

/-! ## A154252.P17907744859842927889

`2*A131130(n)-A131128(n)`
-/

namespace A154252.P17907744859842927889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131130 n - A131128 n

end

end A154252.P17907744859842927889

namespace A154252

/-- `2*A131130(n)-A131128(n)` -/
def P17907744859842927889.Spec : Prop :=
  ∀ n, P17907744859842927889.a n = A154252 n

end A154252

/-! ## A154252.P15998550123503964574

`2*A154251(n)-A131130(n)`
-/

namespace A154252.P15998550123503964574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154251 n - A131130 n

end

end A154252.P15998550123503964574

namespace A154252

/-- `2*A154251(n)-A131130(n)` -/
def P15998550123503964574.Spec : Prop :=
  ∀ n, P15998550123503964574.a n = A154252 n

end A154252

/-! ## A154252.P14888277527297613989

`∑[A132479(n)]-2*A055010(n)`
-/

namespace A154252.P14888277527297613989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132479 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A055010 n

end

end A154252.P14888277527297613989

namespace A154252

/-- `∑[A132479(n)]-2*A055010(n)` -/
def P14888277527297613989.Spec : Prop :=
  ∀ n, P14888277527297613989.a n = A154252 n

end A154252

/-! ## A154252.P4118149790158367746

`A095121(n)+A131130(n)-A000079(n)`
-/

namespace A154252.P4118149790158367746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (A131130 n - A000079 n)

end

end A154252.P4118149790158367746

namespace A154252

/-- `A095121(n)+A131130(n)-A000079(n)` -/
def P4118149790158367746.Spec : Prop :=
  ∀ n, P4118149790158367746.a n = A154252 n

end A154252

/-!
# A154253: Primes of the form 9n^2-8n+2.

The programs for A154253, there is no canonical definition to state claims against.
-/

/-! ## A154253.P1946361397648705394

`p?[n*(9*n-8)+2]`
-/

namespace A154253.P1946361397648705394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((9 * n : ℤ) - 8) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154253.P1946361397648705394

/-! ## A154253.P4430953670360811705

`or(2, p?[or(2, n*(9*n-8))])`
-/

namespace A154253.P4430953670360811705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) * ((9 * n : ℤ) - 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154253.P4430953670360811705

/-! ## A154253.P5040084619499777243

`and(p?[xor(2, n*(9*n-8))], -1)`
-/

namespace A154253.P5040084619499777243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) * ((9 * n : ℤ) - 8))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (-1)

end

end A154253.P5040084619499777243

/-!
# A154254: a(n) = 9*n^2 - 8*n + 2.

The programs for A154254, the canonical program `A154254.P71931021741422176` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154254 has offset 0).

The definition of A154254 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n²-8*n+2` (program `A154254.P71931021741422176`, by `A154254.P71931021741422176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154254.P71931021741422176

`9*n²-8*n+2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154254

/-- `9*n²-8*n+2` -/
def P71931021741422176.Spec : Prop :=
  ∀ n, P71931021741422176.a n = A154254 n

theorem P71931021741422176.correct : P71931021741422176.Spec := by
  intro n
  simp only [A154254]

end A154254

/-! ## A154254.P11713614228451832711

`∑[a(n-1)+18]` with `a(0)=2, a(1)=1`
-/

namespace A154254.P11713614228451832711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154254.P11713614228451832711

namespace A154254

/-- `∑[a(n-1)+18]` -/
def P11713614228451832711.Spec : Prop :=
  ∀ n, (P11713614228451832711.a n : ℤ) = A154254 n

end A154254

/-! ## A154254.P12050907150589735369

`or(2, n*(9*n-8))`
-/

namespace A154254.P12050907150589735369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) * ((9 * n : ℤ) - 8))

end

end A154254.P12050907150589735369

namespace A154254

/-- `or(2, n*(9*n-8))` -/
def P12050907150589735369.Spec : Prop :=
  ∀ n, P12050907150589735369.a n = A154254 n

end A154254

/-! ## A154254.P3444963551361511647

`xor(2, n*(9*n-8))`
-/

namespace A154254.P3444963551361511647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) * ((9 * n : ℤ) - 8))

end

end A154254.P3444963551361511647

namespace A154254

/-- `xor(2, n*(9*n-8))` -/
def P3444963551361511647.Spec : Prop :=
  ∀ n, P3444963551361511647.a n = A154254 n

end A154254

/-! ## A154254.P1525337298157585591

`A083196(n)%A100214(n)`
-/

namespace A154254.P1525337298157585591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083196 n) (A100214 n)

end

end A154254.P1525337298157585591

namespace A154254

/-- `A083196(n)%A100214(n)` -/
def P1525337298157585591.Spec : Prop :=
  ∀ n, P1525337298157585591.a n = A154254 n

end A154254

/-! ## A154254.P1504945227689327449

`A304381(n+1)%A157872(n+1)`
-/

namespace A154254.P1504945227689327449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304381 (n + 1)) (A157872 (n + 1))

end

end A154254.P1504945227689327449

namespace A154254

/-- `A304381(n+1)%A157872(n+1)` -/
def P1504945227689327449.Spec : Prop :=
  ∀ n, P1504945227689327449.a n = A154254 n

end A154254

/-! ## A154254.P18074565932938221863

`(A051872(n)+2)%∑[A033487(n+1)]`
-/

namespace A154254.P18074565932938221863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051872 n + 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154254.P18074565932938221863

namespace A154254

/-- `(A051872(n)+2)%∑[A033487(n+1)]` -/
def P18074565932938221863.Spec : Prop :=
  ∀ n, P18074565932938221863.a n = A154254 n

end A154254

/-! ## A154254.P8085612356919712630

`record[2-A266087(n)]`
-/

namespace A154254.P8085612356919712630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A266087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154254.P8085612356919712630

namespace A154254

/-- `record[2-A266087(n)]` -/
def P8085612356919712630.Spec : Prop :=
  ∀ n, P8085612356919712630.a n = A154254 n

end A154254

/-!
# A154255: Floor of harmonic energy of the conjectural minimal-energy configurations of n points on the unit sphere in R^4, under the harmonic potential function.

The programs for A154255, there is no canonical definition to state claims against.
-/

/-! ## A154255.P7625687160513647146

`A156022(A328617(n+2))-A328617(n+2)`
-/

namespace A154255.P7625687160513647146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156022 (A328617 (n + 2)).toNat - A328617 (n + 2)

end

end A154255.P7625687160513647146

/-! ## A154255.P5333404379967369885

`∑[∑[A079559(A219528(2*n+3))]]`
-/

namespace A154255.P5333404379967369885
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 (A219528 (2 * n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154255.P5333404379967369885

/-! ## A154255.P4927328568343951928

`∑[∑[A005614(A008610(3*n))]]`
-/

namespace A154255.P4927328568343951928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A008610 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154255.P4927328568343951928

/-! ## A154255.P4164579760391945193

`A000096(n)-A118759(∑[A084510(n)])`
-/

namespace A154255.P4164579760391945193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A118759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154255.P4164579760391945193

/-! ## A154255.P1400545120401495965

`∑[A000523(A018145(n))]`
-/

namespace A154255.P1400545120401495965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A018145 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154255.P1400545120401495965

/-!
# A154256: Coefficients of x^n in the (n-1)-th iterations of x*(1+x)^2 for n>=1.

The programs for A154256, there is no canonical definition to state claims against.
-/

/-! ## A154256.P9726267010156222477

`A382357(2^∑[n])`
-/

namespace A154256.P9726267010156222477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382357 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A154256.P9726267010156222477

/-!
# A154257: Number of triples <p,s,t> such that p+F_s+F_t=n, where p is an odd prime, s and t are greater than one and the Fibonacci number F_s or F_t is odd.

The programs for A154257, there is no canonical definition to state claims against.
-/

/-! ## A154257.P4783080331197189398

`(n%2+1)*A144559(n+1)`
-/

namespace A154257.P4783080331197189398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A144559 (n + 1)

end

end A154257.P4783080331197189398

/-! ## A154257.P7543531430157472606

`A000034(n)*A144559(n+1)`
-/

namespace A154257.P7543531430157472606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A144559 (n + 1)

end

end A154257.P7543531430157472606

/-! ## A154257.P14392555150311300672

`A084642(n)*A144559(n+1)`
-/

namespace A154257.P14392555150311300672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n * A144559 (n + 1)

end

end A154257.P14392555150311300672

/-! ## A154257.P11193925710249011599

`log2(A106469(n))*A144559(n+1)`
-/

namespace A154257.P11193925710249011599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A106469 n : ℝ) * (A144559 (n + 1) : ℝ)

end

end A154257.P11193925710249011599

/-! ## A154257.P1599771904744130532

`A010673(n)!*A144559(n+1)`
-/

namespace A154257.P1599771904744130532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A010673 n).toNat : ℤ) * A144559 (n + 1)

end

end A154257.P1599771904744130532

/-! ## A154257.P14041332340522249877

`∑[A165326(n)]*A144559(n+1)`
-/

namespace A154257.P14041332340522249877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A144559 (n + 1)

end

end A154257.P14041332340522249877

/-! ## A154257.P17474738394344407534

`Δ[A032766(n)]*A144559(n+1)`
-/

namespace A154257.P17474738394344407534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A144559 (n + 1)

end

end A154257.P17474738394344407534

/-! ## A154257.P5514239955499377533

`(A000035(n)+1)*A144559(n+1)`
-/

namespace A154257.P5514239955499377533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A144559 (n + 1)

end

end A154257.P5514239955499377533

/-! ## A154257.P7383459591500673631

`A144559(n+1)*A289203(n+1)`
-/

namespace A154257.P7383459591500673631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144559 (n + 1) * A289203 (n + 1)

end

end A154257.P7383459591500673631

/-! ## A154257.P17728271479889993877

`(A014963(4*n+2)+and(1, n))*A144559(n+1)`
-/

namespace A154257.P17728271479889993877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014963 (4 * n + 2) + (Nat.land 1 n : ℤ)) * A144559 (n + 1)

end

end A154257.P17728271479889993877

/-!
# A154258: Number of triples <p,s,t> such that p+F_s+(F_t)^2=n, where p is an odd prime, s and t are greater than one and the Fibonacci number F_s or F_t is odd.

The programs for A154258, there is no canonical definition to state claims against.
-/

/-! ## A154258.P6973099635782900432

`A153246(A325098(n))+floor((n+1)/5)`
-/

namespace A154258.P6973099635782900432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153246 (A325098 n).toNat + ⌊(n + 1 : ℚ) / 5⌋

end

end A154258.P6973099635782900432

/-! ## A154258.P14743067740035066936

`A297032(A001405(n)-A002262(n))`
-/

namespace A154258.P14743067740035066936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A001405 n - A002262 n).toNat

end

end A154258.P14743067740035066936

/-! ## A154258.P16564039200379732522

`A297032(A178381(n)-A080791(n))`
-/

namespace A154258.P16564039200379732522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (A178381 n - A080791 n).toNat

end

end A154258.P16564039200379732522

/-! ## A154258.P5274752917636767303

`A280737(A341531(n)-A102283(n))`
-/

namespace A154258.P5274752917636767303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A341531 n - A102283 n).toNat

end

end A154258.P5274752917636767303

/-! ## A154258.P4565342658134893235

`A297032(xor(A001405(n), A002262(n)))`
-/

namespace A154258.P4565342658134893235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297032 (Int.xor (A001405 n) (A002262 n)).toNat

end

end A154258.P4565342658134893235

/-!
# A154259: G.f. A(x) satisfies: A(x) = x + 2*x*A(x) + 3*x^2*A(A(x)) + 4*x^3*A(A(A(x))) +...

The programs for A154259, there is no canonical definition to state claims against.
-/

/-! ## A154259.P1270573814903957144

`A004001(floor(3/acot(n))*A177523(n))`
-/

namespace A154259.P1270573814903957144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ * A177523 n).toNat

end

end A154259.P1270573814903957144

/-!
# A154260: Numbers of the form m*(4*m +- 1)/2.

The programs for A154260, the canonical program `A154260.P17665440724842337137` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154260 has offset 1).

The definition of A154260 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154260.P17665440724842337137

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=7, a(2)=9, a(3)=30, a(4)=34`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154260

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P17665440724842337137.Spec : Prop :=
  ∀ n, P17665440724842337137.a n = A154260 (n + 1)

theorem P17665440724842337137.correct : P17665440724842337137.Spec := by
  intro n
  simp only [A154260, Nat.add_sub_cancel]

end A154260

/-! ## A154260.P4515411554729769062

`1/4*(8*(n+1)²+6*(-1)^(n+1)*(n+1)-8*(n+1)-3*(-1)^(n+1)+3)`
-/

namespace A154260.P4515411554729769062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * ((8 * (n + 1) ^ 2 : ℤ) + 6 * (-1) ^ (n + 1) * (n + 1 : ℤ) - (8 * (n + 1) : ℤ) - 3 * (-1) ^ (n + 1) + 3 : ℚ)

end

end A154260.P4515411554729769062

namespace A154260

/-- `1/4*(8*(n+1)²+6*(-1)^(n+1)*(n+1)-8*(n+1)-3*(-1)^(n+1)+3)` -/
def P4515411554729769062.Spec : Prop :=
  ∀ n, P4515411554729769062.a n = (A154260 (n + 1) : ℚ)

theorem P4515411554729769062.correct : P4515411554729769062.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A154260, Nat.add_sub_cancel, A154260.P4515411554729769062.a, A154260.P17665440724842337137.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A154260, Nat.add_sub_cancel, A154260.P4515411554729769062.a, A154260.P17665440724842337137.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A154260

/-! ## A154260.P14598826316989605723

`∑[n*7^(n%2)]`
-/

namespace A154260.P14598826316989605723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154260.P14598826316989605723

namespace A154260

/-- `∑[n*7^(n%2)]` -/
def P14598826316989605723.Spec : Prop :=
  ∀ n, (P14598826316989605723.a n : ℤ) = A154260 (n + 1)

end A154260

/-! ## A154260.P14469017748258806448

`∑[n*gcd(7, (n+1)%2)]`
-/

namespace A154260.P14469017748258806448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 7 ((n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154260.P14469017748258806448

namespace A154260

/-- `∑[n*gcd(7, (n+1)%2)]` -/
def P14469017748258806448.Spec : Prop :=
  ∀ n, (P14469017748258806448.a n : ℤ) = A154260 (n + 1)

end A154260

/-! ## A154260.P4359269565016611489

`∑[n*(12/gcd(2, n)-5)]`
-/

namespace A154260.P4359269565016611489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (12 / (Nat.gcd 2 n : ℚ) - 5)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154260.P4359269565016611489

namespace A154260

/-- `∑[n*(12/gcd(2, n)-5)]` -/
def P4359269565016611489.Spec : Prop :=
  ∀ n, P4359269565016611489.a n = (A154260 (n + 1) : ℚ)

end A154260

/-! ## A154260.P1708238853323073783

`A132356(n)-∑[n]`
-/

namespace A154260.P1708238853323073783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132356 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154260.P1708238853323073783

namespace A154260

/-- `A132356(n)-∑[n]` -/
def P1708238853323073783.Spec : Prop :=
  ∀ n, P1708238853323073783.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P10299252492917299397

`∑[n*A010688(n)]`
-/

namespace A154260.P10299252492917299397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154260.P10299252492917299397

namespace A154260

/-- `∑[n*A010688(n)]` -/
def P10299252492917299397.Spec : Prop :=
  ∀ n, P10299252492917299397.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P1385929024519897888

`2*A219190(n+1)-∑[n]`
-/

namespace A154260.P1385929024519897888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219190 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154260.P1385929024519897888

namespace A154260

/-- `2*A219190(n+1)-∑[n]` -/
def P1385929024519897888.Spec : Prop :=
  ∀ n, P1385929024519897888.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P4002191906000768928

`A274757(n+1)-∑[2*n]`
-/

namespace A154260.P4002191906000768928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274757 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154260.P4002191906000768928

namespace A154260

/-- `A274757(n+1)-∑[2*n]` -/
def P4002191906000768928.Spec : Prop :=
  ∀ n, P4002191906000768928.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P3473612225736080786

`A014494(n)+A001057(n)`
-/

namespace A154260.P3473612225736080786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n + A001057 n

end

end A154260.P3473612225736080786

namespace A154260

/-- `A014494(n)+A001057(n)` -/
def P3473612225736080786.Spec : Prop :=
  ∀ n, P3473612225736080786.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P15930750477695186869

`A014494(n)-A130472(n)`
-/

namespace A154260.P15930750477695186869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n - A130472 n

end

end A154260.P15930750477695186869

namespace A154260

/-- `A014494(n)-A130472(n)` -/
def P15930750477695186869.Spec : Prop :=
  ∀ n, P15930750477695186869.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P13824069717461058504

`A298037(n)-A005891(n)`
-/

namespace A154260.P13824069717461058504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 n - A005891 n

end

end A154260.P13824069717461058504

namespace A154260

/-- `A298037(n)-A005891(n)` -/
def P13824069717461058504.Spec : Prop :=
  ∀ n, P13824069717461058504.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P916448520206225962

`A213399(n)-A157142(n)`
-/

namespace A154260.P916448520206225962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213399 n - A157142 n

end

end A154260.P916448520206225962

namespace A154260

/-- `A213399(n)-A157142(n)` -/
def P916448520206225962.Spec : Prop :=
  ∀ n, P916448520206225962.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P15870006044652632720

`∪[A139274(n), A139275(n)]`
-/

namespace A154260.P15870006044652632720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A154260.P15870006044652632720

namespace A154260

/-- `∪[A139274(n), A139275(n)]` -/
def P15870006044652632720.Spec : Prop :=
  ∀ n, (P15870006044652632720.a n : ℤ) = A154260 (n + 1)

end A154260

/-! ## A154260.P3517205212724061332

`A132355(n+1)-A110660(n)`
-/

namespace A154260.P3517205212724061332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132355 (n + 1) - A110660 n

end

end A154260.P3517205212724061332

namespace A154260

/-- `A132355(n+1)-A110660(n)` -/
def P3517205212724061332.Spec : Prop :=
  ∀ n, P3517205212724061332.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P17724846216442062843

`A033996(n)-A274979(n+1)`
-/

namespace A154260.P17724846216442062843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033996 n - A274979 (n + 1)

end

end A154260.P17724846216442062843

namespace A154260

/-- `A033996(n)-A274979(n+1)` -/
def P17724846216442062843.Spec : Prop :=
  ∀ n, P17724846216442062843.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P18434588387412526953

`A060544(n+1)-A273367(n)`
-/

namespace A154260.P18434588387412526953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - A273367 n

end

end A154260.P18434588387412526953

namespace A154260

/-- `A060544(n+1)-A273367(n)` -/
def P18434588387412526953.Spec : Prop :=
  ∀ n, P18434588387412526953.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P7506832513163565545

`A069126(n+1)-A298039(n)`
-/

namespace A154260.P7506832513163565545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1) - A298039 n

end

end A154260.P7506832513163565545

namespace A154260

/-- `A069126(n+1)-A298039(n)` -/
def P7506832513163565545.Spec : Prop :=
  ∀ n, P7506832513163565545.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P9020727367864290650

`A219257(n+1)-A152749(n)`
-/

namespace A154260.P9020727367864290650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219257 (n + 1) - A152749 n

end

end A154260.P9020727367864290650

namespace A154260

/-- `A219257(n+1)-A152749(n)` -/
def P9020727367864290650.Spec : Prop :=
  ∀ n, P9020727367864290650.a n = A154260 (n + 1)

end A154260

/-! ## A154260.P6422094915422555607

`A219394(n+1)-A394829(n)`
-/

namespace A154260.P6422094915422555607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 1) - A394829 n

end

end A154260.P6422094915422555607

namespace A154260

/-- `A219394(n+1)-A394829(n)` -/
def P6422094915422555607.Spec : Prop :=
  ∀ n, P6422094915422555607.a n = A154260 (n + 1)

end A154260

/-!
# A154261: Primes of the form 9*k^2-10*k+3.

The programs for A154261, there is no canonical definition to state claims against.
-/

/-! ## A154261.P1104644812787625433

`A154262(A154264(n+1))`
-/

namespace A154261.P1104644812787625433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 (A154264 (n + 1)).toNat

end

end A154261.P1104644812787625433

/-! ## A154261.P11427524293224861873

`p?[n*(9*n-10)+3]`
-/

namespace A154261.P11427524293224861873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((9 * n : ℤ) - 10) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154261.P11427524293224861873

/-! ## A154261.P5887171895055389702

`or(2, p?[A154262(n)])`
-/

namespace A154261.P5887171895055389702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154261.P5887171895055389702

/-! ## A154261.P3218966974811889427

`or(2, p?[ceil(A154295(n)/9)])`
-/

namespace A154261.P3218966974811889427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154295 n : ℚ) / 9⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154261.P3218966974811889427

/-! ## A154261.P7394443987922799098

`or(2, p?[abs(3-A211615(n)+n)])`
-/

namespace A154261.P7394443987922799098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A211615 n + (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A154261.P7394443987922799098

/-! ## A154261.P5359435049563315689

`p?[A154262(n)]%A017572(n)`
-/

namespace A154261.P5359435049563315689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A017572 n)

end

end A154261.P5359435049563315689

/-! ## A154261.P4065576811709566719

`A007318(∑[n])*p?[A154262(n)]`
-/

namespace A154261.P4065576811709566719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A154261.P4065576811709566719

/-! ## A154261.P3325817299706148577

`A000007(n+1)+p?[A154262(n)]`
-/

namespace A154261.P3325817299706148577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154261.P3325817299706148577

/-! ## A154261.P7062267971947577437

`A000038(n+1)+p?[A154262(n)]`
-/

namespace A154261.P7062267971947577437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154261.P7062267971947577437

/-!
# A154262: a(n) = 9*n^2 - 10*n + 3.

The programs for A154262, the canonical program `A154262.P1239749638421269599` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154262 has offset 0).

The definition of A154262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*n²-10*n+3` (program `A154262.P1239749638421269599`, by `A154262.P1239749638421269599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154262.P1239749638421269599

`9*n²-10*n+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154262

/-- `9*n²-10*n+3` -/
def P1239749638421269599.Spec : Prop :=
  ∀ n, P1239749638421269599.a n = A154262 n

theorem P1239749638421269599.correct : P1239749638421269599.Spec := by
  intro n
  simp only [A154262]

end A154262

/-! ## A154262.P5676776221852823037

`∑[a(n-1)+18]` with `a(0)=3, a(1)=-1`
-/

namespace A154262.P5676776221852823037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, -1] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154262.P5676776221852823037

namespace A154262

/-- `∑[a(n-1)+18]` -/
def P5676776221852823037.Spec : Prop :=
  ∀ n, P5676776221852823037.a n = A154262 n

end A154262

/-! ## A154262.P4551042408680500231

`abs(or(1, 18*C(n, 2))-(n-2))`
-/

namespace A154262.P4551042408680500231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (18 * Nat.choose n 2) : ℤ) - ((n : ℤ) - 2)|

end

end A154262.P4551042408680500231

namespace A154262

/-- `abs(or(1, 18*C(n, 2))-(n-2))` -/
def P4551042408680500231.Spec : Prop :=
  ∀ n, P4551042408680500231.a n = A154262 n

end A154262

/-! ## A154262.P14068664554101699107

`ceil(A154295(n)/9)`
-/

namespace A154262.P14068664554101699107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A154295 n : ℚ) / 9⌉

end

end A154262.P14068664554101699107

namespace A154262

/-- `ceil(A154295(n)/9)` -/
def P14068664554101699107.Spec : Prop :=
  ∀ n, P14068664554101699107.a n = A154262 n

end A154262

/-! ## A154262.P13094628313960785905

`abs(3-A211615(n)+n)`
-/

namespace A154262.P13094628313960785905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A211615 n + (n : ℤ)|

end

end A154262.P13094628313960785905

namespace A154262

/-- `abs(3-A211615(n)+n)` -/
def P13094628313960785905.Spec : Prop :=
  ∀ n, P13094628313960785905.a n = A154262 n

end A154262

/-! ## A154262.P6263390639929006337

`abs(A005843(n)-(A051872(n)+3))`
-/

namespace A154262.P6263390639929006337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 n - (A051872 n + 3)|

end

end A154262.P6263390639929006337

namespace A154262

/-- `abs(A005843(n)-(A051872(n)+3))` -/
def P6263390639929006337.Spec : Prop :=
  ∀ n, P6263390639929006337.a n = A154262 n

end A154262

/-! ## A154262.P5860346764751733682

`abs(A086640(n+1)-3-A103214(n))`
-/

namespace A154262.P5860346764751733682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086640 (n + 1) - 3 - A103214 n|

end

end A154262.P5860346764751733682

namespace A154262

/-- `abs(A086640(n+1)-3-A103214(n))` -/
def P5860346764751733682.Spec : Prop :=
  ∀ n, P5860346764751733682.a n = A154262 n

end A154262

/-! ## A154262.P2517740149214550708

`A000027(A154254(n)-(2*n-1))`
-/

namespace A154262.P2517740149214550708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A154254 n - ((2 * n : ℤ) - 1)).toNat

end

end A154262.P2517740149214550708

namespace A154262

/-- `A000027(A154254(n)-(2*n-1))` -/
def P2517740149214550708.Spec : Prop :=
  ∀ n, P2517740149214550708.a n = A154262 n

end A154262

/-!
# A154263: Number of triples <p, s,t> such that p+F_s+(F_t)^3=n, where p is an odd prime, s and t are greater than one and F_s or F_t is odd.

The programs for A154263, there is no canonical definition to state claims against.
-/

/-! ## A154263.P12248893135270077242

`A139352(xor(A030298(n+1), A045925(n)))`
-/

namespace A154263.P12248893135270077242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Int.xor (A030298 (n + 1)) (A045925 n)).toNat

end

end A154263.P12248893135270077242

/-!
# A154264: Nonnegative numbers n such that 9*n^2 - 10*n + 3 is prime.

The programs for A154264, there is no canonical definition to state claims against.
-/

/-! ## A154264.P9067273152561821806

`eq[1, A001221(n*(9*n-10)+3)]`
-/

namespace A154264.P9067273152561821806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n : ℤ) * ((9 * n : ℤ) - 10) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154264.P9067273152561821806

/-! ## A154264.P4088974906508248549

`eq[1, A001222(n*(9*n-10)+3)]`
-/

namespace A154264.P4088974906508248549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * ((9 * n : ℤ) - 10) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154264.P4088974906508248549

/-! ## A154264.P8607286085150522077

`eq[2, A000005(n*(9*n-10)+3)]`
-/

namespace A154264.P8607286085150522077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * ((9 * n : ℤ) - 10) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154264.P8607286085150522077

/-! ## A154264.P13213179825148497007

`lt[n², A020639((3*n)²-10*n+3)]`
-/

namespace A154264.P13213179825148497007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((3 * n) ^ 2 : ℤ) - (10 * n : ℤ) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A154264.P13213179825148497007

/-! ## A154264.P5983207741562787710

`eq[n*(9*n-10)+3, A006530(n*(9*n-10)+3)]`
-/

namespace A154264.P5983207741562787710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((9 * n : ℤ) - 10) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n : ℤ) * ((9 * n : ℤ) - 10) + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A154264.P5983207741562787710

/-!
# A154266: a(n) = 27*n + 12.

The programs for A154266, the canonical program `A154266.P6416471385405928647` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154266 has offset 0).

The definition of A154266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*n+12` (program `A154266.P6416471385405928647`, by `A154266.P6416471385405928647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154266.P6416471385405928647

`27*n+12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154266

/-- `27*n+12` -/
def P6416471385405928647.Spec : Prop :=
  ∀ n, (P6416471385405928647.a n : ℤ) = A154266 n

theorem P6416471385405928647.correct : P6416471385405928647.Spec := by
  intro n
  simp only [A154266]

end A154266

/-!
# A154267: a(n) = 27*n + 15.

The programs for A154267, the canonical program `A154267.P12447157063750521671` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154267 has offset 0).

The definition of A154267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*n+15` (program `A154267.P12447157063750521671`, by `A154267.P12447157063750521671.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154267.P12447157063750521671

`27*n+15`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154267

/-- `27*n+15` -/
def P12447157063750521671.Spec : Prop :=
  ∀ n, (P12447157063750521671.a n : ℤ) = A154267 n

theorem P12447157063750521671.correct : P12447157063750521671.Spec := by
  intro n
  simp only [A154267]

end A154267

/-!
# A154268: Ratios of consecutive denominators of Stirling's expansion for the Gamma function.

The programs for A154268, there is no canonical definition to state claims against.
-/

/-! ## A154268.P1196605353634669152

`lcm(2, floor(ratio[A001164(n)]))`
-/

namespace A154268.P1196605353634669152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A154268.P1196605353634669152

/-! ## A154268.P16544338715598514957

`ratio[lcm(A000142(n), A001164(n))]`
-/

namespace A154268.P16544338715598514957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 n) (A001164 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A154268.P16544338715598514957

/-! ## A154268.P8530102342200456857

`A144618(n+1)/(2*A144618(n))`
-/

namespace A154268.P8530102342200456857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144618 (n + 1) : ℚ) / (2 * A144618 n : ℚ)

end

end A154268.P8530102342200456857

/-! ## A154268.P2436628301382089551

`A001164(A153679(n+1))/A001164(n)`
-/

namespace A154268.P2436628301382089551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001164 (A153679 (n + 1)).toNat : ℚ) / (A001164 n : ℚ)

end

end A154268.P2436628301382089551

/-! ## A154268.P4592953343037755589

`ratio[A001164(n)%Δ[A317796(n)]]`
-/

namespace A154268.P4592953343037755589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317796 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001164 n) (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A154268.P4592953343037755589

/-!
# A154269: Dirichlet inverse of A019590; Fully multiplicative with a(2^e) = (-1)^e, a(p^e) = 0 for odd primes p.

The programs for A154269, the canonical program `A154269.P18381323003966231025` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154269 has offset 1).

The definition of A154269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154269.P10053631330122251989

`Δ[ceil(log2(n+1))%2]`
-/

namespace A154269.P10053631330122251989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 1 : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154269.P10053631330122251989

namespace A154269

/-- `Δ[ceil(log2(n+1))%2]` -/
def P10053631330122251989.Spec : Prop :=
  ∀ n, P10053631330122251989.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P5288578388308219628

`Δ[and(1, ceil(log2(n+1)))]`
-/

namespace A154269.P5288578388308219628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154269.P5288578388308219628

namespace A154269

/-- `Δ[and(1, ceil(log2(n+1)))]` -/
def P5288578388308219628.Spec : Prop :=
  ∀ n, P5288578388308219628.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P2532597574203447410

`Δ[or(14, ceil(log2(n+1)))]`
-/

namespace A154269.P2532597574203447410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 14 ⌈Real.logb 2 (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154269.P2532597574203447410

namespace A154269

/-- `Δ[or(14, ceil(log2(n+1)))]` -/
def P2532597574203447410.Spec : Prop :=
  ∀ n, P2532597574203447410.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P1044451322306752132

`Δ[-and(1, ceil(log2(acot(n))))]`
-/

namespace A154269.P1044451322306752132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.land 1 ⌈Real.logb 2 (SequenceMachineLib.acot (n : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154269.P1044451322306752132

namespace A154269

/-- `Δ[-and(1, ceil(log2(acot(n))))]` -/
def P1044451322306752132.Spec : Prop :=
  ∀ n, P1044451322306752132.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P1809522175314899226

`Δ[2/a(floor(n/2))]` with `a(0)=1`
-/

namespace A154269.P1809522175314899226
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154269.P1809522175314899226

namespace A154269

/-- `Δ[2/a(floor(n/2))]` -/
def P1809522175314899226.Spec : Prop :=
  ∀ n, P1809522175314899226.a n = (A154269 (n + 1) : ℚ)

end A154269

/-! ## A154269.P18381323003966231025

`(gcd(2, n)-2)*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154269

/-- `(gcd(2, n)-2)*a(floor(n/2))` -/
def P18381323003966231025.Spec : Prop :=
  ∀ n, P18381323003966231025.a n = A154269 (n + 1)

theorem P18381323003966231025.correct : P18381323003966231025.Spec := by
  intro n
  simp only [A154269, Nat.add_sub_cancel]

end A154269

/-! ## A154269.P17565966605958576781

`A324335(n)%2`
-/

namespace A154269.P17565966605958576781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324335 n) 2

end

end A154269.P17565966605958576781

namespace A154269

/-- `A324335(n)%2` -/
def P17565966605958576781.Spec : Prop :=
  ∀ n, P17565966605958576781.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P5041111861730424145

`3-Δ[A022442(n)]`
-/

namespace A154269.P5041111861730424145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (f1 (n + 1) - f1 n)

end

end A154269.P5041111861730424145

namespace A154269

/-- `3-Δ[A022442(n)]` -/
def P5041111861730424145.Spec : Prop :=
  ∀ n, P5041111861730424145.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P6570592498566907540

`Δ[A022441(n)]-3`
-/

namespace A154269.P6570592498566907540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A154269.P6570592498566907540

namespace A154269

/-- `Δ[A022441(n)]-3` -/
def P6570592498566907540.Spec : Prop :=
  ∀ n, P6570592498566907540.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P15215578437469521023

`A304438(3*(n+1))`
-/

namespace A154269.P15215578437469521023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304438 (3 * (n + 1))

end

end A154269.P15215578437469521023

namespace A154269

/-- `A304438(3*(n+1))` -/
def P15215578437469521023.Spec : Prop :=
  ∀ n, P15215578437469521023.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P10378287857659756433

`A125131(n+1)%2`
-/

namespace A154269.P10378287857659756433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125131 (n + 1)) 2

end

end A154269.P10378287857659756433

namespace A154269

/-- `A125131(n+1)%2` -/
def P10378287857659756433.Spec : Prop :=
  ∀ n, P10378287857659756433.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P9081610664989049812

`A153038(n+1)%2`
-/

namespace A154269.P9081610664989049812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153038 (n + 1)) 2

end

end A154269.P9081610664989049812

namespace A154269

/-- `A153038(n+1)%2` -/
def P9081610664989049812.Spec : Prop :=
  ∀ n, P9081610664989049812.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P1567719021242163614

`A166589(n+1)%2`
-/

namespace A154269.P1567719021242163614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166589 (n + 1)) 2

end

end A154269.P1567719021242163614

namespace A154269

/-- `A166589(n+1)%2` -/
def P1567719021242163614.Spec : Prop :=
  ∀ n, P1567719021242163614.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P2536179944126069845

`A167313(n+1)%2`
-/

namespace A154269.P2536179944126069845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167313 (n + 1)) 2

end

end A154269.P2536179944126069845

namespace A154269

/-- `A167313(n+1)%2` -/
def P2536179944126069845.Spec : Prop :=
  ∀ n, P2536179944126069845.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P14040301625581189895

`A167315(n+1)%2`
-/

namespace A154269.P14040301625581189895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167315 (n + 1)) 2

end

end A154269.P14040301625581189895

namespace A154269

/-- `A167315(n+1)%2` -/
def P14040301625581189895.Spec : Prop :=
  ∀ n, P14040301625581189895.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P8639041989196736421

`A167317(n+1)%2`
-/

namespace A154269.P8639041989196736421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167317 (n + 1)) 2

end

end A154269.P8639041989196736421

namespace A154269

/-- `A167317(n+1)%2` -/
def P8639041989196736421.Spec : Prop :=
  ∀ n, P8639041989196736421.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P2993776930265088075

`A167319(n+1)%2`
-/

namespace A154269.P2993776930265088075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167319 (n + 1)) 2

end

end A154269.P2993776930265088075

namespace A154269

/-- `A167319(n+1)%2` -/
def P2993776930265088075.Spec : Prop :=
  ∀ n, P2993776930265088075.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P14964149718641333546

`A167347(n+1)%2`
-/

namespace A154269.P14964149718641333546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167347 (n + 1)) 2

end

end A154269.P14964149718641333546

namespace A154269

/-- `A167347(n+1)%2` -/
def P14964149718641333546.Spec : Prop :=
  ∀ n, P14964149718641333546.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P6912350193639838177

`A167352(n+1)%2`
-/

namespace A154269.P6912350193639838177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167352 (n + 1)) 2

end

end A154269.P6912350193639838177

namespace A154269

/-- `A167352(n+1)%2` -/
def P6912350193639838177.Spec : Prop :=
  ∀ n, P6912350193639838177.a n = A154269 (n + 1)

end A154269

/-! ## A154269.P11918999696657726699

`A167362(n+1)%2`
-/

namespace A154269.P11918999696657726699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167362 (n + 1)) 2

end

end A154269.P11918999696657726699

namespace A154269

/-- `A167362(n+1)%2` -/
def P11918999696657726699.Spec : Prop :=
  ∀ n, P11918999696657726699.a n = A154269 (n + 1)

end A154269

/-!
# A154270: Primes of the form XYX, where Y is a single digit.

The programs for A154270, the canonical program `A154270.P1666546014377292846` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154270 has offset 1).

The definition of A154270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154270.P1666546014377292846

`p?[floor(A020338(n+8)/10)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A154270

/-- `p?[floor(A020338(n+8)/10)]` -/
def P1666546014377292846.Spec : Prop :=
  ∀ n, P1666546014377292846.a n = A154270 (n + 1)

theorem P1666546014377292846.correct : P1666546014377292846.Spec := by
  intro n
  simp only [A154270, Nat.add_sub_cancel]

end A154270

/-!
# A154271: Dirichlet inverse of A154272; Fully multiplicative with a(3^e) = (-1)^e, a(p^e) = 0 for primes p <> 3.

The programs for A154271, the canonical program `A154271.P2223287504034096637` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154271 has offset 1).

The definition of A154271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154271.P12122260065351789474

`Δ[2/a(floor(n/3))]` with `a(0)=1`
-/

namespace A154271.P12122260065351789474
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 / f1 ⌊(n : ℚ) / 3⌋.toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P12122260065351789474

namespace A154271

/-- `Δ[2/a(floor(n/3))]` -/
def P12122260065351789474.Spec : Prop :=
  ∀ n, P12122260065351789474.a n = (A154271 (n + 1) : ℚ)

end A154271

/-! ## A154271.P12866410451111238240

`(-1)^∑[n]*char[3^n-1]`
-/

namespace A154271.P12866410451111238240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A154271.P12866410451111238240

namespace A154271

/-- `(-1)^∑[n]*char[3^n-1]` -/
def P12866410451111238240.Spec : Prop :=
  ∀ n, P12866410451111238240.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P14356914601720403583

`Δ[A274537(a(floor(n/3)))]` with `a(0)=0`
-/

namespace A154271.P14356914601720403583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A274537 (f1 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P14356914601720403583

namespace A154271

/-- `Δ[A274537(a(floor(n/3)))]` -/
def P14356914601720403583.Spec : Prop :=
  ∀ n, P14356914601720403583.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P6204353325021326136

`Δ[A006068(a(floor(n/3)))]` with `a(0)=2`
-/

namespace A154271.P6204353325021326136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A006068 (f1 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P6204353325021326136

namespace A154271

/-- `Δ[A006068(a(floor(n/3)))]` -/
def P6204353325021326136.Spec : Prop :=
  ∀ n, P6204353325021326136.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P4256416301245475600

`Δ[A130366(a(floor(n/3)))]` with `a(0)=2`
-/

namespace A154271.P4256416301245475600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A130366 (f1 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P4256416301245475600

namespace A154271

/-- `Δ[A130366(a(floor(n/3)))]` -/
def P4256416301245475600.Spec : Prop :=
  ∀ n, P4256416301245475600.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P3216019513590253853

`Δ[A204890(a(floor(n/3)))]` with `a(0)=2`
-/

namespace A154271.P3216019513590253853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A204890 (f1 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P3216019513590253853

namespace A154271

/-- `Δ[A204890(a(floor(n/3)))]` -/
def P3216019513590253853.Spec : Prop :=
  ∀ n, P3216019513590253853.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P9958255734926366075

`Δ[A054019(a(floor(n/3)))]` with `a(0)=3`
-/

namespace A154271.P9958255734926366075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A054019 (f1 ⌊(n : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P9958255734926366075

namespace A154271

/-- `Δ[A054019(a(floor(n/3)))]` -/
def P9958255734926366075.Spec : Prop :=
  ∀ n, P9958255734926366075.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P10449498388095773867

`floor(acot(2)+acot(A113421(n+1)))`
-/

namespace A154271.P10449498388095773867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (2 : ℝ) + SequenceMachineLib.acot (A113421 (n + 1) : ℝ)⌋

end

end A154271.P10449498388095773867

namespace A154271

/-- `floor(acot(2)+acot(A113421(n+1)))` -/
def P10449498388095773867.Spec : Prop :=
  ∀ n, P10449498388095773867.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P3256511789204015459

`A091337(A065332(n+1))`
-/

namespace A154271.P3256511789204015459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091337 (A065332 (n + 1)).toNat

end

end A154271.P3256511789204015459

namespace A154271

/-- `A091337(A065332(n+1))` -/
def P3256511789204015459.Spec : Prop :=
  ∀ n, P3256511789204015459.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P2223287504034096637

`Δ[A056832(a(A002264(n))+1)]` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A154271

/-- `Δ[A056832(a(A002264(n))+1)]` -/
def P2223287504034096637.Spec : Prop :=
  ∀ n, P2223287504034096637.a n = A154271 (n + 1)

theorem P2223287504034096637.correct : P2223287504034096637.Spec := by
  intro n
  simp only [A154271, Nat.add_sub_cancel]

end A154271

/-! ## A154271.P13585989401208465111

`round(A228826(n)/(A007947(n+1)+1))`
-/

namespace A154271.P13585989401208465111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A228826 n : ℚ) / (A007947 (n + 1) + 1 : ℚ))

end

end A154271.P13585989401208465111

namespace A154271

/-- `round(A228826(n)/(A007947(n+1)+1))` -/
def P13585989401208465111.Spec : Prop :=
  ∀ n, P13585989401208465111.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P9996621574418936662

`Δ[A029837(1-A081610(n)+n)%2]`
-/

namespace A154271.P9996621574418936662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029837 (1 - A081610 n + (n : ℤ)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154271.P9996621574418936662

namespace A154271

/-- `Δ[A029837(1-A081610(n)+n)%2]` -/
def P9996621574418936662.Spec : Prop :=
  ∀ n, P9996621574418936662.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P305190601304140026

`(A081604(n)-A081604(n+1))^∑[n]`
-/

namespace A154271.P305190601304140026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A081604 n - A081604 (n + 1)) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A154271.P305190601304140026

namespace A154271

/-- `(A081604(n)-A081604(n+1))^∑[n]` -/
def P305190601304140026.Spec : Prop :=
  ∀ n, P305190601304140026.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P15530341581060927317

`A165586((n+1)*∏{p}[n+1, A016232(#)²])`
-/

namespace A154271.P15530341581060927317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165586 ((n + 1 : ℤ) * (∏ p ∈ Nat.primeFactors (f1 n), A016232 p ^ 2)).toNat

end

end A154271.P15530341581060927317

namespace A154271

/-- `A165586((n+1)*∏{p}[n+1, A016232(#)²])` -/
def P15530341581060927317.Spec : Prop :=
  ∀ n, P15530341581060927317.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P18203629804892970045

`char[A024023(2*n)]-char[A024023(2*n+1)]`
-/

namespace A154271.P18203629804892970045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A154271.P18203629804892970045

namespace A154271

/-- `char[A024023(2*n)]-char[A024023(2*n+1)]` -/
def P18203629804892970045.Spec : Prop :=
  ∀ n, P18203629804892970045.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P13500240610190270096

`∑{d}[n+1, A008836(#)*A359377((n+1)/#)]`
-/

namespace A154271.P13500240610190270096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A359377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A154271.P13500240610190270096

namespace A154271

/-- `∑{d}[n+1, A008836(#)*A359377((n+1)/#)]` -/
def P13500240610190270096.Spec : Prop :=
  ∀ n, P13500240610190270096.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P5838303537288640594

`∑{d}[n+1, A166698(#)*A373154((n+1)/#)]`
-/

namespace A154271.P5838303537288640594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A166698 d * A373154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A154271.P5838303537288640594

namespace A154271

/-- `∑{d}[n+1, A166698(#)*A373154((n+1)/#)]` -/
def P5838303537288640594.Spec : Prop :=
  ∀ n, P5838303537288640594.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P17452606600370340224

`∑{d}[n+1, A359591(#)*A372574((n+1)/#)]`
-/

namespace A154271.P17452606600370340224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359591 d * A372574 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A154271.P17452606600370340224

namespace A154271

/-- `∑{d}[n+1, A359591(#)*A372574((n+1)/#)]` -/
def P17452606600370340224.Spec : Prop :=
  ∀ n, P17452606600370340224.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P15005558635246577793

`Δ[(∑[char[3^n]]%2)²]`
-/

namespace A154271.P15005558635246577793
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) % 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A154271.P15005558635246577793

namespace A154271

/-- `Δ[(∑[char[3^n]]%2)²]` -/
def P15005558635246577793.Spec : Prop :=
  ∀ n, P15005558635246577793.a n = A154271 (n + 1)

end A154271

/-! ## A154271.P2599386400853765984

`A225569(n)/(A008836(n+1)-A154272(n+2))`
-/

namespace A154271.P2599386400853765984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225569 n : ℚ) / (A008836 (n + 1) - A154272 (n + 2) : ℚ)

end

end A154271.P2599386400853765984

namespace A154271

/-- `A225569(n)/(A008836(n+1)-A154272(n+2))` -/
def P2599386400853765984.Spec : Prop :=
  ∀ n, P2599386400853765984.a n = (A154271 (n + 1) : ℚ)

end A154271

/-!
# A154272: 1,0,1 followed by 0,0,0,...

The programs for A154272, the canonical program `A154272.P14133533834272652273` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154272 has offset 1).

The definition of A154272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154272.P14133533834272652273

`C(2, n)%2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154272

/-- `C(2, n)%2` -/
def P14133533834272652273.Spec : Prop :=
  ∀ n, (P14133533834272652273.a n : ℤ) = A154272 (n + 1)

theorem P14133533834272652273.correct : P14133533834272652273.Spec := by
  intro n
  simp only [A154272, Nat.add_sub_cancel]

end A154272

/-!
# A154273: Primes of the form: nonprime(prime(n)) + n.

The programs for A154273, there is no canonical definition to state claims against.
-/

/-! ## A154273.P9378459784148279769

`p?[A144570(n+1)+1+n]`
-/

namespace A154273.P9378459784148279769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154273.P9378459784148279769

/-! ## A154273.P8106137503925805106

`p?[A141468(A008578(n+1))+n]`
-/

namespace A154273.P8106137503925805106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A008578 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154273.P8106137503925805106

/-! ## A154273.P15669329308948947379

`record[A020639(A144570(n+1)+n+1)]`
-/

namespace A154273.P15669329308948947379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A144570 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154273.P15669329308948947379

/-! ## A154273.P13360246754323852006

`p?[A018252(A006093(n+1))+1+n]`
-/

namespace A154273.P13360246754323852006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006093 (n + 1)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154273.P13360246754323852006

/-! ## A154273.P3424651882297646150

`p?[A141468(A000040(n+1))+1+n]`
-/

namespace A154273.P3424651882297646150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A000040 (n + 1)).toNat + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154273.P3424651882297646150

/-!
# A154274: Primes of the form: nonprime(prime(n)) - (-1)^n.

The programs for A154274, there is no canonical definition to state claims against.
-/

/-! ## A154274.P16319082269654268656

`p?[A144570(n+1)+(-1)^n]`
-/

namespace A154274.P16319082269654268656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144570 (n + 1) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P16319082269654268656

/-! ## A154274.P14727604998142499621

`p?[A018252(A006093(n+1))+(-1)^n]`
-/

namespace A154274.P14727604998142499621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A006093 (n + 1)).toNat + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P14727604998142499621

/-! ## A154274.P12631103602188582552

`p?[A141468(A000040(n+1))+(-1)^n]`
-/

namespace A154274.P12631103602188582552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A000040 (n + 1)).toNat + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P12631103602188582552

/-! ## A154274.P2522429573245045069

`p?[A018252(A000040(n+1)-1)+(-1)^n]`
-/

namespace A154274.P2522429573245045069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1) - 1).toNat + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P2522429573245045069

/-! ## A154274.P12054488052883171634

`p?[A018252(eq[n, A000010(n+1)])+(-1)^n]`
-/

namespace A154274.P12054488052883171634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n) + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P12054488052883171634

/-! ## A154274.P808507335157438691

`p?[A141468(A008578(n+1))+n-A004442(n)]`
-/

namespace A154274.P808507335157438691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A008578 (n + 1)).toNat + (n : ℤ) - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P808507335157438691

/-! ## A154274.P1298269428508958078

`p?[A209615(2*n+1)+A018252(A006093(n+1))]`
-/

namespace A154274.P1298269428508958078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209615 (2 * n + 1) + A018252 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154274.P1298269428508958078

/-!
# A154275: Primes p=prime(k) such that abs(sum of digits of p - sum of digits of k) is prime.

The programs for A154275, there is no canonical definition to state claims against.
-/

/-! ## A154275.P14712641968938381655

`p?[A057353(A329975(n+1))%A329999(n+1)]`
-/

namespace A154275.P14712641968938381655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057353 (A329975 (n + 1)).toNat) (A329999 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A154275.P14712641968938381655

/-! ## A154275.P16764409896900726432

`or(A023191(A319765(n)), A023219(n+1))`
-/

namespace A154275.P16764409896900726432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023191 (A319765 n).toNat) (A023219 (n + 1))

end

end A154275.P16764409896900726432

/-! ## A154275.P11226265747887040318

`A091206(n+2)+A035210(A057188(n+1))`
-/

namespace A154275.P11226265747887040318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091206 (n + 2) + A035210 (A057188 (n + 1)).toNat

end

end A154275.P11226265747887040318

/-! ## A154275.P16177951568589191976

`∩[A155053(n+1), A284837(n+1)]`
-/

namespace A154275.P16177951568589191976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154275.P16177951568589191976

/-!
# A154276: Primes of the form 81*k^2 - 72*k + 17.

The programs for A154276, the canonical program `A154276.P17448744353974337590` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154276 has offset 1).

The definition of A154276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 682 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154276.P6171889640344757635

`∩[A002496(n+1), A154277(n)]`
-/

namespace A154276.P6171889640344757635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P6171889640344757635

namespace A154276

/-- `∩[A002496(n+1), A154277(n)]` -/
def P6171889640344757635.Spec : Prop :=
  ∀ n, (P6171889640344757635.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P8528671955366932536

`∩[A054754(n+1), A154277(n)]`
-/

namespace A154276.P8528671955366932536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P8528671955366932536

namespace A154276

/-- `∩[A054754(n+1), A154277(n)]` -/
def P8528671955366932536.Spec : Prop :=
  ∀ n, (P8528671955366932536.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P2941056239432615401

`∩[A054755(n+1), A154277(n)]`
-/

namespace A154276.P2941056239432615401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P2941056239432615401

namespace A154276

/-- `∩[A054755(n+1), A154277(n)]` -/
def P2941056239432615401.Spec : Prop :=
  ∀ n, (P2941056239432615401.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P11980413481317344102

`∩[A054964(n+1), A154277(n)]`
-/

namespace A154276.P11980413481317344102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P11980413481317344102

namespace A154276

/-- `∩[A054964(n+1), A154277(n)]` -/
def P11980413481317344102.Spec : Prop :=
  ∀ n, (P11980413481317344102.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P2821672428477114422

`∩[A121326(n+1), A154277(n)]`
-/

namespace A154276.P2821672428477114422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P2821672428477114422

namespace A154276

/-- `∩[A121326(n+1), A154277(n)]` -/
def P2821672428477114422.Spec : Prop :=
  ∀ n, (P2821672428477114422.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P17448744353974337590

`∩[A125557(n+1), A154277(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A154276

/-- `∩[A125557(n+1), A154277(n)]` -/
def P17448744353974337590.Spec : Prop :=
  ∀ n, (P17448744353974337590.a n : ℤ) = A154276 (n + 1)

theorem P17448744353974337590.correct : P17448744353974337590.Spec := by
  intro n
  simp only [A154276, Nat.add_sub_cancel]

end A154276

/-! ## A154276.P5850806624551499392

`∩[A163588(n+1), A154277(n)]`
-/

namespace A154276.P5850806624551499392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P5850806624551499392

namespace A154276

/-- `∩[A163588(n+1), A154277(n)]` -/
def P5850806624551499392.Spec : Prop :=
  ∀ n, (P5850806624551499392.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P947551467919857044

`∩[A227829(n+1), A154277(n)]`
-/

namespace A154276.P947551467919857044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P947551467919857044

namespace A154276

/-- `∩[A227829(n+1), A154277(n)]` -/
def P947551467919857044.Spec : Prop :=
  ∀ n, (P947551467919857044.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P15381682988992216386

`∩[A296422(n+1), A154277(n)]`
-/

namespace A154276.P15381682988992216386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P15381682988992216386

namespace A154276

/-- `∩[A296422(n+1), A154277(n)]` -/
def P15381682988992216386.Spec : Prop :=
  ∀ n, (P15381682988992216386.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P15382924462993144910

`∩[A249410(n+1), A154277(n)]`
-/

namespace A154276.P15382924462993144910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P15382924462993144910

namespace A154276

/-- `∩[A249410(n+1), A154277(n)]` -/
def P15382924462993144910.Spec : Prop :=
  ∀ n, (P15382924462993144910.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P6313344956218257020

`∩[A172979(n+1), A154277(n)]`
-/

namespace A154276.P6313344956218257020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P6313344956218257020

namespace A154276

/-- `∩[A172979(n+1), A154277(n)]` -/
def P6313344956218257020.Spec : Prop :=
  ∀ n, (P6313344956218257020.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P11424066386794289106

`∩[A262587(n+1), A154277(n)]`
-/

namespace A154276.P11424066386794289106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P11424066386794289106

namespace A154276

/-- `∩[A262587(n+1), A154277(n)]` -/
def P11424066386794289106.Spec : Prop :=
  ∀ n, (P11424066386794289106.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P3398698553051630842

`∩[A206864(n+1), A154277(n)]`
-/

namespace A154276.P3398698553051630842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P3398698553051630842

namespace A154276

/-- `∩[A206864(n+1), A154277(n)]` -/
def P3398698553051630842.Spec : Prop :=
  ∀ n, (P3398698553051630842.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P5264318083719899713

`record[A125256(A103517(A179805(n)))]`
-/

namespace A154276.P5264318083719899713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A103517 (A179805 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A154276.P5264318083719899713

namespace A154276

/-- `record[A125256(A103517(A179805(n)))]` -/
def P5264318083719899713.Spec : Prop :=
  ∀ n, P5264318083719899713.a n = A154276 (n + 1)

end A154276

/-! ## A154276.P15172533630386226785

`∩[A146348(n+1), A154277(n)]`
-/

namespace A154276.P15172533630386226785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P15172533630386226785

namespace A154276

/-- `∩[A146348(n+1), A154277(n)]` -/
def P15172533630386226785.Spec : Prop :=
  ∀ n, (P15172533630386226785.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P3786380233596639784

`∩[A346809(n+1), A154277(n)]`
-/

namespace A154276.P3786380233596639784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P3786380233596639784

namespace A154276

/-- `∩[A346809(n+1), A154277(n)]` -/
def P3786380233596639784.Spec : Prop :=
  ∀ n, (P3786380233596639784.a n : ℤ) = A154276 (n + 1)

end A154276

/-! ## A154276.P17843355955714640348

`∩[A154277(n), A168024(n)]`
-/

namespace A154276.P17843355955714640348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154276.P17843355955714640348

namespace A154276

/-- `∩[A154277(n), A168024(n)]` -/
def P17843355955714640348.Spec : Prop :=
  ∀ n, (P17843355955714640348.a n : ℤ) = A154276 (n + 1)

end A154276

/-!
# A154277: a(n) = 81*n^2 - 72*n + 17.

The programs for A154277, the canonical program `A154277.P16860181885600045702` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154277 has offset 0).

The definition of A154277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*n²-72*n+17` (program `A154277.P16860181885600045702`, by `A154277.P16860181885600045702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154277.P16860181885600045702

`81*n²-72*n+17`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154277

/-- `81*n²-72*n+17` -/
def P16860181885600045702.Spec : Prop :=
  ∀ n, P16860181885600045702.a n = A154277 n

theorem P16860181885600045702.correct : P16860181885600045702.Spec := by
  intro n
  simp only [A154277]

end A154277

/-! ## A154277.P7976665880331794152

`abs(xor(-1, (4-9*n)²))`
-/

namespace A154277.P7976665880331794152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (-1) ((4 - (9 * n : ℤ)) ^ 2)|

end

end A154277.P7976665880331794152

namespace A154277

/-- `abs(xor(-1, (4-9*n)²))` -/
def P7976665880331794152.Spec : Prop :=
  ∀ n, P7976665880331794152.a n = A154277 n

end A154277

/-! ## A154277.P745551782265822384

`xor((4-9*n)², A010684(n))`
-/

namespace A154277.P745551782265822384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((4 - (9 * n : ℤ)) ^ 2) (A010684 n)

end

end A154277.P745551782265822384

namespace A154277

/-- `xor((4-9*n)², A010684(n))` -/
def P745551782265822384.Spec : Prop :=
  ∀ n, P745551782265822384.a n = A154277 n

end A154277

/-! ## A154277.P3976238333038444384

`A013945(A298035(n)+7)`
-/

namespace A154277.P3976238333038444384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013945 (A298035 n + 7).toNat

end

end A154277.P3976238333038444384

namespace A154277

/-- `A013945(A298035(n)+7)` -/
def P3976238333038444384.Spec : Prop :=
  ∀ n, P3976238333038444384.a n = A154277 n

end A154277

/-! ## A154277.P17387089938482708807

`A055524(A298035(n)+7)`
-/

namespace A154277.P17387089938482708807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055524 (A298035 n + 7).toNat

end

end A154277.P17387089938482708807

namespace A154277

/-- `A055524(A298035(n)+7)` -/
def P17387089938482708807.Spec : Prop :=
  ∀ n, P17387089938482708807.a n = A154277 n

end A154277

/-! ## A154277.P2688082373925117929

`A000027((6-A017185(n))²+1)`
-/

namespace A154277.P2688082373925117929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((6 - A017185 n) ^ 2 + 1).toNat

end

end A154277.P2688082373925117929

namespace A154277

/-- `A000027((6-A017185(n))²+1)` -/
def P2688082373925117929.Spec : Prop :=
  ∀ n, P2688082373925117929.a n = A154277 n

end A154277

/-!
# A154280: List of pairs (a(n),b(n)): f(n) = A004001(n); a(n) = f(n) + a(n-1); b(n) = f(n)*b(n-1).

The programs for A154280, there is no canonical definition to state claims against.
-/

/-! ## A154280.P12627648290200878128

`A066099(A022183(n))*A359907(n)`
-/

namespace A154280.P12627648290200878128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A022183 n).toNat * A359907 n

end

end A154280.P12627648290200878128

/-! ## A154280.P15123745241223682457

`A000188(A095892(n))*A359907(n)`
-/

namespace A154280.P15123745241223682457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A095892 n).toNat * A359907 n

end

end A154280.P15123745241223682457

/-! ## A154280.P9793303536709682113

`A237593(A022182(n))*A359907(n)`
-/

namespace A154280.P9793303536709682113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237593 (A022182 n).toNat * A359907 n

end

end A154280.P9793303536709682113

/-! ## A154280.P13479304583623749421

`A277873(A022185(n))*A359907(n)`
-/

namespace A154280.P13479304583623749421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277873 (A022185 n).toNat * A359907 n

end

end A154280.P13479304583623749421

/-! ## A154280.P16198509892307418612

`A318369(A022167(n))*A359907(n)`
-/

namespace A154280.P16198509892307418612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318369 (A022167 n).toNat * A359907 n

end

end A154280.P16198509892307418612

/-!
# A154281: 1,0,0,1 followed by 0,0,0...

The programs for A154281, the canonical program `A154281.P3689363579091144887` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154281 has offset 1).

The definition of A154281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154281.P3689363579091144887

`C(3, n)%3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154281

/-- `C(3, n)%3` -/
def P3689363579091144887.Spec : Prop :=
  ∀ n, (P3689363579091144887.a n : ℤ) = A154281 (n + 1)

theorem P3689363579091144887.correct : P3689363579091144887.Spec := by
  intro n
  simp only [A154281, Nat.add_sub_cancel]

end A154281

/-!
# A154282: Dirichlet inverse of A154281.

The programs for A154282, the canonical program `A154282.P4930403843413735271` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154282 has offset 1).

The definition of A154282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A154282.P1964329981276249578

`Δ[ceil(log2(n+1)/2)%2]`
-/

namespace A154282.P1964329981276249578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.logb 2 (n + 1 : ℝ) / 2⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P1964329981276249578

namespace A154282

/-- `Δ[ceil(log2(n+1)/2)%2]` -/
def P1964329981276249578.Spec : Prop :=
  ∀ n, P1964329981276249578.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P4930403843413735271

`Δ[(a(floor(n/4))-1)²]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154282

/-- `Δ[(a(floor(n/4))-1)²]` -/
def P4930403843413735271.Spec : Prop :=
  ∀ n, P4930403843413735271.a n = A154282 (n + 1)

theorem P4930403843413735271.correct : P4930403843413735271.Spec := by
  intro n
  simp only [A154282, Nat.add_sub_cancel]

end A154282

/-! ## A154282.P336604199648937843

`Δ[gcd(2, ceil((log2(n+1)+2)/2))]`
-/

namespace A154282.P336604199648937843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 ⌈(Real.logb 2 (n + 1 : ℝ) + 2) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A154282.P336604199648937843

namespace A154282

/-- `Δ[gcd(2, ceil((log2(n+1)+2)/2))]` -/
def P336604199648937843.Spec : Prop :=
  ∀ n, P336604199648937843.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P4313098929785397124

`Δ[A288488(a(floor(n/4)))]` with `a(0)=0`
-/

namespace A154282.P4313098929785397124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A288488 (f1 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P4313098929785397124

namespace A154282

/-- `Δ[A288488(a(floor(n/4)))]` -/
def P4313098929785397124.Spec : Prop :=
  ∀ n, P4313098929785397124.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P4879036496528189682

`Δ[A094527(a(floor(n/4)))]` with `a(0)=1`
-/

namespace A154282.P4879036496528189682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A094527 (f1 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P4879036496528189682

namespace A154282

/-- `Δ[A094527(a(floor(n/4)))]` -/
def P4879036496528189682.Spec : Prop :=
  ∀ n, P4879036496528189682.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P17227735983651432283

`Δ[A106288(a(floor(n/4)))]` with `a(0)=2`
-/

namespace A154282.P17227735983651432283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A106288 (f1 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P17227735983651432283

namespace A154282

/-- `Δ[A106288(a(floor(n/4)))]` -/
def P17227735983651432283.Spec : Prop :=
  ∀ n, P17227735983651432283.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P7349196002095141952

`Δ[A191738(a(floor(n/4)))]` with `a(0)=3`
-/

namespace A154282.P7349196002095141952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A191738 (f1 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P7349196002095141952

namespace A154282

/-- `Δ[A191738(a(floor(n/4)))]` -/
def P7349196002095141952.Spec : Prop :=
  ∀ n, P7349196002095141952.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P4763306833323106547

`Δ[A101659(1-a(floor(n/4)))]` with `a(0)=0`
-/

namespace A154282.P4763306833323106547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A101659 (1 - f1 ⌊(n : ℚ) / 4⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P4763306833323106547

namespace A154282

/-- `Δ[A101659(1-a(floor(n/4)))]` -/
def P4763306833323106547.Spec : Prop :=
  ∀ n, P4763306833323106547.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P10361200049877269286

`Δ[A101659(a(floor(n/4))+1)]` with `a(0)=0, a(1)=1`
-/

namespace A154282.P10361200049877269286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A101659 (f1 ⌊(n : ℚ) / 4⌋.toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P10361200049877269286

namespace A154282

/-- `Δ[A101659(a(floor(n/4))+1)]` -/
def P10361200049877269286.Spec : Prop :=
  ∀ n, P10361200049877269286.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P11140731299163251964

`A030201(A099894(n))`
-/

namespace A154282.P11140731299163251964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A099894 n).toNat

end

end A154282.P11140731299163251964

namespace A154282

/-- `A030201(A099894(n))` -/
def P11140731299163251964.Spec : Prop :=
  ∀ n, P11140731299163251964.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P2498456186009142886

`A154271(∑[A070886(n)])`
-/

namespace A154282.P2498456186009142886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A154282.P2498456186009142886

namespace A154282

/-- `A154271(∑[A070886(n)])` -/
def P2498456186009142886.Spec : Prop :=
  ∀ n, P2498456186009142886.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P6349670585002815367

`A030201(A048298(n+1))`
-/

namespace A154282.P6349670585002815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A048298 (n + 1)).toNat

end

end A154282.P6349670585002815367

namespace A154282

/-- `A030201(A048298(n+1))` -/
def P6349670585002815367.Spec : Prop :=
  ∀ n, P6349670585002815367.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P2714699382894675847

`A332472(n+1)%A026513(n)`
-/

namespace A154282.P2714699382894675847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332472 (n + 1)) (A026513 n)

end

end A154282.P2714699382894675847

namespace A154282

/-- `A332472(n+1)%A026513(n)` -/
def P2714699382894675847.Spec : Prop :=
  ∀ n, P2714699382894675847.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P12343828717515296948

`Δ[A069767(a(A072376(n)-1))]` with `a(0)=2`
-/

namespace A154282.P12343828717515296948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A069767 (f1 (A072376 n - 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A154282.P12343828717515296948

namespace A154282

/-- `Δ[A069767(a(A072376(n)-1))]` -/
def P12343828717515296948.Spec : Prop :=
  ∀ n, P12343828717515296948.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P13157540911898288976

`A175921(n+1)%A297382(n+1)`
-/

namespace A154282.P13157540911898288976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175921 (n + 1)) (A297382 (n + 1))

end

end A154282.P13157540911898288976

namespace A154282

/-- `A175921(n+1)%A297382(n+1)` -/
def P13157540911898288976.Spec : Prop :=
  ∀ n, P13157540911898288976.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P14791320489924633883

`char[A024036(2*n)]-char[A024036(2*n+1)]`
-/

namespace A154282.P14791320489924633883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024036 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A154282.P14791320489924633883

namespace A154282

/-- `char[A024036(2*n)]-char[A024036(2*n+1)]` -/
def P14791320489924633883.Spec : Prop :=
  ∀ n, P14791320489924633883.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P277740477932684307

`A015573(∑[A209229(n)])*A209229(n+1)`
-/

namespace A154282.P277740477932684307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015573 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A209229 (n + 1)

end

end A154282.P277740477932684307

namespace A154282

/-- `A015573(∑[A209229(n)])*A209229(n+1)` -/
def P277740477932684307.Spec : Prop :=
  ∀ n, P277740477932684307.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P16747473272671363832

`A056594(A104117(n+1)+n-A056594(n))`
-/

namespace A154282.P16747473272671363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A104117 (n + 1) + ((n : ℤ) - A056594 n)).toNat

end

end A154282.P16747473272671363832

namespace A154282

/-- `A056594(A104117(n+1)+n-A056594(n))` -/
def P16747473272671363832.Spec : Prop :=
  ∀ n, P16747473272671363832.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P17924093481377561815

`A030201(A000010(2*(n+1)))²*A030201(n+1)`
-/

namespace A154282.P17924093481377561815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030201 (A000010 (2 * (n + 1))).toNat ^ 2 * A030201 (n + 1)

end

end A154282.P17924093481377561815

namespace A154282

/-- `A030201(A000010(2*(n+1)))²*A030201(n+1)` -/
def P17924093481377561815.Spec : Prop :=
  ∀ n, P17924093481377561815.a n = A154282 (n + 1)

end A154282

/-! ## A154282.P18302939233613061345

`A353627(n+1)*A359432(n+1)*A359552(n+1)`
-/

namespace A154282.P18302939233613061345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1) * A359432 (n + 1) * A359552 (n + 1)

end

end A154282.P18302939233613061345

namespace A154282

/-- `A353627(n+1)*A359432(n+1)*A359552(n+1)` -/
def P18302939233613061345.Spec : Prop :=
  ∀ n, P18302939233613061345.a n = A154282 (n + 1)

end A154282

/-!
# A154283: Irregular triangle read by rows: T(n,k) = Sum_{i=0..k} (-1)^i * binomial(2*n+1,i) * binomial(k+2-i,2)^n, 0 <= k <= 2*(n-1).

The programs for A154283, there is no canonical definition to state claims against.
-/

/-! ## A154283.P514320975544963743

`A189891(A323849(n+1))`
-/

namespace A154283.P514320975544963743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189891 (A323849 (n + 1)).toNat

end

end A154283.P514320975544963743

/-!
# A154286: a(n) = E(k)*C(n+k,k) = Euler(k)*binomial(n+k,k) for k=4.

The programs for A154286, the canonical program `A154286.P11538623933304528328` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154286 has offset 0).

The definition of A154286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154286.P9167460484363970113

`a(n-1)*(n+4)/n` with `a(0)=5`
-/

namespace A154286.P9167460484363970113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * (n + 4 : ℚ) / (n : ℚ)

end

end A154286.P9167460484363970113

namespace A154286

/-- `a(n-1)*(n+4)/n` -/
def P9167460484363970113.Spec : Prop :=
  ∀ n, P9167460484363970113.a n = (A154286 n : ℚ)

end A154286

/-! ## A154286.P4118358037110474081

`(n+1)*(n+2)*(n+3)*(n+4)*5/24`
-/

namespace A154286.P4118358037110474081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (n + 4) * 5 : ℚ) / 24

end

end A154286.P4118358037110474081

namespace A154286

/-- `(n+1)*(n+2)*(n+3)*(n+4)*5/24` -/
def P4118358037110474081.Spec : Prop :=
  ∀ n, P4118358037110474081.a n = (A154286 n : ℚ)

theorem P4118358037110474081.correct : P4118358037110474081.Spec := by
  intro n
  simp only [A154286, Nat.add_sub_cancel, A154286.P4118358037110474081.a, A154286.P11538623933304528328.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154286

/-! ## A154286.P11538623933304528328

`5*A000332(n+4)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A154286

/-- `5*A000332(n+4)` -/
def P11538623933304528328.Spec : Prop :=
  ∀ n, P11538623933304528328.a n = A154286 n

theorem P11538623933304528328.correct : P11538623933304528328.Spec := by
  intro n
  simp only [A154286]

end A154286

/-! ## A154286.P16454638532791450040

`5*C(n+4, 4)`
-/

namespace A154286.P16454638532791450040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (n + 4) 4

end

end A154286.P16454638532791450040

namespace A154286

/-- `5*C(n+4, 4)` -/
def P16454638532791450040.Spec : Prop :=
  ∀ n, (P16454638532791450040.a n : ℤ) = A154286 n

theorem P16454638532791450040.correct : P16454638532791450040.Spec := by
  intro n
  simp only [A154286, Nat.add_sub_cancel, A154286.P16454638532791450040.a, A154286.P11538623933304528328.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154286

/-! ## A154286.P14266740853537173047

`∑[∑[∑[ogf(5/(1-2x+x^2))]]]`
-/

namespace A154286.P14266740853537173047
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154286.P14266740853537173047

namespace A154286

/-- `∑[∑[∑[ogf(5/(1-2x+x^2))]]]` -/
def P14266740853537173047.Spec : Prop :=
  ∀ n, P14266740853537173047.a n = A154286 n

end A154286

/-! ## A154286.P10842808128516533696

`ogf(5/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A154286.P10842808128516533696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5] [1, -5, 10, -10, 5, -1] n

end

end A154286.P10842808128516533696

namespace A154286

/-- `ogf(5/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10842808128516533696.Spec : Prop :=
  ∀ n, P10842808128516533696.a n = A154286 n

end A154286

/-! ## A154286.P7290908893731101154

`∑[∑[∑[a(n-1)+5]]]` with `a(0)=5`
-/

namespace A154286.P7290908893731101154
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f3 =>
  f3 (n - 1) + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154286.P7290908893731101154

namespace A154286

/-- `∑[∑[∑[a(n-1)+5]]]` -/
def P7290908893731101154.Spec : Prop :=
  ∀ n, (P7290908893731101154.a n : ℤ) = A154286 n

end A154286

/-! ## A154286.P1033584099672904838

`a(n-1)-(a(n-1)-5*a(n-1))/n` with `a(0)=5`
-/

namespace A154286.P1033584099672904838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - (a (n - 1) - 5 * a (n - 1)) / (n : ℚ)

end

end A154286.P1033584099672904838

namespace A154286

/-- `a(n-1)-(a(n-1)-5*a(n-1))/n` -/
def P1033584099672904838.Spec : Prop :=
  ∀ n, P1033584099672904838.a n = (A154286 n : ℚ)

end A154286

/-! ## A154286.P12266331576648457252

`5*sqrt(A288876(n))`
-/

namespace A154286.P12266331576648457252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.sqrt (A288876 n : ℝ)

end

end A154286.P12266331576648457252

namespace A154286

/-- `5*sqrt(A288876(n))` -/
def P12266331576648457252.Spec : Prop :=
  ∀ n, P12266331576648457252.a n = (A154286 n : ℝ)

end A154286

/-! ## A154286.P902237499436115133

`5*(A363256(n)+n)`
-/

namespace A154286.P902237499436115133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A363256 n + (n : ℤ))

end

end A154286.P902237499436115133

namespace A154286

/-- `5*(A363256(n)+n)` -/
def P902237499436115133.Spec : Prop :=
  ∀ n, P902237499436115133.a n = A154286 n

end A154286

/-! ## A154286.P15844888770266252550

`∑[5*A000292(n+1)]`
-/

namespace A154286.P15844888770266252550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154286.P15844888770266252550

namespace A154286

/-- `∑[5*A000292(n+1)]` -/
def P15844888770266252550.Spec : Prop :=
  ∀ n, P15844888770266252550.a n = A154286 n

end A154286

/-! ## A154286.P7025860380856625721

`5*(A051743(n+1)-(n+1))`
-/

namespace A154286.P7025860380856625721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A051743 (n + 1) - (n + 1 : ℤ))

end

end A154286.P7025860380856625721

namespace A154286

/-- `5*(A051743(n+1)-(n+1))` -/
def P7025860380856625721.Spec : Prop :=
  ∀ n, P7025860380856625721.a n = A154286 n

end A154286

/-! ## A154286.P11450383832006062121

`A004320(n+1)+∑[∑[∑[n+2]]]`
-/

namespace A154286.P11450383832006062121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154286.P11450383832006062121

namespace A154286

/-- `A004320(n+1)+∑[∑[∑[n+2]]]` -/
def P11450383832006062121.Spec : Prop :=
  ∀ n, P11450383832006062121.a n = A154286 n

end A154286

/-! ## A154286.P1489794681921800866

`A096942(n)+A033488(n)`
-/

namespace A154286.P1489794681921800866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096942 n + A033488 n

end

end A154286.P1489794681921800866

namespace A154286

/-- `A096942(n)+A033488(n)` -/
def P1489794681921800866.Spec : Prop :=
  ∀ n, P1489794681921800866.a n = A154286 n

end A154286

/-! ## A154286.P13913906495162088842

`A095667(n)+A002417(n+1)`
-/

namespace A154286.P13913906495162088842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n + A002417 (n + 1)

end

end A154286.P13913906495162088842

namespace A154286

/-- `A095667(n)+A002417(n+1)` -/
def P13913906495162088842.Spec : Prop :=
  ∀ n, P13913906495162088842.a n = A154286 n

end A154286

/-! ## A154286.P14967554673616217823

`A105938(n)-A006504(n+1)`
-/

namespace A154286.P14967554673616217823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105938 n - A006504 (n + 1)

end

end A154286.P14967554673616217823

namespace A154286

/-- `A105938(n)-A006504(n+1)` -/
def P14967554673616217823.Spec : Prop :=
  ∀ n, P14967554673616217823.a n = A154286 n

end A154286

/-! ## A154286.P2462548009626688241

`A027777(n+2)-A051880(n)`
-/

namespace A154286.P2462548009626688241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027777 (n + 2) - A051880 n

end

end A154286.P2462548009626688241

namespace A154286

/-- `A027777(n+2)-A051880(n)` -/
def P2462548009626688241.Spec : Prop :=
  ∀ n, P2462548009626688241.a n = A154286 n

theorem P2462548009626688241.correct : P2462548009626688241.Spec := by
  intro n
  simp only [A154286, Nat.add_sub_cancel, A154286.P2462548009626688241.a, A154286.P11538623933304528328.a, A000332, A000332.P5946310388023661265.a, A027777, A027777.P16503156280263900957.a, A051880, A051880.P18339695450162809644.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A154286

/-! ## A154286.P11684755872455041023

`A005582(n+1)+A004320(n+1)`
-/

namespace A154286.P11684755872455041023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1) + A004320 (n + 1)

end

end A154286.P11684755872455041023

namespace A154286

/-- `A005582(n+1)+A004320(n+1)` -/
def P11684755872455041023.Spec : Prop :=
  ∀ n, P11684755872455041023.a n = A154286 n

end A154286

/-! ## A154286.P7973146372505021819

`A114364(n+1)+A007715(n+1)`
-/

namespace A154286.P7973146372505021819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114364 (n + 1) + A007715 (n + 1)

end

end A154286.P7973146372505021819

namespace A154286

/-- `A114364(n+1)+A007715(n+1)` -/
def P7973146372505021819.Spec : Prop :=
  ∀ n, P7973146372505021819.a n = A154286 n

end A154286

/-! ## A154286.P3749968006097316697

`A101855(n+1)-A257199(n+1)`
-/

namespace A154286.P3749968006097316697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101855 (n + 1) - A257199 (n + 1)

end

end A154286.P3749968006097316697

namespace A154286

/-- `A101855(n+1)-A257199(n+1)` -/
def P3749968006097316697.Spec : Prop :=
  ∀ n, P3749968006097316697.a n = A154286 n

end A154286

/-!
# A154287: (L)-sieve transform of {1,4,9,16,...,n^2,...}=A000290.

The programs for A154287, there is no canonical definition to state claims against.
-/

/-! ## A154287.P16062268432797681909

`∑[floor(comp[and(n, -n)]/2)]`
-/

namespace A154287.P16062268432797681909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154287.P16062268432797681909

/-! ## A154287.P4351091883948724542

`∑[ceil(comp[2^n]/2)]+1`
-/

namespace A154287.P4351091883948724542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A154287.P4351091883948724542

/-! ## A154287.P940814373528608686

`∑[∑[comp[2^n]%2]+1]`
-/

namespace A154287.P940814373528608686
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154287.P940814373528608686

/-! ## A154287.P7285784335819488974

`∑[ceil(comp[and(n, 1-n)]/2)]`
-/

namespace A154287.P7285784335819488974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - (n : ℤ))

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154287.P7285784335819488974

/-! ## A154287.P17238489522296479135

`∑[comp[2^n]-a(n-1)]` with `a(0)=1`
-/

namespace A154287.P17238489522296479135
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154287.P17238489522296479135

/-!
# A154289: Denominators of coefficients in expansion of 1/( Sum_{n>=1} x^(n - 1)/(2*n - 1)!! ).

The programs for A154289, there is no canonical definition to state claims against.
-/

/-! ## A154289.P7634592355559801653

`lcm(A011782(3*n+4), A154242(n))/A011782(3*n+4)`
-/

namespace A154289.P7634592355559801653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A011782 (3 * n + 4)) (A154242 n) : ℚ) / (A011782 (3 * n + 4) : ℚ)

end

end A154289.P7634592355559801653

/-! ## A154289.P3010625246830116295

`gcd(A079484(n)², A154242(n))`
-/

namespace A154289.P3010625246830116295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079484 n ^ 2) (A154242 n)

end

end A154289.P3010625246830116295

/-! ## A154289.P4156835606266017235

`A154242(n)/A000010(A011782(n))`
-/

namespace A154289.P4156835606266017235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154242 n : ℚ) / (A000010 (A011782 n).toNat : ℚ)

end

end A154289.P4156835606266017235

/-! ## A154289.P5095363157099170416

`A154242(n)/A354102(A090129(n+1))`
-/

namespace A154289.P5095363157099170416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154242 n : ℚ) / (A354102 (A090129 (n + 1)).toNat : ℚ)

end

end A154289.P5095363157099170416

/-!
# A154291: Primes of the form 4x^3 + 27y^2, with x<0.

The programs for A154291, there is no canonical definition to state claims against.
-/

/-! ## A154291.P7250589938976026480

`∩[A138980(n), A153635(n+1)]`
-/

namespace A154291.P7250589938976026480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138980 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A154291.P7250589938976026480

/-! ## A154291.P10745772657721941486

`A153635(lt[A153651(3*n+4), A153664(2*n+1)])`
-/

namespace A154291.P10745772657721941486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153651 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153664 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A154291.P10745772657721941486

/-!
# A154292: Integers of the form m*(6*m -+ 1)/2.

The programs for A154292, the canonical program `A154292.P8296375152774946056` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154292 has offset 1).

The definition of A154292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154292.P8296375152774946056

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=11, a(1)=13, a(2)=46, a(3)=50, a(4)=105`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154292

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P8296375152774946056.Spec : Prop :=
  ∀ n, P8296375152774946056.a n = A154292 (n + 1)

theorem P8296375152774946056.correct : P8296375152774946056.Spec := by
  intro n
  simp only [A154292, Nat.add_sub_cancel]

end A154292

/-! ## A154292.P196287767167468738

`(12*(n+1)²-10*(-1)^(n+1)*(n+1)+12*(n+1)-5*(-1)^(n+1)+5)/4`
-/

namespace A154292.P196287767167468738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((12 * (n + 1) ^ 2 : ℤ) - 10 * (-1) ^ (n + 1) * (n + 1 : ℤ) + (12 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) + 5 : ℚ) / 4

end

end A154292.P196287767167468738

namespace A154292

/-- `(12*(n+1)²-10*(-1)^(n+1)*(n+1)+12*(n+1)-5*(-1)^(n+1)+5)/4` -/
def P196287767167468738.Spec : Prop :=
  ∀ n, P196287767167468738.a n = (A154292 (n + 1) : ℚ)

theorem P196287767167468738.correct : P196287767167468738.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A154292, Nat.add_sub_cancel, A154292.P196287767167468738.a, A154292.P8296375152774946056.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A154292, Nat.add_sub_cancel, A154292.P196287767167468738.a, A154292.P8296375152774946056.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A154292

/-! ## A154292.P1574950924317344187

`∑[(C(A176260(n), 2)+1)*(n+1)]`
-/

namespace A154292.P1574950924317344187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A176260 n).toNat 2 + 1) * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154292.P1574950924317344187

namespace A154292

/-- `∑[(C(A176260(n), 2)+1)*(n+1)]` -/
def P1574950924317344187.Spec : Prop :=
  ∀ n, (P1574950924317344187.a n : ℤ) = A154292 (n + 1)

end A154292

/-! ## A154292.P7230520724873846691

`∑[A017281(A193356(n+1))+n]`
-/

namespace A154292.P7230520724873846691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A193356 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154292.P7230520724873846691

namespace A154292

/-- `∑[A017281(A193356(n+1))+n]` -/
def P7230520724873846691.Spec : Prop :=
  ∀ n, P7230520724873846691.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P5493018923607016499

`A158187(A008619(n))+A000096(n)`
-/

namespace A154292.P5493018923607016499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158187 (A008619 n).toNat + A000096 n

end

end A154292.P5493018923607016499

namespace A154292

/-- `A158187(A008619(n))+A000096(n)` -/
def P5493018923607016499.Spec : Prop :=
  ∀ n, P5493018923607016499.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P2313296773277876680

`A219390(n+2)-∑[n+1]`
-/

namespace A154292.P2313296773277876680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219390 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A154292.P2313296773277876680

namespace A154292

/-- `A219390(n+2)-∑[n+1]` -/
def P2313296773277876680.Spec : Prop :=
  ∀ n, P2313296773277876680.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P14959301811483149922

`∑[(n+1)*A266327(n+1)]`
-/

namespace A154292.P14959301811483149922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154292.P14959301811483149922

namespace A154292

/-- `∑[(n+1)*A266327(n+1)]` -/
def P14959301811483149922.Spec : Prop :=
  ∀ n, P14959301811483149922.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P11256639162908134268

`A091998(n+2)*A110654(n+1)`
-/

namespace A154292.P11256639162908134268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091998 (n + 2) * A110654 (n + 1)

end

end A154292.P11256639162908134268

namespace A154292

/-- `A091998(n+2)*A110654(n+1)` -/
def P11256639162908134268.Spec : Prop :=
  ∀ n, P11256639162908134268.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P633964589999859587

`A219394(n+2)-A219190(n+2)`
-/

namespace A154292.P633964589999859587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 2) - A219190 (n + 2)

end

end A154292.P633964589999859587

namespace A154292

/-- `A219394(n+2)-A219190(n+2)` -/
def P633964589999859587.Spec : Prop :=
  ∀ n, P633964589999859587.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P1176406613285440351

`A219396(n+2)-A219191(n+2)`
-/

namespace A154292.P1176406613285440351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219396 (n + 2) - A219191 (n + 2)

end

end A154292.P1176406613285440351

namespace A154292

/-- `A219396(n+2)-A219191(n+2)` -/
def P1176406613285440351.Spec : Prop :=
  ∀ n, P1176406613285440351.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P506574866780350745

`∑[A000035(n+1)]*A091998(n+2)`
-/

namespace A154292.P506574866780350745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A091998 (n + 2)

end

end A154292.P506574866780350745

namespace A154292

/-- `∑[A000035(n+1)]*A091998(n+2)` -/
def P506574866780350745.Spec : Prop :=
  ∀ n, P506574866780350745.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P1450801665986818874

`A001057(n+1)+2*A036498(n+2)`
-/

namespace A154292.P1450801665986818874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) + 2 * A036498 (n + 2)

end

end A154292.P1450801665986818874

namespace A154292

/-- `A001057(n+1)+2*A036498(n+2)` -/
def P1450801665986818874.Spec : Prop :=
  ∀ n, P1450801665986818874.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P10368812609045996284

`2*A014494(n+1)-A074377(n+1)`
-/

namespace A154292.P10368812609045996284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014494 (n + 1) - A074377 (n + 1)

end

end A154292.P10368812609045996284

namespace A154292

/-- `2*A014494(n+1)-A074377(n+1)` -/
def P10368812609045996284.Spec : Prop :=
  ∀ n, P10368812609045996284.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P2387603522751283808

`2*A219191(n+2)-A000217(n+1)`
-/

namespace A154292.P2387603522751283808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219191 (n + 2) - A000217 (n + 1)

end

end A154292.P2387603522751283808

namespace A154292

/-- `2*A219191(n+2)-A000217(n+1)` -/
def P2387603522751283808.Spec : Prop :=
  ∀ n, P2387603522751283808.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P14657073385619878139

`2*A154260(n+2)-A074378(n+1)`
-/

namespace A154292.P14657073385619878139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154260 (n + 2) - A074378 (n + 1)

end

end A154292.P14657073385619878139

namespace A154292

/-- `2*A154260(n+2)-A074378(n+1)` -/
def P14657073385619878139.Spec : Prop :=
  ∀ n, P14657073385619878139.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P15244105226291343032

`A219394(n+2)-2*A057569(n+2)`
-/

namespace A154292.P15244105226291343032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219394 (n + 2) - 2 * A057569 (n + 2)

end

end A154292.P15244105226291343032

namespace A154292

/-- `A219394(n+2)-2*A057569(n+2)` -/
def P15244105226291343032.Spec : Prop :=
  ∀ n, P15244105226291343032.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P12910683666140083991

`A219394(n+2)-A132356(n+1)/2`
-/

namespace A154292.P12910683666140083991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219394 (n + 2) : ℚ) - (A132356 (n + 1) : ℚ) / 2

end

end A154292.P12910683666140083991

namespace A154292

/-- `A219394(n+2)-A132356(n+1)/2` -/
def P12910683666140083991.Spec : Prop :=
  ∀ n, P12910683666140083991.a n = (A154292 (n + 1) : ℚ)

end A154292

/-! ## A154292.P11423805283185043468

`Δ[A002620(n+1)]*Δ[A195143(n+1)]`
-/

namespace A154292.P11423805283185043468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A154292.P11423805283185043468

namespace A154292

/-- `Δ[A002620(n+1)]*Δ[A195143(n+1)]` -/
def P11423805283185043468.Spec : Prop :=
  ∀ n, P11423805283185043468.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P11527631889525201270

`A394829(n+1)+A219389(n+2)-A132356(n+1)`
-/

namespace A154292.P11527631889525201270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394829 (n + 1) + (A219389 (n + 2) - A132356 (n + 1))

end

end A154292.P11527631889525201270

namespace A154292

/-- `A394829(n+1)+A219389(n+2)-A132356(n+1)` -/
def P11527631889525201270.Spec : Prop :=
  ∀ n, P11527631889525201270.a n = A154292 (n + 1)

end A154292

/-! ## A154292.P8629300678525771498

`A074378(n+1)+A219257(n+2)-A001082(n+2)`
-/

namespace A154292.P8629300678525771498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074378 (n + 1) + (A219257 (n + 2) - A001082 (n + 2))

end

end A154292.P8629300678525771498

namespace A154292

/-- `A074378(n+1)+A219257(n+2)-A001082(n+2)` -/
def P8629300678525771498.Spec : Prop :=
  ∀ n, P8629300678525771498.a n = A154292 (n + 1)

end A154292

/-!
# A154293: Integers of the form t/6, where t is a triangular number (A000217).

The programs for A154293, the canonical program `A154293.P10379766137476135061` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154293 has offset 1).

The definition of A154293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A154293.P10379766137476135061

`A069497(n+1)/6`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A154293

/-- `A069497(n+1)/6` -/
def P10379766137476135061.Spec : Prop :=
  ∀ n, P10379766137476135061.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P1499082780537457648

`A000217(A108752(n+1))/6`
-/

namespace A154293.P1499082780537457648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A108752 (n + 1)).toNat : ℚ) / 6

end

end A154293.P1499082780537457648

namespace A154293

/-- `A000217(A108752(n+1))/6` -/
def P1499082780537457648.Spec : Prop :=
  ∀ n, P1499082780537457648.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P5116151581111095209

`C(and(3*(n+1), -3), 2)/6`
-/

namespace A154293.P5116151581111095209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.land (3 * (n + 1) : ℤ) (-3)).toNat 2 : ℚ) / 6

end

end A154293.P5116151581111095209

namespace A154293

/-- `C(and(3*(n+1), -3), 2)/6` -/
def P5116151581111095209.Spec : Prop :=
  ∀ n, P5116151581111095209.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P14786475961912298854

`(∑[n]+∑[gcd(4, n)%4]²)/2`
-/

namespace A154293.P14786475961912298854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 n % 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℚ) / 2

end

end A154293.P14786475961912298854

namespace A154293

/-- `(∑[n]+∑[gcd(4, n)%4]²)/2` -/
def P14786475961912298854.Spec : Prop :=
  ∀ n, P14786475961912298854.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P8493276231952625073

`C(∑[6-a(n-2)], 2)/6` with `a(0)=1, a(1)=3`
-/

namespace A154293.P8493276231952625073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 : ℚ) / 6

end

end A154293.P8493276231952625073

namespace A154293

/-- `C(∑[6-a(n-2)], 2)/6` -/
def P8493276231952625073.Spec : Prop :=
  ∀ n, P8493276231952625073.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P70321147973759891

`(∑[n]+∑[2-a(n-2)]²)/2` with `a(0)=0, a(1)=1`
-/

namespace A154293.P70321147973759891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 - f2 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℤ) : ℚ) / 2

end

end A154293.P70321147973759891

namespace A154293

/-- `(∑[n]+∑[2-a(n-2)]²)/2` -/
def P70321147973759891.Spec : Prop :=
  ∀ n, P70321147973759891.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P14109139482241334047

`A193828(n)/2`
-/

namespace A154293.P14109139482241334047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193828 n : ℚ) / 2

end

end A154293.P14109139482241334047

namespace A154293

/-- `A193828(n)/2` -/
def P14109139482241334047.Spec : Prop :=
  ∀ n, P14109139482241334047.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P6340508719319445637

`A045943(n)-A268539(n+1)`
-/

namespace A154293.P6340508719319445637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n - A268539 (n + 1)

end

end A154293.P6340508719319445637

namespace A154293

/-- `A045943(n)-A268539(n+1)` -/
def P6340508719319445637.Spec : Prop :=
  ∀ n, P6340508719319445637.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P17069330705721299034

`∑[A287746(n+1)]-A287746(n+1)`
-/

namespace A154293.P17069330705721299034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287746 (n + 1)

end

end A154293.P17069330705721299034

namespace A154293

/-- `∑[A287746(n+1)]-A287746(n+1)` -/
def P17069330705721299034.Spec : Prop :=
  ∀ n, P17069330705721299034.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P1146263785894109879

`∑[A047273(n+1)-n*A056594(n)]`
-/

namespace A154293.P1146263785894109879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) - (n : ℤ) * A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A154293.P1146263785894109879

namespace A154293

/-- `∑[A047273(n+1)-n*A056594(n)]` -/
def P1146263785894109879.Spec : Prop :=
  ∀ n, P1146263785894109879.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P11720518118203358245

`(A000217(A047481(n+1))-A000217(n))/2`
-/

namespace A154293.P11720518118203358245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A047481 (n + 1)).toNat - A000217 n : ℚ) / 2

end

end A154293.P11720518118203358245

namespace A154293

/-- `(A000217(A047481(n+1))-A000217(n))/2` -/
def P11720518118203358245.Spec : Prop :=
  ∀ n, P11720518118203358245.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P14808182876605576965

`A204221(n)-A272104(n+1)`
-/

namespace A154293.P14808182876605576965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204221 n - A272104 (n + 1)

end

end A154293.P14808182876605576965

namespace A154293

/-- `A204221(n)-A272104(n+1)` -/
def P14808182876605576965.Spec : Prop :=
  ∀ n, P14808182876605576965.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P9119365672232663260

`A272104(n+1)+A057353(n+1)²`
-/

namespace A154293.P9119365672232663260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272104 (n + 1) + A057353 (n + 1) ^ 2

end

end A154293.P9119365672232663260

namespace A154293

/-- `A272104(n+1)+A057353(n+1)²` -/
def P9119365672232663260.Spec : Prop :=
  ∀ n, P9119365672232663260.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P5321344399780341009

`A165721(n+1)-(A287746(n+1)+A108752(n+2))`
-/

namespace A154293.P5321344399780341009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165721 (n + 1) - (A287746 (n + 1) + A108752 (n + 2))

end

end A154293.P5321344399780341009

namespace A154293

/-- `A165721(n+1)-(A287746(n+1)+A108752(n+2))` -/
def P5321344399780341009.Spec : Prop :=
  ∀ n, P5321344399780341009.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P3104898228963377727

`A001318(A047260(n+1))-A001318(A004526(n))`
-/

namespace A154293.P3104898228963377727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (A047260 (n + 1)).toNat - A001318 (A004526 n).toNat

end

end A154293.P3104898228963377727

namespace A154293

/-- `A001318(A047260(n+1))-A001318(A004526(n))` -/
def P3104898228963377727.Spec : Prop :=
  ∀ n, P3104898228963377727.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P3868949349935380672

`A001318(A047481(n+1))/2`
-/

namespace A154293.P3868949349935380672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001318 (A047481 (n + 1)).toNat : ℚ) / 2

end

end A154293.P3868949349935380672

namespace A154293

/-- `A001318(A047481(n+1))/2` -/
def P3868949349935380672.Spec : Prop :=
  ∀ n, P3868949349935380672.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P8327836517859913179

`(A000124(A047481(n+1))-A000124(n))/2`
-/

namespace A154293.P8327836517859913179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 (A047481 (n + 1)).toNat - A000124 n : ℚ) / 2

end

end A154293.P8327836517859913179

namespace A154293

/-- `(A000124(A047481(n+1))-A000124(n))/2` -/
def P8327836517859913179.Spec : Prop :=
  ∀ n, P8327836517859913179.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P15728150941221189574

`A011865(A112652(n+1))`
-/

namespace A154293.P15728150941221189574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 (A112652 (n + 1)).toNat

end

end A154293.P15728150941221189574

namespace A154293

/-- `A011865(A112652(n+1))` -/
def P15728150941221189574.Spec : Prop :=
  ∀ n, P15728150941221189574.a n = A154293 (n + 1)

end A154293

/-! ## A154293.P12344355902200317817

`(A003215(n)-A067589(n+1))/2`
-/

namespace A154293.P12344355902200317817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003215 n - A067589 (n + 1) : ℚ) / 2

end

end A154293.P12344355902200317817

namespace A154293

/-- `(A003215(n)-A067589(n+1))/2` -/
def P12344355902200317817.Spec : Prop :=
  ∀ n, P12344355902200317817.a n = (A154293 (n + 1) : ℚ)

end A154293

/-! ## A154293.P1541007074413865605

`eq[1, A218171(n)²]`
-/

namespace A154293.P1541007074413865605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218171 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A154293.P1541007074413865605

namespace A154293

/-- `eq[1, A218171(n)²]` -/
def P1541007074413865605.Spec : Prop :=
  ∀ n, (P1541007074413865605.a n : ℤ) = A154293 (n + 1)

end A154293

/-!
# A154295: a(n) = 81*n^2 - 90*n + 26.

The programs for A154295, the canonical program `A154295.P13439465799666436317` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A154295 has offset 0).

The definition of A154295 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `81*n²-90*n+26` (program `A154295.P13439465799666436317`, by `A154295.P13439465799666436317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A154295.P13439465799666436317

`81*n²-90*n+26`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A154295

/-- `81*n²-90*n+26` -/
def P13439465799666436317.Spec : Prop :=
  ∀ n, P13439465799666436317.a n = A154295 n

theorem P13439465799666436317.correct : P13439465799666436317.Spec := by
  intro n
  simp only [A154295]

end A154295

/-! ## A154295.P15643330954057645223

`xor(9*A154262(n), A010684(n))`
-/

namespace A154295.P15643330954057645223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (9 * A154262 n) (A010684 n)

end

end A154295.P15643330954057645223

namespace A154295

/-- `xor(9*A154262(n), A010684(n))` -/
def P15643330954057645223.Spec : Prop :=
  ∀ n, P15643330954057645223.a n = A154295 n

end A154295

/-! ## A154295.P10847752765435309343

`abs(A000027(n+1)-9*A154262(n)-n)`
-/

namespace A154295.P10847752765435309343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000027 (n + 1) - 9 * A154262 n - (n : ℤ)|

end

end A154295.P10847752765435309343

namespace A154295

/-- `abs(A000027(n+1)-9*A154262(n)-n)` -/
def P10847752765435309343.Spec : Prop :=
  ∀ n, P10847752765435309343.a n = A154295 n

end A154295

/-! ## A154295.P3366933677296239811

`A002522(abs(5-9*n))`
-/

namespace A154295.P3366933677296239811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 |5 - (9 * n : ℤ)|.toNat

end

end A154295.P3366933677296239811

namespace A154295

/-- `A002522(abs(5-9*n))` -/
def P3366933677296239811.Spec : Prop :=
  ∀ n, P3366933677296239811.a n = A154295 n

end A154295

/-! ## A154295.P12074308795376595471

`A000027((14-A008591(n+1))²+1)`
-/

namespace A154295.P12074308795376595471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((14 - A008591 (n + 1)) ^ 2 + 1).toNat

end

end A154295.P12074308795376595471

namespace A154295

/-- `A000027((14-A008591(n+1))²+1)` -/
def P12074308795376595471.Spec : Prop :=
  ∀ n, P12074308795376595471.a n = A154295 n

end A154295

