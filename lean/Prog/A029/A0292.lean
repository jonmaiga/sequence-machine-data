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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A029200: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^9)).

The programs for A029200, the canonical program `A029200.P2626083790197974324` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029200 has offset 0).

The definition of A029200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029200.P2626083790197974324

`A029092(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029200

/-- `A029092(n)-a(n-1)` -/
def P2626083790197974324.Spec : Prop :=
  ∀ n, P2626083790197974324.a n = A029200 n

theorem P2626083790197974324.correct : P2626083790197974324.Spec := by
  intro n
  simp only [A029200]

end A029200

/-! ## A029200.P1187045675164226403

`A025883(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029200.P1187045675164226403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025883 n + a (n - 2)

end

end A029200.P1187045675164226403

namespace A029200

/-- `A025883(n)+a(n-2)` -/
def P1187045675164226403.Spec : Prop :=
  ∀ n, P1187045675164226403.a n = A029200 n

end A029200

/-! ## A029200.P4602906039679493678

`A029333(abs(2-n))+A029333(n)`
-/

namespace A029200.P4602906039679493678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029333 |2 - (n : ℤ)|.toNat + A029333 n

end

end A029200.P4602906039679493678

namespace A029200

/-- `A029333(abs(2-n))+A029333(n)` -/
def P4602906039679493678.Spec : Prop :=
  ∀ n, P4602906039679493678.a n = A029200 n

end A029200

/-! ## A029200.P10766405068529238903

`∑[A025883(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029200.P10766405068529238903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025883 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029200.P10766405068529238903

namespace A029200

/-- `∑[A025883(n)-a(A023443(n))]` -/
def P10766405068529238903.Spec : Prop :=
  ∀ n, P10766405068529238903.a n = A029200 n

end A029200

/-! ## A029200.P13924202559884918469

`A029177(n)+A029232(n)-A029190(n)`
-/

namespace A029200.P13924202559884918469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 n + (A029232 n - A029190 n)

end

end A029200.P13924202559884918469

namespace A029200

/-- `A029177(n)+A029232(n)-A029190(n)` -/
def P13924202559884918469.Spec : Prop :=
  ∀ n, P13924202559884918469.a n = A029200 n

end A029200

/-! ## A029200.P14450684207539380009

`Δ[a(n-2)+A029074(n)-A029333(n)]` with `a(0)=0, a(1)=1`
-/

namespace A029200.P14450684207539380009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A029074 n - A029333 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029200.P14450684207539380009

namespace A029200

/-- `Δ[a(n-2)+A029074(n)-A029333(n)]` -/
def P14450684207539380009.Spec : Prop :=
  ∀ n, P14450684207539380009.a n = A029200 n

end A029200

/-!
# A029201: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^10)).

The programs for A029201, the canonical program `A029201.P17121452069751110032` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029201 has offset 0).

The definition of A029201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029201.P17121452069751110032

`A029093(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029201

/-- `A029093(n)-a(n-1)` -/
def P17121452069751110032.Spec : Prop :=
  ∀ n, P17121452069751110032.a n = A029201 n

theorem P17121452069751110032.correct : P17121452069751110032.Spec := by
  intro n
  simp only [A029201]

end A029201

/-! ## A029201.P10897226520465245738

`A025884(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029201.P10897226520465245738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025884 n + a (n - 2)

end

end A029201.P10897226520465245738

namespace A029201

/-- `A025884(n)+a(n-2)` -/
def P10897226520465245738.Spec : Prop :=
  ∀ n, P10897226520465245738.a n = A029201 n

end A029201

/-! ## A029201.P7875165389161547192

`abs(∑[A029093(n)*A033999(n)])`
-/

namespace A029201.P7875165389161547192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029201.P7875165389161547192

namespace A029201

/-- `abs(∑[A029093(n)*A033999(n)])` -/
def P7875165389161547192.Spec : Prop :=
  ∀ n, P7875165389161547192.a n = A029201 n

end A029201

/-! ## A029201.P7568430452480579740

`(A004442(n)-n)*∑[A029093(n)*A033999(n)]`
-/

namespace A029201.P7568430452480579740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029201.P7568430452480579740

namespace A029201

/-- `(A004442(n)-n)*∑[A029093(n)*A033999(n)]` -/
def P7568430452480579740.Spec : Prop :=
  ∀ n, P7568430452480579740.a n = A029201 n

end A029201

/-! ## A029201.P15449321827678091065

`∑[A029093(n)*A033999(n)]*A009531(2*n+1)`
-/

namespace A029201.P15449321827678091065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (2 * n + 1)

end

end A029201.P15449321827678091065

namespace A029201

/-- `∑[A029093(n)*A033999(n)]*A009531(2*n+1)` -/
def P15449321827678091065.Spec : Prop :=
  ∀ n, P15449321827678091065.a n = A029201 n

end A029201

/-! ## A029201.P7927680705496823851

`∑[A029093(n)*A033999(n)]*A209615(2*n+1)`
-/

namespace A029201.P7927680705496823851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A209615 (2 * n + 1)

end

end A029201.P7927680705496823851

namespace A029201

/-- `∑[A029093(n)*A033999(n)]*A209615(2*n+1)` -/
def P7927680705496823851.Spec : Prop :=
  ∀ n, P7927680705496823851.a n = A029201 n

end A029201

/-! ## A029201.P14546177695373505580

`A018851(∑[A029093(n)*A033999(n)]²)`
-/

namespace A029201.P14546177695373505580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029201.P14546177695373505580

namespace A029201

/-- `A018851(∑[A029093(n)*A033999(n)]²)` -/
def P14546177695373505580.Spec : Prop :=
  ∀ n, P14546177695373505580.a n = A029201 n

end A029201

/-! ## A029201.P2775045428165367708

`A018851(∑[A029093(n)/A033999(n)]²)`
-/

namespace A029201.P2775045428165367708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029093 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A029201.P2775045428165367708

namespace A029201

/-- `A018851(∑[A029093(n)/A033999(n)]²)` -/
def P2775045428165367708.Spec : Prop :=
  ∀ n, P2775045428165367708.a n = A029201 n

end A029201

/-! ## A029201.P16394051318695185602

`A000196(∑[A029093(n)*A033999(n)]²)`
-/

namespace A029201.P16394051318695185602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029201.P16394051318695185602

namespace A029201

/-- `A000196(∑[A029093(n)*A033999(n)]²)` -/
def P16394051318695185602.Spec : Prop :=
  ∀ n, P16394051318695185602.a n = A029201 n

end A029201

/-! ## A029201.P14005993915203057682

`A037213(∑[A029093(n)*A033999(n)]²)`
-/

namespace A029201.P14005993915203057682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029093 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029201.P14005993915203057682

namespace A029201

/-- `A037213(∑[A029093(n)*A033999(n)]²)` -/
def P14005993915203057682.Spec : Prop :=
  ∀ n, P14005993915203057682.a n = A029201 n

end A029201

/-!
# A029202: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^11)).

The programs for A029202, the canonical program `A029202.P15145924838061920658` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029202 has offset 0).

The definition of A029202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029202.P8261706517304950029

`A029094(n)-a(n-1)` with `a(0)=1`
-/

namespace A029202.P8261706517304950029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029094 n - a (n - 1)

end

end A029202.P8261706517304950029

namespace A029202

/-- `A029094(n)-a(n-1)` -/
def P8261706517304950029.Spec : Prop :=
  ∀ n, P8261706517304950029.a n = A029202 n

end A029202

/-! ## A029202.P11880116371048252281

`A025885(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029202.P11880116371048252281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025885 n + a (n - 2)

end

end A029202.P11880116371048252281

namespace A029202

/-- `A025885(n)+a(n-2)` -/
def P11880116371048252281.Spec : Prop :=
  ∀ n, P11880116371048252281.a n = A029202 n

end A029202

/-! ## A029202.P15145924838061920658

`A029185(n)+A029213(n)-A029192(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029202

/-- `A029185(n)+A029213(n)-A029192(n)` -/
def P15145924838061920658.Spec : Prop :=
  ∀ n, P15145924838061920658.a n = A029202 n

theorem P15145924838061920658.correct : P15145924838061920658.Spec := by
  intro n
  simp only [A029202]

end A029202

/-! ## A029202.P10870773970096892351

`A029198(n)+A029235(n)-A029225(n)`
-/

namespace A029202.P10870773970096892351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 n + (A029235 n - A029225 n)

end

end A029202.P10870773970096892351

namespace A029202

/-- `A029198(n)+A029235(n)-A029225(n)` -/
def P10870773970096892351.Spec : Prop :=
  ∀ n, P10870773970096892351.a n = A029202 n

end A029202

/-! ## A029202.P2483880560837984765

`Δ[a(n-2)+A029093(n)-A029400(n)]` with `a(0)=0, a(1)=1`
-/

namespace A029202.P2483880560837984765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A029093 n - A029400 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029202.P2483880560837984765

namespace A029202

/-- `Δ[a(n-2)+A029093(n)-A029400(n)]` -/
def P2483880560837984765.Spec : Prop :=
  ∀ n, P2483880560837984765.a n = A029202 n

end A029202

/-! ## A029202.P7222710402029238315

`A029435(2*n+7)`
-/

namespace A029202.P7222710402029238315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029435 (2 * n + 7)

end

end A029202.P7222710402029238315

namespace A029202

/-- `A029435(2*n+7)` -/
def P7222710402029238315.Spec : Prop :=
  ∀ n, P7222710402029238315.a n = A029202 n

end A029202

/-!
# A029203: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^12)).

The programs for A029203, the canonical program `A029203.P5367030748882690085` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029203 has offset 0).

The definition of A029203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029203.P5367030748882690085

`A029095(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029203

/-- `A029095(n)-a(n-1)` -/
def P5367030748882690085.Spec : Prop :=
  ∀ n, P5367030748882690085.a n = A029203 n

theorem P5367030748882690085.correct : P5367030748882690085.Spec := by
  intro n
  simp only [A029203]

end A029203

/-! ## A029203.P6007722211649171555

`A025886(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029203.P6007722211649171555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025886 n + a (n - 2)

end

end A029203.P6007722211649171555

namespace A029203

/-- `A025886(n)+a(n-2)` -/
def P6007722211649171555.Spec : Prop :=
  ∀ n, P6007722211649171555.a n = A029203 n

end A029203

/-! ## A029203.P14404724669341142231

`Δ[∑[A029216(n)]-A029234(n)]`
-/

namespace A029203.P14404724669341142231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029203.P14404724669341142231

namespace A029203

/-- `Δ[∑[A029216(n)]-A029234(n)]` -/
def P14404724669341142231.Spec : Prop :=
  ∀ n, P14404724669341142231.a n = A029203 n

end A029203

/-! ## A029203.P13521039950334429961

`A029216(n+1)-Δ[A029234(n)]`
-/

namespace A029203.P13521039950334429961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029203.P13521039950334429961

namespace A029203

/-- `A029216(n+1)-Δ[A029234(n)]` -/
def P13521039950334429961.Spec : Prop :=
  ∀ n, P13521039950334429961.a n = A029203 n

end A029203

/-! ## A029203.P14757365673197772610

`A029216(n+1)+A029234(n)-A029234(n+1)`
-/

namespace A029203.P14757365673197772610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (n + 1) + (A029234 n - A029234 (n + 1))

end

end A029203.P14757365673197772610

namespace A029203

/-- `A029216(n+1)+A029234(n)-A029234(n+1)` -/
def P14757365673197772610.Spec : Prop :=
  ∀ n, P14757365673197772610.a n = A029203 n

end A029203

/-!
# A029204: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^9)).

The programs for A029204, the canonical program `A029204.P7244939096578077172` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029204 has offset 0).

The definition of A029204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029204.P16966919985745971837

`A029096(n)-a(n-1)` with `a(0)=1`
-/

namespace A029204.P16966919985745971837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029096 n - a (n - 1)

end

end A029204.P16966919985745971837

namespace A029204

/-- `A029096(n)-a(n-1)` -/
def P16966919985745971837.Spec : Prop :=
  ∀ n, P16966919985745971837.a n = A029204 n

end A029204

/-! ## A029204.P6079390746129374622

`A025887(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029204.P6079390746129374622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025887 n + a (n - 2)

end

end A029204.P6079390746129374622

namespace A029204

/-- `A025887(n)+a(n-2)` -/
def P6079390746129374622.Spec : Prop :=
  ∀ n, P6079390746129374622.a n = A029204 n

end A029204

/-! ## A029204.P7244939096578077172

`A029337(abs(2-n))+A029337(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A029204

/-- `A029337(abs(2-n))+A029337(n)` -/
def P7244939096578077172.Spec : Prop :=
  ∀ n, P7244939096578077172.a n = A029204 n

theorem P7244939096578077172.correct : P7244939096578077172.Spec := by
  intro n
  simp only [A029204]

end A029204

/-! ## A029204.P8940212320850411710

`a(n-2)-Δ[A029337(n)-A029078(n)]` with `a(0)=1, a(1)=0`
-/

namespace A029204.P8940212320850411710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029337 n - A029078 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) - (f1 (n + 1) - f1 n)

end

end A029204.P8940212320850411710

namespace A029204

/-- `a(n-2)-Δ[A029337(n)-A029078(n)]` -/
def P8940212320850411710.Spec : Prop :=
  ∀ n, P8940212320850411710.a n = A029204 n

end A029204

/-! ## A029204.P18196900545786501174

`A029092(n+1)-A029393(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A029204.P18196900545786501174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029092 (n + 1) - A029393 (n + 1) - a (n - 1)

end

end A029204.P18196900545786501174

namespace A029204

/-- `A029092(n+1)-A029393(n+1)-a(n-1)` -/
def P18196900545786501174.Spec : Prop :=
  ∀ n, P18196900545786501174.a n = A029204 n

end A029204

/-!
# A029205: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^10)).

The programs for A029205, the canonical program `A029205.P13285390600069634873` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029205 has offset 0).

The definition of A029205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029205.P13285390600069634873

`A029097(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029205

/-- `A029097(n)-a(n-1)` -/
def P13285390600069634873.Spec : Prop :=
  ∀ n, P13285390600069634873.a n = A029205 n

theorem P13285390600069634873.correct : P13285390600069634873.Spec := by
  intro n
  simp only [A029205]

end A029205

/-! ## A029205.P575316460377949509

`A025888(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029205.P575316460377949509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025888 n + a (n - 2)

end

end A029205.P575316460377949509

namespace A029205

/-- `A025888(n)+a(n-2)` -/
def P575316460377949509.Spec : Prop :=
  ∀ n, P575316460377949509.a n = A029205 n

end A029205

/-! ## A029205.P997300220640644518

`abs(∑[A029097(n)*A033999(n)])`
-/

namespace A029205.P997300220640644518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029097 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029205.P997300220640644518

namespace A029205

/-- `abs(∑[A029097(n)*A033999(n)])` -/
def P997300220640644518.Spec : Prop :=
  ∀ n, P997300220640644518.a n = A029205 n

end A029205

/-! ## A029205.P7152383111153964228

`A029338(abs(2-n))+A029338(n)`
-/

namespace A029205.P7152383111153964228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029338 |2 - (n : ℤ)|.toNat + A029338 n

end

end A029205.P7152383111153964228

namespace A029205

/-- `A029338(abs(2-n))+A029338(n)` -/
def P7152383111153964228.Spec : Prop :=
  ∀ n, P7152383111153964228.a n = A029205 n

end A029205

/-! ## A029205.P7501092793897293353

`A029162(n+1)+A029175(n)-A029147(n+1)`
-/

namespace A029205.P7501092793897293353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029162 (n + 1) + (A029175 n - A029147 (n + 1))

end

end A029205.P7501092793897293353

namespace A029205

/-- `A029162(n+1)+A029175(n)-A029147(n+1)` -/
def P7501092793897293353.Spec : Prop :=
  ∀ n, P7501092793897293353.a n = A029205 n

end A029205

/-!
# A029206: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^11)).

The programs for A029206, the canonical program `A029206.P9758873073499990725` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029206 has offset 0).

The definition of A029206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029206.P16778112948316802531

`A029098(n)-a(n-1)` with `a(0)=1`
-/

namespace A029206.P16778112948316802531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029098 n - a (n - 1)

end

end A029206.P16778112948316802531

namespace A029206

/-- `A029098(n)-a(n-1)` -/
def P16778112948316802531.Spec : Prop :=
  ∀ n, P16778112948316802531.a n = A029206 n

end A029206

/-! ## A029206.P3927753318217715488

`A025889(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029206.P3927753318217715488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025889 n + a (n - 2)

end

end A029206.P3927753318217715488

namespace A029206

/-- `A025889(n)+a(n-2)` -/
def P3927753318217715488.Spec : Prop :=
  ∀ n, P3927753318217715488.a n = A029206 n

end A029206

/-! ## A029206.P9758873073499990725

`A029339(abs(2-n))+A029339(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029206

/-- `A029339(abs(2-n))+A029339(n)` -/
def P9758873073499990725.Spec : Prop :=
  ∀ n, P9758873073499990725.a n = A029206 n

theorem P9758873073499990725.correct : P9758873073499990725.Spec := by
  intro n
  simp only [A029206]

end A029206

/-! ## A029206.P8931631281786158597

`A025822(n)+A029194(n)-A029220(n)`
-/

namespace A029206.P8931631281786158597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 n + (A029194 n - A029220 n)

end

end A029206.P8931631281786158597

namespace A029206

/-- `A025822(n)+A029194(n)-A029220(n)` -/
def P8931631281786158597.Spec : Prop :=
  ∀ n, P8931631281786158597.a n = A029206 n

end A029206

/-! ## A029206.P10652680488551494058

`or(A025863(2*n), A189206(A158586(n)+1))`
-/

namespace A029206.P10652680488551494058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025863 (2 * n)) (A189206 (A158586 n + 1).toNat)

end

end A029206.P10652680488551494058

namespace A029206

/-- `or(A025863(2*n), A189206(A158586(n)+1))` -/
def P10652680488551494058.Spec : Prop :=
  ∀ n, P10652680488551494058.a n = A029206 n

end A029206

/-!
# A029207: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^8)*(1-x^12)).

The programs for A029207, the canonical program `A029207.P12733846587153880026` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029207 has offset 0).

The definition of A029207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029207.P12733846587153880026

`A029099(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029207

/-- `A029099(n)-a(n-1)` -/
def P12733846587153880026.Spec : Prop :=
  ∀ n, P12733846587153880026.a n = A029207 n

theorem P12733846587153880026.correct : P12733846587153880026.Spec := by
  intro n
  simp only [A029207]

end A029207

/-! ## A029207.P8735552823744842201

`A025890(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029207.P8735552823744842201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025890 n + a (n - 2)

end

end A029207.P8735552823744842201

namespace A029207

/-- `A025890(n)+a(n-2)` -/
def P8735552823744842201.Spec : Prop :=
  ∀ n, P8735552823744842201.a n = A029207 n

end A029207

/-! ## A029207.P18081163158824603319

`A029340(abs(2-n))+A029340(n)`
-/

namespace A029207.P18081163158824603319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029340 |2 - (n : ℤ)|.toNat + A029340 n

end

end A029207.P18081163158824603319

namespace A029207

/-- `A029340(abs(2-n))+A029340(n)` -/
def P18081163158824603319.Spec : Prop :=
  ∀ n, P18081163158824603319.a n = A029207 n

end A029207

/-! ## A029207.P10549486298647477099

`∑[A025890(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029207.P10549486298647477099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025890 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029207.P10549486298647477099

namespace A029207

/-- `∑[A025890(n)-a(A023443(n))]` -/
def P10549486298647477099.Spec : Prop :=
  ∀ n, P10549486298647477099.a n = A029207 n

end A029207

/-! ## A029207.P1615479844578359456

`Δ[a(n-2)+A029057(n)-A029250(n)]` with `a(0)=0, a(1)=1`
-/

namespace A029207.P1615479844578359456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + (A029057 n - A029250 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029207.P1615479844578359456

namespace A029207

/-- `Δ[a(n-2)+A029057(n)-A029250(n)]` -/
def P1615479844578359456.Spec : Prop :=
  ∀ n, P1615479844578359456.a n = A029207 n

end A029207

/-!
# A029208: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)*(1-x^10)).

The programs for A029208, the canonical program `A029208.P13086069940810275587` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029208 has offset 0).

The definition of A029208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029208.P9154043684044400479

`A029100(n)-a(n-1)` with `a(0)=1`
-/

namespace A029208.P9154043684044400479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029100 n - a (n - 1)

end

end A029208.P9154043684044400479

namespace A029208

/-- `A029100(n)-a(n-1)` -/
def P9154043684044400479.Spec : Prop :=
  ∀ n, P9154043684044400479.a n = A029208 n

end A029208

/-! ## A029208.P14687796084891636794

`A025891(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029208.P14687796084891636794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025891 n + a (n - 2)

end

end A029208.P14687796084891636794

namespace A029208

/-- `A025891(n)+a(n-2)` -/
def P14687796084891636794.Spec : Prop :=
  ∀ n, P14687796084891636794.a n = A029208 n

end A029208

/-! ## A029208.P13086069940810275587

`A029101(n)-A029211(abs(A023443(n)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029208

/-- `A029101(n)-A029211(abs(A023443(n)))` -/
def P13086069940810275587.Spec : Prop :=
  ∀ n, P13086069940810275587.a n = A029208 n

theorem P13086069940810275587.correct : P13086069940810275587.Spec := by
  intro n
  simp only [A029208]

end A029208

/-! ## A029208.P14531086070225764158

`A029211(n)+A029409(n)-A025894(n)`
-/

namespace A029208.P14531086070225764158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029211 n + (A029409 n - A025894 n)

end

end A029208.P14531086070225764158

namespace A029208

/-- `A029211(n)+A029409(n)-A025894(n)` -/
def P14531086070225764158.Spec : Prop :=
  ∀ n, P14531086070225764158.a n = A029208 n

end A029208

/-! ## A029208.P15394105114035929388

`A029101(n)+A029211(n)-A029103(n)`
-/

namespace A029208.P15394105114035929388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n + (A029211 n - A029103 n)

end

end A029208.P15394105114035929388

namespace A029208

/-- `A029101(n)+A029211(n)-A029103(n)` -/
def P15394105114035929388.Spec : Prop :=
  ∀ n, P15394105114035929388.a n = A029208 n

end A029208

/-! ## A029208.P368596155478330258

`A029175(n)+A029221(n)-A029179(n)`
-/

namespace A029208.P368596155478330258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029175 n + (A029221 n - A029179 n)

end

end A029208.P368596155478330258

namespace A029208

/-- `A029175(n)+A029221(n)-A029179(n)` -/
def P368596155478330258.Spec : Prop :=
  ∀ n, P368596155478330258.a n = A029208 n

end A029208

/-!
# A029209: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)*(1-x^11)).

The programs for A029209, the canonical program `A029209.P9661014665530843499` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029209 has offset 0).

The definition of A029209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029209.P1244914469043207285

`A029101(n)-a(n-1)` with `a(0)=1`
-/

namespace A029209.P1244914469043207285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029101 n - a (n - 1)

end

end A029209.P1244914469043207285

namespace A029209

/-- `A029101(n)-a(n-1)` -/
def P1244914469043207285.Spec : Prop :=
  ∀ n, P1244914469043207285.a n = A029209 n

end A029209

/-! ## A029209.P15237549872065696082

`A025892(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029209.P15237549872065696082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025892 n + a (n - 2)

end

end A029209.P15237549872065696082

namespace A029209

/-- `A025892(n)+a(n-2)` -/
def P15237549872065696082.Spec : Prop :=
  ∀ n, P15237549872065696082.a n = A029209 n

end A029209

/-! ## A029209.P16518158092501026876

`A029342(abs(2-n))+A029342(n)`
-/

namespace A029209.P16518158092501026876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029342 |2 - (n : ℤ)|.toNat + A029342 n

end

end A029209.P16518158092501026876

namespace A029209

/-- `A029342(abs(2-n))+A029342(n)` -/
def P16518158092501026876.Spec : Prop :=
  ∀ n, P16518158092501026876.a n = A029209 n

end A029209

/-! ## A029209.P16878185836625975161

`A025892(n)+A029166(n)-A029287(n)`
-/

namespace A029209.P16878185836625975161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n + (A029166 n - A029287 n)

end

end A029209.P16878185836625975161

namespace A029209

/-- `A025892(n)+A029166(n)-A029287(n)` -/
def P16878185836625975161.Spec : Prop :=
  ∀ n, P16878185836625975161.a n = A029209 n

end A029209

/-! ## A029209.P9661014665530843499

`A029166(n)+A029195(n)-A029154(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029209

/-- `A029166(n)+A029195(n)-A029154(n)` -/
def P9661014665530843499.Spec : Prop :=
  ∀ n, P9661014665530843499.a n = A029209 n

theorem P9661014665530843499.correct : P9661014665530843499.Spec := by
  intro n
  simp only [A029209]

end A029209

/-!
# A029210: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)*(1-x^12)).

The programs for A029210, the canonical program `A029210.P17838762631480304876` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029210 has offset 0).

The definition of A029210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029210.P17838762631480304876

`A029102(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029210

/-- `A029102(n)-a(n-1)` -/
def P17838762631480304876.Spec : Prop :=
  ∀ n, P17838762631480304876.a n = A029210 n

theorem P17838762631480304876.correct : P17838762631480304876.Spec := by
  intro n
  simp only [A029210]

end A029210

/-! ## A029210.P10752284210543262947

`A025893(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029210.P10752284210543262947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025893 n + a (n - 2)

end

end A029210.P10752284210543262947

namespace A029210

/-- `A025893(n)+a(n-2)` -/
def P10752284210543262947.Spec : Prop :=
  ∀ n, P10752284210543262947.a n = A029210 n

end A029210

/-! ## A029210.P443620408222123159

`A029177(n)+A029238(n)-A029186(n)`
-/

namespace A029210.P443620408222123159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029177 n + (A029238 n - A029186 n)

end

end A029210.P443620408222123159

namespace A029210

/-- `A029177(n)+A029238(n)-A029186(n)` -/
def P443620408222123159.Spec : Prop :=
  ∀ n, P443620408222123159.a n = A029210 n

end A029210

/-! ## A029210.P14890092355382212062

`Δ[∑[A029221(n)]-A029242(n)]`
-/

namespace A029210.P14890092355382212062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029210.P14890092355382212062

namespace A029210

/-- `Δ[∑[A029221(n)]-A029242(n)]` -/
def P14890092355382212062.Spec : Prop :=
  ∀ n, P14890092355382212062.a n = A029210 n

end A029210

/-! ## A029210.P366104347939963688

`A029221(n+1)-Δ[A029242(n)]`
-/

namespace A029210.P366104347939963688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029221 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029210.P366104347939963688

namespace A029210

/-- `A029221(n+1)-Δ[A029242(n)]` -/
def P366104347939963688.Spec : Prop :=
  ∀ n, P366104347939963688.a n = A029210 n

end A029210

/-!
# A029211: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)*(1-x^11)).

The programs for A029211, the canonical program `A029211.P4105077321637045376` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029211 has offset 0).

The definition of A029211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029211.P4105077321637045376

`A029103(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029211

/-- `A029103(n)-a(n-1)` -/
def P4105077321637045376.Spec : Prop :=
  ∀ n, P4105077321637045376.a n = A029211 n

theorem P4105077321637045376.correct : P4105077321637045376.Spec := by
  intro n
  simp only [A029211]

end A029211

/-! ## A029211.P7235345986322130

`A025894(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029211.P7235345986322130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025894 n + a (n - 2)

end

end A029211.P7235345986322130

namespace A029211

/-- `A025894(n)+a(n-2)` -/
def P7235345986322130.Spec : Prop :=
  ∀ n, P7235345986322130.a n = A029211 n

end A029211

/-! ## A029211.P12854075249078993711

`∑[A025894(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029211.P12854075249078993711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025894 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029211.P12854075249078993711

namespace A029211

/-- `∑[A025894(n)-a(A023443(n))]` -/
def P12854075249078993711.Spec : Prop :=
  ∀ n, P12854075249078993711.a n = A029211 n

end A029211

/-! ## A029211.P4389413827257257901

`A029191(n)+A029196(n)-A029180(n)`
-/

namespace A029211.P4389413827257257901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029191 n + (A029196 n - A029180 n)

end

end A029211.P4389413827257257901

namespace A029211

/-- `A029191(n)+A029196(n)-A029180(n)` -/
def P4389413827257257901.Spec : Prop :=
  ∀ n, P4389413827257257901.a n = A029211 n

end A029211

/-! ## A029211.P2539538010315767699

`A029101(n+1)-A029409(n+1)-a(A023443(n))` with `a(0)=1`
-/

namespace A029211.P2539538010315767699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029101 (n + 1) - A029409 (n + 1) - a (A023443 n).toNat

end

end A029211.P2539538010315767699

namespace A029211

/-- `A029101(n+1)-A029409(n+1)-a(A023443(n))` -/
def P2539538010315767699.Spec : Prop :=
  ∀ n, P2539538010315767699.a n = A029211 n

end A029211

/-!
# A029212: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)*(1-x^12)).

The programs for A029212, the canonical program `A029212.P383525199876690320` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029212 has offset 0).

The definition of A029212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029212.P383525199876690320

`A029104(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029212

/-- `A029104(n)-a(n-1)` -/
def P383525199876690320.Spec : Prop :=
  ∀ n, P383525199876690320.a n = A029212 n

theorem P383525199876690320.correct : P383525199876690320.Spec := by
  intro n
  simp only [A029212]

end A029212

/-! ## A029212.P14038997093150182251

`a(n-2)+A025895(n)` with `a(0)=1, a(1)=0`
-/

namespace A029212.P14038997093150182251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + A025895 n

end

end A029212.P14038997093150182251

namespace A029212

/-- `a(n-2)+A025895(n)` -/
def P14038997093150182251.Spec : Prop :=
  ∀ n, P14038997093150182251.a n = A029212 n

end A029212

/-! ## A029212.P12972427260504097989

`abs(∑[A029104(n)*A033999(n)])`
-/

namespace A029212.P12972427260504097989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029212.P12972427260504097989

namespace A029212

/-- `abs(∑[A029104(n)*A033999(n)])` -/
def P12972427260504097989.Spec : Prop :=
  ∀ n, P12972427260504097989.a n = A029212 n

end A029212

/-! ## A029212.P15795079625630176279

`(A004442(n)-n)*∑[A029104(n)*A033999(n)]`
-/

namespace A029212.P15795079625630176279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029212.P15795079625630176279

namespace A029212

/-- `(A004442(n)-n)*∑[A029104(n)*A033999(n)]` -/
def P15795079625630176279.Spec : Prop :=
  ∀ n, P15795079625630176279.a n = A029212 n

end A029212

/-! ## A029212.P995801010558123814

`∑[A029104(n)*A033999(n)]*A112347(2*n+1)`
-/

namespace A029212.P995801010558123814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A112347 (2 * n + 1)

end

end A029212.P995801010558123814

namespace A029212

/-- `∑[A029104(n)*A033999(n)]*A112347(2*n+1)` -/
def P995801010558123814.Spec : Prop :=
  ∀ n, P995801010558123814.a n = A029212 n

end A029212

/-! ## A029212.P13263925288910034782

`∑[A029104(n)*A033999(n)]*A209615(2*n+1)`
-/

namespace A029212.P13263925288910034782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A209615 (2 * n + 1)

end

end A029212.P13263925288910034782

namespace A029212

/-- `∑[A029104(n)*A033999(n)]*A209615(2*n+1)` -/
def P13263925288910034782.Spec : Prop :=
  ∀ n, P13263925288910034782.a n = A029212 n

end A029212

/-! ## A029212.P12449773139232507637

`A056926(∑[A029104(n)*A033999(n)]²)`
-/

namespace A029212.P12449773139232507637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029212.P12449773139232507637

namespace A029212

/-- `A056926(∑[A029104(n)*A033999(n)]²)` -/
def P12449773139232507637.Spec : Prop :=
  ∀ n, P12449773139232507637.a n = A029212 n

end A029212

/-! ## A029212.P5745665577287690130

`A056926(∑[A029104(n)/A033999(n)]²)`
-/

namespace A029212.P5745665577287690130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029104 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A029212.P5745665577287690130

namespace A029212

/-- `A056926(∑[A029104(n)/A033999(n)]²)` -/
def P5745665577287690130.Spec : Prop :=
  ∀ n, P5745665577287690130.a n = A029212 n

end A029212

/-! ## A029212.P12131208003865897507

`A000196(∑[A029104(n)*A033999(n)]²)`
-/

namespace A029212.P12131208003865897507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029212.P12131208003865897507

namespace A029212

/-- `A000196(∑[A029104(n)*A033999(n)]²)` -/
def P12131208003865897507.Spec : Prop :=
  ∀ n, P12131208003865897507.a n = A029212 n

end A029212

/-! ## A029212.P14405992135035908068

`A000196(∑[A029104(n)/A033999(n)]²)`
-/

namespace A029212.P14405992135035908068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029104 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A029212.P14405992135035908068

namespace A029212

/-- `A000196(∑[A029104(n)/A033999(n)]²)` -/
def P14405992135035908068.Spec : Prop :=
  ∀ n, P14405992135035908068.a n = A029212 n

end A029212

/-!
# A029213: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^11)*(1-x^12)).

The programs for A029213, the canonical program `A029213.P5201621740032638678` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029213 has offset 0).

The definition of A029213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029213.P16831772263790099481

`A029105(n)-a(n-1)` with `a(0)=1`
-/

namespace A029213.P16831772263790099481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029105 n - a (n - 1)

end

end A029213.P16831772263790099481

namespace A029213

/-- `A029105(n)-a(n-1)` -/
def P16831772263790099481.Spec : Prop :=
  ∀ n, P16831772263790099481.a n = A029213 n

end A029213

/-! ## A029213.P17314849444481037386

`A025896(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029213.P17314849444481037386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025896 n + a (n - 2)

end

end A029213.P17314849444481037386

namespace A029213

/-- `A025896(n)+a(n-2)` -/
def P17314849444481037386.Spec : Prop :=
  ∀ n, P17314849444481037386.a n = A029213 n

end A029213

/-! ## A029213.P8905161694061893680

`abs(∑[A029105(n)*A033999(n)])`
-/

namespace A029213.P8905161694061893680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029105 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029213.P8905161694061893680

namespace A029213

/-- `abs(∑[A029105(n)*A033999(n)])` -/
def P8905161694061893680.Spec : Prop :=
  ∀ n, P8905161694061893680.a n = A029213 n

end A029213

/-! ## A029213.P5201621740032638678

`A025827(n)+A029198(n)-A029225(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029213

/-- `A025827(n)+A029198(n)-A029225(n)` -/
def P5201621740032638678.Spec : Prop :=
  ∀ n, P5201621740032638678.a n = A029213 n

theorem P5201621740032638678.correct : P5201621740032638678.Spec := by
  intro n
  simp only [A029213]

end A029213

/-! ## A029213.P6884970981850380748

`A029192(n)+A029202(n)-A029185(n)`
-/

namespace A029213.P6884970981850380748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 n + (A029202 n - A029185 n)

end

end A029213.P6884970981850380748

namespace A029213

/-- `A029192(n)+A029202(n)-A029185(n)` -/
def P6884970981850380748.Spec : Prop :=
  ∀ n, P6884970981850380748.a n = A029213 n

end A029213

/-! ## A029213.P5783085370383210360

`Δ[∑[A029224(n)]-A029244(n)]`
-/

namespace A029213.P5783085370383210360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029213.P5783085370383210360

namespace A029213

/-- `Δ[∑[A029224(n)]-A029244(n)]` -/
def P5783085370383210360.Spec : Prop :=
  ∀ n, P5783085370383210360.a n = A029213 n

end A029213

/-! ## A029213.P7524818533701130858

`A029224(n+1)-Δ[A029244(n)]`
-/

namespace A029213.P7524818533701130858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029213.P7524818533701130858

namespace A029213

/-- `A029224(n+1)-Δ[A029244(n)]` -/
def P7524818533701130858.Spec : Prop :=
  ∀ n, P7524818533701130858.a n = A029213 n

end A029213

/-!
# A029214: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^8)).

The programs for A029214, the canonical program `A029214.P14968897253530813412` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029214 has offset 0).

The definition of A029214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029214.P14968897253530813412

`A029106(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029214

/-- `A029106(n)-a(n-1)` -/
def P14968897253530813412.Spec : Prop :=
  ∀ n, P14968897253530813412.a n = A029214 n

theorem P14968897253530813412.correct : P14968897253530813412.Spec := by
  intro n
  simp only [A029214]

end A029214

/-! ## A029214.P17396734149689903874

`A025897(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029214.P17396734149689903874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025897 n + a (n - 2)

end

end A029214.P17396734149689903874

namespace A029214

/-- `A025897(n)+a(n-2)` -/
def P17396734149689903874.Spec : Prop :=
  ∀ n, P17396734149689903874.a n = A029214 n

end A029214

/-! ## A029214.P1581490165364248748

`A029156(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029214.P1581490165364248748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029156 n - a (n - 3)

end

end A029214.P1581490165364248748

namespace A029214

/-- `A029156(n)-a(n-3)` -/
def P1581490165364248748.Spec : Prop :=
  ∀ n, P1581490165364248748.a n = A029214 n

end A029214

/-! ## A029214.P8800054834725142705

`A029347(abs(2-n))+A029347(n)`
-/

namespace A029214.P8800054834725142705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 |2 - (n : ℤ)|.toNat + A029347 n

end

end A029214.P8800054834725142705

namespace A029214

/-- `A029347(abs(2-n))+A029347(n)` -/
def P8800054834725142705.Spec : Prop :=
  ∀ n, P8800054834725142705.a n = A029214 n

end A029214

/-! ## A029214.P9399070251554806419

`A025911(n)+A029185(n)-A025871(n)`
-/

namespace A029214.P9399070251554806419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025911 n + (A029185 n - A025871 n)

end

end A029214.P9399070251554806419

namespace A029214

/-- `A025911(n)+A029185(n)-A025871(n)` -/
def P9399070251554806419.Spec : Prop :=
  ∀ n, P9399070251554806419.a n = A029214 n

end A029214

/-! ## A029214.P17171865112912985775

`A025897(n)+A029181(n)-A029347(n)`
-/

namespace A029214.P17171865112912985775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 n + (A029181 n - A029347 n)

end

end A029214.P17171865112912985775

namespace A029214

/-- `A025897(n)+A029181(n)-A029347(n)` -/
def P17171865112912985775.Spec : Prop :=
  ∀ n, P17171865112912985775.a n = A029214 n

end A029214

/-! ## A029214.P8360717341993691399

`A029216(n)+A029414(n)-A025899(n)`
-/

namespace A029214.P8360717341993691399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 n + (A029414 n - A025899 n)

end

end A029214.P8360717341993691399

namespace A029214

/-- `A029216(n)+A029414(n)-A025899(n)` -/
def P8360717341993691399.Spec : Prop :=
  ∀ n, P8360717341993691399.a n = A029214 n

end A029214

/-! ## A029214.P2558562462244673441

`Δ[∑[A029257(n)]-A029347(n)]`
-/

namespace A029214.P2558562462244673441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029257 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029214.P2558562462244673441

namespace A029214

/-- `Δ[∑[A029257(n)]-A029347(n)]` -/
def P2558562462244673441.Spec : Prop :=
  ∀ n, P2558562462244673441.a n = A029214 n

end A029214

/-! ## A029214.P6913813527745261349

`A029257(n+1)-Δ[A029347(n)]`
-/

namespace A029214.P6913813527745261349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029257 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029214.P6913813527745261349

namespace A029214

/-- `A029257(n+1)-Δ[A029347(n)]` -/
def P6913813527745261349.Spec : Prop :=
  ∀ n, P6913813527745261349.a n = A029214 n

end A029214

/-!
# A029215: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^9)).

The programs for A029215, the canonical program `A029215.P3457639798535096955` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029215 has offset 0).

The definition of A029215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029215.P3457639798535096955

`A029107(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029215

/-- `A029107(n)-a(n-1)` -/
def P3457639798535096955.Spec : Prop :=
  ∀ n, P3457639798535096955.a n = A029215 n

theorem P3457639798535096955.correct : P3457639798535096955.Spec := by
  intro n
  simp only [A029215]

end A029215

/-! ## A029215.P14493136935020295823

`A025898(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029215.P14493136935020295823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025898 n + a (n - 2)

end

end A029215.P14493136935020295823

namespace A029215

/-- `A025898(n)+a(n-2)` -/
def P14493136935020295823.Spec : Prop :=
  ∀ n, P14493136935020295823.a n = A029215 n

end A029215

/-! ## A029215.P7782784230141609430

`A029157(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029215.P7782784230141609430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029157 n - a (n - 3)

end

end A029215.P7782784230141609430

namespace A029215

/-- `A029157(n)-a(n-3)` -/
def P7782784230141609430.Spec : Prop :=
  ∀ n, P7782784230141609430.a n = A029215 n

end A029215

/-! ## A029215.P11220384510936357989

`A029348(abs(2-n))+A029348(n)`
-/

namespace A029215.P11220384510936357989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029348 |2 - (n : ℤ)|.toNat + A029348 n

end

end A029215.P11220384510936357989

namespace A029215

/-- `A029348(abs(2-n))+A029348(n)` -/
def P11220384510936357989.Spec : Prop :=
  ∀ n, P11220384510936357989.a n = A029215 n

end A029215

/-! ## A029215.P7679180493654981979

`A029375(2*(n+2))-A029379(n+2)`
-/

namespace A029215.P7679180493654981979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029375 (2 * (n + 2)) - A029379 (n + 2)

end

end A029215.P7679180493654981979

namespace A029215

/-- `A029375(2*(n+2))-A029379(n+2)` -/
def P7679180493654981979.Spec : Prop :=
  ∀ n, P7679180493654981979.a n = A029215 n

end A029215

/-! ## A029215.P6811687781684501033

`A029365(2*n+7)-a(n-1)` with `a(0)=1`
-/

namespace A029215.P6811687781684501033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029365 (2 * n + 7) - a (n - 1)

end

end A029215.P6811687781684501033

namespace A029215

/-- `A029365(2*n+7)-a(n-1)` -/
def P6811687781684501033.Spec : Prop :=
  ∀ n, P6811687781684501033.a n = A029215 n

end A029215

/-!
# A029216: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^10)).

The programs for A029216, the canonical program `A029216.P8520377954329641106` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029216 has offset 0).

The definition of A029216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029216.P8520377954329641106

`A029108(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029216

/-- `A029108(n)-a(n-1)` -/
def P8520377954329641106.Spec : Prop :=
  ∀ n, P8520377954329641106.a n = A029216 n

theorem P8520377954329641106.correct : P8520377954329641106.Spec := by
  intro n
  simp only [A029216]

end A029216

/-! ## A029216.P7750337209265515170

`A025899(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029216.P7750337209265515170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025899 n + a (n - 2)

end

end A029216.P7750337209265515170

namespace A029216

/-- `A025899(n)+a(n-2)` -/
def P7750337209265515170.Spec : Prop :=
  ∀ n, P7750337209265515170.a n = A029216 n

end A029216

/-! ## A029216.P10732030526367977967

`A029158(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029216.P10732030526367977967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029158 n - a (n - 3)

end

end A029216.P10732030526367977967

namespace A029216

/-- `A029158(n)-a(n-3)` -/
def P10732030526367977967.Spec : Prop :=
  ∀ n, P10732030526367977967.a n = A029216 n

end A029216

/-! ## A029216.P10629588993792681994

`A029349(abs(2-n))+A029349(n)`
-/

namespace A029216.P10629588993792681994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 |2 - (n : ℤ)|.toNat + A029349 n

end

end A029216.P10629588993792681994

namespace A029216

/-- `A029349(abs(2-n))+A029349(n)` -/
def P10629588993792681994.Spec : Prop :=
  ∀ n, P10629588993792681994.a n = A029216 n

end A029216

/-! ## A029216.P13650159275598932929

`A025899(n)+A029183(n)-A029349(n)`
-/

namespace A029216.P13650159275598932929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n + (A029183 n - A029349 n)

end

end A029216.P13650159275598932929

namespace A029216

/-- `A025899(n)+A029183(n)-A029349(n)` -/
def P13650159275598932929.Spec : Prop :=
  ∀ n, P13650159275598932929.a n = A029216 n

end A029216

/-! ## A029216.P7723558365138678923

`Δ[∑[A029259(n)]-A029349(n)]`
-/

namespace A029216.P7723558365138678923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029216.P7723558365138678923

namespace A029216

/-- `Δ[∑[A029259(n)]-A029349(n)]` -/
def P7723558365138678923.Spec : Prop :=
  ∀ n, P7723558365138678923.a n = A029216 n

end A029216

/-! ## A029216.P11912243357382046650

`A029259(n+1)-Δ[A029349(n)]`
-/

namespace A029216.P11912243357382046650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029216.P11912243357382046650

namespace A029216

/-- `A029259(n+1)-Δ[A029349(n)]` -/
def P11912243357382046650.Spec : Prop :=
  ∀ n, P11912243357382046650.a n = A029216 n

end A029216

/-!
# A029217: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^11)).

The programs for A029217, the canonical program `A029217.P9427477602056284703` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029217 has offset 0).

The definition of A029217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029217.P9427477602056284703

`A029109(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029217

/-- `A029109(n)-a(n-1)` -/
def P9427477602056284703.Spec : Prop :=
  ∀ n, P9427477602056284703.a n = A029217 n

theorem P9427477602056284703.correct : P9427477602056284703.Spec := by
  intro n
  simp only [A029217]

end A029217

/-! ## A029217.P9482614825217067544

`A025900(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029217.P9482614825217067544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025900 n + a (n - 2)

end

end A029217.P9482614825217067544

namespace A029217

/-- `A025900(n)+a(n-2)` -/
def P9482614825217067544.Spec : Prop :=
  ∀ n, P9482614825217067544.a n = A029217 n

end A029217

/-! ## A029217.P5984526555923451694

`A029159(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029217.P5984526555923451694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029159 n - a (n - 3)

end

end A029217.P5984526555923451694

namespace A029217

/-- `A029159(n)-a(n-3)` -/
def P5984526555923451694.Spec : Prop :=
  ∀ n, P5984526555923451694.a n = A029217 n

end A029217

/-! ## A029217.P17113236683247937663

`A029112(n)-A029228(abs(1-n))`
-/

namespace A029217.P17113236683247937663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 n - A029228 |1 - (n : ℤ)|.toNat

end

end A029217.P17113236683247937663

namespace A029217

/-- `A029112(n)-A029228(abs(1-n))` -/
def P17113236683247937663.Spec : Prop :=
  ∀ n, P17113236683247937663.a n = A029217 n

end A029217

/-! ## A029217.P4569465396285139824

`A029437(2*n+7)`
-/

namespace A029217.P4569465396285139824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (2 * n + 7)

end

end A029217.P4569465396285139824

namespace A029217

/-- `A029437(2*n+7)` -/
def P4569465396285139824.Spec : Prop :=
  ∀ n, P4569465396285139824.a n = A029217 n

end A029217

/-! ## A029217.P17209369566219766527

`or(A000007(n), A029437(A020742(n)))`
-/

namespace A029217.P17209369566219766527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029437 (A020742 n).toNat)

end

end A029217.P17209369566219766527

namespace A029217

/-- `or(A000007(n), A029437(A020742(n)))` -/
def P17209369566219766527.Spec : Prop :=
  ∀ n, P17209369566219766527.a n = A029217 n

end A029217

/-! ## A029217.P13830229564077071059

`A029437(A020742(n))+A000007(n+1)`
-/

namespace A029217.P13830229564077071059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A020742 n).toNat + A000007 (n + 1)

end

end A029217.P13830229564077071059

namespace A029217

/-- `A029437(A020742(n))+A000007(n+1)` -/
def P13830229564077071059.Spec : Prop :=
  ∀ n, P13830229564077071059.a n = A029217 n

end A029217

/-! ## A029217.P17233642818904645290

`A029437(A020742(n))-A134452(2*n)`
-/

namespace A029217.P17233642818904645290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A020742 n).toNat - A134452 (2 * n)

end

end A029217.P17233642818904645290

namespace A029217

/-- `A029437(A020742(n))-A134452(2*n)` -/
def P17233642818904645290.Spec : Prop :=
  ∀ n, P17233642818904645290.a n = A029217 n

end A029217

/-! ## A029217.P7353207169730757865

`A134452(A005843(n))+A029437(A020742(n))`
-/

namespace A029217.P7353207169730757865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A005843 n).toNat + A029437 (A020742 n).toNat

end

end A029217.P7353207169730757865

namespace A029217

/-- `A134452(A005843(n))+A029437(A020742(n))` -/
def P7353207169730757865.Spec : Prop :=
  ∀ n, P7353207169730757865.a n = A029217 n

end A029217

/-! ## A029217.P6749757846556341741

`A029437(A020742(n))+A010051(A175859(n+1))`
-/

namespace A029217.P6749757846556341741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029437 (A020742 n).toNat + A010051 (A175859 (n + 1)).toNat

end

end A029217.P6749757846556341741

namespace A029217

/-- `A029437(A020742(n))+A010051(A175859(n+1))` -/
def P6749757846556341741.Spec : Prop :=
  ∀ n, P6749757846556341741.a n = A029217 n

end A029217

/-! ## A029217.P14942572313640899510

`A029437(A020742(n))^A014963(A136244(n))`
-/

namespace A029217.P14942572313640899510
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029437 (A020742 n).toNat : ℚ) ^ (A014963 (A136244 n).toNat : ℤ)

end

end A029217.P14942572313640899510

namespace A029217

/-- `A029437(A020742(n))^A014963(A136244(n))` -/
def P14942572313640899510.Spec : Prop :=
  ∀ n, P14942572313640899510.a n = (A029217 n : ℚ)

end A029217

/-! ## A029217.P16771315189850253849

`A029437(A020742(n))/A144790(A166009(n+1))`
-/

namespace A029217.P16771315189850253849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029437 (A020742 n).toNat : ℚ) / (A144790 (A166009 (n + 1)).toNat : ℚ)

end

end A029217.P16771315189850253849

namespace A029217

/-- `A029437(A020742(n))/A144790(A166009(n+1))` -/
def P16771315189850253849.Spec : Prop :=
  ∀ n, P16771315189850253849.a n = (A029217 n : ℚ)

end A029217

/-! ## A029217.P7287106554652973319

`A029437(A020742(n))^A134744(A000124(n))`
-/

namespace A029217.P7287106554652973319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029437 (A020742 n).toNat : ℚ) ^ (A134744 (A000124 n).toNat : ℤ)

end

end A029217.P7287106554652973319

namespace A029217

/-- `A029437(A020742(n))^A134744(A000124(n))` -/
def P7287106554652973319.Spec : Prop :=
  ∀ n, P7287106554652973319.a n = (A029217 n : ℚ)

end A029217

/-!
# A029218: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^7)*(1-x^12)).

The programs for A029218, the canonical program `A029218.P10369731130158592802` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029218 has offset 0).

The definition of A029218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029218.P5544141740243548599

`A029110(n)-a(n-1)` with `a(0)=1`
-/

namespace A029218.P5544141740243548599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029110 n - a (n - 1)

end

end A029218.P5544141740243548599

namespace A029218

/-- `A029110(n)-a(n-1)` -/
def P5544141740243548599.Spec : Prop :=
  ∀ n, P5544141740243548599.a n = A029218 n

end A029218

/-! ## A029218.P4492528169917960436

`A025901(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029218.P4492528169917960436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025901 n + a (n - 2)

end

end A029218.P4492528169917960436

namespace A029218

/-- `A025901(n)+a(n-2)` -/
def P4492528169917960436.Spec : Prop :=
  ∀ n, P4492528169917960436.a n = A029218 n

end A029218

/-! ## A029218.P10369731130158592802

`A029160(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029218

/-- `A029160(n)-a(n-3)` -/
def P10369731130158592802.Spec : Prop :=
  ∀ n, P10369731130158592802.a n = A029218 n

theorem P10369731130158592802.correct : P10369731130158592802.Spec := by
  intro n
  simp only [A029218]

end A029218

/-! ## A029218.P1629277607205073087

`abs(∑[A029110(n)*A033999(n)])`
-/

namespace A029218.P1629277607205073087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029110 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029218.P1629277607205073087

namespace A029218

/-- `abs(∑[A029110(n)*A033999(n)])` -/
def P1629277607205073087.Spec : Prop :=
  ∀ n, P1629277607205073087.a n = A029218 n

end A029218

/-! ## A029218.P3663852478948487734

`(A004442(n)-n)*∑[A029110(n)*A033999(n)]`
-/

namespace A029218.P3663852478948487734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029110 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029218.P3663852478948487734

namespace A029218

/-- `(A004442(n)-n)*∑[A029110(n)*A033999(n)]` -/
def P3663852478948487734.Spec : Prop :=
  ∀ n, P3663852478948487734.a n = A029218 n

end A029218

/-! ## A029218.P12292318340003600049

`∑[A029110(n)*A033999(n)]*A010892(3*n)`
-/

namespace A029218.P12292318340003600049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029110 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A010892 (3 * n)

end

end A029218.P12292318340003600049

namespace A029218

/-- `∑[A029110(n)*A033999(n)]*A010892(3*n)` -/
def P12292318340003600049.Spec : Prop :=
  ∀ n, P12292318340003600049.a n = A029218 n

end A029218

/-! ## A029218.P2733736511903600035

`A000196(∑[A029110(n)*A033999(n)]²)`
-/

namespace A029218.P2733736511903600035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029110 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029218.P2733736511903600035

namespace A029218

/-- `A000196(∑[A029110(n)*A033999(n)]²)` -/
def P2733736511903600035.Spec : Prop :=
  ∀ n, P2733736511903600035.a n = A029218 n

end A029218

/-! ## A029218.P6760588229409804482

`A000196(∑[A029110(n)/A033999(n)]²)`
-/

namespace A029218.P6760588229409804482
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029110 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A029218.P6760588229409804482

namespace A029218

/-- `A000196(∑[A029110(n)/A033999(n)]²)` -/
def P6760588229409804482.Spec : Prop :=
  ∀ n, P6760588229409804482.a n = A029218 n

end A029218

/-!
# A029219: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^8)*(1-x^9)).

The programs for A029219, the canonical program `A029219.P7299716398362055067` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029219 has offset 0).

The definition of A029219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029219.P7299716398362055067

`A029111(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029219

/-- `A029111(n)-a(n-1)` -/
def P7299716398362055067.Spec : Prop :=
  ∀ n, P7299716398362055067.a n = A029219 n

theorem P7299716398362055067.correct : P7299716398362055067.Spec := by
  intro n
  simp only [A029219]

end A029219

/-! ## A029219.P14450187863223116985

`A025902(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029219.P14450187863223116985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025902 n + a (n - 2)

end

end A029219.P14450187863223116985

namespace A029219

/-- `A025902(n)+a(n-2)` -/
def P14450187863223116985.Spec : Prop :=
  ∀ n, P14450187863223116985.a n = A029219 n

end A029219

/-! ## A029219.P17293446710633703697

`A029161(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029219.P17293446710633703697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029161 n - a (n - 3)

end

end A029219.P17293446710633703697

namespace A029219

/-- `A029161(n)-a(n-3)` -/
def P17293446710633703697.Spec : Prop :=
  ∀ n, P17293446710633703697.a n = A029219 n

end A029219

/-! ## A029219.P6514792159868698718

`A029352(abs(2-n))+A029352(n)`
-/

namespace A029219.P6514792159868698718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029352 |2 - (n : ℤ)|.toNat + A029352 n

end

end A029219.P6514792159868698718

namespace A029219

/-- `A029352(abs(2-n))+A029352(n)` -/
def P6514792159868698718.Spec : Prop :=
  ∀ n, P6514792159868698718.a n = A029219 n

end A029219

/-! ## A029219.P9255992801757405702

`A025920(n)+A029190(n)-A025874(n)`
-/

namespace A029219.P9255992801757405702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025920 n + (A029190 n - A025874 n)

end

end A029219.P9255992801757405702

namespace A029219

/-- `A025920(n)+A029190(n)-A025874(n)` -/
def P9255992801757405702.Spec : Prop :=
  ∀ n, P9255992801757405702.a n = A029219 n

end A029219

/-! ## A029219.P18322921933784591708

`A029236(n+2)+A029188(n)-A029221(n+2)`
-/

namespace A029219.P18322921933784591708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 (n + 2) + (A029188 n - A029221 (n + 2))

end

end A029219.P18322921933784591708

namespace A029219

/-- `A029236(n+2)+A029188(n)-A029221(n+2)` -/
def P18322921933784591708.Spec : Prop :=
  ∀ n, P18322921933784591708.a n = A029219 n

end A029219

/-!
# A029220: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^8)*(1-x^11)).

The programs for A029220, the canonical program `A029220.P14898228413299065211` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029220 has offset 0).

The definition of A029220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029220.P17130797873393044009

`A029112(n)-a(n-1)` with `a(0)=1`
-/

namespace A029220.P17130797873393044009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029112 n - a (n - 1)

end

end A029220.P17130797873393044009

namespace A029220

/-- `A029112(n)-a(n-1)` -/
def P17130797873393044009.Spec : Prop :=
  ∀ n, P17130797873393044009.a n = A029220 n

end A029220

/-! ## A029220.P10329551280679350844

`A025903(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029220.P10329551280679350844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025903 n + a (n - 2)

end

end A029220.P10329551280679350844

namespace A029220

/-- `A025903(n)+a(n-2)` -/
def P10329551280679350844.Spec : Prop :=
  ∀ n, P10329551280679350844.a n = A029220 n

end A029220

/-! ## A029220.P3753214403928521005

`A029163(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029220.P3753214403928521005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029163 n - a (n - 3)

end

end A029220.P3753214403928521005

namespace A029220

/-- `A029163(n)-a(n-3)` -/
def P3753214403928521005.Spec : Prop :=
  ∀ n, P3753214403928521005.a n = A029220 n

end A029220

/-! ## A029220.P11643708337557375167

`∑[A025903(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029220.P11643708337557375167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025903 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029220.P11643708337557375167

namespace A029220

/-- `∑[A025903(n)-a(A023443(n))]` -/
def P11643708337557375167.Spec : Prop :=
  ∀ n, P11643708337557375167.a n = A029220 n

end A029220

/-! ## A029220.P14898228413299065211

`A029240(n)+A029353(n)-A025875(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029220

/-- `A029240(n)+A029353(n)-A025875(n)` -/
def P14898228413299065211.Spec : Prop :=
  ∀ n, P14898228413299065211.a n = A029220 n

theorem P14898228413299065211.correct : P14898228413299065211.Spec := by
  intro n
  simp only [A029220]

end A029220

/-! ## A029220.P1201018687509699322

`A029194(A020715(n))-A029206(A020715(n))`
-/

namespace A029220.P1201018687509699322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029194 (A020715 n).toNat - A029206 (A020715 n).toNat

end

end A029220.P1201018687509699322

namespace A029220

/-- `A029194(A020715(n))-A029206(A020715(n))` -/
def P1201018687509699322.Spec : Prop :=
  ∀ n, P1201018687509699322.a n = A029220 n

end A029220

/-! ## A029220.P3993430525248363756

`A029324(A168197(n+1))`
-/

namespace A029220.P3993430525248363756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029324 (A168197 (n + 1)).toNat

end

end A029220.P3993430525248363756

namespace A029220

/-- `A029324(A168197(n+1))` -/
def P3993430525248363756.Spec : Prop :=
  ∀ n, P3993430525248363756.a n = A029220 n

end A029220

/-!
# A029221: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^10)).

The programs for A029221, the canonical program `A029221.P3659478906980729494` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029221 has offset 0).

The definition of A029221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029221.P3659478906980729494

`A029113(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029221

/-- `A029113(n)-a(n-1)` -/
def P3659478906980729494.Spec : Prop :=
  ∀ n, P3659478906980729494.a n = A029221 n

theorem P3659478906980729494.correct : P3659478906980729494.Spec := by
  intro n
  simp only [A029221]

end A029221

/-! ## A029221.P9457893448480989291

`A025904(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029221.P9457893448480989291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025904 n + a (n - 2)

end

end A029221.P9457893448480989291

namespace A029221

/-- `A025904(n)+a(n-2)` -/
def P9457893448480989291.Spec : Prop :=
  ∀ n, P9457893448480989291.a n = A029221 n

end A029221

/-! ## A029221.P14559525532920663586

`A029165(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029221.P14559525532920663586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029165 n - a (n - 3)

end

end A029221.P14559525532920663586

namespace A029221

/-- `A029165(n)-a(n-3)` -/
def P14559525532920663586.Spec : Prop :=
  ∀ n, P14559525532920663586.a n = A029221 n

end A029221

/-! ## A029221.P11555093745315896535

`A029354(abs(A023444(n)))+A029354(n)`
-/

namespace A029221.P11555093745315896535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 |A023444 n|.toNat + A029354 n

end

end A029221.P11555093745315896535

namespace A029221

/-- `A029354(abs(A023444(n)))+A029354(n)` -/
def P11555093745315896535.Spec : Prop :=
  ∀ n, P11555093745315896535.a n = A029221 n

end A029221

/-! ## A029221.P13399155184124911655

`A025904(n)+A029188(n)-A029354(n)`
-/

namespace A029221.P13399155184124911655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 n + (A029188 n - A029354 n)

end

end A029221.P13399155184124911655

namespace A029221

/-- `A025904(n)+A029188(n)-A029354(n)` -/
def P13399155184124911655.Spec : Prop :=
  ∀ n, P13399155184124911655.a n = A029221 n

end A029221

/-! ## A029221.P15155167156730569253

`A029188(n+2)-A029354(n+2)`
-/

namespace A029221.P15155167156730569253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (n + 2) - A029354 (n + 2)

end

end A029221.P15155167156730569253

namespace A029221

/-- `A029188(n+2)-A029354(n+2)` -/
def P15155167156730569253.Spec : Prop :=
  ∀ n, P15155167156730569253.a n = A029221 n

end A029221

/-! ## A029221.P13870118023693079057

`A029354(n+2)+A029354(n)-A025904(n+2)`
-/

namespace A029221.P13870118023693079057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (n + 2) + (A029354 n - A025904 (n + 2))

end

end A029221.P13870118023693079057

namespace A029221

/-- `A029354(n+2)+A029354(n)-A025904(n+2)` -/
def P13870118023693079057.Spec : Prop :=
  ∀ n, P13870118023693079057.a n = A029221 n

end A029221

/-!
# A029222: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^11)).

The programs for A029222, the canonical program `A029222.P6488115771881220225` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029222 has offset 0).

The definition of A029222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029222.P6488115771881220225

`A029114(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029222

/-- `A029114(n)-a(n-1)` -/
def P6488115771881220225.Spec : Prop :=
  ∀ n, P6488115771881220225.a n = A029222 n

theorem P6488115771881220225.correct : P6488115771881220225.Spec := by
  intro n
  simp only [A029222]

end A029222

/-! ## A029222.P12584762373517447340

`A025905(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029222.P12584762373517447340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025905 n + a (n - 2)

end

end A029222.P12584762373517447340

namespace A029222

/-- `A025905(n)+a(n-2)` -/
def P12584762373517447340.Spec : Prop :=
  ∀ n, P12584762373517447340.a n = A029222 n

end A029222

/-! ## A029222.P7537315322770031569

`A029166(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029222.P7537315322770031569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029166 n - a (n - 3)

end

end A029222.P7537315322770031569

namespace A029222

/-- `A029166(n)-a(n-3)` -/
def P7537315322770031569.Spec : Prop :=
  ∀ n, P7537315322770031569.a n = A029222 n

end A029222

/-! ## A029222.P12624643556911942996

`A025905(n)+A029189(n)-A029355(n)`
-/

namespace A029222.P12624643556911942996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025905 n + (A029189 n - A029355 n)

end

end A029222.P12624643556911942996

namespace A029222

/-- `A025905(n)+A029189(n)-A029355(n)` -/
def P12624643556911942996.Spec : Prop :=
  ∀ n, P12624643556911942996.a n = A029222 n

end A029222

/-! ## A029222.P7920816456970160566

`A029189(n)+A029195(n)-A029176(n)`
-/

namespace A029222.P7920816456970160566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029189 n + (A029195 n - A029176 n)

end

end A029222.P7920816456970160566

namespace A029222

/-- `A029189(n)+A029195(n)-A029176(n)` -/
def P7920816456970160566.Spec : Prop :=
  ∀ n, P7920816456970160566.a n = A029222 n

end A029222

/-! ## A029222.P6922090762973580632

`A029154(n+6)-A029166(n+6)`
-/

namespace A029222.P6922090762973580632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029154 (n + 6) - A029166 (n + 6)

end

end A029222.P6922090762973580632

namespace A029222

/-- `A029154(n+6)-A029166(n+6)` -/
def P6922090762973580632.Spec : Prop :=
  ∀ n, P6922090762973580632.a n = A029222 n

end A029222

/-!
# A029223: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^12)).

The programs for A029223, the canonical program `A029223.P10718192621319969633` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029223 has offset 0).

The definition of A029223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029223.P10718192621319969633

`A029167(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029223

/-- `A029167(n)-a(n-3)` -/
def P10718192621319969633.Spec : Prop :=
  ∀ n, P10718192621319969633.a n = A029223 n

theorem P10718192621319969633.correct : P10718192621319969633.Spec := by
  intro n
  simp only [A029223]

end A029223

/-! ## A029223.P1474340238887855897

`A254594(abs(1-A008611(n)))`
-/

namespace A029223.P1474340238887855897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 |1 - A008611 n|.toNat

end

end A029223.P1474340238887855897

namespace A029223

/-- `A254594(abs(1-A008611(n)))` -/
def P1474340238887855897.Spec : Prop :=
  ∀ n, P1474340238887855897.a n = A029223 n

end A029223

/-! ## A029223.P14090751223319307222

`A254594(A168056(n)%(n+1))`
-/

namespace A029223.P14090751223319307222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (Int.tmod (A168056 n) (n + 1 : ℤ)).toNat

end

end A029223.P14090751223319307222

namespace A029223

/-- `A254594(A168056(n)%(n+1))` -/
def P14090751223319307222.Spec : Prop :=
  ∀ n, P14090751223319307222.a n = A029223 n

end A029223

/-! ## A029223.P4701912105514151649

`A181120(A052938(A008611(n)))`
-/

namespace A029223.P4701912105514151649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A052938 (A008611 n).toNat).toNat

end

end A029223.P4701912105514151649

namespace A029223

/-- `A181120(A052938(A008611(n)))` -/
def P4701912105514151649.Spec : Prop :=
  ∀ n, P4701912105514151649.a n = A029223 n

end A029223

/-! ## A029223.P6941796770384216133

`A254594(abs(A023443(A008611(n))))`
-/

namespace A029223.P6941796770384216133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 |A023443 (A008611 n).toNat|.toNat

end

end A029223.P6941796770384216133

namespace A029223

/-- `A254594(abs(A023443(A008611(n))))` -/
def P6941796770384216133.Spec : Prop :=
  ∀ n, P6941796770384216133.a n = A029223 n

end A029223

/-! ## A029223.P6887558085925439188

`A181120(A052938(∑[A257075(n)]))`
-/

namespace A029223.P6887558085925439188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (A052938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A029223.P6887558085925439188

namespace A029223

/-- `A181120(A052938(∑[A257075(n)]))` -/
def P6887558085925439188.Spec : Prop :=
  ∀ n, P6887558085925439188.a n = A029223 n

end A029223

/-! ## A029223.P5898320061473157546

`A254594((n+2)%A008620(n+2))`
-/

namespace A029223.P5898320061473157546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (Int.tmod (n + 2 : ℤ) (A008620 (n + 2))).toNat

end

end A029223.P5898320061473157546

namespace A029223

/-- `A254594((n+2)%A008620(n+2))` -/
def P5898320061473157546.Spec : Prop :=
  ∀ n, P5898320061473157546.a n = A029223 n

end A029223

/-!
# A029224: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^10)*(1-x^11)).

The programs for A029224, the canonical program `A029224.P11078861318480278839` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029224 has offset 0).

The definition of A029224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029224.P2938368456987522333

`A029115(n)-a(n-1)` with `a(0)=1`
-/

namespace A029224.P2938368456987522333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029115 n - a (n - 1)

end

end A029224.P2938368456987522333

namespace A029224

/-- `A029115(n)-a(n-1)` -/
def P2938368456987522333.Spec : Prop :=
  ∀ n, P2938368456987522333.a n = A029224 n

end A029224

/-! ## A029224.P14790185445938046679

`A025906(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029224.P14790185445938046679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025906 n + a (n - 2)

end

end A029224.P14790185445938046679

namespace A029224

/-- `A025906(n)+a(n-2)` -/
def P14790185445938046679.Spec : Prop :=
  ∀ n, P14790185445938046679.a n = A029224 n

end A029224

/-! ## A029224.P13370764284018937517

`A029168(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029224.P13370764284018937517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029168 n - a (n - 3)

end

end A029224.P13370764284018937517

namespace A029224

/-- `A029168(n)-a(n-3)` -/
def P13370764284018937517.Spec : Prop :=
  ∀ n, P13370764284018937517.a n = A029224 n

end A029224

/-! ## A029224.P11078861318480278839

`A029357(abs(2-n))+A029357(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029224

/-- `A029357(abs(2-n))+A029357(n)` -/
def P11078861318480278839.Spec : Prop :=
  ∀ n, P11078861318480278839.a n = A029224 n

theorem P11078861318480278839.correct : P11078861318480278839.Spec := by
  intro n
  simp only [A029224]

end A029224

/-! ## A029224.P4712705167180831163

`A025926(n)+A029192(n)-A029377(n)`
-/

namespace A029224.P4712705167180831163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029192 n - A029377 n)

end

end A029224.P4712705167180831163

namespace A029224

/-- `A025926(n)+A029192(n)-A029377(n)` -/
def P4712705167180831163.Spec : Prop :=
  ∀ n, P4712705167180831163.a n = A029224 n

end A029224

/-! ## A029224.P10950474899329270161

`A029239(n)+A029384(n)-A029406(n)`
-/

namespace A029224.P10950474899329270161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029239 n + (A029384 n - A029406 n)

end

end A029224.P10950474899329270161

namespace A029224

/-- `A029239(n)+A029384(n)-A029406(n)` -/
def P10950474899329270161.Spec : Prop :=
  ∀ n, P10950474899329270161.a n = A029224 n

end A029224

/-! ## A029224.P18065893061164332529

`A029220(n+2)-A029426(n+2)`
-/

namespace A029224.P18065893061164332529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 (n + 2) - A029426 (n + 2)

end

end A029224.P18065893061164332529

namespace A029224

/-- `A029220(n+2)-A029426(n+2)` -/
def P18065893061164332529.Spec : Prop :=
  ∀ n, P18065893061164332529.a n = A029224 n

end A029224

/-!
# A029225: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^11)*(1-x^12)).

The programs for A029225, the canonical program `A029225.P16486130044195142611` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029225 has offset 0).

The definition of A029225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029225.P16486130044195142611

`A029116(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029225

/-- `A029116(n)-a(n-1)` -/
def P16486130044195142611.Spec : Prop :=
  ∀ n, P16486130044195142611.a n = A029225 n

theorem P16486130044195142611.correct : P16486130044195142611.Spec := by
  intro n
  simp only [A029225]

end A029225

/-! ## A029225.P11078718206399383608

`A025907(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029225.P11078718206399383608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025907 n + a (n - 2)

end

end A029225.P11078718206399383608

namespace A029225

/-- `A025907(n)+a(n-2)` -/
def P11078718206399383608.Spec : Prop :=
  ∀ n, P11078718206399383608.a n = A029225 n

end A029225

/-! ## A029225.P3600987977323645655

`A029170(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029225.P3600987977323645655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A029170 n - a (n - 3)

end

end A029225.P3600987977323645655

namespace A029225

/-- `A029170(n)-a(n-3)` -/
def P3600987977323645655.Spec : Prop :=
  ∀ n, P3600987977323645655.a n = A029225 n

end A029225

/-! ## A029225.P6424504406050637893

`A029240(n)+A029427(n)-A025922(n)`
-/

namespace A029225.P6424504406050637893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029427 n - A025922 n)

end

end A029225.P6424504406050637893

namespace A029225

/-- `A029240(n)+A029427(n)-A025922(n)` -/
def P6424504406050637893.Spec : Prop :=
  ∀ n, P6424504406050637893.a n = A029225 n

end A029225

/-! ## A029225.P13650504005775068199

`A029198(n)+A029235(n)-A029202(n)`
-/

namespace A029225.P13650504005775068199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029198 n + (A029235 n - A029202 n)

end

end A029225.P13650504005775068199

namespace A029225

/-- `A029198(n)+A029235(n)-A029202(n)` -/
def P13650504005775068199.Spec : Prop :=
  ∀ n, P13650504005775068199.a n = A029225 n

end A029225

/-! ## A029225.P8269621545971248277

`A029240(n)+A029386(n)-A029408(n)`
-/

namespace A029225.P8269621545971248277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029386 n - A029408 n)

end

end A029225.P8269621545971248277

namespace A029225

/-- `A029240(n)+A029386(n)-A029408(n)` -/
def P8269621545971248277.Spec : Prop :=
  ∀ n, P8269621545971248277.a n = A029225 n

end A029225

/-! ## A029225.P13783870854575431514

`A029238(n)+A029427(n)-A029444(n)`
-/

namespace A029225.P13783870854575431514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029238 n + (A029427 n - A029444 n)

end

end A029225.P13783870854575431514

namespace A029225

/-- `A029238(n)+A029427(n)-A029444(n)` -/
def P13783870854575431514.Spec : Prop :=
  ∀ n, P13783870854575431514.a n = A029225 n

end A029225

/-! ## A029225.P1170228323615821520

`A029224(n+2)-A029431(n+2)`
-/

namespace A029225.P1170228323615821520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029224 (n + 2) - A029431 (n + 2)

end

end A029225.P1170228323615821520

namespace A029225

/-- `A029224(n+2)-A029431(n+2)` -/
def P1170228323615821520.Spec : Prop :=
  ∀ n, P1170228323615821520.a n = A029225 n

end A029225

/-!
# A029226: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^9)).

The programs for A029226, the canonical program `A029226.P12300120044546400790` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029226 has offset 0).

The definition of A029226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029226.P12300120044546400790

`A029117(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029226

/-- `A029117(n)-a(n-1)` -/
def P12300120044546400790.Spec : Prop :=
  ∀ n, P12300120044546400790.a n = A029226 n

theorem P12300120044546400790.correct : P12300120044546400790.Spec := by
  intro n
  simp only [A029226]

end A029226

/-! ## A029226.P8709574309181797166

`A025908(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029226.P8709574309181797166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025908 n + a (n - 2)

end

end A029226.P8709574309181797166

namespace A029226

/-- `A025908(n)+a(n-2)` -/
def P8709574309181797166.Spec : Prop :=
  ∀ n, P8709574309181797166.a n = A029226 n

end A029226

/-! ## A029226.P10679205072631046336

`A029359(abs(2-n))+A029359(n)`
-/

namespace A029226.P10679205072631046336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029359 |2 - (n : ℤ)|.toNat + A029359 n

end

end A029226.P10679205072631046336

namespace A029226

/-- `A029359(abs(2-n))+A029359(n)` -/
def P10679205072631046336.Spec : Prop :=
  ∀ n, P10679205072631046336.a n = A029226 n

end A029226

/-! ## A029226.P2006955800010566927

`A029228(n)+A029433(n)-A025910(n)`
-/

namespace A029226.P2006955800010566927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029228 n + (A029433 n - A025910 n)

end

end A029226.P2006955800010566927

namespace A029226

/-- `A029228(n)+A029433(n)-A025910(n)` -/
def P2006955800010566927.Spec : Prop :=
  ∀ n, P2006955800010566927.a n = A029226 n

end A029226

/-! ## A029226.P12884322626234248382

`A025821(n)+∑[A025817(n)-A025821(n)]`
-/

namespace A029226.P12884322626234248382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025817 n - A025821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025821 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029226.P12884322626234248382

namespace A029226

/-- `A025821(n)+∑[A025817(n)-A025821(n)]` -/
def P12884322626234248382.Spec : Prop :=
  ∀ n, P12884322626234248382.a n = A029226 n

end A029226

/-!
# A029227: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^10)).

The programs for A029227, the canonical program `A029227.P4896199220607575330` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029227 has offset 0).

The definition of A029227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029227.P4896199220607575330

`A029118(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029227

/-- `A029118(n)-a(n-1)` -/
def P4896199220607575330.Spec : Prop :=
  ∀ n, P4896199220607575330.a n = A029227 n

theorem P4896199220607575330.correct : P4896199220607575330.Spec := by
  intro n
  simp only [A029227]

end A029227

/-! ## A029227.P16187737059094230588

`A025909(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029227.P16187737059094230588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025909 n + a (n - 2)

end

end A029227.P16187737059094230588

namespace A029227

/-- `A025909(n)+a(n-2)` -/
def P16187737059094230588.Spec : Prop :=
  ∀ n, P16187737059094230588.a n = A029227 n

end A029227

/-! ## A029227.P9904695769873908203

`abs(∑[A029118(n)*A033999(n)])`
-/

namespace A029227.P9904695769873908203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029118 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029227.P9904695769873908203

namespace A029227

/-- `abs(∑[A029118(n)*A033999(n)])` -/
def P9904695769873908203.Spec : Prop :=
  ∀ n, P9904695769873908203.a n = A029227 n

end A029227

/-! ## A029227.P13998878783952050705

`A029360(abs(2-n))+A029360(n)`
-/

namespace A029227.P13998878783952050705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029360 |2 - (n : ℤ)|.toNat + A029360 n

end

end A029227.P13998878783952050705

namespace A029227

/-- `A029360(abs(2-n))+A029360(n)` -/
def P13998878783952050705.Spec : Prop :=
  ∀ n, P13998878783952050705.a n = A029227 n

end A029227

/-! ## A029227.P11172128824391087676

`A029216(n+2)-A029414(n+2)`
-/

namespace A029227.P11172128824391087676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029216 (n + 2) - A029414 (n + 2)

end

end A029227.P11172128824391087676

namespace A029227

/-- `A029216(n+2)-A029414(n+2)` -/
def P11172128824391087676.Spec : Prop :=
  ∀ n, P11172128824391087676.a n = A029227 n

end A029227

/-! ## A029227.P12908445698427374539

`A029156(n)-A029288(A001651(n+1))`
-/

namespace A029227.P12908445698427374539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029156 n - A029288 (A001651 (n + 1)).toNat

end

end A029227.P12908445698427374539

namespace A029227

/-- `A029156(n)-A029288(A001651(n+1))` -/
def P12908445698427374539.Spec : Prop :=
  ∀ n, P12908445698427374539.a n = A029227 n

end A029227

/-!
# A029228: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^11)).

The programs for A029228, the canonical program `A029228.P5384408417690494335` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029228 has offset 0).

The definition of A029228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029228.P5384408417690494335

`A029119(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029228

/-- `A029119(n)-a(n-1)` -/
def P5384408417690494335.Spec : Prop :=
  ∀ n, P5384408417690494335.a n = A029228 n

theorem P5384408417690494335.correct : P5384408417690494335.Spec := by
  intro n
  simp only [A029228]

end A029228

/-! ## A029228.P5212387340301796326

`A025910(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029228.P5212387340301796326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025910 n + a (n - 2)

end

end A029228.P5212387340301796326

namespace A029228

/-- `A025910(n)+a(n-2)` -/
def P5212387340301796326.Spec : Prop :=
  ∀ n, P5212387340301796326.a n = A029228 n

end A029228

/-! ## A029228.P16013512368228448366

`A025910(n)+A029217(n)-A029415(n)`
-/

namespace A029228.P16013512368228448366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n + (A029217 n - A029415 n)

end

end A029228.P16013512368228448366

namespace A029228

/-- `A025910(n)+A029217(n)-A029415(n)` -/
def P16013512368228448366.Spec : Prop :=
  ∀ n, P16013512368228448366.a n = A029228 n

end A029228

/-! ## A029228.P6375258542657465798

`A029119(n)+A029217(n)-A029112(n)`
-/

namespace A029228.P6375258542657465798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029119 n + (A029217 n - A029112 n)

end

end A029228.P6375258542657465798

namespace A029228

/-- `A029119(n)+A029217(n)-A029112(n)` -/
def P6375258542657465798.Spec : Prop :=
  ∀ n, P6375258542657465798.a n = A029228 n

end A029228

/-! ## A029228.P2341189105931857971

`A029112(n+1)-A029217(n+1)`
-/

namespace A029228.P2341189105931857971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029112 (n + 1) - A029217 (n + 1)

end

end A029228.P2341189105931857971

namespace A029228

/-- `A029112(n+1)-A029217(n+1)` -/
def P2341189105931857971.Spec : Prop :=
  ∀ n, P2341189105931857971.a n = A029228 n

end A029228

/-! ## A029228.P11664983250041421285

`Δ[a(n-2)-(A029415(n)-A029112(n))]` with `a(0)=0, a(1)=1`
-/

namespace A029228.P11664983250041421285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) - (A029415 n - A029112 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029228.P11664983250041421285

namespace A029228

/-- `Δ[a(n-2)-(A029415(n)-A029112(n))]` -/
def P11664983250041421285.Spec : Prop :=
  ∀ n, P11664983250041421285.a n = A029228 n

end A029228

/-!
# A029229: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^12)).

The programs for A029229, the canonical program `A029229.P7840999330443593408` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029229 has offset 0).

The definition of A029229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029229.P7840999330443593408

`A029120(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029229

/-- `A029120(n)-a(n-1)` -/
def P7840999330443593408.Spec : Prop :=
  ∀ n, P7840999330443593408.a n = A029229 n

theorem P7840999330443593408.correct : P7840999330443593408.Spec := by
  intro n
  simp only [A029229]

end A029229

/-! ## A029229.P3697123421024370933

`A025911(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029229.P3697123421024370933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025911 n + a (n - 2)

end

end A029229.P3697123421024370933

namespace A029229

/-- `A025911(n)+a(n-2)` -/
def P3697123421024370933.Spec : Prop :=
  ∀ n, P3697123421024370933.a n = A029229 n

end A029229

/-! ## A029229.P9315643804057106434

`A029362(abs(2-n))+A029362(n)`
-/

namespace A029229.P9315643804057106434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029362 |2 - (n : ℤ)|.toNat + A029362 n

end

end A029229.P9315643804057106434

namespace A029229

/-- `A029362(abs(2-n))+A029362(n)` -/
def P9315643804057106434.Spec : Prop :=
  ∀ n, P9315643804057106434.a n = A029229 n

end A029229

/-! ## A029229.P18375989043957138703

`A029185(n+2)-A029347(n+2)`
-/

namespace A029229.P18375989043957138703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029185 (n + 2) - A029347 (n + 2)

end

end A029229.P18375989043957138703

namespace A029229

/-- `A029185(n+2)-A029347(n+2)` -/
def P18375989043957138703.Spec : Prop :=
  ∀ n, P18375989043957138703.a n = A029229 n

end A029229

/-! ## A029229.P9859053510535906258

`A025816(n)+A001842(A029234(n)!)`
-/

namespace A029229.P9859053510535906258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025816 n + A001842 (Nat.factorial (A029234 n).toNat)

end

end A029229.P9859053510535906258

namespace A029229

/-- `A025816(n)+A001842(A029234(n)!)` -/
def P9859053510535906258.Spec : Prop :=
  ∀ n, P9859053510535906258.a n = A029229 n

end A029229

/-!
# A029230: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^10)).

The programs for A029230, the canonical program `A029230.P447352754514735135` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029230 has offset 0).

The definition of A029230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029230.P447352754514735135

`A029121(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029230

/-- `A029121(n)-a(n-1)` -/
def P447352754514735135.Spec : Prop :=
  ∀ n, P447352754514735135.a n = A029230 n

theorem P447352754514735135.correct : P447352754514735135.Spec := by
  intro n
  simp only [A029230]

end A029230

/-! ## A029230.P18364837297914504077

`A025912(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029230.P18364837297914504077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025912 n + a (n - 2)

end

end A029230.P18364837297914504077

namespace A029230

/-- `A025912(n)+a(n-2)` -/
def P18364837297914504077.Spec : Prop :=
  ∀ n, P18364837297914504077.a n = A029230 n

end A029230

/-! ## A029230.P16383715879349821054

`A029363(abs(2-n))+A029363(n)`
-/

namespace A029230.P16383715879349821054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029363 |2 - (n : ℤ)|.toNat + A029363 n

end

end A029230.P16383715879349821054

namespace A029230

/-- `A029363(abs(2-n))+A029363(n)` -/
def P16383715879349821054.Spec : Prop :=
  ∀ n, P16383715879349821054.a n = A029230 n

end A029230

/-! ## A029230.P15882225933375736311

`A029118(n+1)-A029226(n+1)`
-/

namespace A029230.P15882225933375736311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029118 (n + 1) - A029226 (n + 1)

end

end A029230.P15882225933375736311

namespace A029230

/-- `A029118(n+1)-A029226(n+1)` -/
def P15882225933375736311.Spec : Prop :=
  ∀ n, P15882225933375736311.a n = A029230 n

end A029230

/-! ## A029230.P18161667502414940935

`A029157(n+7)-A029165(n+7)`
-/

namespace A029230.P18161667502414940935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 (n + 7) - A029165 (n + 7)

end

end A029230.P18161667502414940935

namespace A029230

/-- `A029157(n+7)-A029165(n+7)` -/
def P18161667502414940935.Spec : Prop :=
  ∀ n, P18161667502414940935.a n = A029230 n

end A029230

/-!
# A029231: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^11)).

The programs for A029231, the canonical program `A029231.P839251406571888672` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029231 has offset 0).

The definition of A029231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029231.P16533446323593244912

`A029122(n)-a(n-1)` with `a(0)=1`
-/

namespace A029231.P16533446323593244912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029122 n - a (n - 1)

end

end A029231.P16533446323593244912

namespace A029231

/-- `A029122(n)-a(n-1)` -/
def P16533446323593244912.Spec : Prop :=
  ∀ n, P16533446323593244912.a n = A029231 n

end A029231

/-! ## A029231.P14920253442302051888

`A025913(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029231.P14920253442302051888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025913 n + a (n - 2)

end

end A029231.P14920253442302051888

namespace A029231

/-- `A025913(n)+a(n-2)` -/
def P14920253442302051888.Spec : Prop :=
  ∀ n, P14920253442302051888.a n = A029231 n

end A029231

/-! ## A029231.P5503332372908593064

`abs(∑[A029122(n)*A033999(n)])`
-/

namespace A029231.P5503332372908593064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029122 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029231.P5503332372908593064

namespace A029231

/-- `abs(∑[A029122(n)*A033999(n)])` -/
def P5503332372908593064.Spec : Prop :=
  ∀ n, P5503332372908593064.a n = A029231 n

end A029231

/-! ## A029231.P839251406571888672

`A029182(n)+A029209(n)-A029176(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029231

/-- `A029182(n)+A029209(n)-A029176(n)` -/
def P839251406571888672.Spec : Prop :=
  ∀ n, P839251406571888672.a n = A029231 n

theorem P839251406571888672.correct : P839251406571888672.Spec := by
  intro n
  simp only [A029231]

end A029231

/-! ## A029231.P2263066141833684761

`(A004442(n)-n)*∑[A029122(n)*A033999(n)]`
-/

namespace A029231.P2263066141833684761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029122 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029231.P2263066141833684761

namespace A029231

/-- `(A004442(n)-n)*∑[A029122(n)*A033999(n)]` -/
def P2263066141833684761.Spec : Prop :=
  ∀ n, P2263066141833684761.a n = A029231 n

end A029231

/-! ## A029231.P16113182222747459453

`∑[A029122(n)*A033999(n)]*A057077(2*n)`
-/

namespace A029231.P16113182222747459453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029122 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057077 (2 * n)

end

end A029231.P16113182222747459453

namespace A029231

/-- `∑[A029122(n)*A033999(n)]*A057077(2*n)` -/
def P16113182222747459453.Spec : Prop :=
  ∀ n, P16113182222747459453.a n = A029231 n

end A029231

/-! ## A029231.P2755486655141521228

`∑[A029122(n)*A033999(n)]*A112030(2*n+1)`
-/

namespace A029231.P2755486655141521228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029122 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A112030 (2 * n + 1)

end

end A029231.P2755486655141521228

namespace A029231

/-- `∑[A029122(n)*A033999(n)]*A112030(2*n+1)` -/
def P2755486655141521228.Spec : Prop :=
  ∀ n, P2755486655141521228.a n = A029231 n

end A029231

/-! ## A029231.P560869316007844181

`∑[A029122(n)*A033999(n)]*(A112030(n²)-2)`
-/

namespace A029231.P560869316007844181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029122 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A112030 (n ^ 2) - 2)

end

end A029231.P560869316007844181

namespace A029231

/-- `∑[A029122(n)*A033999(n)]*(A112030(n²)-2)` -/
def P560869316007844181.Spec : Prop :=
  ∀ n, P560869316007844181.a n = A029231 n

end A029231

/-!
# A029232: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^9)*(1-x^12)).

The programs for A029232, the canonical program `A029232.P16177588645430596473` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029232 has offset 0).

The definition of A029232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029232.P16177588645430596473

`A029123(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029232

/-- `A029123(n)-a(n-1)` -/
def P16177588645430596473.Spec : Prop :=
  ∀ n, P16177588645430596473.a n = A029232 n

theorem P16177588645430596473.correct : P16177588645430596473.Spec := by
  intro n
  simp only [A029232]

end A029232

/-! ## A029232.P1435589463124525445

`A025914(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029232.P1435589463124525445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025914 n + a (n - 2)

end

end A029232.P1435589463124525445

namespace A029232

/-- `A025914(n)+a(n-2)` -/
def P1435589463124525445.Spec : Prop :=
  ∀ n, P1435589463124525445.a n = A029232 n

end A029232

/-! ## A029232.P8007552510230042826

`A029365(abs(2-n))+A029365(n)`
-/

namespace A029232.P8007552510230042826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 |2 - (n : ℤ)|.toNat + A029365 n

end

end A029232.P8007552510230042826

namespace A029232

/-- `A029365(abs(2-n))+A029365(n)` -/
def P8007552510230042826.Spec : Prop :=
  ∀ n, P8007552510230042826.a n = A029232 n

end A029232

/-! ## A029232.P3381940339155886978

`∑[A025914(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029232.P3381940339155886978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025914 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029232.P3381940339155886978

namespace A029232

/-- `∑[A025914(n)-a(A023443(n))]` -/
def P3381940339155886978.Spec : Prop :=
  ∀ n, P3381940339155886978.a n = A029232 n

end A029232

/-! ## A029232.P1199959013865918615

`A029157(n)+A029185(n)-A029142(n)`
-/

namespace A029232.P1199959013865918615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029157 n + (A029185 n - A029142 n)

end

end A029232.P1199959013865918615

namespace A029232

/-- `A029157(n)+A029185(n)-A029142(n)` -/
def P1199959013865918615.Spec : Prop :=
  ∀ n, P1199959013865918615.a n = A029232 n

end A029232

/-! ## A029232.P14415068692114867655

`A029190(n)+A029200(n)-A029177(n)`
-/

namespace A029232.P14415068692114867655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029190 n + (A029200 n - A029177 n)

end

end A029232.P14415068692114867655

namespace A029232

/-- `A029190(n)+A029200(n)-A029177(n)` -/
def P14415068692114867655.Spec : Prop :=
  ∀ n, P14415068692114867655.a n = A029232 n

end A029232

/-! ## A029232.P17197587235503275020

`A029215(n+6)-(A029365(n+4)+A029365(n+6))`
-/

namespace A029232.P17197587235503275020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029215 (n + 6) - (A029365 (n + 4) + A029365 (n + 6))

end

end A029232.P17197587235503275020

namespace A029232

/-- `A029215(n+6)-(A029365(n+4)+A029365(n+6))` -/
def P17197587235503275020.Spec : Prop :=
  ∀ n, P17197587235503275020.a n = A029232 n

end A029232

/-!
# A029233: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^11)).

The programs for A029233, the canonical program `A029233.P3941505614629625210` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029233 has offset 0).

The definition of A029233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029233.P2423150088751722218

`A029124(n)-a(n-1)` with `a(0)=1`
-/

namespace A029233.P2423150088751722218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029124 n - a (n - 1)

end

end A029233.P2423150088751722218

namespace A029233

/-- `A029124(n)-a(n-1)` -/
def P2423150088751722218.Spec : Prop :=
  ∀ n, P2423150088751722218.a n = A029233 n

end A029233

/-! ## A029233.P13423566177727601743

`A025915(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029233.P13423566177727601743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025915 n + a (n - 2)

end

end A029233.P13423566177727601743

namespace A029233

/-- `A025915(n)+a(n-2)` -/
def P13423566177727601743.Spec : Prop :=
  ∀ n, P13423566177727601743.a n = A029233 n

end A029233

/-! ## A029233.P1327254495586116835

`∑[A025915(n)-a(A023443(n))]` with `a(0)=1`
-/

namespace A029233.P1327254495586116835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A025915 n - f1 (A023443 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029233.P1327254495586116835

namespace A029233

/-- `∑[A025915(n)-a(A023443(n))]` -/
def P1327254495586116835.Spec : Prop :=
  ∀ n, P1327254495586116835.a n = A029233 n

end A029233

/-! ## A029233.P7206066835854802187

`A025826(n)+A029159(n)-A029168(n)`
-/

namespace A029233.P7206066835854802187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n + (A029159 n - A029168 n)

end

end A029233.P7206066835854802187

namespace A029233

/-- `A025826(n)+A029159(n)-A029168(n)` -/
def P7206066835854802187.Spec : Prop :=
  ∀ n, P7206066835854802187.a n = A029233 n

end A029233

/-! ## A029233.P12077508247624143770

`A025826(n)+A029183(n)-A029191(n)`
-/

namespace A029233.P12077508247624143770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n + (A029183 n - A029191 n)

end

end A029233.P12077508247624143770

namespace A029233

/-- `A025826(n)+A029183(n)-A029191(n)` -/
def P12077508247624143770.Spec : Prop :=
  ∀ n, P12077508247624143770.a n = A029233 n

end A029233

/-! ## A029233.P3941505614629625210

`A029183(n)+A029224(n)-A029180(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029233

/-- `A029183(n)+A029224(n)-A029180(n)` -/
def P3941505614629625210.Spec : Prop :=
  ∀ n, P3941505614629625210.a n = A029233 n

theorem P3941505614629625210.correct : P3941505614629625210.Spec := by
  intro n
  simp only [A029233]

end A029233

/-! ## A029233.P14608854986916131443

`A029159(n+7)-A029168(n+7)`
-/

namespace A029233.P14608854986916131443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029159 (n + 7) - A029168 (n + 7)

end

end A029233.P14608854986916131443

namespace A029233

/-- `A029159(n+7)-A029168(n+7)` -/
def P14608854986916131443.Spec : Prop :=
  ∀ n, P14608854986916131443.a n = A029233 n

end A029233

/-!
# A029234: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^12)).

The programs for A029234, the canonical program `A029234.P4989415662554192308` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029234 has offset 0).

The definition of A029234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029234.P4989415662554192308

`A029125(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029234

/-- `A029125(n)-a(n-1)` -/
def P4989415662554192308.Spec : Prop :=
  ∀ n, P4989415662554192308.a n = A029234 n

theorem P4989415662554192308.correct : P4989415662554192308.Spec := by
  intro n
  simp only [A029234]

end A029234

/-! ## A029234.P714971593558721025

`A025916(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029234.P714971593558721025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025916 n + a (n - 2)

end

end A029234.P714971593558721025

namespace A029234

/-- `A025916(n)+a(n-2)` -/
def P714971593558721025.Spec : Prop :=
  ∀ n, P714971593558721025.a n = A029234 n

end A029234

/-! ## A029234.P15119333650509220380

`abs(∑[A029125(n)*A033999(n)])`
-/

namespace A029234.P15119333650509220380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029234.P15119333650509220380

namespace A029234

/-- `abs(∑[A029125(n)*A033999(n)])` -/
def P15119333650509220380.Spec : Prop :=
  ∀ n, P15119333650509220380.a n = A029234 n

end A029234

/-! ## A029234.P12030198901330321572

`∑[A029125(n)*A033999(n)]*A165326(n+1)`
-/

namespace A029234.P12030198901330321572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A165326 (n + 1)

end

end A029234.P12030198901330321572

namespace A029234

/-- `∑[A029125(n)*A033999(n)]*A165326(n+1)` -/
def P12030198901330321572.Spec : Prop :=
  ∀ n, P12030198901330321572.a n = A029234 n

end A029234

/-! ## A029234.P8936257581534306013

`∑[A029125(n)*A033999(n)]*A164677(2*n+1)`
-/

namespace A029234.P8936257581534306013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A164677 (2 * n + 1)

end

end A029234.P8936257581534306013

namespace A029234

/-- `∑[A029125(n)*A033999(n)]*A164677(2*n+1)` -/
def P8936257581534306013.Spec : Prop :=
  ∀ n, P8936257581534306013.a n = A029234 n

end A029234

/-!
# A029235: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^11)*(1-x^12)).

The programs for A029235, the canonical program `A029235.P12349426323057609679` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029235 has offset 0).

The definition of A029235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029235.P17142277204215654470

`A029126(n)-a(n-1)` with `a(0)=1`
-/

namespace A029235.P17142277204215654470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029126 n - a (n - 1)

end

end A029235.P17142277204215654470

namespace A029235

/-- `A029126(n)-a(n-1)` -/
def P17142277204215654470.Spec : Prop :=
  ∀ n, P17142277204215654470.a n = A029235 n

end A029235

/-! ## A029235.P1613333190589458068

`A025917(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029235.P1613333190589458068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025917 n + a (n - 2)

end

end A029235.P1613333190589458068

namespace A029235

/-- `A025917(n)+a(n-2)` -/
def P1613333190589458068.Spec : Prop :=
  ∀ n, P1613333190589458068.a n = A029235 n

end A029235

/-! ## A029235.P9895427570724500990

`abs(∑[A029126(n)*A033999(n)])`
-/

namespace A029235.P9895427570724500990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029126 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029235.P9895427570724500990

namespace A029235

/-- `abs(∑[A029126(n)*A033999(n)])` -/
def P9895427570724500990.Spec : Prop :=
  ∀ n, P9895427570724500990.a n = A029235 n

end A029235

/-! ## A029235.P12349426323057609679

`A025827(n)+A029202(n)-A029213(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029235

/-- `A025827(n)+A029202(n)-A029213(n)` -/
def P12349426323057609679.Spec : Prop :=
  ∀ n, P12349426323057609679.a n = A029235 n

theorem P12349426323057609679.correct : P12349426323057609679.Spec := by
  intro n
  simp only [A029235]

end A029235

/-! ## A029235.P9130424722994439082

`A029202(n)+A029225(n)-A029198(n)`
-/

namespace A029235.P9130424722994439082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029202 n + (A029225 n - A029198 n)

end

end A029235.P9130424722994439082

namespace A029235

/-- `A029202(n)+A029225(n)-A029198(n)` -/
def P9130424722994439082.Spec : Prop :=
  ∀ n, P9130424722994439082.a n = A029235 n

end A029235

/-!
# A029236: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^10)).

The programs for A029236, the canonical program `A029236.P5523176851886397480` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029236 has offset 0).

The definition of A029236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029236.P14203281493818242904

`A029127(n)-a(n-1)` with `a(0)=1`
-/

namespace A029236.P14203281493818242904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029127 n - a (n - 1)

end

end A029236.P14203281493818242904

namespace A029236

/-- `A029127(n)-a(n-1)` -/
def P14203281493818242904.Spec : Prop :=
  ∀ n, P14203281493818242904.a n = A029236 n

end A029236

/-! ## A029236.P1641248053236257484

`A025918(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029236.P1641248053236257484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025918 n + a (n - 2)

end

end A029236.P1641248053236257484

namespace A029236

/-- `A025918(n)+a(n-2)` -/
def P1641248053236257484.Spec : Prop :=
  ∀ n, P1641248053236257484.a n = A029236 n

end A029236

/-! ## A029236.P3518288968807238443

`abs(∑[A029127(n)*A033999(n)])`
-/

namespace A029236.P3518288968807238443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029127 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029236.P3518288968807238443

namespace A029236

/-- `abs(∑[A029127(n)*A033999(n)])` -/
def P3518288968807238443.Spec : Prop :=
  ∀ n, P3518288968807238443.a n = A029236 n

end A029236

/-! ## A029236.P5523176851886397480

`A029128(n)+A029239(n)-A029130(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029236

/-- `A029128(n)+A029239(n)-A029130(n)` -/
def P5523176851886397480.Spec : Prop :=
  ∀ n, P5523176851886397480.a n = A029236 n

theorem P5523176851886397480.correct : P5523176851886397480.Spec := by
  intro n
  simp only [A029236]

end A029236

/-! ## A029236.P4438477992012492647

`∑[A029127(n)*A033999(n)]*A009001(2*n)`
-/

namespace A029236.P4438477992012492647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029127 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009001 (2 * n)

end

end A029236.P4438477992012492647

namespace A029236

/-- `∑[A029127(n)*A033999(n)]*A009001(2*n)` -/
def P4438477992012492647.Spec : Prop :=
  ∀ n, P4438477992012492647.a n = A029236 n

end A029236

/-! ## A029236.P7010703947865220149

`A000196(∑[A029127(n)*A033999(n)]²)`
-/

namespace A029236.P7010703947865220149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029127 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A029236.P7010703947865220149

namespace A029236

/-- `A000196(∑[A029127(n)*A033999(n)]²)` -/
def P7010703947865220149.Spec : Prop :=
  ∀ n, P7010703947865220149.a n = A029236 n

end A029236

/-! ## A029236.P17833424696444190574

`A000196(∑[A029127(n)/A033999(n)]²)`
-/

namespace A029236.P17833424696444190574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029127 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)).toNat

end

end A029236.P17833424696444190574

namespace A029236

/-- `A000196(∑[A029127(n)/A033999(n)]²)` -/
def P17833424696444190574.Spec : Prop :=
  ∀ n, P17833424696444190574.a n = A029236 n

end A029236

/-!
# A029237: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^11)).

The programs for A029237, the canonical program `A029237.P12458243396982577582` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029237 has offset 0).

The definition of A029237 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029237.P12458243396982577582

`A029128(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029237

/-- `A029128(n)-a(n-1)` -/
def P12458243396982577582.Spec : Prop :=
  ∀ n, P12458243396982577582.a n = A029237 n

theorem P12458243396982577582.correct : P12458243396982577582.Spec := by
  intro n
  simp only [A029237]

end A029237

/-! ## A029237.P15250312111298958877

`A025919(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029237.P15250312111298958877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025919 n + a (n - 2)

end

end A029237.P15250312111298958877

namespace A029237

/-- `A025919(n)+a(n-2)` -/
def P15250312111298958877.Spec : Prop :=
  ∀ n, P15250312111298958877.a n = A029237 n

end A029237

/-! ## A029237.P8401996084088452627

`abs(∑[A029128(n)*A033999(n)])`
-/

namespace A029237.P8401996084088452627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029237.P8401996084088452627

namespace A029237

/-- `abs(∑[A029128(n)*A033999(n)])` -/
def P8401996084088452627.Spec : Prop :=
  ∀ n, P8401996084088452627.a n = A029237 n

end A029237

/-! ## A029237.P14476814880741089540

`A029370(abs(2-n))+A029370(n)`
-/

namespace A029237.P14476814880741089540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029370 |2 - (n : ℤ)|.toNat + A029370 n

end

end A029237.P14476814880741089540

namespace A029237

/-- `A029370(abs(2-n))+A029370(n)` -/
def P14476814880741089540.Spec : Prop :=
  ∀ n, P14476814880741089540.a n = A029237 n

end A029237

/-! ## A029237.P8210527744755148823

`(A004442(n)-n)*∑[A029128(n)*A033999(n)]`
-/

namespace A029237.P8210527744755148823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029237.P8210527744755148823

namespace A029237

/-- `(A004442(n)-n)*∑[A029128(n)*A033999(n)]` -/
def P8210527744755148823.Spec : Prop :=
  ∀ n, P8210527744755148823.a n = A029237 n

end A029237

/-!
# A029238: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^12)).

The programs for A029238, the canonical program `A029238.P16766028808299643663` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029238 has offset 0).

The definition of A029238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029238.P16766028808299643663

`A029129(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029238

/-- `A029129(n)-a(n-1)` -/
def P16766028808299643663.Spec : Prop :=
  ∀ n, P16766028808299643663.a n = A029238 n

theorem P16766028808299643663.correct : P16766028808299643663.Spec := by
  intro n
  simp only [A029238]

end A029238

/-! ## A029238.P11531962794742986127

`A025920(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029238.P11531962794742986127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025920 n + a (n - 2)

end

end A029238.P11531962794742986127

namespace A029238

/-- `A025920(n)+a(n-2)` -/
def P11531962794742986127.Spec : Prop :=
  ∀ n, P11531962794742986127.a n = A029238 n

end A029238

/-! ## A029238.P1562726967093678570

`A029371(abs(2-n))+A029371(n)`
-/

namespace A029238.P1562726967093678570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029371 |2 - (n : ℤ)|.toNat + A029371 n

end

end A029238.P1562726967093678570

namespace A029238

/-- `A029371(abs(2-n))+A029371(n)` -/
def P1562726967093678570.Spec : Prop :=
  ∀ n, P1562726967093678570.a n = A029238 n

end A029238

/-! ## A029238.P7098889991953279476

`A029186(n)+A029210(n)-A029177(n)`
-/

namespace A029238.P7098889991953279476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029186 n + (A029210 n - A029177 n)

end

end A029238.P7098889991953279476

namespace A029238

/-- `A029186(n)+A029210(n)-A029177(n)` -/
def P7098889991953279476.Spec : Prop :=
  ∀ n, P7098889991953279476.a n = A029238 n

end A029238

/-! ## A029238.P3565382522983272562

`A029225(n)+A029444(n)-A029427(n)`
-/

namespace A029238.P3565382522983272562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 n + (A029444 n - A029427 n)

end

end A029238.P3565382522983272562

namespace A029238

/-- `A029225(n)+A029444(n)-A029427(n)` -/
def P3565382522983272562.Spec : Prop :=
  ∀ n, P3565382522983272562.a n = A029238 n

end A029238

/-!
# A029239: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^10)*(1-x^11)).

The programs for A029239, the canonical program `A029239.P14692552077046529193` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029239 has offset 0).

The definition of A029239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029239.P14692552077046529193

`A029130(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029239

/-- `A029130(n)-a(n-1)` -/
def P14692552077046529193.Spec : Prop :=
  ∀ n, P14692552077046529193.a n = A029239 n

theorem P14692552077046529193.correct : P14692552077046529193.Spec := by
  intro n
  simp only [A029239]

end A029239

/-! ## A029239.P9711153403250099972

`A025921(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029239.P9711153403250099972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025921 n + a (n - 2)

end

end A029239.P9711153403250099972

namespace A029239

/-- `A025921(n)+a(n-2)` -/
def P9711153403250099972.Spec : Prop :=
  ∀ n, P9711153403250099972.a n = A029239 n

end A029239

/-! ## A029239.P2217510347850730652

`abs(∑[A029130(n)*A033999(n)])`
-/

namespace A029239.P2217510347850730652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029239.P2217510347850730652

namespace A029239

/-- `abs(∑[A029130(n)*A033999(n)])` -/
def P2217510347850730652.Spec : Prop :=
  ∀ n, P2217510347850730652.a n = A029239 n

end A029239

/-! ## A029239.P6482042153308242125

`A029372(abs(2-n))+A029372(n)`
-/

namespace A029239.P6482042153308242125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 |2 - (n : ℤ)|.toNat + A029372 n

end

end A029239.P6482042153308242125

namespace A029239

/-- `A029372(abs(2-n))+A029372(n)` -/
def P6482042153308242125.Spec : Prop :=
  ∀ n, P6482042153308242125.a n = A029239 n

end A029239

/-! ## A029239.P250519326609857481

`A029130(n)+A029236(n)-A029128(n)`
-/

namespace A029239.P250519326609857481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n + (A029236 n - A029128 n)

end

end A029239.P250519326609857481

namespace A029239

/-- `A029130(n)+A029236(n)-A029128(n)` -/
def P250519326609857481.Spec : Prop :=
  ∀ n, P250519326609857481.a n = A029239 n

end A029239

/-! ## A029239.P11320739388041107092

`A029128(n+1)-A029236(n+1)`
-/

namespace A029239.P11320739388041107092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 (n + 1) - A029236 (n + 1)

end

end A029239.P11320739388041107092

namespace A029239

/-- `A029128(n+1)-A029236(n+1)` -/
def P11320739388041107092.Spec : Prop :=
  ∀ n, P11320739388041107092.a n = A029239 n

end A029239

/-! ## A029239.P16557085433647064281

`Δ[a(n-2)-(A029435(n)-A029124(n))]` with `a(0)=1, a(1)=2`
-/

namespace A029239.P16557085433647064281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) - (A029435 n - A029124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029239.P16557085433647064281

namespace A029239

/-- `Δ[a(n-2)-(A029435(n)-A029124(n))]` -/
def P16557085433647064281.Spec : Prop :=
  ∀ n, P16557085433647064281.a n = A029239 n

end A029239

/-! ## A029239.P14795536518227523274

`∑[A029130(n)*A033999(n)]*A009531(2*n+1)`
-/

namespace A029239.P14795536518227523274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A009531 (2 * n + 1)

end

end A029239.P14795536518227523274

namespace A029239

/-- `∑[A029130(n)*A033999(n)]*A009531(2*n+1)` -/
def P14795536518227523274.Spec : Prop :=
  ∀ n, P14795536518227523274.a n = A029239 n

end A029239

/-!
# A029240: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^11)*(1-x^12)).

The programs for A029240, the canonical program `A029240.P15289134274771874386` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029240 has offset 0).

The definition of A029240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029240.P9275603118141215888

`A029131(n)-a(n-1)` with `a(0)=1`
-/

namespace A029240.P9275603118141215888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029131 n - a (n - 1)

end

end A029240.P9275603118141215888

namespace A029240

/-- `A029131(n)-a(n-1)` -/
def P9275603118141215888.Spec : Prop :=
  ∀ n, P9275603118141215888.a n = A029240 n

end A029240

/-! ## A029240.P10274821701112808031

`A025922(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029240.P10274821701112808031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025922 n + a (n - 2)

end

end A029240.P10274821701112808031

namespace A029240

/-- `A025922(n)+a(n-2)` -/
def P10274821701112808031.Spec : Prop :=
  ∀ n, P10274821701112808031.a n = A029240 n

end A029240

/-! ## A029240.P16368323054070445506

`A025922(n)+A029225(n)-A029427(n)`
-/

namespace A029240.P16368323054070445506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029225 n - A029427 n)

end

end A029240.P16368323054070445506

namespace A029240

/-- `A025922(n)+A029225(n)-A029427(n)` -/
def P16368323054070445506.Spec : Prop :=
  ∀ n, P16368323054070445506.a n = A029240 n

end A029240

/-! ## A029240.P15289134274771874386

`A029244(n)+A029445(n)-A025926(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029240

/-- `A029244(n)+A029445(n)-A025926(n)` -/
def P15289134274771874386.Spec : Prop :=
  ∀ n, P15289134274771874386.a n = A029240 n

theorem P15289134274771874386.correct : P15289134274771874386.Spec := by
  intro n
  simp only [A029240]

end A029240

/-! ## A029240.P708998011651683491

`A029244(n)+A029372(n)-A029377(n)`
-/

namespace A029240.P708998011651683491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n + (A029372 n - A029377 n)

end

end A029240.P708998011651683491

namespace A029240

/-- `A029244(n)+A029372(n)-A029377(n)` -/
def P708998011651683491.Spec : Prop :=
  ∀ n, P708998011651683491.a n = A029240 n

end A029240

/-! ## A029240.P14840713524847072133

`A029225(n)+A029408(n)-A029386(n)`
-/

namespace A029240.P14840713524847072133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 n + (A029408 n - A029386 n)

end

end A029240.P14840713524847072133

namespace A029240

/-- `A029225(n)+A029408(n)-A029386(n)` -/
def P14840713524847072133.Spec : Prop :=
  ∀ n, P14840713524847072133.a n = A029240 n

end A029240

/-! ## A029240.P17585594493030300430

`A029225(n+2)-A029427(n+2)`
-/

namespace A029240.P17585594493030300430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (n + 2) - A029427 (n + 2)

end

end A029240.P17585594493030300430

namespace A029240

/-- `A029225(n+2)-A029427(n+2)` -/
def P17585594493030300430.Spec : Prop :=
  ∀ n, P17585594493030300430.a n = A029240 n

end A029240

/-!
# A029241: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^11)).

The programs for A029241, the canonical program `A029241.P4809283722259501140` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029241 has offset 0).

The definition of A029241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029241.P15230175364796084436

`A029132(n)-a(n-1)` with `a(0)=1`
-/

namespace A029241.P15230175364796084436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029132 n - a (n - 1)

end

end A029241.P15230175364796084436

namespace A029241

/-- `A029132(n)-a(n-1)` -/
def P15230175364796084436.Spec : Prop :=
  ∀ n, P15230175364796084436.a n = A029241 n

end A029241

/-! ## A029241.P990530731066615137

`A025923(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029241.P990530731066615137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025923 n + a (n - 2)

end

end A029241.P990530731066615137

namespace A029241

/-- `A025923(n)+a(n-2)` -/
def P990530731066615137.Spec : Prop :=
  ∀ n, P990530731066615137.a n = A029241 n

end A029241

/-! ## A029241.P15065500275904812305

`A029374(abs(2-n))+A029374(n)`
-/

namespace A029241.P15065500275904812305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 |2 - (n : ℤ)|.toNat + A029374 n

end

end A029241.P15065500275904812305

namespace A029241

/-- `A029374(abs(2-n))+A029374(n)` -/
def P15065500275904812305.Spec : Prop :=
  ∀ n, P15065500275904812305.a n = A029241 n

end A029241

/-! ## A029241.P4809283722259501140

`A029133(n)+A029243(n)-A029134(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029241

/-- `A029133(n)+A029243(n)-A029134(n)` -/
def P4809283722259501140.Spec : Prop :=
  ∀ n, P4809283722259501140.a n = A029241 n

theorem P4809283722259501140.correct : P4809283722259501140.Spec := by
  intro n
  simp only [A029241]

end A029241

/-! ## A029241.P12920441371358642059

`A029130(n+1)-A029237(n+1)`
-/

namespace A029241.P12920441371358642059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 (n + 1) - A029237 (n + 1)

end

end A029241.P12920441371358642059

namespace A029241

/-- `A029130(n+1)-A029237(n+1)` -/
def P12920441371358642059.Spec : Prop :=
  ∀ n, P12920441371358642059.a n = A029241 n

end A029241

/-!
# A029242: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^12)).

The programs for A029242, the canonical program `A029242.P11992213160082313165` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029242 has offset 0).

The definition of A029242 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029242.P11992213160082313165

`A029133(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029242

/-- `A029133(n)-a(n-1)` -/
def P11992213160082313165.Spec : Prop :=
  ∀ n, P11992213160082313165.a n = A029242 n

theorem P11992213160082313165.correct : P11992213160082313165.Spec := by
  intro n
  simp only [A029242]

end A029242

/-! ## A029242.P18430559737194285231

`A025924(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029242.P18430559737194285231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025924 n + a (n - 2)

end

end A029242.P18430559737194285231

namespace A029242

/-- `A025924(n)+a(n-2)` -/
def P18430559737194285231.Spec : Prop :=
  ∀ n, P18430559737194285231.a n = A029242 n

end A029242

/-! ## A029242.P2443897106945131961

`abs(∑[A029133(n)*A033999(n)])`
-/

namespace A029242.P2443897106945131961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029242.P2443897106945131961

namespace A029242

/-- `abs(∑[A029133(n)*A033999(n)])` -/
def P2443897106945131961.Spec : Prop :=
  ∀ n, P2443897106945131961.a n = A029242 n

end A029242

/-! ## A029242.P5151820614957529349

`A029375(abs(2-n))+A029375(n)`
-/

namespace A029242.P5151820614957529349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029375 |2 - (n : ℤ)|.toNat + A029375 n

end

end A029242.P5151820614957529349

namespace A029242

/-- `A029375(abs(2-n))+A029375(n)` -/
def P5151820614957529349.Spec : Prop :=
  ∀ n, P5151820614957529349.a n = A029242 n

end A029242

/-! ## A029242.P5365165438198788524

`∑[A029133(n)*A033999(n)]/A165326(n+1)`
-/

namespace A029242.P5365165438198788524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n * A033999 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A165326 (n + 1) : ℚ)

end

end A029242.P5365165438198788524

namespace A029242

/-- `∑[A029133(n)*A033999(n)]/A165326(n+1)` -/
def P5365165438198788524.Spec : Prop :=
  ∀ n, P5365165438198788524.a n = (A029242 n : ℚ)

end A029242

/-!
# A029243: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^11)*(1-x^12)).

The programs for A029243, the canonical program `A029243.P10472737080434967019` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029243 has offset 0).

The definition of A029243 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029243.P10472737080434967019

`A029134(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029243

/-- `A029134(n)-a(n-1)` -/
def P10472737080434967019.Spec : Prop :=
  ∀ n, P10472737080434967019.a n = A029243 n

theorem P10472737080434967019.correct : P10472737080434967019.Spec := by
  intro n
  simp only [A029243]

end A029243

/-! ## A029243.P3164434684893787732

`A025925(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029243.P3164434684893787732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025925 n + a (n - 2)

end

end A029243.P3164434684893787732

namespace A029243

/-- `A025925(n)+a(n-2)` -/
def P3164434684893787732.Spec : Prop :=
  ∀ n, P3164434684893787732.a n = A029243 n

end A029243

/-! ## A029243.P11334820738928846745

`abs(∑[A029134(n)*A033999(n)])`
-/

namespace A029243.P11334820738928846745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029134 n * A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A029243.P11334820738928846745

namespace A029243

/-- `abs(∑[A029134(n)*A033999(n)])` -/
def P11334820738928846745.Spec : Prop :=
  ∀ n, P11334820738928846745.a n = A029243 n

end A029243

/-! ## A029243.P7549501918521900651

`A029376(abs(2-n))+A029376(n)`
-/

namespace A029243.P7549501918521900651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029376 |2 - (n : ℤ)|.toNat + A029376 n

end

end A029243.P7549501918521900651

namespace A029243

/-- `A029376(abs(2-n))+A029376(n)` -/
def P7549501918521900651.Spec : Prop :=
  ∀ n, P7549501918521900651.a n = A029243 n

end A029243

/-! ## A029243.P4032506358902145367

`A029133(n+1)-A029241(n+1)`
-/

namespace A029243.P4032506358902145367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 (n + 1) - A029241 (n + 1)

end

end A029243.P4032506358902145367

namespace A029243

/-- `A029133(n+1)-A029241(n+1)` -/
def P4032506358902145367.Spec : Prop :=
  ∀ n, P4032506358902145367.a n = A029243 n

end A029243

/-!
# A029244: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)*(1-x^12)).

The programs for A029244, the canonical program `A029244.P8059623005878958167` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029244 has offset 0).

The definition of A029244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029244.P14717013540682410923

`A029135(n)-a(n-1)` with `a(0)=1`
-/

namespace A029244.P14717013540682410923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029135 n - a (n - 1)

end

end A029244.P14717013540682410923

namespace A029244

/-- `A029135(n)-a(n-1)` -/
def P14717013540682410923.Spec : Prop :=
  ∀ n, P14717013540682410923.a n = A029244 n

end A029244

/-! ## A029244.P10803849296516448332

`A025926(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029244.P10803849296516448332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025926 n + a (n - 2)

end

end A029244.P10803849296516448332

namespace A029244

/-- `A025926(n)+a(n-2)` -/
def P10803849296516448332.Spec : Prop :=
  ∀ n, P10803849296516448332.a n = A029244 n

end A029244

/-! ## A029244.P9288468381870340632

`A029377(abs(2-n))+A029377(n)`
-/

namespace A029244.P9288468381870340632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 |2 - (n : ℤ)|.toNat + A029377 n

end

end A029244.P9288468381870340632

namespace A029244

/-- `A029377(abs(2-n))+A029377(n)` -/
def P9288468381870340632.Spec : Prop :=
  ∀ n, P9288468381870340632.a n = A029244 n

end A029244

/-! ## A029244.P7830247324225647921

`A025926(n)+A029240(n)-A029445(n)`
-/

namespace A029244.P7830247324225647921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029240 n - A029445 n)

end

end A029244.P7830247324225647921

namespace A029244

/-- `A025926(n)+A029240(n)-A029445(n)` -/
def P7830247324225647921.Spec : Prop :=
  ∀ n, P7830247324225647921.a n = A029244 n

end A029244

/-! ## A029244.P8059623005878958167

`A029213(n)+∑[A029224(n)-A029213(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029244

/-- `A029213(n)+∑[A029224(n)-A029213(n)]` -/
def P8059623005878958167.Spec : Prop :=
  ∀ n, P8059623005878958167.a n = A029244 n

theorem P8059623005878958167.correct : P8059623005878958167.Spec := by
  intro n
  simp only [A029244]

end A029244

/-! ## A029244.P13830804509933839826

`A029240(n+2)-A029445(n+2)`
-/

namespace A029244.P13830804509933839826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 (n + 2) - A029445 (n + 2)

end

end A029244.P13830804509933839826

namespace A029244

/-- `A029240(n+2)-A029445(n+2)` -/
def P13830804509933839826.Spec : Prop :=
  ∀ n, P13830804509933839826.a n = A029244 n

end A029244

/-!
# A029245: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^7)).

The programs for A029245, the canonical program `A029245.P251444214386208827` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029245 has offset 0).

The definition of A029245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029245.P251444214386208827

`A029144(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029245

/-- `A029144(n)-a(n-2)` -/
def P251444214386208827.Spec : Prop :=
  ∀ n, P251444214386208827.a n = A029245 n

theorem P251444214386208827.correct : P251444214386208827.Spec := by
  intro n
  simp only [A029245]

end A029245

/-! ## A029245.P9786713825058204473

`A025859(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029245.P9786713825058204473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025859 n + a (n - 3)

end

end A029245.P9786713825058204473

namespace A029245

/-- `A025859(n)+a(n-3)` -/
def P9786713825058204473.Spec : Prop :=
  ∀ n, P9786713825058204473.a n = A029245 n

end A029245

/-! ## A029245.P12971766883203946349

`A008677(n)+A029033(n)-A008673(n)`
-/

namespace A029245.P12971766883203946349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008677 n + (A029033 n - A008673 n)

end

end A029245.P12971766883203946349

namespace A029245

/-- `A008677(n)+A029033(n)-A008673(n)` -/
def P12971766883203946349.Spec : Prop :=
  ∀ n, P12971766883203946349.a n = A029245 n

end A029245

/-! ## A029245.P16261722989842684562

`A008673(n)+A025859(n)-A029064(n)`
-/

namespace A029245.P16261722989842684562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008673 n + (A025859 n - A029064 n)

end

end A029245.P16261722989842684562

namespace A029245

/-- `A008673(n)+A025859(n)-A029064(n)` -/
def P16261722989842684562.Spec : Prop :=
  ∀ n, P16261722989842684562.a n = A029245 n

end A029245

/-! ## A029245.P10840760439889472323

`A008667(n)+A025829(n)-A029137(n)`
-/

namespace A029245.P10840760439889472323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A025829 n - A029137 n)

end

end A029245.P10840760439889472323

namespace A029245

/-- `A008667(n)+A025829(n)-A029137(n)` -/
def P10840760439889472323.Spec : Prop :=
  ∀ n, P10840760439889472323.a n = A029245 n

end A029245

/-! ## A029245.P16997260667922018424

`A008667(n)+A029033(n)-A029008(n)`
-/

namespace A029245.P16997260667922018424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 n + (A029033 n - A029008 n)

end

end A029245.P16997260667922018424

namespace A029245

/-- `A008667(n)+A029033(n)-A029008(n)` -/
def P16997260667922018424.Spec : Prop :=
  ∀ n, P16997260667922018424.a n = A029245 n

end A029245

/-! ## A029245.P17129221095814951644

`A029414(2*n)`
-/

namespace A029245.P17129221095814951644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029414 (2 * n)

end

end A029245.P17129221095814951644

namespace A029245

/-- `A029414(2*n)` -/
def P17129221095814951644.Spec : Prop :=
  ∀ n, P17129221095814951644.a n = A029245 n

end A029245

/-! ## A029245.P12723758927850944028

`A029436(2*n+1)+A029436(2*n)`
-/

namespace A029245.P12723758927850944028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (2 * n + 1) + A029436 (2 * n)

end

end A029245.P12723758927850944028

namespace A029245

/-- `A029436(2*n+1)+A029436(2*n)` -/
def P12723758927850944028.Spec : Prop :=
  ∀ n, P12723758927850944028.a n = A029245 n

end A029245

/-! ## A029245.P15288595217344644178

`A025909(2*n)+A029216(2*n)-A029227(2*n)`
-/

namespace A029245.P15288595217344644178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n) + (A029216 (2 * n) - A029227 (2 * n))

end

end A029245.P15288595217344644178

namespace A029245

/-- `A025909(2*n)+A029216(2*n)-A029227(2*n)` -/
def P15288595217344644178.Spec : Prop :=
  ∀ n, P15288595217344644178.a n = A029245 n

end A029245

/-! ## A029245.P14960660347629026122

`A025909(2*n)+A029347(2*n)-A029360(2*n)`
-/

namespace A029245.P14960660347629026122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025909 (2 * n) + (A029347 (2 * n) - A029360 (2 * n))

end

end A029245.P14960660347629026122

namespace A029245

/-- `A025909(2*n)+A029347(2*n)-A029360(2*n)` -/
def P14960660347629026122.Spec : Prop :=
  ∀ n, P14960660347629026122.a n = A029245 n

end A029245

/-! ## A029245.P2805474658062718031

`A029033(n)-A029326(A144396(n+1))`
-/

namespace A029245.P2805474658062718031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029033 n - A029326 (A144396 (n + 1)).toNat

end

end A029245.P2805474658062718031

namespace A029245

/-- `A029033(n)-A029326(A144396(n+1))` -/
def P2805474658062718031.Spec : Prop :=
  ∀ n, P2805474658062718031.a n = A029245 n

end A029245

/-! ## A029245.P11409410502256355982

`∑[A025829(n)]-A029326(A144396(n+1))`
-/

namespace A029245.P11409410502256355982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029326 (A144396 (n + 1)).toNat

end

end A029245.P11409410502256355982

namespace A029245

/-- `∑[A025829(n)]-A029326(A144396(n+1))` -/
def P11409410502256355982.Spec : Prop :=
  ∀ n, P11409410502256355982.a n = A029245 n

end A029245

/-! ## A029245.P2851778630483439685

`A008673(n)-A029227(A005818(n+1))`
-/

namespace A029245.P2851778630483439685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008673 n - A029227 (A005818 (n + 1)).toNat

end

end A029245.P2851778630483439685

namespace A029245

/-- `A008673(n)-A029227(A005818(n+1))` -/
def P2851778630483439685.Spec : Prop :=
  ∀ n, P2851778630483439685.a n = A029245 n

end A029245

/-! ## A029245.P1774288962305815401

`A029033(n)-A029216(A005818(n+1))`
-/

namespace A029245.P1774288962305815401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029033 n - A029216 (A005818 (n + 1)).toNat

end

end A029245.P1774288962305815401

namespace A029245

/-- `A029033(n)-A029216(A005818(n+1))` -/
def P1774288962305815401.Spec : Prop :=
  ∀ n, P1774288962305815401.a n = A029245 n

end A029245

/-! ## A029245.P7209595233931742289

`∑[A025829(n)]-A029216(A005818(n+1))`
-/

namespace A029245.P7209595233931742289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025829 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029216 (A005818 (n + 1)).toNat

end

end A029245.P7209595233931742289

namespace A029245

/-- `∑[A025829(n)]-A029216(A005818(n+1))` -/
def P7209595233931742289.Spec : Prop :=
  ∀ n, P7209595233931742289.a n = A029245 n

end A029245

/-!
# A029246: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^8)).

The programs for A029246, the canonical program `A029246.P16548234812856178617` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029246 has offset 0).

The definition of A029246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029246.P16548234812856178617

`A029145(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029246

/-- `A029145(n)-a(n-2)` -/
def P16548234812856178617.Spec : Prop :=
  ∀ n, P16548234812856178617.a n = A029246 n

theorem P16548234812856178617.correct : P16548234812856178617.Spec := by
  intro n
  simp only [A029246]

end A029246

/-! ## A029246.P9125228863784041717

`A025860(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029246.P9125228863784041717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025860 n + a (n - 3)

end

end A029246.P9125228863784041717

namespace A029246

/-- `A025860(n)+a(n-3)` -/
def P9125228863784041717.Spec : Prop :=
  ∀ n, P9125228863784041717.a n = A029246 n

end A029246

/-! ## A029246.P10222247842163784212

`A029327(abs(3-n))+A029327(n)`
-/

namespace A029246.P10222247842163784212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 |3 - (n : ℤ)|.toNat + A029327 n

end

end A029246.P10222247842163784212

namespace A029246

/-- `A029327(abs(3-n))+A029327(n)` -/
def P10222247842163784212.Spec : Prop :=
  ∀ n, P10222247842163784212.a n = A029246 n

end A029246

/-! ## A029246.P13165175966456561254

`∑[A025808(n+2)-A025830(n+2)]`
-/

namespace A029246.P13165175966456561254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 (n + 2) - A025830 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029246.P13165175966456561254

namespace A029246

/-- `∑[A025808(n+2)-A025830(n+2)]` -/
def P13165175966456561254.Spec : Prop :=
  ∀ n, P13165175966456561254.a n = A029246 n

end A029246

/-! ## A029246.P13660770802618767727

`A029040(n+3)-A029065(n+3)`
-/

namespace A029246.P13660770802618767727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029040 (n + 3) - A029065 (n + 3)

end

end A029246.P13660770802618767727

namespace A029246

/-- `A029040(n+3)-A029065(n+3)` -/
def P13660770802618767727.Spec : Prop :=
  ∀ n, P13660770802618767727.a n = A029246 n

end A029246

/-! ## A029246.P11729991872492346034

`A029034(n+4)-A029040(n+4)`
-/

namespace A029246.P11729991872492346034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029034 (n + 4) - A029040 (n + 4)

end

end A029246.P11729991872492346034

namespace A029246

/-- `A029034(n+4)-A029040(n+4)` -/
def P11729991872492346034.Spec : Prop :=
  ∀ n, P11729991872492346034.a n = A029246 n

end A029246

/-!
# A029247: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^9)).

The programs for A029247, the canonical program `A029247.P3576117638533204583` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029247 has offset 0).

The definition of A029247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029247.P3576117638533204583

`A029146(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029247

/-- `A029146(n)-a(n-2)` -/
def P3576117638533204583.Spec : Prop :=
  ∀ n, P3576117638533204583.a n = A029247 n

theorem P3576117638533204583.correct : P3576117638533204583.Spec := by
  intro n
  simp only [A029247]

end A029247

/-! ## A029247.P18251373053705694238

`A025861(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029247.P18251373053705694238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025861 n + a (n - 3)

end

end A029247.P18251373053705694238

namespace A029247

/-- `A025861(n)+a(n-3)` -/
def P18251373053705694238.Spec : Prop :=
  ∀ n, P18251373053705694238.a n = A029247 n

end A029247

/-! ## A029247.P15128700124909146120

`A029423(2*n)`
-/

namespace A029247.P15128700124909146120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (2 * n)

end

end A029247.P15128700124909146120

namespace A029247

/-- `A029423(2*n)` -/
def P15128700124909146120.Spec : Prop :=
  ∀ n, P15128700124909146120.a n = A029247 n

end A029247

/-! ## A029247.P5322842095097815749

`A029423(A004277(n))+A000007(n)`
-/

namespace A029247.P5322842095097815749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (A004277 n).toNat + A000007 n

end

end A029247.P5322842095097815749

namespace A029247

/-- `A029423(A004277(n))+A000007(n)` -/
def P5322842095097815749.Spec : Prop :=
  ∀ n, P5322842095097815749.a n = A029247 n

end A029247

/-! ## A029247.P8736411984343168317

`or(A000007(n), A029423(A005843(n)))`
-/

namespace A029247.P8736411984343168317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029423 (A005843 n).toNat)

end

end A029247.P8736411984343168317

namespace A029247

/-- `or(A000007(n), A029423(A005843(n)))` -/
def P8736411984343168317.Spec : Prop :=
  ∀ n, P8736411984343168317.a n = A029247 n

end A029247

/-! ## A029247.P12692394125915939884

`A029423(A004277(n))+A008458(n)%2`
-/

namespace A029247.P12692394125915939884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (A004277 n).toNat + Int.tmod (A008458 n) 2

end

end A029247.P12692394125915939884

namespace A029247

/-- `A029423(A004277(n))+A008458(n)%2` -/
def P12692394125915939884.Spec : Prop :=
  ∀ n, P12692394125915939884.a n = A029247 n

end A029247

/-! ## A029247.P12951263861045295161

`A029423(A004277(n))+A008486(n)%3`
-/

namespace A029247.P12951263861045295161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 (A004277 n).toNat + Int.tmod (A008486 n) 3

end

end A029247.P12951263861045295161

namespace A029247

/-- `A029423(A004277(n))+A008486(n)%3` -/
def P12951263861045295161.Spec : Prop :=
  ∀ n, P12951263861045295161.a n = A029247 n

end A029247

/-! ## A029247.P12356680137667772024

`A029423(A005843(n))/A001399(C(3, n))`
-/

namespace A029247.P12356680137667772024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029423 (A005843 n).toNat : ℚ) / (A001399 (Nat.choose 3 n) : ℚ)

end

end A029247.P12356680137667772024

namespace A029247

/-- `A029423(A005843(n))/A001399(C(3, n))` -/
def P12356680137667772024.Spec : Prop :=
  ∀ n, P12356680137667772024.a n = (A029247 n : ℚ)

end A029247

/-! ## A029247.P1452389123000970574

`A029423(record[A014681(n)])%A085127(n+1)`
-/

namespace A029247.P1452389123000970574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A085127 (n + 1))

end

end A029247.P1452389123000970574

namespace A029247

/-- `A029423(record[A014681(n)])%A085127(n+1)` -/
def P1452389123000970574.Spec : Prop :=
  ∀ n, P1452389123000970574.a n = A029247 n

end A029247

/-! ## A029247.P881083584557599498

`A029443(2*n+3)+A029443(2*n)`
-/

namespace A029247.P881083584557599498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029443 (2 * n + 3) + A029443 (2 * n)

end

end A029247.P881083584557599498

namespace A029247

/-- `A029443(2*n+3)+A029443(2*n)` -/
def P881083584557599498.Spec : Prop :=
  ∀ n, P881083584557599498.a n = A029247 n

end A029247

/-! ## A029247.P1265110861126280882

`A029423(A005843(n))%A020701(n)`
-/

namespace A029247.P1265110861126280882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029423 (A005843 n).toNat) (A020701 n)

end

end A029247.P1265110861126280882

namespace A029247

/-- `A029423(A005843(n))%A020701(n)` -/
def P1265110861126280882.Spec : Prop :=
  ∀ n, P1265110861126280882.a n = A029247 n

end A029247

/-!
# A029248: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^10)).

The programs for A029248, the canonical program `A029248.P4123003717781958600` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029248 has offset 0).

The definition of A029248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029248.P4123003717781958600

`A029147(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029248

/-- `A029147(n)-a(n-2)` -/
def P4123003717781958600.Spec : Prop :=
  ∀ n, P4123003717781958600.a n = A029248 n

theorem P4123003717781958600.correct : P4123003717781958600.Spec := by
  intro n
  simp only [A029248]

end A029248

/-! ## A029248.P9191906244742352414

`A025862(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029248.P9191906244742352414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025862 n + a (n - 3)

end

end A029248.P9191906244742352414

namespace A029248

/-- `A025862(n)+a(n-3)` -/
def P9191906244742352414.Spec : Prop :=
  ∀ n, P9191906244742352414.a n = A029248 n

end A029248

/-! ## A029248.P13302858888984832497

`A029253(n)+A029286(n)-A029301(n)`
-/

namespace A029248.P13302858888984832497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 n + (A029286 n - A029301 n)

end

end A029248.P13302858888984832497

namespace A029248

/-- `A029253(n)+A029286(n)-A029301(n)` -/
def P13302858888984832497.Spec : Prop :=
  ∀ n, P13302858888984832497.a n = A029248 n

end A029248

/-! ## A029248.P3401241619009778548

`A029175(n+1)+A029175(n)-A029147(n+1)`
-/

namespace A029248.P3401241619009778548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029175 (n + 1) + (A029175 n - A029147 (n + 1))

end

end A029248.P3401241619009778548

namespace A029248

/-- `A029175(n+1)+A029175(n)-A029147(n+1)` -/
def P3401241619009778548.Spec : Prop :=
  ∀ n, P3401241619009778548.a n = A029248 n

end A029248

/-! ## A029248.P8911724208845085327

`A029036(n+4)-A029042(n+4)`
-/

namespace A029248.P8911724208845085327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029036 (n + 4) - A029042 (n + 4)

end

end A029248.P8911724208845085327

namespace A029248

/-- `A029036(n+4)-A029042(n+4)` -/
def P8911724208845085327.Spec : Prop :=
  ∀ n, P8911724208845085327.a n = A029248 n

end A029248

/-!
# A029249: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^11)).

The programs for A029249, the canonical program `A029249.P9401355967410962960` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029249 has offset 0).

The definition of A029249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029249.P9401355967410962960

`A029148(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029249

/-- `A029148(n)-a(n-2)` -/
def P9401355967410962960.Spec : Prop :=
  ∀ n, P9401355967410962960.a n = A029249 n

theorem P9401355967410962960.correct : P9401355967410962960.Spec := by
  intro n
  simp only [A029249]

end A029249

/-! ## A029249.P6096607469692112290

`A025863(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029249.P6096607469692112290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025863 n + a (n - 3)

end

end A029249.P6096607469692112290

namespace A029249

/-- `A025863(n)+a(n-3)` -/
def P6096607469692112290.Spec : Prop :=
  ∀ n, P6096607469692112290.a n = A029249 n

end A029249

/-! ## A029249.P7234050399656448228

`A029267(n)+A029274(n)-A029302(n)`
-/

namespace A029249.P7234050399656448228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029267 n + (A029274 n - A029302 n)

end

end A029249.P7234050399656448228

namespace A029249

/-- `A029267(n)+A029274(n)-A029302(n)` -/
def P7234050399656448228.Spec : Prop :=
  ∀ n, P7234050399656448228.a n = A029249 n

end A029249

/-! ## A029249.P12536957651365502667

`A029015(n+2)-A029037(n+2)`
-/

namespace A029249.P12536957651365502667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029015 (n + 2) - A029037 (n + 2)

end

end A029249.P12536957651365502667

namespace A029249

/-- `A029015(n+2)-A029037(n+2)` -/
def P12536957651365502667.Spec : Prop :=
  ∀ n, P12536957651365502667.a n = A029249 n

end A029249

/-! ## A029249.P1915062531745294242

`A029426(2*n)`
-/

namespace A029249.P1915062531745294242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029426 (2 * n)

end

end A029249.P1915062531745294242

namespace A029249

/-- `A029426(2*n)` -/
def P1915062531745294242.Spec : Prop :=
  ∀ n, P1915062531745294242.a n = A029249 n

end A029249

/-! ## A029249.P18122690572581726889

`A299530(n+5)+A029426(A005843(n))`
-/

namespace A029249.P18122690572581726889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299530 (n + 5) + A029426 (A005843 n).toNat

end

end A029249.P18122690572581726889

namespace A029249

/-- `A299530(n+5)+A029426(A005843(n))` -/
def P18122690572581726889.Spec : Prop :=
  ∀ n, P18122690572581726889.a n = A029249 n

end A029249

/-! ## A029249.P17646602758732357442

`A029408(2*n+5)`
-/

namespace A029249.P17646602758732357442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (2 * n + 5)

end

end A029249.P17646602758732357442

namespace A029249

/-- `A029408(2*n+5)` -/
def P17646602758732357442.Spec : Prop :=
  ∀ n, P17646602758732357442.a n = A029249 n

end A029249

/-! ## A029249.P18242842141885527386

`A118759(A029426(n+n))`
-/

namespace A029249.P18242842141885527386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A029426 (n + n)).toNat

end

end A029249.P18242842141885527386

namespace A029249

/-- `A118759(A029426(n+n))` -/
def P18242842141885527386.Spec : Prop :=
  ∀ n, P18242842141885527386.a n = A029249 n

end A029249

/-!
# A029250: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^5)*(1-x^12)).

The programs for A029250, the canonical program `A029250.P8277710506503635105` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029250 has offset 0).

The definition of A029250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029250.P8277710506503635105

`A029149(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029250

/-- `A029149(n)-a(n-2)` -/
def P8277710506503635105.Spec : Prop :=
  ∀ n, P8277710506503635105.a n = A029250 n

theorem P8277710506503635105.correct : P8277710506503635105.Spec := by
  intro n
  simp only [A029250]

end A029250

/-! ## A029250.P17605278303026765306

`A025864(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029250.P17605278303026765306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025864 n + a (n - 3)

end

end A029250.P17605278303026765306

namespace A029250

/-- `A025864(n)+a(n-3)` -/
def P17605278303026765306.Spec : Prop :=
  ∀ n, P17605278303026765306.a n = A029250 n

end A029250

/-! ## A029250.P11629287926433207043

`A025890(n)+A029057(n)-A029099(n)`
-/

namespace A029250.P11629287926433207043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025890 n + (A029057 n - A029099 n)

end

end A029250.P11629287926433207043

namespace A029250

/-- `A025890(n)+A029057(n)-A029099(n)` -/
def P11629287926433207043.Spec : Prop :=
  ∀ n, P11629287926433207043.a n = A029250 n

end A029250

/-! ## A029250.P12262346692891064337

`Δ[∑[A029254(n)]-A029270(n)]`
-/

namespace A029250.P12262346692891064337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029250.P12262346692891064337

namespace A029250

/-- `Δ[∑[A029254(n)]-A029270(n)]` -/
def P12262346692891064337.Spec : Prop :=
  ∀ n, P12262346692891064337.a n = A029250 n

end A029250

/-! ## A029250.P9929404065962022469

`A029254(n+1)-Δ[A029270(n)]`
-/

namespace A029250.P9929404065962022469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029254 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029250.P9929404065962022469

namespace A029250

/-- `A029254(n+1)-Δ[A029270(n)]` -/
def P9929404065962022469.Spec : Prop :=
  ∀ n, P9929404065962022469.a n = A029250 n

end A029250

/-! ## A029250.P3948094906876813349

`A029069(n+1)-A029149(n+1)`
-/

namespace A029250.P3948094906876813349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029069 (n + 1) - A029149 (n + 1)

end

end A029250.P3948094906876813349

namespace A029250

/-- `A029069(n+1)-A029149(n+1)` -/
def P3948094906876813349.Spec : Prop :=
  ∀ n, P3948094906876813349.a n = A029250 n

end A029250

/-!
# A029251: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^7)).

The programs for A029251, the canonical program `A029251.P7213786304021893106` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029251 has offset 0).

The definition of A029251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029251.P7213786304021893106

`A029150(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029251

/-- `A029150(n)-a(n-2)` -/
def P7213786304021893106.Spec : Prop :=
  ∀ n, P7213786304021893106.a n = A029251 n

theorem P7213786304021893106.correct : P7213786304021893106.Spec := by
  intro n
  simp only [A029251]

end A029251

/-! ## A029251.P14086861863837547009

`A008622(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029251.P14086861863837547009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A008622 n + a (n - 3)

end

end A029251.P14086861863837547009

namespace A029251

/-- `A008622(n)+a(n-3)` -/
def P14086861863837547009.Spec : Prop :=
  ∀ n, P14086861863837547009.a n = A029251 n

end A029251

/-! ## A029251.P16625031378753589037

`A029416(2*n)`
-/

namespace A029251.P16625031378753589037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029416 (2 * n)

end

end A029251.P16625031378753589037

namespace A029251

/-- `A029416(2*n)` -/
def P16625031378753589037.Spec : Prop :=
  ∀ n, P16625031378753589037.a n = A029251 n

end A029251

/-! ## A029251.P12466228858365464877

`A029045(n)-A029229(A005818(n+1))`
-/

namespace A029251.P12466228858365464877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029045 n - A029229 (A005818 (n + 1)).toNat

end

end A029251.P12466228858365464877

namespace A029251

/-- `A029045(n)-A029229(A005818(n+1))` -/
def P12466228858365464877.Spec : Prop :=
  ∀ n, P12466228858365464877.a n = A029251 n

end A029251

/-! ## A029251.P1740531342162191303

`A029045(n)-A029229(A020735(n+1))`
-/

namespace A029251.P1740531342162191303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029045 n - A029229 (A020735 (n + 1)).toNat

end

end A029251.P1740531342162191303

namespace A029251

/-- `A029045(n)-A029229(A020735(n+1))` -/
def P1740531342162191303.Spec : Prop :=
  ∀ n, P1740531342162191303.a n = A029251 n

end A029251

/-! ## A029251.P11788050576211271459

`∑[A025841(n)]-A029229(A005818(n+1))`
-/

namespace A029251.P11788050576211271459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029229 (A005818 (n + 1)).toNat

end

end A029251.P11788050576211271459

namespace A029251

/-- `∑[A025841(n)]-A029229(A005818(n+1))` -/
def P11788050576211271459.Spec : Prop :=
  ∀ n, P11788050576211271459.a n = A029251 n

end A029251

/-! ## A029251.P18346630176310063297

`∑[A025841(n)]-A029229(A020735(n+1))`
-/

namespace A029251.P18346630176310063297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029229 (A020735 (n + 1)).toNat

end

end A029251.P18346630176310063297

namespace A029251

/-- `∑[A025841(n)]-A029229(A020735(n+1))` -/
def P18346630176310063297.Spec : Prop :=
  ∀ n, P18346630176310063297.a n = A029251 n

end A029251

/-! ## A029251.P18032001148409275646

`A029218(A005843(n))-A029229(A005818(n+1))`
-/

namespace A029251.P18032001148409275646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A005843 n).toNat - A029229 (A005818 (n + 1)).toNat

end

end A029251.P18032001148409275646

namespace A029251

/-- `A029218(A005843(n))-A029229(A005818(n+1))` -/
def P18032001148409275646.Spec : Prop :=
  ∀ n, P18032001148409275646.a n = A029251 n

end A029251

/-! ## A029251.P14156799980117654878

`A029218(A005843(n))-A029229(A020735(n+1))`
-/

namespace A029251.P14156799980117654878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029218 (A005843 n).toNat - A029229 (A020735 (n + 1)).toNat

end

end A029251.P14156799980117654878

namespace A029251

/-- `A029218(A005843(n))-A029229(A020735(n+1))` -/
def P14156799980117654878.Spec : Prop :=
  ∀ n, P14156799980117654878.a n = A029251 n

end A029251

/-!
# A029252: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^8)).

The programs for A029252, the canonical program `A029252.P18007763040697263764` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029252 has offset 0).

The definition of A029252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029252.P18007763040697263764

`A029151(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029252

/-- `A029151(n)-a(n-2)` -/
def P18007763040697263764.Spec : Prop :=
  ∀ n, P18007763040697263764.a n = A029252 n

theorem P18007763040697263764.correct : P18007763040697263764.Spec := by
  intro n
  simp only [A029252]

end A029252

/-! ## A029252.P8660878249980005464

`A025842(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A029252.P8660878249980005464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A025842 n + a (n - 4)

end

end A029252.P8660878249980005464

namespace A029252

/-- `A025842(n)+a(n-4)` -/
def P8660878249980005464.Spec : Prop :=
  ∀ n, P8660878249980005464.a n = A029252 n

end A029252

/-! ## A029252.P8415088410402090428

`A029262(n)+A029352(n)-A025872(n)`
-/

namespace A029252.P8415088410402090428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029262 n + (A029352 n - A025872 n)

end

end A029252.P8415088410402090428

namespace A029252

/-- `A029262(n)+A029352(n)-A025872(n)` -/
def P8415088410402090428.Spec : Prop :=
  ∀ n, P8415088410402090428.a n = A029252 n

end A029252

/-! ## A029252.P17739857263728997675

`A008670(A028242(n))-A025796(A028242(n))`
-/

namespace A029252.P17739857263728997675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008670 (A028242 n).toNat - A025796 (A028242 n).toNat

end

end A029252.P17739857263728997675

namespace A029252

/-- `A008670(A028242(n))-A025796(A028242(n))` -/
def P17739857263728997675.Spec : Prop :=
  ∀ n, P17739857263728997675.a n = A029252 n

end A029252

/-! ## A029252.P190782565748400021

`A330955(A082587(n))`
-/

namespace A029252.P190782565748400021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330955 (A082587 n).toNat

end

end A029252.P190782565748400021

namespace A029252

/-- `A330955(A082587(n))` -/
def P190782565748400021.Spec : Prop :=
  ∀ n, P190782565748400021.a n = A029252 n

end A029252

/-!
# A029253: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^9)).

The programs for A029253, the canonical program `A029253.P12350371559057343419` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029253 has offset 0).

The definition of A029253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029253.P12350371559057343419

`A029152(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029253

/-- `A029152(n)-a(n-2)` -/
def P12350371559057343419.Spec : Prop :=
  ∀ n, P12350371559057343419.a n = A029253 n

theorem P12350371559057343419.correct : P12350371559057343419.Spec := by
  intro n
  simp only [A029253]

end A029253

/-! ## A029253.P6933744095404195903

`A025865(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029253.P6933744095404195903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025865 n + a (n - 3)

end

end A029253.P6933744095404195903

namespace A029253

/-- `A025865(n)+a(n-3)` -/
def P6933744095404195903.Spec : Prop :=
  ∀ n, P6933744095404195903.a n = A029253 n

end A029253

/-! ## A029253.P17457498158574462498

`A026810(A063942(n)+3)`
-/

namespace A029253.P17457498158574462498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A063942 n + 3).toNat

end

end A029253.P17457498158574462498

namespace A029253

/-- `A026810(A063942(n)+3)` -/
def P17457498158574462498.Spec : Prop :=
  ∀ n, P17457498158574462498.a n = A029253 n

end A029253

/-! ## A029253.P17754132570368386589

`A026810(A008574(A008620(n))-n)`
-/

namespace A029253.P17754132570368386589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008574 (A008620 n).toNat - (n : ℤ)).toNat

end

end A029253.P17754132570368386589

namespace A029253

/-- `A026810(A008574(A008620(n))-n)` -/
def P17754132570368386589.Spec : Prop :=
  ∀ n, P17754132570368386589.a n = A029253 n

end A029253

/-! ## A029253.P7668669732386494384

`A029152(n)-A288165(n+2)`
-/

namespace A029253.P7668669732386494384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029152 n - A288165 (n + 2)

end

end A029253.P7668669732386494384

namespace A029253

/-- `A029152(n)-A288165(n+2)` -/
def P7668669732386494384.Spec : Prop :=
  ∀ n, P7668669732386494384.a n = A029253 n

end A029253

/-! ## A029253.P6170659246034109407

`A288165(n+4)`
-/

namespace A029253.P6170659246034109407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (n + 4)

end

end A029253.P6170659246034109407

namespace A029253

/-- `A288165(n+4)` -/
def P6170659246034109407.Spec : Prop :=
  ∀ n, P6170659246034109407.a n = A029253 n

end A029253

/-! ## A029253.P5050897317532645656

`A026810(A008612(n+15)+A008612(n))`
-/

namespace A029253.P5050897317532645656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (A008612 (n + 15) + A008612 n).toNat

end

end A029253.P5050897317532645656

namespace A029253

/-- `A026810(A008612(n+15)+A008612(n))` -/
def P5050897317532645656.Spec : Prop :=
  ∀ n, P5050897317532645656.a n = A029253 n

end A029253

/-! ## A029253.P17932011797912320283

`A029425(2*n)`
-/

namespace A029253.P17932011797912320283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029425 (2 * n)

end

end A029253.P17932011797912320283

namespace A029253

/-- `A029425(2*n)` -/
def P17932011797912320283.Spec : Prop :=
  ∀ n, P17932011797912320283.a n = A029253 n

end A029253

/-! ## A029253.P4592993774205378508

`A029223(2*n)-A029238(2*n+7)`
-/

namespace A029253.P4592993774205378508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029223 (2 * n) - A029238 (2 * n + 7)

end

end A029253.P4592993774205378508

namespace A029253

/-- `A029223(2*n)-A029238(2*n+7)` -/
def P4592993774205378508.Spec : Prop :=
  ∀ n, P4592993774205378508.a n = A029253 n

end A029253

/-! ## A029253.P5380513033809188679

`A026810(Δ[A008611(A055999(n+4))])`
-/

namespace A029253.P5380513033809188679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A055999 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (f1 (n + 1) - f1 n).toNat

end

end A029253.P5380513033809188679

namespace A029253

/-- `A026810(Δ[A008611(A055999(n+4))])` -/
def P5380513033809188679.Spec : Prop :=
  ∀ n, P5380513033809188679.a n = A029253 n

end A029253

/-! ## A029253.P11699307151204869867

`A026810(Δ[A008611(A000217(n+7))])`
-/

namespace A029253.P11699307151204869867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000217 (n + 7)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (f1 (n + 1) - f1 n).toNat

end

end A029253.P11699307151204869867

namespace A029253

/-- `A026810(Δ[A008611(A000217(n+7))])` -/
def P11699307151204869867.Spec : Prop :=
  ∀ n, P11699307151204869867.a n = A029253 n

end A029253

/-!
# A029254: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^10)).

The programs for A029254, the canonical program `A029254.P26496680662170303` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029254 has offset 0).

The definition of A029254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029254.P14429340370169275245

`A029153(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029254.P14429340370169275245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029153 n - a (n - 2)

end

end A029254.P14429340370169275245

namespace A029254

/-- `A029153(n)-a(n-2)` -/
def P14429340370169275245.Spec : Prop :=
  ∀ n, P14429340370169275245.a n = A029254 n

end A029254

/-! ## A029254.P26496680662170303

`A029198(abs(A097062(n)))+A025857(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029254

/-- `A029198(abs(A097062(n)))+A025857(n)` -/
def P26496680662170303.Spec : Prop :=
  ∀ n, P26496680662170303.a n = A029254 n

theorem P26496680662170303.correct : P26496680662170303.Spec := by
  intro n
  simp only [A029254]

end A029254

/-! ## A029254.P6062119478668960552

`A029169(n)-A025857(abs(A097062(n)))`
-/

namespace A029254.P6062119478668960552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029169 n - A025857 |A097062 n|.toNat

end

end A029254.P6062119478668960552

namespace A029254

/-- `A029169(n)-A025857(abs(A097062(n)))` -/
def P6062119478668960552.Spec : Prop :=
  ∀ n, P6062119478668960552.a n = A029254 n

end A029254

/-! ## A029254.P17645670904842311944

`Δ[∑[A029273(n)]-A029298(n)]`
-/

namespace A029254.P17645670904842311944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029273 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029254.P17645670904842311944

namespace A029254

/-- `Δ[∑[A029273(n)]-A029298(n)]` -/
def P17645670904842311944.Spec : Prop :=
  ∀ n, P17645670904842311944.a n = A029254 n

end A029254

/-! ## A029254.P12217948604103285533

`A029273(n+1)-Δ[A029298(n)]`
-/

namespace A029254.P12217948604103285533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029273 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029254.P12217948604103285533

namespace A029254

/-- `A029273(n+1)-Δ[A029298(n)]` -/
def P12217948604103285533.Spec : Prop :=
  ∀ n, P12217948604103285533.a n = A029254 n

end A029254

/-!
# A029255: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^11)).

The programs for A029255, the canonical program `A029255.P3740031568134272622` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029255 has offset 0).

The definition of A029255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029255.P3740031568134272622

`A029154(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029255

/-- `A029154(n)-a(n-2)` -/
def P3740031568134272622.Spec : Prop :=
  ∀ n, P3740031568134272622.a n = A029255 n

theorem P3740031568134272622.correct : P3740031568134272622.Spec := by
  intro n
  simp only [A029255]

end A029255

/-! ## A029255.P6309526135965998172

`A025866(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029255.P6309526135965998172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025866 n + a (n - 3)

end

end A029255.P6309526135965998172

namespace A029255

/-- `A025866(n)+a(n-3)` -/
def P6309526135965998172.Spec : Prop :=
  ∀ n, P6309526135965998172.a n = A029255 n

end A029255

/-! ## A029255.P15070931781998293875

`A029269(n)+A029275(n)-A029289(n)`
-/

namespace A029255.P15070931781998293875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n + (A029275 n - A029289 n)

end

end A029255.P15070931781998293875

namespace A029255

/-- `A029269(n)+A029275(n)-A029289(n)` -/
def P15070931781998293875.Spec : Prop :=
  ∀ n, P15070931781998293875.a n = A029255 n

end A029255

/-! ## A029255.P6438576562402823110

`A029259(n)+A029303(n)-A029313(n)`
-/

namespace A029255.P6438576562402823110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029259 n + (A029303 n - A029313 n)

end

end A029255.P6438576562402823110

namespace A029255

/-- `A029259(n)+A029303(n)-A029313(n)` -/
def P6438576562402823110.Spec : Prop :=
  ∀ n, P6438576562402823110.a n = A029255 n

end A029255

/-! ## A029255.P658358420763557234

`A029427(2*n)`
-/

namespace A029255.P658358420763557234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029427 (2 * n)

end

end A029255.P658358420763557234

namespace A029255

/-- `A029427(2*n)` -/
def P658358420763557234.Spec : Prop :=
  ∀ n, P658358420763557234.a n = A029255 n

end A029255

/-! ## A029255.P11977746841181698164

`A029427(A005843(n))%A001504(n)`
-/

namespace A029255.P11977746841181698164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029427 (A005843 n).toNat) (A001504 n)

end

end A029255.P11977746841181698164

namespace A029255

/-- `A029427(A005843(n))%A001504(n)` -/
def P11977746841181698164.Spec : Prop :=
  ∀ n, P11977746841181698164.a n = A029255 n

end A029255

/-! ## A029255.P5235219358547295399

`gcd(A000038(n), A029427(A005843(n)))`
-/

namespace A029255.P5235219358547295399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A029427 (A005843 n).toNat)

end

end A029255.P5235219358547295399

namespace A029255

/-- `gcd(A000038(n), A029427(A005843(n)))` -/
def P5235219358547295399.Spec : Prop :=
  ∀ n, (P5235219358547295399.a n : ℤ) = A029255 n

end A029255

/-! ## A029255.P14759811655687671983

`A025922(2*n)+A029225(2*n)-A029240(2*n)`
-/

namespace A029255.P14759811655687671983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (2 * n) + (A029225 (2 * n) - A029240 (2 * n))

end

end A029255.P14759811655687671983

namespace A029255

/-- `A025922(2*n)+A029225(2*n)-A029240(2*n)` -/
def P14759811655687671983.Spec : Prop :=
  ∀ n, P14759811655687671983.a n = A029255 n

end A029255

/-! ## A029255.P16090118784703804062

`A025922(2*n)+A029386(2*n)-A029408(2*n)`
-/

namespace A029255.P16090118784703804062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 (2 * n) + (A029386 (2 * n) - A029408 (2 * n))

end

end A029255.P16090118784703804062

namespace A029255

/-- `A025922(2*n)+A029386(2*n)-A029408(2*n)` -/
def P16090118784703804062.Spec : Prop :=
  ∀ n, P16090118784703804062.a n = A029255 n

end A029255

/-! ## A029255.P4503426211367470061

`A029225(2*n)+A029444(2*n)-A029238(2*n)`
-/

namespace A029255.P4503426211367470061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n) + (A029444 (2 * n) - A029238 (2 * n))

end

end A029255.P4503426211367470061

namespace A029255

/-- `A029225(2*n)+A029444(2*n)-A029238(2*n)` -/
def P4503426211367470061.Spec : Prop :=
  ∀ n, P4503426211367470061.a n = A029255 n

end A029255

/-! ## A029255.P1287935126156060420

`A029386(2*n)+A029437(2*n)-A029395(2*n)`
-/

namespace A029255.P1287935126156060420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 (2 * n) + (A029437 (2 * n) - A029395 (2 * n))

end

end A029255.P1287935126156060420

namespace A029255

/-- `A029386(2*n)+A029437(2*n)-A029395(2*n)` -/
def P1287935126156060420.Spec : Prop :=
  ∀ n, P1287935126156060420.a n = A029255 n

end A029255

/-! ## A029255.P13647610024752493110

`A029225(2*n)-A029240(A004273(n+5))`
-/

namespace A029255.P13647610024752493110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029225 (2 * n) - A029240 (A004273 (n + 5)).toNat

end

end A029255.P13647610024752493110

namespace A029255

/-- `A029225(2*n)-A029240(A004273(n+5))` -/
def P13647610024752493110.Spec : Prop :=
  ∀ n, P13647610024752493110.a n = A029255 n

end A029255

/-! ## A029255.P14191498175409399726

`A029427(comp[or(1, n)])%A000423(n+1)`
-/

namespace A029255.P14191498175409399726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029427 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A000423 (n + 1))

end

end A029255.P14191498175409399726

namespace A029255

/-- `A029427(comp[or(1, n)])%A000423(n+1)` -/
def P14191498175409399726.Spec : Prop :=
  ∀ n, P14191498175409399726.a n = A029255 n

end A029255

/-!
# A029256: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^6)*(1-x^12)).

The programs for A029256, the canonical program `A029256.P11817622093904367384` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029256 has offset 0).

The definition of A029256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029256.P11817622093904367384

`A029155(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029256

/-- `A029155(n)-a(n-2)` -/
def P11817622093904367384.Spec : Prop :=
  ∀ n, P11817622093904367384.a n = A029256 n

theorem P11817622093904367384.correct : P11817622093904367384.Spec := by
  intro n
  simp only [A029256]

end A029256

/-! ## A029256.P6476330187649698743

`A006918(A008612(n))`
-/

namespace A029256.P6476330187649698743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A008612 n).toNat

end

end A029256.P6476330187649698743

namespace A029256

/-- `A006918(A008612(n))` -/
def P6476330187649698743.Spec : Prop :=
  ∀ n, P6476330187649698743.a n = A029256 n

end A029256

/-! ## A029256.P6080461887385929441

`A006918(A130823(n+1)-A110654(n))`
-/

namespace A029256.P6080461887385929441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A130823 (n + 1) - A110654 n).toNat

end

end A029256.P6080461887385929441

namespace A029256

/-- `A006918(A130823(n+1)-A110654(n))` -/
def P6080461887385929441.Spec : Prop :=
  ∀ n, P6080461887385929441.a n = A029256 n

end A029256

/-! ## A029256.P15223180834190003494

`A006918(A008615(A330396(n)))`
-/

namespace A029256.P15223180834190003494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A008615 (A330396 n).toNat).toNat

end

end A029256.P15223180834190003494

namespace A029256

/-- `A006918(A008615(A330396(n)))` -/
def P15223180834190003494.Spec : Prop :=
  ∀ n, P15223180834190003494.a n = A029256 n

end A029256

/-! ## A029256.P17307758810877920607

`A006918(Δ[A001840(n)-A001399(n)])`
-/

namespace A029256.P17307758810877920607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 n - A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (f1 (n + 1) - f1 n).toNat

end

end A029256.P17307758810877920607

namespace A029256

/-- `A006918(Δ[A001840(n)-A001399(n)])` -/
def P17307758810877920607.Spec : Prop :=
  ∀ n, P17307758810877920607.a n = A029256 n

end A029256

/-! ## A029256.P15782071209340295426

`A006918(A065033(n+1)-A008611(n+1))`
-/

namespace A029256.P15782071209340295426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A065033 (n + 1) - A008611 (n + 1)).toNat

end

end A029256.P15782071209340295426

namespace A029256

/-- `A006918(A065033(n+1)-A008611(n+1))` -/
def P15782071209340295426.Spec : Prop :=
  ∀ n, P15782071209340295426.a n = A029256 n

end A029256

/-! ## A029256.P2264252540835494906

`A006918(A008611(2*n)-A123108(n+1))`
-/

namespace A029256.P2264252540835494906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A008611 (2 * n) - A123108 (n + 1)).toNat

end

end A029256.P2264252540835494906

namespace A029256

/-- `A006918(A008611(2*n)-A123108(n+1))` -/
def P2264252540835494906.Spec : Prop :=
  ∀ n, P2264252540835494906.a n = A029256 n

end A029256

/-! ## A029256.P10570895416264142541

`A006918(A103221(2*n)-A103221(n+1))`
-/

namespace A029256.P10570895416264142541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (A103221 (2 * n) - A103221 (n + 1)).toNat

end

end A029256.P10570895416264142541

namespace A029256

/-- `A006918(A103221(2*n)-A103221(n+1))` -/
def P10570895416264142541.Spec : Prop :=
  ∀ n, P10570895416264142541.a n = A029256 n

end A029256

/-! ## A029256.P7504629990793132716

`A004526(A280186(A008612(n)+3))`
-/

namespace A029256.P7504629990793132716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A280186 (A008612 n + 3).toNat).toNat

end

end A029256.P7504629990793132716

namespace A029256

/-- `A004526(A280186(A008612(n)+3))` -/
def P7504629990793132716.Spec : Prop :=
  ∀ n, P7504629990793132716.a n = A029256 n

end A029256

/-!
# A029257: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^8)).

The programs for A029257, the canonical program `A029257.P13931021118103326838` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029257 has offset 0).

The definition of A029257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029257.P13931021118103326838

`A029156(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029257

/-- `A029156(n)-a(n-2)` -/
def P13931021118103326838.Spec : Prop :=
  ∀ n, P13931021118103326838.a n = A029257 n

theorem P13931021118103326838.correct : P13931021118103326838.Spec := by
  intro n
  simp only [A029257]

end A029257

/-! ## A029257.P1739676430073754429

`A025867(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029257.P1739676430073754429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025867 n + a (n - 3)

end

end A029257.P1739676430073754429

namespace A029257

/-- `A025867(n)+a(n-3)` -/
def P1739676430073754429.Spec : Prop :=
  ∀ n, P1739676430073754429.a n = A029257 n

end A029257

/-! ## A029257.P153427885421191891

`A025845(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A029257.P153427885421191891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A025845 n + a (n - 4)

end

end A029257.P153427885421191891

namespace A029257

/-- `A025845(n)+a(n-4)` -/
def P153427885421191891.Spec : Prop :=
  ∀ n, P153427885421191891.a n = A029257 n

end A029257

/-! ## A029257.P6084670525139715436

`A029347(n+1)+A029347(n)-A025897(n+1)`
-/

namespace A029257.P6084670525139715436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029347 (n + 1) + (A029347 n - A025897 (n + 1))

end

end A029257.P6084670525139715436

namespace A029257

/-- `A029347(n+1)+A029347(n)-A025897(n+1)` -/
def P6084670525139715436.Spec : Prop :=
  ∀ n, P6084670525139715436.a n = A029257 n

end A029257

/-! ## A029257.P16694529411301342743

`A029181(n+1)+A029347(n)-A029214(n+1)`
-/

namespace A029257.P16694529411301342743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029181 (n + 1) + (A029347 n - A029214 (n + 1))

end

end A029257.P16694529411301342743

namespace A029257

/-- `A029181(n+1)+A029347(n)-A029214(n+1)` -/
def P16694529411301342743.Spec : Prop :=
  ∀ n, P16694529411301342743.a n = A029257 n

end A029257

/-!
# A029258: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^9)).

The programs for A029258, the canonical program `A029258.P10291896197430943763` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029258 has offset 0).

The definition of A029258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029258.P10291896197430943763

`A029157(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029258

/-- `A029157(n)-a(n-2)` -/
def P10291896197430943763.Spec : Prop :=
  ∀ n, P10291896197430943763.a n = A029258 n

theorem P10291896197430943763.correct : P10291896197430943763.Spec := by
  intro n
  simp only [A029258]

end A029258

/-! ## A029258.P837271586487093336

`A025868(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029258.P837271586487093336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025868 n + a (n - 3)

end

end A029258.P837271586487093336

namespace A029258

/-- `A025868(n)+a(n-3)` -/
def P837271586487093336.Spec : Prop :=
  ∀ n, P837271586487093336.a n = A029258 n

end A029258

/-! ## A029258.P5679108823505631186

`A029434(2*n+1)+A025898(n)`
-/

namespace A029258.P5679108823505631186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029434 (2 * n + 1) + A025898 n

end

end A029258.P5679108823505631186

namespace A029258

/-- `A029434(2*n+1)+A025898(n)` -/
def P5679108823505631186.Spec : Prop :=
  ∀ n, P5679108823505631186.a n = A029258 n

end A029258

/-! ## A029258.P8473984652425251982

`A029050(n)-A029359(2*n+5)`
-/

namespace A029258.P8473984652425251982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029050 n - A029359 (2 * n + 5)

end

end A029258.P8473984652425251982

namespace A029258

/-- `A029050(n)-A029359(2*n+5)` -/
def P8473984652425251982.Spec : Prop :=
  ∀ n, P8473984652425251982.a n = A029258 n

end A029258

/-! ## A029258.P1711978931928300438

`A029354(2*(n+2))-A029245(n+2)`
-/

namespace A029258.P1711978931928300438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (2 * (n + 2)) - A029245 (n + 2)

end

end A029258.P1711978931928300438

namespace A029258

/-- `A029354(2*(n+2))-A029245(n+2)` -/
def P1711978931928300438.Spec : Prop :=
  ∀ n, P1711978931928300438.a n = A029258 n

end A029258

/-!
# A029259: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^10)).

The programs for A029259, the canonical program `A029259.P3243779885976804668` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029259 has offset 0).

The definition of A029259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029259.P3243779885976804668

`A029158(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029259

/-- `A029158(n)-a(n-2)` -/
def P3243779885976804668.Spec : Prop :=
  ∀ n, P3243779885976804668.a n = A029259 n

theorem P3243779885976804668.correct : P3243779885976804668.Spec := by
  intro n
  simp only [A029259]

end A029259

/-! ## A029259.P7900592992373119259

`A025869(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029259.P7900592992373119259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025869 n + a (n - 3)

end

end A029259.P7900592992373119259

namespace A029259

/-- `A025869(n)+a(n-3)` -/
def P7900592992373119259.Spec : Prop :=
  ∀ n, P7900592992373119259.a n = A029259 n

end A029259

/-! ## A029259.P15542009572181231950

`A029349(abs(3-n))+A029349(n)`
-/

namespace A029259.P15542009572181231950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029349 |3 - (n : ℤ)|.toNat + A029349 n

end

end A029259.P15542009572181231950

namespace A029259

/-- `A029349(abs(3-n))+A029349(n)` -/
def P15542009572181231950.Spec : Prop :=
  ∀ n, P15542009572181231950.a n = A029259 n

end A029259

/-! ## A029259.P4308848769755794693

`A029255(n)+A029313(n)-A029303(n)`
-/

namespace A029259.P4308848769755794693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029255 n + (A029313 n - A029303 n)

end

end A029259.P4308848769755794693

namespace A029259

/-- `A029255(n)+A029313(n)-A029303(n)` -/
def P4308848769755794693.Spec : Prop :=
  ∀ n, P4308848769755794693.a n = A029259 n

end A029259

/-! ## A029259.P136407354740605554

`Δ[∑[A029326(n)]-A025899(n)]`
-/

namespace A029259.P136407354740605554
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029326 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029259.P136407354740605554

namespace A029259

/-- `Δ[∑[A029326(n)]-A025899(n)]` -/
def P136407354740605554.Spec : Prop :=
  ∀ n, P136407354740605554.a n = A029259 n

end A029259

/-! ## A029259.P17439173340450875176

`A029326(n+1)-Δ[A025899(n)]`
-/

namespace A029259.P17439173340450875176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029326 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029259.P17439173340450875176

namespace A029259

/-- `A029326(n+1)-Δ[A025899(n)]` -/
def P17439173340450875176.Spec : Prop :=
  ∀ n, P17439173340450875176.a n = A029259 n

end A029259

/-!
# A029260: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^11)).

The programs for A029260, the canonical program `A029260.P13688966386686855141` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029260 has offset 0).

The definition of A029260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029260.P13688966386686855141

`A029159(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029260

/-- `A029159(n)-a(n-2)` -/
def P13688966386686855141.Spec : Prop :=
  ∀ n, P13688966386686855141.a n = A029260 n

theorem P13688966386686855141.correct : P13688966386686855141.Spec := by
  intro n
  simp only [A029260]

end A029260

/-! ## A029260.P16443673039959258333

`A025870(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029260.P16443673039959258333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025870 n + a (n - 3)

end

end A029260.P16443673039959258333

namespace A029260

/-- `A025870(n)+a(n-3)` -/
def P16443673039959258333.Spec : Prop :=
  ∀ n, P16443673039959258333.a n = A029260 n

end A029260

/-! ## A029260.P10133032228344377635

`A029350(abs(3-n))+A029350(n)`
-/

namespace A029260.P10133032228344377635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029350 |3 - (n : ℤ)|.toNat + A029350 n

end

end A029260.P10133032228344377635

namespace A029260

/-- `A029350(abs(3-n))+A029350(n)` -/
def P10133032228344377635.Spec : Prop :=
  ∀ n, P10133032228344377635.a n = A029260 n

end A029260

/-! ## A029260.P582542989409402581

`A055640(and(A300501(n+1), A300523(n)))`
-/

namespace A029260.P582542989409402581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.land (A300501 (n + 1)) (A300523 n)).toNat

end

end A029260.P582542989409402581

namespace A029260

/-- `A055640(and(A300501(n+1), A300523(n)))` -/
def P582542989409402581.Spec : Prop :=
  ∀ n, P582542989409402581.a n = A029260 n

end A029260

/-! ## A029260.P911472124034306419

`A000120(A308616(n+1)^A046951(n+1))`
-/

namespace A029260.P911472124034306419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A308616 (n + 1) : ℚ) ^ (A046951 (n + 1) : ℤ))).toNat

end

end A029260.P911472124034306419

namespace A029260

/-- `A000120(A308616(n+1)^A046951(n+1))` -/
def P911472124034306419.Spec : Prop :=
  ∀ n, P911472124034306419.a n = A029260 n

end A029260

/-!
# A029261: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^7)*(1-x^12)).

The programs for A029261, the canonical program `A029261.P4054791991548591235` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029261 has offset 0).

The definition of A029261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029261.P11377159486393223116

`A029160(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029261.P11377159486393223116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029160 n - a (n - 2)

end

end A029261.P11377159486393223116

namespace A029261

/-- `A029160(n)-a(n-2)` -/
def P11377159486393223116.Spec : Prop :=
  ∀ n, P11377159486393223116.a n = A029261 n

end A029261

/-! ## A029261.P4054791991548591235

`A025871(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029261

/-- `A025871(n)+a(n-3)` -/
def P4054791991548591235.Spec : Prop :=
  ∀ n, P4054791991548591235.a n = A029261 n

theorem P4054791991548591235.correct : P4054791991548591235.Spec := by
  intro n
  simp only [A029261]

end A029261

/-! ## A029261.P10134714334967297452

`A029271(n)+A029280(n)-A029291(n)`
-/

namespace A029261.P10134714334967297452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029271 n + (A029280 n - A029291 n)

end

end A029261.P10134714334967297452

namespace A029261

/-- `A029271(n)+A029280(n)-A029291(n)` -/
def P10134714334967297452.Spec : Prop :=
  ∀ n, P10134714334967297452.a n = A029261 n

end A029261

/-! ## A029261.P8055952251066661733

`A029077(n+1)-A029160(n+1)`
-/

namespace A029261.P8055952251066661733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029077 (n + 1) - A029160 (n + 1)

end

end A029261.P8055952251066661733

namespace A029261

/-- `A029077(n+1)-A029160(n+1)` -/
def P8055952251066661733.Spec : Prop :=
  ∀ n, P8055952251066661733.a n = A029261 n

end A029261

/-! ## A029261.P10051052782577556723

`A029053(n+3)-A029077(n+3)`
-/

namespace A029261.P10051052782577556723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029053 (n + 3) - A029077 (n + 3)

end

end A029261.P10051052782577556723

namespace A029261

/-- `A029053(n+3)-A029077(n+3)` -/
def P10051052782577556723.Spec : Prop :=
  ∀ n, P10051052782577556723.a n = A029261 n

end A029261

/-!
# A029262: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)*(1-x^9)).

The programs for A029262, the canonical program `A029262.P6376647756052350622` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029262 has offset 0).

The definition of A029262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029262.P6376647756052350622

`A029161(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029262

/-- `A029161(n)-a(n-2)` -/
def P6376647756052350622.Spec : Prop :=
  ∀ n, P6376647756052350622.a n = A029262 n

theorem P6376647756052350622.correct : P6376647756052350622.Spec := by
  intro n
  simp only [A029262]

end A029262

/-! ## A029262.P10464359214600764631

`A025872(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029262.P10464359214600764631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025872 n + a (n - 3)

end

end A029262.P10464359214600764631

namespace A029262

/-- `A025872(n)+a(n-3)` -/
def P10464359214600764631.Spec : Prop :=
  ∀ n, P10464359214600764631.a n = A029262 n

end A029262

/-! ## A029262.P17415711107612928812

`A025872(n)+A029054(n)-A029078(n)`
-/

namespace A029262.P17415711107612928812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029054 n - A029078 n)

end

end A029262.P17415711107612928812

namespace A029262

/-- `A025872(n)+A029054(n)-A029078(n)` -/
def P17415711107612928812.Spec : Prop :=
  ∀ n, P17415711107612928812.a n = A029262 n

end A029262

/-! ## A029262.P180836361109164356

`A025872(n)+A029252(n)-A029352(n)`
-/

namespace A029262.P180836361109164356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025872 n + (A029252 n - A029352 n)

end

end A029262.P180836361109164356

namespace A029262

/-- `A025872(n)+A029252(n)-A029352(n)` -/
def P180836361109164356.Spec : Prop :=
  ∀ n, P180836361109164356.a n = A029262 n

end A029262

/-! ## A029262.P8888290814064345998

`A029054(n)+A029359(n)-A029074(n)`
-/

namespace A029262.P8888290814064345998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029054 n + (A029359 n - A029074 n)

end

end A029262.P8888290814064345998

namespace A029262

/-- `A029054(n)+A029359(n)-A029074(n)` -/
def P8888290814064345998.Spec : Prop :=
  ∀ n, P8888290814064345998.a n = A029262 n

end A029262

/-!
# A029263: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)*(1-x^10)).

The programs for A029263, the canonical program `A029263.P15676493638120019534` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029263 has offset 0).

The definition of A029263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029263.P3179319287318453208

`A029162(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029263.P3179319287318453208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029162 n - a (n - 2)

end

end A029263.P3179319287318453208

namespace A029263

/-- `A029162(n)-a(n-2)` -/
def P3179319287318453208.Spec : Prop :=
  ∀ n, P3179319287318453208.a n = A029263 n

end A029263

/-! ## A029263.P9949044951884566512

`A025851(n)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A029263.P9949044951884566512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 1] fun n a =>
  A025851 n + a (n - 4)

end

end A029263.P9949044951884566512

namespace A029263

/-- `A025851(n)+a(n-4)` -/
def P9949044951884566512.Spec : Prop :=
  ∀ n, P9949044951884566512.a n = A029263 n

end A029263

/-! ## A029263.P15676493638120019534

`A008667(abs(Δ[A029578(n)]))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029263

/-- `A008667(abs(Δ[A029578(n)]))` -/
def P15676493638120019534.Spec : Prop :=
  ∀ n, P15676493638120019534.a n = A029263 n

theorem P15676493638120019534.correct : P15676493638120019534.Spec := by
  intro n
  simp only [A029263]

end A029263

/-! ## A029263.P9353358434513708878

`A008667(abs(1-A028242(n)))`
-/

namespace A029263.P9353358434513708878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 |1 - A028242 n|.toNat

end

end A029263.P9353358434513708878

namespace A029263

/-- `A008667(abs(1-A028242(n)))` -/
def P9353358434513708878.Spec : Prop :=
  ∀ n, P9353358434513708878.a n = A029263 n

end A029263

/-! ## A029263.P14192038638705511421

`A008667(A026741(n)%A266977(n))`
-/

namespace A029263.P14192038638705511421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (Int.tmod (A026741 n) (A266977 n)).toNat

end

end A029263.P14192038638705511421

namespace A029263

/-- `A008667(A026741(n)%A266977(n))` -/
def P14192038638705511421.Spec : Prop :=
  ∀ n, P14192038638705511421.a n = A029263 n

end A029263

/-! ## A029263.P9419148473897753217

`A008667((A008619(n)+n+1)%A008619(n+1))`
-/

namespace A029263.P9419148473897753217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 (Int.tmod (A008619 n + (n + 1 : ℤ)) (A008619 (n + 1))).toNat

end

end A029263.P9419148473897753217

namespace A029263

/-- `A008667((A008619(n)+n+1)%A008619(n+1))` -/
def P9419148473897753217.Spec : Prop :=
  ∀ n, P9419148473897753217.a n = A029263 n

end A029263

/-! ## A029263.P1168122454290764818

`A029327(xor(1, n+1))`
-/

namespace A029263.P1168122454290764818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (Nat.xor 1 (n + 1))

end

end A029263.P1168122454290764818

namespace A029263

/-- `A029327(xor(1, n+1))` -/
def P1168122454290764818.Spec : Prop :=
  ∀ n, P1168122454290764818.a n = A029263 n

end A029263

/-! ## A029263.P5962455800187393018

`A029327(A004442(n+1))`
-/

namespace A029263.P5962455800187393018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (A004442 (n + 1)).toNat

end

end A029263.P5962455800187393018

namespace A029263

/-- `A029327(A004442(n+1))` -/
def P5962455800187393018.Spec : Prop :=
  ∀ n, P5962455800187393018.a n = A029263 n

end A029263

/-! ## A029263.P15119268649841319232

`A008667(abs(Δ[A029579(n)]))`
-/

namespace A029263.P15119268649841319232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008667 |f1 (n + 1) - f1 n|.toNat

end

end A029263.P15119268649841319232

namespace A029263

/-- `A008667(abs(Δ[A029579(n)]))` -/
def P15119268649841319232.Spec : Prop :=
  ∀ n, P15119268649841319232.a n = A029263 n

end A029263

/-! ## A029263.P14147146841258704257

`A029327((A008851(n+1)+n+1)%A008851(n+2))`
-/

namespace A029263.P14147146841258704257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (Int.tmod (A008851 (n + 1) + (n + 1 : ℤ)) (A008851 (n + 2))).toNat

end

end A029263.P14147146841258704257

namespace A029263

/-- `A029327((A008851(n+1)+n+1)%A008851(n+2))` -/
def P14147146841258704257.Spec : Prop :=
  ∀ n, P14147146841258704257.a n = A029263 n

end A029263

/-! ## A029263.P16892454111337022854

`A029389(A007494(n))`
-/

namespace A029263.P16892454111337022854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029389 (A007494 n).toNat

end

end A029263.P16892454111337022854

namespace A029263

/-- `A029389(A007494(n))` -/
def P16892454111337022854.Spec : Prop :=
  ∀ n, P16892454111337022854.a n = A029263 n

end A029263

/-! ## A029263.P15960740838860645817

`A029389(A168202(n+1))`
-/

namespace A029263.P15960740838860645817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029389 (A168202 (n + 1)).toNat

end

end A029263.P15960740838860645817

namespace A029263

/-- `A029389(A168202(n+1))` -/
def P15960740838860645817.Spec : Prop :=
  ∀ n, P15960740838860645817.a n = A029263 n

end A029263

/-! ## A029263.P11383434899961123695

`A029389(A168197(n+1))`
-/

namespace A029263.P11383434899961123695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029389 (A168197 (n + 1)).toNat

end

end A029263.P11383434899961123695

namespace A029263

/-- `A029389(A168197(n+1))` -/
def P11383434899961123695.Spec : Prop :=
  ∀ n, P11383434899961123695.a n = A029263 n

end A029263

/-! ## A029263.P4495994933499564508

`A029327(A004442(2*n)-A004442(n))`
-/

namespace A029263.P4495994933499564508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029327 (A004442 (2 * n) - A004442 n).toNat

end

end A029263.P4495994933499564508

namespace A029263

/-- `A029327(A004442(2*n)-A004442(n))` -/
def P4495994933499564508.Spec : Prop :=
  ∀ n, P4495994933499564508.a n = A029263 n

end A029263

/-!
# A029264: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)*(1-x^11)).

The programs for A029264, the canonical program `A029264.P17970593418679929314` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029264 has offset 0).

The definition of A029264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029264.P8928690639677092910

`A029163(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029264.P8928690639677092910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029163 n - a (n - 2)

end

end A029264.P8928690639677092910

namespace A029264

/-- `A029163(n)-a(n-2)` -/
def P8928690639677092910.Spec : Prop :=
  ∀ n, P8928690639677092910.a n = A029264 n

end A029264

/-! ## A029264.P17970593418679929314

`A025873(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029264

/-- `A025873(n)+a(n-3)` -/
def P17970593418679929314.Spec : Prop :=
  ∀ n, P17970593418679929314.a n = A029264 n

theorem P17970593418679929314.correct : P17970593418679929314.Spec := by
  intro n
  simp only [A029264]

end A029264

/-! ## A029264.P46535268901615177

`A127322(A173258(n)+A058937(n+1))`
-/

namespace A029264.P46535268901615177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A173258 n + A058937 (n + 1)).toNat

end

end A029264.P46535268901615177

namespace A029264

/-- `A127322(A173258(n)+A058937(n+1))` -/
def P46535268901615177.Spec : Prop :=
  ∀ n, P46535268901615177.a n = A029264 n

end A029264

/-! ## A029264.P17682690843365386924

`A077267(A245092(A245092(n)+A001644(n)))`
-/

namespace A029264.P17682690843365386924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (A245092 (A245092 n + A001644 n).toNat).toNat

end

end A029264.P17682690843365386924

namespace A029264

/-- `A077267(A245092(A245092(n)+A001644(n)))` -/
def P17682690843365386924.Spec : Prop :=
  ∀ n, P17682690843365386924.a n = A029264 n

end A029264

/-!
# A029265: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^8)*(1-x^12)).

The programs for A029265, the canonical program `A029265.P2324824630409492359` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029265 has offset 0).

The definition of A029265 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029265.P2324824630409492359

`A029164(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029265

/-- `A029164(n)-a(n-2)` -/
def P2324824630409492359.Spec : Prop :=
  ∀ n, P2324824630409492359.a n = A029265 n

theorem P2324824630409492359.correct : P2324824630409492359.Spec := by
  intro n
  simp only [A029265]

end A029265

/-! ## A029265.P15718242435547147120

`A029136(abs(Δ[A029578(n)]))`
-/

namespace A029265.P15718242435547147120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 |f1 (n + 1) - f1 n|.toNat

end

end A029265.P15718242435547147120

namespace A029265

/-- `A029136(abs(Δ[A029578(n)]))` -/
def P15718242435547147120.Spec : Prop :=
  ∀ n, P15718242435547147120.a n = A029265 n

end A029265

/-! ## A029265.P18291748911481287326

`A307872(A028242(A028242(n)+3))`
-/

namespace A029265.P18291748911481287326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307872 (A028242 (A028242 n + 3).toNat).toNat

end

end A029265.P18291748911481287326

namespace A029265

/-- `A307872(A028242(A028242(n)+3))` -/
def P18291748911481287326.Spec : Prop :=
  ∀ n, P18291748911481287326.a n = A029265 n

end A029265

/-! ## A029265.P5431354554519752830

`A029136(A026741(n)%A080513(n))`
-/

namespace A029265.P5431354554519752830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (Int.tmod (A026741 n) (A080513 n)).toNat

end

end A029265.P5431354554519752830

namespace A029265

/-- `A029136(A026741(n)%A080513(n))` -/
def P5431354554519752830.Spec : Prop :=
  ∀ n, P5431354554519752830.a n = A029265 n

end A029265

/-! ## A029265.P8801995310984824525

`A029136(abs(A004442(n)-A008619(n)))`
-/

namespace A029265.P8801995310984824525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 |A004442 n - A008619 n|.toNat

end

end A029265.P8801995310984824525

namespace A029265

/-- `A029136(abs(A004442(n)-A008619(n)))` -/
def P8801995310984824525.Spec : Prop :=
  ∀ n, P8801995310984824525.a n = A029265 n

end A029265

/-! ## A029265.P7982265118853974965

`A029136(A171526(n+1)%A052938(n))`
-/

namespace A029265.P7982265118853974965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (Int.tmod (A171526 (n + 1)) (A052938 n)).toNat

end

end A029265.P7982265118853974965

namespace A029265

/-- `A029136(A171526(n+1)%A052938(n))` -/
def P7982265118853974965.Spec : Prop :=
  ∀ n, P7982265118853974965.a n = A029265 n

end A029265

/-! ## A029265.P2017456262055809008

`A029136(abs(Δ[A029579(n)]))`
-/

namespace A029265.P2017456262055809008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 |f1 (n + 1) - f1 n|.toNat

end

end A029265.P2017456262055809008

namespace A029265

/-- `A029136(abs(Δ[A029579(n)]))` -/
def P2017456262055809008.Spec : Prop :=
  ∀ n, P2017456262055809008.a n = A029265 n

end A029265

/-! ## A029265.P6414984508004193309

`A029136(A000196(abs(A317300(n))))`
-/

namespace A029265.P6414984508004193309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029136 (A000196 |A317300 n|.toNat).toNat

end

end A029265.P6414984508004193309

namespace A029265

/-- `A029136(A000196(abs(A317300(n))))` -/
def P6414984508004193309.Spec : Prop :=
  ∀ n, P6414984508004193309.a n = A029265 n

end A029265

/-!
# A029266: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)*(1-x^10)).

The programs for A029266, the canonical program `A029266.P16326010503023563996` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029266 has offset 0).

The definition of A029266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029266.P16326010503023563996

`A029165(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029266

/-- `A029165(n)-a(n-2)` -/
def P16326010503023563996.Spec : Prop :=
  ∀ n, P16326010503023563996.a n = A029266 n

theorem P16326010503023563996.correct : P16326010503023563996.Spec := by
  intro n
  simp only [A029266]

end A029266

/-! ## A029266.P10556898908222717769

`A029080(n+1)-A029165(n+1)`
-/

namespace A029266.P10556898908222717769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029080 (n + 1) - A029165 (n + 1)

end

end A029266.P10556898908222717769

namespace A029266

/-- `A029080(n+1)-A029165(n+1)` -/
def P10556898908222717769.Spec : Prop :=
  ∀ n, P10556898908222717769.a n = A029266 n

end A029266

/-! ## A029266.P10096055100811315377

`A029354(n+1)+A029354(n)-A025904(n+1)`
-/

namespace A029266.P10096055100811315377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (n + 1) + (A029354 n - A025904 (n + 1))

end

end A029266.P10096055100811315377

namespace A029266

/-- `A029354(n+1)+A029354(n)-A025904(n+1)` -/
def P10096055100811315377.Spec : Prop :=
  ∀ n, P10096055100811315377.a n = A029266 n

end A029266

/-! ## A029266.P4479075921890515680

`A029179(n+1)+A029188(n)-A029153(n+1)`
-/

namespace A029266.P4479075921890515680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029179 (n + 1) + (A029188 n - A029153 (n + 1))

end

end A029266.P4479075921890515680

namespace A029266

/-- `A029179(n+1)+A029188(n)-A029153(n+1)` -/
def P4479075921890515680.Spec : Prop :=
  ∀ n, P4479075921890515680.a n = A029266 n

end A029266

/-! ## A029266.P13809992209912738446

`A029188(n+1)+A029188(n)-A029165(n+1)`
-/

namespace A029266.P13809992209912738446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (n + 1) + (A029188 n - A029165 (n + 1))

end

end A029266.P13809992209912738446

namespace A029266

/-- `A029188(n+1)+A029188(n)-A029165(n+1)` -/
def P13809992209912738446.Spec : Prop :=
  ∀ n, P13809992209912738446.a n = A029266 n

end A029266

/-! ## A029266.P15578224933094787203

`A029188(n+1)+A029354(n)-A029221(n+1)`
-/

namespace A029266.P15578224933094787203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029188 (n + 1) + (A029354 n - A029221 (n + 1))

end

end A029266.P15578224933094787203

namespace A029266

/-- `A029188(n+1)+A029354(n)-A029221(n+1)` -/
def P15578224933094787203.Spec : Prop :=
  ∀ n, P15578224933094787203.a n = A029266 n

end A029266

/-!
# A029267: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)*(1-x^11)).

The programs for A029267, the canonical program `A029267.P1364941356505617058` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029267 has offset 0).

The definition of A029267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029267.P1364941356505617058

`A029166(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029267

/-- `A029166(n)-a(n-2)` -/
def P1364941356505617058.Spec : Prop :=
  ∀ n, P1364941356505617058.a n = A029267 n

theorem P1364941356505617058.correct : P1364941356505617058.Spec := by
  intro n
  simp only [A029267]

end A029267

/-! ## A029267.P11485372959722356310

`A029249(n)+A029302(n)-A029274(n)`
-/

namespace A029267.P11485372959722356310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029249 n + (A029302 n - A029274 n)

end

end A029267.P11485372959722356310

namespace A029267

/-- `A029249(n)+A029302(n)-A029274(n)` -/
def P11485372959722356310.Spec : Prop :=
  ∀ n, P11485372959722356310.a n = A029267 n

end A029267

/-! ## A029267.P15254455808875773200

`A029059(n+3)-A029081(n+3)`
-/

namespace A029267.P15254455808875773200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029059 (n + 3) - A029081 (n + 3)

end

end A029267.P15254455808875773200

namespace A029267

/-- `A029059(n+3)-A029081(n+3)` -/
def P15254455808875773200.Spec : Prop :=
  ∀ n, P15254455808875773200.a n = A029267 n

end A029267

/-! ## A029267.P7389397686162194242

`A076493(A289920(n))`
-/

namespace A029267.P7389397686162194242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076493 (A289920 n).toNat

end

end A029267.P7389397686162194242

namespace A029267

/-- `A076493(A289920(n))` -/
def P7389397686162194242.Spec : Prop :=
  ∀ n, P7389397686162194242.a n = A029267 n

end A029267

/-! ## A029267.P12167692335599988140

`A328615(A222786(n+3))`
-/

namespace A029267.P12167692335599988140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328615 (A222786 (n + 3)).toNat

end

end A029267.P12167692335599988140

namespace A029267

/-- `A328615(A222786(n+3))` -/
def P12167692335599988140.Spec : Prop :=
  ∀ n, P12167692335599988140.a n = A029267 n

end A029267

/-!
# A029268: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)*(1-x^12)).

The programs for A029268, the canonical program `A029268.P3355551099729970313` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029268 has offset 0).

The definition of A029268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029268.P3355551099729970313

`A029167(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029268

/-- `A029167(n)-a(n-2)` -/
def P3355551099729970313.Spec : Prop :=
  ∀ n, P3355551099729970313.a n = A029268 n

theorem P3355551099729970313.correct : P3355551099729970313.Spec := by
  intro n
  simp only [A029268]

end A029268

/-! ## A029268.P18102435172817384814

`A025874(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029268.P18102435172817384814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025874 n + a (n - 3)

end

end A029268.P18102435172817384814

namespace A029268

/-- `A025874(n)+a(n-3)` -/
def P18102435172817384814.Spec : Prop :=
  ∀ n, P18102435172817384814.a n = A029268 n

end A029268

/-! ## A029268.P17441360640661572267

`A340761(A063942(n)+3)`
-/

namespace A029268.P17441360640661572267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340761 (A063942 n + 3).toNat

end

end A029268.P17441360640661572267

namespace A029268

/-- `A340761(A063942(n)+3)` -/
def P17441360640661572267.Spec : Prop :=
  ∀ n, P17441360640661572267.a n = A029268 n

end A029268

/-! ## A029268.P2961568530896329047

`A005811(A024656(A025831(n)²))`
-/

namespace A029268.P2961568530896329047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A024656 (A025831 n ^ 2).toNat).toNat

end

end A029268.P2961568530896329047

namespace A029268

/-- `A005811(A024656(A025831(n)²))` -/
def P2961568530896329047.Spec : Prop :=
  ∀ n, P2961568530896329047.a n = A029268 n

end A029268

/-! ## A029268.P7545031066880808299

`gcd(A109699(2*n), A339087(A248651(n+1)))`
-/

namespace A029268.P7545031066880808299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109699 (2 * n)) (A339087 (A248651 (n + 1)).toNat)

end

end A029268.P7545031066880808299

namespace A029268

/-- `gcd(A109699(2*n), A339087(A248651(n+1)))` -/
def P7545031066880808299.Spec : Prop :=
  ∀ n, (P7545031066880808299.a n : ℤ) = A029268 n

end A029268

/-!
# A029269: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)*(1-x^11)).

The programs for A029269, the canonical program `A029269.P9793256298477523850` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029269 has offset 0).

The definition of A029269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029269.P9793256298477523850

`A029168(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029269

/-- `A029168(n)-a(n-2)` -/
def P9793256298477523850.Spec : Prop :=
  ∀ n, P9793256298477523850.a n = A029269 n

theorem P9793256298477523850.correct : P9793256298477523850.Spec := by
  intro n
  simp only [A029269]

end A029269

/-! ## A029269.P7166367516887406926

`A025921(n)+A029060(n)-A029098(n)`
-/

namespace A029269.P7166367516887406926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n + (A029060 n - A029098 n)

end

end A029269.P7166367516887406926

namespace A029269

/-- `A025921(n)+A029060(n)-A029098(n)` -/
def P7166367516887406926.Spec : Prop :=
  ∀ n, P7166367516887406926.a n = A029269 n

end A029269

/-! ## A029269.P5225365401373977978

`A029255(n)+A029289(n)-A029275(n)`
-/

namespace A029269.P5225365401373977978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029255 n + (A029289 n - A029275 n)

end

end A029269.P5225365401373977978

namespace A029269

/-- `A029255(n)+A029289(n)-A029275(n)` -/
def P5225365401373977978.Spec : Prop :=
  ∀ n, P5225365401373977978.a n = A029269 n

end A029269

/-! ## A029269.P7191663793974739488

`A029083(n+1)-A029168(n+1)`
-/

namespace A029269.P7191663793974739488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029083 (n + 1) - A029168 (n + 1)

end

end A029269.P7191663793974739488

namespace A029269

/-- `A029083(n+1)-A029168(n+1)` -/
def P7191663793974739488.Spec : Prop :=
  ∀ n, P7191663793974739488.a n = A029269 n

end A029269

/-! ## A029269.P3460571963476662252

`A029060(n+3)-A029083(n+3)`
-/

namespace A029269.P3460571963476662252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029060 (n + 3) - A029083 (n + 3)

end

end A029269.P3460571963476662252

namespace A029269

/-- `A029060(n+3)-A029083(n+3)` -/
def P3460571963476662252.Spec : Prop :=
  ∀ n, P3460571963476662252.a n = A029269 n

end A029269

/-!
# A029270: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)*(1-x^12)).

The programs for A029270, the canonical program `A029270.P14159109481119659441` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029270 has offset 0).

The definition of A029270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029270.P17194122467939856184

`A027640(lcm(2, n)%(n+3))`
-/

namespace A029270.P17194122467939856184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (Nat.lcm 2 n % (n + 3))

end

end A029270.P17194122467939856184

namespace A029270

/-- `A027640(lcm(2, n)%(n+3))` -/
def P17194122467939856184.Spec : Prop :=
  ∀ n, P17194122467939856184.a n = A029270 n

end A029270

/-! ## A029270.P14159109481119659441

`A029169(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029270

/-- `A029169(n)-a(n-2)` -/
def P14159109481119659441.Spec : Prop :=
  ∀ n, P14159109481119659441.a n = A029270 n

theorem P14159109481119659441.correct : P14159109481119659441.Spec := by
  intro n
  simp only [A029270]

end A029270

/-! ## A029270.P12818220629557539972

`A029143(abs(A097140(n)))`
-/

namespace A029270.P12818220629557539972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 |A097140 n|.toNat

end

end A029270.P12818220629557539972

namespace A029270

/-- `A029143(abs(A097140(n)))` -/
def P12818220629557539972.Spec : Prop :=
  ∀ n, P12818220629557539972.a n = A029270 n

end A029270

/-! ## A029270.P13443391174941162448

`A029143(A109613(n)%A080513(n))`
-/

namespace A029270.P13443391174941162448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029143 (Int.tmod (A109613 n) (A080513 n)).toNat

end

end A029270.P13443391174941162448

namespace A029270

/-- `A029143(A109613(n)%A080513(n))` -/
def P13443391174941162448.Spec : Prop :=
  ∀ n, P13443391174941162448.a n = A029270 n

end A029270

/-! ## A029270.P17422505412111476811

`A027640(A005843(A164845(n)%A080513(n)))`
-/

namespace A029270.P17422505412111476811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (A005843 (Int.tmod (A164845 n) (A080513 n)).toNat).toNat

end

end A029270.P17422505412111476811

namespace A029270

/-- `A027640(A005843(A164845(n)%A080513(n)))` -/
def P17422505412111476811.Spec : Prop :=
  ∀ n, P17422505412111476811.a n = A029270 n

end A029270

/-! ## A029270.P14345016853059260310

`A029331(xor(1, n+1))`
-/

namespace A029270.P14345016853059260310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (Nat.xor 1 (n + 1))

end

end A029270.P14345016853059260310

namespace A029270

/-- `A029331(xor(1, n+1))` -/
def P14345016853059260310.Spec : Prop :=
  ∀ n, P14345016853059260310.a n = A029270 n

end A029270

/-! ## A029270.P9560552956540601407

`A029331(Δ[or(1, n)]+n)`
-/

namespace A029270.P9560552956540601407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A029270.P9560552956540601407

namespace A029270

/-- `A029331(Δ[or(1, n)]+n)` -/
def P9560552956540601407.Spec : Prop :=
  ∀ n, P9560552956540601407.a n = A029270 n

end A029270

/-! ## A029270.P10165967494946462944

`A029331(A004442(n+1))`
-/

namespace A029270.P10165967494946462944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A004442 (n + 1)).toNat

end

end A029270.P10165967494946462944

namespace A029270

/-- `A029331(A004442(n+1))` -/
def P10165967494946462944.Spec : Prop :=
  ∀ n, P10165967494946462944.a n = A029270 n

end A029270

/-! ## A029270.P610824968380357802

`A029331(A010673(n)+n)`
-/

namespace A029270.P610824968380357802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A010673 n + (n : ℤ)).toNat

end

end A029270.P610824968380357802

namespace A029270

/-- `A029331(A010673(n)+n)` -/
def P610824968380357802.Spec : Prop :=
  ∀ n, P610824968380357802.a n = A029270 n

end A029270

/-! ## A029270.P5242448414921433503

`A027640(32*and(1, n)+n)`
-/

namespace A029270.P5242448414921433503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027640 (32 * Nat.land 1 n + n)

end

end A029270.P5242448414921433503

namespace A029270

/-- `A027640(32*and(1, n)+n)` -/
def P5242448414921433503.Spec : Prop :=
  ∀ n, P5242448414921433503.a n = A029270 n

end A029270

/-! ## A029270.P11787616055161613747

`A029331(A004442(2*n)-A004442(n))`
-/

namespace A029270.P11787616055161613747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A004442 (2 * n) - A004442 n).toNat

end

end A029270.P11787616055161613747

namespace A029270

/-- `A029331(A004442(2*n)-A004442(n))` -/
def P11787616055161613747.Spec : Prop :=
  ∀ n, P11787616055161613747.a n = A029270 n

end A029270

/-! ## A029270.P2931211764303292222

`A029331(A114327(A131179(n)))`
-/

namespace A029270.P2931211764303292222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (A114327 (A131179 n).toNat).toNat

end

end A029270.P2931211764303292222

namespace A029270

/-- `A029331(A114327(A131179(n)))` -/
def P2931211764303292222.Spec : Prop :=
  ∀ n, P2931211764303292222.a n = A029270 n

end A029270

/-!
# A029271: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^11)*(1-x^12)).

The programs for A029271, the canonical program `A029271.P4727093851708620107` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029271 has offset 0).

The definition of A029271 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029271.P4727093851708620107

`A029170(n)-a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029271

/-- `A029170(n)-a(n-2)` -/
def P4727093851708620107.Spec : Prop :=
  ∀ n, P4727093851708620107.a n = A029271 n

theorem P4727093851708620107.correct : P4727093851708620107.Spec := by
  intro n
  simp only [A029271]

end A029271

/-! ## A029271.P7935771658067704937

`A025875(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029271.P7935771658067704937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025875 n + a (n - 3)

end

end A029271.P7935771658067704937

namespace A029271

/-- `A025875(n)+a(n-3)` -/
def P7935771658067704937.Spec : Prop :=
  ∀ n, P7935771658067704937.a n = A029271 n

end A029271

/-! ## A029271.P693265546530999763

`A025875(n)+A029057(n)-A029079(n)`
-/

namespace A029271.P693265546530999763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029057 n - A029079 n)

end

end A029271.P693265546530999763

namespace A029271

/-- `A025875(n)+A029057(n)-A029079(n)` -/
def P693265546530999763.Spec : Prop :=
  ∀ n, P693265546530999763.a n = A029271 n

end A029271

/-! ## A029271.P3717271353968833764

`A025875(n)+A029062(n)-A029084(n)`
-/

namespace A029271.P3717271353968833764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A029062 n - A029084 n)

end

end A029271.P3717271353968833764

namespace A029271

/-- `A025875(n)+A029062(n)-A029084(n)` -/
def P3717271353968833764.Spec : Prop :=
  ∀ n, P3717271353968833764.a n = A029271 n

end A029271

/-! ## A029271.P14856131603256719502

`A029261(n)+A029291(n)-A029280(n)`
-/

namespace A029271.P14856131603256719502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029261 n + (A029291 n - A029280 n)

end

end A029271.P14856131603256719502

namespace A029271

/-- `A029261(n)+A029291(n)-A029280(n)` -/
def P14856131603256719502.Spec : Prop :=
  ∀ n, P14856131603256719502.a n = A029271 n

end A029271

/-! ## A029271.P10182547024182467808

`A029057(n+3)-A029079(n+3)`
-/

namespace A029271.P10182547024182467808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029057 (n + 3) - A029079 (n + 3)

end

end A029271.P10182547024182467808

namespace A029271

/-- `A029057(n+3)-A029079(n+3)` -/
def P10182547024182467808.Spec : Prop :=
  ∀ n, P10182547024182467808.a n = A029271 n

end A029271

/-! ## A029271.P6565796605801676605

`A029062(n+3)-A029084(n+3)`
-/

namespace A029271.P6565796605801676605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029062 (n + 3) - A029084 (n + 3)

end

end A029271.P6565796605801676605

namespace A029271

/-- `A029062(n+3)-A029084(n+3)` -/
def P6565796605801676605.Spec : Prop :=
  ∀ n, P6565796605801676605.a n = A029271 n

end A029271

/-!
# A029272: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^7)).

The programs for A029272, the canonical program `A029272.P2927714459558587296` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029272 has offset 0).

The definition of A029272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029272.P2927714459558587296

`A025876(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029272

/-- `A025876(n)+a(n-3)` -/
def P2927714459558587296.Spec : Prop :=
  ∀ n, P2927714459558587296.a n = A029272 n

theorem P2927714459558587296.correct : P2927714459558587296.Spec := by
  intro n
  simp only [A029272]

end A029272

/-! ## A029272.P17333966514957282347

`A029421(2*n)`
-/

namespace A029272.P17333966514957282347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (2 * n)

end

end A029272.P17333966514957282347

namespace A029272

/-- `A029421(2*n)` -/
def P17333966514957282347.Spec : Prop :=
  ∀ n, P17333966514957282347.a n = A029272 n

end A029272

/-! ## A029272.P6215876779536212068

`lcm(A029421(A005843(n)), A033999(n))`
-/

namespace A029272.P6215876779536212068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029421 (A005843 n).toNat) (A033999 n)

end

end A029272.P6215876779536212068

namespace A029272

/-- `lcm(A029421(A005843(n)), A033999(n))` -/
def P6215876779536212068.Spec : Prop :=
  ∀ n, (P6215876779536212068.a n : ℤ) = A029272 n

end A029272

/-! ## A029272.P12362881293383400069

`or(A000007(n), A029421(A005843(n)))`
-/

namespace A029272.P12362881293383400069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A029421 (A005843 n).toNat)

end

end A029272.P12362881293383400069

namespace A029272

/-- `or(A000007(n), A029421(A005843(n)))` -/
def P12362881293383400069.Spec : Prop :=
  ∀ n, P12362881293383400069.a n = A029272 n

end A029272

/-! ## A029272.P6027098624359001644

`A029421(A005843(n))%∑[A000040(n+1)]`
-/

namespace A029272.P6027098624359001644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029421 (A005843 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029272.P6027098624359001644

namespace A029272

/-- `A029421(A005843(n))%∑[A000040(n+1)]` -/
def P6027098624359001644.Spec : Prop :=
  ∀ n, P6027098624359001644.a n = A029272 n

end A029272

/-! ## A029272.P11630454346827441064

`A029421(record[A014681(n)])%A085127(n+1)`
-/

namespace A029272.P11630454346827441064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029421 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A085127 (n + 1))

end

end A029272.P11630454346827441064

namespace A029272

/-- `A029421(record[A014681(n)])%A085127(n+1)` -/
def P11630454346827441064.Spec : Prop :=
  ∀ n, P11630454346827441064.a n = A029272 n

end A029272

/-! ## A029272.P17596729378382741227

`∑[A008677(n)]-A029218(A005843(n)+5)`
-/

namespace A029272.P17596729378382741227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A029218 (A005843 n + 5).toNat

end

end A029272.P17596729378382741227

namespace A029272

/-- `∑[A008677(n)]-A029218(A005843(n)+5)` -/
def P17596729378382741227.Spec : Prop :=
  ∀ n, P17596729378382741227.a n = A029272 n

end A029272

/-! ## A029272.P9411790146056553839

`A029421(A020742(n))%((n+2)^5)`
-/

namespace A029272.P9411790146056553839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029421 (A020742 n).toNat) ((n + 2) ^ 5 : ℤ)

end

end A029272.P9411790146056553839

namespace A029272

/-- `A029421(A020742(n))%((n+2)^5)` -/
def P9411790146056553839.Spec : Prop :=
  ∀ n, P9411790146056553839.a n = A029272 n

end A029272

/-! ## A029272.P5319173614109489000

`A029421(A020742(n))+A000038(n+1)`
-/

namespace A029272.P5319173614109489000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (A020742 n).toNat + A000038 (n + 1)

end

end A029272.P5319173614109489000

namespace A029272

/-- `A029421(A020742(n))+A000038(n+1)` -/
def P5319173614109489000.Spec : Prop :=
  ∀ n, P5319173614109489000.a n = A029272 n

end A029272

/-! ## A029272.P10926084249682794565

`A029421(A020742(n))+A010051(A139614(n))`
-/

namespace A029272.P10926084249682794565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (A020742 n).toNat + A010051 (A139614 n).toNat

end

end A029272.P10926084249682794565

namespace A029272

/-- `A029421(A020742(n))+A010051(A139614(n))` -/
def P10926084249682794565.Spec : Prop :=
  ∀ n, P10926084249682794565.a n = A029272 n

end A029272

/-! ## A029272.P17449319542583954565

`∑{d}[A029421(A005843(n)), A000010(#)]`
-/

namespace A029272.P17449319542583954565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029421 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A029272.P17449319542583954565

namespace A029272

/-- `∑{d}[A029421(A005843(n)), A000010(#)]` -/
def P17449319542583954565.Spec : Prop :=
  ∀ n, P17449319542583954565.a n = A029272 n

end A029272

/-! ## A029272.P5319399496731822969

`lcm(A029421(A020742(n)), A122188(n+1))`
-/

namespace A029272.P5319399496731822969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A029421 (A020742 n).toNat) (A122188 (n + 1))

end

end A029272.P5319399496731822969

namespace A029272

/-- `lcm(A029421(A020742(n)), A122188(n+1))` -/
def P5319399496731822969.Spec : Prop :=
  ∀ n, (P5319399496731822969.a n : ℤ) = A029272 n

end A029272

/-!
# A029273: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^8)).

The programs for A029273, the canonical program `A029273.P2176100807724338740` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029273 has offset 0).

The definition of A029273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029273.P2176100807724338740

`A025877(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A029273

/-- `A025877(n)+a(n-3)` -/
def P2176100807724338740.Spec : Prop :=
  ∀ n, P2176100807724338740.a n = A029273 n

theorem P2176100807724338740.correct : P2176100807724338740.Spec := by
  intro n
  simp only [A029273]

end A029273

/-! ## A029273.P1022344512769293345

`A029431(A000265(2*n+5))+A029385(n)`
-/

namespace A029273.P1022344512769293345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (A000265 (2 * n + 5)).toNat + A029385 n

end

end A029273.P1022344512769293345

namespace A029273

/-- `A029431(A000265(2*n+5))+A029385(n)` -/
def P1022344512769293345.Spec : Prop :=
  ∀ n, P1022344512769293345.a n = A029273 n

end A029273

/-! ## A029273.P11282747234561783850

`A357621(A079957(n)%A271269(2*(n+1)))`
-/

namespace A029273.P11282747234561783850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357621 (Int.tmod (A079957 n) (A271269 (2 * (n + 1)))).toNat

end

end A029273.P11282747234561783850

namespace A029273

/-- `A357621(A079957(n)%A271269(2*(n+1)))` -/
def P11282747234561783850.Spec : Prop :=
  ∀ n, P11282747234561783850.a n = A029273 n

end A029273

/-! ## A029273.P18036810108640682855

`A045917(A255235(A179309(n+1)))`
-/

namespace A029273.P18036810108640682855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A255235 (A179309 (n + 1)).toNat).toNat

end

end A029273.P18036810108640682855

namespace A029273

/-- `A045917(A255235(A179309(n+1)))` -/
def P18036810108640682855.Spec : Prop :=
  ∀ n, P18036810108640682855.a n = A029273 n

end A029273

/-! ## A029273.P6960488263894093165

`A029361(A029597(n+1)%A029524(n+1))`
-/

namespace A029273.P6960488263894093165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029361 (Int.tmod (A029597 (n + 1)) (A029524 (n + 1))).toNat

end

end A029273.P6960488263894093165

namespace A029273

/-- `A029361(A029597(n+1)%A029524(n+1))` -/
def P6960488263894093165.Spec : Prop :=
  ∀ n, P6960488263894093165.a n = A029273 n

end A029273

/-!
# A029274: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^9)).

The programs for A029274, the canonical program `A029274.P14876788138236783754` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029274 has offset 0).

The definition of A029274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029274.P410679700506685486

`A025878(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029274.P410679700506685486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025878 n + a (n - 3)

end

end A029274.P410679700506685486

namespace A029274

/-- `A025878(n)+a(n-3)` -/
def P410679700506685486.Spec : Prop :=
  ∀ n, P410679700506685486.a n = A029274 n

end A029274

/-! ## A029274.P14876788138236783754

`A008681(n)-A288165(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029274

/-- `A008681(n)-A288165(n)` -/
def P14876788138236783754.Spec : Prop :=
  ∀ n, P14876788138236783754.a n = A029274 n

theorem P14876788138236783754.correct : P14876788138236783754.Spec := by
  intro n
  simp only [A029274]

end A029274

/-! ## A029274.P6047599541368720092

`A029277(n)+A029389(n)-A025881(n)`
-/

namespace A029274.P6047599541368720092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 n + (A029389 n - A025881 n)

end

end A029274.P6047599541368720092

namespace A029274

/-- `A029277(n)+A029389(n)-A025881(n)` -/
def P6047599541368720092.Spec : Prop :=
  ∀ n, P6047599541368720092.a n = A029274 n

end A029274

/-! ## A029274.P15050299325265649152

`A029249(n)+A029302(n)-A029267(n)`
-/

namespace A029274.P15050299325265649152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029249 n + (A029302 n - A029267 n)

end

end A029274.P15050299325265649152

namespace A029274

/-- `A029249(n)+A029302(n)-A029267(n)` -/
def P15050299325265649152.Spec : Prop :=
  ∀ n, P15050299325265649152.a n = A029274 n

end A029274

/-! ## A029274.P3653638753886847975

`A029429(A047242(n+1))`
-/

namespace A029274.P3653638753886847975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (A047242 (n + 1)).toNat

end

end A029274.P3653638753886847975

namespace A029274

/-- `A029429(A047242(n+1))` -/
def P3653638753886847975.Spec : Prop :=
  ∀ n, P3653638753886847975.a n = A029274 n

end A029274

/-! ## A029274.P9836814710552236109

`A029429(A047244(n+1))`
-/

namespace A029274.P9836814710552236109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (A047244 (n + 1)).toNat

end

end A029274.P9836814710552236109

namespace A029274

/-- `A029429(A047244(n+1))` -/
def P9836814710552236109.Spec : Prop :=
  ∀ n, P9836814710552236109.a n = A029274 n

end A029274

/-! ## A029274.P2607329696931752910

`A029429(2*n)`
-/

namespace A029274.P2607329696931752910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (2 * n)

end

end A029274.P2607329696931752910

namespace A029274

/-- `A029429(2*n)` -/
def P2607329696931752910.Spec : Prop :=
  ∀ n, P2607329696931752910.a n = A029274 n

end A029274

/-! ## A029274.P6381580109159198055

`and(A029429(A005843(n)), A290069(n))`
-/

namespace A029274.P6381580109159198055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029429 (A005843 n).toNat) (A290069 n)

end

end A029274.P6381580109159198055

namespace A029274

/-- `and(A029429(A005843(n)), A290069(n))` -/
def P6381580109159198055.Spec : Prop :=
  ∀ n, P6381580109159198055.a n = A029274 n

end A029274

/-!
# A029275: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^10)).

The programs for A029275, the canonical program `A029275.P7887773070166748873` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029275 has offset 0).

The definition of A029275 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029275.P7887773070166748873

`A025879(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029275

/-- `A025879(n)+a(n-3)` -/
def P7887773070166748873.Spec : Prop :=
  ∀ n, P7887773070166748873.a n = A029275 n

theorem P7887773070166748873.correct : P7887773070166748873.Spec := by
  intro n
  simp only [A029275]

end A029275

/-! ## A029275.P18162470047043281397

`A025843(n)+A029042(n)-A029047(n)`
-/

namespace A029275.P18162470047043281397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025843 n + (A029042 n - A029047 n)

end

end A029275.P18162470047043281397

namespace A029275

/-- `A025843(n)+A029042(n)-A029047(n)` -/
def P18162470047043281397.Spec : Prop :=
  ∀ n, P18162470047043281397.a n = A029275 n

end A029275

/-! ## A029275.P9682301277877511466

`A029255(n)+A029289(n)-A029269(n)`
-/

namespace A029275.P9682301277877511466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029255 n + (A029289 n - A029269 n)

end

end A029275.P9682301277877511466

namespace A029275

/-- `A029255(n)+A029289(n)-A029269(n)` -/
def P9682301277877511466.Spec : Prop :=
  ∀ n, P9682301277877511466.a n = A029275 n

end A029275

/-! ## A029275.P12284104527102068076

`A029255(n)+A029289(n)-(A029083(n+1)-A029168(n+1))`
-/

namespace A029275.P12284104527102068076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029255 n + (A029289 n - (A029083 (n + 1) - A029168 (n + 1)))

end

end A029275.P12284104527102068076

namespace A029275

/-- `A029255(n)+A029289(n)-(A029083(n+1)-A029168(n+1))` -/
def P12284104527102068076.Spec : Prop :=
  ∀ n, P12284104527102068076.a n = A029275 n

end A029275

/-! ## A029275.P4304654070389289059

`A029042(n+5)-A029047(n+5)`
-/

namespace A029275.P4304654070389289059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 (n + 5) - A029047 (n + 5)

end

end A029275.P4304654070389289059

namespace A029275

/-- `A029042(n+5)-A029047(n+5)` -/
def P4304654070389289059.Spec : Prop :=
  ∀ n, P4304654070389289059.a n = A029275 n

end A029275

/-!
# A029276: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^11)).

The programs for A029276, the canonical program `A029276.P18328412418037778929` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029276 has offset 0).

The definition of A029276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029276.P1894973257939270212

`A025880(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029276.P1894973257939270212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025880 n + a (n - 3)

end

end A029276.P1894973257939270212

namespace A029276

/-- `A025880(n)+a(n-3)` -/
def P1894973257939270212.Spec : Prop :=
  ∀ n, P1894973257939270212.a n = A029276 n

end A029276

/-! ## A029276.P18328412418037778929

`A029291(n)+A029303(n)-A025857(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029276

/-- `A029291(n)+A029303(n)-A025857(n)` -/
def P18328412418037778929.Spec : Prop :=
  ∀ n, P18328412418037778929.a n = A029276 n

theorem P18328412418037778929.correct : P18328412418037778929.Spec := by
  intro n
  simp only [A029276]

end A029276

/-! ## A029276.P6837261917441000437

`A029043(n)+A029303(n)-A029047(n)`
-/

namespace A029276.P6837261917441000437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 n + (A029303 n - A029047 n)

end

end A029276.P6837261917441000437

namespace A029276

/-- `A029043(n)+A029303(n)-A029047(n)` -/
def P6837261917441000437.Spec : Prop :=
  ∀ n, P6837261917441000437.a n = A029276 n

end A029276

/-! ## A029276.P14205129801415859076

`A029043(n+5)-A029048(n+5)`
-/

namespace A029276.P14205129801415859076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 (n + 5) - A029048 (n + 5)

end

end A029276.P14205129801415859076

namespace A029276

/-- `A029043(n+5)-A029048(n+5)` -/
def P14205129801415859076.Spec : Prop :=
  ∀ n, P14205129801415859076.a n = A029276 n

end A029276

/-! ## A029276.P13271952257140379031

`A029431(2*n)`
-/

namespace A029276.P13271952257140379031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (2 * n)

end

end A029276.P13271952257140379031

namespace A029276

/-- `A029431(2*n)` -/
def P13271952257140379031.Spec : Prop :=
  ∀ n, P13271952257140379031.a n = A029276 n

end A029276

/-! ## A029276.P13618781499029880375

`A029431(A004277(n))+A000007(n)`
-/

namespace A029276.P13618781499029880375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029431 (A004277 n).toNat + A000007 n

end

end A029276.P13618781499029880375

namespace A029276

/-- `A029431(A004277(n))+A000007(n)` -/
def P13618781499029880375.Spec : Prop :=
  ∀ n, P13618781499029880375.a n = A029276 n

end A029276

/-! ## A029276.P16878669897798943862

`A025907(2*n)+A029224(2*n)-A029225(2*n)`
-/

namespace A029276.P16878669897798943862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025907 (2 * n) + (A029224 (2 * n) - A029225 (2 * n))

end

end A029276.P16878669897798943862

namespace A029276

/-- `A025907(2*n)+A029224(2*n)-A029225(2*n)` -/
def P16878669897798943862.Spec : Prop :=
  ∀ n, P16878669897798943862.a n = A029276 n

end A029276

/-! ## A029276.P6939864556946568181

`A025926(2*n)+A029358(2*n)-A029377(2*n)`
-/

namespace A029276.P6939864556946568181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029358 (2 * n) - A029377 (2 * n))

end

end A029276.P6939864556946568181

namespace A029276

/-- `A025926(2*n)+A029358(2*n)-A029377(2*n)` -/
def P6939864556946568181.Spec : Prop :=
  ∀ n, P6939864556946568181.a n = A029276 n

end A029276

/-! ## A029276.P3406641332881756664

`A025926(2*n)+A029391(2*n)-A029412(2*n)`
-/

namespace A029276.P3406641332881756664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 (2 * n) + (A029391 (2 * n) - A029412 (2 * n))

end

end A029276.P3406641332881756664

namespace A029276

/-- `A025926(2*n)+A029391(2*n)-A029412(2*n)` -/
def P3406641332881756664.Spec : Prop :=
  ∀ n, P3406641332881756664.a n = A029276 n

end A029276

/-! ## A029276.P1985184312708010883

`A029358(2*n)+A029445(2*n)-A029372(2*n)`
-/

namespace A029276.P1985184312708010883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 (2 * n) + (A029445 (2 * n) - A029372 (2 * n))

end

end A029276.P1985184312708010883

namespace A029276

/-- `A029358(2*n)+A029445(2*n)-A029372(2*n)` -/
def P1985184312708010883.Spec : Prop :=
  ∀ n, P1985184312708010883.a n = A029276 n

end A029276

/-!
# A029277: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^6)*(1-x^12)).

The programs for A029277, the canonical program `A029277.P13056114463240811318` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029277 has offset 0).

The definition of A029277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029277.P13056114463240811318

`A025881(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029277

/-- `A025881(n)+a(n-3)` -/
def P13056114463240811318.Spec : Prop :=
  ∀ n, P13056114463240811318.a n = A029277 n

theorem P13056114463240811318.correct : P13056114463240811318.Spec := by
  intro n
  simp only [A029277]

end A029277

/-! ## A029277.P15207081690311136992

`A025881(n)+A029274(n)-A029389(n)`
-/

namespace A029277.P15207081690311136992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n + (A029274 n - A029389 n)

end

end A029277.P15207081690311136992

namespace A029277

/-- `A025881(n)+A029274(n)-A029389(n)` -/
def P15207081690311136992.Spec : Prop :=
  ∀ n, P15207081690311136992.a n = A029277 n

end A029277

/-! ## A029277.P2980532450281567261

`A029280(n)+A029305(n)-A029315(n)`
-/

namespace A029277.P2980532450281567261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 n + (A029305 n - A029315 n)

end

end A029277.P2980532450281567261

namespace A029277

/-- `A029280(n)+A029305(n)-A029315(n)` -/
def P2980532450281567261.Spec : Prop :=
  ∀ n, P2980532450281567261.a n = A029277 n

end A029277

/-! ## A029277.P17145608437762301762

`A029429(2*n)-(A029389(n)-A025881(n))`
-/

namespace A029277.P17145608437762301762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (2 * n) - (A029389 n - A025881 n)

end

end A029277.P17145608437762301762

namespace A029277

/-- `A029429(2*n)-(A029389(n)-A025881(n))` -/
def P17145608437762301762.Spec : Prop :=
  ∀ n, P17145608437762301762.a n = A029277 n

end A029277

/-! ## A029277.P14411645145963475770

`A029429(A047244(n+4))-A029389(n+3)`
-/

namespace A029277.P14411645145963475770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029429 (A047244 (n + 4)).toNat - A029389 (n + 3)

end

end A029277.P14411645145963475770

namespace A029277

/-- `A029429(A047244(n+4))-A029389(n+3)` -/
def P14411645145963475770.Spec : Prop :=
  ∀ n, P14411645145963475770.a n = A029277 n

end A029277

/-!
# A029278: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^8)).

The programs for A029278, the canonical program `A029278.P2000901770763036903` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029278 has offset 0).

The definition of A029278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029278.P2000901770763036903

`A025882(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029278

/-- `A025882(n)+a(n-3)` -/
def P2000901770763036903.Spec : Prop :=
  ∀ n, P2000901770763036903.a n = A029278 n

theorem P2000901770763036903.correct : P2000901770763036903.Spec := by
  intro n
  simp only [A029278]

end A029278

/-! ## A029278.P961959363130844591

`A029091(n)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029278.P961959363130844591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029091 n - a (n - 1) - a (n - 2)

end

end A029278.P961959363130844591

namespace A029278

/-- `A029091(n)-a(n-1)-a(n-2)` -/
def P961959363130844591.Spec : Prop :=
  ∀ n, P961959363130844591.a n = A029278 n

end A029278

/-! ## A029278.P4865028008641661399

`∑[A025836(n+3)-A025859(n+3)]`
-/

namespace A029278.P4865028008641661399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025836 (n + 3) - A025859 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029278.P4865028008641661399

namespace A029278

/-- `∑[A025836(n+3)-A025859(n+3)]` -/
def P4865028008641661399.Spec : Prop :=
  ∀ n, P4865028008641661399.a n = A029278 n

end A029278

/-! ## A029278.P2663351165578889561

`A029436(2*(n+1))-Δ[A029378(n)]`
-/

namespace A029278.P2663351165578889561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029436 (2 * (n + 1)) - (f1 (n + 1) - f1 n)

end

end A029278.P2663351165578889561

namespace A029278

/-- `A029436(2*(n+1))-Δ[A029378(n)]` -/
def P2663351165578889561.Spec : Prop :=
  ∀ n, P2663351165578889561.a n = A029278 n

end A029278

/-! ## A029278.P17635500372598048551

`A280951(n)-A049240(A069784(n+1))`
-/

namespace A029278.P17635500372598048551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280951 n - A049240 (A069784 (n + 1)).toNat

end

end A029278.P17635500372598048551

namespace A029278

/-- `A280951(n)-A049240(A069784(n+1))` -/
def P17635500372598048551.Spec : Prop :=
  ∀ n, P17635500372598048551.a n = A029278 n

end A029278

/-!
# A029279: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^10)).

The programs for A029279, the canonical program `A029279.P3533259980433952653` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029279 has offset 0).

The definition of A029279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029279.P3533259980433952653

`A025884(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029279

/-- `A025884(n)+a(n-3)` -/
def P3533259980433952653.Spec : Prop :=
  ∀ n, P3533259980433952653.a n = A029279 n

theorem P3533259980433952653.correct : P3533259980433952653.Spec := by
  intro n
  simp only [A029279]

end A029279

/-! ## A029279.P7531380705360638952

`A029365(eq[A029367(2*n), A029393(2*n)])`
-/

namespace A029279.P7531380705360638952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029367 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029393 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029365 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A029279.P7531380705360638952

namespace A029279

/-- `A029365(eq[A029367(2*n), A029393(2*n)])` -/
def P7531380705360638952.Spec : Prop :=
  ∀ n, P7531380705360638952.a n = A029279 n

end A029279

/-! ## A029279.P13810413314830899818

`A277937(A000931(n)^4)`
-/

namespace A029279.P13810413314830899818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A000931 n ^ 4).toNat

end

end A029279.P13810413314830899818

namespace A029279

/-- `A277937(A000931(n)^4)` -/
def P13810413314830899818.Spec : Prop :=
  ∀ n, P13810413314830899818.a n = A029279 n

end A029279

/-! ## A029279.P6783032347962711725

`A277937(A000931(n)²²)`
-/

namespace A029279.P6783032347962711725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 ((A000931 n ^ 2) ^ 2).toNat

end

end A029279.P6783032347962711725

namespace A029279

/-- `A277937(A000931(n)²²)` -/
def P6783032347962711725.Spec : Prop :=
  ∀ n, P6783032347962711725.a n = A029279 n

end A029279

/-! ## A029279.P1395760011202256503

`A109072(8*A232484(n+1))`
-/

namespace A029279.P1395760011202256503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109072 (8 * A232484 (n + 1)).toNat

end

end A029279.P1395760011202256503

namespace A029279

/-- `A109072(8*A232484(n+1))` -/
def P1395760011202256503.Spec : Prop :=
  ∀ n, P1395760011202256503.a n = A029279 n

end A029279

/-!
# A029280: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^11)).

The programs for A029280, the canonical program `A029280.P16538344237071872195` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029280 has offset 0).

The definition of A029280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029280.P4262369067133088685

`A025885(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029280.P4262369067133088685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025885 n + a (n - 3)

end

end A029280.P4262369067133088685

namespace A029280

/-- `A025885(n)+a(n-3)` -/
def P4262369067133088685.Spec : Prop :=
  ∀ n, P4262369067133088685.a n = A029280 n

end A029280

/-! ## A029280.P3749443946779795354

`A029381(abs(3-n))+A029381(n)`
-/

namespace A029280.P3749443946779795354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029381 |3 - (n : ℤ)|.toNat + A029381 n

end

end A029280.P3749443946779795354

namespace A029280

/-- `A029381(abs(3-n))+A029381(n)` -/
def P3749443946779795354.Spec : Prop :=
  ∀ n, P3749443946779795354.a n = A029280 n

end A029280

/-! ## A029280.P8089734636706088714

`A025915(n)+A029168(n)-A029233(n)`
-/

namespace A029280.P8089734636706088714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n + (A029168 n - A029233 n)

end

end A029280.P8089734636706088714

namespace A029280

/-- `A025915(n)+A029168(n)-A029233(n)` -/
def P8089734636706088714.Spec : Prop :=
  ∀ n, P8089734636706088714.a n = A029280 n

end A029280

/-! ## A029280.P16538344237071872195

`A029261(n)+A029291(n)-A029271(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A029280

/-- `A029261(n)+A029291(n)-A029271(n)` -/
def P16538344237071872195.Spec : Prop :=
  ∀ n, P16538344237071872195.a n = A029280 n

theorem P16538344237071872195.correct : P16538344237071872195.Spec := by
  intro n
  simp only [A029280]

end A029280

/-! ## A029280.P1186123465791723660

`A029277(n)+A029315(n)-A029305(n)`
-/

namespace A029280.P1186123465791723660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 n + (A029315 n - A029305 n)

end

end A029280.P1186123465791723660

namespace A029280

/-- `A029277(n)+A029315(n)-A029305(n)` -/
def P1186123465791723660.Spec : Prop :=
  ∀ n, P1186123465791723660.a n = A029280 n

end A029280

/-! ## A029280.P17213911235783734469

`Δ[a(n-3)+A029093(n)-A029400(n)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A029280.P17213911235783734469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 3) + (A029093 n - A029400 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029280.P17213911235783734469

namespace A029280

/-- `Δ[a(n-3)+A029093(n)-A029400(n)]` -/
def P17213911235783734469.Spec : Prop :=
  ∀ n, P17213911235783734469.a n = A029280 n

end A029280

/-!
# A029281: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^12)).

The programs for A029281, the canonical program `A029281.P160047908962866729` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029281 has offset 0).

The definition of A029281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029281.P160047908962866729

`A025886(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029281

/-- `A025886(n)+a(n-3)` -/
def P160047908962866729.Spec : Prop :=
  ∀ n, P160047908962866729.a n = A029281 n

theorem P160047908962866729.correct : P160047908962866729.Spec := by
  intro n
  simp only [A029281]

end A029281

/-! ## A029281.P1476045597284528462

`A029095(n)-(a(n-2)+a(n-1))` with `a(0)=1, a(1)=0`
-/

namespace A029281.P1476045597284528462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029095 n - (a (n - 2) + a (n - 1))

end

end A029281.P1476045597284528462

namespace A029281

/-- `A029095(n)-(a(n-2)+a(n-1))` -/
def P1476045597284528462.Spec : Prop :=
  ∀ n, P1476045597284528462.a n = A029281 n

end A029281

/-! ## A029281.P17493947344856759997

`Δ[∑[A029294(n)]-A029314(n)]`
-/

namespace A029281.P17493947344856759997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029281.P17493947344856759997

namespace A029281

/-- `Δ[∑[A029294(n)]-A029314(n)]` -/
def P17493947344856759997.Spec : Prop :=
  ∀ n, P17493947344856759997.a n = A029281 n

end A029281

/-! ## A029281.P13460732770210448478

`A029294(n+1)-Δ[A029314(n)]`
-/

namespace A029281.P13460732770210448478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029294 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029281.P13460732770210448478

namespace A029281

/-- `A029294(n+1)-Δ[A029314(n)]` -/
def P13460732770210448478.Spec : Prop :=
  ∀ n, P13460732770210448478.a n = A029281 n

end A029281

/-! ## A029281.P16593562361380964194

`lcm(A109705(2*n+3), A309913(A309897(n)))`
-/

namespace A029281.P16593562361380964194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A109705 (2 * n + 3)) (A309913 (A309897 n).toNat)

end

end A029281.P16593562361380964194

namespace A029281

/-- `lcm(A109705(2*n+3), A309913(A309897(n)))` -/
def P16593562361380964194.Spec : Prop :=
  ∀ n, (P16593562361380964194.a n : ℤ) = A029281 n

end A029281

/-!
# A029282: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^9)).

The programs for A029282, the canonical program `A029282.P16229692606905709591` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029282 has offset 0).

The definition of A029282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029282.P16229692606905709591

`A025887(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A029282

/-- `A025887(n)+a(n-3)` -/
def P16229692606905709591.Spec : Prop :=
  ∀ n, P16229692606905709591.a n = A029282 n

theorem P16229692606905709591.correct : P16229692606905709591.Spec := by
  intro n
  simp only [A029282]

end A029282

/-! ## A029282.P5881114545203318698

`A029328(n+1)-Δ[A029204(n+2)-A029328(n+2)]`
-/

namespace A029282.P5881114545203318698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029204 (n + 2) - A029328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029328 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029282.P5881114545203318698

namespace A029282

/-- `A029328(n+1)-Δ[A029204(n+2)-A029328(n+2)]` -/
def P5881114545203318698.Spec : Prop :=
  ∀ n, P5881114545203318698.a n = A029282 n

end A029282

/-! ## A029282.P18401746606628567987

`round(A024687(A023613(n+1))/A000032(n))`
-/

namespace A029282.P18401746606628567987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024687 (A023613 (n + 1)).toNat : ℚ) / (A000032 n : ℚ))

end

end A029282.P18401746606628567987

namespace A029282

/-- `round(A024687(A023613(n+1))/A000032(n))` -/
def P18401746606628567987.Spec : Prop :=
  ∀ n, P18401746606628567987.a n = A029282 n

end A029282

/-! ## A029282.P12568472608609668018

`round(A024687(A023655(n+1))/A000032(n))`
-/

namespace A029282.P12568472608609668018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024687 (A023655 (n + 1)).toNat : ℚ) / (A000032 n : ℚ))

end

end A029282.P12568472608609668018

namespace A029282

/-- `round(A024687(A023655(n+1))/A000032(n))` -/
def P12568472608609668018.Spec : Prop :=
  ∀ n, P12568472608609668018.a n = A029282 n

end A029282

/-! ## A029282.P9735381461257429564

`A172471(A245370(n)%A210016(n+1))`
-/

namespace A029282.P9735381461257429564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Int.tmod (A245370 n) (A210016 (n + 1))).toNat

end

end A029282.P9735381461257429564

namespace A029282

/-- `A172471(A245370(n)%A210016(n+1))` -/
def P9735381461257429564.Spec : Prop :=
  ∀ n, P9735381461257429564.a n = A029282 n

end A029282

/-!
# A029283: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^10)).

The programs for A029283, the canonical program `A029283.P7036410256068196393` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029283 has offset 0).

The definition of A029283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029283.P9047069561916576662

`A025888(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029283.P9047069561916576662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025888 n + a (n - 3)

end

end A029283.P9047069561916576662

namespace A029283

/-- `A025888(n)+a(n-3)` -/
def P9047069561916576662.Spec : Prop :=
  ∀ n, P9047069561916576662.a n = A029283 n

end A029283

/-! ## A029283.P7036410256068196393

`A029042(n)+A029145(n)-A000008(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029283

/-- `A029042(n)+A029145(n)-A000008(n)` -/
def P7036410256068196393.Spec : Prop :=
  ∀ n, P7036410256068196393.a n = A029283 n

theorem P7036410256068196393.correct : P7036410256068196393.Spec := by
  intro n
  simp only [A029283]

end A029283

/-! ## A029283.P9692885029676086385

`A025838(n)+A029145(n)-A029147(n)`
-/

namespace A029283.P9692885029676086385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 n + (A029145 n - A029147 n)

end

end A029283.P9692885029676086385

namespace A029283

/-- `A025838(n)+A029145(n)-A029147(n)` -/
def P9692885029676086385.Spec : Prop :=
  ∀ n, P9692885029676086385.a n = A029283 n

end A029283

/-! ## A029283.P7286168780608306388

`A025888(n)+A029162(n)-A029205(n)`
-/

namespace A029283.P7286168780608306388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 n + (A029162 n - A029205 n)

end

end A029283.P7286168780608306388

namespace A029283

/-- `A025888(n)+A029162(n)-A029205(n)` -/
def P7286168780608306388.Spec : Prop :=
  ∀ n, P7286168780608306388.a n = A029283 n

end A029283

/-! ## A029283.P15498964451326112486

`A029329(n+1)-Δ[A029384(n)]`
-/

namespace A029283.P15498964451326112486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029329 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029283.P15498964451326112486

namespace A029283

/-- `A029329(n+1)-Δ[A029384(n)]` -/
def P15498964451326112486.Spec : Prop :=
  ∀ n, P15498964451326112486.a n = A029283 n

end A029283

/-!
# A029284: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^11)).

The programs for A029284, the canonical program `A029284.P2674467912150014380` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029284 has offset 0).

The definition of A029284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029284.P2674467912150014380

`A025889(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029284

/-- `A025889(n)+a(n-3)` -/
def P2674467912150014380.Spec : Prop :=
  ∀ n, P2674467912150014380.a n = A029284 n

theorem P2674467912150014380.correct : P2674467912150014380.Spec := by
  intro n
  simp only [A029284]

end A029284

/-! ## A029284.P14503435816818211960

`A025432(n)+Δ[A103298(A115593(n+2))]`
-/

namespace A029284.P14503435816818211960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A115593 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025432 n + (f1 (n + 1) - f1 n)

end

end A029284.P14503435816818211960

namespace A029284

/-- `A025432(n)+Δ[A103298(A115593(n+2))]` -/
def P14503435816818211960.Spec : Prop :=
  ∀ n, P14503435816818211960.a n = A029284 n

end A029284

/-! ## A029284.P11210606848137833078

`A025432(n)+A005136(A025836(n)*A052938(n))`
-/

namespace A029284.P11210606848137833078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025432 n + A005136 (A025836 n * A052938 n).toNat

end

end A029284.P11210606848137833078

namespace A029284

/-- `A025432(n)+A005136(A025836(n)*A052938(n))` -/
def P11210606848137833078.Spec : Prop :=
  ∀ n, P11210606848137833078.a n = A029284 n

end A029284

/-! ## A029284.P7058360578097139108

`A077267(lcm(2, A361392(3*n)))`
-/

namespace A029284.P7058360578097139108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077267 (Int.lcm 2 (A361392 (3 * n)))

end

end A029284.P7058360578097139108

namespace A029284

/-- `A077267(lcm(2, A361392(3*n)))` -/
def P7058360578097139108.Spec : Prop :=
  ∀ n, P7058360578097139108.a n = A029284 n

end A029284

/-! ## A029284.P14258193547533798352

`and(p?[A195830(2*(n+1))], A308399(n))`
-/

namespace A029284.P14258193547533798352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195830 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A308399 n)

end

end A029284.P14258193547533798352

namespace A029284

/-- `and(p?[A195830(2*(n+1))], A308399(n))` -/
def P14258193547533798352.Spec : Prop :=
  ∀ n, P14258193547533798352.a n = A029284 n

end A029284

/-!
# A029285: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^12)).

The programs for A029285, the canonical program `A029285.P15493432003765234757` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029285 has offset 0).

The definition of A029285 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029285.P15493432003765234757

`A025890(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029285

/-- `A025890(n)+a(n-3)` -/
def P15493432003765234757.Spec : Prop :=
  ∀ n, P15493432003765234757.a n = A029285 n

theorem P15493432003765234757.correct : P15493432003765234757.Spec := by
  intro n
  simp only [A029285]

end A029285

/-! ## A029285.P17844435423852181680

`A029291(n)+A029339(n)-A029346(n)`
-/

namespace A029285.P17844435423852181680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029291 n + (A029339 n - A029346 n)

end

end A029285.P17844435423852181680

namespace A029285

/-- `A029291(n)+A029339(n)-A029346(n)` -/
def P17844435423852181680.Spec : Prop :=
  ∀ n, P17844435423852181680.a n = A029285 n

end A029285

/-! ## A029285.P17311086450600985343

`Δ[∑[A029298(n)]-A029320(n)]`
-/

namespace A029285.P17311086450600985343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029298 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029285.P17311086450600985343

namespace A029285

/-- `Δ[∑[A029298(n)]-A029320(n)]` -/
def P17311086450600985343.Spec : Prop :=
  ∀ n, P17311086450600985343.a n = A029285 n

end A029285

/-! ## A029285.P17988861853828704606

`Δ[∑[A029331(n)]-A029386(n)]`
-/

namespace A029285.P17988861853828704606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029285.P17988861853828704606

namespace A029285

/-- `Δ[∑[A029331(n)]-A029386(n)]` -/
def P17988861853828704606.Spec : Prop :=
  ∀ n, P17988861853828704606.a n = A029285 n

end A029285

/-! ## A029285.P11682860035038713103

`A029298(n+1)-Δ[A029320(n)]`
-/

namespace A029285.P11682860035038713103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029298 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029285.P11682860035038713103

namespace A029285

/-- `A029298(n+1)-Δ[A029320(n)]` -/
def P11682860035038713103.Spec : Prop :=
  ∀ n, P11682860035038713103.a n = A029285 n

end A029285

/-! ## A029285.P5393860088405887635

`A029331(n+1)-Δ[A029386(n)]`
-/

namespace A029285.P5393860088405887635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029331 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029285.P5393860088405887635

namespace A029285

/-- `A029331(n+1)-Δ[A029386(n)]` -/
def P5393860088405887635.Spec : Prop :=
  ∀ n, P5393860088405887635.a n = A029285 n

end A029285

/-!
# A029286: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)*(1-x^10)).

The programs for A029286, the canonical program `A029286.P9530959475825563725` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029286 has offset 0).

The definition of A029286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029286.P13479484640415668537

`A025891(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029286.P13479484640415668537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025891 n + a (n - 3)

end

end A029286.P13479484640415668537

namespace A029286

/-- `A025891(n)+a(n-3)` -/
def P13479484640415668537.Spec : Prop :=
  ∀ n, P13479484640415668537.a n = A029286 n

end A029286

/-! ## A029286.P10684483619550841020

`A029387(abs(3-n))+A029387(n)`
-/

namespace A029286.P10684483619550841020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029387 |3 - (n : ℤ)|.toNat + A029387 n

end

end A029286.P10684483619550841020

namespace A029286

/-- `A029387(abs(3-n))+A029387(n)` -/
def P10684483619550841020.Spec : Prop :=
  ∀ n, P10684483619550841020.a n = A029286 n

end A029286

/-! ## A029286.P9530959475825563725

`A029041(n)+A029147(n)-A000008(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A029286

/-- `A029041(n)+A029147(n)-A000008(n)` -/
def P9530959475825563725.Spec : Prop :=
  ∀ n, P9530959475825563725.a n = A029286 n

theorem P9530959475825563725.correct : P9530959475825563725.Spec := by
  intro n
  simp only [A029286]

end A029286

/-! ## A029286.P18144500098149384692

`A025838(n)+A029041(n)-A029042(n)`
-/

namespace A029286.P18144500098149384692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025838 n + (A029041 n - A029042 n)

end

end A029286.P18144500098149384692

namespace A029286

/-- `A025838(n)+A029041(n)-A029042(n)` -/
def P18144500098149384692.Spec : Prop :=
  ∀ n, P18144500098149384692.a n = A029286 n

end A029286

/-! ## A029286.P10560028039796939415

`A029248(n)+A029301(n)-A029253(n)`
-/

namespace A029286.P10560028039796939415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029248 n + (A029301 n - A029253 n)

end

end A029286.P10560028039796939415

namespace A029286

/-- `A029248(n)+A029301(n)-A029253(n)` -/
def P10560028039796939415.Spec : Prop :=
  ∀ n, P10560028039796939415.a n = A029286 n

end A029286

/-! ## A029286.P9107463954681057474

`A029248(A020710(n))-A029266(A020710(n))`
-/

namespace A029286.P9107463954681057474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029248 (A020710 n).toNat - A029266 (A020710 n).toNat

end

end A029286.P9107463954681057474

namespace A029286

/-- `A029248(A020710(n))-A029266(A020710(n))` -/
def P9107463954681057474.Spec : Prop :=
  ∀ n, P9107463954681057474.a n = A029286 n

end A029286

/-!
# A029287: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)*(1-x^11)).

The programs for A029287, the canonical program `A029287.P11187433181487852258` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029287 has offset 0).

The definition of A029287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029287.P11187433181487852258

`A025892(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029287

/-- `A025892(n)+a(n-3)` -/
def P11187433181487852258.Spec : Prop :=
  ∀ n, P11187433181487852258.a n = A029287 n

theorem P11187433181487852258.correct : P11187433181487852258.Spec := by
  intro n
  simp only [A029287]

end A029287

/-! ## A029287.P5832930765086587370

`A025892(n)+A029166(n)-A029209(n)`
-/

namespace A029287.P5832930765086587370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025892 n + (A029166 n - A029209 n)

end

end A029287.P5832930765086587370

namespace A029287

/-- `A025892(n)+A029166(n)-A029209(n)` -/
def P5832930765086587370.Spec : Prop :=
  ∀ n, P5832930765086587370.a n = A029287 n

end A029287

/-! ## A029287.P15710258624194095067

`A029166(n+3)-A029209(n+3)`
-/

namespace A029287.P15710258624194095067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029166 (n + 3) - A029209 (n + 3)

end

end A029287.P15710258624194095067

namespace A029287

/-- `A029166(n+3)-A029209(n+3)` -/
def P15710258624194095067.Spec : Prop :=
  ∀ n, P15710258624194095067.a n = A029287 n

end A029287

/-! ## A029287.P8071072236515133936

`A029249(A020710(n))-A029267(A020710(n))`
-/

namespace A029287.P8071072236515133936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029249 (A020710 n).toNat - A029267 (A020710 n).toNat

end

end A029287.P8071072236515133936

namespace A029287

/-- `A029249(A020710(n))-A029267(A020710(n))` -/
def P8071072236515133936.Spec : Prop :=
  ∀ n, P8071072236515133936.a n = A029287 n

end A029287

/-! ## A029287.P16003675863217943991

`A029354(2*n)-A029346(2*n+1)`
-/

namespace A029287.P16003675863217943991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029354 (2 * n) - A029346 (2 * n + 1)

end

end A029287.P16003675863217943991

namespace A029287

/-- `A029354(2*n)-A029346(2*n+1)` -/
def P16003675863217943991.Spec : Prop :=
  ∀ n, P16003675863217943991.a n = A029287 n

end A029287

/-!
# A029288: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)*(1-x^12)).

The programs for A029288, the canonical program `A029288.P10411134377989181800` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029288 has offset 0).

The definition of A029288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029288.P10411134377989181800

`A025893(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029288

/-- `A025893(n)+a(n-3)` -/
def P10411134377989181800.Spec : Prop :=
  ∀ n, P10411134377989181800.a n = A029288 n

theorem P10411134377989181800.correct : P10411134377989181800.Spec := by
  intro n
  simp only [A029288]

end A029288

/-! ## A029288.P6100540999300080383

`Δ[∑[A029301(n)]-A029323(n)]`
-/

namespace A029288.P6100540999300080383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029301 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029288.P6100540999300080383

namespace A029288

/-- `Δ[∑[A029301(n)]-A029323(n)]` -/
def P6100540999300080383.Spec : Prop :=
  ∀ n, P6100540999300080383.a n = A029288 n

end A029288

/-! ## A029288.P3251923797099643982

`A029301(n+1)-Δ[A029323(n)]`
-/

namespace A029288.P3251923797099643982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029301 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029288.P3251923797099643982

namespace A029288

/-- `A029301(n+1)-Δ[A029323(n)]` -/
def P3251923797099643982.Spec : Prop :=
  ∀ n, P3251923797099643982.a n = A029288 n

end A029288

/-! ## A029288.P6599947613598527189

`A029277(n+3)+A029277(n)-A029274(n+3)`
-/

namespace A029288.P6599947613598527189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029277 (n + 3) + (A029277 n - A029274 (n + 3))

end

end A029288.P6599947613598527189

namespace A029288

/-- `A029277(n+3)+A029277(n)-A029274(n+3)` -/
def P6599947613598527189.Spec : Prop :=
  ∀ n, P6599947613598527189.a n = A029288 n

end A029288

/-! ## A029288.P4308436937644283887

`A005206(A029274(n)%A057282(n+1))`
-/

namespace A029288.P4308436937644283887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.tmod (A029274 n) (A057282 (n + 1))).toNat

end

end A029288.P4308436937644283887

namespace A029288

/-- `A005206(A029274(n)%A057282(n+1))` -/
def P4308436937644283887.Spec : Prop :=
  ∀ n, P4308436937644283887.a n = A029288 n

end A029288

/-!
# A029289: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^11)).

The programs for A029289, the canonical program `A029289.P17957794895939154658` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029289 has offset 0).

The definition of A029289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029289.P17549620784821459946

`A025894(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029289.P17549620784821459946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025894 n + a (n - 3)

end

end A029289.P17549620784821459946

namespace A029289

/-- `A025894(n)+a(n-3)` -/
def P17549620784821459946.Spec : Prop :=
  ∀ n, P17549620784821459946.a n = A029289 n

end A029289

/-! ## A029289.P17957794895939154658

`A029269(n)+A029275(n)-A029255(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029289

/-- `A029269(n)+A029275(n)-A029255(n)` -/
def P17957794895939154658.Spec : Prop :=
  ∀ n, P17957794895939154658.a n = A029289 n

theorem P17957794895939154658.correct : P17957794895939154658.Spec := by
  intro n
  simp only [A029289]

end A029289

/-! ## A029289.P15983314388212611210

`A029083(n+1)-A029168(n+1)+A029275(n)-A029255(n)`
-/

namespace A029289.P15983314388212611210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029083 (n + 1) - A029168 (n + 1) + (A029275 n - A029255 n)

end

end A029289.P15983314388212611210

namespace A029289

/-- `A029083(n+1)-A029168(n+1)+A029275(n)-A029255(n)` -/
def P15983314388212611210.Spec : Prop :=
  ∀ n, P15983314388212611210.a n = A029289 n

end A029289

/-! ## A029289.P2453538967794807897

`A029168(n+3)-A029211(n+3)`
-/

namespace A029289.P2453538967794807897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029168 (n + 3) - A029211 (n + 3)

end

end A029289.P2453538967794807897

namespace A029289

/-- `A029168(n+3)-A029211(n+3)` -/
def P2453538967794807897.Spec : Prop :=
  ∀ n, P2453538967794807897.a n = A029289 n

end A029289

/-! ## A029289.P8631432125759572583

`A029042(n)-A029213(2*n+3)`
-/

namespace A029289.P8631432125759572583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029042 n - A029213 (2 * n + 3)

end

end A029289.P8631432125759572583

namespace A029289

/-- `A029042(n)-A029213(2*n+3)` -/
def P8631432125759572583.Spec : Prop :=
  ∀ n, P8631432125759572583.a n = A029289 n

end A029289

/-!
# A029290: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^12)).

The programs for A029290, the canonical program `A029290.P16762149366517590486` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029290 has offset 0).

The definition of A029290 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029290.P16762149366517590486

`A025895(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029290

/-- `A025895(n)+a(n-3)` -/
def P16762149366517590486.Spec : Prop :=
  ∀ n, P16762149366517590486.a n = A029290 n

theorem P16762149366517590486.correct : P16762149366517590486.Spec := by
  intro n
  simp only [A029290]

end A029290

/-! ## A029290.P17333648942140059575

`A029286(n)-A010059(A156882(n))`
-/

namespace A029290.P17333648942140059575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029286 n - A010059 (A156882 n).toNat

end

end A029290.P17333648942140059575

namespace A029290

/-- `A029286(n)-A010059(A156882(n))` -/
def P17333648942140059575.Spec : Prop :=
  ∀ n, P17333648942140059575.a n = A029290 n

end A029290

/-! ## A029290.P14944052275302613861

`A222177(A025838(n)²*A189006(n))`
-/

namespace A029290.P14944052275302613861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222177 (A025838 n ^ 2 * A189006 n).toNat

end

end A029290.P14944052275302613861

namespace A029290

/-- `A222177(A025838(n)²*A189006(n))` -/
def P14944052275302613861.Spec : Prop :=
  ∀ n, P14944052275302613861.a n = A029290 n

end A029290

/-! ## A029290.P2533354521916109728

`A222177(A025838(n)*A189006(n)*A025838(n))`
-/

namespace A029290.P2533354521916109728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222177 (A025838 n * A189006 n * A025838 n).toNat

end

end A029290.P2533354521916109728

namespace A029290

/-- `A222177(A025838(n)*A189006(n)*A025838(n))` -/
def P2533354521916109728.Spec : Prop :=
  ∀ n, P2533354521916109728.a n = A029290 n

end A029290

/-! ## A029290.P4106824558373040169

`A109705(2*n)%Δ[A281918(2*(n+1))]`
-/

namespace A029290.P4106824558373040169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281918 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109705 (2 * n)) (f1 (n + 1) - f1 n)

end

end A029290.P4106824558373040169

namespace A029290

/-- `A109705(2*n)%Δ[A281918(2*(n+1))]` -/
def P4106824558373040169.Spec : Prop :=
  ∀ n, P4106824558373040169.a n = A029290 n

end A029290

/-!
# A029291: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^11)*(1-x^12)).

The programs for A029291, the canonical program `A029291.P6732410073293999855` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029291 has offset 0).

The definition of A029291 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029291.P6465774913552835006

`A025896(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029291.P6465774913552835006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025896 n + a (n - 3)

end

end A029291.P6465774913552835006

namespace A029291

/-- `A025896(n)+a(n-3)` -/
def P6465774913552835006.Spec : Prop :=
  ∀ n, P6465774913552835006.a n = A029291 n

end A029291

/-! ## A029291.P6732410073293999855

`A025840(n)+A029043(n)-A029044(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029291

/-- `A025840(n)+A029043(n)-A029044(n)` -/
def P6732410073293999855.Spec : Prop :=
  ∀ n, P6732410073293999855.a n = A029291 n

theorem P6732410073293999855.correct : P6732410073293999855.Spec := by
  intro n
  simp only [A029291]

end A029291

/-! ## A029291.P11100716424012165265

`A025857(n)+A029276(n)-A029303(n)`
-/

namespace A029291.P11100716424012165265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025857 n + (A029276 n - A029303 n)

end

end A029291.P11100716424012165265

namespace A029291

/-- `A025857(n)+A029276(n)-A029303(n)` -/
def P11100716424012165265.Spec : Prop :=
  ∀ n, P11100716424012165265.a n = A029291 n

end A029291

/-! ## A029291.P2023440699820436588

`A029043(n)+A029149(n)-A029016(n)`
-/

namespace A029291.P2023440699820436588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029043 n + (A029149 n - A029016 n)

end

end A029291.P2023440699820436588

namespace A029291

/-- `A029043(n)+A029149(n)-A029016(n)` -/
def P2023440699820436588.Spec : Prop :=
  ∀ n, P2023440699820436588.a n = A029291 n

end A029291

/-! ## A029291.P6404461949341240952

`A029271(n)+A029280(n)-A029261(n)`
-/

namespace A029291.P6404461949341240952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029271 n + (A029280 n - A029261 n)

end

end A029291.P6404461949341240952

namespace A029291

/-- `A029271(n)+A029280(n)-A029261(n)` -/
def P6404461949341240952.Spec : Prop :=
  ∀ n, P6404461949341240952.a n = A029291 n

end A029291

/-! ## A029291.P5026544015044733470

`A029285(n)+A029346(n)-A029339(n)`
-/

namespace A029291.P5026544015044733470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029285 n + (A029346 n - A029339 n)

end

end A029291.P5026544015044733470

namespace A029291

/-- `A029285(n)+A029346(n)-A029339(n)` -/
def P5026544015044733470.Spec : Prop :=
  ∀ n, P5026544015044733470.a n = A029291 n

end A029291

/-! ## A029291.P10449087970870137867

`Δ[∑[A029303(n)]-A029325(n)]`
-/

namespace A029291.P10449087970870137867
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029291.P10449087970870137867

namespace A029291

/-- `Δ[∑[A029303(n)]-A029325(n)]` -/
def P10449087970870137867.Spec : Prop :=
  ∀ n, P10449087970870137867.a n = A029291 n

end A029291

/-! ## A029291.P1334989967263587919

`A029303(n+1)-Δ[A029325(n)]`
-/

namespace A029291.P1334989967263587919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 (n + 1) - (f1 (n + 1) - f1 n)

end

end A029291.P1334989967263587919

namespace A029291

/-- `A029303(n+1)-Δ[A029325(n)]` -/
def P1334989967263587919.Spec : Prop :=
  ∀ n, P1334989967263587919.a n = A029291 n

end A029291

/-! ## A029291.P12065086690269850973

`Δ[a(n-3)-(A029412(n)-A029104(n))]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A029291.P12065086690269850973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 3) - (A029412 n - A029104 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029291.P12065086690269850973

namespace A029291

/-- `Δ[a(n-3)-(A029412(n)-A029104(n))]` -/
def P12065086690269850973.Spec : Prop :=
  ∀ n, P12065086690269850973.a n = A029291 n

end A029291

/-!
# A029292: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^8)).

The programs for A029292, the canonical program `A029292.P6272815214469632561` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029292 has offset 0).

The definition of A029292 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029292.P6272815214469632561

`A025897(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A029292

/-- `A025897(n)+a(n-3)` -/
def P6272815214469632561.Spec : Prop :=
  ∀ n, P6272815214469632561.a n = A029292 n

theorem P6272815214469632561.correct : P6272815214469632561.Spec := by
  intro n
  simp only [A029292]

end A029292

/-! ## A029292.P3662407074478113093

`A025842(n)+A029045(n)-A029046(n)`
-/

namespace A029292.P3662407074478113093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025842 n + (A029045 n - A029046 n)

end

end A029292.P3662407074478113093

namespace A029292

/-- `A025842(n)+A029045(n)-A029046(n)` -/
def P3662407074478113093.Spec : Prop :=
  ∀ n, P3662407074478113093.a n = A029292 n

end A029292

/-! ## A029292.P3537503364611845685

`A025845(n)+A029046(n)-A029049(n)`
-/

namespace A029292.P3537503364611845685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025845 n + (A029046 n - A029049 n)

end

end A029292.P3537503364611845685

namespace A029292

/-- `A025845(n)+A029046(n)-A029049(n)` -/
def P3537503364611845685.Spec : Prop :=
  ∀ n, P3537503364611845685.a n = A029292 n

end A029292

/-! ## A029292.P136322220468690832

`A029306(n)+A029413(n)-A025908(n)`
-/

namespace A029292.P136322220468690832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029306 n + (A029413 n - A025908 n)

end

end A029292.P136322220468690832

namespace A029292

/-- `A029306(n)+A029413(n)-A025908(n)` -/
def P136322220468690832.Spec : Prop :=
  ∀ n, P136322220468690832.a n = A029292 n

end A029292

/-! ## A029292.P14636885531186386032

`A029045(n)+A029143(n)-A029013(n)`
-/

namespace A029292.P14636885531186386032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029045 n + (A029143 n - A029013 n)

end

end A029292.P14636885531186386032

namespace A029292

/-- `A029045(n)+A029143(n)-A029013(n)` -/
def P14636885531186386032.Spec : Prop :=
  ∀ n, P14636885531186386032.a n = A029292 n

end A029292

/-!
# A029293: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^9)).

The programs for A029293, the canonical program `A029293.P15551204982599557878` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029293 has offset 0).

The definition of A029293 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029293.P15551204982599557878

`A025898(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029293

/-- `A025898(n)+a(n-3)` -/
def P15551204982599557878.Spec : Prop :=
  ∀ n, P15551204982599557878.a n = A029293 n

theorem P15551204982599557878.correct : P15551204982599557878.Spec := by
  intro n
  simp only [A029293]

end A029293

/-! ## A029293.P11065498061004307798

`A029371(A004773(n))%A048725(A000032(n))`
-/

namespace A029293.P11065498061004307798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029371 (A004773 n).toNat) (A048725 (A000032 n).toNat)

end

end A029293.P11065498061004307798

namespace A029293

/-- `A029371(A004773(n))%A048725(A000032(n))` -/
def P11065498061004307798.Spec : Prop :=
  ∀ n, P11065498061004307798.a n = A029293 n

end A029293

/-! ## A029293.P1392715930131586138

`A029371(A004773(n))^A014963(A255997(n+1))`
-/

namespace A029293.P1392715930131586138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029371 (A004773 n).toNat : ℚ) ^ (A014963 (A255997 (n + 1)).toNat : ℤ)

end

end A029293.P1392715930131586138

namespace A029293

/-- `A029371(A004773(n))^A014963(A255997(n+1))` -/
def P1392715930131586138.Spec : Prop :=
  ∀ n, P1392715930131586138.a n = (A029293 n : ℚ)

end A029293

/-! ## A029293.P4415746158587959061

`A001221(A205714((n+1)^3))*A029371(A004773(n))`
-/

namespace A029293.P4415746158587959061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A205714 ((n + 1) ^ 3)).toNat * A029371 (A004773 n).toNat

end

end A029293.P4415746158587959061

namespace A029293

/-- `A001221(A205714((n+1)^3))*A029371(A004773(n))` -/
def P4415746158587959061.Spec : Prop :=
  ∀ n, P4415746158587959061.a n = A029293 n

end A029293

/-! ## A029293.P7014861430436740078

`A338971(A361852(n+1))`
-/

namespace A029293.P7014861430436740078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338971 (A361852 (n + 1)).toNat

end

end A029293.P7014861430436740078

namespace A029293

/-- `A338971(A361852(n+1))` -/
def P7014861430436740078.Spec : Prop :=
  ∀ n, P7014861430436740078.a n = A029293 n

end A029293

/-!
# A029294: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^10)).

The programs for A029294, the canonical program `A029294.P16239895637196270170` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029294 has offset 0).

The definition of A029294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029294.P16239895637196270170

`A025899(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A029294

/-- `A025899(n)+a(n-3)` -/
def P16239895637196270170.Spec : Prop :=
  ∀ n, P16239895637196270170.a n = A029294 n

theorem P16239895637196270170.correct : P16239895637196270170.Spec := by
  intro n
  simp only [A029294]

end A029294

/-! ## A029294.P4473660826925649159

`A029310(n)+A029348(n)-A029363(n)`
-/

namespace A029294.P4473660826925649159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029310 n + (A029348 n - A029363 n)

end

end A029294.P4473660826925649159

namespace A029294

/-- `A029310(n)+A029348(n)-A029363(n)` -/
def P4473660826925649159.Spec : Prop :=
  ∀ n, P4473660826925649159.a n = A029294 n

end A029294

/-! ## A029294.P9521610590138733628

`A029071(n+6)-A029074(n+6)+A029310(n)-A029363(n)`
-/

namespace A029294.P9521610590138733628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029071 (n + 6) - A029074 (n + 6) + (A029310 n - A029363 n)

end

end A029294.P9521610590138733628

namespace A029294

/-- `A029071(n+6)-A029074(n+6)+A029310(n)-A029363(n)` -/
def P9521610590138733628.Spec : Prop :=
  ∀ n, P9521610590138733628.a n = A029294 n

end A029294

/-! ## A029294.P1935512074504659955

`A332241(n+5)%A332267(A332271(2*(n+2)))`
-/

namespace A029294.P1935512074504659955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332241 (n + 5)) (A332267 (A332271 (2 * (n + 2))).toNat)

end

end A029294.P1935512074504659955

namespace A029294

/-- `A332241(n+5)%A332267(A332271(2*(n+2)))` -/
def P1935512074504659955.Spec : Prop :=
  ∀ n, P1935512074504659955.a n = A029294 n

end A029294

/-! ## A029294.P13217562489332720941

`A196563(A305385(n+1)+A030041(n))`
-/

namespace A029294.P13217562489332720941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A305385 (n + 1) + A030041 n).toNat

end

end A029294.P13217562489332720941

namespace A029294

/-- `A196563(A305385(n+1)+A030041(n))` -/
def P13217562489332720941.Spec : Prop :=
  ∀ n, P13217562489332720941.a n = A029294 n

end A029294

/-!
# A029295: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^11)).

The programs for A029295, the canonical program `A029295.P3254125560290705347` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029295 has offset 0).

The definition of A029295 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029295.P4139104415447919672

`A025900(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029295.P4139104415447919672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025900 n + a (n - 3)

end

end A029295.P4139104415447919672

namespace A029295

/-- `A025900(n)+a(n-3)` -/
def P4139104415447919672.Spec : Prop :=
  ∀ n, P4139104415447919672.a n = A029295 n

end A029295

/-! ## A029295.P3254125560290705347

`A029311(n)+A029418(n)-A025913(n)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A029295

/-- `A029311(n)+A029418(n)-A025913(n)` -/
def P3254125560290705347.Spec : Prop :=
  ∀ n, P3254125560290705347.a n = A029295 n

theorem P3254125560290705347.correct : P3254125560290705347.Spec := by
  intro n
  simp only [A029295]

end A029295

/-! ## A029295.P4275241404978632782

`A029217(n)+A029255(n)-A029184(n)`
-/

namespace A029295.P4275241404978632782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029217 n + (A029255 n - A029184 n)

end

end A029295.P4275241404978632782

namespace A029295

/-- `A029217(n)+A029255(n)-A029184(n)` -/
def P4275241404978632782.Spec : Prop :=
  ∀ n, P4275241404978632782.a n = A029295 n

end A029295

/-! ## A029295.P986370391858806837

`A029303(n)+A029349(n)-A029357(n)`
-/

namespace A029295.P986370391858806837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029349 n - A029357 n)

end

end A029295.P986370391858806837

namespace A029295

/-- `A029303(n)+A029349(n)-A029357(n)` -/
def P986370391858806837.Spec : Prop :=
  ∀ n, P986370391858806837.a n = A029295 n

end A029295

/-! ## A029295.P12286913493560655346

`A029159(n+7)-A029166(n+7)+A029418(n)-A025913(n)`
-/

namespace A029295.P12286913493560655346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029159 (n + 7) - A029166 (n + 7) + (A029418 n - A025913 n)

end

end A029295.P12286913493560655346

namespace A029295

/-- `A029159(n+7)-A029166(n+7)+A029418(n)-A025913(n)` -/
def P12286913493560655346.Spec : Prop :=
  ∀ n, P12286913493560655346.a n = A029295 n

end A029295

/-!
# A029296: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^7)*(1-x^12)).

The programs for A029296, the canonical program `A029296.P16225914306280528730` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029296 has offset 0).

