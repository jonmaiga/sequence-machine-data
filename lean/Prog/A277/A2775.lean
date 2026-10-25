import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
# A277500: E.g.f.: -LambertW(-tan(x)).

The programs for A277500, there is no canonical definition to state claims against.
-/

/-! ## A277500.P5551199865345079185

`A004396(∑[xor(1, (n+1)^n)/(n+2)])`
-/

namespace A277500.P5551199865345079185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((n + 1) ^ n) : ℚ) / (n + 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A277500.P5551199865345079185

/-! ## A277500.P18369164747274037845

`A008624(∑[A120733(n)])`
-/

namespace A277500.P18369164747274037845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120733 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277500.P18369164747274037845

/-!
# A277501: E.g.f.: -LambertW(-tanh(x)).

The programs for A277501, there is no canonical definition to state claims against.
-/

/-! ## A277501.P11680208965714194975

`A002265(∑[A320352(n)+2])`
-/

namespace A277501.P11680208965714194975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320352 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277501.P11680208965714194975

/-! ## A277501.P15934759001376797737

`A093391(∑[A320352(n)])+n`
-/

namespace A277501.P15934759001376797737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A277501.P15934759001376797737

/-!
# A277502: E.g.f.: -LambertW(-arcsin(x)).

The programs for A277502, there is no canonical definition to state claims against.
-/

/-! ## A277502.P1294827749222279070

`A057367(A305988(n)+1+n)`
-/

namespace A277502.P1294827749222279070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (A305988 n + 1 + (n : ℤ)).toNat

end

end A277502.P1294827749222279070

/-! ## A277502.P157688172684060490

`A055400(A265033(n)+comp[2*(n+1)])`
-/

namespace A277502.P157688172684060490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A265033 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A277502.P157688172684060490

/-!
# A277503: E.g.f.: -LambertW(-arctan(x)).

The programs for A277503, there is no canonical definition to state claims against.
-/

/-! ## A277503.P15450552319403103983

`A002265(3*(n^abs(1-n)+1))`
-/

namespace A277503.P15450552319403103983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway (3 * ((n : ℚ) ^ (|1 - (n : ℤ)| : ℤ) + 1))).toNat

end

end A277503.P15450552319403103983

/-! ## A277503.P12181543715351218372

`∑[A008611(A283184(n))]`
-/

namespace A277503.P12181543715351218372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A283184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277503.P12181543715351218372

/-!
# A277504: Array read by descending antidiagonals: T(n,k) is the number of unoriented strings with n beads of k or fewer colors.

The programs for A277504, there is no canonical definition to state claims against.
-/

/-! ## A277504.P7253859634392497181

`(A321391(n)+A003992(n))/2`
-/

namespace A277504.P7253859634392497181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321391 n + A003992 n : ℚ) / 2

end

end A277504.P7253859634392497181

/-! ## A277504.P9970309750148355154

`A014682(A321391(n)+A003992(n))`
-/

namespace A277504.P9970309750148355154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A321391 n + A003992 n).toNat

end

end A277504.P9970309750148355154

/-! ## A277504.P11337071965629838297

`A249122(A003992(n)+A321391(n)+1)`
-/

namespace A277504.P11337071965629838297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A003992 n + (A321391 n + 1)).toNat

end

end A277504.P11337071965629838297

/-! ## A277504.P7812907882459761632

`(A321391(n)+A003992(n))*2^A008683(A142644(n+1))`
-/

namespace A277504.P7812907882459761632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321391 n + A003992 n : ℚ) * (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ)

end

end A277504.P7812907882459761632

/-! ## A277504.P4355824449358152403

`A001281(A321391(n)+A003992(n))`
-/

namespace A277504.P4355824449358152403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A321391 n + A003992 n).toNat

end

end A277504.P4355824449358152403

/-! ## A277504.P2903513089385219750

`A004525(A321391(n)+A003992(n))`
-/

namespace A277504.P2903513089385219750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A321391 n + A003992 n).toNat

end

end A277504.P2903513089385219750

/-! ## A277504.P13054743352910330454

`A004526(A321391(n)+A003992(n))`
-/

namespace A277504.P13054743352910330454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A321391 n + A003992 n).toNat

end

end A277504.P13054743352910330454

/-! ## A277504.P14791999862951931866

`A004524(A003992(n)+A321391(n)+1)`
-/

namespace A277504.P14791999862951931866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A003992 n + (A321391 n + 1)).toNat

end

end A277504.P14791999862951931866

/-! ## A277504.P5596600690824153127

`A008619(A321391(n)+A003992(n))-1`
-/

namespace A277504.P5596600690824153127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A321391 n + A003992 n).toNat - 1

end

end A277504.P5596600690824153127

/-! ## A277504.P4915478995710454385

`A003992(n)-A004526(A003992(n)-A321391(n))`
-/

namespace A277504.P4915478995710454385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003992 n - A004526 (A003992 n - A321391 n).toNat

end

end A277504.P4915478995710454385

/-!
# A277505: E.g.f.: -LambertW(-x)/(1-x).

The programs for A277505, there is no canonical definition to state claims against.
-/

/-! ## A277505.P12386014686568224326

`n^(n-1)+n*a(n-1)` with `a(0)=0`
-/

namespace A277505.P12386014686568224326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (n : ℚ) * a (n - 1)

end

end A277505.P12386014686568224326

/-! ## A277505.P14734019084919519381

`n*A102743(abs(1-n))`
-/

namespace A277505.P14734019084919519381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A102743 |1 - (n : ℤ)|.toNat

end

end A277505.P14734019084919519381

/-! ## A277505.P17940630821602552571

`A102743(n)-(n+1)^(n-1)`
-/

namespace A277505.P17940630821602552571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102743 n : ℚ) - (n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A277505.P17940630821602552571

/-! ## A277505.P3101767009944725257

`n*(A000272(n)+a(n-1))` with `a(0)=0`
-/

namespace A277505.P3101767009944725257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A000272 n + a (n - 1))

end

end A277505.P3101767009944725257

/-! ## A277505.P8141355525332572557

`abs(A000272(n+1)-A102743(n))`
-/

namespace A277505.P8141355525332572557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000272 (n + 1) - A102743 n|

end

end A277505.P8141355525332572557

/-!
# A277506: E.g.f.: 1/((1+LambertW(-x))*(1-x)).

The programs for A277506, the canonical program `A277506.P4403017340033506939` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277506 has offset 0).

The definition of A277506 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277506.P4403017340033506939

`n*a(n-1)+n^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277506

/-- `n*a(n-1)+n^n` -/
def P4403017340033506939.Spec : Prop :=
  ∀ n, (P4403017340033506939.a n : ℤ) = A277506 n

theorem P4403017340033506939.correct : P4403017340033506939.Spec := by
  intro n
  simp only [A277506]

end A277506

/-! ## A277506.P16472895506506769971

`n!*∑[n^n/n!]`
-/

namespace A277506.P16472895506506769971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℚ) / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277506.P16472895506506769971

namespace A277506

/-- `n!*∑[n^n/n!]` -/
def P16472895506506769971.Spec : Prop :=
  ∀ n, P16472895506506769971.a n = (A277506 n : ℚ)

end A277506

/-! ## A277506.P6881940421785996656

`n^n+a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A277506.P6881940421785996656
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℝ) + a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A277506.P6881940421785996656

namespace A277506

/-- `n^n+a(n-1)/tan(acot(n))` -/
def P6881940421785996656.Spec : Prop :=
  ∀ n, P6881940421785996656.a n = (A277506 n : ℝ)

end A277506

/-! ## A277506.P1578883069231579088

`n^n+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A277506.P1578883069231579088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A277506.P1578883069231579088

namespace A277506

/-- `n^n+a(n-1)/n^(-1)` -/
def P1578883069231579088.Spec : Prop :=
  ∀ n, P1578883069231579088.a n = (A277506 n : ℚ)

end A277506

/-! ## A277506.P1335449331281772221

`n^n+n*a((2*n)%(n+1))` with `a(0)=1`
-/

namespace A277506.P1335449331281772221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n ^ n + n * a (2 * n % (n + 1))

end

end A277506.P1335449331281772221

namespace A277506

/-- `n^n+n*a((2*n)%(n+1))` -/
def P1335449331281772221.Spec : Prop :=
  ∀ n, (P1335449331281772221.a n : ℤ) = A277506 n

end A277506

/-! ## A277506.P12613707962390811497

`n*(A000169(n)+a(n-1))` with `a(0)=1`
-/

namespace A277506.P12613707962390811497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A000169 n + a (n - 1))

end

end A277506.P12613707962390811497

namespace A277506

/-- `n*(A000169(n)+a(n-1))` -/
def P12613707962390811497.Spec : Prop :=
  ∀ n, P12613707962390811497.a n = A277506 n

end A277506

/-! ## A277506.P14026889247460929918

`n^n-(A000007(n)-n*a(n-1))` with `a(0)=1`
-/

namespace A277506.P14026889247460929918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℤ) - (A000007 n - (n : ℤ) * a (n - 1))

end

end A277506.P14026889247460929918

namespace A277506

/-- `n^n-(A000007(n)-n*a(n-1))` -/
def P14026889247460929918.Spec : Prop :=
  ∀ n, P14026889247460929918.a n = A277506 n

end A277506

/-! ## A277506.P7867643323104837192

`A000312(n)+floor(n*a(floor(n²/(n+1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277506.P7867643323104837192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000312 n + (n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A277506.P7867643323104837192

namespace A277506

/-- `A000312(n)+floor(n*a(floor(n²/(n+1))))` -/
def P7867643323104837192.Spec : Prop :=
  ∀ n, P7867643323104837192.a n = A277506 n

end A277506

/-! ## A277506.P11625165933528803793

`A374844(n)+A000142(n)`
-/

namespace A277506.P11625165933528803793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374844 n + A000142 n

end

end A277506.P11625165933528803793

namespace A277506

/-- `A374844(n)+A000142(n)` -/
def P11625165933528803793.Spec : Prop :=
  ∀ n, P11625165933528803793.a n = A277506 n

end A277506

/-! ## A277506.P3289229094301259533

`n!*∑[A000312(n)/A000142(n)]`
-/

namespace A277506.P3289229094301259533
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n : ℚ) / (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A277506.P3289229094301259533

namespace A277506

/-- `n!*∑[A000312(n)/A000142(n)]` -/
def P3289229094301259533.Spec : Prop :=
  ∀ n, P3289229094301259533.a n = (A277506 n : ℚ)

end A277506

/-!
# A277507: E.g.f.: -1/((1-LambertW(-x))*(1-x)).

The programs for A277507, there is no canonical definition to state claims against.
-/

/-! ## A277507.P8180384713189611208

`A008618(A002295(n))-A008618(n)`
-/

namespace A277507.P8180384713189611208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A002295 n).toNat - A008618 n

end

end A277507.P8180384713189611208

/-! ## A277507.P10621249415944332794

`A275552(n)-A034444(A006126(n))`
-/

namespace A277507.P10621249415944332794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275552 n - A034444 (A006126 n).toNat

end

end A277507.P10621249415944332794

/-!
# A277509: Expansion of e.g.f. 1/((1+LambertW(-x))*(1+x)).

The programs for A277509, there is no canonical definition to state claims against.
-/

/-! ## A277509.P2240448586153172907

`n*(n^(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A277509.P2240448586153172907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((n : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A277509.P2240448586153172907

/-! ## A277509.P7931120627734571384

`n*(A000169(n)-abs(a(n-1)))` with `a(0)=1`
-/

namespace A277509.P7931120627734571384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A000169 n - |a (n - 1)|)

end

end A277509.P7931120627734571384

/-! ## A277509.P623512823804239882

`n^n-n*a(n-1)` with `a(0)=1`
-/

namespace A277509.P623512823804239882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℤ) - (n : ℤ) * a (n - 1)

end

end A277509.P623512823804239882

/-! ## A277509.P12065698308697022393

`n^n-a(n-1)/tan(acot(n))` with `a(0)=1`
-/

namespace A277509.P12065698308697022393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℝ) - a (n - 1) / Real.tan (SequenceMachineLib.acot (n : ℝ))

end

end A277509.P12065698308697022393

/-! ## A277509.P214208154446770222

`n^n-a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A277509.P214208154446770222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ n : ℚ) - a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A277509.P214208154446770222

/-! ## A277509.P14944084436106282176

`A000312(n)-floor(n*a(floor(n²/(n+1))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277509.P14944084436106282176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000312 n - (n : ℤ) * a ⌊(n ^ 2 : ℚ) / (n + 1 : ℚ)⌋.toNat

end

end A277509.P14944084436106282176

/-!
# A277510: E.g.f.: -1/(1-LambertW(-x))^2.

The programs for A277510, there is no canonical definition to state claims against.
-/

/-! ## A277510.P7436440771831182492

`2*n*A277458(n)-A134095(n)`
-/

namespace A277510.P7436440771831182492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A277458 n) - A134095 n

end

end A277510.P7436440771831182492

/-!
# A277511: E.g.f.: -LambertW(-x)/(1+x).

The programs for A277511, there is no canonical definition to state claims against.
-/

/-! ## A277511.P4897932271086016598

`n^(n-1)-n*a(n-1)` with `a(0)=0`
-/

namespace A277511.P4897932271086016598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (n : ℚ) * a (n - 1)

end

end A277511.P4897932271086016598

/-! ## A277511.P1700408842557143363

`n*(A000272(n)-a(n-1))` with `a(0)=0`
-/

namespace A277511.P1700408842557143363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A000272 n - a (n - 1))

end

end A277511.P1700408842557143363

/-! ## A277511.P4629563248498860008

`n*(A105599(A152947(n+1))-a(n-1))` with `a(0)=0`
-/

namespace A277511.P4629563248498860008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) * (A105599 (A152947 (n + 1)).toNat - a (n - 1))

end

end A277511.P4629563248498860008

/-!
# A277513: Irregular triangle read by rows: T(n,k) is the number of integers greater than 4 such that they have n trits and 2k+1 (k>=1) nonzero trits in their balanced ternary representation, with n>=3 and 1<=k<=(j-1)/2.

The programs for A277513, the canonical program `A277513.P97478074551810804` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277513 has offset 3).

The definition of A277513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277513.P97478074551810804

`A013609(eq[A035214(n), A132728(n)])`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A277513

/-- `A013609(eq[A035214(n), A132728(n)])` -/
def P97478074551810804.Spec : Prop :=
  ∀ n, P97478074551810804.a n = A277513 (n + 3)

theorem P97478074551810804.correct : P97478074551810804.Spec := by
  intro n
  simp only [A277513, Nat.add_sub_cancel]

end A277513

/-! ## A277513.P13160866118357334987

`A013609(A049068(n+1)+A000037(n+1))`
-/

namespace A277513.P13160866118357334987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A049068 (n + 1) + A000037 (n + 1)).toNat

end

end A277513.P13160866118357334987

namespace A277513

/-- `A013609(A049068(n+1)+A000037(n+1))` -/
def P13160866118357334987.Spec : Prop :=
  ∀ n, P13160866118357334987.a n = A277513 (n + 3)

end A277513

/-! ## A277513.P7534595163779652653

`A013609(A000037(n+1)+A000037(A000037(n+1)))`
-/

namespace A277513.P7534595163779652653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A000037 (n + 1) + A000037 (A000037 (n + 1)).toNat).toNat

end

end A277513.P7534595163779652653

namespace A277513

/-- `A013609(A000037(n+1)+A000037(A000037(n+1)))` -/
def P7534595163779652653.Spec : Prop :=
  ∀ n, P7534595163779652653.a n = A277513 (n + 3)

end A277513

/-! ## A277513.P9501223482157605802

`A013609(eq[0, A059341(n)])`
-/

namespace A277513.P9501223482157605802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059341 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277513.P9501223482157605802

namespace A277513

/-- `A013609(eq[0, A059341(n)])` -/
def P9501223482157605802.Spec : Prop :=
  ∀ n, P9501223482157605802.a n = A277513 (n + 3)

end A277513

/-! ## A277513.P18113926480476716688

`A013609(eq[0, A004175(n)])`
-/

namespace A277513.P18113926480476716688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004175 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277513.P18113926480476716688

namespace A277513

/-- `A013609(eq[0, A004175(n)])` -/
def P18113926480476716688.Spec : Prop :=
  ∀ n, P18113926480476716688.a n = A277513 (n + 3)

end A277513

/-!
# A277516: a(n) = smallest k >= 0 for which there is a sequence n = b_1 < b_2 < ... < b_t = n + k such that b_1 + b_2 +...+ b_t is a perfect square.

The programs for A277516, there is no canonical definition to state claims against.
-/

/-! ## A277516.P16531295307771701389

`A277278(n)-n`
-/

namespace A277516.P16531295307771701389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277278 n - (n : ℤ)

end

end A277516.P16531295307771701389

/-! ## A277516.P1707568585932870226

`(A277278(n)+1)%A000027(n+1)`
-/

namespace A277516.P1707568585932870226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277278 n + 1) (A000027 (n + 1))

end

end A277516.P1707568585932870226

/-! ## A277516.P16389139895242650335

`(A277278(n)+A000290(n))%(n+1)`
-/

namespace A277516.P16389139895242650335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277278 n + A000290 n) (n + 1 : ℤ)

end

end A277516.P16389139895242650335

/-! ## A277516.P7409503539204206352

`(A277278(n)+n²)%A028310(n+1)`
-/

namespace A277516.P7409503539204206352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277278 n + (n ^ 2 : ℤ)) (A028310 (n + 1))

end

end A277516.P7409503539204206352

/-! ## A277516.P2874734899975158653

`(A277278(n)+A247541(n+1))%(n+1)`
-/

namespace A277516.P2874734899975158653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277278 n + A247541 (n + 1)) (n + 1 : ℤ)

end

end A277516.P2874734899975158653

/-! ## A277516.P10170669535458279797

`(A277278(n)+A003057(n+2))%A014132(n+1)`
-/

namespace A277516.P10170669535458279797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277278 n + A003057 (n + 2)) (A014132 (n + 1))

end

end A277516.P10170669535458279797

/-! ## A277516.P5642919317786662575

`A002262(A277278(n)+A000124(n))`
-/

namespace A277516.P5642919317786662575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A277278 n + A000124 n).toNat

end

end A277516.P5642919317786662575

/-! ## A277516.P17163589141848800740

`A002262(A277278(n)+A167614(n+1))`
-/

namespace A277516.P17163589141848800740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A277278 n + A167614 (n + 1)).toNat

end

end A277516.P17163589141848800740

/-! ## A277516.P18202185131229218868

`A055087(A277278(n)+n²)`
-/

namespace A277516.P18202185131229218868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (A277278 n + (n ^ 2 : ℤ)).toNat

end

end A277516.P18202185131229218868

/-!
# A277520: Denominator of 3F2([3*n, -n, n+1],[2*n+1, n+1/2], 1).

The programs for A277520, there is no canonical definition to state claims against.
-/

/-! ## A277520.P13282320822102187778

`A265390(5^floor(3*comp[xor(n, 2*n)]/4))`
-/

namespace A277520.P13282320822102187778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265390 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 4⌋ : ℤ))).toNat

end

end A277520.P13282320822102187778

/-!
# A277521: Numbers k such that number of divisors of k and sum of divisors of k divides product of divisors of k and the average of the divisors of k is an integer.

The programs for A277521, the canonical program `A277521.P5832681459461376919` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277521 has offset 1).

The definition of A277521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277521.P5832681459461376919

`filter[A145551(n+1), A245656(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277521

/-- `filter[A145551(n+1), A245656(#)]` -/
def P5832681459461376919.Spec : Prop :=
  ∀ n, P5832681459461376919.a n = A277521 (n + 1)

theorem P5832681459461376919.correct : P5832681459461376919.Spec := by
  intro n
  simp only [A277521, Nat.add_sub_cancel]

end A277521

/-! ## A277521.P341284487281308745

`filter[A338395(n+1), A245656(#)]`
-/

namespace A277521.P341284487281308745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A277521.P341284487281308745

namespace A277521

/-- `filter[A338395(n+1), A245656(#)]` -/
def P341284487281308745.Spec : Prop :=
  ∀ n, P341284487281308745.a n = A277521 (n + 1)

end A277521

/-! ## A277521.P2910241215998516426

`∩[A023883(n+1), A145551(n+1)]`
-/

namespace A277521.P2910241215998516426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277521.P2910241215998516426

namespace A277521

/-- `∩[A023883(n+1), A145551(n+1)]` -/
def P2910241215998516426.Spec : Prop :=
  ∀ n, (P2910241215998516426.a n : ℤ) = A277521 (n + 1)

end A277521

/-! ## A277521.P3202733319496182924

`∩[A023883(n+1), A338395(n+1)]`
-/

namespace A277521.P3202733319496182924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277521.P3202733319496182924

namespace A277521

/-- `∩[A023883(n+1), A338395(n+1)]` -/
def P3202733319496182924.Spec : Prop :=
  ∀ n, (P3202733319496182924.a n : ℤ) = A277521 (n + 1)

end A277521

/-! ## A277521.P10185371304872999688

`∩[A003601(n+1), A145551(n+1)]`
-/

namespace A277521.P10185371304872999688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277521.P10185371304872999688

namespace A277521

/-- `∩[A003601(n+1), A145551(n+1)]` -/
def P10185371304872999688.Spec : Prop :=
  ∀ n, (P10185371304872999688.a n : ℤ) = A277521 (n + 1)

end A277521

/-! ## A277521.P14896788635821228445

`∩[A003601(n+1), A338395(n+1)]`
-/

namespace A277521.P14896788635821228445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277521.P14896788635821228445

namespace A277521

/-- `∩[A003601(n+1), A338395(n+1)]` -/
def P14896788635821228445.Spec : Prop :=
  ∀ n, (P14896788635821228445.a n : ℤ) = A277521 (n + 1)

end A277521

/-! ## A277521.P18010444989642342241

`∩[A046839(n+1), A338395(n+1)]`
-/

namespace A277521.P18010444989642342241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277521.P18010444989642342241

namespace A277521

/-- `∩[A046839(n+1), A338395(n+1)]` -/
def P18010444989642342241.Spec : Prop :=
  ∀ n, (P18010444989642342241.a n : ℤ) = A277521 (n + 1)

end A277521

/-!
# A277523: Decimal expansion of the second derivative of the infinite power tower function x^x^x... at x = 1/2.

The programs for A277523, there is no canonical definition to state claims against.
-/

/-! ## A277523.P14402075194091128173

`A079866(A269052(2*n+1))-A238190(n+3)`
-/

namespace A277523.P14402075194091128173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079866 (A269052 (2 * n + 1)).toNat - A238190 (n + 3)

end

end A277523.P14402075194091128173

/-!
# A277533: Value of decimal number corresponding to the string of equal digits starting at position A277532(n) after the decimal point in the decimal expansion of the Euler-Mascheroni constant.

The programs for A277533, there is no canonical definition to state claims against.
-/

/-! ## A277533.P7046920180492471937

`A001620(A277532(n+1))*A002275(n+1)`
-/

namespace A277533.P7046920180492471937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A277532 (n + 1)).toNat * A002275 (n + 1)

end

end A277533.P7046920180492471937

/-!
# A277535: Decimal expansion of Pi*(10^761) - floor(Pi*(10^761)).

The programs for A277535, there is no canonical definition to state claims against.
-/

/-! ## A277535.P12196135613284530122

`A000796(A048940(A210509(n))+n)`
-/

namespace A277535.P12196135613284530122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 ((A048940 (A210509 n).toNat + (n : ℤ)).toNat + 1)

end

end A277535.P12196135613284530122

/-!
# A277536: T(n,k) is the n-th derivative of the difference between the k-th tetration of x (power tower of order k) and its predecessor (or 0 if k=0) at x=1; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A277536, there is no canonical definition to state claims against.
-/

/-! ## A277536.P1275351623754135130

`A192002(A265856(n+1)+3)`
-/

namespace A277536.P1275351623754135130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192002 (A265856 (n + 1) + 3).toNat

end

end A277536.P1275351623754135130

/-! ## A277536.P14284493843014540692

`A319951(A265856(n+1)+2)-1`
-/

namespace A277536.P14284493843014540692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A265856 (n + 1) + 2).toNat - 1

end

end A277536.P14284493843014540692

/-! ## A277536.P14330151508525883579

`A000120(A005316(n))*A357637(n)`
-/

namespace A277536.P14330151508525883579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A005316 n).toNat * A357637 n

end

end A277536.P14330151508525883579

/-! ## A277536.P5573221114869590165

`A121281(n)%A020483(A126068(n))`
-/

namespace A277536.P5573221114869590165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121281 n) (A020483 (A126068 n).toNat)

end

end A277536.P5573221114869590165

/-! ## A277536.P13573397411214162807

`A001221(A063894(n+1))*A357645(n)`
-/

namespace A277536.P13573397411214162807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063894 (n + 1)).toNat * A357645 n

