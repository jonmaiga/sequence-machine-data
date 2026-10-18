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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
# A280700: Binary weight of terms of A005187: a(n) = A000120(A005187(n)).

The programs for A280700, the canonical program `A280700.P14793683405892301722` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280700 has offset 0).

The definition of A280700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280700.P14793683405892301722

`A000120(A005187(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280700

/-- `A000120(A005187(n))` -/
def P14793683405892301722.Spec : Prop :=
  ∀ n, P14793683405892301722.a n = A280700 n

theorem P14793683405892301722.correct : P14793683405892301722.Spec := by
  intro n
  simp only [A280700]

end A280700

/-! ## A280700.P11546907182360846378

`A001222(A280705(n))`
-/

namespace A280700.P11546907182360846378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A280705 n).toNat

end

end A280700.P11546907182360846378

namespace A280700

/-- `A001222(A280705(n))` -/
def P11546907182360846378.Spec : Prop :=
  ∀ n, P11546907182360846378.a n = A280700 n

end A280700

/-! ## A280700.P14513048532143033697

`A001221(A283475(n))`
-/

namespace A280700.P14513048532143033697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A283475 n).toNat

end

end A280700.P14513048532143033697

namespace A280700

/-- `A001221(A283475(n))` -/
def P14513048532143033697.Spec : Prop :=
  ∀ n, P14513048532143033697.a n = A280700 n

end A280700

/-! ## A280700.P1925467763024194729

`ceil(log2(n+1))-A283982(n)`
-/

namespace A280700.P1925467763024194729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ - A283982 n

end

end A280700.P1925467763024194729

namespace A280700

/-- `ceil(log2(n+1))-A283982(n)` -/
def P1925467763024194729.Spec : Prop :=
  ∀ n, P1925467763024194729.a n = A280700 n

end A280700

/-! ## A280700.P16290272353699720090

`A029931(n)-A283981(n)`
-/

namespace A280700.P16290272353699720090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - A283981 n

end

end A280700.P16290272353699720090

namespace A280700

/-- `A029931(n)-A283981(n)` -/
def P16290272353699720090.Spec : Prop :=
  ∀ n, P16290272353699720090.a n = A280700 n

end A280700

/-! ## A280700.P5108143648580367155

`val(A001316(A101925(n)-1), 2)`
-/

namespace A280700.P5108143648580367155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A101925 n - 1).toNat).toNat 2

end

end A280700.P5108143648580367155

namespace A280700

/-- `val(A001316(A101925(n)-1), 2)` -/
def P5108143648580367155.Spec : Prop :=
  ∀ n, (P5108143648580367155.a n : ℤ) = A280700 n

end A280700

/-! ## A280700.P3548706059235492847

`val(A001316(A011371(n)+n), 2)`
-/

namespace A280700.P3548706059235492847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A011371 n + (n : ℤ)).toNat).toNat 2

end

end A280700.P3548706059235492847

namespace A280700

/-- `val(A001316(A011371(n)+n), 2)` -/
def P3548706059235492847.Spec : Prop :=
  ∀ n, (P3548706059235492847.a n : ℤ) = A280700 n

end A280700

/-! ## A280700.P11352019056124936724

`val(A001316(A004134(n)-n), 2)`
-/

namespace A280700.P11352019056124936724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A004134 n - (n : ℤ)).toNat).toNat 2

end

end A280700.P11352019056124936724

namespace A280700

/-- `val(A001316(A004134(n)-n), 2)` -/
def P11352019056124936724.Spec : Prop :=
  ∀ n, (P11352019056124936724.a n : ℤ) = A280700 n

end A280700

/-! ## A280700.P11714856305947225772

`val(A001316(comp[A055938(n+1)]), 2)`
-/

namespace A280700.P11714856305947225772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat 2

end

end A280700.P11714856305947225772

namespace A280700

/-- `val(A001316(comp[A055938(n+1)]), 2)` -/
def P11714856305947225772.Spec : Prop :=
  ∀ n, (P11714856305947225772.a n : ℤ) = A280700 n

end A280700

/-! ## A280700.P11597241969525778170

`A178207(n)-(A005187(A005187(n))+1)`
-/

namespace A280700.P11597241969525778170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178207 n - (A005187 (A005187 n).toNat + 1)

end

end A280700.P11597241969525778170

namespace A280700

/-- `A178207(n)-(A005187(A005187(n))+1)` -/
def P11597241969525778170.Spec : Prop :=
  ∀ n, P11597241969525778170.a n = A280700 n

end A280700

/-! ## A280700.P6108562644807701465

`A000120(n)+A073642(n)-A283981(n)`
-/

namespace A280700.P6108562644807701465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A073642 n - A283981 n)

end

end A280700.P6108562644807701465

namespace A280700

/-- `A000120(n)+A073642(n)-A283981(n)` -/
def P6108562644807701465.Spec : Prop :=
  ∀ n, P6108562644807701465.a n = A280700 n

end A280700

/-! ## A280700.P7683322715338754375

`A029931(n)-(A283982(n)+A124757(n))`
-/

namespace A280700.P7683322715338754375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n - (A283982 n + A124757 n)

end

end A280700.P7683322715338754375

namespace A280700

/-- `A029931(n)-(A283982(n)+A124757(n))` -/
def P7683322715338754375.Spec : Prop :=
  ∀ n, P7683322715338754375.a n = A280700 n

end A280700

/-! ## A280700.P10135949638369321727

`A324377(n)+A324377(n)-A005187(A324377(n))`
-/

namespace A280700.P10135949638369321727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324377 n + (A324377 n - A005187 (A324377 n).toNat)

end

end A280700.P10135949638369321727

namespace A280700

/-- `A324377(n)+A324377(n)-A005187(A324377(n))` -/
def P10135949638369321727.Spec : Prop :=
  ∀ n, P10135949638369321727.a n = A280700 n

end A280700

/-! ## A280700.P15421937864059525090

`A000120(A324377(n))`
-/

namespace A280700.P15421937864059525090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324377 n).toNat

end

end A280700.P15421937864059525090

namespace A280700

/-- `A000120(A324377(n))` -/
def P15421937864059525090.Spec : Prop :=
  ∀ n, P15421937864059525090.a n = A280700 n

end A280700

/-! ## A280700.P654878216039263525

`A000120(∑[val(comp[2*(n+1)]+1, 2)])`
-/

namespace A280700.P654878216039263525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280700.P654878216039263525

namespace A280700

/-- `A000120(∑[val(comp[2*(n+1)]+1, 2)])` -/
def P654878216039263525.Spec : Prop :=
  ∀ n, P654878216039263525.a n = A280700 n

end A280700

/-! ## A280700.P14547676052047233226

`A000120(∑[val(abs(1-n)+1, 2)+1]-2)`
-/

namespace A280700.P14547676052047233226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A280700.P14547676052047233226

namespace A280700

/-- `A000120(∑[val(abs(1-n)+1, 2)+1]-2)` -/
def P14547676052047233226.Spec : Prop :=
  ∀ n, P14547676052047233226.a n = A280700 n

end A280700

/-! ## A280700.P18230426715970290240

`A000120(∑[val(n+1, 2)]-val(n+1, 2)+n)`
-/

namespace A280700.P18230426715970290240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ) + (n : ℤ)).toNat

end

end A280700.P18230426715970290240

namespace A280700

/-- `A000120(∑[val(n+1, 2)]-val(n+1, 2)+n)` -/
def P18230426715970290240.Spec : Prop :=
  ∀ n, P18230426715970290240.a n = A280700 n

end A280700

/-! ## A280700.P4111489319915733044

`A000120(A101925(n)-1)`
-/

namespace A280700.P4111489319915733044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A101925 n - 1).toNat

end

end A280700.P4111489319915733044

namespace A280700

/-- `A000120(A101925(n)-1)` -/
def P4111489319915733044.Spec : Prop :=
  ∀ n, P4111489319915733044.a n = A280700 n

end A280700

/-! ## A280700.P16410991275204402378

`A000120(eq[1, A079559(n)])`
-/

namespace A280700.P16410991275204402378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A280700.P16410991275204402378

namespace A280700

/-- `A000120(eq[1, A079559(n)])` -/
def P16410991275204402378.Spec : Prop :=
  ∀ n, P16410991275204402378.a n = A280700 n

end A280700

/-! ## A280700.P1702178039000630853

`A000120(A011371(n)+n)`
-/

namespace A280700.P1702178039000630853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A011371 n + (n : ℤ)).toNat

end

end A280700.P1702178039000630853

namespace A280700

/-- `A000120(A011371(n)+n)` -/
def P1702178039000630853.Spec : Prop :=
  ∀ n, P1702178039000630853.a n = A280700 n

end A280700

/-!
# A280701: a(n) = n - A280704(n).

The programs for A280701, there is no canonical definition to state claims against.
-/

/-! ## A280701.P12063664549585437626

`n+1-A280704(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280701.P12063664549585437626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A280704 (n + 1)

end

end A280701.P12063664549585437626

/-! ## A280701.P9346878485395357056

`-A280704(n+1)%A244111(n+1)+n+1`
-/

namespace A280701.P9346878485395357056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A280704 (n + 1)) (A244111 (n + 1)) + (n + 1 : ℤ)

end

end A280701.P9346878485395357056

/-! ## A280701.P11047682932742584158

`A000217(n+1)%(A280704(n+1)+A000217(n))`
-/

namespace A280701.P11047682932742584158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A280704 (n + 1) + A000217 n)

end

end A280701.P11047682932742584158

/-! ## A280701.P14093845961799718432

`n+1-A003961(A266645(n+1))/A280702(n+1)`
-/

namespace A280701.P14093845961799718432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A003961 (A266645 (n + 1)).toNat : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280701.P14093845961799718432

/-! ## A280701.P16762635450399968721

`1-A250469(n+1)/A280702(n+1)+n`
-/

namespace A280701.P16762635450399968721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A250469 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ) + (n : ℚ)

end

end A280701.P16762635450399968721

/-! ## A280701.P6371003690569194285

`A053188(A280704(n+1)+n²+n)`
-/

namespace A280701.P6371003690569194285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A280704 (n + 1) + (n ^ 2 + n : ℤ)).toNat

end

end A280701.P6371003690569194285

/-!
# A280702: a(n) = gcd(A003961(n), A250469(n)).

The programs for A280702, there is no canonical definition to state claims against.
-/

/-! ## A280702.P15222598963248245232

`A003961(n+1)/A280703(n+1)`
-/

namespace A280702.P15222598963248245232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A280703 (n + 1) : ℚ)

end

end A280702.P15222598963248245232

/-! ## A280702.P6798938063027081838

`A003961(gcd(n+1, A266645(n+1)))`
-/

namespace A280702.P6798938063027081838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.gcd (n + 1 : ℤ) (A266645 (n + 1)))

end

end A280702.P6798938063027081838

/-! ## A280702.P16837725772903127108

`gcd(A003961(n+1), A280692(n+1))`
-/

namespace A280702.P16837725772903127108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003961 (n + 1)) (A280692 (n + 1))

end

end A280702.P16837725772903127108

/-! ## A280702.P14386787367178310103

`A302042(A016945(n))/A280704(n+1)`
-/

namespace A280702.P14386787367178310103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302042 (A016945 n).toNat : ℚ) / (A280704 (n + 1) : ℚ)

end

end A280702.P14386787367178310103

/-! ## A280702.P6315137602617309549

`(A003961(n+1)-A280692(n+1))/A280704(n+1)`
-/

namespace A280702.P6315137602617309549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A280692 (n + 1) : ℚ) / (A280704 (n + 1) : ℚ)

end

end A280702.P6315137602617309549

/-! ## A280702.P15702571880814850008

`A003961(A266645(n+1))/A280704(n+1)`
-/

namespace A280702.P15702571880814850008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (A266645 (n + 1)).toNat : ℚ) / (A280704 (n + 1) : ℚ)

end

end A280702.P15702571880814850008

/-! ## A280702.P2271746601837300239

`A250469(n+1)/A280704(n+1)`
-/

namespace A280702.P2271746601837300239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250469 (n + 1) : ℚ) / (A280704 (n + 1) : ℚ)

end

end A280702.P2271746601837300239

/-! ## A280702.P13876383826810667827

`gcd(2*A003961(n+1), A250469(n+1))`
-/

namespace A280702.P13876383826810667827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A003961 (n + 1)) (A250469 (n + 1))

end

end A280702.P13876383826810667827

/-! ## A280702.P5879570060475609195

`A250469(n+1)/(n+1-A280701(n+1))`
-/

namespace A280702.P5879570060475609195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250469 (n + 1) : ℚ) / ((n + 1 : ℤ) - A280701 (n + 1) : ℚ)

end

end A280702.P5879570060475609195

/-! ## A280702.P17378379914891269371

`(A280692(n+1)+A250469(n+1))/A280703(n+1)`
-/

namespace A280702.P17378379914891269371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280692 (n + 1) + A250469 (n + 1) : ℚ) / (A280703 (n + 1) : ℚ)

end

end A280702.P17378379914891269371

/-! ## A280702.P14200495098501427649

`(A253886(n)+1)/A280704(n+1)`
-/

namespace A280702.P14200495098501427649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253886 n + 1 : ℚ) / (A280704 (n + 1) : ℚ)

end

end A280702.P14200495098501427649

/-! ## A280702.P12836229853544471446

`gcd(2*A048673(n+1)-1, A253886(n)+1)`
-/

namespace A280702.P12836229853544471446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A048673 (n + 1) - 1) (A253886 n + 1)

end

end A280702.P12836229853544471446

/-! ## A280702.P8629556454106892853

`gcd(A000265(A250469(n+1)), A297166(2*(n+1)))`
-/

namespace A280702.P8629556454106892853
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (A250469 (n + 1)).toNat) (A297166 (2 * (n + 1)))

end

end A280702.P8629556454106892853

/-! ## A280702.P10380333998978118627

`A250469(A266646(n+1))/A280703(n+1)`
-/

namespace A280702.P10380333998978118627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250469 (A266646 (n + 1)).toNat : ℚ) / (A280703 (n + 1) : ℚ)

end

end A280702.P10380333998978118627

/-!
# A280703: a(n) = A003961(n) / A280702(n) = A003961(n) / gcd(A003961(n),A250469(n)).

The programs for A280703, there is no canonical definition to state claims against.
-/

/-! ## A280703.P3730364313010867981

`A003961(n+1)/A280702(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280703.P3730364313010867981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P3730364313010867981

/-! ## A280703.P14736559826094555919

`(A253885(n)+1)/A280702(n+1)`
-/

namespace A280703.P14736559826094555919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1 : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P14736559826094555919

/-! ## A280703.P18040615565395852571

`(A243501(n+1)-1)/A280702(n+1)`
-/

namespace A280703.P18040615565395852571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A243501 (n + 1) - 1 : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P18040615565395852571

/-! ## A280703.P15524649617942971878

`(A336853(n+1)+1+n)/A280702(n+1)`
-/

namespace A280703.P15524649617942971878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336853 (n + 1) + 1 + (n : ℤ) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P15524649617942971878

/-! ## A280703.P17836522957366067717

`(A286385(n+1)+A000203(n+1))/A280702(n+1)`
-/

namespace A280703.P17836522957366067717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286385 (n + 1) + A000203 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P17836522957366067717

/-! ## A280703.P4330635885790111501

`A280704(n+1)+A280692(n+1)/A280702(n+1)`
-/

namespace A280703.P4330635885790111501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280704 (n + 1) : ℚ) + (A280692 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P4330635885790111501

/-! ## A280703.P12687939998504130357

`A003961(n+1)/gcd(A003961(n+1), A280692(n+1))`
-/

namespace A280703.P12687939998504130357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (Int.gcd (A003961 (n + 1)) (A280692 (n + 1)) : ℚ)

end

end A280703.P12687939998504130357

/-! ## A280703.P14621435453786715411

`A003961(n+1)/A003961(A266645(n+1))*A280704(n+1)`
-/

namespace A280703.P14621435453786715411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A003961 (A266645 (n + 1)).toNat : ℚ) * (A280704 (n + 1) : ℚ)

end

end A280703.P14621435453786715411

/-! ## A280703.P1158442850999859194

`(A280692(n+1)+A250469(n+1))/A280702(n+1)`
-/

namespace A280703.P1158442850999859194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280692 (n + 1) + A250469 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280703.P1158442850999859194

/-! ## A280703.P18017188311508456159

`A003961(n+1)/A250469(n+1)*A280704(n+1)`
-/

namespace A280703.P18017188311508456159
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A250469 (n + 1) : ℚ) * (A280704 (n + 1) : ℚ)

end

end A280703.P18017188311508456159

/-!
# A280704: a(n) = A250469(n) / A280702(n) = A250469(n) / gcd(A003961(n),A250469(n)).

The programs for A280704, there is no canonical definition to state claims against.
-/

/-! ## A280704.P1392474716627088598

`A250469(n+1)/A280702(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280704.P1392474716627088598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250469 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280704.P1392474716627088598

/-! ## A280704.P15881226484781929425

`1-A280701(n+1)+n`
-/

namespace A280704.P15881226484781929425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A280701 (n + 1) + (n : ℤ)

end

end A280704.P15881226484781929425

/-! ## A280704.P4387045560859121371

`A004442(n-A280701(n+1))`
-/

namespace A280704.P4387045560859121371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) - A280701 (n + 1)).toNat

end

end A280704.P4387045560859121371

/-! ## A280704.P12708849542796863948

`A141310(n-A280701(n+1))`
-/

namespace A280704.P12708849542796863948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ((n : ℤ) - A280701 (n + 1)).toNat

end

end A280704.P12708849542796863948

/-! ## A280704.P4321421269358453839

`A302042(A016945(n))/A280702(n+1)`
-/

namespace A280704.P4321421269358453839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302042 (A016945 n).toNat : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280704.P4321421269358453839

/-! ## A280704.P12125895495557444543

`(A003961(n+1)-A280692(n+1))/A280702(n+1)`
-/

namespace A280704.P12125895495557444543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) - A280692 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280704.P12125895495557444543

/-! ## A280704.P10365656687641213784

`A280703(n+1)-A280692(n+1)/A280702(n+1)`
-/