The definition of A029296 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029296.P16225914306280528730

`A025901(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A029296

/-- `A025901(n)+a(n-3)` -/
def P16225914306280528730.Spec : Prop :=
  ∀ n, P16225914306280528730.a n = A029296 n

theorem P16225914306280528730.correct : P16225914306280528730.Spec := by
  intro n
  simp only [A029296]

end A029296

/-! ## A029296.P5933095667977534533

`A029272(n+7)-A029277(n+7)`
-/

namespace A029296.P5933095667977534533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029272 (n + 7) - A029277 (n + 7)

end

end A029296.P5933095667977534533

namespace A029296

/-- `A029272(n+7)-A029277(n+7)` -/
def P5933095667977534533.Spec : Prop :=
  ∀ n, P5933095667977534533.a n = A029296 n

end A029296

/-! ## A029296.P18057323241222720020

`A284248(3^A025841(n))`
-/

namespace A029296.P18057323241222720020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284248 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A025841 n : ℤ))).toNat

end

end A029296.P18057323241222720020

namespace A029296

/-- `A284248(3^A025841(n))` -/
def P18057323241222720020.Spec : Prop :=
  ∀ n, P18057323241222720020.a n = A029296 n

end A029296

/-! ## A029296.P12278642042869741835

`A127327(A001304(n))`
-/

namespace A029296.P12278642042869741835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127327 (A001304 n).toNat

end

end A029296.P12278642042869741835

namespace A029296

/-- `A127327(A001304(n))` -/
def P12278642042869741835.Spec : Prop :=
  ∀ n, P12278642042869741835.a n = A029296 n

end A029296

/-! ## A029296.P10588778539637965856

`A127327(A114830(n+1))`
-/

namespace A029296.P10588778539637965856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127327 (A114830 (n + 1)).toNat

end

end A029296.P10588778539637965856

namespace A029296

/-- `A127327(A114830(n+1))` -/
def P10588778539637965856.Spec : Prop :=
  ∀ n, P10588778539637965856.a n = A029296 n

end A029296

/-!
# A029297: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^9)).

The programs for A029297, the canonical program `A029297.P14716766731016212801` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029297 has offset 0).

The definition of A029297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029297.P14716766731016212801

`A025902(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A029297

/-- `A025902(n)+a(n-3)` -/
def P14716766731016212801.Spec : Prop :=
  ∀ n, P14716766731016212801.a n = A029297 n

theorem P14716766731016212801.correct : P14716766731016212801.Spec := by
  intro n
  simp only [A029297]

end A029297

/-! ## A029297.P11677485035549642975

`A101637(A000051(n))+A029300(n)`
-/

namespace A029297.P11677485035549642975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A000051 n).toNat + A029300 n