end

end A277536.P13573397411214162807

/-!
# A277537: A(n,k) is the n-th derivative of the k-th tetration of x (power tower of order k) x^^k at x=1; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A277537, there is no canonical definition to state claims against.
-/

/-! ## A277537.P13288568226233174599

`A226873(n)-A325770(A293718(n))`
-/

namespace A277537.P13288568226233174599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n - A325770 (A293718 n).toNat

end

end A277537.P13288568226233174599

/-! ## A277537.P790424138239581071

`A226873(n)+A081729(A181985(n+1))`
-/

namespace A277537.P790424138239581071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n + A081729 (A181985 (n + 1)).toNat

end

end A277537.P790424138239581071

/-! ## A277537.P6566559897123319250

`A087051(A294250(n))%21-A001222(A293718(n))`
-/

namespace A277537.P6566559897123319250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 (A294250 n).toNat) 21 - A001222 (A293718 n).toNat

end

end A277537.P6566559897123319250

/-! ## A277537.P5351074758197238315

`A226873(n)-A059841(A229345(n))`
-/

namespace A277537.P5351074758197238315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226873 n - A059841 (A229345 n).toNat

end

end A277537.P5351074758197238315

/-! ## A277537.P9548993133599214588

`A061336(A220062(n)^A357645(n))`
-/

namespace A277537.P9548993133599214588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061336 (SequenceMachineLib.roundAway ((A220062 n : ℚ) ^ (A357645 n : ℤ))).toNat

end

end A277537.P9548993133599214588

/-!
# A277538: n-th derivative of the seventh tetration of x (power tower of order 7) x^^7 at x=1.

The programs for A277538, there is no canonical definition to state claims against.
-/

/-! ## A277538.P4482620523277019429

`A277537(A155212(n+4))`
-/

namespace A277538.P4482620523277019429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A155212 (n + 4)).toNat

end

end A277538.P4482620523277019429

/-! ## A277538.P3693471675739356192

`A277537(eq[7, A025581(n)])`
-/

namespace A277538.P3693471675739356192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277538.P3693471675739356192

/-! ## A277538.P5116027987130582457

`A277537(A161680(n+9)-8)`
-/

namespace A277538.P5116027987130582457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (A161680 (n + 9) - 8).toNat

end

end A277538.P5116027987130582457

/-! ## A277538.P11378742557058481577

`A277537(eq[8, A004736(n+1)])`
-/

namespace A277538.P11378742557058481577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277538.P11378742557058481577

/-! ## A277538.P2384714464232332495

`A277537(2*n+A000124(n+6)+6)`
-/

namespace A277538.P2384714464232332495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A277538.P2384714464232332495

/-!
# A277539: n-th derivative of the eighth tetration of x (power tower of order 8) x^^8 at x=1.

The programs for A277539, there is no canonical definition to state claims against.
-/

/-! ## A277539.P7493885975718582665

`A277537(eq[8, A025581(n)])`
-/

namespace A277539.P7493885975718582665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277539.P7493885975718582665

/-! ## A277539.P14646770619323394175

`A277537(eq[9, A004736(n+1)])`
-/

namespace A277539.P14646770619323394175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277539.P14646770619323394175

/-! ## A277539.P9964520092481325204

`A028310(n)*A295108(A028310(n))`
-/

namespace A277539.P9964520092481325204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295108 (A028310 n).toNat

end

end A277539.P9964520092481325204

/-! ## A277539.P7512470848515504432

`A065033(2*n)*A295108(A065033(2*n))`
-/

namespace A277539.P7512470848515504432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A295108 (A065033 (2 * n)).toNat

end

end A277539.P7512470848515504432

/-! ## A277539.P13785263945447208964

`A123108(2*n)*A295108(A123108(2*n))`
-/

namespace A277539.P13785263945447208964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A295108 (A123108 (2 * n)).toNat

end

end A277539.P13785263945447208964

/-! ## A277539.P10007917377766088214

`(A000007(n)+n)*A295108(A000007(n)+n)`
-/

namespace A277539.P10007917377766088214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A295108 (A000007 n + (n : ℤ)).toNat

end

end A277539.P10007917377766088214

/-! ## A277539.P13827756125866687487

`A007318(A000124(n))*A295108(A123108(2*n))`
-/

namespace A277539.P13827756125866687487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A295108 (A123108 (2 * n)).toNat

end

end A277539.P13827756125866687487

/-!
# A277540: n-th derivative of the ninth tetration of x (power tower of order 9) x^^9 at x=1.

The programs for A277540, there is no canonical definition to state claims against.
-/

/-! ## A277540.P1283397330928399797

`A028310(n)*A295109(A028310(n))`
-/

namespace A277540.P1283397330928399797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295109 (A028310 n).toNat

end

end A277540.P1283397330928399797

/-! ## A277540.P1801440319538094970

`A123108(2*n)*A295109(A123108(2*n))`
-/

namespace A277540.P1801440319538094970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A295109 (A123108 (2 * n)).toNat

end

end A277540.P1801440319538094970

/-! ## A277540.P6133177941564724295

`A000007(n)+n*A295109(A000007(n)+n)`
-/

namespace A277540.P6133177941564724295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A295109 (A000007 n + (n : ℤ)).toNat

end

end A277540.P6133177941564724295

/-! ## A277540.P10399857517177068650

`A004525(A004277(n))*A295109(A000007(n)+n)`
-/

namespace A277540.P10399857517177068650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004277 n).toNat * A295109 (A000007 n + (n : ℤ)).toNat

end

end A277540.P10399857517177068650

/-! ## A277540.P14911979723172655195

`A272900(A267682(n))*A295109(A123108(2*n))`
-/

namespace A277540.P14911979723172655195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272900 (A267682 n).toNat * A295109 (A123108 (2 * n)).toNat

end

end A277540.P14911979723172655195

/-!
# A277541: n-th derivative of the tenth tetration of x (power tower of order 10) x^^10 at x=1.

The programs for A277541, there is no canonical definition to state claims against.
-/

/-! ## A277541.P1078096573317684406

`A277537(eq[10, A025581(n)])`
-/

namespace A277541.P1078096573317684406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277541.P1078096573317684406

/-! ## A277541.P7813788405860831805

`A277537(eq[11, A004736(n+1)])`
-/

namespace A277541.P7813788405860831805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277537 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277541.P7813788405860831805

/-! ## A277541.P1992695003634793851

`A028310(n)*A295110(A028310(n))`
-/

namespace A277541.P1992695003634793851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A295110 (A028310 n).toNat

end

end A277541.P1992695003634793851

/-! ## A277541.P5092160478675329505

`A123108(2*n)*A295110(A123108(2*n))`
-/

namespace A277541.P5092160478675329505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A295110 (A123108 (2 * n)).toNat

end

end A277541.P5092160478675329505

/-! ## A277541.P10322344392775425058

`(A000007(n)+n)*A295110(A000007(n)+n)`
-/

namespace A277541.P10322344392775425058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A295110 (A000007 n + (n : ℤ)).toNat

end

end A277541.P10322344392775425058

/-! ## A277541.P15130510068075501180

`A007318(A000124(n))*A295110(A123108(2*n))`
-/

namespace A277541.P15130510068075501180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A295110 (A123108 (2 * n)).toNat

end

end A277541.P15130510068075501180

/-! ## A277541.P10996967557494157954

`A008619(A004275(n))*A295110(A000007(n)+n)`
-/

namespace A277541.P10996967557494157954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat * A295110 (A000007 n + (n : ℤ)).toNat

end

end A277541.P10996967557494157954

/-!
# A277542: a(n) = denominator((n^2 + 3*n + 2)/n^3).

The programs for A277542, the canonical program `A277542.P4451574689012403771` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277542 has offset 1).

The definition of A277542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277542.P4451574689012403771

`a(n-8)*(n+1)^3/(n-7)^3` with `a(0)=1, a(1)=2, a(2)=27, a(3)=32, a(4)=125, a(5)=27, a(6)=343, a(7)=256`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277542

/-- `a(n-8)*(n+1)^3/(n-7)^3` -/
def P4451574689012403771.Spec : Prop :=
  ∀ n, P4451574689012403771.a n = (A277542 (n + 1) : ℚ)

end A277542

/-! ## A277542.P16024775563706347828

`(n+1)^3/gcd(8, n+3)`
-/

namespace A277542.P16024775563706347828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (Nat.gcd 8 (n + 3) : ℚ)

end

end A277542.P16024775563706347828

namespace A277542

/-- `(n+1)^3/gcd(8, n+3)` -/
def P16024775563706347828.Spec : Prop :=
  ∀ n, P16024775563706347828.a n = (A277542 (n + 1) : ℚ)

end A277542

/-! ## A277542.P5000994815855399375

`lcm(n+3, (n+1)^3)/(n+3)`
-/

namespace A277542.P5000994815855399375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) ((n + 1) ^ 3) : ℚ) / (n + 3 : ℚ)

end

end A277542.P5000994815855399375

namespace A277542

/-- `lcm(n+3, (n+1)^3)/(n+3)` -/
def P5000994815855399375.Spec : Prop :=
  ∀ n, P5000994815855399375.a n = (A277542 (n + 1) : ℚ)

end A277542

/-! ## A277542.P2242461163623867556

`((n+1)/2)²*A227043(n+1)`
-/

namespace A277542.P2242461163623867556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / 2) ^ 2 * (A227043 (n + 1) : ℚ)

end

end A277542.P2242461163623867556

namespace A277542

/-- `((n+1)/2)²*A227043(n+1)` -/
def P2242461163623867556.Spec : Prop :=
  ∀ n, P2242461163623867556.a n = (A277542 (n + 1) : ℚ)

end A277542

/-! ## A277542.P1183084383360866759

`(n+1)^3/A109011(n+3)`
-/

namespace A277542.P1183084383360866759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℚ) / (A109011 (n + 3) : ℚ)

end

end A277542.P1183084383360866759

namespace A277542

/-- `(n+1)^3/A109011(n+3)` -/
def P1183084383360866759.Spec : Prop :=
  ∀ n, P1183084383360866759.a n = (A277542 (n + 1) : ℚ)

end A277542

/-!
# A277543: a(n) = n/5^m mod 5, where 5^m is the greatest power of 5 that divides n.

The programs for A277543, the canonical program `A277543.P14051601711625620625` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277543 has offset 1).

The definition of A277543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277543.P14051601711625620625

`A010874(A132739(n+1))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277543

/-- `A010874(A132739(n+1))` -/
def P14051601711625620625.Spec : Prop :=
  ∀ n, P14051601711625620625.a n = A277543 (n + 1)

theorem P14051601711625620625.correct : P14051601711625620625.Spec := by
  intro n
  simp only [A277543, Nat.add_sub_cancel]

end A277543

/-! ## A277543.P2921701183056324287

`((n+1)/5^val(n+1, 5))%5`
-/

namespace A277543.P2921701183056324287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (5 ^ SequenceMachineLib.valuation (n + 1) 5 : ℚ))) 5

end

end A277543.P2921701183056324287

namespace A277543

/-- `((n+1)/5^val(n+1, 5))%5` -/
def P2921701183056324287.Spec : Prop :=
  ∀ n, P2921701183056324287.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P6642306775742402910

`A359100(n+1)%5`
-/

namespace A277543.P6642306775742402910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359100 (n + 1)) 5

end

end A277543.P6642306775742402910

namespace A277543

/-- `A359100(n+1)%5` -/
def P6642306775742402910.Spec : Prop :=
  ∀ n, P6642306775742402910.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P15854084886243255564

`A372965(n+1)%5`
-/

namespace A277543.P15854084886243255564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A372965 (n + 1)) 5

end

end A277543.P15854084886243255564

namespace A277543

/-- `A372965(n+1)%5` -/
def P15854084886243255564.Spec : Prop :=
  ∀ n, P15854084886243255564.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P14881998696418789576

`A373103(n+1)%5`
-/

namespace A277543.P14881998696418789576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373103 (n + 1)) 5

end

end A277543.P14881998696418789576

namespace A277543

/-- `A373103(n+1)%5` -/
def P14881998696418789576.Spec : Prop :=
  ∀ n, P14881998696418789576.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P17878174635689393695

`A132739(n+1)%A168092(n)`
-/

namespace A277543.P17878174635689393695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132739 (n + 1)) (A168092 n)

end

end A277543.P17878174635689393695

namespace A277543

/-- `A132739(n+1)%A168092(n)` -/
def P17878174635689393695.Spec : Prop :=
  ∀ n, P17878174635689393695.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P12498919555832760341

`A010874(A359100(n+1))`
-/

namespace A277543.P12498919555832760341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A359100 (n + 1)).toNat

end

end A277543.P12498919555832760341

namespace A277543

/-- `A010874(A359100(n+1))` -/
def P12498919555832760341.Spec : Prop :=
  ∀ n, P12498919555832760341.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P6678019623834142897

`A277544(A037465(n+1))`
-/

namespace A277543.P6678019623834142897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A037465 (n + 1)).toNat

end

end A277543.P6678019623834142897

namespace A277543

/-- `A277544(A037465(n+1))` -/
def P6678019623834142897.Spec : Prop :=
  ∀ n, P6678019623834142897.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P14719595872961226923

`A339255(A030104(n+1))`
-/

namespace A277543.P14719595872961226923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339255 (A030104 (n + 1)).toNat

end

end A277543.P14719595872961226923

namespace A277543

/-- `A339255(A030104(n+1))` -/
def P14719595872961226923.Spec : Prop :=
  ∀ n, P14719595872961226923.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P482295242514024230

`A339255(A264995(n+1))`
-/

namespace A277543.P482295242514024230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339255 (A264995 (n + 1)).toNat

end

end A277543.P482295242514024230

namespace A277543

/-- `A339255(A264995(n+1))` -/
def P482295242514024230.Spec : Prop :=
  ∀ n, P482295242514024230.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P15957241680420510764

`A277545(A037466(n+1))`
-/

namespace A277543.P15957241680420510764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277545 (A037466 (n + 1)).toNat

end

end A277543.P15957241680420510764

namespace A277543

/-- `A277545(A037466(n+1))` -/
def P15957241680420510764.Spec : Prop :=
  ∀ n, P15957241680420510764.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P15573827844647734047

`A277546(A037467(n+1))`
-/

namespace A277543.P15573827844647734047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277546 (A037467 (n + 1)).toNat

end

end A277543.P15573827844647734047

namespace A277543

/-- `A277546(A037467(n+1))` -/
def P15573827844647734047.Spec : Prop :=
  ∀ n, P15573827844647734047.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P13820167725355574434

`A277547(A037468(n+1))`
-/

namespace A277543.P13820167725355574434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277547 (A037468 (n + 1)).toNat

end

end A277543.P13820167725355574434

namespace A277543

/-- `A277547(A037468(n+1))` -/
def P13820167725355574434.Spec : Prop :=
  ∀ n, P13820167725355574434.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P6437869509525325889

`A065881(A007091(n+1))`
-/

namespace A277543.P6437869509525325889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A007091 (n + 1)).toNat

end

end A277543.P6437869509525325889

namespace A277543

/-- `A065881(A007091(n+1))` -/
def P6437869509525325889.Spec : Prop :=
  ∀ n, P6437869509525325889.a n = A277543 (n + 1)

end A277543

/-! ## A277543.P15273440602952325740

`((n+1)/gcd(n+1, 5^n))%5`
-/

namespace A277543.P15273440602952325740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd (n + 1) (5 ^ n) : ℚ))) 5

end

end A277543.P15273440602952325740

namespace A277543

/-- `((n+1)/gcd(n+1, 5^n))%5` -/
def P15273440602952325740.Spec : Prop :=
  ∀ n, P15273440602952325740.a n = A277543 (n + 1)

end A277543

/-!
# A277544: a(n) = n/6^m mod 6, where 6^m is the greatest power of 6 that divides n.

The programs for A277544, the canonical program `A277544.P3055413554976550482` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277544 has offset 1).

The definition of A277544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277544.P3055413554976550482

`((n+1)/6^val(n+1, 6))%6`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277544

/-- `((n+1)/6^val(n+1, 6))%6` -/
def P3055413554976550482.Spec : Prop :=
  ∀ n, P3055413554976550482.a n = A277544 (n + 1)

theorem P3055413554976550482.correct : P3055413554976550482.Spec := by
  intro n
  simp only [A277544, Nat.add_sub_cancel]

end A277544

/-! ## A277544.P15690365182215751475

`((n+1)*6^-val(n+1, 6))%6`
-/

namespace A277544.P15690365182215751475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (6 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 6 : ℤ) : ℤ))) 6

end

end A277544.P15690365182215751475

namespace A277544

/-- `((n+1)*6^-val(n+1, 6))%6` -/
def P15690365182215751475.Spec : Prop :=
  ∀ n, P15690365182215751475.a n = A277544 (n + 1)

theorem P15690365182215751475.correct : P15690365182215751475.Spec := by
  intro n
  simp only [A277544, Nat.add_sub_cancel, A277544.P15690365182215751475.a, A277544.P3055413554976550482.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A277544

/-! ## A277544.P13747929227457996893

`A244414(n+1)%6`
-/

namespace A277544.P13747929227457996893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244414 (n + 1)) 6

end

end A277544.P13747929227457996893

namespace A277544

/-- `A244414(n+1)%6` -/
def P13747929227457996893.Spec : Prop :=
  ∀ n, P13747929227457996893.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P6668027564157691321

`A373397(n+1)%6`
-/

namespace A277544.P6668027564157691321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A373397 (n + 1)) 6

end

end A277544.P6668027564157691321

namespace A277544

/-- `A373397(n+1)%6` -/
def P6668027564157691321.Spec : Prop :=
  ∀ n, P6668027564157691321.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P4955022675705875929

`A010875(A244414(n+1))`
-/

namespace A277544.P4955022675705875929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A244414 (n + 1)).toNat

end

end A277544.P4955022675705875929

namespace A277544

/-- `A010875(A244414(n+1))` -/
def P4955022675705875929.Spec : Prop :=
  ∀ n, P4955022675705875929.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P10669737311957420636

`A010875(A373397(n+1))`
-/

namespace A277544.P10669737311957420636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A373397 (n + 1)).toNat

end

end A277544.P10669737311957420636

namespace A277544

/-- `A010875(A373397(n+1))` -/
def P10669737311957420636.Spec : Prop :=
  ∀ n, P10669737311957420636.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P12540979725117044073

`A339256(A030105(n+1))`
-/

namespace A277544.P12540979725117044073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339256 (A030105 (n + 1)).toNat

end

end A277544.P12540979725117044073

namespace A277544

/-- `A339256(A030105(n+1))` -/
def P12540979725117044073.Spec : Prop :=
  ∀ n, P12540979725117044073.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P9994243132474053278

`A277545(A020657(n+2))`
-/

namespace A277544.P9994243132474053278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277545 (A020657 (n + 2)).toNat

end

end A277544.P9994243132474053278

namespace A277544

/-- `A277545(A020657(n+2))` -/
def P9994243132474053278.Spec : Prop :=
  ∀ n, P9994243132474053278.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P8873810455430026795

`A277546(A037471(n+1))`
-/

namespace A277544.P8873810455430026795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277546 (A037471 (n + 1)).toNat

end

end A277544.P8873810455430026795

namespace A277544

/-- `A277546(A037471(n+1))` -/
def P8873810455430026795.Spec : Prop :=
  ∀ n, P8873810455430026795.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P17741675975986599033

`A277547(A037472(n+1))`
-/

namespace A277544.P17741675975986599033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277547 (A037472 (n + 1)).toNat

end

end A277544.P17741675975986599033

namespace A277544

/-- `A277547(A037472(n+1))` -/
def P17741675975986599033.Spec : Prop :=
  ∀ n, P17741675975986599033.a n = A277544 (n + 1)

end A277544

/-! ## A277544.P6121014222370461605

`A065881(A007092(n+1))`
-/

namespace A277544.P6121014222370461605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A007092 (n + 1)).toNat

end

end A277544.P6121014222370461605

namespace A277544

/-- `A065881(A007092(n+1))` -/
def P6121014222370461605.Spec : Prop :=
  ∀ n, P6121014222370461605.a n = A277544 (n + 1)

end A277544

/-!
# A277545: a(n) = n/7^m mod 7, where 7^m is the greatest power of 7 that divides n.

The programs for A277545, the canonical program `A277545.P2354250311546771555` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277545 has offset 1).

The definition of A277545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277545.P2354250311546771555

`((n+1)/7^val(n+1, 7))%7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277545

/-- `((n+1)/7^val(n+1, 7))%7` -/
def P2354250311546771555.Spec : Prop :=
  ∀ n, P2354250311546771555.a n = A277545 (n + 1)

theorem P2354250311546771555.correct : P2354250311546771555.Spec := by
  intro n
  simp only [A277545, Nat.add_sub_cancel]

end A277545

/-! ## A277545.P12409738716283908751

`A242603(n+1)%7`
-/

namespace A277545.P12409738716283908751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242603 (n + 1)) 7

end

end A277545.P12409738716283908751

namespace A277545

/-- `A242603(n+1)%7` -/
def P12409738716283908751.Spec : Prop :=
  ∀ n, P12409738716283908751.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P6803390224304558082

`A359099(n+1)%7`
-/

namespace A277545.P6803390224304558082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A359099 (n + 1)) 7

end

end A277545.P6803390224304558082

namespace A277545

/-- `A359099(n+1)%7` -/
def P6803390224304558082.Spec : Prop :=
  ∀ n, P6803390224304558082.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P4891709682074263551

`A010886(A242603(n+1)-1)`
-/

namespace A277545.P4891709682074263551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010886 (A242603 (n + 1) - 1).toNat

end

end A277545.P4891709682074263551

namespace A277545

/-- `A010886(A242603(n+1)-1)` -/
def P4891709682074263551.Spec : Prop :=
  ∀ n, P4891709682074263551.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P6772783656258160680

`A010876(A242603(n+1)-1)+1`
-/

namespace A277545.P6772783656258160680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A242603 (n + 1) - 1).toNat + 1

end

end A277545.P6772783656258160680

namespace A277545

/-- `A010876(A242603(n+1)-1)+1` -/
def P6772783656258160680.Spec : Prop :=
  ∀ n, P6772783656258160680.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P10917649596297439288

`A010876(A242603(n+1))`
-/

namespace A277545.P10917649596297439288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A242603 (n + 1)).toNat

end

end A277545.P10917649596297439288

namespace A277545

/-- `A010876(A242603(n+1))` -/
def P10917649596297439288.Spec : Prop :=
  ∀ n, P10917649596297439288.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P2823606938749764842

`A010876(A359099(n+1)-1)+1`
-/

namespace A277545.P2823606938749764842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A359099 (n + 1) - 1).toNat + 1

end

end A277545.P2823606938749764842

namespace A277545

/-- `A010876(A359099(n+1)-1)+1` -/
def P2823606938749764842.Spec : Prop :=
  ∀ n, P2823606938749764842.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P2832668028144061242

`A010876(A359099(n+1))`
-/

namespace A277545.P2832668028144061242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A359099 (n + 1)).toNat

end

end A277545.P2832668028144061242

namespace A277545

/-- `A010876(A359099(n+1))` -/
def P2832668028144061242.Spec : Prop :=
  ∀ n, P2832668028144061242.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P8668576916684329319

`A277546(A037474(n+1))`
-/

namespace A277545.P8668576916684329319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277546 (A037474 (n + 1)).toNat

end

end A277545.P8668576916684329319

namespace A277545

/-- `A277546(A037474(n+1))` -/
def P8668576916684329319.Spec : Prop :=
  ∀ n, P8668576916684329319.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P9920954855358373347

`A277547(A037475(n+1))`
-/

namespace A277545.P9920954855358373347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277547 (A037475 (n + 1)).toNat

end

end A277545.P9920954855358373347

namespace A277545