namespace A280704.P10365656687641213784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280703 (n + 1) : ℚ) - (A280692 (n + 1) : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280704.P10365656687641213784

/-! ## A280704.P16084782957839959098

`A003961(A266645(n+1))/A280702(n+1)`
-/

namespace A280704.P16084782957839959098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (A266645 (n + 1)).toNat : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280704.P16084782957839959098

/-! ## A280704.P8423839228420055976

`A250469(n+1)/A003961(n+1)*A280703(n+1)`
-/

namespace A280704.P8423839228420055976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250469 (n + 1) : ℚ) / (A003961 (n + 1) : ℚ) * (A280703 (n + 1) : ℚ)

end

end A280704.P8423839228420055976

/-! ## A280704.P6120832800367371731

`(A253886(n)+1)/A280702(n+1)`
-/

namespace A280704.P6120832800367371731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253886 n + 1 : ℚ) / (A280702 (n + 1) : ℚ)

end

end A280704.P6120832800367371731

/-!
# A280705: a(n) = A002110(A280700(n)) = A046523(A283475(n)).

The programs for A280705, there is no canonical definition to state claims against.
-/

/-! ## A280705.P16911354259463589492

`A002110(A280700(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280705.P16911354259463589492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A280700 n).toNat

end

end A280705.P16911354259463589492

/-! ## A280705.P7035281299061747210

`A046523(A283475(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A280705.P7035281299061747210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A283475 n).toNat

end

end A280705.P7035281299061747210

/-! ## A280705.P9117384674531382072

`A002110(A029931(n)-A283981(n))`
-/

namespace A280705.P9117384674531382072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A029931 n - A283981 n).toNat

end

end A280705.P9117384674531382072

/-! ## A280705.P15719906484999862689

`A002110(A000120(A005187(n)))`
-/

namespace A280705.P15719906484999862689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000120 (A005187 n).toNat).toNat

end

end A280705.P15719906484999862689

/-! ## A280705.P14617469013056089670

`A002110(A000120(2*n-A000120(n)))`
-/

namespace A280705.P14617469013056089670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000120 ((2 * n : ℤ) - A000120 n).toNat).toNat

end

end A280705.P14617469013056089670

/-! ## A280705.P6411657016306434352

`A002110(A000120(n-(A000120(n)-n)))`
-/

namespace A280705.P6411657016306434352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A000120 ((n : ℤ) - (A000120 n - (n : ℤ))).toNat).toNat

end

end A280705.P6411657016306434352

/-! ## A280705.P15537476239007150297

`A002110(A352784(2*n))`
-/

namespace A280705.P15537476239007150297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A352784 (2 * n)).toNat

end

end A280705.P15537476239007150297

/-!
# A280706: a(n) = Sum_{k=1..n} q(k+1-q(k)), where q(k) = A005185(k); partial sums of A283467.

The programs for A280706, the canonical program `A280706.P5164209367709686178` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280706 has offset 1).

The definition of A280706 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280706.P5164209367709686178

`A283467(n+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A280706

/-- `A283467(n+1)+a(n-1)` -/
def P5164209367709686178.Spec : Prop :=
  ∀ n, P5164209367709686178.a n = A280706 (n + 1)

theorem P5164209367709686178.correct : P5164209367709686178.Spec := by
  intro n
  simp only [A280706, Nat.add_sub_cancel]

end A280706

/-! ## A280706.P15524645271728847644

`∑[A283467(n+1)]`
-/

namespace A280706.P15524645271728847644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P15524645271728847644

namespace A280706

/-- `∑[A283467(n+1)]` -/
def P15524645271728847644.Spec : Prop :=
  ∀ n, P15524645271728847644.a n = A280706 (n + 1)

end A280706

/-! ## A280706.P15409076620470328915

`∑[A005185(A239913(n+1)+1)]`
-/

namespace A280706.P15409076620470328915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A239913 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P15409076620470328915

namespace A280706

/-- `∑[A005185(A239913(n+1)+1)]` -/
def P15409076620470328915.Spec : Prop :=
  ∀ n, P15409076620470328915.a n = A280706 (n + 1)

end A280706

/-! ## A280706.P1683538830295180480

`∑[A005185(2-A005185(n+1)+n)]`
-/

namespace A280706.P1683538830295180480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (2 - A005185 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P1683538830295180480

namespace A280706

/-- `∑[A005185(2-A005185(n+1)+n)]` -/
def P1683538830295180480.Spec : Prop :=
  ∀ n, P1683538830295180480.a n = A280706 (n + 1)

end A280706

/-! ## A280706.P15109848763054192291

`∑[A005185((n*A005185(n+1))%(n+1)+1)]`
-/

namespace A280706.P15109848763054192291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (Int.tmod ((n : ℤ) * A005185 (n + 1)) (n + 1 : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P15109848763054192291

namespace A280706

/-- `∑[A005185((n*A005185(n+1))%(n+1)+1)]` -/
def P15109848763054192291.Spec : Prop :=
  ∀ n, P15109848763054192291.a n = A280706 (n + 1)

end A280706

/-! ## A280706.P5342477001570287855

`∑[A005185(A284019(n+1)+A080677(n+1))]`
-/

namespace A280706.P5342477001570287855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A284019 (n + 1) + A080677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P5342477001570287855

namespace A280706

/-- `∑[A005185(A284019(n+1)+A080677(n+1))]` -/
def P5342477001570287855.Spec : Prop :=
  ∀ n, P5342477001570287855.a n = A280706 (n + 1)

end A280706

/-! ## A280706.P1924834529979489820

`∑[A144328(A286559(n+2)+1)]`
-/

namespace A280706.P1924834529979489820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A286559 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280706.P1924834529979489820

namespace A280706

/-- `∑[A144328(A286559(n+2)+1)]` -/
def P1924834529979489820.Spec : Prop :=
  ∀ n, P1924834529979489820.a n = A280706 (n + 1)

end A280706

/-!
# A280707: Collatz-2 (A063041) trajectory starting at 47.

The programs for A280707, there is no canonical definition to state claims against.
-/

/-! ## A280707.P10147418409098794101

`A063041(a(n-1))` with `a(0)=47`
-/

namespace A280707.P10147418409098794101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [47] fun n a =>
  A063041 (a (n - 1)).toNat

end

end A280707.P10147418409098794101

/-!
# A280708: Lexicographically earliest sequence such that no subsequence sums to a prime.

The programs for A280708, there is no canonical definition to state claims against.
-/

/-! ## A280708.P12790274618090239058

`A052349(n+1)-char[3]`
-/

namespace A280708.P12790274618090239058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052349 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A280708.P12790274618090239058

/-! ## A280708.P5133978905239572994

`A052349(val(lcm(2, n+1), 2)%2+n)`
-/

namespace A280708.P5133978905239572994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052349 (SequenceMachineLib.valuation (Nat.lcm 2 (n + 1)) 2 % 2 + n)

end

end A280708.P5133978905239572994

/-! ## A280708.P5040215664444323435

`A052349(Δ[and(n, n+2)]²%3+n)`
-/

namespace A280708.P5040215664444323435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052349 (Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) 3 + (n : ℤ)).toNat

end

end A280708.P5040215664444323435

/-! ## A280708.P14979842478222548314

`A052349(or(1, and(n, -(n+2)))%3+n)`
-/

namespace A280708.P14979842478222548314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052349 (Int.tmod (Int.lor 1 (Int.land (n : ℤ) (-(n + 2 : ℤ)))) 3 + (n : ℤ)).toNat

end

end A280708.P14979842478222548314

/-! ## A280708.P6120398313557970139

`A052349(A086257(n)+n)`
-/

namespace A280708.P6120398313557970139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052349 (A086257 n + (n : ℤ)).toNat

end

end A280708.P6120398313557970139

/-!
# A280709: The number of monic integer polynomials of degree n all of whose roots are distinct and of modulus at most 1.

The programs for A280709, there is no canonical definition to state claims against.
-/

/-! ## A280709.P9634119384480743224

`∑[∑[A094720(floor(n/2)!)]]`
-/

namespace A280709.P9634119384480743224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094720 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280709.P9634119384480743224

/-! ## A280709.P15002217215066231529

`∑[∑[A049105(A081123(n))]]`
-/

namespace A280709.P15002217215066231529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049105 (A081123 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280709.P15002217215066231529

/-! ## A280709.P11696437764476862093

`∑[∑[A251725(A178009(n))]]`
-/

namespace A280709.P11696437764476862093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251725 (A178009 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280709.P11696437764476862093

/-! ## A280709.P5700778322017338599

`∑[∑[A046951(A182922(n))]]`
-/

namespace A280709.P5700778322017338599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A182922 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280709.P5700778322017338599

/-!
# A280710: Characteristic function of squarefree semiprimes.

The programs for A280710, the canonical program `A280710.P16719408310245931755` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280710 has offset 1).

The definition of A280710 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A064911, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280710.P16719408310245931755

`A008966(n+1)*A064911(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A280710

/-- `A008966(n+1)*A064911(n+1)` -/
def P16719408310245931755.Spec : Prop :=
  ∀ n, P16719408310245931755.a n = A280710 (n + 1)

theorem P16719408310245931755.correct : P16719408310245931755.Spec := by
  intro n
  simp only [A280710, Nat.add_sub_cancel]

end A280710

/-! ## A280710.P12111724437065459682

`val(∑{e}[n+1, #²]+n+1, n+3)`
-/

namespace A280710.P12111724437065459682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2 + (n + 1)) (n + 3)

end

end A280710.P12111724437065459682

namespace A280710

/-- `val(∑{e}[n+1, #²]+n+1, n+3)` -/
def P12111724437065459682.Spec : Prop :=
  ∀ n, (P12111724437065459682.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P10873226565737472343

`char[eq[3, A002033(n)]]`
-/

namespace A280710.P10873226565737472343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P10873226565737472343

namespace A280710

/-- `char[eq[3, A002033(n)]]` -/
def P10873226565737472343.Spec : Prop :=
  ∀ n, (P10873226565737472343.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P2080803288682276182

`C(A230595(n+1), 2)`
-/

namespace A280710.P2080803288682276182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A230595 (n + 1)).toNat 2

end

end A280710.P2080803288682276182

namespace A280710

/-- `C(A230595(n+1), 2)` -/
def P2080803288682276182.Spec : Prop :=
  ∀ n, (P2080803288682276182.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P12363174700805967465

`char[A006881(n+1)-1]`
-/

namespace A280710.P12363174700805967465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A280710.P12363174700805967465

namespace A280710

/-- `char[A006881(n+1)-1]` -/
def P12363174700805967465.Spec : Prop :=
  ∀ n, (P12363174700805967465.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P4496693639086293829

`char[eq[1, A066620(n+1)]]`
-/

namespace A280710.P4496693639086293829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P4496693639086293829

namespace A280710

/-- `char[eq[1, A066620(n+1)]]` -/
def P4496693639086293829.Spec : Prop :=
  ∀ n, (P4496693639086293829.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P17971481192978576570

`char[eq[1, A089233(n+1)]]`
-/

namespace A280710.P17971481192978576570
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089233 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P17971481192978576570

namespace A280710

/-- `char[eq[1, A089233(n+1)]]` -/
def P17971481192978576570.Spec : Prop :=
  ∀ n, (P17971481192978576570.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P15102816286379699105

`char[eq[1, A281116(n+1)]]`
-/

namespace A280710.P15102816286379699105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P15102816286379699105

namespace A280710

/-- `char[eq[1, A281116(n+1)]]` -/
def P15102816286379699105.Spec : Prop :=
  ∀ n, (P15102816286379699105.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P10150781987129633943

`char[eq[1, A335447(n+1)]]`
-/

namespace A280710.P10150781987129633943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335447 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P10150781987129633943

namespace A280710

/-- `char[eq[1, A335447(n+1)]]` -/
def P10150781987129633943.Spec : Prop :=
  ∀ n, (P10150781987129633943.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P992722760083812261

`char[eq[1, A344178(n+1)]]`
-/

namespace A280710.P992722760083812261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344178 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P992722760083812261

namespace A280710

/-- `char[eq[1, A344178(n+1)]]` -/
def P992722760083812261.Spec : Prop :=
  ∀ n, (P992722760083812261.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P11902035636744564014

`char[eq[2, A008476(n+1)]]`
-/

namespace A280710.P11902035636744564014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P11902035636744564014

namespace A280710

/-- `char[eq[2, A008476(n+1)]]` -/
def P11902035636744564014.Spec : Prop :=
  ∀ n, (P11902035636744564014.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P16859735169656416778

`char[eq[2, A008480(n+1)]]`
-/

namespace A280710.P16859735169656416778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P16859735169656416778

namespace A280710

/-- `char[eq[2, A008480(n+1)]]` -/
def P16859735169656416778.Spec : Prop :=
  ∀ n, (P16859735169656416778.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P3579228338658321951

`char[eq[2, A046645(n+1)]]`
-/

namespace A280710.P3579228338658321951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P3579228338658321951

namespace A280710

/-- `char[eq[2, A046645(n+1)]]` -/
def P3579228338658321951.Spec : Prop :=
  ∀ n, (P3579228338658321951.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P14196264700107924953

`char[eq[2, A066882(n+1)]]`
-/

namespace A280710.P14196264700107924953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P14196264700107924953

namespace A280710

/-- `char[eq[2, A066882(n+1)]]` -/
def P14196264700107924953.Spec : Prop :=
  ∀ n, (P14196264700107924953.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P410472377620862939

`char[eq[2, A081707(n+1)]]`
-/

namespace A280710.P410472377620862939
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P410472377620862939

namespace A280710

/-- `char[eq[2, A081707(n+1)]]` -/
def P410472377620862939.Spec : Prop :=
  ∀ n, (P410472377620862939.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P16995569605244132389

`char[eq[2, A090885(n+1)]]`
-/

namespace A280710.P16995569605244132389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090885 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P16995569605244132389

namespace A280710

/-- `char[eq[2, A090885(n+1)]]` -/
def P16995569605244132389.Spec : Prop :=
  ∀ n, (P16995569605244132389.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P13589543671128928083

`char[eq[2, A317581(n+1)]]`
-/

namespace A280710.P13589543671128928083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317581 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A280710.P13589543671128928083

namespace A280710

/-- `char[eq[2, A317581(n+1)]]` -/
def P13589543671128928083.Spec : Prop :=
  ∀ n, (P13589543671128928083.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P11334384834089667741

`round(acot(A211991(n+1)+2))`
-/

namespace A280710.P11334384834089667741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A211991 (n + 1) + 2 : ℝ))

end

end A280710.P11334384834089667741

namespace A280710

/-- `round(acot(A211991(n+1)+2))` -/
def P11334384834089667741.Spec : Prop :=
  ∀ n, P11334384834089667741.a n = A280710 (n + 1)

end A280710

/-! ## A280710.P2902879372097953169

`C(∏{d}[n+1, C(2, A001222(#))], 4)`
-/

namespace A280710.P2902879372097953169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ d ∈ Nat.divisors (f1 n), Nat.choose 2 (A001222 d).toNat) 4

end

end A280710.P2902879372097953169

namespace A280710

/-- `C(∏{d}[n+1, C(2, A001222(#))], 4)` -/
def P2902879372097953169.Spec : Prop :=
  ∀ n, (P2902879372097953169.a n : ℤ) = A280710 (n + 1)

end A280710

/-! ## A280710.P18151732580366007671

`A378529(A046523(n+1))`
-/

namespace A280710.P18151732580366007671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378529 (A046523 (n + 1)).toNat

end

end A280710.P18151732580366007671

namespace A280710

/-- `A378529(A046523(n+1))` -/
def P18151732580366007671.Spec : Prop :=
  ∀ n, P18151732580366007671.a n = A280710 (n + 1)

end A280710

/-!
# A280711: A pseudorandom binary sequence with minimum cyclic autocorrelation of all of its partial subsequences.

The programs for A280711, there is no canonical definition to state claims against.
-/

/-! ## A280711.P899517666188931335

`A010060(or(A016789(n), A283666(n+1)))`
-/

namespace A280711.P899517666188931335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (Int.lor (A016789 n) (A283666 (n + 1))).toNat

end

end A280711.P899517666188931335

/-! ## A280711.P10182654191329677308

`A130198(or(A006000(n), A302846(n)))`
-/

namespace A280711.P10182654191329677308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130198 (Int.lor (A006000 n) (A302846 n)).toNat

end

end A280711.P10182654191329677308

/-! ## A280711.P2296213605482789950

`A327253(A000203(n+1)*A098058(n+1))`
-/

namespace A280711.P2296213605482789950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327253 (A000203 (n + 1) * A098058 (n + 1)).toNat

end

end A280711.P2296213605482789950

/-! ## A280711.P8539303813668557279

`A328101(or(A057635(n+1), A193679(n+1)))`
-/

namespace A280711.P8539303813668557279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328101 (Int.lor (A057635 (n + 1)) (A193679 (n + 1))).toNat

end

end A280711.P8539303813668557279

/-! ## A280711.P14439342468481032267

`and(A014963(A132425(2*n+1)), A314554(n+1))`
-/

namespace A280711.P14439342468481032267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014963 (A132425 (2 * n + 1)).toNat) (A314554 (n + 1))

end

end A280711.P14439342468481032267

/-!
# A280712: Inverse Euler transform of A280611.

The programs for A280712, there is no canonical definition to state claims against.
-/

/-! ## A280712.P6967459856537789519

`∑{d}[n+1, A070633(#)*A092673((n+1)/#)]`
-/

namespace A280712.P6967459856537789519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A070633 d * A092673 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A280712.P6967459856537789519

/-! ## A280712.P6217874717878174540

`∑{d}[n+1, A014197(#)*A154955((n+1)/#)]`
-/

namespace A280712.P6217874717878174540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A014197 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A280712.P6217874717878174540

/-! ## A280712.P7606080975062439806

`A014197(n+1)-A014197(A065259(n+1))`
-/

namespace A280712.P7606080975062439806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - A014197 (A065259 (n + 1)).toNat

end

end A280712.P7606080975062439806

/-! ## A280712.P8035111559799156262

`A014197(n+1)-A014197(A235800(n+1))`
-/

namespace A280712.P8035111559799156262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1) - A014197 (A235800 (n + 1)).toNat

end

end A280712.P8035111559799156262

/-! ## A280712.P12348073356973913979

`gcd(A014197(n+1), A014197(A204990(n+1)))`
-/

namespace A280712.P12348073356973913979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014197 (n + 1)) (A014197 (A204990 (n + 1)).toNat)

end

end A280712.P12348073356973913979

/-!
# A280713: Partial sums of A055067 where A055067(n) is the product of non-divisors of n.

The programs for A280713, there is no canonical definition to state claims against.
-/

/-! ## A280713.P4511461291532200569

`∑[(n+1)/∏{d}[n+1, #]*n!]`
-/

namespace A280713.P4511461291532200569
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) * (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P4511461291532200569

/-! ## A280713.P18286820717413568080

`a(n-1)+(n+1)/∏{d}[n+1, #]*n!` with `a(0)=1`
-/

namespace A280713.P18286820717413568080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) * (Nat.factorial n : ℚ)

end

end A280713.P18286820717413568080

/-! ## A280713.P2071761251240634943

`∑[A055067(n+1)]`
-/

namespace A280713.P2071761251240634943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P2071761251240634943

/-! ## A280713.P2580656216211423044

`∑[n!/A007956(n+1)]`
-/

namespace A280713.P2580656216211423044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A007956 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P2580656216211423044

/-! ## A280713.P297981594153608458

`∑[A000142(n)/A007956(n+1)]`
-/

namespace A280713.P297981594153608458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A007956 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P297981594153608458

/-! ## A280713.P18325409219333036331

`∑[(n+1)/A007955(n+1)*A000142(n)]`
-/

namespace A280713.P18325409219333036331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007955 (n + 1) : ℚ) * (A000142 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P18325409219333036331

/-! ## A280713.P15472405512835366284

`∑[(n+1)!/∏{d}[n+1, #]]`
-/

namespace A280713.P15472405512835366284
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P15472405512835366284

/-! ## A280713.P1384475471941043655

`∑[∏[n+1]/∏{d}[n+1, #]]`
-/

namespace A280713.P1384475471941043655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280713.P1384475471941043655

/-!
# A280714: Partial products of A055067.

The programs for A280714, there is no canonical definition to state claims against.
-/

/-! ## A280714.P1388652761658618326

`A000178(n+1)/A092143(n+1)`
-/

namespace A280714.P1388652761658618326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000178 (n + 1) : ℚ) / (A092143 (n + 1) : ℚ)

end

end A280714.P1388652761658618326

/-! ## A280714.P223564060589774321

`∏[(n+1)!/∏{d}[n+1, #]]`
-/

namespace A280714.P223564060589774321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280714.P223564060589774321

/-! ## A280714.P9966879955888818050

`∏[∏[n+1]/∏{d}[n+1, #]]`
-/

namespace A280714.P9966879955888818050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280714.P9966879955888818050

/-! ## A280714.P638528333399491130

`∏[A055067(n+1)]`
-/

namespace A280714.P638528333399491130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280714.P638528333399491130

/-! ## A280714.P13264901762555154729

`∏[n!/A007956(n+1)]`
-/

namespace A280714.P13264901762555154729
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A007956 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A280714.P13264901762555154729

/-!
# A280715: Expansion of Product_{k>=1} 1/((1 - x^prime(k))*(1 - x^(prime(k)^2))*(1 - x^(prime(k)^3))).

The programs for A280715, there is no canonical definition to state claims against.
-/

/-! ## A280715.P5591654559080893935

`A023894(n)-A326499(A013929(2*n+1))`
-/

namespace A280715.P5591654559080893935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n - A326499 ((A013929 (2 * n + 1)).toNat + 50)

end

end A280715.P5591654559080893935

/-! ## A280715.P2764576096230411435

`A023894(n)-A025469(A024622(n))`
-/

namespace A280715.P2764576096230411435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n - A025469 (A024622 n).toNat

end

end A280715.P2764576096230411435

/-! ## A280715.P12390028068832229552

`A023894(n)-A100910(A100346(n))`
-/

namespace A280715.P12390028068832229552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n - A100910 (A100346 n).toNat

end

end A280715.P12390028068832229552

/-! ## A280715.P11945193555212898067

`A023894(n)-A025466(A218543(n))`
-/

namespace A280715.P11945193555212898067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023894 n - A025466 (A218543 n).toNat

end

end A280715.P11945193555212898067

/-! ## A280715.P3744558292901775469

`A285799(n)-A025469(A024622(n))`
-/

namespace A280715.P3744558292901775469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285799 n - A025469 (A024622 n).toNat

end

end A280715.P3744558292901775469

/-!
# A280716: Expansion of Product_{k>=2} (1 + mu(2*k-1)^2*x^(2*k-1)), where mu() is the Moebius function (A008683).

The programs for A280716, there is no canonical definition to state claims against.
-/

/-! ## A280716.P17740217582623215721

`A134337(n)-a(n-1)` with `a(0)=1`
-/

namespace A280716.P17740217582623215721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134337 n - a (n - 1)

end

end A280716.P17740217582623215721

/-! ## A280716.P10162672243177752410

`gcd(∑[A261733(n)], A249422(5*n+6))`
-/

namespace A280716.P10162672243177752410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261733 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A249422 (5 * n + 6))

end

end A280716.P10162672243177752410

/-! ## A280716.P2028898216157376198

`A025885(lt[A025885(2*n+3), A002117(n+1)])`
-/

namespace A280716.P2028898216157376198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A280716.P2028898216157376198

/-! ## A280716.P3364120944126245223

`A351014(A344904(n+1)%A110312(n+3))`
-/

namespace A280716.P3364120944126245223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (Int.tmod (A344904 (n + 1)) (A110312 (n + 3))).toNat

end

end A280716.P3364120944126245223

/-! ## A280716.P1998971804106821720

`A269241(A241114(n+1))`
-/

namespace A280716.P1998971804106821720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269241 (A241114 (n + 1)).toNat

end

end A280716.P1998971804106821720

/-!
# A280720: For p = prime(n), number of iterations of the function f(x) = 5x + 2 that leave p prime.

The programs for A280720, there is no canonical definition to state claims against.
-/

/-! ## A280720.P4770844883102301101

`A001065(A001158(n+1))%A205526(n+1)`
-/

namespace A280720.P4770844883102301101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (A001158 (n + 1)).toNat) (A205526 (n + 1))

end

end A280720.P4770844883102301101

/-! ## A280720.P17635755663883786236

`A276634(A282213(n+1)/(n+1)^3)%A205526(n+1)`
-/

namespace A280720.P17635755663883786236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276634 (SequenceMachineLib.roundAway ((A282213 (n + 1) : ℚ) / ((n + 1) ^ 3 : ℚ))).toNat) (A205526 (n + 1))

end

end A280720.P17635755663883786236

/-! ## A280720.P6741638485187216657

`A276634(A279290(n+1)+A005064(n+1))%A205526(n+1)`
-/

namespace A280720.P6741638485187216657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276634 (A279290 (n + 1) + A005064 (n + 1)).toNat) (A205526 (n + 1))

end

end A280720.P6741638485187216657

/-! ## A280720.P12959635408298755795

`A276634(A051000(n+1)*A318935(n+1))%A205526(n+1)`
-/

namespace A280720.P12959635408298755795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276634 (A051000 (n + 1) * A318935 (n + 1)).toNat) (A205526 (n + 1))

end

end A280720.P12959635408298755795

/-! ## A280720.P15585506179363048438

`A269175(A001153(n+1))`
-/

namespace A280720.P15585506179363048438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269175 (A001153 (n + 1)).toNat

end

end A280720.P15585506179363048438

/-!
# A280721: a(n) is the n-th b > 1 such that p = prime(n) satisfies b^(p-1) == 1 (mod p^2).

The programs for A280721, there is no canonical definition to state claims against.
-/

/-! ## A280721.P15380752250530067814

`A244249(∑[4*n]+1)`
-/

namespace A280721.P15380752250530067814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244249 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A280721.P15380752250530067814

/-! ## A280721.P13221966755061112748

`or(char[3], A244249(A001844(n)))`
-/

namespace A280721.P13221966755061112748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A244249 (A001844 n).toNat)

end

end A280721.P13221966755061112748

/-! ## A280721.P13490313233374075223

`A000027(A244249(n²+(n+1)²))`
-/

namespace A280721.P13490313233374075223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A244249 (n ^ 2 + (n + 1) ^ 2)).toNat