end

end A029297.P11677485035549642975

namespace A029297

/-- `A101637(A000051(n))+A029300(n)` -/
def P11677485035549642975.Spec : Prop :=
  ∀ n, P11677485035549642975.a n = A029297 n

end A029297

/-! ## A029297.P10170235963287472295

`A101637(A000051(n))+A004275(A025842(n))`
-/

namespace A029297.P10170235963287472295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A000051 n).toNat + A004275 (A025842 n).toNat

end

end A029297.P10170235963287472295

namespace A029297

/-- `A101637(A000051(n))+A004275(A025842(n))` -/
def P10170235963287472295.Spec : Prop :=
  ∀ n, P10170235963287472295.a n = A029297 n

end A029297

/-! ## A029297.P16675122353140870803

`A118135(A286542(n))+A029300(n)`
-/

namespace A029297.P16675122353140870803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118135 (A286542 n).toNat + A029300 n

end

end A029297.P16675122353140870803

namespace A029297

/-- `A118135(A286542(n))+A029300(n)` -/
def P16675122353140870803.Spec : Prop :=
  ∀ n, P16675122353140870803.a n = A029297 n

end A029297

/-! ## A029297.P12375890561573127615

`A374758(A374766(2*(n+1))%A374756(3*n+4))`
-/

namespace A029297.P12375890561573127615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (Int.tmod (A374766 (2 * (n + 1))) (A374756 (3 * n + 4))).toNat

