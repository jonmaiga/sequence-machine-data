import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B002.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C012

/-!
# A011117: Triangle of numbers S(x,y) = number of lattice paths from (0,0) to (x,y) that use step set { (0,1), (1,0), (2,0), (3,0), ....} and never pass below y = x.

The programs for A011117, there is no canonical definition to state claims against.
-/

/-! ## A011117.P14271081491758160494

`A104219(∑[char[∑[n]]]²-(n+1))`
-/

namespace A011117.P14271081491758160494
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A011117.P14271081491758160494

/-! ## A011117.P1380574657766946718

`xor(1, xor(1, A104219(A061579(n))))`
-/

namespace A011117.P1380574657766946718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A104219 (A061579 n).toNat))

end

end A011117.P1380574657766946718

/-! ## A011117.P7763974313123757303

`or(A000007(n), A104219(A061579(n)))`
-/

namespace A011117.P7763974313123757303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A104219 (A061579 n).toNat)

end

end A011117.P7763974313123757303

/-! ## A011117.P10561840931579961650

`A104219(A061579(n))+A000007(n+1)`
-/

namespace A011117.P10561840931579961650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A061579 n).toNat + A000007 (n + 1)

end

end A011117.P10561840931579961650

/-! ## A011117.P15016310661126930635

`A104219(A061579(n))+A001222(gcd(n, n+1))`
-/

namespace A011117.P15016310661126930635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A061579 n).toNat + A001222 (Nat.gcd n (n + 1))

end

end A011117.P15016310661126930635

/-! ## A011117.P6359581379582880735

`A008966(p?[2*n+1])*A104219(A061579(n))`
-/

namespace A011117.P6359581379582880735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) * A104219 (A061579 n).toNat

end

end A011117.P6359581379582880735

/-! ## A011117.P11527023340906312105

`A104219(A061579(n))+A005872(A005872(n))`
-/

namespace A011117.P11527023340906312105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (A061579 n).toNat + A005872 (A005872 n).toNat

end

end A011117.P11527023340906312105

/-! ## A011117.P9013331933519888869

`A104219(A061579(n))%A000051(n)`
-/

namespace A011117.P9013331933519888869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104219 (A061579 n).toNat) (A000051 n)

end

end A011117.P9013331933519888869

/-!
# A011185: A B_2 sequence: a(n) = least value such that sequence increases and pairwise sums of distinct elements are all distinct.

The programs for A011185, there is no canonical definition to state claims against.
-/

/-! ## A011185.P206575548360560039

`A010672(n)+1`
-/

namespace A011185.P206575548360560039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010672 n + 1

end

end A011185.P206575548360560039

/-! ## A011185.P11715240559772419096

`n-(A023443(n)-A010672(n))`
-/

namespace A011185.P11715240559772419096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A010672 n)

end

end A011185.P11715240559772419096

/-! ## A011185.P7352269180219369183

`A005408(n)-(2*n-A010672(n))`
-/

namespace A011185.P7352269180219369183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A010672 n)

end

end A011185.P7352269180219369183

/-! ## A011185.P8053612362426321202

`abs(A008683(A007918(n))-A010672(n))`
-/

namespace A011185.P8053612362426321202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007918 n).toNat - A010672 n|

end

end A011185.P8053612362426321202

/-! ## A011185.P5120901449800422089

`A010697(n)-(A010687(n)-A010672(n))`
-/

namespace A011185.P5120901449800422089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010697 n - (A010687 n - A010672 n)

end

end A011185.P5120901449800422089

/-! ## A011185.P6888245885051700434

`A209387(n)-(A209386(n)-A010672(n))`
-/

namespace A011185.P6888245885051700434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n - (A209386 n - A010672 n)

end

end A011185.P6888245885051700434

/-! ## A011185.P7194291324464526801

`A005282(n+1)-A133097(n+1)`
-/

namespace A011185.P7194291324464526801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005282 (n + 1) - A133097 (n + 1)

end

end A011185.P7194291324464526801