end

end A280721.P13490313233374075223

/-! ## A280721.P15239529044818161955

`A244249(A001844(n))%A027602(n)`
-/

namespace A280721.P15239529044818161955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244249 (A001844 n).toNat) (A027602 n)

end

end A280721.P15239529044818161955

/-! ## A280721.P9737275379409977693

`A244249(A001844(n))/A006466(∑[n])`
-/

namespace A280721.P9737275379409977693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244249 (A001844 n).toNat : ℚ) / (A006466 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A280721.P9737275379409977693

/-! ## A280721.P8194353410936162221

`char[A001057(n)]*A244249(A001844(n))`
-/

namespace A280721.P8194353410936162221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A244249 (A001844 n).toNat

end

end A280721.P8194353410936162221

/-! ## A280721.P18401402810656291162

`char[A065256(n)]*A244249(A001844(n))`
-/

namespace A280721.P18401402810656291162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065256 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A244249 (A001844 n).toNat

end

end A280721.P18401402810656291162

/-! ## A280721.P17539076726854691642

`A244249(A001844(n))+A000007(n+2)`
-/

namespace A280721.P17539076726854691642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244249 (A001844 n).toNat + A000007 (n + 2)

end

end A280721.P17539076726854691642

/-! ## A280721.P16169352144324266855

`A007318(C(2, n))*A244249(A001844(n))`
-/

namespace A280721.P16169352144324266855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A244249 (A001844 n).toNat

end

end A280721.P16169352144324266855

/-! ## A280721.P7891232828713185674

`∏{p}[n, A001221(#)]*A244249(A001844(n))`
-/

namespace A280721.P7891232828713185674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A244249 (A001844 n).toNat

end

end A280721.P7891232828713185674

/-!
# A280723: a(n) is the denominator of 6 * Sum_{k=0..n} ((k+1)/(n-k+1)^2) * (Catalan(k)/(2^(2*k+1)))^2.

The programs for A280723, there is no canonical definition to state claims against.
-/

/-! ## A280723.P2149203926455504161

`A000079(3*n+1)*A199005(A221056(n+1))`
-/

namespace A280723.P2149203926455504161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (3 * n + 1) * A199005 (A221056 (n + 1)).toNat

end

end A280723.P2149203926455504161

/-!
# A280724: Expansion of 1/(1 - x) + (1/(1 - x)^2)*Sum_{k>=0} x^(3^k).

The programs for A280724, the canonical program `A280724.P14922593002309192544` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280724 has offset 0).

The definition of A280724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2794 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280724.P1179787355126141541

`∑[∑[char[3^n]]]+1`
-/

namespace A280724.P1179787355126141541
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A280724.P1179787355126141541

namespace A280724

/-- `∑[∑[char[3^n]]]+1` -/
def P1179787355126141541.Spec : Prop :=
  ∀ n, (P1179787355126141541.a n : ℤ) = A280724 n

end A280724

/-! ## A280724.P8775206001296396332

`∑[∑[char[record[∑{e}[n, 3^#]]]]]`
-/

namespace A280724.P8775206001296396332
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f5 n), 3 ^ Nat.factorization (f5 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280724.P8775206001296396332

namespace A280724

/-- `∑[∑[char[record[∑{e}[n, 3^#]]]]]` -/
def P8775206001296396332.Spec : Prop :=
  ∀ n, (P8775206001296396332.a n : ℤ) = A280724 n

end A280724

/-! ## A280724.P6560266988218534475

`∑[∑[char[(3^n)%(4^n)]]]`
-/

namespace A280724.P6560266988218534475
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % 4 ^ n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280724.P6560266988218534475

namespace A280724

/-- `∑[∑[char[(3^n)%(4^n)]]]` -/
def P6560266988218534475.Spec : Prop :=
  ∀ n, (P6560266988218534475.a n : ℤ) = A280724 n

end A280724

/-! ## A280724.P14922593002309192544

`∑[a(floor(n/3))+1]` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280724

/-- `∑[a(floor(n/3))+1]` -/
def P14922593002309192544.Spec : Prop :=
  ∀ n, (P14922593002309192544.a n : ℤ) = A280724 n

theorem P14922593002309192544.correct : P14922593002309192544.Spec := by
  intro n
  simp only [A280724]

end A280724

/-! ## A280724.P14314069640238493223

`∑[∑[char[3*a(n-1)]]]` with `a(0)=0, a(1)=3`
-/

namespace A280724.P14314069640238493223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f3 =>
  3 * f3 (n - 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280724.P14314069640238493223

namespace A280724

/-- `∑[∑[char[3*a(n-1)]]]` -/
def P14314069640238493223.Spec : Prop :=
  ∀ n, (P14314069640238493223.a n : ℤ) = A280724 n

end A280724

/-! ## A280724.P14043350690061393013

`∑[A081604(n)]`
-/

namespace A280724.P14043350690061393013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280724.P14043350690061393013

namespace A280724

/-- `∑[A081604(n)]` -/
def P14043350690061393013.Spec : Prop :=
  ∀ n, P14043350690061393013.a n = A280724 n

end A280724

/-! ## A280724.P8293335305249735635

`∑[A390767(n²)]`
-/

namespace A280724.P8293335305249735635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390767 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280724.P8293335305249735635

namespace A280724

/-- `∑[A390767(n²)]` -/
def P8293335305249735635.Spec : Prop :=
  ∀ n, P8293335305249735635.a n = A280724 n

end A280724

/-!
# A280726: a(n) = A049501(phi(n)).

The programs for A280726, the canonical program `A280726.P4396404061775602210` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280726 has offset 1).

The definition of A280726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049501, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280726.P4396404061775602210

`A049501(A000010(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280726

/-- `A049501(A000010(n+1))` -/
def P4396404061775602210.Spec : Prop :=
  ∀ n, P4396404061775602210.a n = A280726 (n + 1)

theorem P4396404061775602210.correct : P4396404061775602210.Spec := by
  intro n
  simp only [A280726, Nat.add_sub_cancel]

end A280726

/-! ## A280726.P439884776981763152

`A049501(Δ[A002088(n)])`
-/

namespace A280726.P439884776981763152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (f1 (n + 1) - f1 n).toNat

end

end A280726.P439884776981763152

namespace A280726

/-- `A049501(Δ[A002088(n)])` -/
def P439884776981763152.Spec : Prop :=
  ∀ n, P439884776981763152.a n = A280726 (n + 1)

end A280726

/-! ## A280726.P10825428353474051819

`A049501(A039649(n+1)-1)`
-/

namespace A280726.P10825428353474051819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A039649 (n + 1) - 1).toNat

end

end A280726.P10825428353474051819

namespace A280726

/-- `A049501(A039649(n+1)-1)` -/
def P10825428353474051819.Spec : Prop :=
  ∀ n, P10825428353474051819.a n = A280726 (n + 1)

end A280726

/-! ## A280726.P2671940267375372222

`A049501(1-A051953(n+1)+n)`
-/

namespace A280726.P2671940267375372222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A280726.P2671940267375372222

namespace A280726

/-- `A049501(1-A051953(n+1)+n)` -/
def P2671940267375372222.Spec : Prop :=
  ∀ n, P2671940267375372222.a n = A280726 (n + 1)

end A280726

/-! ## A280726.P12083305038020098303

`A049501(A002618(n+1)/(n+1))`
-/

namespace A280726.P12083305038020098303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A280726.P12083305038020098303

namespace A280726

/-- `A049501(A002618(n+1)/(n+1))` -/
def P12083305038020098303.Spec : Prop :=
  ∀ n, P12083305038020098303.a n = A280726 (n + 1)

end A280726

/-! ## A280726.P15856082742461126828

`A049501(A002088(n+1)-A002088(n))`
-/

namespace A280726.P15856082742461126828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049501 (A002088 (n + 1) - A002088 n).toNat

end

end A280726.P15856082742461126828

namespace A280726

/-- `A049501(A002088(n+1)-A002088(n))` -/
def P15856082742461126828.Spec : Prop :=
  ∀ n, P15856082742461126828.a n = A280726 (n + 1)

end A280726

/-!
# A280727: Number of even divisors of Bell(n).

The programs for A280727, there is no canonical definition to state claims against.
-/

/-! ## A280727.P4353092281896458907

`val(A000110(n), 2)*A280638(n)`
-/

namespace A280727.P4353092281896458907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000110 n).toNat 2 : ℤ) * A280638 n

end

end A280727.P4353092281896458907

/-!
# A280728: Number of even divisors of Lucas(n).

The programs for A280728, the canonical program `A280728.P2681727417312641949` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280728 has offset 0).

The definition of A280728 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183063, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280728.P2681727417312641949

`A183063(A000032(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A280728

/-- `A183063(A000032(n))` -/
def P2681727417312641949.Spec : Prop :=
  ∀ n, P2681727417312641949.a n = A280728 n

theorem P2681727417312641949.correct : P2681727417312641949.Spec := by
  intro n
  simp only [A280728]

end A280728

/-! ## A280728.P12464309947073878729

`A272377(n)-A193495(n)`
-/

namespace A280728.P12464309947073878729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272377 n - A193495 n

end

end A280728.P12464309947073878729

namespace A280728

/-- `A272377(n)-A193495(n)` -/
def P12464309947073878729.Spec : Prop :=
  ∀ n, P12464309947073878729.a n = A280728 n

end A280728

/-! ## A280728.P9478424808194765857

`(A000034(n)*A193495(n))%A272377(n)`
-/

namespace A280728.P9478424808194765857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000034 n * A193495 n) (A272377 n)

end

end A280728.P9478424808194765857

namespace A280728

/-- `(A000034(n)*A193495(n))%A272377(n)` -/
def P9478424808194765857.Spec : Prop :=
  ∀ n, P9478424808194765857.a n = A280728 n

end A280728

/-! ## A280728.P8952321467266061031

`(A016969(n)*A193495(n))%A272377(n)`
-/

namespace A280728.P8952321467266061031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016969 n * A193495 n) (A272377 n)

end

end A280728.P8952321467266061031

namespace A280728

/-- `(A016969(n)*A193495(n))%A272377(n)` -/
def P8952321467266061031.Spec : Prop :=
  ∀ n, P8952321467266061031.a n = A280728 n

end A280728

/-! ## A280728.P6844381859712186148

`(A047255(n+1)*A193495(n))%A272377(n)`
-/

namespace A280728.P6844381859712186148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047255 (n + 1) * A193495 n) (A272377 n)