/-- `A277547(A037475(n+1))` -/
def P9920954855358373347.Spec : Prop :=
  ∀ n, P9920954855358373347.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P17484958464536517249

`A030106(A030106(n+1))%7`
-/

namespace A277545.P17484958464536517249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030106 (A030106 (n + 1)).toNat) 7

end

end A277545.P17484958464536517249

namespace A277545

/-- `A030106(A030106(n+1))%7` -/
def P17484958464536517249.Spec : Prop :=
  ∀ n, P17484958464536517249.a n = A277545 (n + 1)

end A277545

/-! ## A277545.P11608797859839307878

`A065881(A007093(n+1))`
-/

namespace A277545.P11608797859839307878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A007093 (n + 1)).toNat

end

end A277545.P11608797859839307878

namespace A277545

/-- `A065881(A007093(n+1))` -/
def P11608797859839307878.Spec : Prop :=
  ∀ n, P11608797859839307878.a n = A277545 (n + 1)

end A277545

/-!
# A277546: a(n) = n/8^m mod 8, where 8^m is the greatest power of 8 that divides n.

The programs for A277546, the canonical program `A277546.P14022225071014178594` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277546 has offset 1).

The definition of A277546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277546.P14022225071014178594

`((n+1)/8^val(n+1, 8))%8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277546

/-- `((n+1)/8^val(n+1, 8))%8` -/
def P14022225071014178594.Spec : Prop :=
  ∀ n, P14022225071014178594.a n = A277546 (n + 1)

theorem P14022225071014178594.correct : P14022225071014178594.Spec := by
  intro n
  simp only [A277546, Nat.add_sub_cancel]

end A277546

/-! ## A277546.P13930617530851426026

`and(7, (n+1)%A000265(7*(n+1)))`
-/

namespace A277546.P13930617530851426026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (Int.tmod (n + 1 : ℤ) (A000265 (7 * (n + 1))))

end

end A277546.P13930617530851426026

namespace A277546

/-- `and(7, (n+1)%A000265(7*(n+1)))` -/
def P13930617530851426026.Spec : Prop :=
  ∀ n, P13930617530851426026.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P11287920623123426190

`A010877((n+1)/A268355(n+1))`
-/

namespace A277546.P11287920623123426190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A268355 (n + 1) : ℚ))).toNat

end

end A277546.P11287920623123426190

namespace A277546

/-- `A010877((n+1)/A268355(n+1))` -/
def P11287920623123426190.Spec : Prop :=
  ∀ n, P11287920623123426190.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P1324214911669162426

`A277547(A037477(n+1))`
-/

namespace A277546.P1324214911669162426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277547 (A037477 (n + 1)).toNat

end

end A277546.P1324214911669162426

namespace A277546

/-- `A277547(A037477(n+1))` -/
def P1324214911669162426.Spec : Prop :=
  ∀ n, P1324214911669162426.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P7969369706990944320

`A030107(A030107(n+1))%8`
-/

namespace A277546.P7969369706990944320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030107 (A030107 (n + 1)).toNat) 8

end

end A277546.P7969369706990944320

namespace A277546

/-- `A030107(A030107(n+1))%8` -/
def P7969369706990944320.Spec : Prop :=
  ∀ n, P7969369706990944320.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P213396973225659234

`A065881(A007094(n+1))`
-/

namespace A277546.P213396973225659234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A007094 (n + 1)).toNat

end

end A277546.P213396973225659234

namespace A277546

/-- `A065881(A007094(n+1))` -/
def P213396973225659234.Spec : Prop :=
  ∀ n, P213396973225659234.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P6470517265110555337

`A065881(record[2*n+1-A222252(n)])`
-/

namespace A277546.P6470517265110555337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A222252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277546.P6470517265110555337

namespace A277546

/-- `A065881(record[2*n+1-A222252(n)])` -/
def P6470517265110555337.Spec : Prop :=
  ∀ n, P6470517265110555337.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P5364598455007039907

`A065881(eq[n, A222254(A028310(n))])`
-/

namespace A277546.P5364598455007039907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277546.P5364598455007039907

namespace A277546

/-- `A065881(eq[n, A222254(A028310(n))])` -/
def P5364598455007039907.Spec : Prop :=
  ∀ n, P5364598455007039907.a n = A277546 (n + 1)

end A277546

/-! ## A277546.P10884577191456242748

`A065881(A171644(n+1))`
-/

namespace A277546.P10884577191456242748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A171644 (n + 1)).toNat

end

end A277546.P10884577191456242748

namespace A277546

/-- `A065881(A171644(n+1))` -/
def P10884577191456242748.Spec : Prop :=
  ∀ n, P10884577191456242748.a n = A277546 (n + 1)

end A277546

/-!
# A277547: a(n) = n/9^m mod 9, where 9^m is the greatest power of 9 that divides n.

The programs for A277547, the canonical program `A277547.P15256688421697893935` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277547 has offset 1).

The definition of A277547 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277547.P15256688421697893935

`((n+1)/9^val(n+1, 9))%9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277547

/-- `((n+1)/9^val(n+1, 9))%9` -/
def P15256688421697893935.Spec : Prop :=
  ∀ n, P15256688421697893935.a n = A277547 (n + 1)

theorem P15256688421697893935.correct : P15256688421697893935.Spec := by
  intro n
  simp only [A277547, Nat.add_sub_cancel]

end A277547

/-! ## A277547.P10267142650359561416

`((n+1)%(4*A038502(n+1)))%9`
-/

namespace A277547.P10267142650359561416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (n + 1 : ℤ) (4 * A038502 (n + 1))) 9

end

end A277547.P10267142650359561416

namespace A277547

/-- `((n+1)%(4*A038502(n+1)))%9` -/
def P10267142650359561416.Spec : Prop :=
  ∀ n, P10267142650359561416.a n = A277547 (n + 1)

end A277547

/-! ## A277547.P11452722864286215899

`dr(A030108(A030108(n+1)))`
-/

namespace A277547.P11452722864286215899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030108 (A030108 (n + 1)).toNat)

end

end A277547.P11452722864286215899

namespace A277547

/-- `dr(A030108(A030108(n+1)))` -/
def P11452722864286215899.Spec : Prop :=
  ∀ n, (P11452722864286215899.a n : ℤ) = A277547 (n + 1)

end A277547

/-! ## A277547.P16181612300282817350

`A065881(A007095(n+1))`
-/

namespace A277547.P16181612300282817350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A007095 (n + 1)).toNat

end

end A277547.P16181612300282817350

namespace A277547

/-- `A065881(A007095(n+1))` -/
def P16181612300282817350.Spec : Prop :=
  ∀ n, P16181612300282817350.a n = A277547 (n + 1)

end A277547

/-! ## A277547.P15103020369751231331

`A065881(A037479(n+1))`
-/

namespace A277547.P15103020369751231331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A037479 (n + 1)).toNat

end

end A277547.P15103020369751231331

namespace A277547

/-- `A065881(A037479(n+1))` -/
def P15103020369751231331.Spec : Prop :=
  ∀ n, P15103020369751231331.a n = A277547 (n + 1)

end A277547

/-! ## A277547.P14389580519627164718

`A065881(A052421(n+1)+1)`
-/

namespace A277547.P14389580519627164718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A052421 (n + 1) + 1).toNat

end

end A277547.P14389580519627164718

namespace A277547

/-- `A065881(A052421(n+1)+1)` -/
def P14389580519627164718.Spec : Prop :=
  ∀ n, P14389580519627164718.a n = A277547 (n + 1)

end A277547

/-! ## A277547.P13064099246337761320

`A065881(A088481(n+1))`
-/

namespace A277547.P13064099246337761320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A088481 (n + 1)).toNat

end

end A277547.P13064099246337761320

namespace A277547

/-- `A065881(A088481(n+1))` -/
def P13064099246337761320.Spec : Prop :=
  ∀ n, P13064099246337761320.a n = A277547 (n + 1)

end A277547

/-! ## A277547.P2463351654135955459

`A065881(A171717(n+1))`
-/

namespace A277547.P2463351654135955459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A171717 (n + 1)).toNat

end

end A277547.P2463351654135955459

namespace A277547

/-- `A065881(A171717(n+1))` -/
def P2463351654135955459.Spec : Prop :=
  ∀ n, P2463351654135955459.a n = A277547 (n + 1)

end A277547

/-!
# A277548: Numbers k such that k/5^m == 4 (mod 5), where 5^m is the greatest power of 5 that divides k.

The programs for A277548, the canonical program `A277548.P8976666866191349016` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277548 has offset 1).

The definition of A277548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277548.P8976666866191349016

`eq[4, A277543(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277548

/-- `eq[4, A277543(n+1)]+1` -/
def P8976666866191349016.Spec : Prop :=
  ∀ n, (P8976666866191349016.a n : ℤ) = A277548 (n + 1)

theorem P8976666866191349016.correct : P8976666866191349016.Spec := by
  intro n
  simp only [A277548, Nat.add_sub_cancel]

end A277548

/-! ## A277548.P9600061100340060850

`eq[3, A277543(A004277(n))]`
-/

namespace A277548.P9600061100340060850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P9600061100340060850

namespace A277548

/-- `eq[3, A277543(A004277(n))]` -/
def P9600061100340060850.Spec : Prop :=
  ∀ n, (P9600061100340060850.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P15956415923152336762

`record[A025480(A277555(n+2))]`
-/

namespace A277548.P15956415923152336762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A277555 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277548.P15956415923152336762

namespace A277548

/-- `record[A025480(A277555(n+2))]` -/
def P15956415923152336762.Spec : Prop :=
  ∀ n, P15956415923152336762.a n = A277548 (n + 1)

end A277548

/-! ## A277548.P5334199008620145927

`eq[3, A277543(A004275(n+1))]`
-/

namespace A277548.P5334199008620145927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P5334199008620145927

namespace A277548

/-- `eq[3, A277543(A004275(n+1))]` -/
def P5334199008620145927.Spec : Prop :=
  ∀ n, (P5334199008620145927.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P17363291808542724346

`lt[A002518(2*n), A002518(n)]`
-/

namespace A277548.P17363291808542724346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277548.P17363291808542724346

namespace A277548

/-- `lt[A002518(2*n), A002518(n)]` -/
def P17363291808542724346.Spec : Prop :=
  ∀ n, (P17363291808542724346.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P17362998406011266961

`lt[A277543(2*(n+1)), A277543(n+2)]+2`
-/

namespace A277548.P17362998406011266961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A277548.P17362998406011266961

namespace A277548

/-- `lt[A277543(2*(n+1)), A277543(n+2)]+2` -/
def P17362998406011266961.Spec : Prop :=
  ∀ n, (P17362998406011266961.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P5452471298544274831

`lt[A002518(A005843(n))+1, A002518(n)]`
-/

namespace A277548.P5452471298544274831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (A005843 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277548.P5452471298544274831

namespace A277548

/-- `lt[A002518(A005843(n))+1, A002518(n)]` -/
def P5452471298544274831.Spec : Prop :=
  ∀ n, (P5452471298544274831.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P14208494602445195611

`eq[2, A277543(A008486(n))]`
-/

namespace A277548.P14208494602445195611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P14208494602445195611

namespace A277548

/-- `eq[2, A277543(A008486(n))]` -/
def P14208494602445195611.Spec : Prop :=
  ∀ n, (P14208494602445195611.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P3020269436583287895

`eq[2, A277543(A008574(n)-n)]`
-/

namespace A277548.P3020269436583287895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008574 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P3020269436583287895

namespace A277548

/-- `eq[2, A277543(A008574(n)-n)]` -/
def P3020269436583287895.Spec : Prop :=
  ∀ n, (P3020269436583287895.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P12526903945855220807

`eq[A043545(n), A277543(A008574(n))]`
-/

namespace A277548.P12526903945855220807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277548.P12526903945855220807

namespace A277548

/-- `eq[A043545(n), A277543(A008574(n))]` -/
def P12526903945855220807.Spec : Prop :=
  ∀ n, (P12526903945855220807.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P5521568596054058610

`eq[4, A277543(A008458(n))]`
-/

namespace A277548.P5521568596054058610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P5521568596054058610

namespace A277548

/-- `eq[4, A277543(A008458(n))]` -/
def P5521568596054058610.Spec : Prop :=
  ∀ n, (P5521568596054058610.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P9834349131761379701

`eq[2, A277543(A022144(n))]`
-/

namespace A277548.P9834349131761379701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P9834349131761379701

namespace A277548

/-- `eq[2, A277543(A022144(n))]` -/
def P9834349131761379701.Spec : Prop :=
  ∀ n, (P9834349131761379701.a n : ℤ) = A277548 (n + 1)

end A277548

/-! ## A277548.P14992789709603279075

`eq[2, A277543(A008574(2*n))]`
-/

namespace A277548.P14992789709603279075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008574 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277548.P14992789709603279075

namespace A277548

/-- `eq[2, A277543(A008574(2*n))]` -/
def P14992789709603279075.Spec : Prop :=
  ∀ n, (P14992789709603279075.a n : ℤ) = A277548 (n + 1)

end A277548

/-!
# A277549: Numbers k such that k/4^m == 1 (mod 4), where 4^m is the greatest power of 4 that divides k.

The programs for A277549, the canonical program `A277549.P6170443303380261541` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277549 has offset 1).

The definition of A277549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277549.P6170443303380261541

`eq[1, and(3, A007913(n+1))]+1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A277549

/-- `eq[1, and(3, A007913(n+1))]+1` -/
def P6170443303380261541.Spec : Prop :=
  ∀ n, (P6170443303380261541.a n : ℤ) = A277549 (n + 1)

theorem P6170443303380261541.correct : P6170443303380261541.Spec := by
  intro n
  simp only [A277549, Nat.add_sub_cancel]

end A277549

/-! ## A277549.P3238575863333875252

`eq[A292372(n+1), A292372(n)]+1`
-/

namespace A277549.P3238575863333875252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277549.P3238575863333875252

namespace A277549