/-! ## A011185.P5779934525586099217

`A025582(n+1)+1-A133097(n+1)`
-/

namespace A011185.P5779934525586099217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025582 (n + 1) + (1 - A133097 (n + 1))

end

end A011185.P5779934525586099217

/-! ## A011185.P14877262735115540308

`A080432(n+1)/2`
-/

namespace A011185.P14877262735115540308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080432 (n + 1) : ℚ) / 2

end

end A011185.P14877262735115540308

/-! ## A011185.P6505284666716296146

`ceil(A080430(n+1)/2)`
-/

namespace A011185.P6505284666716296146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080430 (n + 1) : ℚ) / 2⌉

end

end A011185.P6505284666716296146

/-! ## A011185.P2536720828857881854

`∑[A101274(A028310(n))]-A133097(n+1)`
-/

namespace A011185.P2536720828857881854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101274 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A133097 (n + 1)

end

end A011185.P2536720828857881854

/-!
# A011195: a(n) = n*(n+1)*(2*n+1)*(3*n+1)/6.

The programs for A011195, the canonical program `A011195.P1421870401572660865` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011195 has offset 0).

The definition of A011195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011195.P1421870401572660865

`n*(n+1)*(2*n+1)*(3*n+1)/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011195

/-- `n*(n+1)*(2*n+1)*(3*n+1)/6` -/
def P1421870401572660865.Spec : Prop :=
  ∀ n, P1421870401572660865.a n = (A011195 n : ℚ)

end A011195

/-! ## A011195.P16143690031134860026

`∑[2*n]²-∑[C(n, 2)]`
-/

namespace A011195.P16143690031134860026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A011195.P16143690031134860026

namespace A011195

/-- `∑[2*n]²-∑[C(n, 2)]` -/
def P16143690031134860026.Spec : Prop :=
  ∀ n, P16143690031134860026.a n = A011195 n

end A011195

/-! ## A011195.P7777600683628308277

`(n²+n)²-C(n+1, 3)`
-/

namespace A011195.P7777600683628308277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + n) ^ 2 : ℤ) - (Nat.choose (n + 1) 3 : ℤ)

end

end A011195.P7777600683628308277

namespace A011195

/-- `(n²+n)²-C(n+1, 3)` -/
def P7777600683628308277.Spec : Prop :=
  ∀ n, P7777600683628308277.a n = A011195 n

end A011195

/-! ## A011195.P3752719724573166337

`(3*n+1)*C(2*(n+1), 3)/4`
-/

namespace A011195.P3752719724573166337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) * Nat.choose (2 * (n + 1)) 3 : ℚ) / 4

end

end A011195.P3752719724573166337

namespace A011195

/-- `(3*n+1)*C(2*(n+1), 3)/4` -/
def P3752719724573166337.Spec : Prop :=
  ∀ n, P3752719724573166337.a n = (A011195 n : ℚ)

end A011195

/-! ## A011195.P450758407772031283

`A215646(n)+n²²`
-/

namespace A011195.P450758407772031283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215646 n + ((n ^ 2) ^ 2 : ℤ)

end

end A011195.P450758407772031283

namespace A011195

/-- `A215646(n)+n²²` -/
def P450758407772031283.Spec : Prop :=
  ∀ n, P450758407772031283.a n = A011195 n

end A011195

/-! ## A011195.P9549433771365500346

`A219086(n)-∑[∑[n]]`
-/

namespace A011195.P9549433771365500346
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A011195.P9549433771365500346

namespace A011195

/-- `A219086(n)-∑[∑[n]]` -/
def P9549433771365500346.Spec : Prop :=
  ∀ n, P9549433771365500346.a n = A011195 n

end A011195

/-! ## A011195.P10314163672274771313

`∑[A317297(n+1)-∑[n]]`
-/

namespace A011195.P10314163672274771313
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011195.P10314163672274771313

namespace A011195

/-- `∑[A317297(n+1)-∑[n]]` -/
def P10314163672274771313.Spec : Prop :=
  ∀ n, P10314163672274771313.a n = A011195 n

end A011195

/-! ## A011195.P7519456303216010127

`(n+1)²²-A100183(n+1)`
-/

namespace A011195.P7519456303216010127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A100183 (n + 1)

end

end A011195.P7519456303216010127

namespace A011195

/-- `(n+1)²²-A100183(n+1)` -/
def P7519456303216010127.Spec : Prop :=
  ∀ n, P7519456303216010127.a n = A011195 n

end A011195

/-! ## A011195.P11072904595244890227

`(2*n+1)*∑[n]*A016777(n)/3`
-/

namespace A011195.P11072904595244890227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A016777 n : ℚ) / 3

end

end A011195.P11072904595244890227

namespace A011195

/-- `(2*n+1)*∑[n]*A016777(n)/3` -/
def P11072904595244890227.Spec : Prop :=
  ∀ n, P11072904595244890227.a n = (A011195 n : ℚ)

end A011195

/-! ## A011195.P3778580061931144615

`A100019(n)+A004068(n)`
-/

namespace A011195.P3778580061931144615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100019 n + A004068 n

end

end A011195.P3778580061931144615

namespace A011195

/-- `A100019(n)+A004068(n)` -/
def P3778580061931144615.Spec : Prop :=
  ∀ n, P3778580061931144615.a n = A011195 n

end A011195

/-! ## A011195.P15324547833826246072

`A072025(n)-A143058(n)`
-/

namespace A011195.P15324547833826246072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n - A143058 n

end

end A011195.P15324547833826246072

namespace A011195

/-- `A072025(n)-A143058(n)` -/
def P15324547833826246072.Spec : Prop :=
  ∀ n, P15324547833826246072.a n = A011195 n

end A011195

/-! ## A011195.P15243569632988419503

`A085540(n)-A304993(n)`
-/

namespace A011195.P15243569632988419503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n - A304993 n

end

end A011195.P15243569632988419503

namespace A011195

/-- `A085540(n)-A304993(n)` -/
def P15243569632988419503.Spec : Prop :=
  ∀ n, P15243569632988419503.a n = A011195 n

end A011195

/-! ## A011195.P11988745513045908912

`A257602(n)-A145126(n)`
-/

namespace A011195.P11988745513045908912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257602 n - A145126 n

end

end A011195.P11988745513045908912

namespace A011195

/-- `A257602(n)-A145126(n)` -/
def P11988745513045908912.Spec : Prop :=
  ∀ n, P11988745513045908912.a n = A011195 n

end A011195

/-! ## A011195.P9431433644143364462

`A011197(n)/A016813(n)`
-/

namespace A011195.P9431433644143364462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011197 n : ℚ) / (A016813 n : ℚ)

end

end A011195.P9431433644143364462

namespace A011195

/-- `A011197(n)/A016813(n)` -/
def P9431433644143364462.Spec : Prop :=
  ∀ n, P9431433644143364462.a n = (A011195 n : ℚ)

end A011195

/-! ## A011195.P7151075664743511406

`A304993(n)+A035291(n+1)`
-/

namespace A011195.P7151075664743511406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A035291 (n + 1)

end

end A011195.P7151075664743511406

namespace A011195

/-- `A304993(n)+A035291(n+1)` -/
def P7151075664743511406.Spec : Prop :=
  ∀ n, P7151075664743511406.a n = A011195 n

end A011195

/-! ## A011195.P5587435912074126741

`A213827(n)+A153978(n+1)`
-/

namespace A011195.P5587435912074126741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213827 n + A153978 (n + 1)

end

end A011195.P5587435912074126741

namespace A011195

/-- `A213827(n)+A153978(n+1)` -/
def P5587435912074126741.Spec : Prop :=
  ∀ n, P5587435912074126741.a n = A011195 n

end A011195

/-! ## A011195.P1305805863072898691

`A035288(n+1)-A162148(n)`
-/

namespace A011195.P1305805863072898691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035288 (n + 1) - A162148 n

end

end A011195.P1305805863072898691

namespace A011195

/-- `A035288(n+1)-A162148(n)` -/
def P1305805863072898691.Spec : Prop :=
  ∀ n, P1305805863072898691.a n = A011195 n

end A011195

/-! ## A011195.P5466773047195407820

`A292057(n+1)-A006002(n)`
-/

namespace A011195.P5466773047195407820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292057 (n + 1) - A006002 n

end

end A011195.P5466773047195407820

namespace A011195

/-- `A292057(n+1)-A006002(n)` -/
def P5466773047195407820.Spec : Prop :=
  ∀ n, P5466773047195407820.a n = A011195 n

end A011195

/-! ## A011195.P12168146221151874028

`A165563(n)-A180415(n+1)`
-/

namespace A011195.P12168146221151874028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165563 n - A180415 (n + 1)

end

end A011195.P12168146221151874028

namespace A011195

/-- `A165563(n)-A180415(n+1)` -/
def P12168146221151874028.Spec : Prop :=
  ∀ n, P12168146221151874028.a n = A011195 n

end A011195

/-! ## A011195.P4289687778870730936

`A000330(n)+n*A059270(n)`
-/

namespace A011195.P4289687778870730936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + (n : ℤ) * A059270 n

end

end A011195.P4289687778870730936

namespace A011195

/-- `A000330(n)+n*A059270(n)` -/
def P4289687778870730936.Spec : Prop :=
  ∀ n, P4289687778870730936.a n = A011195 n

end A011195

/-!
# A011197: a(n) = n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6.

The programs for A011197, the canonical program `A011197.P13439832235727999415` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011197 has offset 0).

The definition of A011197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A011197.P13439832235727999415

`n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011197