end

end A280728.P6844381859712186148

namespace A280728

/-- `(A047255(n+1)*A193495(n))%A272377(n)` -/
def P6844381859712186148.Spec : Prop :=
  ∀ n, P6844381859712186148.a n = A280728 n

end A280728

/-! ## A280728.P6730145060451103803

`val(A000032(n), 2)*A193495(n)`
-/

namespace A280728.P6730145060451103803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000032 n).toNat 2 : ℤ) * A193495 n

end

end A280728.P6730145060451103803

namespace A280728

/-- `val(A000032(n), 2)*A193495(n)` -/
def P6730145060451103803.Spec : Prop :=
  ∀ n, P6730145060451103803.a n = A280728 n

end A280728

/-! ## A280728.P2081462428716802966

`val(A001060(n), 2)*A193495(n)`
-/

namespace A280728.P2081462428716802966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A001060 n).toNat 2 : ℤ) * A193495 n

end

end A280728.P2081462428716802966

namespace A280728

/-- `val(A001060(n), 2)*A193495(n)` -/
def P2081462428716802966.Spec : Prop :=
  ∀ n, P2081462428716802966.a n = A280728 n

end A280728

/-! ## A280728.P14074833826957612457

`val(A001254(n), 4)*A193495(n)`
-/

namespace A280728.P14074833826957612457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A001254 n).toNat 4 : ℤ) * A193495 n

end

end A280728.P14074833826957612457

namespace A280728

/-- `val(A001254(n), 4)*A193495(n)` -/
def P14074833826957612457.Spec : Prop :=
  ∀ n, P14074833826957612457.a n = A280728 n

end A280728

/-!
# A280729: (p-1)/2 + phi(p-1) as p runs through the odd primes.

The programs for A280729, the canonical program `A280729.P13621898540149842299` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280729 has offset 1).

The definition of A280729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280729.P13621898540149842299