/-- `eq[A292372(n+1), A292372(n)]+1` -/
def P3238575863333875252.Spec : Prop :=
  ∀ n, (P3238575863333875252.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P11224327367838126980

`lt[A292371(n), A292371(n+1)]+1`
-/

namespace A277549.P11224327367838126980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277549.P11224327367838126980

namespace A277549

/-- `lt[A292371(n), A292371(n+1)]+1` -/
def P11224327367838126980.Spec : Prop :=
  ∀ n, (P11224327367838126980.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P5236590457182993836

`∪[A055045(n+1), A234000(n+1)]`
-/

namespace A277549.P5236590457182993836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234000 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277549.P5236590457182993836

namespace A277549

/-- `∪[A055045(n+1), A234000(n+1)]` -/
def P5236590457182993836.Spec : Prop :=
  ∀ n, (P5236590457182993836.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P6614893340448882253

`filter[A338692(n+1), A035263(#)]`
-/

namespace A277549.P6614893340448882253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A277549.P6614893340448882253

namespace A277549

/-- `filter[A338692(n+1), A035263(#)]` -/
def P6614893340448882253.Spec : Prop :=
  ∀ n, P6614893340448882253.a n = A277549 (n + 1)

end A277549

/-! ## A277549.P4412030606674914509

`filter[A091072(n+1), A035263(#)]`
-/

namespace A277549.P4412030606674914509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A277549.P4412030606674914509

namespace A277549

/-- `filter[A091072(n+1), A035263(#)]` -/
def P4412030606674914509.Spec : Prop :=
  ∀ n, P4412030606674914509.a n = A277549 (n + 1)

end A277549

/-! ## A277549.P15271309786714562606

`∩[A091072(n+1), A338692(n+1)]`
-/

namespace A277549.P15271309786714562606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277549.P15271309786714562606

namespace A277549

/-- `∩[A091072(n+1), A338692(n+1)]` -/
def P15271309786714562606.Spec : Prop :=
  ∀ n, (P15271309786714562606.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P14117836596075453235

`eq[1, A009531(A007913(n+1))]+1`
-/

namespace A277549.P14117836596075453235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277549.P14117836596075453235

namespace A277549

/-- `eq[1, A009531(A007913(n+1))]+1` -/
def P14117836596075453235.Spec : Prop :=
  ∀ n, (P14117836596075453235.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P14243017073968324715

`∩[A003159(n+1), A091072(n+1)]`
-/

namespace A277549.P14243017073968324715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277549.P14243017073968324715

namespace A277549

/-- `∩[A003159(n+1), A091072(n+1)]` -/
def P14243017073968324715.Spec : Prop :=
  ∀ n, (P14243017073968324715.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P538371620651408196

`∩[A003159(n+1), A338692(n+1)]`
-/

namespace A277549.P538371620651408196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277549.P538371620651408196

namespace A277549

/-- `∩[A003159(n+1), A338692(n+1)]` -/
def P538371620651408196.Spec : Prop :=
  ∀ n, (P538371620651408196.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P7474134203464783488

`eq[0, Δ[A160382(n)]]+1`
-/

namespace A277549.P7474134203464783488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277549.P7474134203464783488

namespace A277549

/-- `eq[0, Δ[A160382(n)]]+1` -/
def P7474134203464783488.Spec : Prop :=
  ∀ n, (P7474134203464783488.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P7950693785334945055

`lt[0, Δ[A048647(n)]]+1`
-/

namespace A277549.P7950693785334945055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A277549.P7950693785334945055

namespace A277549

/-- `lt[0, Δ[A048647(n)]]+1` -/
def P7950693785334945055.Spec : Prop :=
  ∀ n, (P7950693785334945055.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P4850386753143914428

`eq[1, A065882(n+1)]+1`
-/

namespace A277549.P4850386753143914428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277549.P4850386753143914428

namespace A277549

/-- `eq[1, A065882(n+1)]+1` -/
def P4850386753143914428.Spec : Prop :=
  ∀ n, (P4850386753143914428.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P14395988233690435087

`lt[Δ[A069891(n)]%4, 2]+1`
-/

namespace A277549.P14395988233690435087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A277549.P14395988233690435087

namespace A277549

/-- `lt[Δ[A069891(n)]%4, 2]+1` -/
def P14395988233690435087.Spec : Prop :=
  ∀ n, (P14395988233690435087.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P3918426293762842183

`eq[1, A164677(n+1)%2]+1`
-/

namespace A277549.P3918426293762842183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164677 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277549.P3918426293762842183

namespace A277549

/-- `eq[1, A164677(n+1)%2]+1` -/
def P3918426293762842183.Spec : Prop :=
  ∀ n, (P3918426293762842183.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P4272419849046707793

`record[A019554(n+1)²/A037449(n+1)]`
-/

namespace A277549.P4272419849046707793
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019554 (n + 1) ^ 2 : ℚ) / (A037449 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277549.P4272419849046707793

namespace A277549

/-- `record[A019554(n+1)²/A037449(n+1)]` -/
def P4272419849046707793.Spec : Prop :=
  ∀ n, P4272419849046707793.a n = (A277549 (n + 1) : ℚ)

end A277549

/-! ## A277549.P12791563644924994454

`lt[0, Δ[A160381(n)]]+1`
-/

namespace A277549.P12791563644924994454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A277549.P12791563644924994454

namespace A277549

/-- `lt[0, Δ[A160381(n)]]+1` -/
def P12791563644924994454.Spec : Prop :=
  ∀ n, (P12791563644924994454.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P8713425020772846167

`eq[A089309(n), A285384(n+1)]`
-/

namespace A277549.P8713425020772846167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277549.P8713425020772846167

namespace A277549

/-- `eq[A089309(n), A285384(n+1)]` -/
def P8713425020772846167.Spec : Prop :=
  ∀ n, (P8713425020772846167.a n : ℤ) = A277549 (n + 1)

end A277549

/-! ## A277549.P8887893046107834502

`eq[A112347(n), A285384(n+1)]`
-/

namespace A277549.P8887893046107834502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112347 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285384 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277549.P8887893046107834502

namespace A277549

/-- `eq[A112347(n), A285384(n+1)]` -/
def P8887893046107834502.Spec : Prop :=
  ∀ n, (P8887893046107834502.a n : ℤ) = A277549 (n + 1)

end A277549

/-!
# A277550: Numbers k such that k/5^m == 1 (mod 5), where 5^m is the greatest power of 5 that divides k.

The programs for A277550, the canonical program `A277550.P8262281964553815661` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277550 has offset 1).

The definition of A277550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277550.P8262281964553815661

`1+eq[1, A277543(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277550

/-- `1+eq[1, A277543(n+1)]` -/
def P8262281964553815661.Spec : Prop :=
  ∀ n, (P8262281964553815661.a n : ℤ) = A277550 (n + 1)

theorem P8262281964553815661.correct : P8262281964553815661.Spec := by
  intro n
  simp only [A277550, Nat.add_sub_cancel]

end A277550

/-! ## A277550.P5435883915507361438

`record[floor(root(n+2, A277543(n+2)))]`
-/

namespace A277550.P5435883915507361438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) ^ (1 / (A277543 (n + 2) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277550.P5435883915507361438

namespace A277550

/-- `record[floor(root(n+2, A277543(n+2)))]` -/
def P5435883915507361438.Spec : Prop :=
  ∀ n, P5435883915507361438.a n = A277550 (n + 1)

end A277550

/-! ## A277550.P15825790498814285016

`eq[1, A277543(A000038(n)+n)]`
-/

namespace A277550.P15825790498814285016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P15825790498814285016

namespace A277550

/-- `eq[1, A277543(A000038(n)+n)]` -/
def P15825790498814285016.Spec : Prop :=
  ∀ n, (P15825790498814285016.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P4904820004366071588

`record[(n+1)/A277543(A132739(n+1))]`
-/

namespace A277550.P4904820004366071588
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277543 (A132739 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277550.P4904820004366071588

namespace A277550

/-- `record[(n+1)/A277543(A132739(n+1))]` -/
def P4904820004366071588.Spec : Prop :=
  ∀ n, P4904820004366071588.a n = (A277550 (n + 1) : ℚ)

end A277550

/-! ## A277550.P10387916208159162914

`record[(n+1)/A277543((n+1)%A277548(n+1))]`
-/

namespace A277550.P10387916208159162914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277543 (Int.tmod (n + 1 : ℤ) (A277548 (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277550.P10387916208159162914

namespace A277550

/-- `record[(n+1)/A277543((n+1)%A277548(n+1))]` -/
def P10387916208159162914.Spec : Prop :=
  ∀ n, P10387916208159162914.a n = (A277550 (n + 1) : ℚ)

end A277550

/-! ## A277550.P16003582786201790054

`record[(n+1)/A277543(n+1)]%A277551(n+1)`
-/

namespace A277550.P16003582786201790054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277543 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A277551 (n + 1))

end

end A277550.P16003582786201790054

namespace A277550

/-- `record[(n+1)/A277543(n+1)]%A277551(n+1)` -/
def P16003582786201790054.Spec : Prop :=
  ∀ n, P16003582786201790054.a n = A277550 (n + 1)

end A277550

/-! ## A277550.P11686681569640605918

`eq[2, A277543(A004277(n))]`
-/

namespace A277550.P11686681569640605918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P11686681569640605918

namespace A277550

/-- `eq[2, A277543(A004277(n))]` -/
def P11686681569640605918.Spec : Prop :=
  ∀ n, (P11686681569640605918.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P14947747544755508372

`eq[2, A277543(A004275(n+1))]`
-/

namespace A277550.P14947747544755508372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P14947747544755508372

namespace A277550

/-- `eq[2, A277543(A004275(n+1))]` -/
def P14947747544755508372.Spec : Prop :=
  ∀ n, (P14947747544755508372.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P2535665546009134098

`eq[1, A277543(A008486(n))-2]`
-/

namespace A277550.P2535665546009134098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008486 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P2535665546009134098

namespace A277550

/-- `eq[1, A277543(A008486(n))-2]` -/
def P2535665546009134098.Spec : Prop :=
  ∀ n, (P2535665546009134098.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P17665397223529550816

`eq[2, A277543(A008574(n))-2]`
-/

namespace A277550.P17665397223529550816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008574 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P17665397223529550816

namespace A277550

/-- `eq[2, A277543(A008574(n))-2]` -/
def P17665397223529550816.Spec : Prop :=
  ∀ n, (P17665397223529550816.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P15492373587389518786

`eq[1, A277543(2*A008486(n))]`
-/

namespace A277550.P15492373587389518786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (2 * A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P15492373587389518786

namespace A277550

/-- `eq[1, A277543(2*A008486(n))]` -/
def P15492373587389518786.Spec : Prop :=
  ∀ n, (P15492373587389518786.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P15182218784886177076

`eq[2, A277543(A008458(n)+n)]`
-/

namespace A277550.P15182218784886177076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008458 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P15182218784886177076

namespace A277550

/-- `eq[2, A277543(A008458(n)+n)]` -/
def P15182218784886177076.Spec : Prop :=
  ∀ n, (P15182218784886177076.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P12218168918827038311

`eq[1, A277543(A022144(n))-2]`
-/

namespace A277550.P12218168918827038311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A022144 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P12218168918827038311

namespace A277550

/-- `eq[1, A277543(A022144(n))-2]` -/
def P12218168918827038311.Spec : Prop :=
  ∀ n, (P12218168918827038311.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P6873205134227229575

`eq[2, A277543(A008458(2*n))]`
-/

namespace A277550.P6873205134227229575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008458 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P6873205134227229575

namespace A277550

/-- `eq[2, A277543(A008458(2*n))]` -/
def P6873205134227229575.Spec : Prop :=
  ∀ n, (P6873205134227229575.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P12647234300202829654

`eq[1, A277543(2*A022144(n))]`
-/

namespace A277550.P12647234300202829654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (2 * A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277550.P12647234300202829654

namespace A277550

/-- `eq[1, A277543(2*A022144(n))]` -/
def P12647234300202829654.Spec : Prop :=
  ∀ n, (P12647234300202829654.a n : ℤ) = A277550 (n + 1)

end A277550

/-! ## A277550.P8245323067703993334

`record[A007957(n+1)-n*A225985(n+1)]`
-/

namespace A277550.P8245323067703993334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007957 (n + 1) - (n : ℤ) * A225985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277550.P8245323067703993334

namespace A277550

/-- `record[A007957(n+1)-n*A225985(n+1)]` -/
def P8245323067703993334.Spec : Prop :=
  ∀ n, P8245323067703993334.a n = A277550 (n + 1)

end A277550

/-!
# A277551: Numbers k such that k/5^m == 2 (mod 5), where 5^m is the greatest power of 5 that divides k.

The programs for A277551, the canonical program `A277551.P2486715914550172884` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277551 has offset 1).

The definition of A277551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3750 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277551.P2486715914550172884

`record[A000217(A277548(n+1))%A277548(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A277551

/-- `record[A000217(A277548(n+1))%A277548(n+1)]` -/
def P2486715914550172884.Spec : Prop :=
  ∀ n, P2486715914550172884.a n = A277551 (n + 1)

theorem P2486715914550172884.correct : P2486715914550172884.Spec := by
  intro n
  simp only [A277551, Nat.add_sub_cancel]

end A277551

/-! ## A277551.P2484370357010449157

`eq[2, A277543(n+1)]+1`
-/

namespace A277551.P2484370357010449157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277551.P2484370357010449157

namespace A277551

/-- `eq[2, A277543(n+1)]+1` -/
def P2484370357010449157.Spec : Prop :=
  ∀ n, (P2484370357010449157.a n : ℤ) = A277551 (n + 1)

end A277551

/-! ## A277551.P17544435962892576713

`lt[3, A277543(A004277(n))]`
-/

namespace A277551.P17544435962892576713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277551.P17544435962892576713

namespace A277551

/-- `lt[3, A277543(A004277(n))]` -/
def P17544435962892576713.Spec : Prop :=
  ∀ n, (P17544435962892576713.a n : ℤ) = A277551 (n + 1)

end A277551

/-! ## A277551.P2609548151760116251

`record[A289435(A277548(n+1))]`
-/

namespace A277551.P2609548151760116251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A277548 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277551.P2609548151760116251

namespace A277551

/-- `record[A289435(A277548(n+1))]` -/
def P2609548151760116251.Spec : Prop :=
  ∀ n, P2609548151760116251.a n = A277551 (n + 1)

end A277551

/-! ## A277551.P7211855978083655492

`eq[4, A277543(A004275(n+1))]`
-/

namespace A277551.P7211855978083655492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277551.P7211855978083655492

namespace A277551

/-- `eq[4, A277543(A004275(n+1))]` -/
def P7211855978083655492.Spec : Prop :=
  ∀ n, (P7211855978083655492.a n : ℤ) = A277551 (n + 1)

end A277551

/-! ## A277551.P14412201888833635862

`eq[2, A030104(A030104(n))%5]`
-/

namespace A277551.P14412201888833635862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030104 (A030104 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277551.P14412201888833635862

namespace A277551

/-- `eq[2, A030104(A030104(n))%5]` -/
def P14412201888833635862.Spec : Prop :=
  ∀ n, (P14412201888833635862.a n : ℤ) = A277551 (n + 1)

end A277551

/-! ## A277551.P16779444465373449000

`eq[3, A277543(A008574(n))]`
-/

namespace A277551.P16779444465373449000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277551.P16779444465373449000

namespace A277551

/-- `eq[3, A277543(A008574(n))]` -/
def P16779444465373449000.Spec : Prop :=
  ∀ n, (P16779444465373449000.a n : ℤ) = A277551 (n + 1)

end A277551

/-! ## A277551.P18101945943628969864

`lt[A002518(4*n), A002518(2*n)]`
-/

namespace A277551.P18101945943628969864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277551.P18101945943628969864

namespace A277551

/-- `lt[A002518(4*n), A002518(2*n)]` -/
def P18101945943628969864.Spec : Prop :=
  ∀ n, (P18101945943628969864.a n : ℤ) = A277551 (n + 1)

end A277551

/-! ## A277551.P8260807719344806344

`eq[2, A277543(A008458(n))]`
-/

namespace A277551.P8260807719344806344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277551.P8260807719344806344

namespace A277551

/-- `eq[2, A277543(A008458(n))]` -/
def P8260807719344806344.Spec : Prop :=
  ∀ n, (P8260807719344806344.a n : ℤ) = A277551 (n + 1)

end A277551

/-!
# A277552: Primes q with prime gap q - p of n-th record merit.

The programs for A277552, there is no canonical definition to state claims against.
-/

/-! ## A277552.P1619910593565614738

`A111870(n+1)+A111871(n+1)`
-/

namespace A277552.P1619910593565614738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111870 (n + 1) + A111871 (n + 1)

end

end A277552.P1619910593565614738

/-! ## A277552.P13248907459415856650

`A000101(eq[1, A316917(n+1)]+1)`
-/

namespace A277552.P13248907459415856650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277552.P13248907459415856650

/-! ## A277552.P12754740106374136975

`A000101(record[(n+1)*A316917(n+1)])`
-/

namespace A277552.P12754740106374136975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000101 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A277552.P12754740106374136975

/-! ## A277552.P4171740444760718343

`A205827(comp[∑[2*n]²])+A111871(n+1)`
-/

namespace A277552.P4171740444760718343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205827 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A111871 (n + 1)

end

end A277552.P4171740444760718343

/-! ## A277552.P9756755491784918119

`A111871(n+1)+record[A002386(n+1)*A316917(n+1)]`
-/

namespace A277552.P9756755491784918119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002386 (n + 1) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111871 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277552.P9756755491784918119

/-!
# A277553: Numbers k such that the sum of the divisors of k is divisible by the number of divisors of k, and the sum of the squares of the divisors of k is divisible by the sum of the divisors of k.

The programs for A277553, there is no canonical definition to state claims against.
-/

/-! ## A277553.P5729985101078195493

`filter[A020487(n+1), A245656(#)]`
-/

namespace A277553.P5729985101078195493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A245656 (f1 j).toNat = 1) n)

end

end A277553.P5729985101078195493

/-! ## A277553.P13515734707496457145

`∩[A020487(n+1), A023883(n+1)]`
-/

namespace A277553.P13515734707496457145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277553.P13515734707496457145

/-!
# A277555: Numbers k such that k/5^m == 3 (mod 5), where 5^m is the greatest power of 5 that divides k.

The programs for A277555, the canonical program `A277555.P18235990996721503234` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277555 has offset 1).

The definition of A277555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277555.P18235990996721503234

`eq[3, A277543(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277555

/-- `eq[3, A277543(n+1)]+1` -/
def P18235990996721503234.Spec : Prop :=
  ∀ n, (P18235990996721503234.a n : ℤ) = A277555 (n + 1)

theorem P18235990996721503234.correct : P18235990996721503234.Spec := by
  intro n
  simp only [A277555, Nat.add_sub_cancel]

end A277555

/-! ## A277555.P15436397630914100553

`lt[Δ[A004515(n)²], n+1]+1`
-/

namespace A277555.P15436397630914100553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004515 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A277555.P15436397630914100553

namespace A277555

/-- `lt[Δ[A004515(n)²], n+1]+1` -/
def P15436397630914100553.Spec : Prop :=
  ∀ n, (P15436397630914100553.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P736769165342960677

`eq[3, A277543(A000038(n)+n)]`
-/

namespace A277555.P736769165342960677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P736769165342960677

namespace A277555

/-- `eq[3, A277543(A000038(n)+n)]` -/
def P736769165342960677.Spec : Prop :=
  ∀ n, (P736769165342960677.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P18384706270515088842

`eq[1, A277543(A004275(n)+2)]`
-/

namespace A277555.P18384706270515088842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004275 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P18384706270515088842

namespace A277555

/-- `eq[1, A277543(A004275(n)+2)]` -/
def P18384706270515088842.Spec : Prop :=
  ∀ n, (P18384706270515088842.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P2246950097863554804

`lt[n*A277543(A004277(n))/2, n]`
-/

namespace A277555.P2246950097863554804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A277543 (A004277 n).toNat : ℚ) / 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A277555.P2246950097863554804

namespace A277555

/-- `lt[n*A277543(A004277(n))/2, n]` -/
def P2246950097863554804.Spec : Prop :=
  ∀ n, (P2246950097863554804.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P17394614942348533004

`eq[4, A277543(A008486(n))]`
-/

namespace A277555.P17394614942348533004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P17394614942348533004

namespace A277555

/-- `eq[4, A277543(A008486(n))]` -/
def P17394614942348533004.Spec : Prop :=
  ∀ n, (P17394614942348533004.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P1824136458915240305

`eq[2, A277543(A008574(n))]`
-/

namespace A277555.P1824136458915240305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P1824136458915240305

namespace A277555

/-- `eq[2, A277543(A008574(n))]` -/
def P1824136458915240305.Spec : Prop :=
  ∀ n, (P1824136458915240305.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P11532862993714378630

`eq[2, A277543(A004277(2*n))]`
-/

namespace A277555.P11532862993714378630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P11532862993714378630

namespace A277555

/-- `eq[2, A277543(A004277(2*n))]` -/
def P11532862993714378630.Spec : Prop :=
  ∀ n, (P11532862993714378630.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P17284411155315507636

`eq[3, A277543(A008458(n))]`
-/

namespace A277555.P17284411155315507636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P17284411155315507636

namespace A277555

/-- `eq[3, A277543(A008458(n))]` -/
def P17284411155315507636.Spec : Prop :=
  ∀ n, (P17284411155315507636.a n : ℤ) = A277555 (n + 1)

end A277555

/-! ## A277555.P3766689536178490608

`eq[4, A277543(A022144(n))]`
-/

namespace A277555.P3766689536178490608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277543 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277555.P3766689536178490608

namespace A277555

/-- `eq[4, A277543(A022144(n))]` -/
def P3766689536178490608.Spec : Prop :=
  ∀ n, (P3766689536178490608.a n : ℤ) = A277555 (n + 1)

end A277555

/-!
# A277557: The ordered image of the 1-to-1 mapping of an integer ordered pair (x,y) into an integer using Cantor's pairing function, where 0 < x < y, gcd(x,y)=1 and x+y odd.

The programs for A277557, there is no canonical definition to state claims against.
-/

/-! ## A277557.P13629780948506650383

`record[A292565(n+1)+A054531(A292565(n+1))]`
-/

namespace A277557.P13629780948506650383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292565 (n + 1) + A054531 (A292565 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277557.P13629780948506650383

/-! ## A277557.P14501467092195146117

`filter[A337308(n+1), A057212(#)]`
-/

namespace A277557.P14501467092195146117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A057212 (f1 j).toNat = 1) n)

end

end A277557.P14501467092195146117

/-! ## A277557.P16274812811586255393

`filter[A337308(n+1), A106465(#)]`
-/

namespace A277557.P16274812811586255393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337308 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106465 (f1 j).toNat = 1) n)

end

end A277557.P16274812811586255393

/-! ## A277557.P17288308175121540892

`∩[A061887(n), A337308(n+1)]`
-/

namespace A277557.P17288308175121540892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061887 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277557.P17288308175121540892

/-! ## A277557.P15599949400523795376

`∩[A007607(n+1), A337308(n+1)]`
-/

namespace A277557.P15599949400523795376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277557.P15599949400523795376

/-!
# A277558: A variation on Recamán's sequence (A005132): to get a(n), we first try to subtract n from a(n-1): a(n) = a(n-1)-n if positive and not already in the sequence; if not then a(n) = a(n-1)+n-i, where i >= 0 is the smallest number such that a(n-1)+n-i has not already appeared.

The programs for A277558, there is no canonical definition to state claims against.
-/

/-! ## A277558.P6647480729217499607

`A005132(n)-∑[A185245(A185215(n))]`
-/

namespace A277558.P6647480729217499607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (A185215 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A277558.P6647480729217499607

/-! ## A277558.P7243985138311355895

`A005132(n)-A185215(A185203(n))`
-/

namespace A277558.P7243985138311355895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n - A185215 (A185203 n).toNat

end

end A277558.P7243985138311355895

/-! ## A277558.P18257123314596226101

`A113880(n)%A312039(A102705(n))`
-/

namespace A277558.P18257123314596226101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113880 n) (A312039 (A102705 n).toNat)

end

end A277558.P18257123314596226101

/-! ## A277558.P4244292864697268375

`A053186(A113880(n)+A001248(n+1))`
-/

namespace A277558.P4244292864697268375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A113880 n + A001248 (n + 1)).toNat

end

end A277558.P4244292864697268375

/-! ## A277558.P18154838581253675061

`A005132(n)-A010894(A000408(n+1))`
-/

namespace A277558.P18154838581253675061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n - A010894 ((A000408 (n + 1)).toNat + 21)

end

end A277558.P18154838581253675061

/-!
# A277560: Binary representation of the x-axis, from the left edge to the origin, or from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 7", based on the 5-celled von Neumann neighborhood.

The programs for A277560, the canonical program `A277560.P12776290003756723041` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277560 has offset 0).

The definition of A277560 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277560.P6240913550950880854

`A277926(n)+char[1]`
-/

namespace A277560.P6240913550950880854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277926 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A277560.P6240913550950880854

namespace A277560

/-- `A277926(n)+char[1]` -/
def P6240913550950880854.Spec : Prop :=
  ∀ n, P6240913550950880854.a n = A277560 n

end A277560

/-! ## A277560.P2230561623792479423

`A287468(comp[comp[or(2, n)-1]+1])`
-/

namespace A277560.P2230561623792479423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A277560.P2230561623792479423

namespace A277560

/-- `A287468(comp[comp[or(2, n)-1]+1])` -/
def P2230561623792479423.Spec : Prop :=
  ∀ n, P2230561623792479423.a n = A277560 n

end A277560

/-! ## A277560.P12776290003756723041

`A002275((n+1)*(n%2)^n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277560

/-- `A002275((n+1)*(n%2)^n)` -/
def P12776290003756723041.Spec : Prop :=
  ∀ n, P12776290003756723041.a n = A277560 n

theorem P12776290003756723041.correct : P12776290003756723041.Spec := by
  intro n
  simp only [A277560]

end A277560

/-! ## A277560.P11312395696889315941

`A094026(A266437(n))`
-/

namespace A277560.P11312395696889315941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A266437 n).toNat

end

end A277560.P11312395696889315941

namespace A277560

/-- `A094026(A266437(n))` -/
def P11312395696889315941.Spec : Prop :=
  ∀ n, P11312395696889315941.a n = A277560 n

end A277560

/-! ## A277560.P15331118121893084817

`lcm(A073097(n), A285473(n))`
-/

namespace A277560.P15331118121893084817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073097 n) (A285473 n)

end

end A277560.P15331118121893084817

namespace A277560

/-- `lcm(A073097(n), A285473(n))` -/
def P15331118121893084817.Spec : Prop :=
  ∀ n, (P15331118121893084817.a n : ℤ) = A277560 n

end A277560

/-! ## A277560.P14820018678283401818

`lcm(A163805(n), A287098(n))`
-/

namespace A277560.P14820018678283401818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A163805 n) (A287098 n)

end

end A277560.P14820018678283401818

namespace A277560

/-- `lcm(A163805(n), A287098(n))` -/
def P14820018678283401818.Spec : Prop :=
  ∀ n, (P14820018678283401818.a n : ℤ) = A277560 n

end A277560

/-! ## A277560.P8916551282075303512

`or(A277926(n), A277927(n))`
-/

namespace A277560.P8916551282075303512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277926 n) (A277927 n)

end

end A277560.P8916551282075303512

namespace A277560

/-- `or(A277926(n), A277927(n))` -/
def P8916551282075303512.Spec : Prop :=
  ∀ n, P8916551282075303512.a n = A277560 n

end A277560

/-! ## A277560.P2944805503453410000

`xor(A057427(n), A280410(n))`
-/

namespace A277560.P2944805503453410000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 n) (A280410 n)

end

end A277560.P2944805503453410000

namespace A277560

/-- `xor(A057427(n), A280410(n))` -/
def P2944805503453410000.Spec : Prop :=
  ∀ n, P2944805503453410000.a n = A277560 n

end A277560

/-! ## A277560.P15398944714205798039

`xor(A063524(n²), A277926(n))`
-/

namespace A277560.P15398944714205798039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 (n ^ 2)) (A277926 n)

end

end A277560.P15398944714205798039

namespace A277560

/-- `xor(A063524(n²), A277926(n))` -/
def P15398944714205798039.Spec : Prop :=
  ∀ n, P15398944714205798039.a n = A277560 n

end A277560

/-! ## A277560.P17271658899517038944

`lcm(Δ[A123108(n)], A286642(n))`
-/

namespace A277560.P17271658899517038944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A286642 n)

end

end A277560.P17271658899517038944

namespace A277560

/-- `lcm(Δ[A123108(n)], A286642(n))` -/
def P17271658899517038944.Spec : Prop :=
  ∀ n, (P17271658899517038944.a n : ℤ) = A277560 n

end A277560

/-! ## A277560.P7295310314840254373

`or(char[A000351(n)], A277926(n))`
-/

namespace A277560.P7295310314840254373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A277926 n)

end

end A277560.P7295310314840254373

namespace A277560

/-- `or(char[A000351(n)], A277926(n))` -/
def P7295310314840254373.Spec : Prop :=
  ∀ n, P7295310314840254373.a n = A277560 n

end A277560

/-! ## A277560.P5757425468471198769

`or(char[A004273(n)], A277926(n))`
-/

namespace A277560.P5757425468471198769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A277926 n)

end

end A277560.P5757425468471198769

namespace A277560

/-- `or(char[A004273(n)], A277926(n))` -/
def P5757425468471198769.Spec : Prop :=
  ∀ n, P5757425468471198769.a n = A277560 n

end A277560

/-! ## A277560.P1525664544403624867

`A285833(n)%(2*A284940(n))`
-/

namespace A277560.P1525664544403624867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285833 n) (2 * A284940 n)

end

end A277560.P1525664544403624867

namespace A277560

/-- `A285833(n)%(2*A284940(n))` -/
def P1525664544403624867.Spec : Prop :=
  ∀ n, P1525664544403624867.a n = A277560 n

end A277560

/-! ## A277560.P10001955418011895996

`A285835(n)%2*A284940(n)`
-/

namespace A277560.P10001955418011895996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285835 n) 2 * A284940 n

end

end A277560.P10001955418011895996

namespace A277560

/-- `A285835(n)%2*A284940(n)` -/
def P10001955418011895996.Spec : Prop :=
  ∀ n, P10001955418011895996.a n = A277560 n

end A277560

/-! ## A277560.P1627890478414205209

`A286675(n)%2*A286672(n)`
-/

namespace A277560.P1627890478414205209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286675 n) 2 * A286672 n

end

end A277560.P1627890478414205209

namespace A277560

/-- `A286675(n)%2*A286672(n)` -/
def P1627890478414205209.Spec : Prop :=
  ∀ n, P1627890478414205209.a n = A277560 n

end A277560

/-! ## A277560.P16613914987002311090

`lcm(2, A286703(n))-A286703(n)`
-/

namespace A277560.P16613914987002311090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A286703 n) : ℤ) - A286703 n

end

end A277560.P16613914987002311090

namespace A277560

/-- `lcm(2, A286703(n))-A286703(n)` -/
def P16613914987002311090.Spec : Prop :=
  ∀ n, P16613914987002311090.a n = A277560 n

end A277560

/-! ## A277560.P15515824852615193841

`xor(A060576(n+1), A280410(n))`
-/

namespace A277560.P15515824852615193841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060576 (n + 1)) (A280410 n)

end

end A277560.P15515824852615193841

namespace A277560

/-- `xor(A060576(n+1), A280410(n))` -/
def P15515824852615193841.Spec : Prop :=
  ∀ n, P15515824852615193841.a n = A277560 n

end A277560

/-! ## A277560.P14856125234958921593

`and(1, A286115(n))*A286112(n)`
-/

namespace A277560.P14856125234958921593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A286115 n) * A286112 n

end

end A277560.P14856125234958921593

namespace A277560

/-- `and(1, A286115(n))*A286112(n)` -/
def P14856125234958921593.Spec : Prop :=
  ∀ n, P14856125234958921593.a n = A277560 n

end A277560

/-! ## A277560.P8774224572653284998

`xor(A019426(2*n), A280410(n))`
-/

namespace A277560.P8774224572653284998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A019426 (2 * n)) (A280410 n)

end

end A277560.P8774224572653284998

namespace A277560

/-- `xor(A019426(2*n), A280410(n))` -/
def P8774224572653284998.Spec : Prop :=
  ∀ n, P8774224572653284998.a n = A277560 n

end A277560

/-! ## A277560.P13980382000669459358

`A062510(n)+A280410(n)-A155559(n)`
-/

namespace A277560.P13980382000669459358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062510 n + (A280410 n - A155559 n)

end

end A277560.P13980382000669459358

namespace A277560

/-- `A062510(n)+A280410(n)-A155559(n)` -/
def P13980382000669459358.Spec : Prop :=
  ∀ n, P13980382000669459358.a n = A277560 n

end A277560

/-!
# A277561: a(n) = Sum_{k=0..n} ({binomial(n+2k,2k)*binomial(n,k)} mod 2).

The programs for A277561, the canonical program `A277561.P11433701935081207187` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277561 has offset 0).

The definition of A277561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A277561.P11433701935081207187

`2^A069010(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277561

/-- `2^A069010(n)` -/
def P11433701935081207187.Spec : Prop :=
  ∀ n, P11433701935081207187.a n = (A277561 n : ℚ)

end A277561

/-! ## A277561.P5225827689506891741

`A034444(A005940(1+n))`
-/

namespace A277561.P5225827689506891741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A005940 (1 + n)).toNat

end

end A277561.P5225827689506891741

namespace A277561

/-- `A034444(A005940(1+n))` -/
def P5225827689506891741.Spec : Prop :=
  ∀ n, P5225827689506891741.a n = A277561 n

end A277561

/-! ## A277561.P18069097007479772555

`2^floor(∑[Δ[xor(n, 2*n-1)]%2]/2)`
-/

namespace A277561.P18069097007479772555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋ : ℤ)

end

end A277561.P18069097007479772555

namespace A277561

/-- `2^floor(∑[Δ[xor(n, 2*n-1)]%2]/2)` -/
def P18069097007479772555.Spec : Prop :=
  ∀ n, P18069097007479772555.a n = (A277561 n : ℚ)

end A277561

/-! ## A277561.P1915606167496240804

`2*a(A087734(n))` with `a(0)=1`
-/

namespace A277561.P1915606167496240804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (A087734 n).toNat

end

end A277561.P1915606167496240804

namespace A277561

/-- `2*a(A087734(n))` -/
def P1915606167496240804.Spec : Prop :=
  ∀ n, (P1915606167496240804.a n : ℤ) = A277561 n

end A277561

/-! ## A277561.P3731340887929548042

`2^(n-A239904(n))`
-/

namespace A277561.P3731340887929548042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A239904 n : ℤ)

end

end A277561.P3731340887929548042

namespace A277561

/-- `2^(n-A239904(n))` -/
def P3731340887929548042.Spec : Prop :=
  ∀ n, P3731340887929548042.a n = (A277561 n : ℚ)

end A277561

/-! ## A277561.P18211132508272896283

`2*a(n-A283165(n))` with `a(0)=1`
-/

namespace A277561.P18211132508272896283
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ((n : ℤ) - A283165 n).toNat

end

end A277561.P18211132508272896283

namespace A277561

/-- `2*a(n-A283165(n))` -/
def P18211132508272896283.Spec : Prop :=
  ∀ n, (P18211132508272896283.a n : ℤ) = A277561 n

end A277561

/-! ## A277561.P15503557152352246170

`A001316(xor(n, 2*n)+n)`
-/

namespace A277561.P15503557152352246170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.xor n (2 * n) + n)

end

end A277561.P15503557152352246170

namespace A277561

/-- `A001316(xor(n, 2*n)+n)` -/
def P15503557152352246170.Spec : Prop :=
  ∀ n, P15503557152352246170.a n = A277561 n

end A277561

/-! ## A277561.P5962615876870817402

`A001316(and(n, xor(n, 2*n)))`
-/

namespace A277561.P5962615876870817402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Nat.land n (Nat.xor n (2 * n)))

end

end A277561.P5962615876870817402

namespace A277561

/-- `A001316(and(n, xor(n, 2*n)))` -/
def P5962615876870817402.Spec : Prop :=
  ∀ n, P5962615876870817402.a n = A277561 n

end A277561

/-! ## A277561.P6080411479566713225

`A001316(n-and(n, floor(n/2)))`
-/

namespace A277561.P6080411479566713225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 ((n : ℤ) - Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A277561.P6080411479566713225

namespace A277561

/-- `A001316(n-and(n, floor(n/2)))` -/
def P6080411479566713225.Spec : Prop :=
  ∀ n, P6080411479566713225.a n = A277561 n

end A277561

/-! ## A277561.P14137215817054723223

`2^A000120(and(n, Δ[-n²]))`
-/

namespace A277561.P14137215817054723223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat : ℤ)

end

end A277561.P14137215817054723223

namespace A277561

/-- `2^A000120(and(n, Δ[-n²]))` -/
def P14137215817054723223.Spec : Prop :=
  ∀ n, P14137215817054723223.a n = (A277561 n : ℚ)

end A277561

/-! ## A277561.P5089351267449289021

`A016116(∑[Δ[xor(n, 2*n-1)]%2])`
-/

namespace A277561.P5089351267449289021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((2 * n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A277561.P5089351267449289021

namespace A277561

/-- `A016116(∑[Δ[xor(n, 2*n-1)]%2])` -/
def P5089351267449289021.Spec : Prop :=
  ∀ n, P5089351267449289021.a n = A277561 n

end A277561

/-! ## A277561.P16636412521708040734

`A060546(A005811(n))`
-/

namespace A277561.P16636412521708040734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (A005811 n).toNat

end

end A277561.P16636412521708040734

namespace A277561

/-- `A060546(A005811(n))` -/
def P16636412521708040734.Spec : Prop :=
  ∀ n, P16636412521708040734.a n = A277561 n

end A277561

/-! ## A277561.P3624817869530923249

`A001316(A090077(n))`
-/

namespace A277561.P3624817869530923249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A090077 n).toNat

end

end A277561.P3624817869530923249

namespace A277561

/-- `A001316(A090077(n))` -/
def P3624817869530923249.Spec : Prop :=
  ∀ n, P3624817869530923249.a n = A277561 n

end A277561

/-! ## A277561.P5845067166658058841

`A001316(A090079(n))`
-/

namespace A277561.P5845067166658058841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A090079 n).toNat

end

end A277561.P5845067166658058841

namespace A277561

/-- `A001316(A090079(n))` -/
def P5845067166658058841.Spec : Prop :=
  ∀ n, P5845067166658058841.a n = A277561 n

end A277561

/-! ## A277561.P7521417756253305041

`A016116(A088748(n))`
-/

namespace A277561.P7521417756253305041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A088748 n).toNat

end

end A277561.P7521417756253305041

namespace A277561

/-- `A016116(A088748(n))` -/
def P7521417756253305041.Spec : Prop :=
  ∀ n, P7521417756253305041.a n = A277561 n

end A277561

/-! ## A277561.P10360291456290962190

`A001316(A213064(n))`
-/

namespace A277561.P10360291456290962190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A213064 n).toNat

end

end A277561.P10360291456290962190

namespace A277561

/-- `A001316(A213064(n))` -/
def P10360291456290962190.Spec : Prop :=
  ∀ n, P10360291456290962190.a n = A277561 n

end A277561

/-! ## A277561.P6039323201472202373

`A001316(A229763(n))`
-/

namespace A277561.P6039323201472202373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A229763 n).toNat

end

end A277561.P6039323201472202373

namespace A277561

/-- `A001316(A229763(n))` -/
def P6039323201472202373.Spec : Prop :=
  ∀ n, P6039323201472202373.a n = A277561 n

end A277561

/-! ## A277561.P3609047606351751743

`A001316(A292272(n))`
-/

namespace A277561.P3609047606351751743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A292272 n).toNat