end

end A029297.P12375890561573127615

namespace A029297

/-- `A374758(A374766(2*(n+1))%A374756(3*n+4))` -/
def P12375890561573127615.Spec : Prop :=
  ∀ n, P12375890561573127615.a n = A029297 n

end A029297

/-!
# A029298: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^10)).

The programs for A029298, the canonical program `A029298.P4835252118331130321` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029298 has offset 0).

The definition of A029298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029298.P4835252118331130321

`A029254(n)-a(n-4)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A029298

/-- `A029254(n)-a(n-4)` -/
def P4835252118331130321.Spec : Prop :=
  ∀ n, P4835252118331130321.a n = A029298 n

theorem P4835252118331130321.correct : P4835252118331130321.Spec := by
  intro n
  simp only [A029298]

end A029298

/-! ## A029298.P3830752966224989849

`∑[A029254(n+4)-A029273(n+4)]`
-/

namespace A029298.P3830752966224989849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029254 (n + 4) - A029273 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029298.P3830752966224989849

namespace A029298

/-- `∑[A029254(n+4)-A029273(n+4)]` -/
def P3830752966224989849.Spec : Prop :=
  ∀ n, P3830752966224989849.a n = A029298 n

end A029298

/-! ## A029298.P4874441138629769215

`or(A038194(n+1)%A318357(4*n+3), A025918(3*n))`
-/

namespace A029298.P4874441138629769215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A038194 (n + 1)) (A318357 (4 * n + 3))) (A025918 (3 * n))

end

end A029298.P4874441138629769215

namespace A029298

/-- `or(A038194(n+1)%A318357(4*n+3), A025918(3*n))` -/
def P4874441138629769215.Spec : Prop :=
  ∀ n, P4874441138629769215.a n = A029298 n

end A029298

/-! ## A029298.P657729339960114981

`or(A068068(3*n+1)%A318357(4*n+3), A025918(3*n))`
-/

namespace A029298.P657729339960114981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A068068 (3 * n + 1)) (A318357 (4 * n + 3))) (A025918 (3 * n))

end

end A029298.P657729339960114981

namespace A029298

/-- `or(A068068(3*n+1)%A318357(4*n+3), A025918(3*n))` -/
def P657729339960114981.Spec : Prop :=
  ∀ n, P657729339960114981.a n = A029298 n

end A029298

/-! ## A029298.P14510674720848448843

`A337196(A100161(n+1))+A025918(3*n)`
-/

namespace A029298.P14510674720848448843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337196 (A100161 (n + 1)).toNat + A025918 (3 * n)

end

end A029298.P14510674720848448843

namespace A029298

/-- `A337196(A100161(n+1))+A025918(3*n)` -/
def P14510674720848448843.Spec : Prop :=
  ∀ n, P14510674720848448843.a n = A029298 n

end A029298

/-!
# A029299: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^11)).

The programs for A029299, the canonical program `A029299.P16742810720159081316` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A029299 has offset 0).

The definition of A029299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A029299.P16742810720159081316

`A025903(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A029299

/-- `A025903(n)+a(n-3)` -/
def P16742810720159081316.Spec : Prop :=
  ∀ n, P16742810720159081316.a n = A029299 n

theorem P16742810720159081316.correct : P16742810720159081316.Spec := by
  intro n
  simp only [A029299]

end A029299

/-! ## A029299.P4377624074478499952

`A029154(n+6)-A029163(n+6)`
-/

namespace A029299.P4377624074478499952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029154 (n + 6) - A029163 (n + 6)

end

end A029299.P4377624074478499952

namespace A029299

/-- `A029154(n+6)-A029163(n+6)` -/
def P4377624074478499952.Spec : Prop :=
  ∀ n, P4377624074478499952.a n = A029299 n

end A029299

/-! ## A029299.P5483762680887593537

`A175834(A390036(n))`
-/

namespace A029299.P5483762680887593537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175834 (A390036 n).toNat

end

end A029299.P5483762680887593537

namespace A029299

/-- `A175834(A390036(n))` -/
def P5483762680887593537.Spec : Prop :=
  ∀ n, P5483762680887593537.a n = A029299 n

end A029299

/-! ## A029299.P9209490200491866072

`round(sqrt(A390036(n)/2))%A192287(n+3)`
-/

namespace A029299.P9209490200491866072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A390036 n : ℚ) / 2 : ℝ))) (A192287 (n + 3))

end

end A029299.P9209490200491866072

namespace A029299

/-- `round(sqrt(A390036(n)/2))%A192287(n+3)` -/
def P9209490200491866072.Spec : Prop :=
  ∀ n, P9209490200491866072.a n = A029299 n

end A029299

/-! ## A029299.P13095624684654199458

`A133010(A315263(n))+A025842(n)`
-/

namespace A029299.P13095624684654199458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133010 (A315263 n).toNat + A025842 n

end

end A029299.P13095624684654199458

namespace A029299

/-- `A133010(A315263(n))+A025842(n)` -/
def P13095624684654199458.Spec : Prop :=
  ∀ n, P13095624684654199458.a n = A029299 n

end A029299