`2*A005097(n+1)-A098006(n+2)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A280729

/-- `2*A005097(n+1)-A098006(n+2)` -/
def P13621898540149842299.Spec : Prop :=
  ∀ n, P13621898540149842299.a n = A280729 (n + 1)

theorem P13621898540149842299.correct : P13621898540149842299.Spec := by
  intro n
  simp only [A280729, Nat.add_sub_cancel]

end A280729

/-! ## A280729.P12146242001457110397

`A062570(A005097(n+1))+A005097(n+1)`
-/

namespace A280729.P12146242001457110397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (A005097 (n + 1)).toNat + A005097 (n + 1)

end

end A280729.P12146242001457110397

namespace A280729

/-- `A062570(A005097(n+1))+A005097(n+1)` -/
def P12146242001457110397.Spec : Prop :=
  ∀ n, P12146242001457110397.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P13732141864252275713

`A008330(n+2)+A005097(n+1)`
-/

namespace A280729.P13732141864252275713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 2) + A005097 (n + 1)

end

end A280729.P13732141864252275713

namespace A280729

/-- `A008330(n+2)+A005097(n+1)` -/
def P13732141864252275713.Spec : Prop :=
  ∀ n, P13732141864252275713.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P10073699272356768345

`A006093(n+2)-A098006(n+2)`
-/

namespace A280729.P10073699272356768345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 2) - A098006 (n + 2)

end

end A280729.P10073699272356768345

namespace A280729

/-- `A006093(n+2)-A098006(n+2)` -/
def P10073699272356768345.Spec : Prop :=
  ∀ n, P10073699272356768345.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P13628982286287107294

`A008330(n+2)+A006093(n+2)/2`
-/

namespace A280729.P13628982286287107294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008330 (n + 2) : ℚ) + (A006093 (n + 2) : ℚ) / 2

end

end A280729.P13628982286287107294

namespace A280729

/-- `A008330(n+2)+A006093(n+2)/2` -/
def P13628982286287107294.Spec : Prop :=
  ∀ n, P13628982286287107294.a n = (A280729 (n + 1) : ℚ)

end A280729

/-! ## A280729.P14564025498118287580

`A130290(n+2)+A062570(A130290(n+2))`
-/

namespace A280729.P14564025498118287580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) + A062570 (A130290 (n + 2)).toNat

end

end A280729.P14564025498118287580

namespace A280729

/-- `A130290(n+2)+A062570(A130290(n+2))` -/
def P14564025498118287580.Spec : Prop :=
  ∀ n, P14564025498118287580.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P4770633666690539960

`A008330(n+2)+A098006(n+2)+A008330(n+2)`
-/

namespace A280729.P4770633666690539960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 2) + (A098006 (n + 2) + A008330 (n + 2))

end

end A280729.P4770633666690539960

namespace A280729

/-- `A008330(n+2)+A098006(n+2)+A008330(n+2)` -/
def P4770633666690539960.Spec : Prop :=
  ∀ n, P4770633666690539960.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P7168026091805991441

`A005097(n+1)+A000010(2*A005097(n+1))`
-/

namespace A280729.P7168026091805991441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + A000010 (2 * A005097 (n + 1)).toNat

end

end A280729.P7168026091805991441

namespace A280729

/-- `A005097(n+1)+A000010(2*A005097(n+1))` -/
def P7168026091805991441.Spec : Prop :=
  ∀ n, P7168026091805991441.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P16263615033057775504

`A280577(A006093(n+2))`
-/

namespace A280729.P16263615033057775504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280577 (A006093 (n + 2)).toNat

end

end A280729.P16263615033057775504

namespace A280729

/-- `A280577(A006093(n+2))` -/
def P16263615033057775504.Spec : Prop :=
  ∀ n, P16263615033057775504.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P16784737100927605547

`A280577(A039915(n+2))`
-/

namespace A280729.P16784737100927605547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280577 (A039915 (n + 2)).toNat

end

end A280729.P16784737100927605547

namespace A280729

/-- `A280577(A039915(n+2))` -/
def P16784737100927605547.Spec : Prop :=
  ∀ n, P16784737100927605547.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P2355906868435294216

`A280577(record[A000010(n+3)])`
-/

namespace A280729.P2355906868435294216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280577 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280729.P2355906868435294216

namespace A280729

/-- `A280577(record[A000010(n+3)])` -/
def P2355906868435294216.Spec : Prop :=
  ∀ n, P2355906868435294216.a n = A280729 (n + 1)

end A280729

/-! ## A280729.P4684658850430317925

`A055034(2*A005097(n+1))+A005097(n+1)`
-/

namespace A280729.P4684658850430317925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * A005097 (n + 1)).toNat + A005097 (n + 1)

end

end A280729.P4684658850430317925

namespace A280729

/-- `A055034(2*A005097(n+1))+A005097(n+1)` -/
def P4684658850430317925.Spec : Prop :=
  ∀ n, P4684658850430317925.a n = A280729 (n + 1)

end A280729

/-!
# A280730: Partial sums of A278742.

The programs for A280730, there is no canonical definition to state claims against.
-/

/-! ## A280730.P6095410121182399260

`∑[A278742(n+1)]`
-/

namespace A280730.P6095410121182399260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280730.P6095410121182399260

/-! ## A280730.P2691473470307600172

`∑[record[A278742(A126759(n))]]`
-/

namespace A280730.P2691473470307600172
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278742 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280730.P2691473470307600172

/-! ## A280730.P4865254643893392825

`∑[record[A278742(A263275(n))]]`
-/

namespace A280730.P4865254643893392825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278742 (A263275 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280730.P4865254643893392825

/-! ## A280730.P11313709382194211112

`∑[record[A278742(A128227(n))]]`
-/

namespace A280730.P11313709382194211112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278742 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280730.P11313709382194211112

/-! ## A280730.P4401295479807167792

`∑[record[A278742(A137734(n))]]`
-/

namespace A280730.P4401295479807167792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278742 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280730.P4401295479807167792

/-!
# A280731: Lexicographically least strictly increasing sequence such that, for any n>0, Sum_{k=1..n} a(k) can be computed without carries in base 9 (the numbers are written in base 10).

The programs for A280731, there is no canonical definition to state claims against.
-/

/-! ## A280731.P9674223330788392747

`A028904(A281366(n+1))`
-/

namespace A280731.P9674223330788392747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A281366 (n + 1)).toNat

end

end A280731.P9674223330788392747

/-!
# A280732: Numbers whose digit string can be partitioned into three nonempty parts a <= b <= c such that a*b = c.

The programs for A280732, there is no canonical definition to state claims against.
-/

/-! ## A280732.P1709245724238875235

`A280635(comp[(1-n)*comp[A004086(n)]])`
-/

namespace A280732.P1709245724238875235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A280732.P1709245724238875235

/-! ## A280732.P3029794912358128380

`A280635(comp[(1-n)*comp[A002113(n+1)]])`
-/

namespace A280732.P3029794912358128380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280635 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A280732.P3029794912358128380

/-! ## A280732.P13354379413868955713

`A280635(A280688(n+3)+A106000(n))`
-/

namespace A280732.P13354379413868955713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280635 (A280688 (n + 3) + A106000 n).toNat

end

end A280732.P13354379413868955713

/-! ## A280732.P12107946090730995533

`A280635(A239215(n+1)*A250662(n))`
-/

namespace A280732.P12107946090730995533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280635 (A239215 (n + 1) * A250662 n).toNat

end

end A280732.P12107946090730995533

/-! ## A280732.P13170846639254102798

`A280635(A106000(n+1))`
-/

namespace A280732.P13170846639254102798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280635 (A106000 (n + 1)).toNat

end

end A280732.P13170846639254102798

/-!
# A280733: Numbers whose digit string can be partitioned into three nonempty parts a < b <= c such that a*b = c.

The programs for A280733, there is no canonical definition to state claims against.
-/

/-! ## A280733.P14887920763980672809

`∩[A241158(n+1), A280732(n+1)]`
-/

namespace A280733.P14887920763980672809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A280733.P14887920763980672809

/-! ## A280733.P7600506753101517134

`A302801(lt[val(∑{digits}[n, 5^#], 5), n%10])`
-/

namespace A280733.P7600506753101517134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 5 ^ x).sum 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A280733.P7600506753101517134

/-! ## A280733.P187535352312893411

`A302801(comp[A004186(n)])`
-/

namespace A280733.P187535352312893411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A280733.P187535352312893411

/-! ## A280733.P3975528154688934081

`A302801(A071589(n+1))`
-/

namespace A280733.P3975528154688934081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A071589 (n + 1)).toNat

end

end A280733.P3975528154688934081

/-! ## A280733.P15352980040389942954

`A302801(A296713(n+1))`
-/

namespace A280733.P15352980040389942954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302801 (A296713 (n + 1)).toNat

end

end A280733.P15352980040389942954

/-!
# A280734: 

The programs for A280734, there is no canonical definition to state claims against.
-/

/-! ## A280734.P15672535395391618944

`A000178(A000040(n+1))`
-/

namespace A280734.P15672535395391618944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 (A000040 (n + 1)).toNat

end

end A280734.P15672535395391618944

/-!
# A280735: Numerator of Product_{k=1..n-1} k^(2k-n-1).

The programs for A280735, there is no canonical definition to state claims against.
-/

/-! ## A280735.P2323305949635065166

`A353389(a(n-2))` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A280735.P2323305949635065166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A353389 (a (n - 2)).toNat

end

end A280735.P2323305949635065166

/-!
# A280737: a(n) = A007302(n) - 1.

The programs for A280737, the canonical program `A280737.P4532675294742488203` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280737 has offset 1).

The definition of A280737 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007302, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280737.P4532675294742488203

`A007302(n+1)-1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A280737

/-- `A007302(n+1)-1` -/
def P4532675294742488203.Spec : Prop :=
  ∀ n, P4532675294742488203.a n = A280737 (n + 1)

theorem P4532675294742488203.correct : P4532675294742488203.Spec := by
  intro n
  simp only [A280737, Nat.add_sub_cancel]

end A280737

/-! ## A280737.P11588477349100245237

`n-∑[A101660(n)]`
-/

namespace A280737.P11588477349100245237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280737.P11588477349100245237

namespace A280737

/-- `n-∑[A101660(n)]` -/
def P11588477349100245237.Spec : Prop :=
  ∀ n, P11588477349100245237.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P17109248544432243577

`A216195(n+1)-2`
-/

namespace A280737.P17109248544432243577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216195 (n + 1) - 2

end

end A280737.P17109248544432243577

namespace A280737

/-- `A216195(n+1)-2` -/
def P17109248544432243577.Spec : Prop :=
  ∀ n, P17109248544432243577.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P18117900575838307366

`A007302(A053646(n+1))`
-/

namespace A280737.P18117900575838307366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A053646 (n + 1)).toNat

end

end A280737.P18117900575838307366

namespace A280737

/-- `A007302(A053646(n+1))` -/
def P18117900575838307366.Spec : Prop :=
  ∀ n, P18117900575838307366.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P9146612276220207474

`A085423(n+1)-(A057526(n+1)+1)`
-/

namespace A280737.P9146612276220207474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) - (A057526 (n + 1) + 1)

end

end A280737.P9146612276220207474

namespace A280737

/-- `A085423(n+1)-(A057526(n+1)+1)` -/
def P9146612276220207474.Spec : Prop :=
  ∀ n, P9146612276220207474.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P15196971058573260978

`A004885(A007302(n)+Δ[A007302(n)])`
-/

namespace A280737.P15196971058573260978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (A007302 n + (f1 (n + 1) - f1 n)).toNat

end

end A280737.P15196971058573260978

namespace A280737

/-- `A004885(A007302(n)+Δ[A007302(n)])` -/
def P15196971058573260978.Spec : Prop :=
  ∀ n, P15196971058573260978.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P11073109084768880789

`Δ[∑[A007302(n)]-n]`
-/

namespace A280737.P11073109084768880789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280737.P11073109084768880789

namespace A280737

/-- `Δ[∑[A007302(n)]-n]` -/
def P11073109084768880789.Spec : Prop :=
  ∀ n, P11073109084768880789.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P13291403072626339020

`log2(A380122(n+1))-1`
-/

namespace A280737.P13291403072626339020
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A380122 (n + 1) : ℝ) - 1

end

end A280737.P13291403072626339020

namespace A280737

/-- `log2(A380122(n+1))-1` -/
def P13291403072626339020.Spec : Prop :=
  ∀ n, P13291403072626339020.a n = (A280737 (n + 1) : ℝ)

end A280737

/-! ## A280737.P9786158157192415840

`A020944(A380122(n+1))`
-/

namespace A280737.P9786158157192415840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (A380122 (n + 1)).toNat

end

end A280737.P9786158157192415840

namespace A280737

/-- `A020944(A380122(n+1))` -/
def P9786158157192415840.Spec : Prop :=
  ∀ n, P9786158157192415840.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P15596471418717563220

`A000120(A380122(n+1)-2)`
-/

namespace A280737.P15596471418717563220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A380122 (n + 1) - 2).toNat

end

end A280737.P15596471418717563220

namespace A280737

/-- `A000120(A380122(n+1)-2)` -/
def P15596471418717563220.Spec : Prop :=
  ∀ n, P15596471418717563220.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P12970321872053600447

`A085423(n+1)-A277329(n+1)`
-/

namespace A280737.P12970321872053600447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (n + 1) - A277329 (n + 1)

end

end A280737.P12970321872053600447

namespace A280737

/-- `A085423(n+1)-A277329(n+1)` -/
def P12970321872053600447.Spec : Prop :=
  ∀ n, P12970321872053600447.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P5885681734905547103

`A037800(A184617(n+1))`
-/

namespace A280737.P5885681734905547103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A184617 (n + 1)).toNat

end

end A280737.P5885681734905547103

namespace A280737

/-- `A037800(A184617(n+1))` -/
def P5885681734905547103.Spec : Prop :=
  ∀ n, P5885681734905547103.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P1065908437929487884

`A329320(A005351(n+1))-1`
-/

namespace A280737.P1065908437929487884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A005351 (n + 1)).toNat - 1

end

end A280737.P1065908437929487884

namespace A280737

/-- `A329320(A005351(n+1))-1` -/
def P1065908437929487884.Spec : Prop :=
  ∀ n, P1065908437929487884.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P46032748405364315

`A037800(A178729(n+1)/2)`
-/

namespace A280737.P46032748405364315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (SequenceMachineLib.roundAway ((A178729 (n + 1) : ℚ) / 2)).toNat

end

end A280737.P46032748405364315

namespace A280737

/-- `A037800(A178729(n+1)/2)` -/
def P46032748405364315.Spec : Prop :=
  ∀ n, P46032748405364315.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P5166657897686760833

`A329320(xor(n, comp[2*n]))-1`
-/

namespace A280737.P5166657897686760833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (Nat.xor n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) - 1

end

end A280737.P5166657897686760833

namespace A280737

/-- `A329320(xor(n, comp[2*n]))-1` -/
def P5166657897686760833.Spec : Prop :=
  ∀ n, P5166657897686760833.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P1769792901354861664

`A329320(A048724(n+1))-1`
-/

namespace A280737.P1769792901354861664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A048724 (n + 1)).toNat - 1

end

end A280737.P1769792901354861664

namespace A280737

/-- `A329320(A048724(n+1))-1` -/
def P1769792901354861664.Spec : Prop :=
  ∀ n, P1769792901354861664.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P9693389315172879385

`n-∑[A091297(A016777(n))]`
-/

namespace A280737.P9693389315172879385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280737.P9693389315172879385

namespace A280737

/-- `n-∑[A091297(A016777(n))]` -/
def P9693389315172879385.Spec : Prop :=
  ∀ n, P9693389315172879385.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P9037989291885616388

`n-∑[A091297(comp[A007494(n)])]`
-/

namespace A280737.P9037989291885616388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091297 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280737.P9037989291885616388

namespace A280737

/-- `n-∑[A091297(comp[A007494(n)])]` -/
def P9037989291885616388.Spec : Prop :=
  ∀ n, P9037989291885616388.a n = A280737 (n + 1)

end A280737

/-! ## A280737.P15060801625988051352

`A000120(xor(n, 3*(n+1))+2)-2`
-/

namespace A280737.P15060801625988051352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor n (3 * (n + 1)) + 2) - 2

end

end A280737.P15060801625988051352

namespace A280737

/-- `A000120(xor(n, 3*(n+1))+2)-2` -/
def P15060801625988051352.Spec : Prop :=
  ∀ n, P15060801625988051352.a n = A280737 (n + 1)

end A280737

/-!
# A280738: After S(n)=A280864(n) has been computed, let p(n) = product of distinct primes shared by S(n-1) and S(n); let q(n) = product of distinct primes in S(n) but not in S(n-1); and let r(n) = smallest number not yet in S. Sequence gives p(n).

The programs for A280738, there is no canonical definition to state claims against.
-/

/-! ## A280738.P14979106154140584715

`A284785(n)/a(n-1)` with `a(0)=1`
-/

namespace A280738.P14979106154140584715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A284785 n : ℚ) / a (n - 1)

end

end A280738.P14979106154140584715

/-! ## A280738.P13365867130159820841

`gcd(A280864(n+1), A284785(A028310(n)))`
-/

namespace A280738.P13365867130159820841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A280864 (n + 1)) (A284785 (A028310 n).toNat)

end

end A280738.P13365867130159820841

/-! ## A280738.P4897879684833079530

`gcd(A284785(n+1), A338359(A028310(n)))`
-/

namespace A280738.P4897879684833079530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A284785 (n + 1)) (A338359 (A028310 n).toNat)

end

end A280738.P4897879684833079530

/-! ## A280738.P1774050558217286841

`A207375(∑[A120043(n)!])`
-/

namespace A280738.P1774050558217286841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A120043 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A280738.P1774050558217286841

/-! ## A280738.P15051069793561733612

`A347516(A059801(n+3)-A103438(n))`
-/

namespace A280738.P15051069793561733612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347516 (A059801 (n + 3) - A103438 n).toNat

end

end A280738.P15051069793561733612

/-!
# A280739: a(n) is the smallest composite number > a(n-1) for which the sum of the prime factors (counted with multiplicity) is n.

The programs for A280739, there is no canonical definition to state claims against.
-/

/-! ## A280739.P2058436549445934825

`record[C(A031087(2*(n+2)), A180466(3*n+4))]`
-/

namespace A280739.P2058436549445934825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A031087 (2 * (n + 2))).toNat (A180466 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280739.P2058436549445934825

/-! ## A280739.P5279510315933442494

`∪[A020169(n+1), A124157(n+4)]`
-/

namespace A280739.P5279510315933442494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124157 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A280739.P5279510315933442494

/-! ## A280739.P7699375851504939276

`eq[A056811(A131818(n+1)), A319753(n)]`
-/

namespace A280739.P7699375851504939276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A131818 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280739.P7699375851504939276

/-! ## A280739.P5378900023091036223

`eq[A060862(A136125(n+1)), A319753(n)]`
-/

namespace A280739.P5378900023091036223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A136125 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319753 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280739.P5378900023091036223

/-! ## A280739.P14449968550305913228

`lt[A022166(n), A260439(A055246(3*n+1))]`
-/

namespace A280739.P14449968550305913228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260439 (A055246 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280739.P14449968550305913228

/-!
# A280741: Position of n in A280864.

The programs for A280741, there is no canonical definition to state claims against.
-/

/-! ## A280741.P11435467293136389238

`A372064(n+1)+A304741(n+1)`
-/

namespace A280741.P11435467293136389238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372064 (n + 1) + A304741 (n + 1)

end

end A280741.P11435467293136389238

/-! ## A280741.P13106786000827860744

`A304741(n+1)+A047655(n+3)%A024026(A184946(n))`
-/

namespace A280741.P13106786000827860744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (n + 1) + Int.tmod (A047655 (n + 3)) (A024026 (A184946 n).toNat)

end

end A280741.P13106786000827860744

/-! ## A280741.P2585347200432665334

`A304741(n+1)+A109754(C(n, 29))`
-/

namespace A280741.P2585347200432665334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (n + 1) + A109754 (Nat.choose n 29)

end

end A280741.P2585347200432665334

/-! ## A280741.P9577235920700844570

`A304741(n+1)+A309700(n)*A345951(A177065(n))`
-/

namespace A280741.P9577235920700844570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (n + 1) + A309700 n * A345951 (A177065 n).toNat

end

end A280741.P9577235920700844570

/-! ## A280741.P13346521788239585991

`A304741(A185255(n)!+n)`
-/

namespace A280741.P13346521788239585991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (Nat.factorial (A185255 n).toNat + n)

end

end A280741.P13346521788239585991

/-!
# A280742: Position where n-th prime appears in A280864.

The programs for A280742, there is no canonical definition to state claims against.
-/

/-! ## A280742.P4443991292257087155

`A280741(A000040(n+1))`
-/

namespace A280742.P4443991292257087155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A000040 (n + 1)).toNat

end

end A280742.P4443991292257087155

/-! ## A280742.P15775164104102083114

`A280741(A008578(n+2))`
-/

namespace A280742.P15775164104102083114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A008578 (n + 2)).toNat

end

end A280742.P15775164104102083114

/-! ## A280742.P4681153461261670416

`A280741(A182986(n+2))`
-/

namespace A280742.P4681153461261670416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A182986 (n + 2)).toNat

end

end A280742.P4681153461261670416

/-! ## A280742.P2447410179160141590

`record[A280741(A005117(n+2))]`
-/

namespace A280742.P2447410179160141590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A005117 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280742.P2447410179160141590

/-! ## A280742.P3287974734716730950

`A280741(record[A006530(n+2)])`
-/

namespace A280742.P3287974734716730950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280742.P3287974734716730950

/-! ## A280742.P13480607074748186875

`A280741(record[A020639(n+2)])`
-/

namespace A280742.P13480607074748186875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280742.P13480607074748186875

/-! ## A280742.P6634127751375207383

`A280741(eq[2, A000005(n+1)]+1)`
-/

namespace A280742.P6634127751375207383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280742.P6634127751375207383

/-! ## A280742.P11335199834264598110

`A280741(eq[n, A000010(n+1)]+1)`
-/

namespace A280742.P11335199834264598110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A280742.P11335199834264598110

/-! ## A280742.P7899655399142255266

`A280741(record[A014963(n+2)])`
-/

namespace A280742.P7899655399142255266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280742.P7899655399142255266

/-!
# A280743: Records in A280864.

The programs for A280743, there is no canonical definition to state claims against.
-/

/-! ## A280743.P15224066099547922503

`record[A280864(n+1)]`
-/

namespace A280743.P15224066099547922503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280743.P15224066099547922503

/-! ## A280743.P10309408832475528911

`A280864(A280744(n+1))`
-/

namespace A280743.P10309408832475528911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280744 (n + 1)).toNat

end

end A280743.P10309408832475528911

/-! ## A280743.P16761607912917376824

`record[A338359(n)+a(n-1)]` with `a(0)=1`
-/

namespace A280743.P16761607912917376824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A338359 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280743.P16761607912917376824

/-! ## A280743.P16712117926900246660

`record[∑[A338359(A028310(n))]]`
-/

namespace A280743.P16712117926900246660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280743.P16712117926900246660

/-! ## A280743.P15707613559592461988

`record[∑[A338359(n+1)]+1-A338359(n+1)]`
-/

namespace A280743.P15707613559592461988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A338359 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280743.P15707613559592461988

/-!
# A280744: Positions of records in A280864.

The programs for A280744, there is no canonical definition to state claims against.
-/

/-! ## A280744.P8592623205971769814

`A280741(A280743(n+1))`
-/

namespace A280744.P8592623205971769814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A280743 (n + 1)).toNat

end

end A280744.P8592623205971769814

/-! ## A280744.P16521961765140402600

`A280741(record[A280864(n+1)])`
-/

namespace A280744.P16521961765140402600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280744.P16521961765140402600

/-! ## A280744.P4827223032334181125

`A280741(record[A338359(n)+a(n-1)])` with `a(0)=1`
-/

namespace A280744.P4827223032334181125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A338359 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280744.P4827223032334181125

/-! ## A280744.P18246200737006404951

`A304741(record[A280864(n+1)%A280755(2*n+1)])`
-/

namespace A280744.P18246200737006404951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280864 (n + 1)) (A280755 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A280744.P18246200737006404951

/-! ## A280744.P15864104044793283863

`A304741(A280743(n+1))+A002324(A086362(n))`
-/

namespace A280744.P15864104044793283863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304741 (A280743 (n + 1)).toNat + A002324 (A086362 n).toNat

end

end A280744.P15864104044793283863

/-!
# A280745: Primes that end a block of terms in A280864.

The programs for A280745, there is no canonical definition to state claims against.
-/

/-! ## A280745.P597443931071655999

`p?[A396300(n+1)]`
-/

namespace A280745.P597443931071655999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280745.P597443931071655999

/-! ## A280745.P6413349348399425180

`A396300(A396560(n+1))`
-/

namespace A280745.P6413349348399425180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396300 (A396560 (n + 1)).toNat

end

end A280745.P6413349348399425180

/-! ## A280745.P177922401788708063

`p?[A280738(A280742(n+1))]`
-/

namespace A280745.P177922401788708063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (A280742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280745.P177922401788708063

/-! ## A280745.P6445555991599038414

`p?[A280864(A280774(n+1))]`
-/

namespace A280745.P6445555991599038414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280774 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280745.P6445555991599038414

/-! ## A280745.P1009018587448439931

`record[A280738(A280742(n+6))]`
-/

namespace A280745.P1009018587448439931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (A280742 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280745.P1009018587448439931

/-! ## A280745.P1238823424135166004

`p?[A280864(A280742(n+1)-1)]`
-/

namespace A280745.P1238823424135166004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A280742 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A280745.P1238823424135166004

/-! ## A280745.P9452101413421982645

`A372059(A396560(n+1)+n+1)`
-/

namespace A280745.P9452101413421982645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372059 (A396560 (n + 1) + (n + 1 : ℤ)).toNat

end

end A280745.P9452101413421982645

/-! ## A280745.P17360975766498224076

`record[A020639(A280738(A280774(n+6)))]`
-/

namespace A280745.P17360975766498224076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A280738 (A280774 (n + 6)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280745.P17360975766498224076

/-!
# A280746: Index of 2^n in A280864.

The programs for A280746, there is no canonical definition to state claims against.
-/

/-! ## A280746.P16555768386304592663

`A280741(2^n)`
-/

namespace A280746.P16555768386304592663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (2 ^ n)

end

end A280746.P16555768386304592663

/-! ## A280746.P12080635856997399940

`record[A280741(A029930(n))]`
-/

namespace A280746.P12080635856997399940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280746.P12080635856997399940

/-! ## A280746.P10300936739536959425

`record[A280741(A059268(n))]`
-/

namespace A280746.P10300936739536959425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280746.P10300936739536959425

/-! ## A280746.P2694332178663834819

`record[A280741(A068009(n))]`
-/

namespace A280746.P2694332178663834819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280746.P2694332178663834819

/-! ## A280746.P10560312432913709032

`record[A280741(A072345(n))]`
-/

namespace A280746.P10560312432913709032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A072345 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280746.P10560312432913709032

/-!
# A280747: One of a set of five sequences arising in the enumeration of optimal {0,1,-1}-configurations.

The programs for A280747, there is no canonical definition to state claims against.
-/

/-! ## A280747.P7328842510550130599

`A280748(2*n)`
-/

namespace A280747.P7328842510550130599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 (2 * n)

end

end A280747.P7328842510550130599

/-! ## A280747.P6280971163785716148

`A280750(2*n)`
-/

namespace A280747.P6280971163785716148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (2 * n)

end

end A280747.P6280971163785716148

/-! ## A280747.P90837322555470700

`dr(A280748(lcm(2, n)))`
-/

namespace A280747.P90837322555470700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A280748 (Nat.lcm 2 n))

end

end A280747.P90837322555470700

/-! ## A280747.P6565082102125898286

`dr(A280750(n+n))`
-/

namespace A280747.P6565082102125898286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A280750 (n + n))

end

end A280747.P6565082102125898286

/-! ## A280747.P9111308645451419981

`A280748(n+n)%6`
-/

namespace A280747.P9111308645451419981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280748 (n + n)) 6

end

end A280747.P9111308645451419981

/-! ## A280747.P2157431131219614178

`dr(A280748(A004277(n)))`
-/

namespace A280747.P2157431131219614178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A280748 (A004277 n).toNat)

end

end A280747.P2157431131219614178

/-! ## A280747.P1371020514239021492

`gcd(A004013(n), A280750(n+n))`
-/

namespace A280747.P1371020514239021492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004013 n) (A280750 (n + n))

end

end A280747.P1371020514239021492

/-!
# A280748: One of a set of five sequences arising in the enumeration of optimal {0,1,-1}-configurations.

The programs for A280748, there is no canonical definition to state claims against.
-/

/-! ## A280748.P10263218952364112201

`A280750(n)+char[A022168(n)]`
-/

namespace A280748.P10263218952364112201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P10263218952364112201

/-! ## A280748.P3909414933390471287

`A280750(n)+char[A052992(n)]`
-/

namespace A280748.P3909414933390471287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P3909414933390471287

/-! ## A280748.P13715635182594027314

`A280750(n)+char[A279810(n)]`
-/

namespace A280748.P13715635182594027314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279810 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P13715635182594027314

/-! ## A280748.P8183428605858521384

`A280750(n-char[A022168(n)])`
-/

namespace A280748.P8183428605858521384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A280748.P8183428605858521384

/-! ## A280748.P4199733004937742351

`A280750(n-char[A052992(n)])`
-/

namespace A280748.P4199733004937742351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A280748.P4199733004937742351

/-! ## A280748.P18357100947691395646

`A280750(n-char[A279810(n)])`
-/

namespace A280748.P18357100947691395646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279810 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A280748.P18357100947691395646

/-! ## A280748.P18446247474355916933

`or(char[A000975(n)], A280750(n))`
-/

namespace A280748.P18446247474355916933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280750 n)

end

end A280748.P18446247474355916933

/-! ## A280748.P9913421278770026143

`or(char[A090079(n)], A280750(n))`
-/

namespace A280748.P9913421278770026143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280750 n)

end

end A280748.P9913421278770026143

/-! ## A280748.P9135771285854266326

`or(char[A128971(n)], A280750(n))`
-/

namespace A280748.P9135771285854266326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128971 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280750 n)

end

end A280748.P9135771285854266326

/-! ## A280748.P15405669010784057749

`or(char[A279751(n)], A280750(n))`
-/

namespace A280748.P15405669010784057749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279751 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280750 n)

end

end A280748.P15405669010784057749

/-! ## A280748.P11916397973080936397

`or(A036987(3*n), A280750(n))`
-/

namespace A280748.P11916397973080936397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (3 * n)) (A280750 n)

end

end A280748.P11916397973080936397

/-! ## A280748.P6052786425036929981

`A280750(n)+char[A279751(2*n)]`
-/

namespace A280748.P6052786425036929981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279751 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P6052786425036929981

/-! ## A280748.P10820503737589915387

`A280750(n-char[A279751(2*n)])`
-/

namespace A280748.P10820503737589915387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279751 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (n - (if ∃ j, f1 j = (n : ℤ) then 1 else 0))

end

end A280748.P10820503737589915387

/-! ## A280748.P1360828394400789488

`or(char[A030525(n+4)], A280750(n))`
-/

namespace A280748.P1360828394400789488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030525 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A280750 n)

end

end A280748.P1360828394400789488

/-! ## A280748.P2813792300236074930

`A280750(n)+char[A000975(2*n+1)]`
-/

namespace A280748.P2813792300236074930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P2813792300236074930

/-! ## A280748.P2573466679140974947

`A280750(n)+char[A090079(2*n+1)]`
-/

namespace A280748.P2573466679140974947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P2573466679140974947

/-! ## A280748.P12298601895455400264

`A280750(n)+char[A030525(2*n+5)]`
-/

namespace A280748.P12298601895455400264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030525 (2 * n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280748.P12298601895455400264

/-! ## A280748.P7436219176398554511

`A280750(n)^A053266(A240883(n))`
-/

namespace A280748.P7436219176398554511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280750 n : ℚ) ^ (A053266 (A240883 n).toNat : ℤ)

end

end A280748.P7436219176398554511

/-! ## A280748.P1892172440829711400

`A280750(n)^A001221(A319416(n))`
-/

namespace A280748.P1892172440829711400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280750 n : ℚ) ^ (A001221 (A319416 n).toNat : ℤ)

end

end A280748.P1892172440829711400

/-! ## A280748.P2210243834921526360

`gcd(A089805(A004526(n)), A280750(n))`
-/

namespace A280748.P2210243834921526360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089805 (A004526 n).toNat) (A280750 n)

end

end A280748.P2210243834921526360

/-!
# A280749: One of a set of five sequences arising in the enumeration of optimal {0,1,-1}-configurations.

The programs for A280749, there is no canonical definition to state claims against.
-/

/-! ## A280749.P14836595586270395809

`(n+1)%2*A280748(gcd(n, ∑[n]))`
-/

namespace A280749.P14836595586270395809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A280748 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A280749.P14836595586270395809

/-! ## A280749.P43469638712097585

`A280751(A350091(n))`
-/

namespace A280749.P43469638712097585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (A350091 n).toNat

end

end A280749.P43469638712097585

/-! ## A280749.P11160385500836048999

`A280751(A359268(n))`
-/

namespace A280749.P11160385500836048999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 (A359268 n).toNat

end

end A280749.P11160385500836048999

/-! ## A280749.P17033062626824640573

`gcd(A089805(n), A280751(n))`
-/

namespace A280749.P17033062626824640573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089805 n) (A280751 n)

end

end A280749.P17033062626824640573

/-! ## A280749.P12870032811795384235

`A280748(A004526(n))%gcd(2, n)²`
-/

namespace A280749.P12870032811795384235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280748 (A004526 n).toNat) (Nat.gcd 2 n ^ 2 : ℤ)

end

end A280749.P12870032811795384235

/-! ## A280749.P13163214987996844584

`A280751(n)+char[A020988(n+1)]`
-/

namespace A280749.P13163214987996844584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020988 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280749.P13163214987996844584

/-! ## A280749.P15102104862745832944

`C(A280748(floor(n/2)), A010691(n))`
-/

namespace A280749.P15102104862745832944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280748 ⌊(n : ℚ) / 2⌋.toNat).toNat (A010691 n).toNat

end

end A280749.P15102104862745832944

/-! ## A280749.P6803201115976493355

`C(A280748(ceil(n/2)), A019431(n))`
-/

namespace A280749.P6803201115976493355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A280748 ⌈(n : ℚ) / 2⌉.toNat).toNat (A019431 n).toNat

end

end A280749.P6803201115976493355

/-! ## A280749.P16242344894857036220

`char[2*n]*A280748(A004525(n))`
-/

namespace A280749.P16242344894857036220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A280748 (A004525 n).toNat

end

end A280749.P16242344894857036220

/-! ## A280749.P668990753571845247

`char[2*n]*A280748(A065033(n))`
-/

namespace A280749.P668990753571845247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A280748 (A065033 n).toNat

end

end A280749.P668990753571845247

/-! ## A280749.P12241733460488032484

`A059841(n)*A280748(A004526(n))`
-/

namespace A280749.P12241733460488032484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A280748 (A004526 n).toNat

end

end A280749.P12241733460488032484

/-! ## A280749.P14989803888919852213

`A280748(A004525(n))%A040005(n)`
-/

namespace A280749.P14989803888919852213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280748 (A004525 n).toNat) (A040005 n)

end

end A280749.P14989803888919852213

/-! ## A280749.P10725441969697909552

`A280748(A004526(n))%A040005(n)`
-/

namespace A280749.P10725441969697909552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280748 (A004526 n).toNat) (A040005 n)

end

end A280749.P10725441969697909552

/-! ## A280749.P4393417245352880305

`lcm(A056594(n), A280748(A004526(n)))`
-/

namespace A280749.P4393417245352880305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 n) (A280748 (A004526 n).toNat)

end

end A280749.P4393417245352880305

/-! ## A280749.P10503974798183696145

`and(A010702(n), A280748(A004525(n)))`
-/

namespace A280749.P10503974798183696145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 n) (A280748 (A004525 n).toNat)

end

end A280749.P10503974798183696145

/-! ## A280749.P17040211124867672308

`and(A010702(n), A280748(A004526(n)))`
-/

namespace A280749.P17040211124867672308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010702 n) (A280748 (A004526 n).toNat)

end

end A280749.P17040211124867672308

/-! ## A280749.P9951273156680422930

`and(A028875(n), A280748(A004526(n)))`
-/

namespace A280749.P9951273156680422930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028875 n) (A280748 (A004526 n).toNat)

end

end A280749.P9951273156680422930

/-! ## A280749.P480704698008521545

`and(A077896(n), A280748(A004526(n)))`
-/

namespace A280749.P480704698008521545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077896 n) (A280748 (A004526 n).toNat)

end

end A280749.P480704698008521545

/-! ## A280749.P3558962191896739579

`A280748(or(A004525(n), A010673(n)))`
-/

namespace A280749.P3558962191896739579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 (Int.lor (A004525 n) (A010673 n)).toNat

end

end A280749.P3558962191896739579

/-!
# A280750: One of a set of five sequences arising in the enumeration of optimal {0,1,-1}-configurations.

The programs for A280750, there is no canonical definition to state claims against.
-/

/-! ## A280750.P1025738829520168102

`A280748(n)-char[A022168(n)]`
-/

namespace A280750.P1025738829520168102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280750.P1025738829520168102

/-! ## A280750.P5745042608313218886

`A280748(n)-char[A052992(n)]`
-/

namespace A280750.P5745042608313218886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052992 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280750.P5745042608313218886

/-! ## A280750.P533909817224591158

`A280748(n)-char[A347487(n+1)]`
-/

namespace A280750.P533909817224591158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347487 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280750.P533909817224591158

/-! ## A280750.P13920335496654142306

`A280748(n)-char[A279751(2*n)]`
-/

namespace A280750.P13920335496654142306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279751 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280750.P13920335496654142306

/-! ## A280750.P5592817556505808251

`A280748(n)-char[A267991(2*n+1)]`
-/

namespace A280750.P5592817556505808251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267991 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280750.P5592817556505808251

/-! ## A280750.P11028670246492843030

`A280748(n)-A209229(A007494(n))`
-/

namespace A280750.P11028670246492843030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - A209229 (A007494 n).toNat

end

end A280750.P11028670246492843030

/-! ## A280750.P16832706470233196867

`A178226(A016789(n))*A280748(n)`
-/

namespace A280750.P16832706470233196867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178226 (A016789 n).toNat * A280748 n

end

end A280750.P16832706470233196867

/-! ## A280750.P6668708307067947967

`A280748(n)-char[A026741(A279751(n))]`
-/

namespace A280750.P6668708307067947967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A279751 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A280750.P6668708307067947967

/-! ## A280750.P11850000692830111319

`A280748(n)-A000007(A087117(3*n))`
-/

namespace A280750.P11850000692830111319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280748 n - A000007 (A087117 (3 * n)).toNat

end

end A280750.P11850000692830111319

/-! ## A280750.P6225019250836999992

`A280751(n*A014695(n))`
-/

namespace A280750.P6225019250836999992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280751 ((n : ℤ) * A014695 n).toNat

end

end A280750.P6225019250836999992

/-!
# A280751: One of a set of five sequences arising in the enumeration of optimal {0,1,-1}-configurations.

The programs for A280751, there is no canonical definition to state claims against.
-/

/-! ## A280751.P3444902145276873387

`A280750(gcd(n, floor(n/2)))`
-/

namespace A280751.P3444902145276873387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A280751.P3444902145276873387

/-! ## A280751.P5018771547531432680

`(n+1)%2*A280750(floor(n/2))`
-/

namespace A280751.P5018771547531432680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A280750 ⌊(n : ℚ) / 2⌋.toNat

end

end A280751.P5018771547531432680

/-! ## A280751.P15555650177728563288

`A280750(A281098(n))`
-/

namespace A280751.P15555650177728563288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A281098 n).toNat

end

end A280751.P15555650177728563288

/-! ## A280751.P13005138699388489803

`A280750(A057979(n+1))`
-/

namespace A280751.P13005138699388489803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A057979 (n + 1)).toNat

end

end A280751.P13005138699388489803

/-! ## A280751.P17658508919113086485

`A280750(A174571(2*n))`
-/

namespace A280751.P17658508919113086485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A174571 (2 * n)).toNat

end

end A280751.P17658508919113086485

/-! ## A280751.P8202780991198943643

`A280750(n-A029578(n))`
-/

namespace A280751.P8202780991198943643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 ((n : ℤ) - A029578 n).toNat

end

end A280751.P8202780991198943643

/-! ## A280751.P11138129763008199062

`A280750(1-A029579(n)+n)`
-/

namespace A280751.P11138129763008199062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (1 - A029579 n + (n : ℤ)).toNat

end

end A280751.P11138129763008199062

/-! ## A280751.P12249838487722696046

`A280750(1-(A029579(n)-n))`
-/

namespace A280751.P12249838487722696046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (1 - (A029579 n - (n : ℤ))).toNat

end

end A280751.P12249838487722696046

/-! ## A280751.P7655379327875539103

`A280750(A004526(A141310(n)))`
-/

namespace A280751.P7655379327875539103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (A004526 (A141310 n).toNat).toNat

end

end A280751.P7655379327875539103

/-! ## A280751.P12412585804768348758

`A280750(A000217(n)%A065190(n+1))`
-/

namespace A280751.P12412585804768348758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (Int.tmod (A000217 n) (A065190 (n + 1))).toNat

end

end A280751.P12412585804768348758

/-!
# A280754: Numbers n such that A280864(n) = n.

The programs for A280754, there is no canonical definition to state claims against.
-/

/-! ## A280754.P13362276771252079318

`eq[n+1, A280741(n+1)]+1`
-/

namespace A280754.P13362276771252079318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280754.P13362276771252079318

/-! ## A280754.P14396477182976931599

`eq[n+1, A280864(n+1)]+1`
-/

namespace A280754.P14396477182976931599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280754.P14396477182976931599

/-! ## A280754.P2003315549434734780

`eq[n, A280741(A028310(n))]`
-/

namespace A280754.P2003315549434734780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280754.P2003315549434734780

/-! ## A280754.P7554027151925919669

`eq[n, A280864(A065033(2*n))]`
-/

namespace A280754.P7554027151925919669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A280754.P7554027151925919669

/-! ## A280754.P11008246362974662997

`eq[A254667(n), A280864(A233583(n+1))]`
-/

namespace A280754.P11008246362974662997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280754.P11008246362974662997

/-!
# A280755: Numbers n such that 3n appears earlier than 2n in A280864.

The programs for A280755, there is no canonical definition to state claims against.
-/

/-! ## A280755.P7503551615136537271

`A332951(A160778(n+2))`
-/

namespace A280755.P7503551615136537271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332951 (A160778 (n + 2)).toNat

end

end A280755.P7503551615136537271

/-!
# A280756: Expansion of (1 + 2*x)/(1 - x - 4*x^2 + x^4).

The programs for A280756, the canonical program `A280756.P5414418244745561988` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280756 has offset 0).

The definition of A280756 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-x-4x^2+x^4))` (program `A280756.P5414418244745561988`, by `A280756.P5414418244745561988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280756.P5414418244745561988

`ogf((1+2x)/(1-x-4x^2+x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280756

/-- `ogf((1+2x)/(1-x-4x^2+x^4))` -/
def P5414418244745561988.Spec : Prop :=
  ∀ n, P5414418244745561988.a n = A280756 n

theorem P5414418244745561988.correct : P5414418244745561988.Spec := by
  intro n
  simp only [A280756]

end A280756

/-! ## A280756.P12229948018909548689

`or(A060132(n), A100196(A270985(n)))`
-/

namespace A280756.P12229948018909548689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060132 n) (A100196 (A270985 n).toNat)

end

end A280756.P12229948018909548689

namespace A280756

/-- `or(A060132(n), A100196(A270985(n)))` -/
def P12229948018909548689.Spec : Prop :=
  ∀ n, P12229948018909548689.a n = A280756 n

end A280756

/-! ## A280756.P14069293306975111121

`or(A074685(n), A100196(A270985(n)))`
-/

namespace A280756.P14069293306975111121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A074685 n) (A100196 (A270985 n).toNat)

end

end A280756.P14069293306975111121

namespace A280756

/-- `or(A074685(n), A100196(A270985(n)))` -/
def P14069293306975111121.Spec : Prop :=
  ∀ n, P14069293306975111121.a n = A280756 n

end A280756

/-!
# A280757: Expansion of x*(2 + x)/(1 - 4*x^2 - x^3 + x^4).

The programs for A280757, the canonical program `A280757.P1204181431831833973` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280757 has offset 0).

The definition of A280757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x+x^2)/(1-4x^2-x^3+x^4))` (program `A280757.P1204181431831833973`, by `A280757.P1204181431831833973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280757.P1204181431831833973