end

end A277561.P3609047606351751743

namespace A277561

/-- `A001316(A292272(n))` -/
def P3609047606351751743.Spec : Prop :=
  ∀ n, P3609047606351751743.a n = A277561 n

end A277561

/-! ## A277561.P15006115302673302489

`A061142(A246029(n))`
-/

namespace A277561.P15006115302673302489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A246029 n).toNat

end

end A277561.P15006115302673302489

namespace A277561

/-- `A061142(A246029(n))` -/
def P15006115302673302489.Spec : Prop :=
  ∀ n, P15006115302673302489.a n = A277561 n

end A277561

/-! ## A277561.P11850754740914008577

`A016116(A005811(n)+1)`
-/

namespace A277561.P11850754740914008577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A005811 n + 1).toNat

end

end A277561.P11850754740914008577

namespace A277561

/-- `A016116(A005811(n)+1)` -/
def P11850754740914008577.Spec : Prop :=
  ∀ n, P11850754740914008577.a n = A277561 n

end A277561

/-!
# A277562: Numbers of the form c(x_1)^c(x_2)^...^c(x_k) where each c(i) = A007916(i) is a non-perfect-power, k >= 2, and the exponents are nested from the right.

The programs for A277562, there is no canonical definition to state claims against.
-/

/-! ## A277562.P795513753533088800

`filter[A372405(n+2), A325964(#)]`
-/

namespace A277562.P795513753533088800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372405 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325964 (f1 j).toNat = 1) n)

end

end A277562.P795513753533088800

/-! ## A277562.P13131475756524352289

`∩[A105570(A001597(n+1)), A372405(n+1)]`
-/

namespace A277562.P13131475756524352289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A001597 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277562.P13131475756524352289

/-! ## A277562.P13913677044661692062

`A372405(A077168(n)+1)`
-/

namespace A277562.P13913677044661692062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372405 (A077168 n + 1).toNat

end

end A277562.P13913677044661692062

/-! ## A277562.P3806466060237610628

`A372405(A187829(n+2))`
-/

namespace A277562.P3806466060237610628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372405 (A187829 (n + 2)).toNat

end

end A277562.P3806466060237610628

/-!
# A277563: Fifth column of Euler's difference table in A068106.

The programs for A277563, there is no canonical definition to state claims against.
-/

/-! ## A277563.P6636249860716107758

`24*A247490(A052905(n))`
-/

namespace A277563.P6636249860716107758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  24 * A247490 (A052905 n).toNat

end

end A277563.P6636249860716107758

/-! ## A277563.P10326421145915110285

`A267384(n+1)%A036408(A013991(n))`
-/

namespace A277563.P10326421145915110285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A267384 (n + 1)) (A036408 (A013991 n).toNat)

end

end A277563.P10326421145915110285

/-!
# A277565: Number of flattenable free polyominoids.

The programs for A277565, there is no canonical definition to state claims against.
-/

/-! ## A277565.P14369955842430058564

`(2*n-1)*a(n-1)+2*n^(n%2)-1` with `a(0)=1`
-/

namespace A277565.P14369955842430058564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) + ((2 * n ^ (n % 2) : ℤ) - 1)

end

end A277565.P14369955842430058564

/-!
# A277566: Irregular table by rows: Orders of subgroups of the symmetric group S_n.

The programs for A277566, there is no canonical definition to state claims against.
-/

/-! ## A277566.P533322967050817166

`A079210(lt[A185217(n+3), A000010(2*(n+2))])`
-/

namespace A277566.P533322967050817166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A277566.P533322967050817166

/-! ## A277566.P13571193950845095078

`A079210((A137205(n+4)+1)%2+1+n)`
-/

namespace A277566.P13571193950845095078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (Int.tmod (A137205 (n + 4) + 1) 2 + 1 + (n : ℤ)).toNat

end

end A277566.P13571193950845095078

/-! ## A277566.P3365350488643940440

`A079210(A246091(n+1)%A191612(2*(n+1)))`
-/

namespace A277566.P3365350488643940440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 (Int.tmod (A246091 (n + 1)) (A191612 (2 * (n + 1)))).toNat

end

end A277566.P3365350488643940440

/-! ## A277566.P7705480224647629885

`A079210(n+1)%A047987(n+1)`
-/

namespace A277566.P7705480224647629885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079210 (n + 1)) (A047987 (n + 1))

end

end A277566.P7705480224647629885

/-! ## A277566.P8861520951160846548

`A070861(n+1)%A123910(n+1)`
-/

namespace A277566.P8861520951160846548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070861 (n + 1)) (A123910 (n + 1))

end

end A277566.P8861520951160846548

/-!
# A277567: Numbers k such that k/6^m == 1 (mod 6), where 6^m is the greatest power of 6 that divides k.

The programs for A277567, the canonical program `A277567.P15704819305109196933` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277567 has offset 1).

The definition of A277567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4003 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277567.P1599773052269818991

`filter[A277572(n+1), A373156(#)]`
-/

namespace A277567.P1599773052269818991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277567.P1599773052269818991

namespace A277567

/-- `filter[A277572(n+1), A373156(#)]` -/
def P1599773052269818991.Spec : Prop :=
  ∀ n, P1599773052269818991.a n = A277567 (n + 1)

end A277567

/-! ## A277567.P14148177572741331164

`∩[A064615(n+1), A277572(n+1)]`
-/

namespace A277567.P14148177572741331164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277567.P14148177572741331164

namespace A277567