/-- `n*(n+1)*(2*n+1)*(3*n+1)*(4*n+1)/6` -/
def P13439832235727999415.Spec : Prop :=
  ∀ n, P13439832235727999415.a n = (A011197 n : ℚ)

end A011197

/-! ## A011197.P5746213803005925332

`n/3*A011245(n)/2`
-/

namespace A011197.P5746213803005925332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A011245 n : ℚ) / 2

end

end A011197.P5746213803005925332

namespace A011197

/-- `n/3*A011245(n)/2` -/
def P5746213803005925332.Spec : Prop :=
  ∀ n, P5746213803005925332.a n = (A011197 n : ℚ)

end A011197

/-! ## A011197.P5890612854450454767

`A094323(n)+4*A094323(n)`
-/

namespace A011197.P5890612854450454767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094323 n + 4 * A094323 n

end

end A011197.P5890612854450454767

namespace A011197

/-- `A094323(n)+4*A094323(n)` -/
def P5890612854450454767.Spec : Prop :=
  ∀ n, P5890612854450454767.a n = A011197 n

end A011197

/-! ## A011197.P7482774554568985089

`A000217(n)*A033591(n)/3`
-/

namespace A011197.P7482774554568985089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 n * A033591 n : ℚ) / 3

end

end A011197.P7482774554568985089