`ogf((2x+x^2)/(1-4x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280757

/-- `ogf((2x+x^2)/(1-4x^2-x^3+x^4))` -/
def P1204181431831833973.Spec : Prop :=
  ∀ n, P1204181431831833973.a n = A280757 n

theorem P1204181431831833973.correct : P1204181431831833973.Spec := by
  intro n
  simp only [A280757]

end A280757

/-!
# A280758: Expansion of (1 + x + x^2)/(1 - x - 3*x^2 - x^3 + x^4).

The programs for A280758, the canonical program `A280758.P955898503268584525` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280758 has offset 0).

The definition of A280758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x+x^2)/(1-x-3x^2-x^3+x^4))` (program `A280758.P955898503268584525`, by `A280758.P955898503268584525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A280758.P955898503268584525

`ogf((1+x+x^2)/(1-x-3x^2-x^3+x^4))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280758

/-- `ogf((1+x+x^2)/(1-x-3x^2-x^3+x^4))` -/
def P955898503268584525.Spec : Prop :=
  ∀ n, P955898503268584525.a n = A280758 n

theorem P955898503268584525.correct : P955898503268584525.Spec := by
  intro n
  simp only [A280758]

end A280758

/-! ## A280758.P17378759072857213415

`A152090(n+2)+A000007(n)-A152090(n)`
-/

namespace A280758.P17378759072857213415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (n + 2) + (A000007 n - A152090 n)

end

end A280758.P17378759072857213415

namespace A280758

/-- `A152090(n+2)+A000007(n)-A152090(n)` -/
def P17378759072857213415.Spec : Prop :=
  ∀ n, P17378759072857213415.a n = A280758 n

end A280758

/-! ## A280758.P8132505274604122038

`A152090(n*a(A000038(n))+2)-A152090(n)` with `a(0)=1`
-/

namespace A280758.P8132505274604122038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A152090 ((n : ℤ) * a (A000038 n).toNat + 2).toNat - A152090 n

end

end A280758.P8132505274604122038

namespace A280758

/-- `A152090(n*a(A000038(n))+2)-A152090(n)` -/
def P8132505274604122038.Spec : Prop :=
  ∀ n, P8132505274604122038.a n = A280758 n

end A280758

/-! ## A280758.P14419455197589037491

`A152090(n+2)-A152090(n)%A085279(n)`
-/

namespace A280758.P14419455197589037491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152090 (n + 2) - Int.tmod (A152090 n) (A085279 n)

end

end A280758.P14419455197589037491

namespace A280758

/-- `A152090(n+2)-A152090(n)%A085279(n)` -/
def P14419455197589037491.Spec : Prop :=
  ∀ n, P14419455197589037491.a n = A280758 n

end A280758

/-!
# A280759: Generalized Catalan triangle A_3 read by rows.

The programs for A280759, there is no canonical definition to state claims against.
-/

/-! ## A280759.P11515667639182184048

`A062745(A020703(n+2))`
-/

namespace A280759.P11515667639182184048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062745 (A020703 (n + 2)).toNat

end

end A280759.P11515667639182184048

/-!
# A280760: Index of first occurrence of n in A280055.

The programs for A280760, there is no canonical definition to state claims against.
-/

/-! ## A280760.P18095605371870373604

`A158662(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A280760.P18095605371870373604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A158662 (a (n - 1)).toNat + a (n - 1)

end

end A280760.P18095605371870373604

/-! ## A280760.P11844552838443890173

`a(n-1)+A034387(a(n-1))+1` with `a(0)=1`
-/

namespace A280760.P11844552838443890173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A034387 (a (n - 1)).toNat + 1)

end

end A280760.P11844552838443890173

/-!
# A280761: Solutions y_n to the negative Pell equation y^2 = 72*x^2 - 8.

The programs for A280761, the canonical program `A280761.P12673979823374787139` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280761 has offset 0).

The definition of A280761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280761.P12673979823374787139

`34*a(n-1)-a(n-2)` with `a(0)=8, a(1)=280`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280761

/-- `34*a(n-1)-a(n-2)` -/
def P12673979823374787139.Spec : Prop :=
  ∀ n, P12673979823374787139.a n = A280761 n

theorem P12673979823374787139.correct : P12673979823374787139.Spec := by
  intro n
  simp only [A280761]

end A280761

/-! ## A280761.P9645784637364803453

`Δ[A132592(n)]`
-/

namespace A280761.P9645784637364803453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P9645784637364803453

namespace A280761

/-- `Δ[A132592(n)]` -/
def P9645784637364803453.Spec : Prop :=
  ∀ n, P9645784637364803453.a n = A280761 n

end A280761

/-! ## A280761.P17133516837014721304

`A041126(2*n)`
-/

namespace A280761.P17133516837014721304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041126 (2 * n)

end

end A280761.P17133516837014721304

namespace A280761

/-- `A041126(2*n)` -/
def P17133516837014721304.Spec : Prop :=
  ∀ n, P17133516837014721304.a n = A280761 n

end A280761

/-! ## A280761.P11101453111343223712

`Δ[A001541(n)²]`
-/

namespace A280761.P11101453111343223712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P11101453111343223712

namespace A280761

/-- `Δ[A001541(n)²]` -/
def P11101453111343223712.Spec : Prop :=
  ∀ n, P11101453111343223712.a n = A280761 n

end A280761

/-! ## A280761.P8866127902543423127

`A081554(Δ[n²])`
-/

namespace A280761.P8866127902543423127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A280761.P8866127902543423127

namespace A280761

/-- `A081554(Δ[n²])` -/
def P8866127902543423127.Spec : Prop :=
  ∀ n, P8866127902543423127.a n = A280761 n

end A280761

/-! ## A280761.P6592742424496723379

`Δ[A055792(n+1)]`
-/

namespace A280761.P6592742424496723379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055792 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P6592742424496723379

namespace A280761

/-- `Δ[A055792(n+1)]` -/
def P6592742424496723379.Spec : Prop :=
  ∀ n, P6592742424496723379.a n = A280761 n

end A280761

/-! ## A280761.P5454710690832430548

`Δ[A098706(n+1)]`
-/

namespace A280761.P5454710690832430548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P5454710690832430548

namespace A280761

/-- `Δ[A098706(n+1)]` -/
def P5454710690832430548.Spec : Prop :=
  ∀ n, P5454710690832430548.a n = A280761 n

end A280761

/-! ## A280761.P15500310925589195962

`Δ[A001108(2*n)]`
-/

namespace A280761.P15500310925589195962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P15500310925589195962

namespace A280761

/-- `Δ[A001108(2*n)]` -/
def P15500310925589195962.Spec : Prop :=
  ∀ n, P15500310925589195962.a n = A280761 n

end A280761

/-! ## A280761.P17909334894053748244

`Δ[A090390(2*n)]`
-/

namespace A280761.P17909334894053748244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090390 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P17909334894053748244

namespace A280761

/-- `Δ[A090390(2*n)]` -/
def P17909334894053748244.Spec : Prop :=
  ∀ n, P17909334894053748244.a n = A280761 n

end A280761

/-! ## A280761.P1878727477093466734

`Δ[A114619(2*n)]`
-/

namespace A280761.P1878727477093466734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A280761.P1878727477093466734

namespace A280761

/-- `Δ[A114619(2*n)]` -/
def P1878727477093466734.Spec : Prop :=
  ∀ n, P1878727477093466734.a n = A280761 n

end A280761

/-!
# A280762: a(n) = ceiling( log_2( Catalan(n) ) ).

The programs for A280762, the canonical program `A280762.P12865905246997797298` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280762 has offset 0).

The definition of A280762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A280762.P12865905246997797298

`ceil(log2(A000108(n)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A280762

/-- `ceil(log2(A000108(n)))` -/
def P12865905246997797298.Spec : Prop :=
  ∀ n, P12865905246997797298.a n = A280762 n

theorem P12865905246997797298.correct : P12865905246997797298.Spec := by
  intro n
  simp only [A280762]

end A280762

/-! ## A280762.P14922046902692552610

`ceil(log2(abs(A168491(n))))`
-/

namespace A280762.P14922046902692552610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (|A168491 n| : ℝ)⌉

end

end A280762.P14922046902692552610

namespace A280762

/-- `ceil(log2(abs(A168491(n))))` -/
def P14922046902692552610.Spec : Prop :=
  ∀ n, P14922046902692552610.a n = A280762 n

end A280762

/-! ## A280762.P60336953397767202

`ceil(log2(A120588(n+1)))`
-/

namespace A280762.P60336953397767202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A120588 (n + 1) : ℝ)⌉

end

end A280762.P60336953397767202

namespace A280762

/-- `ceil(log2(A120588(n+1)))` -/
def P60336953397767202.Spec : Prop :=
  ∀ n, P60336953397767202.a n = A280762 n

end A280762

/-! ## A280762.P7379951829102092288

`ceil(log2(A299042(n+1)))`
-/

namespace A280762.P7379951829102092288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A299042 (n + 1) : ℝ)⌉

end

end A280762.P7379951829102092288

namespace A280762

/-- `ceil(log2(A299042(n+1)))` -/
def P7379951829102092288.Spec : Prop :=
  ∀ n, P7379951829102092288.a n = A280762 n

end A280762

/-! ## A280762.P8401649023060270084

`ceil(log2(A120304(n)+2))`
-/

namespace A280762.P8401649023060270084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A120304 n + 2 : ℝ)⌉