/-- `∩[A064615(n+1), A277572(n+1)]` -/
def P14148177572741331164.Spec : Prop :=
  ∀ n, (P14148177572741331164.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P15704819305109196933

`filter[A189715(n+1), A373156(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277567

/-- `filter[A189715(n+1), A373156(#)]` -/
def P15704819305109196933.Spec : Prop :=
  ∀ n, P15704819305109196933.a n = A277567 (n + 1)

theorem P15704819305109196933.correct : P15704819305109196933.Spec := by
  intro n
  simp only [A277567, Nat.add_sub_cancel]

end A277567

/-! ## A277567.P11475785211053504113

`∩[A064615(n+1), A189715(n+1)]`
-/

namespace A277567.P11475785211053504113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189715 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277567.P11475785211053504113

namespace A277567

/-- `∩[A064615(n+1), A189715(n+1)]` -/
def P11475785211053504113.Spec : Prop :=
  ∀ n, (P11475785211053504113.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P4942617962836064584

`filter[A225837(n+1), A373156(#)]`
-/

namespace A277567.P4942617962836064584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277567.P4942617962836064584

namespace A277567

/-- `filter[A225837(n+1), A373156(#)]` -/
def P4942617962836064584.Spec : Prop :=
  ∀ n, P4942617962836064584.a n = A277567 (n + 1)

end A277567

/-! ## A277567.P5677545849468846848

`∩[A064615(n+1), A225837(n+1)]`
-/

namespace A277567.P5677545849468846848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277567.P5677545849468846848

namespace A277567

/-- `∩[A064615(n+1), A225837(n+1)]` -/
def P5677545849468846848.Spec : Prop :=
  ∀ n, (P5677545849468846848.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P7796535299050082033

`∩[A277572(n+1), A277573(n+1)]`
-/

namespace A277567.P7796535299050082033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277567.P7796535299050082033

namespace A277567

/-- `∩[A277572(n+1), A277573(n+1)]` -/
def P7796535299050082033.Spec : Prop :=
  ∀ n, (P7796535299050082033.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P3173556728726262894

`eq[1, A277544(n+1)]+1`
-/

namespace A277567.P3173556728726262894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277567.P3173556728726262894

namespace A277567

/-- `eq[1, A277544(n+1)]+1` -/
def P3173556728726262894.Spec : Prop :=
  ∀ n, (P3173556728726262894.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P2025219940139067358

`record[(n+1)/A277544(n+1)]%A202253(n+1)`
-/

namespace A277567.P2025219940139067358
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277544 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A202253 (n + 1))

end

end A277567.P2025219940139067358

namespace A277567

/-- `record[(n+1)/A277544(n+1)]%A202253(n+1)` -/
def P2025219940139067358.Spec : Prop :=
  ∀ n, P2025219940139067358.a n = A277567 (n + 1)

end A277567

/-! ## A277567.P6450518349287262656

`eq[3, A020639(A030105(A030105(n))+2)]`
-/

namespace A277567.P6450518349287262656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030105 (A030105 n).toNat + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277567.P6450518349287262656

namespace A277567

/-- `eq[3, A020639(A030105(A030105(n))+2)]` -/
def P6450518349287262656.Spec : Prop :=
  ∀ n, (P6450518349287262656.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P5780558379220331579

`eq[10, 2*A277544(A008706(n))]`
-/

namespace A277567.P5780558379220331579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277544 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277567.P5780558379220331579

namespace A277567

/-- `eq[10, 2*A277544(A008706(n))]` -/
def P5780558379220331579.Spec : Prop :=
  ∀ n, (P5780558379220331579.a n : ℤ) = A277567 (n + 1)

end A277567

/-! ## A277567.P11626813698470946624

`record[(n+1)/A277544(6*(n+1))]`
-/

namespace A277567.P11626813698470946624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A277544 (6 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277567.P11626813698470946624

namespace A277567

/-- `record[(n+1)/A277544(6*(n+1))]` -/
def P11626813698470946624.Spec : Prop :=
  ∀ n, P11626813698470946624.a n = (A277567 (n + 1) : ℚ)

end A277567

/-! ## A277567.P8062694601007329198

`eq[1, A277544(2*A008486(n))]`
-/

namespace A277567.P8062694601007329198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (2 * A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277567.P8062694601007329198

namespace A277567

/-- `eq[1, A277544(2*A008486(n))]` -/
def P8062694601007329198.Spec : Prop :=
  ∀ n, (P8062694601007329198.a n : ℤ) = A277567 (n + 1)

end A277567

/-!
# A277568: Numbers k such that k/6^m == 2 (mod 6), where 6^m is the greatest power of 6 that divides k.

The programs for A277568, there is no canonical definition to state claims against.
-/

/-! ## A277568.P12184093081719513136

`2*A277572(n+1)`
-/

namespace A277568.P12184093081719513136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277572 (n + 1)

end

end A277568.P12184093081719513136

/-! ## A277568.P5924148671369774196

`2*∪[A277567(n+1), A277570(n+1)]`
-/

namespace A277568.P5924148671369774196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277568.P5924148671369774196

/-! ## A277568.P7244339052644259729

`A277572(A000027(n+1))+A277572(n+1)`
-/

namespace A277568.P7244339052644259729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (A000027 (n + 1)).toNat + A277572 (n + 1)

end

end A277568.P7244339052644259729

/-! ## A277568.P18319756497067406893

`A277572(lcm(n+1, A000265(n+1)))+A277572(n+1)`
-/

namespace A277568.P18319756497067406893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (Int.lcm (n + 1 : ℤ) (A000265 (n + 1))) + A277572 (n + 1)

end

end A277568.P18319756497067406893

/-! ## A277568.P17381232634940931080

`A277572(n+1)+A277572(n+1)%A277572(n+2)`
-/

namespace A277568.P17381232634940931080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277572 (n + 1) + Int.tmod (A277572 (n + 1)) (A277572 (n + 2))

end

end A277568.P17381232634940931080

/-! ## A277568.P3208492493299319090

`A004277(A277572(n+1))`
-/

namespace A277568.P3208492493299319090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A277572 (n + 1)).toNat

end

end A277568.P3208492493299319090

/-! ## A277568.P13855278518748180364

`eq[2, A277544(n+1)]+1`
-/

namespace A277568.P13855278518748180364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277568.P13855278518748180364

/-! ## A277568.P8062580468732937100

`2*eq[2, A277544(A004277(n))]`
-/

namespace A277568.P8062580468732937100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P8062580468732937100

/-! ## A277568.P8428736709349958652

`eq[2, A277544(A004277(n)-n)]`
-/

namespace A277568.P8428736709349958652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P8428736709349958652

/-! ## A277568.P16430397790126544126

`eq[3, A020639(A030105(A030105(n))+1)]`
-/

namespace A277568.P16430397790126544126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030105 (A030105 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P16430397790126544126

/-! ## A277568.P6565662477238616047

`eq[2, A277544(A008706(n))-2]`
-/

namespace A277568.P6565662477238616047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008706 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P6565662477238616047

/-! ## A277568.P7970933300298526399

`eq[2, A277544(A008458(n))]`
-/

namespace A277568.P7970933300298526399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P7970933300298526399

/-! ## A277568.P10255205704183701384

`eq[2, A277544(A008486(2*n))]`
-/

namespace A277568.P10255205704183701384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P10255205704183701384

/-! ## A277568.P6293341803907786628

`eq[2, A277544(A008486(n))]/2`
-/

namespace A277568.P6293341803907786628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008486 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A277568.P6293341803907786628

/-! ## A277568.P1211288875827332471

`eq[2, A277544(A008706(n)+n)]`
-/

namespace A277568.P1211288875827332471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008706 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277568.P1211288875827332471

/-! ## A277568.P12624835523904789351

`A277572(n+1)+A277572(n+1)/A305989(A318472(n+1))`
-/

namespace A277568.P12624835523904789351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277572 (n + 1) : ℚ) + (A277572 (n + 1) : ℚ) / (A305989 (A318472 (n + 1)).toNat : ℚ)

end

end A277568.P12624835523904789351

/-!
# A277569: Numbers k such that k/6^m == 3 (mod 6), where 6^m is the greatest power of 6 that divides k.

The programs for A277569, the canonical program `A277569.P4021767162209183492` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277569 has offset 1).

The definition of A277569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277569.P12474737051980267397

`3*A277573(n+1)`
-/

namespace A277569.P12474737051980267397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A277573 (n + 1)

end

end A277569.P12474737051980267397

namespace A277569

/-- `3*A277573(n+1)` -/
def P12474737051980267397.Spec : Prop :=
  ∀ n, P12474737051980267397.a n = A277569 (n + 1)

end A277569

/-! ## A277569.P10021141101377446433

`3*record[(n+1)/A329900(A329900(n+1)+6)]`
-/

namespace A277569.P10021141101377446433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329900 (A329900 (n + 1) + 6).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277569.P10021141101377446433

namespace A277569

/-- `3*record[(n+1)/A329900(A329900(n+1)+6)]` -/
def P10021141101377446433.Spec : Prop :=
  ∀ n, P10021141101377446433.a n = (A277569 (n + 1) : ℚ)

end A277569

/-! ## A277569.P4021767162209183492

`lt[val(n+1, 2), val(n+1, 3)]+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A277569

/-- `lt[val(n+1, 2), val(n+1, 3)]+1` -/
def P4021767162209183492.Spec : Prop :=
  ∀ n, (P4021767162209183492.a n : ℤ) = A277569 (n + 1)

theorem P4021767162209183492.correct : P4021767162209183492.Spec := by
  intro n
  simp only [A277569, Nat.add_sub_cancel]

end A277569

/-! ## A277569.P2635491107612308148

`A008486(A277573(n+1))`
-/

namespace A277569.P2635491107612308148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A277573 (n + 1)).toNat

end

end A277569.P2635491107612308148

namespace A277569

/-- `A008486(A277573(n+1))` -/
def P2635491107612308148.Spec : Prop :=
  ∀ n, P2635491107612308148.a n = A277569 (n + 1)

end A277569

/-! ## A277569.P6357989139512120805

`3*lt[A064614(A028310(n)), n+1]`
-/

namespace A277569.P6357989139512120805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277569.P6357989139512120805

namespace A277569

/-- `3*lt[A064614(A028310(n)), n+1]` -/
def P6357989139512120805.Spec : Prop :=
  ∀ n, (P6357989139512120805.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P11586231286922477094

`A008486(eq[1, A329900(A329900(n+1))]+1)`
-/

namespace A277569.P11586231286922477094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A329900 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277569.P11586231286922477094

namespace A277569

/-- `A008486(eq[1, A329900(A329900(n+1))]+1)` -/
def P11586231286922477094.Spec : Prop :=
  ∀ n, P11586231286922477094.a n = A277569 (n + 1)

end A277569

/-! ## A277569.P2125771176758078243

`eq[3, A277544(n+1)]+1`
-/

namespace A277569.P2125771176758078243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277569.P2125771176758078243

namespace A277569

/-- `eq[3, A277544(n+1)]+1` -/
def P2125771176758078243.Spec : Prop :=
  ∀ n, (P2125771176758078243.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P11872776521944260119

`lt[A064614(n+1), n+1]+1`
-/

namespace A277569.P11872776521944260119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A277569.P11872776521944260119

namespace A277569

/-- `lt[A064614(n+1), n+1]+1` -/
def P11872776521944260119.Spec : Prop :=
  ∀ n, (P11872776521944260119.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P16781902299707739115

`lt[A064614(A028310(n)), n]`
-/

namespace A277569.P16781902299707739115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277569.P16781902299707739115

namespace A277569

/-- `lt[A064614(A028310(n)), n]` -/
def P16781902299707739115.Spec : Prop :=
  ∀ n, (P16781902299707739115.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P17811814905713708020

`A130481(eq[3, A277544(n+1)])`
-/

namespace A277569.P17811814905713708020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277569.P17811814905713708020

namespace A277569

/-- `A130481(eq[3, A277544(n+1)])` -/
def P17811814905713708020.Spec : Prop :=
  ∀ n, P17811814905713708020.a n = A277569 (n + 1)

end A277569

/-! ## A277569.P1848779236142221290

`lt[A064614(A004277(n)-n), n]`
-/

namespace A277569.P1848779236142221290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A004277 n - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277569.P1848779236142221290

namespace A277569

/-- `lt[A064614(A004277(n)-n), n]` -/
def P1848779236142221290.Spec : Prop :=
  ∀ n, (P1848779236142221290.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P4087183853068846517

`eq[3, A020639(A030105(A030105(n+1)))]+1`
-/

namespace A277569.P4087183853068846517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A030105 (A030105 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277569.P4087183853068846517

namespace A277569

/-- `eq[3, A020639(A030105(A030105(n+1)))]+1` -/
def P4087183853068846517.Spec : Prop :=
  ∀ n, (P4087183853068846517.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P6098904627871655423

`lt[A226602(A008486(n)), A226602(2*n)]`
-/

namespace A277569.P6098904627871655423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277569.P6098904627871655423

namespace A277569

/-- `lt[A226602(A008486(n)), A226602(2*n)]` -/
def P6098904627871655423.Spec : Prop :=
  ∀ n, (P6098904627871655423.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P18290707178994681996

`eq[3, A204816(n)]`
-/

namespace A277569.P18290707178994681996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204816 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277569.P18290707178994681996

namespace A277569

/-- `eq[3, A204816(n)]` -/
def P18290707178994681996.Spec : Prop :=
  ∀ n, (P18290707178994681996.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P1708988412464490006

`lt[A048785(3*n), A048785(2*n)]`
-/

namespace A277569.P1708988412464490006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277569.P1708988412464490006

namespace A277569

/-- `lt[A048785(3*n), A048785(2*n)]` -/
def P1708988412464490006.Spec : Prop :=
  ∀ n, (P1708988412464490006.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P2337755041349852553

`lt[A032741(A008486(n)), A032741(2*n)]`
-/

namespace A277569.P2337755041349852553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277569.P2337755041349852553

namespace A277569

/-- `lt[A032741(A008486(n)), A032741(2*n)]` -/
def P2337755041349852553.Spec : Prop :=
  ∀ n, (P2337755041349852553.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P18298423150812484741

`lt[A319410(3*n), A319410(A004277(n))]`
-/

namespace A277569.P18298423150812484741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277569.P18298423150812484741

namespace A277569

/-- `lt[A319410(3*n), A319410(A004277(n))]` -/
def P18298423150812484741.Spec : Prop :=
  ∀ n, (P18298423150812484741.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P3535575691011270355

`eq[3, A277544(A008706(n))]`
-/

namespace A277569.P3535575691011270355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277569.P3535575691011270355

namespace A277569

/-- `eq[3, A277544(A008706(n))]` -/
def P3535575691011270355.Spec : Prop :=
  ∀ n, (P3535575691011270355.a n : ℤ) = A277569 (n + 1)

end A277569

/-! ## A277569.P2398797328193978096

`eq[3, A277544(A008458(n))]`
-/

namespace A277569.P2398797328193978096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277569.P2398797328193978096

namespace A277569

/-- `eq[3, A277544(A008458(n))]` -/
def P2398797328193978096.Spec : Prop :=
  ∀ n, (P2398797328193978096.a n : ℤ) = A277569 (n + 1)

end A277569

/-!
# A277570: Numbers k such that k/6^m == 4 (mod 6), where 6^m is the greatest power of 6 that divides k.

The programs for A277570, there is no canonical definition to state claims against.
-/

/-! ## A277570.P16799760283821257075

`2*A277574(n+1)`
-/

namespace A277570.P16799760283821257075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277574 (n + 1)

end

end A277570.P16799760283821257075

/-! ## A277570.P14475329333249095213

`2*∪[A277568(n+1), A277571(n+1)]`
-/

namespace A277570.P14475329333249095213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277570.P14475329333249095213

/-! ## A277570.P4681729858590845943

`A277574(A000027(n+1))+A277574(n+1)`
-/

namespace A277570.P4681729858590845943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (A000027 (n + 1)).toNat + A277574 (n + 1)

end

end A277570.P4681729858590845943

/-! ## A277570.P7674288436197234980

`A277574(n+1)+A277574((n+1)%A277574(n+1))`
-/

namespace A277570.P7674288436197234980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1) + A277574 (Int.tmod (n + 1 : ℤ) (A277574 (n + 1))).toNat

end

end A277570.P7674288436197234980

/-! ## A277570.P6303290985848743043

`A004277(A277574(n+1))`
-/

namespace A277570.P6303290985848743043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A277574 (n + 1)).toNat

end

end A277570.P6303290985848743043

/-! ## A277570.P9876002010016525279

`eq[4, A277544(n+1)]+1`
-/

namespace A277570.P9876002010016525279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277570.P9876002010016525279

/-! ## A277570.P8361749375201715812

`eq[2, A277544(A008706(n))]`
-/

namespace A277570.P8361749375201715812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277570.P8361749375201715812

/-! ## A277570.P3963783314394840093

`eq[2, A277544(A008458(n)-n)]`
-/

namespace A277570.P3963783314394840093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277570.P3963783314394840093

/-! ## A277570.P17188562725400154298

`eq[2, A277544(A008458(5*n))]`
-/

namespace A277570.P17188562725400154298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277570.P17188562725400154298

/-!
# A277571: Numbers k such that k/6^m == 5 (mod 6), where 6^m is the greatest power of 6 that divides k.

The programs for A277571, the canonical program `A277571.P535996432442128007` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277571 has offset 1).

The definition of A277571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4010 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277571.P2774643645759135570

`filter[A277574(n+1), A373156(#)]`
-/

namespace A277571.P2774643645759135570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277571.P2774643645759135570

namespace A277571

/-- `filter[A277574(n+1), A373156(#)]` -/
def P2774643645759135570.Spec : Prop :=
  ∀ n, P2774643645759135570.a n = A277571 (n + 1)

end A277571

/-! ## A277571.P677754753606994303

`∩[A064615(n+1), A277574(n+1)]`
-/

namespace A277571.P677754753606994303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277571.P677754753606994303

namespace A277571

/-- `∩[A064615(n+1), A277574(n+1)]` -/
def P677754753606994303.Spec : Prop :=
  ∀ n, (P677754753606994303.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P535996432442128007

`filter[A225838(n+1), A373156(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A277571

/-- `filter[A225838(n+1), A373156(#)]` -/
def P535996432442128007.Spec : Prop :=
  ∀ n, P535996432442128007.a n = A277571 (n + 1)

theorem P535996432442128007.correct : P535996432442128007.Spec := by
  intro n
  simp only [A277571, Nat.add_sub_cancel]

end A277571

/-! ## A277571.P1604087676761786583

`∩[A064615(n+1), A225838(n+1)]`
-/

namespace A277571.P1604087676761786583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225838 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277571.P1604087676761786583

namespace A277571

/-- `∩[A064615(n+1), A225838(n+1)]` -/
def P1604087676761786583.Spec : Prop :=
  ∀ n, (P1604087676761786583.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P12958762218461089902

`filter[A189716(n+1), A373156(#)]`
-/

namespace A277571.P12958762218461089902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A277571.P12958762218461089902

namespace A277571

/-- `filter[A189716(n+1), A373156(#)]` -/
def P12958762218461089902.Spec : Prop :=
  ∀ n, P12958762218461089902.a n = A277571 (n + 1)

end A277571

/-! ## A277571.P15988991526608009356

`∩[A064615(n+1), A189716(n+1)]`
-/

namespace A277571.P15988991526608009356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189716 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277571.P15988991526608009356

namespace A277571

/-- `∩[A064615(n+1), A189716(n+1)]` -/
def P15988991526608009356.Spec : Prop :=
  ∀ n, (P15988991526608009356.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P133978493775826118

`∩[A277573(n+1), A277574(n+1)]`
-/

namespace A277571.P133978493775826118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277571.P133978493775826118

namespace A277571

/-- `∩[A277573(n+1), A277574(n+1)]` -/
def P133978493775826118.Spec : Prop :=
  ∀ n, (P133978493775826118.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P1614853321829405293

`eq[5, A277544(n+5)]+5`
-/

namespace A277571.P1614853321829405293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A277571.P1614853321829405293

namespace A277571

/-- `eq[5, A277544(n+5)]+5` -/
def P1614853321829405293.Spec : Prop :=
  ∀ n, (P1614853321829405293.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P3109628268753235660

`record[A214681(A277574(n+2))]`
-/

namespace A277571.P3109628268753235660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (A277574 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277571.P3109628268753235660

namespace A277571

/-- `record[A214681(A277574(n+2))]` -/
def P3109628268753235660.Spec : Prop :=
  ∀ n, P3109628268753235660.a n = A277571 (n + 1)

end A277571

/-! ## A277571.P10433027280368733617

`A153152(eq[5, A277544(n+1)])`
-/

namespace A277571.P10433027280368733617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A277571.P10433027280368733617

namespace A277571

/-- `A153152(eq[5, A277544(n+1)])` -/
def P10433027280368733617.Spec : Prop :=
  ∀ n, P10433027280368733617.a n = A277571 (n + 1)

end A277571

/-! ## A277571.P1059090443608807257

`record[A214681(A277570(n+2)/2)]`
-/

namespace A277571.P1059090443608807257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (SequenceMachineLib.roundAway ((A277570 (n + 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277571.P1059090443608807257

namespace A277571

/-- `record[A214681(A277570(n+2)/2)]` -/
def P1059090443608807257.Spec : Prop :=
  ∀ n, P1059090443608807257.a n = A277571 (n + 1)

end A277571

/-! ## A277571.P1091697141779493023

`record[A214681(A277570(n+2))]`
-/

namespace A277571.P1091697141779493023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214681 (A277570 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277571.P1091697141779493023

namespace A277571

/-- `record[A214681(A277570(n+2))]` -/
def P1091697141779493023.Spec : Prop :=
  ∀ n, P1091697141779493023.a n = A277571 (n + 1)

end A277571

/-! ## A277571.P5632185676131461488

`eq[5, A277544(A008458(n))]`
-/

namespace A277571.P5632185676131461488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277571.P5632185676131461488

namespace A277571

/-- `eq[5, A277544(A008458(n))]` -/
def P5632185676131461488.Spec : Prop :=
  ∀ n, (P5632185676131461488.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P17381259120186069450

`eq[5, A277544(A008486(2*n))]`
-/

namespace A277571.P17381259120186069450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008486 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277571.P17381259120186069450

namespace A277571

/-- `eq[5, A277544(A008486(2*n))]` -/
def P17381259120186069450.Spec : Prop :=
  ∀ n, (P17381259120186069450.a n : ℤ) = A277571 (n + 1)

end A277571

/-! ## A277571.P12697401853517787792

`eq[5, A277544(A233583(n+1))]`
-/

namespace A277571.P12697401853517787792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277571.P12697401853517787792

namespace A277571

/-- `eq[5, A277544(A233583(n+1))]` -/
def P12697401853517787792.Spec : Prop :=
  ∀ n, (P12697401853517787792.a n : ℤ) = A277571 (n + 1)

end A277571

/-!
# A277572: (1/2)*A277568.

The programs for A277572, there is no canonical definition to state claims against.
-/

/-! ## A277572.P8955375968855664855

`A277568(n+1)/2`
-/

namespace A277572.P8955375968855664855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277568 (n + 1) : ℚ) / 2

end

end A277572.P8955375968855664855

/-! ## A277572.P15206301165910455023

`∪[A277567(n+1), A277570(n+1)]`
-/

namespace A277572.P15206301165910455023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277572.P15206301165910455023

/-! ## A277572.P6504056293337347183

`eq[2, A277544(2*(n+1))]+1`
-/

namespace A277572.P6504056293337347183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277572.P6504056293337347183

/-! ## A277572.P9688768823554717338

`(eq[2, A277544(n+1)]+1)/2`
-/

namespace A277572.P9688768823554717338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2

end

end A277572.P9688768823554717338

/-! ## A277572.P15913509929303592672

`A001281(A277568(n+1))`
-/

namespace A277572.P15913509929303592672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A277568 (n + 1)).toNat

end

end A277572.P15913509929303592672

/-! ## A277572.P18173647278375663112

`eq[2, A277544(A004277(n))]`
-/

namespace A277572.P18173647278375663112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277572.P18173647278375663112

/-! ## A277572.P3225883858229777227

`A008619(A277568(n+1)-1)`
-/

namespace A277572.P3225883858229777227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A277568 (n + 1) - 1).toNat

end

end A277572.P3225883858229777227

/-! ## A277572.P9375099464531754152

`eq[2, A277544(A008486(n)-n)]`
-/

namespace A277572.P9375099464531754152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008486 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277572.P9375099464531754152

/-! ## A277572.P11451909718863302025

`record[A277574(n+1)/A277544(A277574(n+1))]`
-/

namespace A277572.P11451909718863302025
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277574 (n + 1) : ℚ) / (A277544 (A277574 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277572.P11451909718863302025

/-! ## A277572.P1973383195009550939

`A277568(n+1)+A051494(A277568(n+1)-1)`
-/

namespace A277572.P1973383195009550939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277568 (n + 1) + A051494 (A277568 (n + 1) - 1).toNat

end

end A277572.P1973383195009550939

/-! ## A277572.P13649519610837000149

`A060819(2*A277568(n+1))`
-/

namespace A277572.P13649519610837000149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A277568 (n + 1)).toNat

end

end A277572.P13649519610837000149

/-! ## A277572.P8038356641189176622

`A257844(2*A277568(n+1)+1)`
-/

namespace A277572.P8038356641189176622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (2 * A277568 (n + 1) + 1).toNat

end

end A277572.P8038356641189176622

/-! ## A277572.P15685193864714982516

`A257844(A277568(n+1)+A277568(n+1)+1)`
-/

namespace A277572.P15685193864714982516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257844 (A277568 (n + 1) + (A277568 (n + 1) + 1)).toNat

end

end A277572.P15685193864714982516

/-! ## A277572.P13574132051734956701

`eq[2, A277544(A008458(2*n))]`
-/

namespace A277572.P13574132051734956701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277572.P13574132051734956701

/-! ## A277572.P7491162366438664959

`eq[2, A277544(A008458(n))]/2`
-/

namespace A277572.P7491162366438664959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008458 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A277572.P7491162366438664959

/-! ## A277572.P7547104853629272624

`eq[2, A277544(A008486(4*n))]`
-/

namespace A277572.P7547104853629272624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008486 (4 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277572.P7547104853629272624

/-!
# A277573: a(n) = (1/3)*A277569(n).

The programs for A277573, the canonical program `A277573.P5388903635817683430` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277573 has offset 1).

The definition of A277573 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A277569, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277573.P5388903635817683430

`1/3*A277569(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277573

/-- `1/3*A277569(n+1)` -/
def P5388903635817683430.Spec : Prop :=
  ∀ n, P5388903635817683430.a n = (A277573 (n + 1) : ℚ)

end A277573

/-! ## A277573.P17957221305667127541

`A277569(n+1)/3`
-/

namespace A277573.P17957221305667127541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277569 (n + 1) : ℚ) / 3

end

end A277573.P17957221305667127541

namespace A277573

/-- `A277569(n+1)/3` -/
def P17957221305667127541.Spec : Prop :=
  ∀ n, P17957221305667127541.a n = (A277573 (n + 1) : ℚ)

end A277573

/-! ## A277573.P12981160039488664510

`eq[1, and(1, A329900(n+1))]+1`
-/

namespace A277573.P12981160039488664510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A329900 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277573.P12981160039488664510

namespace A277573

/-- `eq[1, and(1, A329900(n+1))]+1` -/
def P12981160039488664510.Spec : Prop :=
  ∀ n, (P12981160039488664510.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P16957125554025797909

`a(n-1)+gcd(2, A329900(a(n-1)+1))` with `a(0)=1`
-/

namespace A277573.P16957125554025797909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.gcd 2 (A329900 (a (n - 1) + 1))

end

end A277573.P16957125554025797909

namespace A277573

/-- `a(n-1)+gcd(2, A329900(a(n-1)+1))` -/
def P16957125554025797909.Spec : Prop :=
  ∀ n, (P16957125554025797909.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P11560534641324368625

`eq[1, A329900(A329900(n+1))]+1`
-/

namespace A277573.P11560534641324368625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329900 (A329900 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277573.P11560534641324368625

namespace A277573

/-- `eq[1, A329900(A329900(n+1))]+1` -/
def P11560534641324368625.Spec : Prop :=
  ∀ n, (P11560534641324368625.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P306878402680044119

`∪[A064615(n+1), A277569(n+1)]`
-/

namespace A277573.P306878402680044119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277573.P306878402680044119

namespace A277573

/-- `∪[A064615(n+1), A277569(n+1)]` -/
def P306878402680044119.Spec : Prop :=
  ∀ n, (P306878402680044119.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P12472094726110561350

`record[(n+1)/A329900(A329900(n+1)+6)]`
-/

namespace A277573.P12472094726110561350
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A329900 (A329900 (n + 1) + 6).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277573.P12472094726110561350

namespace A277573

/-- `record[(n+1)/A329900(A329900(n+1)+6)]` -/
def P12472094726110561350.Spec : Prop :=
  ∀ n, P12472094726110561350.a n = (A277573 (n + 1) : ℚ)

end A277573

/-! ## A277573.P654670899955472899

`lt[A064614(A028310(n)), n+1]`
-/

namespace A277573.P654670899955472899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A277573.P654670899955472899

namespace A277573

/-- `lt[A064614(A028310(n)), n+1]` -/
def P654670899955472899.Spec : Prop :=
  ∀ n, (P654670899955472899.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P14005456205119316401

`lt[A027656(A319626(n+1)), 1]+1`
-/

namespace A277573.P14005456205119316401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A319626 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A277573.P14005456205119316401

namespace A277573

/-- `lt[A027656(A319626(n+1)), 1]+1` -/
def P14005456205119316401.Spec : Prop :=
  ∀ n, (P14005456205119316401.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P4573495981308386835

`lt[A064614(2*(n+1)), A285419(n+2)]+1`
-/

namespace A277573.P4573495981308386835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277573.P4573495981308386835

namespace A277573

/-- `lt[A064614(2*(n+1)), A285419(n+2)]+1` -/
def P4573495981308386835.Spec : Prop :=
  ∀ n, (P4573495981308386835.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P10087608334217363326

`lt[A064614(A004277(n)), A285419(n+1)]`
-/

namespace A277573.P10087608334217363326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277573.P10087608334217363326

namespace A277573

/-- `lt[A064614(A004277(n)), A285419(n+1)]` -/
def P10087608334217363326.Spec : Prop :=
  ∀ n, (P10087608334217363326.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P7002151246337842505

`lt[A064614(A004277(n)), A004277(2*n)]`
-/

namespace A277573.P7002151246337842505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277573.P7002151246337842505

namespace A277573

/-- `lt[A064614(A004277(n)), A004277(2*n)]` -/
def P7002151246337842505.Spec : Prop :=
  ∀ n, (P7002151246337842505.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P8505405567440933723

`A002264(A277569(n+1))`
-/

namespace A277573.P8505405567440933723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A277569 (n + 1)).toNat

end

end A277573.P8505405567440933723

namespace A277573

/-- `A002264(A277569(n+1))` -/
def P8505405567440933723.Spec : Prop :=
  ∀ n, P8505405567440933723.a n = A277573 (n + 1)

end A277573

/-! ## A277573.P1790190025587502063

`eq[1, A277544(A008486(n))-2]`
-/

namespace A277573.P1790190025587502063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008486 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277573.P1790190025587502063

namespace A277573

/-- `eq[1, A277544(A008486(n))-2]` -/
def P1790190025587502063.Spec : Prop :=
  ∀ n, (P1790190025587502063.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P8552167871784725865

`eq[3, A204816(3*n)]`
-/

namespace A277573.P8552167871784725865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204816 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277573.P8552167871784725865

namespace A277573

/-- `eq[3, A204816(3*n)]` -/
def P8552167871784725865.Spec : Prop :=
  ∀ n, (P8552167871784725865.a n : ℤ) = A277573 (n + 1)

end A277573

/-! ## A277573.P6023644006634194276

`eq[3, A204816(n)]/3`
-/

namespace A277573.P6023644006634194276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204816 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 3

end

end A277573.P6023644006634194276

namespace A277573

/-- `eq[3, A204816(n)]/3` -/
def P6023644006634194276.Spec : Prop :=
  ∀ n, P6023644006634194276.a n = (A277573 (n + 1) : ℚ)

end A277573

/-!
# A277574: (1/2)*A277570.

The programs for A277574, there is no canonical definition to state claims against.
-/

/-! ## A277574.P11992928385618329880

`A277570(n+1)/2`
-/

namespace A277574.P11992928385618329880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277570 (n + 1) : ℚ) / 2

end

end A277574.P11992928385618329880

/-! ## A277574.P3373902740137972293

`∪[A277568(n+1), A277571(n+1)]`
-/

namespace A277574.P3373902740137972293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277574.P3373902740137972293

/-! ## A277574.P5465760916139896149

`gcd(A000217(A277570(n+1)-1), A277570(n+1))`
-/

namespace A277574.P5465760916139896149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (A277570 (n + 1) - 1).toNat) (A277570 (n + 1))

end

end A277574.P5465760916139896149

/-! ## A277574.P16263733717627915378

`A004525(A277570(n+1))`
-/

namespace A277574.P16263733717627915378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A277570 (n + 1)).toNat

end

end A277574.P16263733717627915378

/-! ## A277574.P14474613461399430414

`eq[4, A277544(A004277(n))]`
-/

namespace A277574.P14474613461399430414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277574.P14474613461399430414

/-! ## A277574.P8784823383036755068

`A000463(A277570(n+1)-1)`
-/

namespace A277574.P8784823383036755068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A277570 (n + 1) - 1).toNat

end

end A277574.P8784823383036755068

/-! ## A277574.P17905556843596849023

`A008619(A277570(n+1)-1)`
-/

namespace A277574.P17905556843596849023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A277570 (n + 1) - 1).toNat

end

end A277574.P17905556843596849023

/-! ## A277574.P13960519239057537039

`A029579(A277570(n+1)-2)`
-/

namespace A277574.P13960519239057537039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A277570 (n + 1) - 2).toNat

end

end A277574.P13960519239057537039

/-! ## A277574.P12729914378282939116

`A004526(A277570(n+1)-1)+1`
-/

namespace A277574.P12729914378282939116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277570 (n + 1) - 1).toNat + 1

end

end A277574.P12729914378282939116

/-! ## A277574.P7560281745387294891

`eq[A040350(n), A277544(2*(n+1))]+1`
-/

namespace A277574.P7560281745387294891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040350 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277574.P7560281745387294891

/-! ## A277574.P10656813538076065702

`A004526(A277570(n+1)+1)`
-/

namespace A277574.P10656813538076065702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277570 (n + 1) + 1).toNat

end

end A277574.P10656813538076065702

/-! ## A277574.P2682369317506249709

`A001281(A277570(n+1)+2)-1`
-/

namespace A277574.P2682369317506249709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A277570 (n + 1) + 2).toNat - 1

end

end A277574.P2682369317506249709

/-! ## A277574.P8353508382111202695

`A110657(2*A277570(n+1))`
-/

namespace A277574.P8353508382111202695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * A277570 (n + 1)).toNat

end

end A277574.P8353508382111202695

/-! ## A277574.P2325055425529299394

`A008615(3*A277570(n+1))`
-/

namespace A277574.P2325055425529299394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A277570 (n + 1)).toNat

end

end A277574.P2325055425529299394

/-! ## A277574.P9270901791256218593

`eq[2, A277544(A008706(2*n))]`
-/

namespace A277574.P9270901791256218593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008706 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277574.P9270901791256218593

/-! ## A277574.P12328242981842672990

`eq[2, A277544(A008706(n))]/2`
-/

namespace A277574.P12328242981842672990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277544 (A008706 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A277574.P12328242981842672990

/-!
# A277575: Primes p such that Fibonacci(prime(p)) is prime.

The programs for A277575, there is no canonical definition to state claims against.
-/

/-! ## A277575.P14196192624925682961

`p?[A119984(n+1)]`
-/

namespace A277575.P14196192624925682961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119984 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277575.P14196192624925682961

/-! ## A277575.P17379744728817944986

`p?[∑[A134851(n+1)]+2]`
-/

namespace A277575.P17379744728817944986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134851 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A277575.P17379744728817944986

/-! ## A277575.P2388221678984525378

`A000040(A122534(n+1))`
-/

namespace A277575.P2388221678984525378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122534 (n + 1)).toNat

end

end A277575.P2388221678984525378

/-! ## A277575.P6743419601137438827

`A008578(A122534(n+1)+1)`
-/

namespace A277575.P6743419601137438827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A122534 (n + 1) + 1).toNat

end

end A277575.P6743419601137438827

/-! ## A277575.P15050114567939194817

`A182986(A122534(n+1)+1)`
-/

namespace A277575.P15050114567939194817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A122534 (n + 1) + 1).toNat

end

end A277575.P15050114567939194817

/-!
# A277576: a(1)=1; thereafter a(n) = A007916(a(n-1)).

The programs for A277576, the canonical program `A277576.P12489906242859010906` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277576 has offset 1).

The definition of A277576 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007916, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277576.P12489906242859010906

`A007916(a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277576

/-- `A007916(a(n-1))` -/
def P12489906242859010906.Spec : Prop :=
  ∀ n, P12489906242859010906.a n = A277576 (n + 1)

theorem P12489906242859010906.correct : P12489906242859010906.Spec := by
  intro n
  simp only [A277576, Nat.add_sub_cancel]

end A277576

/-! ## A277576.P15919715303339264925

`sqrt(A153158(a(n-1)))` with `a(0)=1`
-/

namespace A277576.P15919715303339264925
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A153158 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A277576.P15919715303339264925

namespace A277576

/-- `sqrt(A153158(a(n-1)))` -/
def P15919715303339264925.Spec : Prop :=
  ∀ n, P15919715303339264925.a n = (A277576 (n + 1) : ℝ)

end A277576

/-! ## A277576.P16380343767841286218

`A175082(a(n-1)+1)` with `a(0)=1`
-/

namespace A277576.P16380343767841286218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A175082 (a (n - 1) + 1).toNat

end

end A277576.P16380343767841286218

namespace A277576

/-- `A175082(a(n-1)+1)` -/
def P16380343767841286218.Spec : Prop :=
  ∀ n, P16380343767841286218.a n = A277576 (n + 1)

end A277576

/-! ## A277576.P9337511523008111513

`A007916(abs(a(A023443(n))))` with `a(0)=1`
-/

namespace A277576.P9337511523008111513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007916 |a (A023443 n).toNat|.toNat

end

end A277576.P9337511523008111513

namespace A277576

/-- `A007916(abs(a(A023443(n))))` -/
def P9337511523008111513.Spec : Prop :=
  ∀ n, P9337511523008111513.a n = A277576 (n + 1)

end A277576

/-! ## A277576.P6465267665407508893

`A007916(floor(a(A023443(n))))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A277576.P6465267665407508893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007916 (a (A023443 n).toNat).toNat

end

end A277576.P6465267665407508893

namespace A277576

/-- `A007916(floor(a(A023443(n))))` -/
def P6465267665407508893.Spec : Prop :=
  ∀ n, P6465267665407508893.a n = A277576 (n + 1)

end A277576

/-! ## A277576.P14711028318452180835

`A007916(round(a(A023443(n))))` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A277576.P14711028318452180835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007916 (a (A023443 n).toNat).toNat

end

end A277576.P14711028318452180835

namespace A277576

/-- `A007916(round(a(A023443(n))))` -/
def P14711028318452180835.Spec : Prop :=
  ∀ n, P14711028318452180835.a n = A277576 (n + 1)

end A277576

/-! ## A277576.P9640064456687059902

`record[A007916(a(A049820(n)))]` with `a(0)=1`
-/

namespace A277576.P9640064456687059902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A007916 (f1 (A049820 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277576.P9640064456687059902

namespace A277576

/-- `record[A007916(a(A049820(n)))]` -/
def P9640064456687059902.Spec : Prop :=
  ∀ n, P9640064456687059902.a n = A277576 (n + 1)

end A277576

/-! ## A277576.P3266009945221441027

`A052410(root(A153158(a(n-1)), 2))` with `a(0)=1`
-/

namespace A277576.P3266009945221441027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052410 (SequenceMachineLib.roundAway ((A153158 (a (n - 1)).toNat : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A277576.P3266009945221441027

namespace A277576

/-- `A052410(root(A153158(a(n-1)), 2))` -/
def P3266009945221441027.Spec : Prop :=
  ∀ n, P3266009945221441027.a n = A277576 (n + 1)

end A277576

/-! ## A277576.P780352247911875700

`root(A153158(a(n-1)), A020639(2*n))` with `a(0)=1`
-/

namespace A277576.P780352247911875700
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A153158 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) ^ (1 / (A020639 (2 * n) : ℝ))

end

end A277576.P780352247911875700

namespace A277576

/-- `root(A153158(a(n-1)), A020639(2*n))` -/
def P780352247911875700.Spec : Prop :=
  ∀ n, P780352247911875700.a n = (A277576 (n + 1) : ℝ)

end A277576

/-! ## A277576.P15394393638525374547

`root(A153158(a(n-1)), 2*A057427(n))` with `a(0)=1`
-/

namespace A277576.P15394393638525374547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A153158 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) ^ (1 / (2 * A057427 n : ℝ))

end

end A277576.P15394393638525374547

namespace A277576

/-- `root(A153158(a(n-1)), 2*A057427(n))` -/
def P15394393638525374547.Spec : Prop :=
  ∀ n, P15394393638525374547.a n = (A277576 (n + 1) : ℝ)

end A277576

/-!
# A277578: Left inverse of A277558.

The programs for A277578, there is no canonical definition to state claims against.
-/

/-! ## A277578.P16377942089436570246

`A112496(a(n-1))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=2`
-/

namespace A277578.P16377942089436570246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 2] fun n a =>
  A112496 (a (n - 1)).toNat

end

end A277578.P16377942089436570246

/-!
# A277579: Number of partitions of n for which the number of even parts is equal to the positive alternating sum of the parts.

The programs for A277579, there is no canonical definition to state claims against.
-/

/-! ## A277579.P14829800080369389926

`A340998(A027338(n))+A117275(n)`
-/

namespace A277579.P14829800080369389926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A027338 n).toNat + 140) + A117275 n

end

end A277579.P14829800080369389926

/-! ## A277579.P2326741634147850746

`A117275(n)+A102681(A327048(n))`
-/

namespace A277579.P2326741634147850746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117275 n + A102681 (A327048 n).toNat

end

end A277579.P2326741634147850746

/-! ## A277579.P14551646529808238975

`A034296(n)-A000523(A305370(n))`
-/

namespace A277579.P14551646529808238975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034296 n - A000523 (A305370 n).toNat

end

end A277579.P14551646529808238975

/-! ## A277579.P9647611414820912848

`or(A005369(n), A048766(A261982(n)))`
-/

namespace A277579.P9647611414820912848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005369 n) (A048766 (A261982 n).toNat)

end

end A277579.P9647611414820912848

/-! ## A277579.P3735935505857277951

`A243113(A167648(n))-char[A007318(n)]`
-/

namespace A277579.P3735935505857277951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243113 (A167648 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A277579.P3735935505857277951

/-!
# A277581: Goldbach's problem extended to squares of nonnegative differences of primes: smallest integer >= ((A112823(n) - A234345(n))^2)/n for n >= 2.

The programs for A277581, there is no canonical definition to state claims against.
-/

/-! ## A277581.P16663729313215750625

`ceil(A066285(n+2)²/(n+2))`
-/

namespace A277581.P16663729313215750625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066285 (n + 2) ^ 2 : ℚ) / (n + 2 : ℚ)⌉

end

end A277581.P16663729313215750625

/-! ## A277581.P5168416821841341928

`A033711(A061393(n))%A000005(A033711(n+1))`
-/

namespace A277581.P5168416821841341928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033711 (A061393 n).toNat) (A000005 (A033711 (n + 1)).toNat)

end

end A277581.P5168416821841341928

/-! ## A277581.P16853455896217713124

`and(∑[A112567(2*n)], A112544(2*n+3))`
-/

namespace A277581.P16853455896217713124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112567 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A112544 (2 * n + 3))

end

end A277581.P16853455896217713124

/-! ## A277581.P9103879408458544786

`floor((A135010(A052940(n))-1)*sqrt(2))`
-/

namespace A277581.P9103879408458544786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135010 (A052940 n).toNat - 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A277581.P9103879408458544786

/-! ## A277581.P17522503841056650691

`A000040(A079583(n))%A300238(n+2)`
-/

namespace A277581.P17522503841056650691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A079583 n).toNat) (A300238 (n + 2))

end

end A277581.P17522503841056650691

/-!
# A277582: Expansion of f(-x^5) * f(-x^7) - x * f(-x) * f(-x^35) in powers of q where f() is a Ramanujan theta function.

The programs for A277582, there is no canonical definition to state claims against.
-/

/-! ## A277582.P4404460314955970401

`A030216(5*n+2)+A030216(n)`
-/

namespace A277582.P4404460314955970401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030216 (5 * n + 2) + A030216 n

end

end A277582.P4404460314955970401

/-! ## A277582.P12345967321220328626

`or(A030216(A016873(n)), A030216(n))`
-/

namespace A277582.P12345967321220328626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030216 (A016873 n).toNat) (A030216 n)

end

end A277582.P12345967321220328626

/-! ## A277582.P15124083496704458245

`A030216(A016873(n))+A030216(n)^A148766(n)`
-/

namespace A277582.P15124083496704458245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030216 (A016873 n).toNat : ℚ) + (A030216 n : ℚ) ^ (A148766 n : ℤ)

end

end A277582.P15124083496704458245

/-! ## A277582.P11716646267466335316

`A030216(A016873(n))+A030216(n)^A148791(n)`
-/

namespace A277582.P11716646267466335316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030216 (A016873 n).toNat : ℚ) + (A030216 n : ℚ) ^ (A148791 n : ℤ)

end

end A277582.P11716646267466335316

/-! ## A277582.P17108608297267530767

`A102283(A299281(3*n+4)-A120544(n+3))`
-/

namespace A277582.P17108608297267530767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A299281 (3 * n + 4) - A120544 (n + 3)).toNat

end

end A277582.P17108608297267530767

/-!
# A277584: a(n) = binomial(3*n-1, n-1)^2.

The programs for A277584, the canonical program `A277584.P4075816236948862761` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277584 has offset 0).

The definition of A277584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025174, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A277584.P4075816236948862761

`A025174(n)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277584

/-- `A025174(n)²` -/
def P4075816236948862761.Spec : Prop :=
  ∀ n, P4075816236948862761.a n = A277584 n

theorem P4075816236948862761.correct : P4075816236948862761.Spec := by
  intro n
  simp only [A277584]

end A277584

/-! ## A277584.P10211499865173735879

`floor((C(3*n, n)/3)²)`
-/

namespace A277584.P10211499865173735879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.choose (3 * n) n : ℚ) / 3) ^ 2⌋

end

end A277584.P10211499865173735879

namespace A277584

/-- `floor((C(3*n, n)/3)²)` -/
def P10211499865173735879.Spec : Prop :=
  ∀ n, P10211499865173735879.a n = A277584 n

end A277584

/-! ## A277584.P8417460729593864880

`∑{d}[2*n, C(n-1+#, 2*n)²]`
-/

namespace A277584.P8417460729593864880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Nat.choose ((n : ℤ) - 1 + (d : ℤ)).toNat (2 * n) ^ 2

end

end A277584.P8417460729593864880

namespace A277584

/-- `∑{d}[2*n, C(n-1+#, 2*n)²]` -/
def P8417460729593864880.Spec : Prop :=
  ∀ n, (P8417460729593864880.a n : ℤ) = A277584 n

end A277584

/-! ## A277584.P11024099655436311772

`((C(3*n, n)-∏[n+1]%2)/3)²`
-/

namespace A277584.P11024099655436311772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (3 * n) n : ℤ) - (((∏ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ) : ℚ) / 3) ^ 2

end

end A277584.P11024099655436311772

namespace A277584

/-- `((C(3*n, n)-∏[n+1]%2)/3)²` -/
def P11024099655436311772.Spec : Prop :=
  ∀ n, P11024099655436311772.a n = (A277584 n : ℚ)

end A277584

/-! ## A277584.P4200553808818177002

`(C(abs(1-3*n), n)-C(3*n, n))²`
-/

namespace A277584.P4200553808818177002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose |1 - (3 * n : ℤ)|.toNat n : ℤ) - (Nat.choose (3 * n) n : ℤ)) ^ 2

end

end A277584.P4200553808818177002

namespace A277584

/-- `(C(abs(1-3*n), n)-C(3*n, n))²` -/
def P4200553808818177002.Spec : Prop :=
  ∀ n, P4200553808818177002.a n = A277584 n

end A277584

/-! ## A277584.P15054608057983671215

`floor((A165817(n)/2)²)`
-/

namespace A277584.P15054608057983671215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A165817 n : ℚ) / 2) ^ 2⌋

end

end A277584.P15054608057983671215

namespace A277584

/-- `floor((A165817(n)/2)²)` -/
def P15054608057983671215.Spec : Prop :=
  ∀ n, P15054608057983671215.a n = A277584 n

end A277584

/-! ## A277584.P1060442374349395261

`floor((A005809(n)/3)²)`
-/

namespace A277584.P1060442374349395261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A005809 n : ℚ) / 3) ^ 2⌋

end

end A277584.P1060442374349395261

namespace A277584

/-- `floor((A005809(n)/3)²)` -/
def P1060442374349395261.Spec : Prop :=
  ∀ n, P1060442374349395261.a n = A277584 n

end A277584

/-! ## A277584.P2036176966759154107

`(A005809(n)-A165817(n))²`
-/

namespace A277584.P2036176966759154107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005809 n - A165817 n) ^ 2

end

end A277584.P2036176966759154107

namespace A277584

/-- `(A005809(n)-A165817(n))²` -/
def P2036176966759154107.Spec : Prop :=
  ∀ n, P2036176966759154107.a n = A277584 n

end A277584

/-! ## A277584.P2443029702301861845

`(A005809(n)-A227726(n))²`
-/

namespace A277584.P2443029702301861845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005809 n - A227726 n) ^ 2

end

end A277584.P2443029702301861845

namespace A277584

/-- `(A005809(n)-A227726(n))²` -/
def P2443029702301861845.Spec : Prop :=
  ∀ n, P2443029702301861845.a n = A277584 n

theorem P2443029702301861845.correct : P2443029702301861845.Spec := by
  intro n
  simp only [A277584, Nat.add_sub_cancel, A277584.P2443029702301861845.a, A277584.P4075816236948862761.a, A005809, A005809.P15087077436016713419.a, A025174, A025174.P11497073020642724255.a, A227726, A227726.P7304249674244244616.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A277584

/-! ## A277584.P9891931959314466825

`A025174(n)/2*A165817(n)`
-/

namespace A277584.P9891931959314466825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025174 n : ℚ) / 2 * (A165817 n : ℚ)

end

end A277584.P9891931959314466825

namespace A277584

/-- `A025174(n)/2*A165817(n)` -/
def P9891931959314466825.Spec : Prop :=
  ∀ n, P9891931959314466825.a n = (A277584 n : ℚ)

end A277584

/-!
# A277585: Denominator of Sum_{k=0..n} (2^k * (k!)^2)/(2k + 1)!.

The programs for A277585, there is no canonical definition to state claims against.
-/

/-! ## A277585.P538003786634125288

`A001147(n+1)/A087547(n+1)*A277586(n)`
-/

namespace A277585.P538003786634125288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001147 (n + 1) : ℚ) / (A087547 (n + 1) : ℚ) * (A277586 n : ℚ)

end

end A277585.P538003786634125288

/-! ## A277585.P8292255836060156323

`record[A324504(A152763(n))]`
-/

namespace A277585.P8292255836060156323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324504 (A152763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277585.P8292255836060156323

/-! ## A277585.P8120269267330598614

`record[A324504(A065387(n+1))]`
-/

namespace A277585.P8120269267330598614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324504 (A065387 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277585.P8120269267330598614

/-!
# A277586: Numerator of Sum_{k=0..n} (2^k * (k!)^2)/(2k + 1)!.

The programs for A277586, there is no canonical definition to state claims against.
-/

/-! ## A277586.P10070781824127335836

`A087547(n+1)/A001147(n+1)*A277585(n)`
-/

namespace A277586.P10070781824127335836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087547 (n + 1) : ℚ) / (A001147 (n + 1) : ℚ) * (A277585 n : ℚ)

end

end A277586.P10070781824127335836

/-!
# A277588: Numbers k such that k/10^m == 1 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277588, there is no canonical definition to state claims against.
-/

/-! ## A277588.P2858629835363390566

`∩[A241662(n+1), A277597(n+1)]`
-/

namespace A277588.P2858629835363390566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277588.P2858629835363390566

/-! ## A277588.P6408913725596002519

`∩[A277597(n+1), A277599(n+1)]`
-/

namespace A277588.P6408913725596002519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277588.P6408913725596002519

/-! ## A277588.P15912602649110694063

`eq[1, A004086(A004086(n))%10]`
-/

namespace A277588.P15912602649110694063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 n).toNat) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277588.P15912602649110694063

/-! ## A277588.P12036833063260406509

`eq[1, A065881(n+1)]+1`
-/

namespace A277588.P12036833063260406509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277588.P12036833063260406509

/-! ## A277588.P2311425854732277654

`record[(n+1)/dr(A274206(n+1))]`
-/

namespace A277588.P2311425854732277654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (A274206 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277588.P2311425854732277654

/-! ## A277588.P6459140751881170941

`eq[1, A000030(A004086(n))]`
-/

namespace A277588.P6459140751881170941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277588.P6459140751881170941

/-! ## A277588.P4838785532542977549

`record[(n+1)*(A268643(n+1)-A268643(n))]`
-/

namespace A277588.P4838785532542977549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A268643 (n + 1) - A268643 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277588.P4838785532542977549

/-! ## A277588.P4990873975896221628

`record[(n+1)/A000030(A056964(n+1)-(n+1))]`
-/

namespace A277588.P4990873975896221628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000030 (A056964 (n + 1) - (n + 1 : ℤ)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277588.P4990873975896221628

/-! ## A277588.P17382293956332619859

`lt[A222210(n+1), A222210(n)]+1`
-/

namespace A277588.P17382293956332619859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277588.P17382293956332619859

/-! ## A277588.P16293790817594874277

`record[(n+1)*(A344511(n+1)-A344511(n))]`
-/

namespace A277588.P16293790817594874277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A344511 (n + 1) - A344511 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277588.P16293790817594874277

/-! ## A277588.P11045187160832037844

`eq[A071648(n+1), A071648(A017281(n))]+1`
-/

namespace A277588.P11045187160832037844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017281 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277588.P11045187160832037844

/-! ## A277588.P16971937520552910842

`eq[A071648(n+1), A071648(A017305(n))]+1`
-/

namespace A277588.P16971937520552910842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277588.P16971937520552910842

/-! ## A277588.P14183672734368823517

`eq[A071648(n+1), A071648(A017329(n))]+1`
-/

namespace A277588.P14183672734368823517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017329 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277588.P14183672734368823517

/-! ## A277588.P1905790159846255509

`eq[A071648(n+1), A071648(A017377(n))]+1`
-/

namespace A277588.P1905790159846255509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017377 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277588.P1905790159846255509

/-!
# A277589: Numbers k such that k/10^m == 2 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277589, there is no canonical definition to state claims against.
-/

/-! ## A277589.P17730721710928182311

`2*A277597(n+1)`
-/

namespace A277589.P17730721710928182311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277597 (n + 1)

end

end A277589.P17730721710928182311

/-! ## A277589.P6166351514723837292

`2*∪[A277588(n+1), A277593(n+1)]`
-/

namespace A277589.P6166351514723837292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277589.P6166351514723837292

/-! ## A277589.P5546781122497953671

`A277597(∑[n+1]-∑[n])+A277597(n+1)`
-/

namespace A277589.P5546781122497953671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277597 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A277597 (n + 1)

end

end A277589.P5546781122497953671

/-! ## A277589.P15234688535087980045

`2*eq[1, A004086(A004086(n))%5]`
-/

namespace A277589.P15234688535087980045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277589.P15234688535087980045

/-! ## A277589.P8149919971414011349

`A004277(A277597(n+1))`
-/

namespace A277589.P8149919971414011349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A277597 (n + 1)).toNat

end

end A277589.P8149919971414011349

/-! ## A277589.P6543754474883321404

`eq[2, A004086(A004086(n))%10]`
-/

namespace A277589.P6543754474883321404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 n).toNat) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277589.P6543754474883321404

/-! ## A277589.P10749938495518580012

`eq[2, A065881(n+1)]+1`
-/

namespace A277589.P10749938495518580012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277589.P10749938495518580012

/-! ## A277589.P1459481621917362816

`eq[2, A000030(A004086(n))]`
-/

namespace A277589.P1459481621917362816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277589.P1459481621917362816

/-! ## A277589.P13299765150009421970

`eq[2, A065881(A028310(n))]`
-/

namespace A277589.P13299765150009421970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277589.P13299765150009421970

/-! ## A277589.P18157255949036525436

`eq[2, A331044(A274206(n+1))]+1`
-/

namespace A277589.P18157255949036525436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331044 (A274206 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277589.P18157255949036525436

/-! ## A277589.P5481058160576956568

`eq[A071648(n+1), A071648(A017293(n))]+1`
-/

namespace A277589.P5481058160576956568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277589.P5481058160576956568

/-!
# A277590: Numbers k such that k/10^m == 3 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277590, there is no canonical definition to state claims against.
-/

/-! ## A277590.P16571047035189634405

`∩[A241662(n+1), A277600(n+1)]`
-/

namespace A277590.P16571047035189634405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277590.P16571047035189634405

/-! ## A277590.P8409358918588402916

`∩[A277599(n+1), A277600(n+1)]`
-/

namespace A277590.P8409358918588402916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277590.P8409358918588402916

/-! ## A277590.P5923915300230680000

`eq[3, A065881(n+1)]+1`
-/

namespace A277590.P5923915300230680000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277590.P5923915300230680000

/-! ## A277590.P6174190396293962323

`eq[3, A000030(A004086(n))]`
-/

namespace A277590.P6174190396293962323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277590.P6174190396293962323

/-! ## A277590.P1974039743472717709

`eq[1, A065881(A028310(n))-2]`
-/

namespace A277590.P1974039743472717709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277590.P1974039743472717709

/-! ## A277590.P7614134525899284776

`eq[A006942(n+1), A006942(n)]+1`
-/

namespace A277590.P7614134525899284776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006942 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277590.P7614134525899284776

/-! ## A277590.P16075730639109160086

`eq[A010371(n+1), A010371(n)]+1`
-/

namespace A277590.P16075730639109160086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010371 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277590.P16075730639109160086

/-! ## A277590.P1760469636666970364

`eq[A085563(n+2), A085563(n+1)+1]+2`
-/

namespace A277590.P1760469636666970364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085563 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A277590.P1760469636666970364

/-! ## A277590.P15586473881222197349

`record[A035044(A035044(n+3)%A035044(n+2))]`
-/

namespace A277590.P15586473881222197349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 (Int.tmod (A035044 (n + 3)) (A035044 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277590.P15586473881222197349

/-! ## A277590.P10244492794706201444

`record[-A166711(A277596(n+1))]`
-/

namespace A277590.P10244492794706201444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A166711 (A277596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277590.P10244492794706201444

/-! ## A277590.P17171005257377078381

`record[A063524(n)-A166711(A277596(n+1))]`
-/

namespace A277590.P17171005257377078381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n - A166711 (A277596 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277590.P17171005257377078381

/-!
# A277591: Numbers k such that k/10^m == 4 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277591, there is no canonical definition to state claims against.
-/

/-! ## A277591.P12274626389933215075

`2*A277598(n+1)`
-/

namespace A277591.P12274626389933215075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277598 (n + 1)

end

end A277591.P12274626389933215075

/-! ## A277591.P3868210451838932284

`2*∪[A277589(n+1), A277594(n+1)]`
-/

namespace A277591.P3868210451838932284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277591.P3868210451838932284

/-! ## A277591.P2097706962128881675

`A277598(A000027(n+1))+A277598(n+1)`
-/

namespace A277591.P2097706962128881675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277598 (A000027 (n + 1)).toNat + A277598 (n + 1)

end

end A277591.P2097706962128881675

/-! ## A277591.P10110198421231974449

`A277598(n+1)+A277598((n+1)%A055796(n+1))`
-/

namespace A277591.P10110198421231974449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277598 (n + 1) + A277598 (Int.tmod (n + 1 : ℤ) (A055796 (n + 1))).toNat

end

end A277591.P10110198421231974449

/-! ## A277591.P11797988721580928150

`A004277(A277598(n+1))`
-/

namespace A277591.P11797988721580928150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A277598 (n + 1)).toNat

end

end A277591.P11797988721580928150

/-! ## A277591.P128138919682658655

`A004273(A277598(n+1)+1)-1`
-/

namespace A277591.P128138919682658655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A277598 (n + 1) + 1).toNat - 1

end

end A277591.P128138919682658655

/-! ## A277591.P12277003102587507140

`A005843(A277598(1-(n-A005843(n))))`
-/

namespace A277591.P12277003102587507140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A277598 (1 - ((n : ℤ) - A005843 n)).toNat).toNat

end

end A277591.P12277003102587507140

/-! ## A277591.P5690697883299410864

`eq[4, A065881(n+1)]+1`
-/

namespace A277591.P5690697883299410864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277591.P5690697883299410864

/-! ## A277591.P13343787677694846352

`eq[4, A000030(A004086(n))]`
-/

namespace A277591.P13343787677694846352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277591.P13343787677694846352

/-! ## A277591.P11803271349395980983

`eq[2, A065881(A028310(n))-2]`
-/

namespace A277591.P11803271349395980983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277591.P11803271349395980983

/-! ## A277591.P16362421223235136236

`eq[A071648(n+1), A071648(A017317(n))]+1`
-/

namespace A277591.P16362421223235136236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277591.P16362421223235136236

/-!
# A277592: Numbers k such that k/10^m == 5 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277592, the canonical program `A277592.P12084105617845741953` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277592 has offset 1).

The definition of A277592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277592.P12084105617845741953

`5*A277599(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A277592

/-- `5*A277599(n+1)` -/
def P12084105617845741953.Spec : Prop :=
  ∀ n, P12084105617845741953.a n = A277592 (n + 1)

theorem P12084105617845741953.correct : P12084105617845741953.Spec := by
  intro n
  simp only [A277592, Nat.add_sub_cancel]

end A277592

/-! ## A277592.P9103802343517383475

`A008587(A277599(n+1)-n)+A008587(n)`
-/

namespace A277592.P9103802343517383475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A277599 (n + 1) - (n : ℤ)).toNat + A008587 n

end

end A277592.P9103802343517383475

namespace A277592

/-- `A008587(A277599(n+1)-n)+A008587(n)` -/
def P9103802343517383475.Spec : Prop :=
  ∀ n, P9103802343517383475.a n = A277592 (n + 1)

end A277592

/-! ## A277592.P14454885633377389434

`A008706(A277599(n+1))`
-/

namespace A277592.P14454885633377389434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A277599 (n + 1)).toNat

end

end A277592.P14454885633377389434

namespace A277592

/-- `A008706(A277599(n+1))` -/
def P14454885633377389434.Spec : Prop :=
  ∀ n, P14454885633377389434.a n = A277592 (n + 1)

end A277592

/-! ## A277592.P16012886745962618343

`eq[5, A000030(A004086(n))]`
-/

namespace A277592.P16012886745962618343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277592.P16012886745962618343

namespace A277592

/-- `eq[5, A000030(A004086(n))]` -/
def P16012886745962618343.Spec : Prop :=
  ∀ n, (P16012886745962618343.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P16738271358538876213

`lt[A001511(n+1), A055457(n+1)]+1`
-/

namespace A277592.P16738271358538876213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277592.P16738271358538876213

namespace A277592

/-- `lt[A001511(n+1), A055457(n+1)]+1` -/
def P16738271358538876213.Spec : Prop :=
  ∀ n, (P16738271358538876213.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P14575864712089218122

`lt[A007814(n+1)+1, A055457(n+1)]+1`
-/

namespace A277592.P14575864712089218122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277592.P14575864712089218122

namespace A277592

/-- `lt[A007814(n+1)+1, A055457(n+1)]+1` -/
def P14575864712089218122.Spec : Prop :=
  ∀ n, (P14575864712089218122.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P1529293450361259206

`eq[A251984(n+1), A251984(A251984(n+1))]+1`
-/

namespace A277592.P1529293450361259206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A251984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277592.P1529293450361259206

namespace A277592

/-- `eq[A251984(n+1), A251984(A251984(n+1))]+1` -/
def P1529293450361259206.Spec : Prop :=
  ∀ n, (P1529293450361259206.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P15320604948406847200

`lt[A004277(A264600(2*n)), A264600(n)]`
-/

namespace A277592.P15320604948406847200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A264600 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277592.P15320604948406847200

namespace A277592

/-- `lt[A004277(A264600(2*n)), A264600(n)]` -/
def P15320604948406847200.Spec : Prop :=
  ∀ n, (P15320604948406847200.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P11137966981633876147

`lt[A004151(2*(n+1)), A264600(n+1)]+1`
-/

namespace A277592.P11137966981633876147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277592.P11137966981633876147

namespace A277592

/-- `lt[A004151(2*(n+1)), A264600(n+1)]+1` -/
def P11137966981633876147.Spec : Prop :=
  ∀ n, (P11137966981633876147.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P3729576901754483920

`lt[A007814(n+1)+1, A160094(2*(n+1))]+1`
-/

namespace A277592.P3729576901754483920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277592.P3729576901754483920

namespace A277592

/-- `lt[A007814(n+1)+1, A160094(2*(n+1))]+1` -/
def P3729576901754483920.Spec : Prop :=
  ∀ n, (P3729576901754483920.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P4377276352374563877

`lt[A004151(A004277(n)), A264600(n)]`
-/

namespace A277592.P4377276352374563877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277592.P4377276352374563877

namespace A277592

/-- `lt[A004151(A004277(n)), A264600(n)]` -/
def P4377276352374563877.Spec : Prop :=
  ∀ n, (P4377276352374563877.a n : ℤ) = A277592 (n + 1)

end A277592

/-! ## A277592.P18304093928129948170

`eq[A274206(3*(n+1)), A274206(n+1)]+1`
-/

namespace A277592.P18304093928129948170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274206 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277592.P18304093928129948170

namespace A277592

/-- `eq[A274206(3*(n+1)), A274206(n+1)]+1` -/
def P18304093928129948170.Spec : Prop :=
  ∀ n, (P18304093928129948170.a n : ℤ) = A277592 (n + 1)

end A277592

/-!
# A277593: Numbers k such that k/10^m == 6 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277593, there is no canonical definition to state claims against.
-/

/-! ## A277593.P12196282049988441550

`2*A277600(n+1)`
-/

namespace A277593.P12196282049988441550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277600 (n + 1)

end

end A277593.P12196282049988441550

/-! ## A277593.P9588089150197724443

`2*∪[A277590(n+1), A277595(n+1)]`
-/

namespace A277593.P9588089150197724443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277593.P9588089150197724443

/-! ## A277593.P15356966368750042881

`A277600(A000027(n+1))+A277600(n+1)`
-/

namespace A277593.P15356966368750042881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (A000027 (n + 1)).toNat + A277600 (n + 1)

end

end A277593.P15356966368750042881

/-! ## A277593.P17134759302671541872

`A277600(n+1)+A277600(n+1)%A241849(n)`
-/

namespace A277593.P17134759302671541872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (n + 1) + Int.tmod (A277600 (n + 1)) (A241849 n)

end

end A277593.P17134759302671541872

/-! ## A277593.P6549660849888413752

`A277600(n+1)+A277600((n+1)%A277600(n+1))`
-/

namespace A277593.P6549660849888413752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (n + 1) + A277600 (Int.tmod (n + 1 : ℤ) (A277600 (n + 1))).toNat

end

end A277593.P6549660849888413752

/-! ## A277593.P16175422865141724901

`A277600(lcm(n+1, A006530(n+1)))+A277600(n+1)`
-/

namespace A277593.P16175422865141724901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277600 (Int.lcm (n + 1 : ℤ) (A006530 (n + 1))) + A277600 (n + 1)

end

end A277593.P16175422865141724901

/-! ## A277593.P12202074441658395245

`A277600(n+1)+A277600(n+1)/A098190(A098190(n+1))`
-/

namespace A277593.P12202074441658395245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277600 (n + 1) : ℚ) + (A277600 (n + 1) : ℚ) / (A098190 (A098190 (n + 1)).toNat : ℚ)

end

end A277593.P12202074441658395245

/-! ## A277593.P4204071113501873020

`A004277(A277600(n+1))`
-/

namespace A277593.P4204071113501873020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A277600 (n + 1)).toNat

end

end A277593.P4204071113501873020

/-! ## A277593.P9765899573780815113

`eq[6, A065881(n+1)]+1`
-/

namespace A277593.P9765899573780815113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277593.P9765899573780815113

/-! ## A277593.P12523016467730810760

`eq[6, A000030(A004086(n))]`
-/

namespace A277593.P12523016467730810760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277593.P12523016467730810760

/-!
# A277594: Numbers k such that k/10^m == 7 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277594, there is no canonical definition to state claims against.
-/

/-! ## A277594.P304527874955144362

`∩[A241662(n+1), A277598(n+1)]`
-/

namespace A277594.P304527874955144362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277594.P304527874955144362

/-! ## A277594.P8395160044486558865

`∩[A277598(n+1), A277599(n+1)]`
-/

namespace A277594.P8395160044486558865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277594.P8395160044486558865

/-! ## A277594.P10603786313785425360

`eq[7, A000030(A004086(n))]`
-/

namespace A277594.P10603786313785425360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277594.P10603786313785425360

/-! ## A277594.P6673716647041802471

`eq[7, A065881(A028310(n))]`
-/

namespace A277594.P6673716647041802471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277594.P6673716647041802471

/-! ## A277594.P12072152289000431222

`eq[3, A000030(A251984(n+1))]+1`
-/

namespace A277594.P12072152289000431222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A251984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277594.P12072152289000431222

/-! ## A277594.P12287955362015107831

`eq[2, A251984(A004151(n+1)+1)]+1`
-/

namespace A277594.P12287955362015107831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004151 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277594.P12287955362015107831

/-! ## A277594.P14752668569799098152

`eq[2, A251984(A004719(n+1)+1)]+1`
-/

namespace A277594.P14752668569799098152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004719 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277594.P14752668569799098152

/-! ## A277594.P2701455232330212553

`lt[A264600(A004277(n)+n), A264600(n)]`
-/

namespace A277594.P2701455232330212553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 (A004277 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264600 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A277594.P2701455232330212553

/-! ## A277594.P16009539684611766079

`A008616(2*A044782(n+1))/2`
-/

namespace A277594.P16009539684611766079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008616 (2 * A044782 (n + 1)).toNat : ℚ) / 2

end

end A277594.P16009539684611766079

/-! ## A277594.P18370790063466712616

`A003602(2*A044782(n+1))/5`
-/

namespace A277594.P18370790063466712616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * A044782 (n + 1)).toNat : ℚ) / 5

end

end A277594.P18370790063466712616

/-!
# A277595: Numbers k such that k/10^m == 8 mod 10, where 10^m is the greatest power of 10 that divides k.

The programs for A277595, there is no canonical definition to state claims against.
-/

/-! ## A277595.P1864971311997722801

`2*A277601(n+1)`
-/

namespace A277595.P1864971311997722801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A277601 (n + 1)

end

end A277595.P1864971311997722801

/-! ## A277595.P10567419652687648306

`2*∪[A277591(n+1), A277596(n+1)]`
-/

namespace A277595.P10567419652687648306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277595.P10567419652687648306

/-! ## A277595.P13294194724072807257

`A277601(A000027(n+1))+A277601(n+1)`
-/

namespace A277595.P13294194724072807257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (A000027 (n + 1)).toNat + A277601 (n + 1)

end

end A277595.P13294194724072807257

/-! ## A277595.P13016693908536641486

`A277601(n+1)+A277601(n+1)%A104675(n)`
-/

namespace A277595.P13016693908536641486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1) + Int.tmod (A277601 (n + 1)) (A104675 n)

end

end A277595.P13016693908536641486

/-! ## A277595.P1415510962040723519

`A277601(n+1)+A277601((n+1)%A000040(n+1))`
-/

namespace A277595.P1415510962040723519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1) + A277601 (Int.tmod (n + 1 : ℤ) (A000040 (n + 1))).toNat

end

end A277595.P1415510962040723519

/-! ## A277595.P11482398131702896177

`A004277(A277601(n+1))`
-/

namespace A277595.P11482398131702896177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A277601 (n + 1)).toNat

end

end A277595.P11482398131702896177

/-! ## A277595.P12082635713473012260

`eq[2, A065881(n+1)/4]+1`
-/

namespace A277595.P12082635713473012260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065881 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A277595.P12082635713473012260

/-! ## A277595.P5290158270773557616

`eq[8, A000030(A004086(n))]`
-/

namespace A277595.P5290158270773557616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277595.P5290158270773557616

/-! ## A277595.P3843153884239976533

`eq[2, A000030(A251984(n+1))]+1`
-/

namespace A277595.P3843153884239976533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A251984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277595.P3843153884239976533

/-! ## A277595.P5949173962427691753

`eq[2, A251984(A004151(n+1))]+1`
-/

namespace A277595.P5949173962427691753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277595.P5949173962427691753

/-! ## A277595.P7543236088970309442

`eq[2, A251984(A004719(n+1))]+1`
-/

namespace A277595.P7543236088970309442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004719 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277595.P7543236088970309442

/-! ## A277595.P17331715656216635554

`lt[A222252(n+1), A222252(n)]+1`
-/

namespace A277595.P17331715656216635554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277595.P17331715656216635554

/-! ## A277595.P14472126231693151097

`eq[A071648(n+1), A071648(A017365(n))]+1`
-/

namespace A277595.P14472126231693151097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071648 (A017365 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A277595.P14472126231693151097

/-!
# A277596: Numbers k such that k/10^m == 9 mod 10, where 10^m is the greatest power of 10 that divides n.

The programs for A277596, there is no canonical definition to state claims against.
-/

/-! ## A277596.P16850389147867987319

`∩[A241662(n+1), A277601(n+1)]`
-/

namespace A277596.P16850389147867987319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277596.P16850389147867987319

/-! ## A277596.P7137681295824283718

`∩[A277599(n+1), A277601(n+1)]`
-/

namespace A277596.P7137681295824283718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277599 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A277596.P7137681295824283718

/-! ## A277596.P558274231992717033

`eq[10, A065881(n+1)+1]+1`
-/

namespace A277596.P558274231992717033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277596.P558274231992717033

/-! ## A277596.P10182061906280786394

`lt[8, A000030(A004086(n))]`
-/

namespace A277596.P10182061906280786394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A277596.P10182061906280786394

/-! ## A277596.P15127127648737047137

`eq[1, A000030(A251984(n+1))]+1`
-/

namespace A277596.P15127127648737047137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A251984 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277596.P15127127648737047137

/-! ## A277596.P10557615358061873024

`eq[1, A251984(A004151(n+1))]+1`
-/

namespace A277596.P10557615358061873024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277596.P10557615358061873024

/-! ## A277596.P17346397861625255844

`eq[1, A251984(A004719(n+1))]+1`
-/

namespace A277596.P17346397861625255844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A004719 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277596.P17346397861625255844

/-! ## A277596.P16841219931161470903

`record[A222254(A222254(n+9)%A222254(n+8))]`
-/

namespace A277596.P16841219931161470903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (Int.tmod (A222254 (n + 9)) (A222254 (n + 8))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277596.P16841219931161470903

/-!
# A277597: a(n) = (1/2)*A277589(n).

The programs for A277597, there is no canonical definition to state claims against.
-/

/-! ## A277597.P2031517002805364758

`1/2*A277589(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A277597.P2031517002805364758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A277589 (n + 1) : ℚ)

end

end A277597.P2031517002805364758

/-! ## A277597.P10240361426377950654

`A277589(n+1)/2`
-/

namespace A277597.P10240361426377950654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277589 (n + 1) : ℚ) / 2

end

end A277597.P10240361426377950654

/-! ## A277597.P16016590764188688079

`A014682(A277589(n+1))`
-/

namespace A277597.P16016590764188688079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A277589 (n + 1)).toNat

end

end A277597.P16016590764188688079

/-! ## A277597.P16203204792621184284

`∪[A277588(n+1), A277593(n+1)]`
-/

namespace A277597.P16203204792621184284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277597.P16203204792621184284

/-! ## A277597.P8214653804605010508

`eq[1, A004086(A004086(n))%5]`
-/

namespace A277597.P8214653804605010508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 n).toNat) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277597.P8214653804605010508

/-! ## A277597.P11345530376470474371

`A008619(A277589(n+1)-2)`
-/

namespace A277597.P11345530376470474371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A277589 (n + 1) - 2).toNat

end

end A277597.P11345530376470474371

/-! ## A277597.P11425947604386813628

`eq[2, A065881(2*(n+1))]+1`
-/

namespace A277597.P11425947604386813628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277597.P11425947604386813628

/-! ## A277597.P6626857800225238456

`A004526(A277589(n+1)+1)`
-/

namespace A277597.P6626857800225238456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A277589 (n + 1) + 1).toNat

end

end A277597.P6626857800225238456

/-! ## A277597.P11128792182299463455

`eq[2, A000030(A004086(2*n))]`
-/

namespace A277597.P11128792182299463455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A004086 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277597.P11128792182299463455

/-! ## A277597.P18138416566569778395

`eq[2, A065881(A028310(2*n))]`
-/

namespace A277597.P18138416566569778395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277597.P18138416566569778395

/-! ## A277597.P16762679228707386214

`eq[2, A065881(A028310(n))]/2`
-/

namespace A277597.P16762679228707386214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A277597.P16762679228707386214

/-! ## A277597.P6540886129766449921

`eq[2, A065881(A028310(n)+n)]`
-/

namespace A277597.P6540886129766449921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (A028310 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A277597.P6540886129766449921

/-! ## A277597.P9842480413372277523

`A078898(eq[2, A065881(n+1)]+1)`
-/

namespace A277597.P9842480413372277523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A277597.P9842480413372277523

/-! ## A277597.P4528125174004958372

`A008619(eq[A316863(n)+1, A316863(n+1)])`
-/

namespace A277597.P4528125174004958372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A277597.P4528125174004958372

/-! ## A277597.P13190924254213596641

`A051724(6*A277589(n+1))`
-/

namespace A277597.P13190924254213596641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A277589 (n + 1)).toNat

end

end A277597.P13190924254213596641

/-!
# A277598: (1/2)*A277591.

The programs for A277598, there is no canonical definition to state claims against.
-/

/-! ## A277598.P5545299276089702914

`A277591(n+1)/2`
-/

namespace A277598.P5545299276089702914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277591 (n + 1) : ℚ) / 2

end

end A277598.P5545299276089702914

/-! ## A277598.P529297987305782484

`∪[A277589(n+1), A277594(n+1)]`
-/

namespace A277598.P529297987305782484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277598.P529297987305782484

/-! ## A277598.P3907597700392681378

`(eq[4, A065881(n+1)]+1)/2`
-/

namespace A277598.P3907597700392681378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065881 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2

end

end A277598.P3907597700392681378

/-! ## A277598.P12862346419090618374

`A001281(A277591(n+1))`
-/

namespace A277598.P12862346419090618374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A277591 (n + 1)).toNat

end

end A277598.P12862346419090618374

/-! ## A277598.P15262272331080341712

`A289436(lcm(2, A277591(n+1)))`
-/

namespace A277598.P15262272331080341712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (Int.lcm 2 (A277591 (n + 1)))

end

end A277598.P15262272331080341712

/-! ## A277598.P14297079931889459527

`A004525(A277591(Δ[n*n]-n))`
-/

namespace A277598.P14297079931889459527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A277591 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A277598.P14297079931889459527

/-! ## A277598.P15521332919393605799

`A026741(A277591(n+1)+2)-1`
-/

namespace A277598.P15521332919393605799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A277591 (n + 1) + 2).toNat - 1