namespace A011197

/-- `A000217(n)*A033591(n)/3` -/
def P7482774554568985089.Spec : Prop :=
  ∀ n, P7482774554568985089.a n = (A011197 n : ℚ)

end A011197

/-! ## A011197.P11363780134165517572

`A011195(n)+A008574(n)*A011195(n)`
-/

namespace A011197.P11363780134165517572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011195 n + A008574 n * A011195 n

end

end A011197.P11363780134165517572

namespace A011197

/-- `A011195(n)+A008574(n)*A011195(n)` -/
def P11363780134165517572.Spec : Prop :=
  ∀ n, P11363780134165517572.a n = A011197 n

end A011197

/-!
# A011199: a(n) = (n+1)*(2*n+1)*(3*n+1).

The programs for A011199, the canonical program `A011199.P6402619949273553781` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A011199 has offset 0).

The definition of A011199 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*n+1)*(3*n+1)` (program `A011199.P6402619949273553781`, by `A011199.P6402619949273553781.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A011199.P6402619949273553781

`(n+1)*(2*n+1)*(3*n+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A011199

/-- `(n+1)*(2*n+1)*(3*n+1)` -/
def P6402619949273553781.Spec : Prop :=
  ∀ n, (P6402619949273553781.a n : ℤ) = A011199 n

theorem P6402619949273553781.correct : P6402619949273553781.Spec := by
  intro n
  simp only [A011199]

end A011199

/-! ## A011199.P14652254988349249557

`lcm(∑[6*n+1], Δ[n²])`
-/

namespace A011199.P14652254988349249557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A011199.P14652254988349249557

namespace A011199

/-- `lcm(∑[6*n+1], Δ[n²])` -/
def P14652254988349249557.Spec : Prop :=
  ∀ n, (P14652254988349249557.a n : ℤ) = A011199 n

end A011199

/-! ## A011199.P14097504807144907941

`-(∑[12*n-1]+2)*xor(n, -1)`
-/

namespace A011199.P14097504807144907941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((∑ j ∈ Finset.range (n + 1), f1 j + 2) * Int.xor (n : ℤ) (-1))

end

end A011199.P14097504807144907941

namespace A011199

/-- `-(∑[12*n-1]+2)*xor(n, -1)` -/
def P14097504807144907941.Spec : Prop :=
  ∀ n, P14097504807144907941.a n = A011199 n

end A011199

/-! ## A011199.P12247605598084768762

`∑[2*A147296(n)+1]`
-/

namespace A011199.P12247605598084768762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A147296 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P12247605598084768762

namespace A011199

/-- `∑[2*A147296(n)+1]` -/
def P12247605598084768762.Spec : Prop :=
  ∀ n, P12247605598084768762.a n = A011199 n

end A011199

/-! ## A011199.P5825902438997305066

`∑[A144314(n)+1+n]`
-/

namespace A011199.P5825902438997305066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144314 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P5825902438997305066

namespace A011199

/-- `∑[A144314(n)+1+n]` -/
def P5825902438997305066.Spec : Prop :=
  ∀ n, P5825902438997305066.a n = A011199 n

end A011199

/-! ## A011199.P17653592153883351650

`∑[A081272(n)-2*n]`
-/

namespace A011199.P17653592153883351650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081272 n - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P17653592153883351650

namespace A011199

/-- `∑[A081272(n)-2*n]` -/
def P17653592153883351650.Spec : Prop :=
  ∀ n, P17653592153883351650.a n = A011199 n

end A011199

/-! ## A011199.P4001140368248103975

`(A128822(n+1)+n²)/2`
-/

namespace A011199.P4001140368248103975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A128822 (n + 1) + (n ^ 2 : ℤ) : ℚ) / 2

end

end A011199.P4001140368248103975

namespace A011199

/-- `(A128822(n+1)+n²)/2` -/
def P4001140368248103975.Spec : Prop :=
  ∀ n, P4001140368248103975.a n = (A011199 n : ℚ)

end A011199

/-! ## A011199.P14690330945589226582

`∑[A298037(2*n)-2*n]`
-/

namespace A011199.P14690330945589226582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298037 (2 * n) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A011199.P14690330945589226582

namespace A011199

/-- `∑[A298037(2*n)-2*n]` -/
def P14690330945589226582.Spec : Prop :=
  ∀ n, P14690330945589226582.a n = A011199 n

end A011199

/-! ## A011199.P3507826562839877191

`A011245(n)/A016813(n)`
-/

namespace A011199.P3507826562839877191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011245 n : ℚ) / (A016813 n : ℚ)

end

end A011199.P3507826562839877191

namespace A011199

/-- `A011245(n)/A016813(n)` -/
def P3507826562839877191.Spec : Prop :=
  ∀ n, P3507826562839877191.a n = (A011199 n : ℚ)

end A011199