end

end A280762.P8401649023060270084

namespace A280762

/-- `ceil(log2(A120304(n)+2))` -/
def P8401649023060270084.Spec : Prop :=
  ∀ n, P8401649023060270084.a n = A280762 n

end A280762

/-! ## A280762.P10650149380526570407

`ceil(log2(A028303(2*n)))`
-/

namespace A280762.P10650149380526570407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028303 (2 * n) : ℝ)⌉

end

end A280762.P10650149380526570407

namespace A280762

/-- `ceil(log2(A028303(2*n)))` -/
def P10650149380526570407.Spec : Prop :=
  ∀ n, P10650149380526570407.a n = A280762 n

end A280762

/-! ## A280762.P354190212112797658

`ceil(log2(A028304(2*n)))`
-/

namespace A280762.P354190212112797658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028304 (2 * n) : ℝ)⌉

end

end A280762.P354190212112797658

namespace A280762

/-- `ceil(log2(A028304(2*n)))` -/
def P354190212112797658.Spec : Prop :=
  ∀ n, P354190212112797658.a n = A280762 n

end A280762

/-! ## A280762.P3922780025609210903

`ceil(log2(A126120(2*n)))`
-/

namespace A280762.P3922780025609210903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A126120 (2 * n) : ℝ)⌉

end

end A280762.P3922780025609210903

namespace A280762

/-- `ceil(log2(A126120(2*n)))` -/
def P3922780025609210903.Spec : Prop :=
  ∀ n, P3922780025609210903.a n = A280762 n

end A280762

/-! ## A280762.P16108117923933291210

`ceil(log2(A126324(2*n)))`
-/

namespace A280762.P16108117923933291210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A126324 (2 * n) : ℝ)⌉

end

end A280762.P16108117923933291210

namespace A280762

/-- `ceil(log2(A126324(2*n)))` -/
def P16108117923933291210.Spec : Prop :=
  ∀ n, P16108117923933291210.a n = A280762 n

end A280762

/-! ## A280762.P450711751956751586

`ceil(log2(A208355(2*n)))`
-/

namespace A280762.P450711751956751586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A208355 (2 * n) : ℝ)⌉

end

end A280762.P450711751956751586

namespace A280762

/-- `ceil(log2(A208355(2*n)))` -/
def P450711751956751586.Spec : Prop :=
  ∀ n, P450711751956751586.a n = A280762 n

end A280762

/-! ## A280762.P16020332709657099175

`ceil(log2(A089408(2*n+1)))`
-/

namespace A280762.P16020332709657099175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A089408 (2 * n + 1) : ℝ)⌉

end

end A280762.P16020332709657099175

namespace A280762

/-- `ceil(log2(A089408(2*n+1)))` -/
def P16020332709657099175.Spec : Prop :=
  ∀ n, P16020332709657099175.a n = A280762 n

end A280762

/-! ## A280762.P9161037837956856060

`ceil(log2(A097331(2*n+1)))`
-/

namespace A280762.P9161037837956856060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A097331 (2 * n + 1) : ℝ)⌉

end

end A280762.P9161037837956856060

namespace A280762

/-- `ceil(log2(A097331(2*n+1)))` -/
def P9161037837956856060.Spec : Prop :=
  ∀ n, P9161037837956856060.a n = A280762 n

end A280762

/-! ## A280762.P11503152233252582580

`floor(log2(A131428(n)))`
-/

namespace A280762.P11503152233252582580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A131428 n).toNat

end

end A280762.P11503152233252582580

namespace A280762

/-- `floor(log2(A131428(n)))` -/
def P11503152233252582580.Spec : Prop :=
  ∀ n, (P11503152233252582580.a n : ℤ) = A280762 n

end A280762

/-! ## A280762.P18215731092479590707

`ceil(log2(ceil(A068875(n)/2)))`
-/

namespace A280762.P18215731092479590707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (⌈(A068875 n : ℚ) / 2⌉ : ℝ)⌉

end

end A280762.P18215731092479590707

namespace A280762

/-- `ceil(log2(ceil(A068875(n)/2)))` -/
def P18215731092479590707.Spec : Prop :=
  ∀ n, P18215731092479590707.a n = A280762 n

end A280762

/-! ## A280762.P17033401743721845330

`ceil(log2(A099363(2*n)))`
-/

namespace A280762.P17033401743721845330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A099363 (2 * n) : ℝ)⌉

end

end A280762.P17033401743721845330

namespace A280762

/-- `ceil(log2(A099363(2*n)))` -/
def P17033401743721845330.Spec : Prop :=
  ∀ n, P17033401743721845330.a n = A280762 n

end A280762

/-! ## A280762.P6561227330258557872

`ceil(log2(A057977(2*n)))`
-/

namespace A280762.P6561227330258557872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A057977 (2 * n) : ℝ)⌉

end

end A280762.P6561227330258557872

namespace A280762

/-- `ceil(log2(A057977(2*n)))` -/
def P6561227330258557872.Spec : Prop :=
  ∀ n, P6561227330258557872.a n = A280762 n

end A280762

/-! ## A280762.P17487948071200879837

`ceil(log2(A089849(2*n+1)))`
-/

namespace A280762.P17487948071200879837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A089849 (2 * n + 1) : ℝ)⌉

end

end A280762.P17487948071200879837

namespace A280762

/-- `ceil(log2(A089849(2*n+1)))` -/
def P17487948071200879837.Spec : Prop :=
  ∀ n, P17487948071200879837.a n = A280762 n

end A280762

/-! ## A280762.P12012463740155424960

`ceil(log2(A000984(n)/(n+1)))`
-/

namespace A280762.P12012463740155424960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 ((A000984 n : ℚ) / (n + 1 : ℚ) : ℝ)⌉

end

end A280762.P12012463740155424960

namespace A280762

/-- `ceil(log2(A000984(n)/(n+1)))` -/
def P12012463740155424960.Spec : Prop :=
  ∀ n, P12012463740155424960.a n = A280762 n

end A280762

/-!
# A280763: Number of connected parity graphs on n nodes.

The programs for A280763, there is no canonical definition to state claims against.
-/

/-! ## A280763.P7578321849141538275

`A351593(A229218(n+1))`
-/

namespace A280763.P7578321849141538275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351593 (A229218 (n + 1)).toNat

end

end A280763.P7578321849141538275

/-! ## A280763.P11297671601399034245

`A262518(A216493(n)^A038766(n))`
-/

namespace A280763.P11297671601399034245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262518 (SequenceMachineLib.roundAway ((A216493 n : ℚ) ^ (A038766 n : ℤ))).toNat

end

end A280763.P11297671601399034245

/-!
# A280764: Number of connected (6,2)-chordal bipartite graphs on n nodes.

The programs for A280764, there is no canonical definition to state claims against.
-/

/-! ## A280764.P11988075150961722926

`or(A000120(A085387(n)), A205799(n))`
-/

namespace A280764.P11988075150961722926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A085387 n).toNat) (A205799 n)

end

end A280764.P11988075150961722926

/-! ## A280764.P13038784056907067065

`or(∑{e}[n+1, #], A239963(n!))`
-/

namespace A280764.P13038784056907067065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A239963 (Nat.factorial n))

end

end A280764.P13038784056907067065

/-! ## A280764.P1308345181199169220

`A120841(A003081(n))`
-/

namespace A280764.P1308345181199169220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A003081 n).toNat

end

end A280764.P1308345181199169220

/-! ## A280764.P14111888048442316182

`A169787(A288140(n))`
-/

namespace A280764.P14111888048442316182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169787 (A288140 n).toNat

end

end A280764.P14111888048442316182

/-!
# A280765: Number of (6,2)-chordal bipartite graphs on n nodes.

The programs for A280765, there is no canonical definition to state claims against.
-/

/-! ## A280765.P336411675379792790

`A325535(n+1)+A002330(A322555(n))`
-/

namespace A280765.P336411675379792790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325535 (n + 1) + A002330 (A322555 n).toNat

end

end A280765.P336411675379792790

/-!
# A280766: Number of unlabeled, unrooted distance-hereditary graphs on n vertices.

The programs for A280766, there is no canonical definition to state claims against.
-/

/-! ## A280766.P7552076998397920909

`A193990(A099825(n))`
-/

namespace A280766.P7552076998397920909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (A099825 n).toNat

end

end A280766.P7552076998397920909

/-! ## A280766.P5942865272517612539

`A193990(A007504(2^n))`
-/

namespace A280766.P5942865272517612539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (A007504 (2 ^ n)).toNat

end

end A280766.P5942865272517612539

/-! ## A280766.P3292552695627980439

`A334968(A131476(n))+A074420(n+1)`
-/

namespace A280766.P3292552695627980439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334968 (A131476 n).toNat + A074420 (n + 1)

end

end A280766.P3292552695627980439

/-!
# A280767: Coefficients of g.f. for the class of C-trees.

The programs for A280767, there is no canonical definition to state claims against.
-/

/-! ## A280767.P9697892534194200306

`A057359(A036656(2*(n+1))+2)-1`
-/

namespace A280767.P9697892534194200306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A036656 (2 * (n + 1)) + 2).toNat - 1

end

end A280767.P9697892534194200306

/-! ## A280767.P3774734796640223181

`A214918(3*n!)`
-/

namespace A280767.P3774734796640223181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214918 (3 * Nat.factorial n)

end

end A280767.P3774734796640223181

/-!
# A280768: Coefficients of g.f. for the class of multiply-rooted C-trees.

The programs for A280768, there is no canonical definition to state claims against.
-/

/-! ## A280768.P16274180276068436785

`A349536(A150191(n))`
-/

namespace A280768.P16274180276068436785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A150191 n).toNat

end

end A280768.P16274180276068436785

/-! ## A280768.P3209815784426508164

`A247781(A150644(n+1))`
-/

namespace A280768.P3209815784426508164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247781 (A150644 (n + 1)).toNat

end

end A280768.P3209815784426508164

/-!
# A280769: Coefficients of g.f. for the class of multiply-rooted B-trees.

The programs for A280769, there is no canonical definition to state claims against.
-/

/-! ## A280769.P3362567056117426858

`A260530(n)-A122875(A001405(n))`
-/

namespace A280769.P3362567056117426858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260530 n - A122875 (A001405 n).toNat

end

end A280769.P3362567056117426858

/-! ## A280769.P11390389195865083677

`A079692(A218482(2*n))+A000079(n)`
-/

namespace A280769.P11390389195865083677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079692 (A218482 (2 * n)).toNat + A000079 n

end

end A280769.P11390389195865083677

/-!
# A280770: Even terms in A280864, divided by 2, in order of appearance.

The programs for A280770, there is no canonical definition to state claims against.
-/

/-! ## A280770.P5027496466613620075

`A280864(A280771(n+1))/2`
-/

namespace A280770.P5027496466613620075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280864 (A280771 (n + 1)).toNat : ℚ) / 2

end

end A280770.P5027496466613620075

/-! ## A280770.P5220245957555494521

`A000720(p?[A073846(A280864(n+1))])`
-/

namespace A280770.P5220245957555494521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A280864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280770.P5220245957555494521

/-! ## A280770.P17095124502038750639

`A061395(p?[A073846(A280864(n+1))])`
-/

namespace A280770.P17095124502038750639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A280864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280770.P17095124502038750639

/-! ## A280770.P580802291086069504

`A066136(p?[A073846(A280864(n+1))])`
-/

namespace A280770.P580802291086069504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A280864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280770.P580802291086069504

/-! ## A280770.P5371944408563600273

`A075167(p?[A073846(A280864(n+1))])`
-/

namespace A280770.P5371944408563600273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A280864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280770.P5371944408563600273

/-! ## A280770.P6014426055941681638

`A230980(p?[A073846(A280864(n+1))])`
-/

namespace A280770.P6014426055941681638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A280864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280770.P6014426055941681638

/-! ## A280770.P17797046981340704703

`A258851(p?[A073846(A280864(n+1))])`
-/

namespace A280770.P17797046981340704703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A280864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A280770.P17797046981340704703

/-!
# A280771: Positions of even terms in A280864.

The programs for A280771, there is no canonical definition to state claims against.
-/

/-! ## A280771.P349296865842124880

`A280741(2*A280770(n+1))`
-/

namespace A280771.P349296865842124880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (2 * A280770 (n + 1)).toNat

end

end A280771.P349296865842124880

/-! ## A280771.P16440851688204993520

`eq[2, A020639(A280864(n+1))]+1`
-/

namespace A280771.P16440851688204993520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A280864 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280771.P16440851688204993520

/-! ## A280771.P999159043099271641

`A280741(2/A280770(n+1)^-1)`
-/

namespace A280771.P999159043099271641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (SequenceMachineLib.roundAway (2 / (A280770 (n + 1) : ℚ) ^ (-1 : ℤ))).toNat

end

end A280771.P999159043099271641

/-! ## A280771.P6446116009546895290

`A280741(A280770(n+1)+A280770(n+1))`
-/

namespace A280771.P6446116009546895290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A280770 (n + 1) + A280770 (n + 1)).toNat

end

end A280771.P6446116009546895290

/-! ## A280771.P1144918627591903259

`record[(A016789(n)-n)/A020639(A280864(n+1))]`
-/

namespace A280771.P1144918627591903259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n - (n : ℤ) : ℚ) / (A020639 (A280864 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280771.P1144918627591903259

/-!
# A280772: Number of simple tournaments with n nodes.

The programs for A280772, there is no canonical definition to state claims against.
-/

/-! ## A280772.P8731421184177668805

`A250484(A179808(n+3))`
-/

namespace A280772.P8731421184177668805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250484 (A179808 (n + 3)).toNat

end

end A280772.P8731421184177668805

/-! ## A280772.P193595272163960315

`A250484(or(8, A005829(n)))`
-/

namespace A280772.P193595272163960315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250484 (Int.lor 8 (A005829 n)).toNat

end

end A280772.P193595272163960315

/-! ## A280772.P14551831642807868077

`abs(2-A086786(A221546(n)))`
-/

namespace A280772.P14551831642807868077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A086786 (A221546 n).toNat|

end

end A280772.P14551831642807868077

/-!
# A280774: Numbers k such that gcd(A280864(k), A280864(k+1)) = 1.

The programs for A280774, there is no canonical definition to state claims against.
-/

/-! ## A280774.P1467434900688330319

`∑[A283832(n+1)]`
-/

namespace A280774.P1467434900688330319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280774.P1467434900688330319

/-! ## A280774.P7053097174531715826

`A283832(root(n, 2)²+1)+a(n-1)` with `a(0)=1`
-/

namespace A280774.P7053097174531715826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A283832 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2 + 1)).toNat + a (n - 1)

end

end A280774.P7053097174531715826

/-! ## A280774.P9522139972824843735

`record[(n+2)/A280738(n+3)]`
-/

namespace A280774.P9522139972824843735
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A280738 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280774.P9522139972824843735

/-! ## A280774.P3310584539557066846

`record[(n+1)*(2-A280738(n+2))]`
-/

namespace A280774.P3310584539557066846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - A280738 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280774.P3310584539557066846

/-! ## A280774.P3952243530646385872

`A280741(A396301(n+2))-1`
-/

namespace A280774.P3952243530646385872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A396301 (n + 2)).toNat - 1

end

end A280774.P3952243530646385872

/-! ## A280774.P11961549558391486271