end

end A277598.P15521332919393605799

/-! ## A277598.P16700580088793684037

`A026741(A277591(n+1))*A087267(A000040(n+1))`
-/

namespace A277598.P16700580088793684037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A277591 (n + 1)).toNat * A087267 (A000040 (n + 1)).toNat

end

end A277598.P16700580088793684037

/-! ## A277598.P6836264310912046424

`A059169(2*(A277591(n+1)+1))`
-/

namespace A277598.P6836264310912046424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * (A277591 (n + 1) + 1)).toNat

end

end A277598.P6836264310912046424

/-! ## A277598.P5040869565206548708

`A059169(A277591(n+1)+A277591(n+1)+1)`
-/

namespace A277598.P5040869565206548708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A277591 (n + 1) + (A277591 (n + 1) + 1)).toNat

end

end A277598.P5040869565206548708

/-!
# A277599: (1/5)*A277592.

The programs for A277599, the canonical program `A277599.P16892913130215631464` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A277599 has offset 1).

The definition of A277599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A277599.P3368948765505135739

`A277592(n+1)/5`
-/

namespace A277599.P3368948765505135739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277592 (n + 1) : ℚ) / 5

end

end A277599.P3368948765505135739

namespace A277599

/-- `A277592(n+1)/5` -/
def P3368948765505135739.Spec : Prop :=
  ∀ n, P3368948765505135739.a n = (A277599 (n + 1) : ℚ)

theorem P3368948765505135739.correct : P3368948765505135739.Spec := by
  intro n
  simp only [A277599, Nat.add_sub_cancel, A277599.P3368948765505135739.a, A277599.P16892913130215631464.f1, A277599.P16892913130215631464.f2, A277599.P16892913130215631464.a, A004151, A004151.P17925112897147848492.a, A277592, A277592.P12084105617845741953.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A277599

/-! ## A277599.P13026268485135352678

`∪[A241662(n+1), A277592(n+1)]`
-/

namespace A277599.P13026268485135352678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241662 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A277599.P13026268485135352678

namespace A277599

/-- `∪[A241662(n+1), A277592(n+1)]` -/
def P13026268485135352678.Spec : Prop :=
  ∀ n, (P13026268485135352678.a n : ℤ) = A277599 (n + 1)

end A277599

/-! ## A277599.P8773318827861863726

`eq[1, gcd(2, A004086(A004086(n)))]`
-/

namespace A277599.P8773318827861863726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A004086 (A004086 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A277599.P8773318827861863726

namespace A277599

/-- `eq[1, gcd(2, A004086(A004086(n)))]` -/
def P8773318827861863726.Spec : Prop :=
  ∀ n, (P8773318827861863726.a n : ℤ) = A277599 (n + 1)

end A277599

/-! ## A277599.P15039945186531368914

`record[(n+1)*and(1, A004086(A004086(n+1)))]`
-/

namespace A277599.P15039945186531368914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A004086 (A004086 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A277599.P15039945186531368914

namespace A277599

/-- `record[(n+1)*and(1, A004086(A004086(n+1)))]` -/
def P15039945186531368914.Spec : Prop :=
  ∀ n, P15039945186531368914.a n = A277599 (n + 1)

end A277599

/-! ## A277599.P16892913130215631464

`eq[1, A004151(n+1)%2]+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A277599

/-- `eq[1, A004151(n+1)%2]+1` -/
def P16892913130215631464.Spec : Prop :=
  ∀ n, (P16892913130215631464.a n : ℤ) = A277599 (n + 1)

theorem P16892913130215631464.correct : P16892913130215631464.Spec := by
  intro n
  simp only [A277599, Nat.add_sub_cancel]

end A277599

/-! ## A277599.P2635993652350100581

`eq[1, A004719(n+1)%2]+1`
-/

namespace A277599.P2635993652350100581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004719 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A277599.P2635993652350100581

namespace A277599

/-- `eq[1, A004719(n+1)%2]+1` -/
def P2635993652350100581.Spec : Prop :=
  ∀ n, (P2635993652350100581.a n : ℤ) = A277599 (n + 1)

end A277599

/-! ## A277599.P14405245743002673624

`lt[A007814(n+1), A055457(n+1)]+1`
-/

namespace A277599.P14405245743002673624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277599.P14405245743002673624

namespace A277599

/-- `lt[A007814(n+1), A055457(n+1)]+1` -/
def P14405245743002673624.Spec : Prop :=
  ∀ n, (P14405245743002673624.a n : ℤ) = A277599 (n + 1)

end A277599

/-! ## A277599.P4776576494295845288

`lt[A007814(n+1), A160094(n+1)]+1`
-/

namespace A277599.P4776576494295845288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A277599.P4776576494295845288

namespace A277599

/-- `lt[A007814(n+1), A160094(n+1)]+1` -/
def P4776576494295845288.Spec : Prop :=
  ∀ n, (P4776576494295845288.a n : ℤ) = A277599 (n + 1)

end A277599

/-! ## A277599.P13459661144464773428

`A000034(A004151(a(n-1)+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A277599.P13459661144464773428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000034 (A004151 (a (n - 1) + 1).toNat + 1).toNat + a (n - 1)

end

end A277599.P13459661144464773428

namespace A277599

/-- `A000034(A004151(a(n-1)+1)+1)+a(n-1)` -/
def P13459661144464773428.Spec : Prop :=
  ∀ n, P13459661144464773428.a n = A277599 (n + 1)

end A277599

/-! ## A277599.P1577034648397554949

`lt[Δ[A107130(n)], 1]+1`
-/

namespace A277599.P1577034648397554949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107130 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A277599.P1577034648397554949

namespace A277599

/-- `lt[Δ[A107130(n)], 1]+1` -/
def P1577034648397554949.Spec : Prop :=
  ∀ n, (P1577034648397554949.a n : ℤ) = A277599 (n + 1)

end A277599

/-! ## A277599.P10306871395764183080

`A002266(A277592(n+1))`
-/

namespace A277599.P10306871395764183080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A277592 (n + 1)).toNat

end

end A277599.P10306871395764183080

namespace A277599

/-- `A002266(A277592(n+1))` -/
def P10306871395764183080.Spec : Prop :=
  ∀ n, P10306871395764183080.a n = A277599 (n + 1)

end A277599