`eq[1, A280738(n+2)]+1`
-/

namespace A280774.P11961549558391486271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A280774.P11961549558391486271

/-! ## A280774.P4988904062154387905

`lt[A219032(4*a(A280738(n+1)-1)), 2]` with `a(0)=6`
-/

namespace A280774.P4988904062154387905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A219032 (4 * f1 (A280738 (n + 1) - 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A280774.P4988904062154387905

/-! ## A280774.P1767640662362356968

`A280741(A396300(n+1))`
-/

namespace A280774.P1767640662362356968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280741 (A396300 (n + 1)).toNat

end

end A280774.P1767640662362356968

/-! ## A280774.P3403290171797148281

`eq[A054977(n), A280738(n+1)]`
-/

namespace A280774.P3403290171797148281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280774.P3403290171797148281

/-! ## A280774.P13012613411847359220

`eq[A057427(n), A280738(n+1)]`
-/

namespace A280774.P13012613411847359220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280774.P13012613411847359220

/-! ## A280774.P568646926174566176

`eq[A158388(n), A280738(n+1)]`
-/

namespace A280774.P568646926174566176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A280774.P568646926174566176

/-! ## A280774.P17713031779821582387

`lt[A280738(n+1), A014963(A280864(n+1))]`
-/

namespace A280774.P17713031779821582387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A280864 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A280774.P17713031779821582387

/-!
# A280775: Number of monolithic chord diagrams with n chords.

The programs for A280775, there is no canonical definition to state claims against.
-/

/-! ## A280775.P9909281269443629656

`A005350(∑[∑[(10^n+17)/9]])`
-/

namespace A280775.P9909281269443629656
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 ^ n + 17 : ℚ) / 9

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A280775.P9909281269443629656

/-!
# A280777: Denominators of coefficients in asymptotic expansion of C_n (number of connected chord diagrams, A000699).

The programs for A280777, there is no canonical definition to state claims against.
-/

/-! ## A280777.P2441517355046365439

`A068496(∑[A186726(3*n+1)]+n)`
-/

namespace A280777.P2441517355046365439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068496 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A280777.P2441517355046365439

/-! ## A280777.P14326625820194445596

`A046161(n)*A046643(A006013(n))`
-/

namespace A280777.P14326625820194445596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046161 n * A046643 (A006013 n).toNat

end

end A280777.P14326625820194445596

/-! ## A280777.P6563183529823725432

`A046111(A143991(n))*A046161(n)`
-/

namespace A280777.P6563183529823725432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046111 (A143991 n).toNat * A046161 n

end

end A280777.P6563183529823725432

/-!
# A280779: Denominators of coefficients in asymptotic expansion of M_n (number of monolithic chord diagrams, A280775).

The programs for A280779, there is no canonical definition to state claims against.
-/

/-! ## A280779.P18232362759945914536

`A241591(n^C(n, ∑{digits}[n, #]))`
-/

namespace A280779.P18232362759945914536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241591 (n ^ Nat.choose n ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum)

end

end A280779.P18232362759945914536

/-! ## A280779.P5951068008460730247

`A000265(n!/gcd(n+1, n!))`
-/

namespace A280779.P5951068008460730247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / (Nat.gcd (n + 1) (Nat.factorial n) : ℚ))).toNat

end

end A280779.P5951068008460730247

/-! ## A280779.P10112308262002530582

`A241591(n*(1-∑{digits}[n, #]+n))`
-/

namespace A280779.P10112308262002530582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241591 ((n : ℤ) * (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ))).toNat

end

end A280779.P10112308262002530582

/-! ## A280779.P10303067250447057151

`A241591(n^(1-∑{digits}[n, #]+n))`
-/

namespace A280779.P10303067250447057151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241591 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) : ℤ))).toNat

end

end A280779.P10303067250447057151

/-! ## A280779.P4051633850542076563

`A241591(A002998(n))`
-/

namespace A280779.P4051633850542076563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241591 (A002998 n).toNat

end

end A280779.P4051633850542076563

/-!
# A280781: Denominators of coefficients in asymptotic expansion of S_n (number of simple permutations, A111111).

The programs for A280781, there is no canonical definition to state claims against.
-/

/-! ## A280781.P1876767498781233813

`A000265(A046983(n))`
-/

namespace A280781.P1876767498781233813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A046983 n).toNat

end

end A280781.P1876767498781233813

/-! ## A280781.P5767554612818360339

`A046983(A055649(n))`
-/

namespace A280781.P5767554612818360339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (A055649 n).toNat

end

end A280781.P5767554612818360339

/-! ## A280781.P2381116396422092573

`A046983(A061378(n))`
-/

namespace A280781.P2381116396422092573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (A061378 n).toNat

end

end A280781.P2381116396422092573

/-! ## A280781.P2309837628551124946

`A046983(A062399(n))`
-/

namespace A280781.P2309837628551124946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (A062399 n).toNat

end

end A280781.P2309837628551124946

/-! ## A280781.P11638864351153933775

`A046983(A120126(n))`
-/

namespace A280781.P11638864351153933775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (A120126 n).toNat

end

end A280781.P11638864351153933775

/-!
# A280782: Number of irreducible matrices X of all sizes with nonnegative integral entries satisfying X^2 = nX.

The programs for A280782, there is no canonical definition to state claims against.
-/

/-! ## A280782.P13482802787143591691

`A284836(A284837(n²+1))`
-/

namespace A280782.P13482802787143591691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284836 (A284837 (n ^ 2 + 1)).toNat

end

end A280782.P13482802787143591691

/-! ## A280782.P7646841591009769037

`∑[A351467(A054519(floor(n²/2)))]`
-/

namespace A280782.P7646841591009769037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351467 (A054519 ⌊(n ^ 2 : ℚ) / 2⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A280782.P7646841591009769037

/-! ## A280782.P16323424413133694385

`A001462(or(A005430(n), A084136(n)))`
-/

namespace A280782.P16323424413133694385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor (A005430 n) (A084136 n)).toNat

end

end A280782.P16323424413133694385

/-!
# A280783: Number of irreducible matrices X of all sizes with nonnegative integral entries satisfying X^2 = nX, counted up to a permutation of basis vectors.

The programs for A280783, there is no canonical definition to state claims against.
-/

/-! ## A280783.P2111940778835247788

`A003056(A176193(n+1)*A333680(n))`
-/

namespace A280783.P2111940778835247788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A176193 (n + 1) * A333680 n).toNat

end

end A280783.P2111940778835247788

/-! ## A280783.P13801656932205795227

`A027193(2*n)+A000837(A078213(n+1))`
-/

namespace A280783.P13801656932205795227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027193 (2 * n) + A000837 (A078213 (n + 1)).toNat

end

end A280783.P13801656932205795227

/-!
# A280784: Triangle read by rows: numbers of nonintersecting circles with one of them marked.

The programs for A280784, there is no canonical definition to state claims against.
-/

/-! ## A280784.P15629028118293106878

`A072089(A038622(n)-A258997(n))`
-/

namespace A280784.P15629028118293106878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072089 (A038622 n - A258997 n).toNat

end

end A280784.P15629028118293106878

/-! ## A280784.P4273854175725060724

`(A038622(n)-A258997(n))%p?[A007307(n)]`
-/

namespace A280784.P4273854175725060724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038622 n - A258997 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A280784.P4273854175725060724

/-! ## A280784.P10169612826142892603

`A038622(A187829(n+1)-1)-A258997(n)`
-/

namespace A280784.P10169612826142892603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 (A187829 (n + 1) - 1).toNat - A258997 n

end

end A280784.P10169612826142892603

/-! ## A280784.P16711992381127417263

`A038622(n)-A079068(A000079(n))*A258997(n)`
-/

namespace A280784.P16711992381127417263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n - A079068 (A000079 n).toNat * A258997 n

end

end A280784.P16711992381127417263

/-! ## A280784.P10913463256807608578

`A038622(n)-A175494(A098011(n+1))*A258997(n)`
-/

namespace A280784.P10913463256807608578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038622 n - A175494 (A098011 (n + 1)).toNat * A258997 n

end

end A280784.P10913463256807608578

/-!
# A280785: Triangle read by rows: numbers of nonintersecting circles, one marked.

The programs for A280785, there is no canonical definition to state claims against.
-/

/-! ## A280785.P14212231424700144917

`A204851(n)-A170957(A204851(n))`
-/

namespace A280785.P14212231424700144917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204851 n - A170957 (A204851 n).toNat

end

end A280785.P14212231424700144917

/-! ## A280785.P5989820202023384958

`A204851(n)-A124761(A152036(n))`
-/

namespace A280785.P5989820202023384958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204851 n - A124761 (A152036 n).toNat

end

end A280785.P5989820202023384958

/-! ## A280785.P8320821082465705431

`A204851(n)-A185284(2*n+1)`
-/

namespace A280785.P8320821082465705431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204851 n - A185284 (2 * n + 1)

end

end A280785.P8320821082465705431

/-! ## A280785.P15029534988176900584

`A204851(n)-A277160(A001037(n))`
-/

namespace A280785.P15029534988176900584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204851 n - A277160 (A001037 n).toNat

end

end A280785.P15029534988176900584

/-!
# A280786: Number of topologically distinct sets of n circles with one pair intersecting.

The programs for A280786, there is no canonical definition to state claims against.
-/

/-! ## A280786.P15342641317277615020

`A269800(n+3)-A280788(n+1)`
-/

namespace A280786.P15342641317277615020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269800 (n + 3) - A280788 (n + 1)

end

end A280786.P15342641317277615020

/-! ## A280786.P12406403244263248506

`A280787(∑[n+1]+3)`
-/

namespace A280786.P12406403244263248506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280787 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A280786.P12406403244263248506

/-! ## A280786.P4203363948356331600

`record[A280787(n+2)^A166124(n)]`
-/

namespace A280786.P4203363948356331600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280787 (n + 2) : ℚ) ^ (A166124 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280786.P4203363948356331600

/-! ## A280786.P11376534084370079376

`record[gcd(A052173(n), A280787(n+2))]`
-/

namespace A280786.P11376534084370079376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052173 n) (A280787 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280786.P11376534084370079376

/-! ## A280786.P5086287347281163272

`record[gcd(A155100(n), A280787(n+5))]`
-/

namespace A280786.P5086287347281163272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155100 n) (A280787 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280786.P5086287347281163272

/-!
# A280788: Convolution of A000081 and A027852, shifted by 3 leading zeros.

The programs for A280788, there is no canonical definition to state claims against.
-/

/-! ## A280788.P10692631340344608453

`record[A339303(∑[n]+3)]`
-/

namespace A280788.P10692631340344608453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339303 (∑ j ∈ Finset.range (n + 1), f2 j + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A280788.P10692631340344608453

/-! ## A280788.P2523922193617661406

`A339303(∑[n+2]+4)`
-/

namespace A280788.P2523922193617661406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339303 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A280788.P2523922193617661406

/-! ## A280788.P3368259559069976352

`or(char[3], A339303(A167614(n+1)))`
-/

namespace A280788.P3368259559069976352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A339303 (A167614 (n + 1)).toNat)

end

end A280788.P3368259559069976352

/-! ## A280788.P15455401231028930607

`A339303(A167614(n+1))^A178334(n)`
-/

namespace A280788.P15455401231028930607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339303 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A280788.P15455401231028930607

/-!
# A280794: E.g.f.: cosh( Integral exp(x^2) dx )^2.

The programs for A280794, there is no canonical definition to state claims against.
-/

/-! ## A280794.P8195753616977288518

`2^n*A034448(A172403(n))`
-/

namespace A280794.P8195753616977288518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034448 (A172403 n).toNat

end

end A280794.P8195753616977288518

/-!
# A280796: E.g.f. sqrt(1 - F(x)^2), where F(F(x)) = sin(x).

The programs for A280796, there is no canonical definition to state claims against.
-/

/-! ## A280796.P8761893619626365406

`2-A013597(A209477(n+1))`
-/

namespace A280796.P8761893619626365406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A013597 (A209477 (n + 1)).toNat

end

end A280796.P8761893619626365406

/-!
# A280797: a(n) = (n^n - 1)*(n^n + 1)/(n + 1).

The programs for A280797, the canonical program `A280797.P5730541808875605722` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280797 has offset 0).

The definition of A280797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A280797.P5730541808875605722

`(n^n-1)*(n^n+1)/(n+1)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A280797

/-- `(n^n-1)*(n^n+1)/(n+1)` -/
def P5730541808875605722.Spec : Prop :=
  ∀ n, P5730541808875605722.a n = (A280797 n : ℚ)

end A280797

/-! ## A280797.P4655046810802657551

`A117812(n)/(n+1)`
-/

namespace A280797.P4655046810802657551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117812 n : ℚ) / (n + 1 : ℚ)

end

end A280797.P4655046810802657551

namespace A280797

/-- `A117812(n)/(n+1)` -/
def P4655046810802657551.Spec : Prop :=
  ∀ n, P4655046810802657551.a n = (A280797 n : ℚ)

end A280797

/-! ## A280797.P10246747452178602934

`floor(xor(1, (n^n)²)/(n+1))`
-/

namespace A280797.P10246747452178602934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 1 ((n ^ n) ^ 2) : ℚ) / (n + 1 : ℚ)⌋

end

end A280797.P10246747452178602934

namespace A280797

/-- `floor(xor(1, (n^n)²)/(n+1))` -/
def P10246747452178602934.Spec : Prop :=
  ∀ n, P10246747452178602934.a n = A280797 n

end A280797

/-! ## A280797.P16581630065276697897

`floor((n^n)²/(A028310(n)+1))`
-/

namespace A280797.P16581630065276697897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ n) ^ 2 : ℚ) / (A028310 n + 1 : ℚ)⌋

end

end A280797.P16581630065276697897

namespace A280797

/-- `floor((n^n)²/(A028310(n)+1))` -/
def P16581630065276697897.Spec : Prop :=
  ∀ n, P16581630065276697897.a n = A280797 n

end A280797

/-! ## A280797.P6624381277196437157

`A062160(A062725(n))`
-/

namespace A280797.P6624381277196437157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062160 (A062725 n).toNat

end

end A280797.P6624381277196437157

namespace A280797

/-- `A062160(A062725(n))` -/
def P6624381277196437157.Spec : Prop :=
  ∀ n, P6624381277196437157.a n = A280797 n

end A280797

/-!
# A280798: a(n) is the smallest integer m such that sumdigits(m^2) = 4^n.

The programs for A280798, there is no canonical definition to state claims against.
-/

/-! ## A280798.P18383215408286606685

`A061912(2^n)`
-/

namespace A280798.P18383215408286606685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061912 (2 ^ n)

end

end A280798.P18383215408286606685

/-!
# A280799: a(n) = A049502(phi(n)).

The programs for A280799, the canonical program `A280799.P17483720520370020034` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A280799 has offset 1).

The definition of A280799 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049502, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A280799.P17483720520370020034

`A049502(A000010(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A280799

/-- `A049502(A000010(n+1))` -/
def P17483720520370020034.Spec : Prop :=
  ∀ n, P17483720520370020034.a n = A280799 (n + 1)

theorem P17483720520370020034.correct : P17483720520370020034.Spec := by
  intro n
  simp only [A280799, Nat.add_sub_cancel]

end A280799

/-! ## A280799.P798850092633936891

`A049502(Δ[A002088(n)])`
-/

namespace A280799.P798850092633936891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (f1 (n + 1) - f1 n).toNat

end

end A280799.P798850092633936891

namespace A280799

/-- `A049502(Δ[A002088(n)])` -/
def P798850092633936891.Spec : Prop :=
  ∀ n, P798850092633936891.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P649782155531350139

`A049502(1-A051953(n+1)+n)`
-/

namespace A280799.P649782155531350139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A280799.P649782155531350139

namespace A280799

/-- `A049502(1-A051953(n+1)+n)` -/
def P649782155531350139.Spec : Prop :=
  ∀ n, P649782155531350139.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P15813066274187251546

`A049502(2-A062830(n+1)+n)`
-/

namespace A280799.P15813066274187251546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (2 - A062830 (n + 1) + (n : ℤ)).toNat

end

end A280799.P15813066274187251546

namespace A280799

/-- `A049502(2-A062830(n+1)+n)` -/
def P15813066274187251546.Spec : Prop :=
  ∀ n, P15813066274187251546.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P6214881654627744726

`A049502(A002618(n+1)/(n+1))`
-/

namespace A280799.P6214881654627744726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A280799.P6214881654627744726

namespace A280799

/-- `A049502(A002618(n+1)/(n+1))` -/
def P6214881654627744726.Spec : Prop :=
  ∀ n, P6214881654627744726.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P1694122875326706221

`A049502(A002088(n+1)-A002088(n))`
-/

namespace A280799.P1694122875326706221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A002088 (n + 1) - A002088 n).toNat

end

end A280799.P1694122875326706221

namespace A280799

/-- `A049502(A002088(n+1)-A002088(n))` -/
def P1694122875326706221.Spec : Prop :=
  ∀ n, P1694122875326706221.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P1127230554706040539

`A049502(A384710(n+1))`
-/

namespace A280799.P1127230554706040539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A384710 (n + 1)).toNat

end

end A280799.P1127230554706040539

namespace A280799

/-- `A049502(A384710(n+1))` -/
def P1127230554706040539.Spec : Prop :=
  ∀ n, P1127230554706040539.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P525094158015457594

`A049502(A067541(2*n+1))`
-/

namespace A280799.P525094158015457594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A067541 (2 * n + 1)).toNat

end

end A280799.P525094158015457594

namespace A280799

/-- `A049502(A067541(2*n+1))` -/
def P525094158015457594.Spec : Prop :=
  ∀ n, P525094158015457594.a n = A280799 (n + 1)

end A280799

/-! ## A280799.P9481909851579733838

`A049502(A225530(n+1))`
-/

namespace A280799.P9481909851579733838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (A225530 (n + 1)).toNat

end

end A280799.P9481909851579733838

namespace A280799

/-- `A049502(A225530(n+1))` -/
def P9481909851579733838.Spec : Prop :=
  ∀ n, P9481909851579733838.a n = A280799 (n + 1)

end A280799

