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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A144000: Rectangular array by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of marked squares in the rectangle [0,m]x[0,n].

The programs for A144000, the canonical program `A144000.P3782749524518294279` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144000 has offset 1).

The definition of A144000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144000.P1335768515001890512

`A003991(n+1)-A144001(n+1)`
-/

namespace A144000.P1335768515001890512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A144001 (n + 1)

end

end A144000.P1335768515001890512

namespace A144000

/-- `A003991(n+1)-A144001(n+1)` -/
def P1335768515001890512.Spec : Prop :=
  ∀ n, P1335768515001890512.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P1392044684608075168

`A103221(A098352(n+1)-A164359(n))`
-/

namespace A144000.P1392044684608075168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A098352 (n + 1) - A164359 n).toNat

end

end A144000.P1392044684608075168

namespace A144000

/-- `A103221(A098352(n+1)-A164359(n))` -/
def P1392044684608075168.Spec : Prop :=
  ∀ n, P1392044684608075168.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P3782749524518294279

`A004396(n+1)-A004396(n-A059036(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144000

/-- `A004396(n+1)-A004396(n-A059036(n))` -/
def P3782749524518294279.Spec : Prop :=
  ∀ n, P3782749524518294279.a n = A144000 (n + 1)

theorem P3782749524518294279.correct : P3782749524518294279.Spec := by
  intro n
  simp only [A144000, Nat.add_sub_cancel]

end A144000

/-! ## A144000.P3228143805910975864

`A143996(n+1)+A143997(n+1)-A144001(n+1)`
-/

namespace A144000.P3228143805910975864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 (n + 1) + (A143997 (n + 1) - A144001 (n + 1))

end

end A144000.P3228143805910975864

namespace A144000

/-- `A143996(n+1)+A143997(n+1)-A144001(n+1)` -/
def P3228143805910975864.Spec : Prop :=
  ∀ n, P3228143805910975864.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P1897436605638471689

`A143998(n+1)+A143999(n+1)-A144001(n+1)`
-/

namespace A144000.P1897436605638471689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (n + 1) + (A143999 (n + 1) - A144001 (n + 1))

end

end A144000.P1897436605638471689

namespace A144000

/-- `A143998(n+1)+A143999(n+1)-A144001(n+1)` -/
def P1897436605638471689.Spec : Prop :=
  ∀ n, P1897436605638471689.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P6073812078121706744

`A004396(n+1)-A004396(n+1-A003991(n+1))`
-/

namespace A144000.P6073812078121706744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - A004396 ((n + 1 : ℤ) - A003991 (n + 1)).toNat

end

end A144000.P6073812078121706744

namespace A144000

/-- `A004396(n+1)-A004396(n+1-A003991(n+1))` -/
def P6073812078121706744.Spec : Prop :=
  ∀ n, P6073812078121706744.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P11927865802141174972

`A003991(n+1)-A002264(A080425(n)+A003991(n+1))`
-/

namespace A144000.P11927865802141174972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002264 (A080425 n + A003991 (n + 1)).toNat

end

end A144000.P11927865802141174972

namespace A144000

/-- `A003991(n+1)-A002264(A080425(n)+A003991(n+1))` -/
def P11927865802141174972.Spec : Prop :=
  ∀ n, P11927865802141174972.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P6799110318183961716

`A003991(n+1)-A002264(A131534(n)+A003991(n+1))`
-/

namespace A144000.P6799110318183961716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002264 (A131534 n + A003991 (n + 1)).toNat

end

end A144000.P6799110318183961716

namespace A144000

/-- `A003991(n+1)-A002264(A131534(n)+A003991(n+1))` -/
def P6799110318183961716.Spec : Prop :=
  ∀ n, P6799110318183961716.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P16273108005361698324

`A003991(n+1)-A002264(A317960(n)+A003991(n+1))`
-/

namespace A144000.P16273108005361698324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A002264 (A317960 n + A003991 (n + 1)).toNat

end

end A144000.P16273108005361698324

namespace A144000

/-- `A003991(n+1)-A002264(A317960(n)+A003991(n+1))` -/
def P16273108005361698324.Spec : Prop :=
  ∀ n, P16273108005361698324.a n = A144000 (n + 1)

end A144000

/-! ## A144000.P2065547305591210049

`A000005(A036561(n))-A144001(n+1)`
-/

namespace A144000.P2065547305591210049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat - A144001 (n + 1)

end

end A144000.P2065547305591210049

namespace A144000

/-- `A000005(A036561(n))-A144001(n+1)` -/
def P2065547305591210049.Spec : Prop :=
  ∀ n, P2065547305591210049.a n = A144000 (n + 1)

end A144000

/-!
# A144001: Rectangular array read by antidiagonals: label each unit square in the first quadrant lattice by its northeast vertex (x,y) and mark squares for which x + y == 0 (mod 3); then R(m,n) is the number of unmarked squares in the rectangle [0,m] X [0,n].

The programs for A144001, the canonical program `A144001.P7449045138667428568` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144001 has offset 1).

The definition of A144001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144001.P7449045138667428568

`A003991(n+1)-A144000(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A144001

/-- `A003991(n+1)-A144000(n+1)` -/
def P7449045138667428568.Spec : Prop :=
  ∀ n, P7449045138667428568.a n = A144001 (n + 1)

theorem P7449045138667428568.correct : P7449045138667428568.Spec := by
  intro n
  simp only [A144001, Nat.add_sub_cancel]

end A144001

/-! ## A144001.P9211933055448099693

`A002264(A080425(n)+A003991(n+1))`
-/

namespace A144001.P9211933055448099693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A080425 n + A003991 (n + 1)).toNat

end

end A144001.P9211933055448099693

namespace A144001

/-- `A002264(A080425(n)+A003991(n+1))` -/
def P9211933055448099693.Spec : Prop :=
  ∀ n, P9211933055448099693.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P1609931408888712138

`A002264(A131534(n)+A003991(n+1))`
-/

namespace A144001.P1609931408888712138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A131534 n + A003991 (n + 1)).toNat

end

end A144001.P1609931408888712138

namespace A144001

/-- `A002264(A131534(n)+A003991(n+1))` -/
def P1609931408888712138.Spec : Prop :=
  ∀ n, P1609931408888712138.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P16624055444846702369

`A002264(A003991(n+1)+Δ[A042965(n+1)])`
-/

namespace A144001.P16624055444846702369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003991 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A144001.P16624055444846702369

namespace A144001

/-- `A002264(A003991(n+1)+Δ[A042965(n+1)])` -/
def P16624055444846702369.Spec : Prop :=
  ∀ n, P16624055444846702369.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P861511818387116102

`A002264(A010135(2*n+1)+A003991(n+1))`
-/

namespace A144001.P861511818387116102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A010135 (2 * n + 1) + A003991 (n + 1)).toNat

end

end A144001.P861511818387116102

namespace A144001

/-- `A002264(A010135(2*n+1)+A003991(n+1))` -/
def P861511818387116102.Spec : Prop :=
  ∀ n, P861511818387116102.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P8433128761922888846

`A143996(n+1)+A143997(n+1)-A144000(n+1)`
-/

namespace A144001.P8433128761922888846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143996 (n + 1) + (A143997 (n + 1) - A144000 (n + 1))

end

end A144001.P8433128761922888846

namespace A144001

/-- `A143996(n+1)+A143997(n+1)-A144000(n+1)` -/
def P8433128761922888846.Spec : Prop :=
  ∀ n, P8433128761922888846.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P12865280568964965830

`A143998(n+1)+A143999(n+1)-A144000(n+1)`
-/

namespace A144001.P12865280568964965830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143998 (n + 1) + (A143999 (n + 1) - A144000 (n + 1))

end

end A144001.P12865280568964965830

namespace A144001

/-- `A143998(n+1)+A143999(n+1)-A144000(n+1)` -/
def P12865280568964965830.Spec : Prop :=
  ∀ n, P12865280568964965830.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P1039607298905477304

`A002264(A317960(n)+A003991(n+1))`
-/

namespace A144001.P1039607298905477304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A317960 n + A003991 (n + 1)).toNat

end

end A144001.P1039607298905477304

namespace A144001

/-- `A002264(A317960(n)+A003991(n+1))` -/
def P1039607298905477304.Spec : Prop :=
  ∀ n, P1039607298905477304.a n = A144001 (n + 1)

end A144001

/-! ## A144001.P16872113083027825118

`A000005(A036561(n))-A144000(n+1)`
-/

namespace A144001.P16872113083027825118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat - A144000 (n + 1)

end

end A144001.P16872113083027825118

namespace A144001

/-- `A000005(A036561(n))-A144000(n+1)` -/
def P16872113083027825118.Spec : Prop :=
  ∀ n, P16872113083027825118.a n = A144001 (n + 1)

end A144001

/-!
# A144002: E.g.f. A(x) satisfies: A(x) = 1 + Series_Reversion( Integral 1/A(x)^2 dx ).

The programs for A144002, there is no canonical definition to state claims against.
-/

/-! ## A144002.P18410176496977215294

`A292248(A060350(n))`
-/

namespace A144002.P18410176496977215294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292248 (A060350 n).toNat

end

end A144002.P18410176496977215294

/-! ## A144002.P16624485862348514900

`A007614(A099716(n)+1)`
-/

namespace A144002.P16624485862348514900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007614 (A099716 n + 1).toNat

end

end A144002.P16624485862348514900

/-!
# A144003: E.g.f. A(x) satisfies: A(x) = 1 + Series_Reversion( Integral 1/A(x)^3 dx ).

The programs for A144003, there is no canonical definition to state claims against.
-/

/-! ## A144003.P1005781314257775700

`A385132(n!²)`
-/

namespace A144003.P1005781314257775700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385132 (Nat.factorial n ^ 2)

end

end A144003.P1005781314257775700

/-!
# A144004: E.g.f. A(x) satisfies: A(x) = 1 + Series_Reversion( Integral 1/A(x)^4 dx ).

The programs for A144004, there is no canonical definition to state claims against.
-/

/-! ## A144004.P14183264153378359621

`A023900(A245918(n))`
-/

namespace A144004.P14183264153378359621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A245918 n).toNat

end

end A144004.P14183264153378359621

/-!
# A144005: E.g.f. A(x) satisfies: A(x) = 1 + Series_Reversion( Integral A(-x) dx ).

The programs for A144005, there is no canonical definition to state claims against.
-/

/-! ## A144005.P7284745024691419793

`A014623(abs(1-n))`
-/

namespace A144005.P7284745024691419793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014623 |1 - (n : ℤ)|.toNat

end

end A144005.P7284745024691419793

/-! ## A144005.P17804729522259909423

`∑{digits}[1-n, A014623(#)]`
-/

namespace A144005.P17804729522259909423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A014623 x).sum

end

end A144005.P17804729522259909423

/-! ## A144005.P17450332733597121663

`∏{e}[A011782(n), A014623(#)]`
-/

namespace A144005.P17450332733597121663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014623 (Nat.factorization (f1 n).natAbs p)

end

end A144005.P17450332733597121663

/-! ## A144005.P5852876726468427493

`∏{e}[A135092(n), A014623(#)]`
-/

namespace A144005.P5852876726468427493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014623 (Nat.factorization (f1 n).natAbs p)

end

end A144005.P5852876726468427493

/-! ## A144005.P6201895869249529564

`A000027(A014623(log2(ceil(2^(n-1)))))`
-/

namespace A144005.P6201895869249529564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A014623 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat).toNat

end

end A144005.P6201895869249529564

/-!
# A144007: Limit of unsigned reversed rows of triangle A144006.

The programs for A144007, there is no canonical definition to state claims against.
-/

/-! ## A144007.P14231015097843909028

`A014621(∑[∑[n]]+2)`
-/

namespace A144007.P14231015097843909028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014621 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A144007.P14231015097843909028

/-! ## A144007.P5106502740888598258

`A077472(A394698(n+1))`
-/

namespace A144007.P5106502740888598258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077472 (A394698 (n + 1)).toNat

end

end A144007.P5106502740888598258

/-!
# A144008: E.g.f. satisfies: A'(x) = (1 + x*A(x))^3 with A(0)=1.

The programs for A144008, there is no canonical definition to state claims against.
-/

/-! ## A144008.P835431696082882704

`A242062(9*A222014(n))`
-/

namespace A144008.P835431696082882704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (9 * A222014 n).toNat

end

end A144008.P835431696082882704

/-! ## A144008.P1603451071247513391

`A219652(∏[A055932(n+1)])-n`
-/

namespace A144008.P1603451071247513391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (∏ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A144008.P1603451071247513391

/-!
# A144009: E.g.f. satisfies: A'(x) = (1 + x*A(x))^4 with A(0)=1.

The programs for A144009, there is no canonical definition to state claims against.
-/

/-! ## A144009.P9981689149027516069

`A056699(or(1, A212030(n)))`
-/

namespace A144009.P9981689149027516069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056699 (Int.lor 1 (A212030 n)).toNat

end

end A144009.P9981689149027516069

/-! ## A144009.P14659526751360467057

`A114112(or(1, A212030(n)))`
-/

namespace A144009.P14659526751360467057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (Int.lor 1 (A212030 n)).toNat

end

end A144009.P14659526751360467057

/-!
# A144010: E.g.f. satisfies: A'(x) = 1/(1 - x*A(x)) with A(0)=1.

The programs for A144010, there is no canonical definition to state claims against.
-/

/-! ## A144010.P1494778942529578563

`A107661((n-1)*A240211(n))`
-/

namespace A144010.P1494778942529578563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107661 (((n : ℤ) - 1) * A240211 n).toNat

end

end A144010.P1494778942529578563

/-! ## A144010.P12195492742622223165

`A107661(∑[floor(n²/8)]*A107680(n))`
-/

namespace A144010.P12195492742622223165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107661 ((∑ j ∈ Finset.range (n + 1), f1 j) * A107680 n).toNat

end

end A144010.P12195492742622223165

/-! ## A144010.P6794225176251775369

`A107661(A022819(n)*A062490(n))`
-/

namespace A144010.P6794225176251775369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107661 (A022819 n * A062490 n).toNat

end

end A144010.P6794225176251775369

/-!
# A144011: E.g.f. satisfies: A'(x) = 1/(1 - x*A(x))^2 with A(0)=1.

The programs for A144011, there is no canonical definition to state claims against.
-/

/-! ## A144011.P4540508964100268833

`A326043(A221529(5*a(n-1)-2*a(n-2)))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=10`
-/

namespace A144011.P4540508964100268833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 10] fun n a =>
  A326043 (A221529 (5 * a (n - 1) - 2 * a (n - 2)).toNat).toNat

end

end A144011.P4540508964100268833

/-! ## A144011.P11157972592976062033

`A078429(A065440(n)+A000949(n))`
-/

namespace A144011.P11157972592976062033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078429 (A065440 n + A000949 n).toNat

end

end A144011.P11157972592976062033

/-!
# A144012: E.g.f. satisfies: A'(x) = 1 + x*A(x)^2 where A(0) = 1.

The programs for A144012, there is no canonical definition to state claims against.
-/

/-! ## A144012.P13007388134967018385

`A361070(A059221(n))`
-/

namespace A144012.P13007388134967018385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361070 (A059221 n).toNat

end

end A144012.P13007388134967018385

/-! ## A144012.P12030090527285533142

`A185283(A350354(n)²)`
-/

namespace A144012.P12030090527285533142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A350354 n ^ 2).toNat

end

end A144012.P12030090527285533142

/-! ## A144012.P7143029297819899200

`A361070(A049075(n+1))`
-/

namespace A144012.P7143029297819899200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361070 (A049075 (n + 1)).toNat

end

end A144012.P7143029297819899200

/-!
# A144013: E.g.f. satisfies: A'(x) = 1 + x*A(x)^3 where A(0) = 1.

The programs for A144013, there is no canonical definition to state claims against.
-/

/-! ## A144013.P8702974849076371410

`∏{p}[1-n!, A345921(#)]`
-/

namespace A144013.P8702974849076371410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A345921 p

end

end A144013.P8702974849076371410

/-! ## A144013.P10908620176034320803

`A241983(∑[∑[round(n²/12)]²])`
-/

namespace A144013.P10908620176034320803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 12)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241983 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144013.P10908620176034320803

/-!
# A144014: E.g.f. satisfies: A'(x) = 1 + x*A(x)^4 where A(0) = 1.

The programs for A144014, there is no canonical definition to state claims against.
-/

/-! ## A144014.P18334208974983021862

`A093886(A351438(n))`
-/

namespace A144014.P18334208974983021862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093886 (A351438 n).toNat

end

end A144014.P18334208974983021862

/-! ## A144014.P9409424686332189969

`A057354(A381280(n)+2)`
-/

namespace A144014.P9409424686332189969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A381280 n + 2).toNat

end

end A144014.P9409424686332189969

/-!
# A144015: Expansion of e.g.f. 1/(1 - sin(4*x))^(1/4).

The programs for A144015, there is no canonical definition to state claims against.
-/

/-! ## A144015.P3687135607904465031

`A079523(A186184(n))`
-/

namespace A144015.P3687135607904465031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079523 (A186184 n).toNat

end

end A144015.P3687135607904465031

/-! ## A144015.P1164536198111142877

`A065164(or(3, A052658(n)))`
-/

namespace A144015.P1164536198111142877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (Int.lor 3 (A052658 n)).toNat

end

end A144015.P1164536198111142877

/-!
# A144016: a(n) = the largest positive integer m such that the binary representations of all positive integers <= m are found within the binary representation of n.

The programs for A144016, there is no canonical definition to state claims against.
-/

/-! ## A144016.P8034350795629759655

`A261461(n+1)-1`
-/

namespace A144016.P8034350795629759655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 (n + 1) - 1

end

end A144016.P8034350795629759655

/-! ## A144016.P10851115135608955073

`∑[-Δ[-(A261461(n)+6)]]`
-/

namespace A144016.P10851115135608955073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A261461 n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144016.P10851115135608955073

/-! ## A144016.P6268351259775636521

`A023443(A261461(n+1))`
-/

namespace A144016.P6268351259775636521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A261461 (n + 1)).toNat

end

end A144016.P6268351259775636521

/-! ## A144016.P14683567534418391213

`Δ[∑[A261461(n)]-n]`
-/

namespace A144016.P14683567534418391213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A144016.P14683567534418391213

/-! ## A144016.P15671071417898226118

`xor(A261461(n+1)+A126646(n), A000079(n+1))`
-/

namespace A144016.P15671071417898226118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A261461 (n + 1) + A126646 n) (A000079 (n + 1))

end

end A144016.P15671071417898226118

/-! ## A144016.P2526073392186803025

`and(A261461(n+1)+A000225(n+1), A000225(n+1))`
-/

namespace A144016.P2526073392186803025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A261461 (n + 1) + A000225 (n + 1)) (A000225 (n + 1))

end

end A144016.P2526073392186803025

/-!
# A144017: Number of n X n X n alternating sign hypermatrices.

The programs for A144017, there is no canonical definition to state claims against.
-/

/-! ## A144017.P3980532281890770998

`∏[A133428(n!)]`
-/

namespace A144017.P3980532281890770998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133428 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144017.P3980532281890770998

/-!
# A144018: Triangle T(n,k), n >= 1, 1 <= k <= n, read by rows, where sequence a_k of column k has a_k(0)=0, followed by (k+1)-fold 1 and a_k(n) shifts k places left under Euler transform.

The programs for A144018, there is no canonical definition to state claims against.
-/

/-! ## A144018.P13645880466026394118

`A350843(A348533(n+1)+A228524(n+1))`
-/

namespace A144018.P13645880466026394118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (A348533 (n + 1) + A228524 (n + 1)).toNat

end

end A144018.P13645880466026394118

/-! ## A144018.P5824569365150376336

`ceil(A339067(n+1)/A001222(A317644(n)))`
-/

namespace A144018.P5824569365150376336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A339067 (n + 1) : ℚ) / (A001222 (A317644 n).toNat : ℚ)⌉

end

end A144018.P5824569365150376336

/-! ## A144018.P15372584992197750989

`A258709(n)-A185284(A038207(n))`
-/

namespace A144018.P15372584992197750989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n - A185284 (A038207 n).toNat

end

end A144018.P15372584992197750989

/-! ## A144018.P7051989651163410696

`A258709(n)-A302110(A004148(n))`
-/

namespace A144018.P7051989651163410696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n - A302110 (A004148 n).toNat

end

end A144018.P7051989651163410696

/-! ## A144018.P3864590123591717246

`A097966(A114423(n))`
-/

namespace A144018.P3864590123591717246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097966 (A114423 n).toNat

end

end A144018.P3864590123591717246

/-!
# A144020: Numbers of the form 1+i^2+j^2+k^2 with 1 <= i <= j <= k.

The programs for A144020, there is no canonical definition to state claims against.
-/

/-! ## A144020.P7693417620850817384

`1+A000408(n+1)`
-/

namespace A144020.P7693417620850817384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000408 (n + 1)

end

end A144020.P7693417620850817384

/-! ## A144020.P369278614609096683

`comp[A004214(n+1)-1]+2`
-/

namespace A144020.P369278614609096683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004214 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A144020.P369278614609096683

/-! ## A144020.P14871095194754753424

`∪[A004432(n+1), A154777(n+1)]+1`
-/

namespace A144020.P14871095194754753424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A144020.P14871095194754753424

/-! ## A144020.P10204851546585676266

`lt[0, A025427(n)]+1`
-/

namespace A144020.P10204851546585676266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A144020.P10204851546585676266

/-! ## A144020.P7701996078829292841

`lt[0, A037215(n)]+1`
-/

namespace A144020.P7701996078829292841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A144020.P7701996078829292841

/-! ## A144020.P1410897974941741083

`lt[0, A063691(n)]+1`
-/

namespace A144020.P1410897974941741083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A144020.P1410897974941741083

/-! ## A144020.P6130246059509023149

`lt[0, A347802(n)]+1`
-/

namespace A144020.P6130246059509023149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347802 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A144020.P6130246059509023149

/-! ## A144020.P4764195346231069385

`A020725(A000408(n+1))`
-/

namespace A144020.P4764195346231069385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A000408 (n + 1)).toNat

end

end A144020.P4764195346231069385

/-! ## A144020.P1483800412457164900

`lt[A000161(n), A000164(n)]+1`
-/

namespace A144020.P1483800412457164900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144020.P1483800412457164900

/-! ## A144020.P4953781377745747105

`eq[1, A002828(A025427(n)²)]+1`
-/

namespace A144020.P4953781377745747105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A025427 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A144020.P4953781377745747105

/-! ## A144020.P13369197931786130282

`A008619(2*lt[0, A025427(n)])`
-/

namespace A144020.P13369197931786130282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144020.P13369197931786130282

/-! ## A144020.P1091516650891574068

`A028242(2*lt[0, A063691(n)])`
-/

namespace A144020.P1091516650891574068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144020.P1091516650891574068

/-! ## A144020.P5149139301116681056

`A028242(2*A000408(-xor(n, -1)))`
-/

namespace A144020.P5149139301116681056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A000408 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A144020.P5149139301116681056

/-! ## A144020.P705002926944696420

`A008611(3*lt[0, A025427(n)])`
-/

namespace A144020.P705002926944696420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144020.P705002926944696420

/-! ## A144020.P4340973726975120171

`A008611(3*lt[0, A063691(n)])`
-/

namespace A144020.P4340973726975120171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144020.P4340973726975120171

/-! ## A144020.P4499877134399399501

`A008612(6*lt[0, A063691(n)])`
-/

namespace A144020.P4499877134399399501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (6 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A144020.P4499877134399399501

/-!
# A144021: Eigentriangle by rows, T(n,k) = A000034(n-k+1)*A105476(k-1).

The programs for A144021, there is no canonical definition to state claims against.
-/

/-! ## A144021.P14774926859861819637

`ceil(acot(A050314(n)))*A105476(A002262(n))`
-/

namespace A144021.P14774926859861819637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (A050314 n : ℝ)⌉ * A105476 (A002262 n).toNat

end

end A144021.P14774926859861819637

/-! ## A144021.P13630823345541319912

`A180262(n)+A086017(A000079(n))`
-/

namespace A144021.P13630823345541319912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180262 n + A086017 (A000079 n).toNat

end

end A144021.P13630823345541319912

/-! ## A144021.P8273618175864841984

`A003557(A293364(n))*A180262(n)`
-/

namespace A144021.P8273618175864841984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A293364 n).toNat * A180262 n

end

end A144021.P8273618175864841984

/-!
# A144023: INVERT transform of the rabbit sequence, A005614.

The programs for A144023, there is no canonical definition to state claims against.
-/

/-! ## A144023.P4100216040069695266

`A001462(A002524(n))-A054899(n)`
-/

namespace A144023.P4100216040069695266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A002524 n).toNat - A054899 n

end

end A144023.P4100216040069695266

/-! ## A144023.P12604081176098408496

`A257639(A017928(n))`
-/

namespace A144023.P12604081176098408496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A017928 n).toNat

end

end A144023.P12604081176098408496

/-! ## A144023.P16690500274508726382

`A257639(A017929(n))`
-/

namespace A144023.P16690500274508726382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A017929 n).toNat

end

end A144023.P16690500274508726382

/-! ## A144023.P7004387621993451135

`A257639(A017930(n))`
-/

namespace A144023.P7004387621993451135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A017930 n).toNat

end

end A144023.P7004387621993451135

/-! ## A144023.P6712318060910052964

`A235963(A151265(n))`
-/

namespace A144023.P6712318060910052964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A151265 n).toNat

end

end A144023.P6712318060910052964

/-!
# A144024: Eigentriangle by rows, T(n,k) = A005614(n-k+1)*A144023(k-1).

The programs for A144024, there is no canonical definition to state claims against.
-/

/-! ## A144024.P5005077865324733148

`and(A144157(n), A242275(A059268(n)))`
-/

namespace A144024.P5005077865324733148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A144157 n) (A242275 (A059268 n).toNat)

end

end A144024.P5005077865324733148

/-! ## A144024.P12231867196235874992

`and(A063429(A080508(n+1)), A144157(n))`
-/

namespace A144024.P12231867196235874992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063429 (A080508 (n + 1)).toNat) (A144157 n)

end

end A144024.P12231867196235874992

/-! ## A144024.P17336444519196234289

`A090001(A111549(n+1))-A114775(A099375(n))`
-/

namespace A144024.P17336444519196234289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A111549 (n + 1)).toNat - A114775 (A099375 n).toNat

end

end A144024.P17336444519196234289

/-! ## A144024.P16466059494339809289

`and(A065091(A374679(n+1)), A144157(n))`
-/

namespace A144024.P16466059494339809289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A065091 (A374679 (n + 1)).toNat) (A144157 n)

end

end A144024.P16466059494339809289

/-! ## A144024.P11714366069130769206

`A102675(A075501(n+2))`
-/

namespace A144024.P11714366069130769206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A075501 (n + 2)).toNat

end

end A144024.P11714366069130769206

/-!
# A144025: Eigentriangle by rows, A001006(n-k)*A005773(k); 0<=k<=n.

The programs for A144025, there is no canonical definition to state claims against.
-/

/-! ## A144025.P14512868049015923606

`A244465(A026665(n))+A152251(n+1)`
-/

namespace A144025.P14512868049015923606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244465 (A026665 n).toNat + A152251 (n + 1)

end

end A144025.P14512868049015923606

/-! ## A144025.P8294554870770286804

`A176075(A141476(n)%A080854(n+2))`
-/

namespace A144025.P8294554870770286804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176075 (Int.tmod (A141476 n) (A080854 (n + 2))).toNat

end

end A144025.P8294554870770286804

/-! ## A144025.P16814349782868734884

`or(A036853(A152229(n)), A152251(n+1))`
-/

namespace A144025.P16814349782868734884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036853 (A152229 n).toNat) (A152251 (n + 1))

end

end A144025.P16814349782868734884

/-! ## A144025.P1635102180793136224

`or(A055641(n), A152251(A187829(n+1)))`
-/

namespace A144025.P1635102180793136224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 n) (A152251 (A187829 (n + 1)).toNat)

end

end A144025.P1635102180793136224

/-! ## A144025.P10432905674122821941

`A184983(A144018(n+1))+A152251(n+1)`
-/

namespace A144025.P10432905674122821941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184983 (A144018 (n + 1)).toNat + A152251 (n + 1)

end

end A144025.P10432905674122821941

/-!
# A144026: An INVERT transform of the Thue-Morse sequence.

The programs for A144026, there is no canonical definition to state claims against.
-/

/-! ## A144026.P12598956009926847819

`A144027(A374707(n))`
-/

namespace A144026.P12598956009926847819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (A374707 n).toNat

end

end A144026.P12598956009926847819

/-! ## A144026.P11023366637323973108

`A000007(n)+record[A144027(n+4)]`
-/

namespace A144026.P11023366637323973108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144026.P11023366637323973108

/-! ## A144026.P13344637444726767857

`A343958(n+4)+record[A144027(n+4)]`
-/

namespace A144026.P13344637444726767857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (n + 4) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144026.P13344637444726767857

/-! ## A144026.P580389425413368994

`A144027(∑[n+1])`
-/

namespace A144026.P580389425413368994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144027 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144026.P580389425413368994

/-! ## A144026.P9203882157315987424

`A247911(A188223(n))`
-/

namespace A144026.P9203882157315987424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A188223 n).toNat

end

end A144026.P9203882157315987424

/-!
# A144027: Eigentriangle by rows, T(n,k) = A010060(n-k+1)*A144026(k-1), 1 <= k <= n.

The programs for A144027, there is no canonical definition to state claims against.
-/

/-! ## A144027.P15607221317760362211

`A144219(n+1)^A162514(A144269(n+1))`
-/

namespace A144027.P15607221317760362211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144219 (n + 1) : ℚ) ^ (A162514 (A144269 (n + 1)).toNat : ℤ)

end

end A144027.P15607221317760362211

/-! ## A144027.P15619777733270157713

`A144219(n+1)+A144197(A158893(n+1))`
-/

namespace A144027.P15619777733270157713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144219 (n + 1) + A144197 (A158893 (n + 1)).toNat

end

end A144027.P15619777733270157713

/-! ## A144027.P14441092502763959860

`A341026(A033185(n+1))+A144219(n+1)`
-/

namespace A144027.P14441092502763959860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((A033185 (n + 1)).toNat + 165) + A144219 (n + 1)

end

end A144027.P14441092502763959860

/-! ## A144027.P2695285908473703162

`or(A010054(A002411(n)), A144219(n+1))`
-/

namespace A144027.P2695285908473703162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A002411 n).toNat) (A144219 (n + 1))

end

end A144027.P2695285908473703162

/-! ## A144027.P9950021900699750152

`A343958(A057163(3*n+1))+A144219(n+1)`
-/

namespace A144027.P9950021900699750152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343958 (A057163 (3 * n + 1)).toNat + A144219 (n + 1)

end

end A144027.P9950021900699750152

/-!
# A144028: INVERT transform of A055615, n*mu(n).

The programs for A144028, there is no canonical definition to state claims against.
-/

/-! ## A144028.P4230892310454691787

`A144029(∑[n+1])`
-/

namespace A144028.P4230892310454691787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144029 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144028.P4230892310454691787

/-! ## A144028.P3098951807891675731

`A094024(2*n)*A144029(A000217(n+1))`
-/

namespace A144028.P3098951807891675731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094024 (2 * n) * A144029 (A000217 (n + 1)).toNat

end

end A144028.P3098951807891675731

/-! ## A144028.P1429993462484305925

`A144029(A000217(n+1))%A117223(n+1)`
-/

namespace A144028.P1429993462484305925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144029 (A000217 (n + 1)).toNat) (A117223 (n + 1))

end

end A144028.P1429993462484305925

/-! ## A144028.P7416725949014951150

`A341774(3*n+5)+A144029(A000217(n+1))`
-/

namespace A144028.P7416725949014951150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341774 (3 * n + 5) + A144029 (A000217 (n + 1)).toNat

end

end A144028.P7416725949014951150

/-!
# A144030: a(0) = 0; thereafter, a(n) = (a(n - 1) - 2)^2 - n^3.

The programs for A144030, the canonical program `A144030.P13299106377937463667` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144030 has offset 0).

The definition of A144030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)-2)²-n^3` (program `A144030.P13299106377937463667`, by `A144030.P13299106377937463667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144030.P13299106377937463667

`(a(n-1)-2)²-n^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A144030

/-- `(a(n-1)-2)²-n^3` -/
def P13299106377937463667.Spec : Prop :=
  ∀ n, P13299106377937463667.a n = A144030 n

theorem P13299106377937463667.correct : P13299106377937463667.Spec := by
  intro n
  simp only [A144030]

end A144030

/-!
# A144032: Triangle read by rows: T(n,k) = A002321(n-k+1)*A144031(k-1).

The programs for A144032, there is no canonical definition to state claims against.
-/

/-! ## A144032.P4360897783585489083

`A135387(n+1)-A071625(A000051(n))`
-/

namespace A144032.P4360897783585489083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135387 (n + 1) - A071625 (A000051 n).toNat

end

end A144032.P4360897783585489083

/-! ## A144032.P14137775856412259995

`A135387(n+1)-A135362(A008295(n+4))`
-/

namespace A144032.P14137775856412259995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135387 (n + 1) - A135362 (A008295 (n + 4)).toNat

end

end A144032.P14137775856412259995

/-! ## A144032.P5486075992998367623

`round((A008683(A278525(2^n+1))²-A122283(n))/2)`
-/

namespace A144032.P5486075992998367623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008683 (A278525 (2 ^ n + 1)).toNat ^ 2 - A122283 n : ℚ) / 2)

end

end A144032.P5486075992998367623

/-! ## A144032.P7249051098061775053

`A114592(A213345(n+3)+val(n+1, 5))`
-/

namespace A144032.P7249051098061775053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114592 (A213345 (n + 3) + (SequenceMachineLib.valuation (n + 1) 5 : ℤ)).toNat

end

end A144032.P7249051098061775053

/-! ## A144032.P18186275439470478472

`A054521(A000325(n+1))-A374996(n)`
-/

namespace A144032.P18186275439470478472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (A000325 (n + 1)).toNat - A374996 n

end

end A144032.P18186275439470478472

/-!
# A144033: a(n) = (a(n-1)+2)^2 - n^3 with a(0) = 0.

The programs for A144033, the canonical program `A144033.P11030969011472715185` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144033 has offset 0).

The definition of A144033 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(a(n-1)+2)²-n^3` (program `A144033.P11030969011472715185`, by `A144033.P11030969011472715185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A144033.P11030969011472715185

`(a(n-1)+2)²-n^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A144033

/-- `(a(n-1)+2)²-n^3` -/
def P11030969011472715185.Spec : Prop :=
  ∀ n, P11030969011472715185.a n = A144033 n

theorem P11030969011472715185.correct : P11030969011472715185.Spec := by
  intro n
  simp only [A144033]

end A144033

/-!
# A144035: Shifts left when Euler transform applied 3 times.

The programs for A144035, there is no canonical definition to state claims against.
-/

/-! ## A144035.P5395274185067320300

`A144042(A034856(n+1))%(5^n)`
-/

namespace A144035.P5395274185067320300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (A034856 (n + 1)).toNat) (5 ^ n : ℤ)

end

end A144035.P5395274185067320300

/-! ## A144035.P7224322156330773078

`A144042(A034856(n+1))-A000007(n)`
-/

namespace A144035.P7224322156330773078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A034856 (n + 1)).toNat - A000007 n

end

end A144035.P7224322156330773078

/-! ## A144035.P15178195748678014147

`A057427(n)*A144042(A034856(n+1))`
-/

namespace A144035.P15178195748678014147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A034856 (n + 1)).toNat

end

end A144035.P15178195748678014147

/-! ## A144035.P9101367339270134096

`A057427(n)*A144042(A046691(n)+2)`
-/

namespace A144035.P9101367339270134096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A046691 n + 2).toNat

end

end A144035.P9101367339270134096

/-! ## A144035.P14939289224669989817

`A144042(A046691(n)+2)*A178334(n)`
-/

namespace A144035.P14939289224669989817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A046691 n + 2).toNat * A178334 n

end

end A144035.P14939289224669989817

/-! ## A144035.P13364258615572228469

`A057427(n)*A144042(A052905(n)-n)`
-/

namespace A144035.P13364258615572228469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A052905 n - (n : ℤ)).toNat

end

end A144035.P13364258615572228469

/-! ## A144035.P5506772060688259493

`A144042(A052905(n)-n)*A178334(n)`
-/

namespace A144035.P5506772060688259493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A052905 n - (n : ℤ)).toNat * A178334 n

end

end A144035.P5506772060688259493

/-! ## A144035.P4553240020685561511

`A144042(A034856(n+1))-A084099(2*n)`
-/

namespace A144035.P4553240020685561511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A034856 (n + 1)).toNat - A084099 (2 * n)

end

end A144035.P4553240020685561511

/-! ## A144035.P12301547235987517130

`A144042(A034856(n+1))-A039982(4*n)`
-/

namespace A144035.P12301547235987517130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A034856 (n + 1)).toNat - A039982 (4 * n)

end

end A144035.P12301547235987517130

/-!
# A144036: Shifts left when Euler transform applied 4 times.

The programs for A144036, there is no canonical definition to state claims against.
-/

/-! ## A144036.P13041543056883148583

`A057427(n)*A144042(∑[n+3])`
-/

namespace A144036.P13041543056883148583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144036.P13041543056883148583

/-! ## A144036.P5588472415485789390

`A144042(∑[n+3])%A007142(n+1)`
-/

namespace A144036.P5588472415485789390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (∑ j ∈ Finset.range (n + 1), f1 j)) (A007142 (n + 1))

end

end A144036.P5588472415485789390

/-! ## A144036.P8846759128952350058

`A144042(Δ[A006503(n)])-A000007(n)`
-/

namespace A144036.P8846759128952350058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (f1 (n + 1) - f1 n).toNat - A000007 n

end

end A144036.P8846759128952350058

/-! ## A144036.P6920029143996085730

`A144042(A052905(n)+2)*A178334(n)`
-/

namespace A144036.P6920029143996085730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A052905 n + 2).toNat * A178334 n

end

end A144036.P6920029143996085730

/-! ## A144036.P9714607704662847358

`A144042(Δ[A006503(n)])%A120892(2*n)`
-/

namespace A144036.P9714607704662847358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (f1 (n + 1) - f1 n).toNat) (A120892 (2 * n))

end

end A144036.P9714607704662847358

/-! ## A144036.P9836828375352896771

`A144042(Δ[A006503(n)])%A000776(n)`
-/

namespace A144036.P9836828375352896771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (f1 (n + 1) - f1 n).toNat) (A000776 n)

end

end A144036.P9836828375352896771

/-!
# A144037: Shifts left when Euler transform applied 5 times.

The programs for A144037, there is no canonical definition to state claims against.
-/

/-! ## A144037.P13789334739373190439

`A144042(A046691(n+2))%(10^n)`
-/

namespace A144037.P13789334739373190439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (A046691 (n + 2)).toNat) (10 ^ n : ℤ)

end

end A144037.P13789334739373190439

/-! ## A144037.P13207525813953828314

`A144042(A046691(n+2))-A000038(n)`
-/

namespace A144037.P13207525813953828314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A046691 (n + 2)).toNat - A000038 n

end

end A144037.P13207525813953828314

/-! ## A144037.P10329304712961659692

`A057427(n)*A144042(A046691(n+2))`
-/

namespace A144037.P10329304712961659692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A046691 (n + 2)).toNat

end

end A144037.P10329304712961659692

/-! ## A144037.P5415945537346537533

`A060576(A007448(n))*A144042(A046691(n+2))`
-/

namespace A144037.P5415945537346537533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A007448 n).toNat * A144042 (A046691 (n + 2)).toNat

end

end A144037.P5415945537346537533

/-! ## A144037.P13864473840181051223

`A060576(A120879(n))*A144042(A046691(n+2))`
-/

namespace A144037.P13864473840181051223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A120879 n).toNat * A144042 (A046691 (n + 2)).toNat

end

end A144037.P13864473840181051223

/-! ## A144037.P10294814822104393515

`A000035(A095320(n+1))*A144042(A046691(n+2))`
-/

namespace A144037.P10294814822104393515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A095320 (n + 1)).toNat * A144042 (A046691 (n + 2)).toNat

end

end A144037.P10294814822104393515

/-!
# A144038: Shifts left when Euler transform applied 6 times.

The programs for A144038, there is no canonical definition to state claims against.
-/

/-! ## A144038.P4697448525578561045

`A057427(n)*A144042(A052905(n+2))`
-/

namespace A144038.P4697448525578561045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A052905 (n + 2)).toNat

end

end A144038.P4697448525578561045

/-! ## A144038.P12108642595019948067

`A144042(A052905(n+2))*A178334(n)`
-/

namespace A144038.P12108642595019948067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (A052905 (n + 2)).toNat * A178334 n

end

end A144038.P12108642595019948067

/-! ## A144038.P7188378261804015676

`char[A003963(n+1)]*A144042(A052905(n+2))`
-/

namespace A144038.P7188378261804015676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144042 (A052905 (n + 2)).toNat

end

end A144038.P7188378261804015676

/-! ## A144038.P17395136381044102692

`char[A144042(n+1)]*A144042(A052905(n+2))`
-/

namespace A144038.P17395136381044102692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144042 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A144042 (A052905 (n + 2)).toNat

end

end A144038.P17395136381044102692

/-! ## A144038.P5585832109123085015

`A002262(A000124(n))*A144042(A052905(n+2))`
-/

namespace A144038.P5585832109123085015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000124 n).toNat * A144042 (A052905 (n + 2)).toNat

end

end A144038.P5585832109123085015

/-! ## A144038.P11634867619601393282

`A097325(A004273(n))*A144042(A052905(n+2))`
-/

namespace A144038.P11634867619601393282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A004273 n).toNat * A144042 (A052905 (n + 2)).toNat

end

end A144038.P11634867619601393282

/-!
# A144039: Shifts left when Euler transform applied 7 times.

The programs for A144039, there is no canonical definition to state claims against.
-/

/-! ## A144039.P11997060875659128458

`A057427(n)*A144042(A055999(n+3))`
-/

namespace A144039.P11997060875659128458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A055999 (n + 3)).toNat

end

end A144039.P11997060875659128458

/-! ## A144039.P8077671210788500651

`n/A028310(n)*A144042(A055999(n+3))`
-/

namespace A144039.P8077671210788500651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A028310 n : ℚ) * (A144042 (A055999 (n + 3)).toNat : ℚ)

end

end A144039.P8077671210788500651

/-! ## A144039.P13999170227976282085

`(n+1-A123108(2*n))*A144042(A055999(n+3))`
-/

namespace A144039.P13999170227976282085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A123108 (2 * n)) * A144042 (A055999 (n + 3)).toNat

end

end A144039.P13999170227976282085

/-! ## A144039.P4925341750843656750

`(A121855(n)-A121854(n))*A144042(A055999(n+3))`
-/

namespace A144039.P4925341750843656750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A121855 n - A121854 n) * A144042 (A055999 (n + 3)).toNat

end

end A144039.P4925341750843656750

/-! ## A144039.P5747454213331960017

`A144042(A055999(n+3))%Δ[A088129(n)]`
-/

namespace A144039.P5747454213331960017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (A055999 (n + 3)).toNat) (f1 (n + 1) - f1 n)

end

end A144039.P5747454213331960017

/-! ## A144039.P12240535420342269057

`(A029635(A151934(n))-1)*A144042(A055999(n+3))`
-/

namespace A144039.P12240535420342269057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029635 (A151934 n).toNat - 1) * A144042 (A055999 (n + 3)).toNat

end

end A144039.P12240535420342269057

/-!
# A144040: Shifts left when Euler transform applied 8 times.

The programs for A144040, there is no canonical definition to state claims against.
-/

/-! ## A144040.P10421651109456395879

`A144042(eq[6, A025581(n)])%A192890(n)²`
-/

namespace A144040.P10421651109456395879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A192890 n ^ 2)

end

end A144040.P10421651109456395879

/-! ## A144040.P3367909932363504022

`A144042(eq[6, A025581(n)])%A153565(n)`
-/

namespace A144040.P3367909932363504022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A153565 n)

end

end A144040.P3367909932363504022

/-!
# A144041: Shifts left when Euler transform applied 9 times.

The programs for A144041, there is no canonical definition to state claims against.
-/

/-! ## A144041.P14722399648917011596

`A057427(n)*A144042(A052905(n+5)-3)`
-/

namespace A144041.P14722399648917011596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A052905 (n + 5) - 3).toNat

end

end A144041.P14722399648917011596

/-! ## A144041.P9611490940690814357

`A057427(n)*A144042(A161680(n+9)-8)`
-/

namespace A144041.P9611490940690814357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144042 (A161680 (n + 9) - 8).toNat

end

end A144041.P9611490940690814357

/-! ## A144041.P6445023568155280243

`A144042(A052905(n+5)-3)%A192890(n)²`
-/

namespace A144041.P6445023568155280243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144042 (A052905 (n + 5) - 3).toNat) (A192890 n ^ 2)

end

end A144041.P6445023568155280243

/-! ## A144041.P15971307042884440667

`A136400(A053735(n))*A144042(A052905(n+5)-3)`
-/

namespace A144041.P15971307042884440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A053735 n).toNat * A144042 (A052905 (n + 5) - 3).toNat

end

end A144041.P15971307042884440667

/-! ## A144041.P15393963842581531234

`A001221(A329562(n))*A144042(A052905(n+5)-3)`
-/

namespace A144041.P15393963842581531234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A329562 n).toNat * A144042 (A052905 (n + 5) - 3).toNat

end

end A144041.P15393963842581531234

/-!
# A144042: Square array A(n,k), n>=1, k>=1, read by antidiagonals, with A(1,k)=1 and sequence a_k of column k shifts left when Euler transform applied k times.

The programs for A144042, there is no canonical definition to state claims against.
-/

/-! ## A144042.P14419719174253166899

`A113609(A351790(n))`
-/

namespace A144042.P14419719174253166899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113609 (A351790 n).toNat

end

end A144042.P14419719174253166899

/-! ## A144042.P12134576343123616575

`∏{e}[A146523(n), A096465(#)]`
-/

namespace A144042.P12134576343123616575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A096465 (Nat.factorization (f1 n).natAbs p)

end

end A144042.P12134576343123616575

/-! ## A144042.P16433666257393945068

`∏{e}[A146523(n), A124460(#)]`
-/

namespace A144042.P16433666257393945068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A124460 (Nat.factorization (f1 n).natAbs p)

end

end A144042.P16433666257393945068

/-! ## A144042.P16597204825829132722

`A124460((n-1)*A192175(3*n+1)%2)`
-/

namespace A144042.P16597204825829132722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124460 (((n : ℤ) - 1) * Int.tmod (A192175 (3 * n + 1)) 2).toNat

end

end A144042.P16597204825829132722

/-! ## A144042.P8394500145300845329

`A101494(A061579(n)%A112648(n+1))`
-/

namespace A144042.P8394500145300845329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101494 (Int.tmod (A061579 n) (A112648 (n + 1))).toNat

end

end A144042.P8394500145300845329

/-!
# A144043: a(2n-1) = 2*prime(n), a(2n) = prime(n) + prime(n+1).

The programs for A144043, the canonical program `A144043.P7712313532821699714` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144043 has offset 1).

The definition of A144043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144043.P7712313532821699714

`p?[floor(n/2)]+p?[floor((n+5)/2)]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A144043

/-- `p?[floor(n/2)]+p?[floor((n+5)/2)]` -/
def P7712313532821699714.Spec : Prop :=
  ∀ n, P7712313532821699714.a n = A144043 (n + 1)

theorem P7712313532821699714.correct : P7712313532821699714.Spec := by
  intro n
  simp only [A144043, Nat.add_sub_cancel]

end A144043

/-! ## A144043.P16425828260244247951

`ceil(2*sqrt(A033476(n)))`
-/

namespace A144043.P16425828260244247951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A033476 n : ℝ)⌉

end

end A144043.P16425828260244247951

namespace A144043

/-- `ceil(2*sqrt(A033476(n)))` -/
def P16425828260244247951.Spec : Prop :=
  ∀ n, P16425828260244247951.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P12110552000898677666

`∑[A054541(ceil(n/2)+1)]+2`
-/

namespace A144043.P12110552000898677666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (⌈(n : ℚ) / 2⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A144043.P12110552000898677666

namespace A144043

/-- `∑[A054541(ceil(n/2)+1)]+2` -/
def P12110552000898677666.Spec : Prop :=
  ∀ n, P12110552000898677666.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P18205062512857302522

`∑[A125266(∑[n%2]+1)]+1`
-/

namespace A144043.P18205062512857302522
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A144043.P18205062512857302522

namespace A144043

/-- `∑[A125266(∑[n%2]+1)]+1` -/
def P18205062512857302522.Spec : Prop :=
  ∀ n, P18205062512857302522.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P14430169526346983938

`∪[A001043(n+1), A066664(n+1)]`
-/

namespace A144043.P14430169526346983938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144043.P14430169526346983938

namespace A144043

/-- `∪[A001043(n+1), A066664(n+1)]` -/
def P14430169526346983938.Spec : Prop :=
  ∀ n, (P14430169526346983938.a n : ℤ) = A144043 (n + 1)

end A144043

/-! ## A144043.P13764177321434803531

`∪[A001043(n+1), A100484(n+1)]`
-/

namespace A144043.P13764177321434803531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144043.P13764177321434803531

namespace A144043

/-- `∪[A001043(n+1), A100484(n+1)]` -/
def P13764177321434803531.Spec : Prop :=
  ∀ n, (P13764177321434803531.a n : ℤ) = A144043 (n + 1)

end A144043

/-! ## A144043.P2222500460605639492

`∪[A001043(n+1), A161344(n+1)]`
-/

namespace A144043.P2222500460605639492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144043.P2222500460605639492

namespace A144043

/-- `∪[A001043(n+1), A161344(n+1)]` -/
def P2222500460605639492.Spec : Prop :=
  ∀ n, (P2222500460605639492.a n : ℤ) = A144043 (n + 1)

end A144043

/-! ## A144043.P3502998558843488932

`A000040(A008619(n))+A000040(A080513(n))`
-/

namespace A144043.P3502998558843488932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A008619 n).toNat + A000040 (A080513 n).toNat

end

end A144043.P3502998558843488932

namespace A144043

/-- `A000040(A008619(n))+A000040(A080513(n))` -/
def P3502998558843488932.Spec : Prop :=
  ∀ n, P3502998558843488932.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P4860371232096058169

`ceil(2*sqrt(A057602(n+2)))`
-/

namespace A144043.P4860371232096058169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A057602 (n + 2) : ℝ)⌉

end

end A144043.P4860371232096058169

namespace A144043

/-- `ceil(2*sqrt(A057602(n+2)))` -/
def P4860371232096058169.Spec : Prop :=
  ∀ n, P4860371232096058169.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P2492483788351515876

`A109763(n+2)+p?[floor(n/2)]`
-/

namespace A144043.P2492483788351515876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144043.P2492483788351515876

namespace A144043

/-- `A109763(n+2)+p?[floor(n/2)]` -/
def P2492483788351515876.Spec : Prop :=
  ∀ n, P2492483788351515876.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P11385234524345910593

`A109763(n+1)+A109763(n+2)`
-/

namespace A144043.P11385234524345910593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (n + 1) + A109763 (n + 2)

end

end A144043.P11385234524345910593

namespace A144043

/-- `A109763(n+1)+A109763(n+2)` -/
def P11385234524345910593.Spec : Prop :=
  ∀ n, P11385234524345910593.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P12928488879917660607

`A344027(A101881(n+1))`
-/

namespace A144043.P12928488879917660607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344027 (A101881 (n + 1)).toNat

end

end A144043.P12928488879917660607

namespace A144043

/-- `A344027(A101881(n+1))` -/
def P12928488879917660607.Spec : Prop :=
  ∀ n, P12928488879917660607.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P14360690038475587106

`A065342(A117142(n+1))`
-/

namespace A144043.P14360690038475587106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065342 (A117142 (n + 1)).toNat

end

end A144043.P14360690038475587106

namespace A144043

/-- `A065342(A117142(n+1))` -/
def P14360690038475587106.Spec : Prop :=
  ∀ n, P14360690038475587106.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P3590746118326475032

`A001414(A033476(n))`
-/

namespace A144043.P3590746118326475032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A033476 n).toNat

end

end A144043.P3590746118326475032

namespace A144043

/-- `A001414(A033476(n))` -/
def P3590746118326475032.Spec : Prop :=
  ∀ n, P3590746118326475032.a n = A144043 (n + 1)

end A144043

/-! ## A144043.P15563153185792721123

`A001414(A057602(n+2))`
-/

namespace A144043.P15563153185792721123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A057602 (n + 2)).toNat

end

end A144043.P15563153185792721123

namespace A144043

/-- `A001414(A057602(n+2))` -/
def P15563153185792721123.Spec : Prop :=
  ∀ n, P15563153185792721123.a n = A144043 (n + 1)

end A144043

/-!
# A144044: a(n) = ((1+sqrt(11))^n-(1-sqrt(11))^n)^2/44.

The programs for A144044, the canonical program `A144044.P7845645983061189842` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144044 has offset 1).

The definition of A144044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144044.P7845645983061189842

`14*a(n-1)+140*a(n-2)-1000*a(n-3)` with `a(0)=1, a(1)=4, a(2)=196`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A144044

/-- `14*a(n-1)+140*a(n-2)-1000*a(n-3)` -/
def P7845645983061189842.Spec : Prop :=
  ∀ n, P7845645983061189842.a n = A144044 (n + 1)

theorem P7845645983061189842.correct : P7845645983061189842.Spec := by
  intro n
  simp only [A144044, Nat.add_sub_cancel]

end A144044

/-! ## A144044.P6705314108792402972

`∑[2*(a(n-1)+5*a(n-2))]²` with `a(0)=1, a(1)=1`
-/

namespace A144044.P6705314108792402972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * (f1 (n - 1) + 5 * f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144044.P6705314108792402972

namespace A144044

/-- `∑[2*(a(n-1)+5*a(n-2))]²` -/
def P6705314108792402972.Spec : Prop :=
  ∀ n, (P6705314108792402972.a n : ℤ) = A144044 (n + 1)

end A144044

/-! ## A144044.P17061881008692263720

`A083102(n)²`
-/

namespace A144044.P17061881008692263720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083102 n ^ 2

end

end A144044.P17061881008692263720

namespace A144044

/-- `A083102(n)²` -/
def P17061881008692263720.Spec : Prop :=
  ∀ n, P17061881008692263720.a n = A144044 (n + 1)

end A144044

/-! ## A144044.P11931948378561153697

`∑[A133294(n)]²`
-/

namespace A144044.P11931948378561153697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144044.P11931948378561153697

namespace A144044

/-- `∑[A133294(n)]²` -/
def P11931948378561153697.Spec : Prop :=
  ∀ n, P11931948378561153697.a n = A144044 (n + 1)

end A144044

/-! ## A144044.P14326806243599483889

`∑[A127261(n)/2]²`
-/

namespace A144044.P14326806243599483889
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127261 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144044.P14326806243599483889

namespace A144044

/-- `∑[A127261(n)/2]²` -/
def P14326806243599483889.Spec : Prop :=
  ∀ n, P14326806243599483889.a n = (A144044 (n + 1) : ℚ)

end A144044

/-! ## A144044.P17521229257087692853

`(A274526(n+1)/2)²`
-/

namespace A144044.P17521229257087692853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A274526 (n + 1) : ℚ) / 2) ^ 2

end

end A144044.P17521229257087692853

namespace A144044

/-- `(A274526(n+1)/2)²` -/
def P17521229257087692853.Spec : Prop :=
  ∀ n, P17521229257087692853.a n = (A144044 (n + 1) : ℚ)

end A144044

/-! ## A144044.P16086458857189896249

`(A060546(n)*A083335(n))²`
-/

namespace A144044.P16086458857189896249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060546 n * A083335 n) ^ 2

end

end A144044.P16086458857189896249

namespace A144044

/-- `(A060546(n)*A083335(n))²` -/
def P16086458857189896249.Spec : Prop :=
  ∀ n, P16086458857189896249.a n = A144044 (n + 1)

end A144044

/-! ## A144044.P17758279546993648179

`∑[A133294(n)]*A083102(n)`
-/

namespace A144044.P17758279546993648179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A083102 n

end

end A144044.P17758279546993648179

namespace A144044

/-- `∑[A133294(n)]*A083102(n)` -/
def P17758279546993648179.Spec : Prop :=
  ∀ n, P17758279546993648179.a n = A144044 (n + 1)

end A144044

/-! ## A144044.P12692346895846120828

`∑[A083101(log2(A011782(n)))]²`
-/

namespace A144044.P12692346895846120828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083101 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A144044.P12692346895846120828

namespace A144044

/-- `∑[A083101(log2(A011782(n)))]²` -/
def P12692346895846120828.Spec : Prop :=
  ∀ n, P12692346895846120828.a n = A144044 (n + 1)

end A144044

/-!
# A144045: Number of paths of a chess Rook in a cube, from (1,1,1) to (n,n,n), where the rook may move in steps that are multiples of (1,0,0), (0,0,1), or (0,0,1).

The programs for A144045, there is no canonical definition to state claims against.
-/

/-! ## A144045.P6321560501725874551

`A181731(∑[n+3]+1)`
-/

namespace A144045.P6321560501725874551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144045.P6321560501725874551

/-! ## A144045.P7958782561883322020

`record[A181731(eq[3, A174546(n)])]`
-/

namespace A144045.P7958782561883322020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174546 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181731 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144045.P7958782561883322020

/-! ## A144045.P16838338305698353159

`record[A010054(n+3)*A181731(n+1)]`
-/

namespace A144045.P16838338305698353159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A181731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144045.P16838338305698353159

/-! ## A144045.P5399532322014257321

`record[gcd(A092921(n+2), A181731(n+1))]`
-/

namespace A144045.P5399532322014257321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092921 (n + 2)) (A181731 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144045.P5399532322014257321

/-!
# A144047: Limiting values of A136564.

The programs for A144047, there is no canonical definition to state claims against.
-/

/-! ## A144047.P17158363304877777720

`A027868(A319850(n+3)+A268448(n+1))`
-/

namespace A144047.P17158363304877777720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A319850 (n + 3) + A268448 (n + 1)).toNat

end

end A144047.P17158363304877777720

/-!
# A144048: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is Euler transform of (j->j^k).

The programs for A144048, there is no canonical definition to state claims against.
-/

/-! ## A144048.P14340183659851833562

`A292193(n)-A089311(A094544(n))`
-/

namespace A144048.P14340183659851833562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 n - A089311 (A094544 n).toNat

end

end A144048.P14340183659851833562

/-! ## A144048.P14409230809799836335

`A292193(n)-A025469(A163661(n))`
-/

namespace A144048.P14409230809799836335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 n - A025469 (A163661 n).toNat

end

end A144048.P14409230809799836335

/-! ## A144048.P12333762149856837475

`A292193(n)-A151795(A060475(n))`
-/

namespace A144048.P12333762149856837475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 n - A151795 (A060475 n).toNat

end

end A144048.P12333762149856837475

/-! ## A144048.P16793177929267357974

`A292193(n)-A025469(A256116(n))`
-/

namespace A144048.P16793177929267357974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 n - A025469 (A256116 n).toNat

end

end A144048.P16793177929267357974

/-! ## A144048.P10557573607294797772

`A292193(n)-A016396(A294582(n))`
-/

namespace A144048.P10557573607294797772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292193 n - A016396 (A294582 n).toNat

end

end A144048.P10557573607294797772

/-!
# A144049: Number of different cycles of digits in the hexadecimal (base-16) expansions of 1/p, 2/p, ..., (p-1)/p where p = n-th prime different from 2.

The programs for A144049, there is no canonical definition to state claims against.
-/

/-! ## A144049.P6038320851025733512

`gcd(4, A014664(n+2))*A001917(n+2)`
-/

namespace A144049.P6038320851025733512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A014664 (n + 2)) : ℤ) * A001917 (n + 2)

end

end A144049.P6038320851025733512

/-! ## A144049.P5499557318924053358

`A006093(n+2)/A026741(A082654(n+2))`
-/

namespace A144049.P5499557318924053358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 2) : ℚ) / (A026741 (A082654 (n + 2)).toNat : ℚ)

end

end A144049.P5499557318924053358

/-! ## A144049.P4716090034736251063

`record[A000010(n+3)]/A026741(A082654(n+2))`
-/

namespace A144049.P4716090034736251063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A026741 (A082654 (n + 2)).toNat : ℚ)

end

end A144049.P4716090034736251063

/-! ## A144049.P5283143878859071530

`record[A340190(n+1)+1]/A026741(A082654(n+2))`
-/

namespace A144049.P5283143878859071530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340190 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A026741 (A082654 (n + 2)).toNat : ℚ)

end

end A144049.P5283143878859071530

/-! ## A144049.P11524441946366946349

`gcd(A001749(n+1), A243905(n+2))*A001917(n+2)`
-/

namespace A144049.P11524441946366946349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A001749 (n + 1)) (A243905 (n + 2)) : ℤ) * A001917 (n + 2)

end

end A144049.P11524441946366946349

/-! ## A144049.P17580791106398993872

`A000010(A065091(n+1))/A026741(A082654(n+2))`
-/

namespace A144049.P17580791106398993872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A065091 (n + 1)).toNat : ℚ) / (A026741 (A082654 (n + 2)).toNat : ℚ)

end

end A144049.P17580791106398993872

/-!
# A144051: Primes p such that the polynomial x^2 + x + p generates only primes for x = 1..6.

The programs for A144051, there is no canonical definition to state claims against.
-/

/-! ## A144051.P9846806791858277150

`∪[A187060(n+1), A210365(n+1)]`
-/

namespace A144051.P9846806791858277150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A144051.P9846806791858277150

/-! ## A144051.P11671046922650832369

`A187058(record[A358780(3*n+4)-A057145(n+2)])`
-/

namespace A144051.P11671046922650832369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358780 (3 * n + 4) - A057145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187058 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A144051.P11671046922650832369

/-!
# A144053: Number of n X n binary arrays, symmetric under horizontal reflection, with every 1 adjacent to at least one other 1, but at most one 1 adjacent horizontally and at most one 1 adjacent vertically.

The programs for A144053, there is no canonical definition to state claims against.
-/

/-! ## A144053.P3199640561520367397

`A298912(a(n-1))` with `a(0)=1, a(1)=4, a(2)=5`
-/

namespace A144053.P3199640561520367397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 5] fun n a =>
  A298912 (a (n - 1)).toNat

end

end A144053.P3199640561520367397

/-!
# A144054: Number of n X n binary arrays, symmetric under horizontal and vertical reflection, with every 1 adjacent to at least one other 1, but at most one 1 adjacent horizontally and at most one 1 adjacent vertically.

The programs for A144054, there is no canonical definition to state claims against.
-/

/-! ## A144054.P15847470250183199968

`A158901(A348260(n*A000700(n)))`
-/

namespace A144054.P15847470250183199968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (A348260 ((n : ℤ) * A000700 n).toNat).toNat

end

end A144054.P15847470250183199968

/-! ## A144054.P11694682359335312170

`A158901(A348260(n)^A000700(n))`
-/

namespace A144054.P11694682359335312170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (SequenceMachineLib.roundAway ((A348260 n : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A144054.P11694682359335312170

/-! ## A144054.P1594819108066303824

`A158901(gcd(A287285(n), A348260(n)))`
-/

namespace A144054.P1594819108066303824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158901 (Int.gcd (A287285 n) (A348260 n))

end

end A144054.P1594819108066303824

/-!
# A144055: Number of n X n binary arrays, symmetric about main diagonal, with every 1 adjacent to at least one other 1, but at most one 1 adjacent horizontally and at most one 1 adjacent vertically.

The programs for A144055, there is no canonical definition to state claims against.
-/

/-! ## A144055.P18133566902227219299

`A370595(A219349(n+2))`
-/

namespace A144055.P18133566902227219299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370595 (A219349 (n + 2)).toNat

end

end A144055.P18133566902227219299

/-!
# A144056: Number of n X n binary arrays, symmetric about both diagonal and antidiagonal, with every 1 adjacent to at least one other 1, but at most one 1 adjacent horizontally and at most one 1 adjacent vertically.

The programs for A144056, there is no canonical definition to state claims against.
-/

/-! ## A144056.P4400752499826227838

`ceil(sqrt(A119311(floor(19^(n/4)))))`
-/

namespace A144056.P4400752499826227838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A119311 ⌊(19 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋.toNat : ℝ)⌉

end

end A144056.P4400752499826227838

/-! ## A144056.P16397260292303578286

`∑[A316355(floor(76*n/53)!)]`
-/

namespace A144056.P16397260292303578286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (Nat.factorial ⌊76 * ((n : ℚ) / 53)⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144056.P16397260292303578286

/-!
# A144059: Number of n X n binary arrays, symmetric under 180 degree rotation, with every 1 adjacent to at least one other 1, but at most one 1 adjacent horizontally and at most one 1 adjacent vertically.

The programs for A144059, there is no canonical definition to state claims against.
-/

/-! ## A144059.P3253062641208412453

`A170890(floor(3^(n-1))+1)`
-/

namespace A144059.P3253062641208412453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170890 (⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 1).toNat

end

end A144059.P3253062641208412453

/-!
# A144060: Expansion of Molien series for the ring of genus 5 code polynomials for Type II codes.

The programs for A144060, there is no canonical definition to state claims against.
-/

/-! ## A144060.P16174451881185061884

`A324572(A001223(n+1)+n²)`
-/

namespace A144060.P16174451881185061884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A001223 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A144060.P16174451881185061884

/-! ## A144060.P5940386894944236306

`A324572(A292786(n+1)+n²)`
-/

namespace A144060.P5940386894944236306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A292786 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A144060.P5940386894944236306

/-! ## A144060.P11401184338868491395

`and(A132977(n), A206718(A215067(n)))`
-/

namespace A144060.P11401184338868491395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132977 n) (A206718 (A215067 n).toNat)

end

end A144060.P11401184338868491395

/-! ## A144060.P17777167393248764437

`and(A333801(A323395(n)), A350752(n))`
-/

namespace A144060.P17777167393248764437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A333801 (A323395 n).toNat) (A350752 n)

end

end A144060.P17777167393248764437

/-! ## A144060.P10570864749200709047

`A324572(A003132(n)+A001223(n+1))`
-/

namespace A144060.P10570864749200709047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324572 (A003132 n + A001223 (n + 1)).toNat

end

end A144060.P10570864749200709047

/-!
# A144061: Eigentriangle generated from A109128, row sums = expansion of {2(exp(x)-1)}.

The programs for A144061, there is no canonical definition to state claims against.
-/

/-! ## A144061.P11528743988402419384

`xor(A005871(A075222(n+1)), A033878(n))`
-/

namespace A144061.P11528743988402419384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005871 (A075222 (n + 1)).toNat) (A033878 n)

end

end A144061.P11528743988402419384

/-! ## A144061.P14484943906309557910

`A309767(A213001(n))+A033878(n)`
-/

namespace A144061.P14484943906309557910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309767 (A213001 n).toNat + A033878 n

end

end A144061.P14484943906309557910

/-! ## A144061.P523487720798579487

`A069784(A233543(n))*A109128(n)`
-/

namespace A144061.P523487720798579487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069784 (A233543 n).toNat * A109128 n

end

end A144061.P523487720798579487

/-! ## A144061.P7745979243602759129

`A109128(n)*A116925(A136680(n+1))`
-/

namespace A144061.P7745979243602759129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 n * A116925 (A136680 (n + 1)).toNat

end

end A144061.P7745979243602759129

/-!
# A144062: a(1)=1; for n>1, a(n) = least integer > a(n-1) such that a(n)^2-a(n-1)^2 = semiprime.

The programs for A144062, there is no canonical definition to state claims against.
-/

/-! ## A144062.P6234609084713546088

`A154484(n+1)+A000122(A183120(n))`
-/

namespace A144062.P6234609084713546088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (n + 1) + A000122 (A183120 n).toNat

end

end A144062.P6234609084713546088

/-! ## A144062.P14634170321162291870

`A154484(n+1)+A007814(A081848(2*(n+2)))`
-/

namespace A144062.P14634170321162291870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154484 (n + 1) + A007814 (A081848 (2 * (n + 2))).toNat

end

end A144062.P14634170321162291870

/-! ## A144062.P12996834766821499047

`A353768(∑[A039692(3*n+1)])+A154484(n+1)`
-/

namespace A144062.P12996834766821499047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039692 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353768 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A154484 (n + 1)

end

end A144062.P12996834766821499047

/-! ## A144062.P5202032966803804818

`or(1, eq[1, A145880(n+1)])-n`
-/

namespace A144062.P5202032966803804818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℤ) - (n : ℤ)

end

end A144062.P5202032966803804818

/-! ## A144062.P1566506347519127578

`record[A341673(3*n+1)-∏{p}[n+1, gcd(n, 1-#)]]`
-/

namespace A144062.P1566506347519127578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341673 (3 * n + 1) - ((∏ p ∈ Nat.primeFactors (f2 n), Int.gcd (n : ℤ) (1 - (p : ℤ)) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144062.P1566506347519127578

/-!
# A144063: Egyptian fractions: number of solutions of 1 = 1/x_1 + ... + 1/x_n in positive integers x_1 < ... < x_n <= 256.

The programs for A144063, there is no canonical definition to state claims against.
-/

/-! ## A144063.P15120776359043616985

`A063942(∑[A054765(n)])`
-/

namespace A144063.P15120776359043616985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063942 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A144063.P15120776359043616985

/-! ## A144063.P175671982241843241

`A110657(or(∏{e}[n+1, #+1], A143600(n)))`
-/

namespace A144063.P175671982241843241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (Int.lor ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A143600 n)).toNat

end

end A144063.P175671982241843241

/-!
# A144064: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is Euler transform of (j->k).

The programs for A144064, there is no canonical definition to state claims against.
-/

/-! ## A144064.P560875059230355817

`A155161(A061579(n))-A185238(A332769(n+1))`
-/

namespace A144064.P560875059230355817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A061579 n).toNat - A185238 (A332769 (n + 1)).toNat

end

end A144064.P560875059230355817

/-! ## A144064.P18340102772792872535

`and(A152388(n+1), A384976(n))`
-/

namespace A144064.P18340102772792872535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A384976 n)

end

end A144064.P18340102772792872535

/-! ## A144064.P9914980169829705645

`and(A383046(n+3), A384976(n))`
-/

namespace A144064.P9914980169829705645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A383046 (n + 3)) (A384976 n)

end

end A144064.P9914980169829705645

/-! ## A144064.P16657362961439951351

`A384976(n)%Δ[A338911(2*(n+1))²]`
-/

namespace A144064.P16657362961439951351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338911 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384976 n) (f1 (n + 1) - f1 n)

end

end A144064.P16657362961439951351

/-! ## A144064.P3728108324477755227

`A296068(n)+A125005(A326323(n))`
-/

namespace A144064.P3728108324477755227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296068 n + A125005 (A326323 n).toNat

end

end A144064.P3728108324477755227

/-!
# A144065: Values of k such that the expression sqrt(4!*(k+1) + 1) yields an integer.

The programs for A144065, the canonical program `A144065.P6303385319579030473` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144065 has offset 0).

The definition of A144065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A144065.P6303385319579030473

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=11, a(5)=14`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A144065

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P6303385319579030473.Spec : Prop :=
  ∀ n, P6303385319579030473.a n = A144065 n

theorem P6303385319579030473.correct : P6303385319579030473.Spec := by
  intro n
  simp only [A144065]

end A144065

/-! ## A144065.P13935411878126020306

`A001318(n+1)-1`
-/

namespace A144065.P13935411878126020306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 (n + 1) - 1

end

end A144065.P13935411878126020306

namespace A144065

/-- `A001318(n+1)-1` -/
def P13935411878126020306.Spec : Prop :=
  ∀ n, P13935411878126020306.a n = A144065 n

end A144065

/-! ## A144065.P8836821210970750454

`∑[gcd(n+1, ∑[n])]-1`
-/

namespace A144065.P8836821210970750454
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A144065.P8836821210970750454

namespace A144065

/-- `∑[gcd(n+1, ∑[n])]-1` -/
def P8836821210970750454.Spec : Prop :=
  ∀ n, P8836821210970750454.a n = A144065 n

end A144065

/-! ## A144065.P14776746622407845239

`∑[lcm(2, n+1)/2]-1`
-/

namespace A144065.P14776746622407845239
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A144065.P14776746622407845239

namespace A144065

/-- `∑[lcm(2, n+1)/2]-1` -/
def P14776746622407845239.Spec : Prop :=
  ∀ n, P14776746622407845239.a n = (A144065 n : ℚ)

end A144065

/-! ## A144065.P5003882202170366457

`∑[∑[n]/a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A144065.P5003882202170366457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144065.P5003882202170366457

namespace A144065

/-- `∑[∑[n]/a(n-1)]` -/
def P5003882202170366457.Spec : Prop :=
  ∀ n, P5003882202170366457.a n = (A144065 n : ℚ)

end A144065

/-! ## A144065.P8596643131832438464

`∑[Δ[n^3]%comp[3*n]]`
-/

namespace A144065.P8596643131832438464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144065.P8596643131832438464

namespace A144065

/-- `∑[Δ[n^3]%comp[3*n]]` -/
def P8596643131832438464.Spec : Prop :=
  ∀ n, P8596643131832438464.a n = A144065 n

end A144065

/-! ## A144065.P2594992020476622615

`comp[3*n]+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A144065.P2594992020476622615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 2)

end

end A144065.P2594992020476622615

namespace A144065

/-- `comp[3*n]+a(n-2)` -/
def P2594992020476622615.Spec : Prop :=
  ∀ n, (P2594992020476622615.a n : ℤ) = A144065 n

end A144065

/-! ## A144065.P15564543672340203215

`∑[floor(n/(n%2+1))]+n`
-/

namespace A144065.P15564543672340203215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A144065.P15564543672340203215

namespace A144065

/-- `∑[floor(n/(n%2+1))]+n` -/
def P15564543672340203215.Spec : Prop :=
  ∀ n, P15564543672340203215.a n = A144065 n

end A144065

/-! ## A144065.P2417387104575954172

`∑[floor(n/gcd(2, n+3))]+n`
-/

namespace A144065.P2417387104575954172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.gcd 2 (n + 3) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A144065.P2417387104575954172

namespace A144065

/-- `∑[floor(n/gcd(2, n+3))]+n` -/
def P2417387104575954172.Spec : Prop :=
  ∀ n, P2417387104575954172.a n = A144065 n

end A144065

/-! ## A144065.P2133087581904542493

`∑[floor(n/(and(1, n)+1))]+n`
-/

namespace A144065.P2133087581904542493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Nat.land 1 n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A144065.P2133087581904542493

namespace A144065

/-- `∑[floor(n/(and(1, n)+1))]+n` -/
def P2133087581904542493.Spec : Prop :=
  ∀ n, P2133087581904542493.a n = A144065 n

end A144065

/-! ## A144065.P15702835822497906964

`∑[(∑[n]-1)%(n+1)]+n`
-/

namespace A144065.P15702835822497906964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A144065.P15702835822497906964

namespace A144065

/-- `∑[(∑[n]-1)%(n+1)]+n` -/
def P15702835822497906964.Spec : Prop :=
  ∀ n, P15702835822497906964.a n = A144065 n

end A144065

/-! ## A144065.P1771914033678821836

`∑[(n+1)/(and(1, n)+1)]-1`
-/

namespace A144065.P1771914033678821836
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A144065.P1771914033678821836

namespace A144065

/-- `∑[(n+1)/(and(1, n)+1)]-1` -/
def P1771914033678821836.Spec : Prop :=
  ∀ n, P1771914033678821836.a n = (A144065 n : ℚ)

end A144065

/-! ## A144065.P15680857761544376266

`∑[a(n-1)^(-1)*∑[n]]` with `a(0)=0, a(1)=1`
-/

namespace A144065.P15680857761544376266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) ^ (-1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144065.P15680857761544376266

namespace A144065

/-- `∑[a(n-1)^(-1)*∑[n]]` -/
def P15680857761544376266.Spec : Prop :=
  ∀ n, P15680857761544376266.a n = (A144065 n : ℚ)

end A144065

/-! ## A144065.P13678835950911343907

`∑[(n+1)/(2-∑[(-1)^n])]-1`
-/

namespace A144065.P13678835950911343907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((2 - ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A144065.P13678835950911343907

namespace A144065

/-- `∑[(n+1)/(2-∑[(-1)^n])]-1` -/
def P13678835950911343907.Spec : Prop :=
  ∀ n, P13678835950911343907.a n = (A144065 n : ℚ)

end A144065

/-! ## A144065.P16548638342825770341

`floor(n+1+a(n-2)+n/2)` with `a(0)=0, a(1)=1`
-/

namespace A144065.P16548638342825770341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n + 1 : ℚ) + ((a (n - 2) : ℚ) + (n : ℚ) / 2)⌋

end

end A144065.P16548638342825770341

namespace A144065

/-- `floor(n+1+a(n-2)+n/2)` -/
def P16548638342825770341.Spec : Prop :=
  ∀ n, P16548638342825770341.a n = A144065 n

end A144065

/-! ## A144065.P14817704926230165080

`∑[gcd(∑[n], A131738(n))]`
-/

namespace A144065.P14817704926230165080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A131738 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A144065.P14817704926230165080

namespace A144065

/-- `∑[gcd(∑[n], A131738(n))]` -/
def P14817704926230165080.Spec : Prop :=
  ∀ n, (P14817704926230165080.a n : ℤ) = A144065 n

end A144065

/-! ## A144065.P6430839818628329848

`floor(A135370(n+1)/2)`
-/

namespace A144065.P6430839818628329848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135370 (n + 1) : ℚ) / 2⌋

end

end A144065.P6430839818628329848

namespace A144065

/-- `floor(A135370(n+1)/2)` -/
def P6430839818628329848.Spec : Prop :=
  ∀ n, P6430839818628329848.a n = A144065 n

end A144065

/-! ## A144065.P2668187614419470380

`(A164097(n+1)-3)/4`
-/

namespace A144065.P2668187614419470380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164097 (n + 1) - 3 : ℚ) / 4

end

end A144065.P2668187614419470380

namespace A144065

/-- `(A164097(n+1)-3)/4` -/
def P2668187614419470380.Spec : Prop :=
  ∀ n, P2668187614419470380.a n = (A144065 n : ℚ)

end A144065

/-! ## A144065.P13130011198643732325

`A028387(n)%A111710(n+1)`
-/

namespace A144065.P13130011198643732325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028387 n) (A111710 (n + 1))

end

end A144065.P13130011198643732325

namespace A144065

/-- `A028387(n)%A111710(n+1)` -/
def P13130011198643732325.Spec : Prop :=
  ∀ n, P13130011198643732325.a n = A144065 n

end A144065

/-!
# A144066: T(n, k) is the number of order-preserving partial transformations (of an n-element chain) of height k (height(alpha) = |Im(alpha)|); triangle T read by rows.

The programs for A144066, the canonical program `A144066.P13750958635095974206` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144066 has offset 0).

The definition of A144066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9099 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144066.P13750958635095974206

`A007318(n)*A112857(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A144066

/-- `A007318(n)*A112857(n)` -/
def P13750958635095974206.Spec : Prop :=
  ∀ n, P13750958635095974206.a n = A144066 n

theorem P13750958635095974206.correct : P13750958635095974206.Spec := by
  intro n
  simp only [A144066]

end A144066

/-! ## A144066.P6369270934712886018

`abs(A007318(n)*A118801(n))`
-/

namespace A144066.P6369270934712886018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 n * A118801 n|

end

end A144066.P6369270934712886018

namespace A144066

/-- `abs(A007318(n)*A118801(n))` -/
def P6369270934712886018.Spec : Prop :=
  ∀ n, P6369270934712886018.a n = A144066 n

end A144066

/-! ## A144066.P9993486185867215441

`abs(A108086(n)*A118801(n))`
-/

namespace A144066.P9993486185867215441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A118801 n|

end

end A144066.P9993486185867215441

namespace A144066

/-- `abs(A108086(n)*A118801(n))` -/
def P9993486185867215441.Spec : Prop :=
  ∀ n, P9993486185867215441.a n = A144066 n

end A144066

/-! ## A144066.P865979687879808391

`abs(A112857(n)*A117440(n))`
-/

namespace A144066.P865979687879808391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A112857 n * A117440 n|

end

end A144066.P865979687879808391

namespace A144066

/-- `abs(A112857(n)*A117440(n))` -/
def P865979687879808391.Spec : Prop :=
  ∀ n, P865979687879808391.a n = A144066 n

end A144066

/-! ## A144066.P13468069148974506697

`abs(A118801(n)*A130595(n))`
-/

namespace A144066.P13468069148974506697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A118801 n * A130595 n|

end

end A144066.P13468069148974506697

namespace A144066

/-- `abs(A118801(n)*A130595(n))` -/
def P13468069148974506697.Spec : Prop :=
  ∀ n, P13468069148974506697.a n = A144066 n

end A144066

/-! ## A144066.P1700793615236797873

`sqrt(A008459(n))*A112857(n)`
-/

namespace A144066.P1700793615236797873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A112857 n : ℝ)

end

end A144066.P1700793615236797873

namespace A144066

/-- `sqrt(A008459(n))*A112857(n)` -/
def P1700793615236797873.Spec : Prop :=
  ∀ n, P1700793615236797873.a n = (A144066 n : ℝ)

end A144066

/-! ## A144066.P1149279251707840791

`(A014473(n)+1)*A112857(n)`
-/

namespace A144066.P1149279251707840791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A112857 n

end

end A144066.P1149279251707840791

namespace A144066

/-- `(A014473(n)+1)*A112857(n)` -/
def P1149279251707840791.Spec : Prop :=
  ∀ n, P1149279251707840791.a n = A144066 n

end A144066

/-! ## A144066.P704651756334826017

`A118801(n)*A130595(A061579(n))`
-/

namespace A144066.P704651756334826017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118801 n * A130595 (A061579 n).toNat

end

end A144066.P704651756334826017

namespace A144066

/-- `A118801(n)*A130595(A061579(n))` -/
def P704651756334826017.Spec : Prop :=
  ∀ n, P704651756334826017.a n = A144066 n

end A144066

/-! ## A144066.P10725493013143315392

`gcd(A027465(n), A038207(n))*A112857(n)`
-/

namespace A144066.P10725493013143315392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A027465 n) (A038207 n) : ℤ) * A112857 n

end

end A144066.P10725493013143315392

namespace A144066

/-- `gcd(A027465(n), A038207(n))*A112857(n)` -/
def P10725493013143315392.Spec : Prop :=
  ∀ n, P10725493013143315392.a n = A144066 n

end A144066

/-! ## A144066.P1016929104650087389

`A013609(n)²/A013611(n)*A112857(n)`
-/

namespace A144066.P1016929104650087389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n ^ 2 : ℚ) / (A013611 n : ℚ) * (A112857 n : ℚ)

end

end A144066.P1016929104650087389

namespace A144066

/-- `A013609(n)²/A013611(n)*A112857(n)` -/
def P1016929104650087389.Spec : Prop :=
  ∀ n, P1016929104650087389.a n = (A144066 n : ℚ)

end A144066

/-!
# A144067: Euler transform of powers of 3.

The programs for A144067, there is no canonical definition to state claims against.
-/

/-! ## A144067.P4973408443652573044

`A144074(∑[n+3]+n+3)`
-/

namespace A144067.P4973408443652573044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A144067.P4973408443652573044

/-! ## A144067.P17048639981247081384

`record[A144074(abs(A046691(n)))]`
-/

namespace A144067.P17048639981247081384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144067.P17048639981247081384

/-! ## A144067.P6292014327533291862

`abs(1-A144074(A046691(n+2)))+1`
-/

namespace A144067.P6292014327533291862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A144074 (A046691 (n + 2)).toNat| + 1

end

end A144067.P6292014327533291862

/-! ## A144067.P14247832806806906184

`A033999(n)²*A144074(A046691(n+2))`
-/

namespace A144067.P14247832806806906184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A144074 (A046691 (n + 2)).toNat

end

end A144067.P14247832806806906184

/-! ## A144067.P468702211135681261

`A144074(A046691(n+2))+A000038(n+4)`
-/

namespace A144067.P468702211135681261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A046691 (n + 2)).toNat + A000038 (n + 4)

end

end A144067.P468702211135681261

/-! ## A144067.P16499457623068524399

`A144074(A046691(n+2))%A239172(n+1)`
-/

namespace A144067.P16499457623068524399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144074 (A046691 (n + 2)).toNat) (A239172 (n + 1))

end

end A144067.P16499457623068524399

/-! ## A144067.P12359006049998494456

`A144074(A046691(n+2))+A112316(2*n+3)`
-/

namespace A144067.P12359006049998494456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A046691 (n + 2)).toNat + A112316 (2 * n + 3)

end

end A144067.P12359006049998494456

/-!
# A144068: Euler transform of powers of 4.

The programs for A144068, there is no canonical definition to state claims against.
-/

/-! ## A144068.P7965656983847580104

`record[A144074(A052905(n))]`
-/

namespace A144068.P7965656983847580104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144068.P7965656983847580104

/-! ## A144068.P16882214526984638640

`A144074(A052905(n+2))`
-/

namespace A144068.P16882214526984638640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A052905 (n + 2)).toNat

end

end A144068.P16882214526984638640

/-! ## A144068.P6011160566030758869

`A144074(eq[4, A025581(n)])`
-/

namespace A144068.P6011160566030758869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144068.P6011160566030758869

/-! ## A144068.P4772237466870953734

`record[A144074(A055999(n)+1)]`
-/

namespace A144068.P4772237466870953734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144068.P4772237466870953734

/-! ## A144068.P5597177535194747277

`A144074(A055998(n+3)-2)`
-/

namespace A144068.P5597177535194747277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 3) - 2).toNat

end

end A144068.P5597177535194747277

/-! ## A144068.P15693746137004952940

`record[A144074(abs(A046691(n))-1)]`
-/

namespace A144068.P15693746137004952940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144068.P15693746137004952940

/-! ## A144068.P4776235949575060695

`record[A144074(A046691(n+1)-1)]`
-/

namespace A144068.P4776235949575060695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144068.P4776235949575060695

/-! ## A144068.P8137848558857196187

`record[A144074(A008585(n)+A000124(n))]`
-/

namespace A144068.P8137848558857196187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A008585 n + A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144068.P8137848558857196187

/-! ## A144068.P4893353922227964421

`record[A144074(A289207(n)+A000096(n))]`
-/

namespace A144068.P4893353922227964421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A289207 n + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144068.P4893353922227964421

/-! ## A144068.P15525134727962892923

`A144074(A167614(n+2)+A004273(n+1))`
-/

namespace A144068.P15525134727962892923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A167614 (n + 2) + A004273 (n + 1)).toNat

end

end A144068.P15525134727962892923

/-!
# A144069: Euler transform of powers of 5.

The programs for A144069, there is no canonical definition to state claims against.
-/

/-! ## A144069.P1800798513030554436

`record[A144074(A055999(n))]`
-/

namespace A144069.P1800798513030554436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055999 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144069.P1800798513030554436

/-! ## A144069.P13669402974795126726

`A144074(A055999(n+3))`
-/

namespace A144069.P13669402974795126726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055999 (n + 3)).toNat

end

end A144069.P13669402974795126726

/-! ## A144069.P11066681667915986127

`record[A144074(A052905(n)-1)]`
-/

namespace A144069.P11066681667915986127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A052905 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144069.P11066681667915986127

/-! ## A144069.P5488561742899334553

`record[A144074(A055998(n)+n)]`
-/

namespace A144069.P5488561742899334553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144069.P5488561742899334553

/-! ## A144069.P12590725712454801725

`A144074(A046691(n+4)-2)`
-/

namespace A144069.P12590725712454801725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A046691 (n + 4) - 2).toNat

end

end A144069.P12590725712454801725

/-! ## A144069.P5005967213127429727

`A144074(A055998(n+4)-3)`
-/

namespace A144069.P5005967213127429727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 4) - 3).toNat

end

end A144069.P5005967213127429727

/-! ## A144069.P16354479227965018027

`record[A144074(abs(2-A046691(n)))]`
-/

namespace A144069.P16354479227965018027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 |2 - A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144069.P16354479227965018027

/-! ## A144069.P6723878006885697083

`A144074(A000096(n+15)-A008592(n+12))`
-/

namespace A144069.P6723878006885697083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A000096 (n + 15) - A008592 (n + 12)).toNat

end

end A144069.P6723878006885697083

/-!
# A144070: Euler transform of powers of 6.

The programs for A144070, there is no canonical definition to state claims against.
-/

/-! ## A144070.P10020818174181548385

`A144074(C(n+7, 2)+n)`
-/

namespace A144070.P10020818174181548385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (Nat.choose (n + 7) 2 + n)

end

end A144070.P10020818174181548385

/-! ## A144070.P5486216561064351833

`A144074(A152947(n+2)+A017053(n+2))`
-/

namespace A144070.P5486216561064351833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A152947 (n + 2) + A017053 (n + 2)).toNat

end

end A144070.P5486216561064351833

/-! ## A144070.P16573968448540590615

`A144074(A008586(n+4)+A000096(n+2))`
-/

namespace A144070.P16573968448540590615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A008586 (n + 4) + A000096 (n + 2)).toNat

end

end A144070.P16573968448540590615

/-! ## A144070.P2741691559203025835

`A144074(A055998(n+2)+A016789(n+4))`
-/

namespace A144070.P2741691559203025835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 2) + A016789 (n + 4)).toNat

end

end A144070.P2741691559203025835

/-! ## A144070.P12840737209064237144

`A144074(A055998(n+4)-A001489(n+3))`
-/

namespace A144070.P12840737209064237144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 4) - A001489 (n + 3)).toNat

end

end A144070.P12840737209064237144

/-! ## A144070.P6604238967027869701

`A144074(A000124(n+10)-A016789(n+11))`
-/

namespace A144070.P6604238967027869701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A000124 (n + 10) - A016789 (n + 11)).toNat

end

end A144070.P6604238967027869701

/-!
# A144071: Euler transform of powers of 7.

The programs for A144071, there is no canonical definition to state claims against.
-/

/-! ## A144071.P12310272320411975099

`A144074(eq[7, A025581(n)])`
-/

namespace A144071.P12310272320411975099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A144071.P12310272320411975099

/-! ## A144071.P4680018847808175028

`A144074(A167499(n+5)+A005843(n+1))`
-/

namespace A144071.P4680018847808175028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A167499 (n + 5) + A005843 (n + 1)).toNat

end

end A144071.P4680018847808175028

/-! ## A144071.P2809503135914503950

`A144074(A055998(n+5)-A001489(n+3))`
-/

namespace A144071.P2809503135914503950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 5) - A001489 (n + 3)).toNat

end

end A144071.P2809503135914503950

/-! ## A144071.P7855311033984135425

`A144074(A152947(n+8)+A005843(n+3))`
-/

namespace A144071.P7855311033984135425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A152947 (n + 8) + A005843 (n + 3)).toNat

end

end A144071.P7855311033984135425

/-! ## A144071.P871519360725884064

`A144074(A000124(n+11)-A008585(n+13))`
-/

namespace A144071.P871519360725884064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A000124 (n + 11) - A008585 (n + 13)).toNat

end

end A144071.P871519360725884064

/-!
# A144072: Euler transform of powers of 8.

The programs for A144072, there is no canonical definition to state claims against.
-/

/-! ## A144072.P5538591246421526716

`A144074(A056000(n+5)+1)`
-/

namespace A144072.P5538591246421526716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A056000 (n + 5) + 1).toNat

end

end A144072.P5538591246421526716

/-! ## A144072.P8086370812202488840

`A144074(A167614(n+6)+A004273(n+3))`
-/

namespace A144072.P8086370812202488840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A144072.P8086370812202488840

/-! ## A144072.P151101805775189887

`A144074(A055998(n+6)-A001489(n+3))`
-/

namespace A144072.P151101805775189887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 6) - A001489 (n + 3)).toNat

end

end A144072.P151101805775189887

/-! ## A144072.P15853353065946782904

`A144074(A004273(n+5)+A000096(n+6))`
-/

namespace A144072.P15853353065946782904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A004273 (n + 5) + A000096 (n + 6)).toNat

end

end A144072.P15853353065946782904

/-! ## A144072.P1319587637886904882

`A144074(A027379(n+5)+A004273(n+6))`
-/

namespace A144072.P1319587637886904882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A027379 (n + 5) + A004273 (n + 6)).toNat

end

end A144072.P1319587637886904882

/-!
# A144073: Euler transform of powers of 9.

The programs for A144073, there is no canonical definition to state claims against.
-/

/-! ## A144073.P18334287068709341973

`A144074(A052905(n+7)-5)`
-/

namespace A144073.P18334287068709341973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A052905 (n + 7) - 5).toNat

end

end A144073.P18334287068709341973

/-! ## A144073.P5376066177144110573

`A144074(A167499(n+7)+A005843(n+2))`
-/

namespace A144073.P5376066177144110573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A167499 (n + 7) + A005843 (n + 2)).toNat

end

end A144073.P5376066177144110573

/-! ## A144073.P8183200410424584035

`A144074(A055998(n+7)-A001489(n+3))`
-/

namespace A144073.P8183200410424584035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 7) - A001489 (n + 3)).toNat

end

end A144073.P8183200410424584035

/-! ## A144073.P615359473482605065

`A144074(A055998(n+5)+A016789(n+6))`
-/

namespace A144073.P615359473482605065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A055998 (n + 5) + A016789 (n + 6)).toNat

end

end A144073.P615359473482605065

/-! ## A144073.P3284179894532858630

`A144074(A000124(n+13)-A016789(n+15))`
-/

namespace A144073.P3284179894532858630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144074 (A000124 (n + 13) - A016789 (n + 15)).toNat

end

end A144073.P3284179894532858630

/-!
# A144074: Number A(n,k) of multisets of nonempty words with a total of n letters over k-ary alphabet; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A144074, there is no canonical definition to state claims against.
-/

/-! ## A144074.P10479796472312645771

`A261718(n)+A033886(A208673(n))`
-/

namespace A144074.P10479796472312645771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 n + A033886 (A208673 n).toNat

end

end A144074.P10479796472312645771

/-! ## A144074.P16583580409717715475

`A362125(n)+A033886(A208673(n))`
-/

namespace A144074.P16583580409717715475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362125 n + A033886 (A208673 n).toNat

end

end A144074.P16583580409717715475

/-! ## A144074.P3901999391158683749

`xor(A261718(n), A326683(A227061(n+1)))`
-/

namespace A144074.P3901999391158683749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A261718 n) (A326683 (A227061 (n + 1)).toNat)

end

end A144074.P3901999391158683749

/-! ## A144074.P15829705876788589711

`A261718(n)+A261679(A261676(2*(n+2)))`
-/

namespace A144074.P15829705876788589711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261718 n + A261679 (A261676 (2 * (n + 2))).toNat

end

end A144074.P15829705876788589711

/-! ## A144074.P9151432074005141566

`A001222(2^A261718(n))`
-/

namespace A144074.P9151432074005141566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A261718 n : ℤ))).toNat

end

end A144074.P9151432074005141566

/-!
# A144077: a(n) = z(n^2,n) with z(x,y) = if x>y then z(x-y,y+1) else y.

The programs for A144077, the canonical program `A144077.P4896225116438529991` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144077 has offset 1).

The definition of A144077 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144077.P4896225116438529991

`round(sqrt(∑[2*(3*n+1)]))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A144077

/-- `round(sqrt(∑[2*(3*n+1)]))` -/
def P4896225116438529991.Spec : Prop :=
  ∀ n, P4896225116438529991.a n = A144077 (n + 1)

theorem P4896225116438529991.correct : P4896225116438529991.Spec := by
  intro n
  simp only [A144077, Nat.add_sub_cancel]

end A144077

/-! ## A144077.P11883674746518517673

`A186226(n+1)-n`
-/

namespace A144077.P11883674746518517673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186226 (n + 1) - (n : ℤ)

end

end A144077.P11883674746518517673

namespace A144077

/-- `A186226(n+1)-n` -/
def P11883674746518517673.Spec : Prop :=
  ∀ n, P11883674746518517673.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P15677138243235226218

`A182778(n+1)-A014245(A182778(n+1))`
-/

namespace A144077.P15677138243235226218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182778 (n + 1) - A014245 (A182778 (n + 1)).toNat

end

end A144077.P15677138243235226218

namespace A144077

/-- `A182778(n+1)-A014245(A182778(n+1))` -/
def P15677138243235226218.Spec : Prop :=
  ∀ n, P15677138243235226218.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P10105721579473634757

`A054406(2*(n+1))-A014245(A054406(2*(n+1)))`
-/

namespace A144077.P10105721579473634757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054406 (2 * (n + 1)) - A014245 (A054406 (2 * (n + 1))).toNat

end

end A144077.P10105721579473634757

namespace A144077

/-- `A054406(2*(n+1))-A014245(A054406(2*(n+1)))` -/
def P10105721579473634757.Spec : Prop :=
  ∀ n, P10105721579473634757.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P14789527865776861397

`A022838(A182778(n+1))-A022838(A003512(n+1))`
-/

namespace A144077.P14789527865776861397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A182778 (n + 1)).toNat - A022838 (A003512 (n + 1)).toNat

end

end A144077.P14789527865776861397

namespace A144077

/-- `A022838(A182778(n+1))-A022838(A003512(n+1))` -/
def P14789527865776861397.Spec : Prop :=
  ∀ n, P14789527865776861397.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P10805558134909212838

`A022838(A182778(n+1))-(A182778(n+1)+A022838(n+1))`
-/

namespace A144077.P10805558134909212838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A182778 (n + 1)).toNat - (A182778 (n + 1) + A022838 (n + 1))

end

end A144077.P10805558134909212838

namespace A144077

/-- `A022838(A182778(n+1))-(A182778(n+1)+A022838(n+1))` -/
def P10805558134909212838.Spec : Prop :=
  ∀ n, P10805558134909212838.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P11195839325141882838

`floor(log2(A094432(n+2))-n)`
-/

namespace A144077.P11195839325141882838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A094432 (n + 2) : ℝ) - (n : ℝ)⌋

end

end A144077.P11195839325141882838

namespace A144077

/-- `floor(log2(A094432(n+2))-n)` -/
def P11195839325141882838.Spec : Prop :=
  ∀ n, P11195839325141882838.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P1875416138565635473

`A172471(A185594(n+1))`
-/

namespace A144077.P1875416138565635473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A185594 (n + 1)).toNat

end

end A144077.P1875416138565635473

namespace A144077

/-- `A172471(A185594(n+1))` -/
def P1875416138565635473.Spec : Prop :=
  ∀ n, P1875416138565635473.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P11641931124945423510

`A002024(Δ[n*∑[n]])`
-/

namespace A144077.P11641931124945423510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144077.P11641931124945423510

namespace A144077

/-- `A002024(Δ[n*∑[n]])` -/
def P11641931124945423510.Spec : Prop :=
  ∀ n, P11641931124945423510.a n = A144077 (n + 1)

end A144077

/-! ## A144077.P15398339667858447748

`A123578(Δ[n*∑[n]])`
-/

namespace A144077.P15398339667858447748
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A144077.P15398339667858447748

namespace A144077

/-- `A123578(Δ[n*∑[n]])` -/
def P15398339667858447748.Spec : Prop :=
  ∀ n, P15398339667858447748.a n = A144077 (n + 1)

end A144077

/-!
# A144078: a(n) = the number of digits in the binary representation of n that differ from the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 1's in n XOR A030101(n).)

The programs for A144078, the canonical program `A144078.P3429487061898362831` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144078 has offset 1).

The definition of A144078 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144078.P3429487061898362831

`2*A037888(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A144078

/-- `2*A037888(n+1)` -/
def P3429487061898362831.Spec : Prop :=
  ∀ n, P3429487061898362831.a n = A144078 (n + 1)

theorem P3429487061898362831.correct : P3429487061898362831.Spec := by
  intro n
  simp only [A144078, Nat.add_sub_cancel]

end A144078

/-! ## A144078.P10775702895643651886

`A000120(A175919(n+1))`
-/

namespace A144078.P10775702895643651886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175919 (n + 1)).toNat

end

end A144078.P10775702895643651886

namespace A144078

/-- `A000120(A175919(n+1))` -/
def P10775702895643651886.Spec : Prop :=
  ∀ n, P10775702895643651886.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P18337608298420412690

`2*A000120(A344220(n+1))`
-/

namespace A144078.P18337608298420412690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 (A344220 (n + 1)).toNat

end

end A144078.P18337608298420412690

namespace A144078

/-- `2*A000120(A344220(n+1))` -/
def P18337608298420412690.Spec : Prop :=
  ∀ n, P18337608298420412690.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P18116277569796019215

`2*A000120(A370427(n+1))`
-/

namespace A144078.P18116277569796019215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000120 (A370427 (n + 1)).toNat

end

end A144078.P18116277569796019215

namespace A144078

/-- `2*A000120(A370427(n+1))` -/
def P18116277569796019215.Spec : Prop :=
  ∀ n, P18116277569796019215.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P1560014743456601690

`A000120(xor(n+1, A030101(n+1)))`
-/

namespace A144078.P1560014743456601690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n + 1 : ℤ) (A030101 (n + 1))).toNat

end

end A144078.P1560014743456601690

namespace A144078

/-- `A000120(xor(n+1, A030101(n+1)))` -/
def P1560014743456601690.Spec : Prop :=
  ∀ n, P1560014743456601690.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P4417367038118227419

`2*(A000120(n+1)-A159780(n+1))`
-/

namespace A144078.P4417367038118227419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000120 (n + 1) - A159780 (n + 1))

end

end A144078.P4417367038118227419

namespace A144078

/-- `2*(A000120(n+1)-A159780(n+1))` -/
def P4417367038118227419.Spec : Prop :=
  ∀ n, P4417367038118227419.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P16397857824347293701

`A037888(char[12]+1+n)+A037888(n+1)`
-/

namespace A144078.P16397857824347293701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) + A037888 (n + 1)

end

end A144078.P16397857824347293701

namespace A144078

/-- `A037888(char[12]+1+n)+A037888(n+1)` -/
def P16397857824347293701.Spec : Prop :=
  ∀ n, P16397857824347293701.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P11974123336266351701

`A103517(A037888(n+1)+n)-A103517(n)`
-/

namespace A144078.P11974123336266351701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A037888 (n + 1) + (n : ℤ)).toNat - A103517 n

end

end A144078.P11974123336266351701

namespace A144078

/-- `A103517(A037888(n+1)+n)-A103517(n)` -/
def P11974123336266351701.Spec : Prop :=
  ∀ n, P11974123336266351701.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P10899831194421914533

`2*A037889(A005836(n+2))`
-/

namespace A144078.P10899831194421914533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037889 (A005836 (n + 2)).toNat

end

end A144078.P10899831194421914533

namespace A144078

/-- `2*A037889(A005836(n+2))` -/
def P10899831194421914533.Spec : Prop :=
  ∀ n, P10899831194421914533.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P6057021074642212753

`A037889(A005823(n+2))`
-/

namespace A144078.P6057021074642212753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037889 (A005823 (n + 2)).toNat

end

end A144078.P6057021074642212753

namespace A144078

/-- `A037889(A005823(n+2))` -/
def P6057021074642212753.Spec : Prop :=
  ∀ n, P6057021074642212753.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P10527358114614059477

`2*A037890(A374625(n+1))`
-/

namespace A144078.P10527358114614059477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037890 (A374625 (n + 1)).toNat

end

end A144078.P10527358114614059477

namespace A144078

/-- `2*A037890(A374625(n+1))` -/
def P10527358114614059477.Spec : Prop :=
  ∀ n, P10527358114614059477.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P14095091362056538318

`A070939(n+1)-A144079(n+1)`
-/

namespace A144078.P14095091362056538318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A144079 (n + 1)

end

end A144078.P14095091362056538318

namespace A144078

/-- `A070939(n+1)-A144079(n+1)` -/
def P14095091362056538318.Spec : Prop :=
  ∀ n, P14095091362056538318.a n = A144078 (n + 1)

end A144078

/-! ## A144078.P8297113504305366909

`A113473(n+1)-A144079(n+1)`
-/

namespace A144078.P8297113504305366909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (n + 1) - A144079 (n + 1)

end

end A144078.P8297113504305366909

namespace A144078

/-- `A113473(n+1)-A144079(n+1)` -/
def P8297113504305366909.Spec : Prop :=
  ∀ n, P8297113504305366909.a n = A144078 (n + 1)

end A144078

/-!
# A144079: a(n) = the number of digits in the binary representation of n that equal the corresponding digit in the binary reversal of n. (I.e., a(n) = number of 0's in n XOR A030101(n).)

The programs for A144079, the canonical program `A144079.P16455601221658546994` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144079 has offset 1).

The definition of A144079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144079.P15555812931431394948

`ceil(log2(n+2))-A144078(n+1)`
-/

namespace A144079.P15555812931431394948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 2 : ℝ)⌉ - A144078 (n + 1)

end

end A144079.P15555812931431394948

namespace A144079

/-- `ceil(log2(n+2))-A144078(n+1)` -/
def P15555812931431394948.Spec : Prop :=
  ∀ n, P15555812931431394948.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P17581442942136049253

`A000120(A175920(n+1))`
-/

namespace A144079.P17581442942136049253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A175920 (n + 1)).toNat

end

end A144079.P17581442942136049253

namespace A144079

/-- `A000120(A175920(n+1))` -/
def P17581442942136049253.Spec : Prop :=
  ∀ n, P17581442942136049253.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P7485883488740715571

`A048881(2*A175920(n+1))`
-/

namespace A144079.P7485883488740715571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A175920 (n + 1)).toNat

end

end A144079.P7485883488740715571

namespace A144079

/-- `A048881(2*A175920(n+1))` -/
def P7485883488740715571.Spec : Prop :=
  ∀ n, P7485883488740715571.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P8853560589606488943

`A274036(A175920(C(n+1, n)))`
-/

namespace A144079.P8853560589606488943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A175920 (Nat.choose (n + 1) n)).toNat

end

end A144079.P8853560589606488943

namespace A144079

/-- `A274036(A175920(C(n+1, n)))` -/
def P8853560589606488943.Spec : Prop :=
  ∀ n, P8853560589606488943.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P16874159981290505030

`A274036(A175920(-xor(n, -1)))`
-/

namespace A144079.P16874159981290505030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A175920 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A144079.P16874159981290505030

namespace A144079

/-- `A274036(A175920(-xor(n, -1)))` -/
def P16874159981290505030.Spec : Prop :=
  ∀ n, P16874159981290505030.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P1852700852136517761

`A274036(A175920(Δ[n²]-n))`
-/

namespace A144079.P1852700852136517761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274036 (A175920 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A144079.P1852700852136517761

namespace A144079

/-- `A274036(A175920(Δ[n²]-n))` -/
def P1852700852136517761.Spec : Prop :=
  ∀ n, P1852700852136517761.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P17931189376562586069

`A000120(xor(n+1, A036044(n+1)))`
-/

namespace A144079.P17931189376562586069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor (n + 1 : ℤ) (A036044 (n + 1))).toNat

end

end A144079.P17931189376562586069

namespace A144079

/-- `A000120(xor(n+1, A036044(n+1)))` -/
def P17931189376562586069.Spec : Prop :=
  ∀ n, P17931189376562586069.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P12973423509126522949

`A023416(xor(n+1, A145341(n+2)))`
-/

namespace A144079.P12973423509126522949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (Int.xor (n + 1 : ℤ) (A145341 (n + 2))).toNat

end

end A144079.P12973423509126522949

namespace A144079

/-- `A023416(xor(n+1, A145341(n+2)))` -/
def P12973423509126522949.Spec : Prop :=
  ∀ n, P12973423509126522949.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P16455601221658546994

`abs(A113473(n+1)-A144078(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144079

/-- `abs(A113473(n+1)-A144078(n+1))` -/
def P16455601221658546994.Spec : Prop :=
  ∀ n, P16455601221658546994.a n = A144079 (n + 1)

theorem P16455601221658546994.correct : P16455601221658546994.Spec := by
  intro n
  simp only [A144079, Nat.add_sub_cancel]

end A144079

/-! ## A144079.P13736766182614879627

`A070939(n+1)-2*A037888(n+1)`
-/

namespace A144079.P13736766182614879627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - 2 * A037888 (n + 1)

end

end A144079.P13736766182614879627

namespace A144079

/-- `A070939(n+1)-2*A037888(n+1)` -/
def P13736766182614879627.Spec : Prop :=
  ∀ n, P13736766182614879627.a n = A144079 (n + 1)

end A144079

/-! ## A144079.P8165565689483073464

`A029837(n+2)-A037888(n+1)-A037888(n+1)`
-/

namespace A144079.P8165565689483073464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 2) - A037888 (n + 1) - A037888 (n + 1)

end

end A144079.P8165565689483073464

namespace A144079

/-- `A029837(n+2)-A037888(n+1)-A037888(n+1)` -/
def P8165565689483073464.Spec : Prop :=
  ∀ n, P8165565689483073464.a n = A144079 (n + 1)

end A144079

/-!
# A144080: Positions of hexagonal pyramidal numbers in the EKG sequence.

The programs for A144080, there is no canonical definition to state claims against.
-/

/-! ## A144080.P11919902131047103043

`∑{d}[∑[∑[4*n+1]], A304526(#)]`
-/

namespace A144080.P11919902131047103043
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A304526 d

end

end A144080.P11919902131047103043

/-! ## A144080.P10192897241547877963

`A064664(∑[∑[4*n+1]])`
-/

namespace A144080.P10192897241547877963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144080.P10192897241547877963

/-! ## A144080.P7381944549260329174

`or(A000007(n), A064664(A002623(2*n)))`
-/

namespace A144080.P7381944549260329174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A064664 (A002623 (2 * n)).toNat)

end

end A144080.P7381944549260329174

/-! ## A144080.P10571879142845661568

`A064664(A002623(2*n))-A000007(n+1)`
-/

namespace A144080.P10571879142845661568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A002623 (2 * n)).toNat - A000007 (n + 1)

end

end A144080.P10571879142845661568

/-! ## A144080.P11304323472256383688

`A064664(A002623(2*n))/A329900(2*n+1)`
-/

namespace A144080.P11304323472256383688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064664 (A002623 (2 * n)).toNat : ℚ) / (A329900 (2 * n + 1) : ℚ)

end

end A144080.P11304323472256383688

/-!
# A144082: Eigentriangle generated from inverse of 6th cyclotomic polynomial, row sums = n+1.

The programs for A144082, there is no canonical definition to state claims against.
-/

/-! ## A144082.P7502721022963688642

`round(cos(A025581(n)))*A144328(n+1)`
-/

namespace A144082.P7502721022963688642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (A025581 n : ℝ)) * A144328 (n + 1)

end

end A144082.P7502721022963688642

/-! ## A144082.P12531475344482582750

`A010892(A025581(n))*A144328(n+1)`
-/

namespace A144082.P12531475344482582750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A025581 n).toNat * A144328 (n + 1)

end

end A144082.P12531475344482582750

/-! ## A144082.P11436490465220739863

`A010892(A025660(n+1))*A144328(n+1)`
-/

namespace A144082.P11436490465220739863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A025660 (n + 1)).toNat * A144328 (n + 1)

end

end A144082.P11436490465220739863

/-! ## A144082.P902332897260292617

`A010892(A025669(n+1))*A144328(n+1)`
-/

namespace A144082.P902332897260292617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A025669 (n + 1)).toNat * A144328 (n + 1)

end

end A144082.P902332897260292617

/-! ## A144082.P16177070177757115176

`A128834(A004736(n+1))*A144328(n+1)`
-/

namespace A144082.P16177070177757115176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A004736 (n + 1)).toNat * A144328 (n + 1)

end

end A144082.P16177070177757115176

/-! ## A144082.P12003967099418434151

`A010892(A025581(n))*A193592(A038722(n+1))`
-/

namespace A144082.P12003967099418434151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A025581 n).toNat * A193592 (A038722 (n + 1)).toNat

end

end A144082.P12003967099418434151

/-! ## A144082.P17742076449509170778

`A128834(A004736(n+1))*A320111(A059268(n))`
-/

namespace A144082.P17742076449509170778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A004736 (n + 1)).toNat * A320111 (A059268 n).toNat

end

end A144082.P17742076449509170778

/-!
# A144083: Triangle read by rows: partial sums from the right of an A010892 subsequences decrescendo triangle.

The programs for A144083, the canonical program `A144083.P2540652518003233177` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144083 has offset 0).

The definition of A144083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144083.P792295297974524262

`A000337(C(comp[∑[n]]-n, 2)-n)%3`
-/

namespace A144083.P792295297974524262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000337 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 3

end

end A144083.P792295297974524262

namespace A144083

/-- `A000337(C(comp[∑[n]]-n, 2)-n)%3` -/
def P792295297974524262.Spec : Prop :=
  ∀ n, P792295297974524262.a n = A144083 n

end A144083

/-! ## A144083.P3655681427457117609

`A001318(C(comp[∑[n]]-n, 2)-n)%3`
-/

namespace A144083.P3655681427457117609
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001318 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)) 3

end

end A144083.P3655681427457117609

namespace A144083

/-- `A001318(C(comp[∑[n]]-n, 2)-n)%3` -/
def P3655681427457117609.Spec : Prop :=
  ∀ n, P3655681427457117609.a n = A144083 n

end A144083

/-! ## A144083.P2540652518003233177

`A164965(A025581(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A144083

/-- `A164965(A025581(n))` -/
def P2540652518003233177.Spec : Prop :=
  ∀ n, P2540652518003233177.a n = A144083 n

theorem P2540652518003233177.correct : P2540652518003233177.Spec := by
  intro n
  simp only [A144083]

end A144083

/-! ## A144083.P13558694558267464774

`A088689(A104571(n))`
-/

namespace A144083.P13558694558267464774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088689 (A104571 n).toNat

end

end A144083.P13558694558267464774

namespace A144083

/-- `A088689(A104571(n))` -/
def P13558694558267464774.Spec : Prop :=
  ∀ n, P13558694558267464774.a n = A144083 n

end A144083

/-! ## A144083.P9861511622558678144

`C(A130321(n)+4, 3)%3`
-/

namespace A144083.P9861511622558678144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A130321 n + 4).toNat 3 % 3

end

end A144083.P9861511622558678144

namespace A144083

/-- `C(A130321(n)+4, 3)%3` -/
def P9861511622558678144.Spec : Prop :=
  ∀ n, (P9861511622558678144.a n : ℤ) = A144083 n

end A144083

/-! ## A144083.P9432366484347049643

`A164965(A257238(n))`
-/

namespace A144083.P9432366484347049643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164965 (A257238 n).toNat

end

end A144083.P9432366484347049643

namespace A144083

/-- `A164965(A257238(n))` -/
def P9432366484347049643.Spec : Prop :=
  ∀ n, P9432366484347049643.a n = A144083 n

end A144083

/-! ## A144083.P3046728488191874857

`A159955(A130321(n))`
-/

namespace A144083.P3046728488191874857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159955 (A130321 n).toNat

end

end A144083.P3046728488191874857

namespace A144083

/-- `A159955(A130321(n))` -/
def P3046728488191874857.Spec : Prop :=
  ∀ n, P3046728488191874857.a n = A144083 n

end A144083

/-! ## A144083.P3886571406841879223

`A309020(A173786(n))`
-/

namespace A144083.P3886571406841879223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309020 (A173786 n).toNat

end

end A144083.P3886571406841879223

namespace A144083

/-- `A309020(A173786(n))` -/
def P3886571406841879223.Spec : Prop :=
  ∀ n, P3886571406841879223.a n = A144083 n

end A144083

/-! ## A144083.P10867711182691081883

`A309020(A048645(n+2))`
-/

namespace A144083.P10867711182691081883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309020 (A048645 (n + 2)).toNat

end

end A144083.P10867711182691081883

namespace A144083

/-- `A309020(A048645(n+2))` -/
def P10867711182691081883.Spec : Prop :=
  ∀ n, P10867711182691081883.a n = A144083 n

end A144083

/-!
# A144084: T(n,k) is the number of partial bijections of height k (height(alpha) = |Im(alpha)|) of an n-element set.

The programs for A144084, the canonical program `A144084.P15154162313279112689` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A144084 has offset 0).

The definition of A144084 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2401 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A144084.P15154162313279112689

`A007318(n)*A008279(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A144084

/-- `A007318(n)*A008279(n)` -/
def P15154162313279112689.Spec : Prop :=
  ∀ n, P15154162313279112689.a n = A144084 n

theorem P15154162313279112689.correct : P15154162313279112689.Spec := by
  intro n
  simp only [A144084]

end A144084

/-! ## A144084.P10738251251515189371

`A008459(n)*A233543(n)`
-/

namespace A144084.P10738251251515189371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A233543 n

end

end A144084.P10738251251515189371

namespace A144084

/-- `A008459(n)*A233543(n)` -/
def P10738251251515189371.Spec : Prop :=
  ∀ n, P10738251251515189371.a n = A144084 n

end A144084

/-! ## A144084.P11668265775314804529

`abs(A008279(n)*A130595(n))`
-/

namespace A144084.P11668265775314804529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008279 n * A130595 n|

end

end A144084.P11668265775314804529

namespace A144084

/-- `abs(A008279(n)*A130595(n))` -/
def P11668265775314804529.Spec : Prop :=
  ∀ n, P11668265775314804529.a n = A144084 n

end A144084

/-! ## A144084.P11338382588725408359

`A007318(n)²*A233543(n)`
-/

namespace A144084.P11338382588725408359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A233543 n

end

end A144084.P11338382588725408359

namespace A144084

/-- `A007318(n)²*A233543(n)` -/
def P11338382588725408359.Spec : Prop :=
  ∀ n, P11338382588725408359.a n = A144084 n

end A144084

/-! ## A144084.P17058896527801947864

`A130595(n)²*A233543(n)`
-/

namespace A144084.P17058896527801947864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n ^ 2 * A233543 n

end

end A144084.P17058896527801947864

namespace A144084

/-- `A130595(n)²*A233543(n)` -/
def P17058896527801947864.Spec : Prop :=
  ∀ n, P17058896527801947864.a n = A144084 n

end A144084

/-! ## A144084.P4638352304256490202

`abs(A094587(A061579(n))*A130595(n))`
-/

namespace A144084.P4638352304256490202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094587 (A061579 n).toNat * A130595 n|

end

end A144084.P4638352304256490202

namespace A144084

/-- `abs(A094587(A061579(n))*A130595(n))` -/
def P4638352304256490202.Spec : Prop :=
  ∀ n, P4638352304256490202.a n = A144084 n

end A144084

/-! ## A144084.P6798718170653110786

`A008279(n)/A233543(n)*A008279(n)`
-/

namespace A144084.P6798718170653110786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n : ℚ) / (A233543 n : ℚ) * (A008279 n : ℚ)

end

end A144084.P6798718170653110786

namespace A144084

/-- `A008279(n)/A233543(n)*A008279(n)` -/
def P6798718170653110786.Spec : Prop :=
  ∀ n, P6798718170653110786.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P16397256358692770188

`A007318(n)²*A000142(A144328(n+1))`
-/

namespace A144084.P16397256358692770188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A000142 (A144328 (n + 1)).toNat

end

end A144084.P16397256358692770188

namespace A144084

/-- `A007318(n)²*A000142(A144328(n+1))` -/
def P16397256358692770188.Spec : Prop :=
  ∀ n, P16397256358692770188.a n = A144084 n

end A144084

/-! ## A144084.P12567775930165490064

`A007318(n)²/A093375(n+1)*A245334(n)`
-/

namespace A144084.P12567775930165490064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n ^ 2 : ℚ) / (A093375 (n + 1) : ℚ) * (A245334 n : ℚ)

end

end A144084.P12567775930165490064

namespace A144084

/-- `A007318(n)²/A093375(n+1)*A245334(n)` -/
def P12567775930165490064.Spec : Prop :=
  ∀ n, P12567775930165490064.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P14856609990065177526

`A166350(n+1)/A002260(n+1)*A007318(n)²`
-/

namespace A144084.P14856609990065177526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166350 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A007318 n ^ 2 : ℚ)

end

end A144084.P14856609990065177526

namespace A144084

/-- `A166350(n+1)/A002260(n+1)*A007318(n)²` -/
def P14856609990065177526.Spec : Prop :=
  ∀ n, P14856609990065177526.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P10107006765064074385

`abs(A021010(n))`
-/

namespace A144084.P10107006765064074385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A021010 n|

end

end A144084.P10107006765064074385

namespace A144084

/-- `abs(A021010(n))` -/
def P10107006765064074385.Spec : Prop :=
  ∀ n, P10107006765064074385.a n = A144084 n

end A144084

/-! ## A144084.P8626486851244408797

`A021010(n)*A097807(n)`
-/

namespace A144084.P8626486851244408797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021010 n * A097807 n

end

end A144084.P8626486851244408797

namespace A144084

/-- `A021010(n)*A097807(n)` -/
def P8626486851244408797.Spec : Prop :=
  ∀ n, P8626486851244408797.a n = A144084 n

end A144084

/-! ## A144084.P12889476813250235934

`gcd(A000038(n), A021010(n))`
-/

namespace A144084.P12889476813250235934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A021010 n)

end

end A144084.P12889476813250235934

namespace A144084

/-- `gcd(A000038(n), A021010(n))` -/
def P12889476813250235934.Spec : Prop :=
  ∀ n, (P12889476813250235934.a n : ℤ) = A144084 n

end A144084

/-! ## A144084.P11754575617893137179

`lcm(A007318(n), A021010(n))`
-/

namespace A144084.P11754575617893137179
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A021010 n)

end

end A144084.P11754575617893137179

namespace A144084

/-- `lcm(A007318(n), A021010(n))` -/
def P11754575617893137179.Spec : Prop :=
  ∀ n, (P11754575617893137179.a n : ℤ) = A144084 n

end A144084

/-! ## A144084.P4481196954896411342

`abs(A021009(A061579(n)))`
-/

namespace A144084.P4481196954896411342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A021009 (A061579 n).toNat|

end

end A144084.P4481196954896411342

namespace A144084

/-- `abs(A021009(A061579(n)))` -/
def P4481196954896411342.Spec : Prop :=
  ∀ n, P4481196954896411342.a n = A144084 n

end A144084

/-! ## A144084.P9741448176033488292

`A196347(n)/A119502(n)`
-/

namespace A144084.P9741448176033488292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196347 n : ℚ) / (A119502 n : ℚ)

end

end A144084.P9741448176033488292

namespace A144084

/-- `A196347(n)/A119502(n)` -/
def P9741448176033488292.Spec : Prop :=
  ∀ n, P9741448176033488292.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P9256306482913572805

`A073474(n)/A143409(n)*A007318(n)`
-/

namespace A144084.P9256306482913572805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073474 n : ℚ) / (A143409 n : ℚ) * (A007318 n : ℚ)

end

end A144084.P9256306482913572805

namespace A144084

/-- `A073474(n)/A143409(n)*A007318(n)` -/
def P9256306482913572805.Spec : Prop :=
  ∀ n, P9256306482913572805.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P14636577481670012779

`A007318(n)²/A059110(n)*A059114(n)`
-/

namespace A144084.P14636577481670012779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n ^ 2 : ℚ) / (A059110 n : ℚ) * (A059114 n : ℚ)

end

end A144084.P14636577481670012779

namespace A144084

/-- `A007318(n)²/A059110(n)*A059114(n)` -/
def P14636577481670012779.Spec : Prop :=
  ∀ n, P14636577481670012779.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P8367829851526558236

`A177428(n+1)/A008292(n+1)*A007318(n)`
-/

namespace A144084.P8367829851526558236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177428 (n + 1) : ℚ) / (A008292 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A144084.P8367829851526558236

namespace A144084

/-- `A177428(n+1)/A008292(n+1)*A007318(n)` -/
def P8367829851526558236.Spec : Prop :=
  ∀ n, P8367829851526558236.a n = (A144084 n : ℚ)

end A144084

/-! ## A144084.P2786263242136490034

`A008279(n)²/A233543(n)`
-/

namespace A144084.P2786263242136490034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008279 n ^ 2 : ℚ) / (A233543 n : ℚ)

end

end A144084.P2786263242136490034

namespace A144084

/-- `A008279(n)²/A233543(n)` -/
def P2786263242136490034.Spec : Prop :=
  ∀ n, P2786263242136490034.a n = (A144084 n : ℚ)

end A144084

/-!
# A144085: a(n) is the number of partial bijections (or subpermutations) of an n-element set without fixed points (also called partial derangements).

The programs for A144085, there is no canonical definition to state claims against.
-/

/-! ## A144085.P11493258222135633255

`(2*n-1)*a(n-1)-(n-1)*(n-3)*a(n-2)-(n-1)*(n-2)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A144085.P11493258222135633255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  ((2 * n : ℤ) - 1) * a (n - 1) - ((n : ℤ) - 1) * (((n : ℤ) - 3) * a (n - 2)) - ((n : ℤ) - 1) * (((n : ℤ) - 2) * a (n - 3))

end

end A144085.P11493258222135633255

/-! ## A144085.P17805461119570220097

`A052845(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A144085.P17805461119570220097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052845 n + (n : ℤ) * a (n - 1)

end

end A144085.P17805461119570220097

/-! ## A144085.P14356917224657938938

`A144086(n)+A052845(n)`
-/

namespace A144085.P14356917224657938938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144086 n + A052845 n

end

end A144085.P14356917224657938938

/-! ## A144085.P4042153598502648141

`A144086(n)+abs(A293120(n))`
-/

namespace A144085.P4042153598502648141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144086 n + |A293120 n|

end

end A144085.P4042153598502648141

/-! ## A144085.P9131298890818412409

`A144086(n)+A114329(A000217(n))`
-/

namespace A144085.P9131298890818412409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144086 n + A114329 (A000217 n).toNat

end

end A144085.P9131298890818412409

/-! ## A144085.P16200318889915606528

`A144086(n+1)/(n+1)`
-/

namespace A144085.P16200318889915606528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144086 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A144085.P16200318889915606528

/-! ## A144085.P8564518689637603072

`A144087(n+2)/∑[n+1]`
-/

namespace A144085.P8564518689637603072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144087 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A144085.P8564518689637603072

/-! ## A144085.P5578120579124944193

`A144088(∑[n])`
-/

namespace A144085.P5578120579124944193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144088 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144085.P5578120579124944193

/-!
# A144086: Number of partial bijections (or subpermutations) of an n-element set with exactly 1 fixed point.

The programs for A144086, there is no canonical definition to state claims against.
-/

/-! ## A144086.P9272971036024467681

`n*A144085(abs(1-n))`
-/

namespace A144086.P9272971036024467681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144085 |1 - (n : ℤ)|.toNat

end

end A144086.P9272971036024467681

/-! ## A144086.P558437927137478950

`2/(n+1)*A144087(n+1)`
-/

namespace A144086.P558437927137478950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A144087 (n + 1) : ℚ)

end

end A144086.P558437927137478950

/-! ## A144086.P2236908605989664768

`A144085(n)-A052845(n)`
-/

namespace A144086.P2236908605989664768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144085 n - A052845 n

end

end A144086.P2236908605989664768

/-! ## A144086.P5315924907519746536

`A144085(n)-abs(A293120(n))`
-/

namespace A144086.P5315924907519746536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144085 n - |A293120 n|

end

end A144086.P5315924907519746536

/-! ## A144086.P14307589054331148127

`A144085(n)-A114329(∑[n])`
-/

namespace A144086.P14307589054331148127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144085 n - A114329 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A144086.P14307589054331148127

/-! ## A144086.P15009740778770025456

`A144085(n)-A293053(A034856(n+1))`
-/

namespace A144086.P15009740778770025456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144085 n - A293053 (A034856 (n + 1)).toNat

end

end A144086.P15009740778770025456

/-! ## A144086.P16680605906461195646

`n*A144088(A161680(n))`
-/

namespace A144086.P16680605906461195646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144088 (A161680 n).toNat

end

end A144086.P16680605906461195646

/-! ## A144086.P15302063664698874058

`lcm(n, A144088(A133263(n)-1))`
-/

namespace A144086.P15302063664698874058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A144088 (A133263 n - 1).toNat)

end

end A144086.P15302063664698874058

/-!
# A144087: a(n) is the number of partial bijections (or subpermutations) of an n-element set with exactly 2 fixed points.

The programs for A144087, there is no canonical definition to state claims against.
-/

/-! ## A144087.P14037497713113267537

`C(n, 2)*A144085(floor(n-atan(n)))`
-/

namespace A144087.P14037497713113267537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A144085 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A144087.P14037497713113267537

/-! ## A144087.P5937877092141103422

`A144085(A289207(n))*A161680(n)`
-/

namespace A144087.P5937877092141103422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144085 (A289207 n).toNat * A161680 n

end

end A144087.P5937877092141103422

/-! ## A144087.P7189023203489728057

`A144088(A133263(n))*A157928(n)`
-/

namespace A144087.P7189023203489728057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144088 (A133263 n).toNat * A157928 n

end

end A144087.P7189023203489728057

/-! ## A144087.P9542433903440326802

`A144088(A133263(n))%A000670(n)`
-/

namespace A144087.P9542433903440326802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144088 (A133263 n).toNat) (A000670 n)

end

end A144087.P9542433903440326802

/-! ## A144087.P3436742525964499751

`lcm(A144088(A133263(n)), A161680(n))`
-/

namespace A144087.P3436742525964499751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144088 (A133263 n).toNat) (A161680 n)

end

end A144087.P3436742525964499751

/-!
# A144088: T(n,k) is the number of partial bijections (or subpermutations) of an n-element set with exactly k fixed points.

The programs for A144088, there is no canonical definition to state claims against.
-/

/-! ## A144088.P4010012749814180508

`A007318(n)*A144085(A025581(n))`
-/

namespace A144088.P4010012749814180508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144085 (A025581 n).toNat

end

end A144088.P4010012749814180508

/-! ## A144088.P6184567778470475107

`sqrt(A008459(n))*A144085(A025581(n))`
-/

namespace A144088.P6184567778470475107
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A144085 (A025581 n).toNat : ℝ)

end

end A144088.P6184567778470475107

/-! ## A144088.P10393993726000131083

`Δ[A102363(n)]*A144085(A025581(n))`
-/

namespace A144088.P10393993726000131083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A144085 (A025581 n).toNat

end

end A144088.P10393993726000131083

/-! ## A144088.P2010049412315449180

`A118541(A226780(n)-A132382(n))`
-/

namespace A144088.P2010049412315449180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118541 (A226780 n - A132382 n).toNat

end

end A144088.P2010049412315449180

/-!
# A144089: T(n,k) is the number of partial bijections (or subpermutations) of an n-element set of height k (height(alpha) = |Im(alpha)|) and without fixed points.

The programs for A144089, there is no canonical definition to state claims against.
-/

/-! ## A144089.P1297487190051602750

`A007318(n)*A060475(n)`
-/

namespace A144089.P1297487190051602750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060475 n

end

end A144089.P1297487190051602750

/-! ## A144089.P9117107476541115679

`abs(A060475(n)*A108086(n))`
-/

namespace A144089.P9117107476541115679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060475 n * A108086 n|

end

end A144089.P9117107476541115679

/-! ## A144089.P11286021328001118471

`abs(A060475(n)*A117440(n))`
-/

namespace A144089.P11286021328001118471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060475 n * A117440 n|

end

end A144089.P11286021328001118471

/-! ## A144089.P1471993192530414396

`abs(A060475(n)*A130595(n))`
-/

namespace A144089.P1471993192530414396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060475 n * A130595 n|

end

end A144089.P1471993192530414396

/-! ## A144089.P13686644237455385211

`sqrt(A008459(n))*A060475(n)`
-/

namespace A144089.P13686644237455385211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A060475 n : ℝ)

end

end A144089.P13686644237455385211

/-! ## A144089.P13240012249998797941

`Δ[A102363(n)]*A060475(n)`
-/

namespace A144089.P13240012249998797941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A060475 n

end

end A144089.P13240012249998797941

/-! ## A144089.P14166607880513743829

`(A014473(n)+1)*A060475(n)`
-/

namespace A144089.P14166607880513743829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A060475 n

end

end A144089.P14166607880513743829

/-! ## A144089.P18304917000540676687

`A028326(n)/2*A060475(n)`
-/

namespace A144089.P18304917000540676687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A060475 n : ℚ)

end

end A144089.P18304917000540676687

/-! ## A144089.P3156949839983379364

`A004525(A028326(n))*A060475(n)`
-/

namespace A144089.P3156949839983379364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A028326 n).toNat * A060475 n

end

end A144089.P3156949839983379364

/-! ## A144089.P182959933726019631

`A007318(n)*A086764(A061579(n))`
-/

namespace A144089.P182959933726019631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A086764 (A061579 n).toNat

end

end A144089.P182959933726019631

/-!
# A144090: Triangle read by rows: T(n,k) is the number of partial bijections (or subpermutations) of an n-element set of height k (height(alpha) = |Im(alpha)|) and with exactly 1 fixed point.

The programs for A144090, there is no canonical definition to state claims against.
-/

/-! ## A144090.P5127759969732793473

`∑[char[∑[n]]]*A144089(n)`
-/

namespace A144090.P5127759969732793473
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A144089 n

end

end A144090.P5127759969732793473

/-! ## A144090.P2479464496023497361

`A003506(n+1)*A060475(n)`
-/

namespace A144090.P2479464496023497361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A060475 n

end

end A144090.P2479464496023497361

/-! ## A144090.P7954515542644844191

`A144089(n)*A002024(n+1)`
-/

namespace A144090.P7954515542644844191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144089 n * A002024 (n + 1)

end

end A144090.P7954515542644844191

/-! ## A144090.P5520712124492978852

`A076732(n+1)*A135278(n)`
-/

namespace A144090.P5520712124492978852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076732 (n + 1) * A135278 n

end

end A144090.P5520712124492978852

/-! ## A144090.P4740834733651503097

`A074909(n+1)*A076732(n+1)`
-/

namespace A144090.P4740834733651503097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) * A076732 (n + 1)

end

end A144090.P4740834733651503097

/-!
# A144091: T(n,k) is the number of partial bijections (or subpermutations) of an n-element set of height k (height(alpha) = |Im(alpha)|) and with exactly 2 fixed points.

The programs for A144091, there is no canonical definition to state claims against.
-/

/-! ## A144091.P11267624762772567519

`C(comp[∑[n]]-n, 2)*A144089(n)`
-/

namespace A144091.P11267624762772567519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) * A144089 n

end

end A144091.P11267624762772567519

/-! ## A144091.P12866141655372990174

`A060475(n)*A094305(n)`
-/

namespace A144091.P12866141655372990174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060475 n * A094305 n

end

end A144091.P12866141655372990174

/-! ## A144091.P16866124051065792562

`A127739(n+1)*A144089(n)`
-/

namespace A144091.P16866124051065792562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) * A144089 n

end

end A144091.P16866124051065792562

/-! ## A144091.P2448565907540599432

`(A004736(n+1)+n)*A144089(n)`
-/

namespace A144091.P2448565907540599432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) + (n : ℤ)) * A144089 n

end

end A144091.P2448565907540599432

/-! ## A144091.P10910511386335709536

`A080036(A057944(n))*A144089(n)`
-/

namespace A144091.P10910511386335709536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (A057944 n).toNat * A144089 n

end

end A144091.P10910511386335709536

/-!
# A144092: Triangle of Hankel transforms of sequence array of C(n,floor(n/2)).

The programs for A144092, there is no canonical definition to state claims against.
-/

/-! ## A144092.P17648634384402532834

`A051159(n)-A063667(A259939(n))`
-/

namespace A144092.P17648634384402532834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n - A063667 (A259939 n).toNat

end

end A144092.P17648634384402532834

/-! ## A144092.P7862325648513815280

`A246962(A055716(n+1))+A051159(n)`
-/

namespace A144092.P7862325648513815280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246962 (A055716 (n + 1)).toNat + A051159 n

end

end A144092.P7862325648513815280

/-! ## A144092.P8159347950362864365

`A051159(n)-A000122(A050680(n+1))`
-/

namespace A144092.P8159347950362864365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n - A000122 (A050680 (n + 1)).toNat

end

end A144092.P8159347950362864365

/-! ## A144092.P16000616152021210310

`A179181(n+1)-A063667(A259939(n))`
-/

namespace A144092.P16000616152021210310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179181 (n + 1) - A063667 (A259939 n).toNat

end

end A144092.P16000616152021210310

/-! ## A144092.P14697537953969096836

`A165587(A007318(n))^A075462(n+1)`
-/

namespace A144092.P14697537953969096836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165587 (A007318 n).toNat : ℚ) ^ (A075462 (n + 1) : ℤ)

end

end A144092.P14697537953969096836

/-!
# A144093: Parity array of a matrix of Hankel transforms related to C(n,floor(n/2)).

The programs for A144093, there is no canonical definition to state claims against.
-/

/-! ## A144093.P11167090575000764395

`A123352(n)%2`
-/

namespace A144093.P11167090575000764395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123352 n) 2

end

end A144093.P11167090575000764395

/-! ## A144093.P3599639178284639036

`and(1, A123352(char[1]+n))`
-/

namespace A144093.P3599639178284639036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A123352 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A144093.P3599639178284639036

/-! ## A144093.P17552309715176473251

`and(1, -A123352(2*n-n))`
-/

namespace A144093.P17552309715176473251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-A123352 (2 * n - n))

end

end A144093.P17552309715176473251

/-! ## A144093.P4411546131836908104

`A078920(∑[2*n]%comp[∑[n]])%2`
-/

namespace A144093.P4411546131836908104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078920 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)) 2

end

end A144093.P4411546131836908104

/-! ## A144093.P1531331732265039466

`A078920(A061579(n))%2`
-/

namespace A144093.P1531331732265039466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078920 (A061579 n).toNat) 2

end

end A144093.P1531331732265039466

/-! ## A144093.P7566023027278714848

`and(A123352(n), A124698(n))`
-/

namespace A144093.P7566023027278714848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123352 n) (A124698 n)

end

end A144093.P7566023027278714848

/-! ## A144093.P7460595905882798770

`and(A123352(n), A131217(n))`
-/

namespace A144093.P7460595905882798770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123352 n) (A131217 n)

end

end A144093.P7460595905882798770

/-! ## A144093.P6444886634168500396

`and(A123352(n), A131843(n))`
-/

namespace A144093.P6444886634168500396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123352 n) (A131843 n)

end

end A144093.P6444886634168500396

/-! ## A144093.P15610878122516102578

`and(A123352(n), A168298(n))`
-/

namespace A144093.P15610878122516102578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123352 n) (A168298 n)

end

end A144093.P15610878122516102578

/-! ## A144093.P4825383838421712453

`and(A123352(n), A169726(n))`
-/

namespace A144093.P4825383838421712453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123352 n) (A169726 n)

end

end A144093.P4825383838421712453

/-!
# A144094: Prime numbers r such that there is no pair of twin primes p,p+2 and q,q+2 such that p+q+2 = 6r.

The programs for A144094, there is no canonical definition to state claims against.
-/

/-! ## A144094.P17625725056107217717

`p?[A243956(n+1)]`
-/

namespace A144094.P17625725056107217717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A144094.P17625725056107217717

/-! ## A144094.P7795209784159722925

`A243956(comp[∑[floor(8*n/13)]])`
-/

namespace A144094.P7795209784159722925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊8 * ((n : ℚ) / 13)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243956 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A144094.P7795209784159722925

/-!
# A144095: a(n) = number of exponents of the prime-factorization of n that occur somewhere in n when the exponents and n are represented in base 2.

The programs for A144095, there is no canonical definition to state claims against.
-/

/-! ## A144095.P3346386550274395361

`∑{e}[n+1, A000007(A325228(n)%A000593(#))]`
-/

namespace A144095.P3346386550274395361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000007 (Int.tmod (A325228 n) (A000593 (Nat.factorization (f1 n) p))).toNat

end

end A144095.P3346386550274395361

/-! ## A144095.P9330521489468467039

`∑{e}[n+1, A123679((n+1)*(n+1)%#+1)]`
-/

namespace A144095.P9330521489468467039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A123679 ((n + 1) * ((n + 1) % Nat.factorization (f1 n) p) + 1)

end

end A144095.P9330521489468467039

/-! ## A144095.P17358310741998628346

`A001222(gcd(A033688(n), A181819(n+1)))`
-/

namespace A144095.P17358310741998628346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (A033688 n) (A181819 (n + 1)))

end

end A144095.P17358310741998628346

/-! ## A144095.P8898033589773594471

`A001221(n+1)-(A000035(n)*A005044(n+1))%A123556(2*n+3)`
-/

namespace A144095.P8898033589773594471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - Int.tmod (A000035 n * A005044 (n + 1)) (A123556 (2 * n + 3))

end

end A144095.P8898033589773594471

/-! ## A144095.P12215224896210936645

`A001221(n+1)-A010057(A233009(n+1))`
-/

namespace A144095.P12215224896210936645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A010057 (A233009 (n + 1)).toNat

end

end A144095.P12215224896210936645

/-!
# A144096: A positive integer n is included if at least one of the exponents of the prime-factorization of n does not occur anywhere in n when the exponents and n are represented in base 2.

The programs for A144096, there is no canonical definition to state claims against.
-/

/-! ## A144096.P11525533439459040488

`lt[A144095(n+1), A001221(n+1)]+1`
-/

namespace A144096.P11525533439459040488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A144096.P11525533439459040488

/-!
# A144097: The 4-Schroeder numbers: a(n) = number of lattice paths (Schroeder paths) from (0,0) to (3n,n) with unit steps N=(0,1), E=(1,0) and D=(1,1) staying weakly above the line y = 3x.

The programs for A144097, there is no canonical definition to state claims against.
-/

/-! ## A144097.P7289114645119264608

`A187920(∑[n]+1)`
-/

namespace A144097.P7289114645119264608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187920 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A144097.P7289114645119264608

/-! ## A144097.P8214116871065621143

`record[A187920(n+1)]`
-/

namespace A144097.P8214116871065621143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144097.P8214116871065621143

/-! ## A144097.P17191007459732570242

`A378238(∑[n+1]+n)`
-/

namespace A144097.P17191007459732570242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378238 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A144097.P17191007459732570242

/-! ## A144097.P7684812492866827242

`A336534(∑[n+3]+n+3)`
-/

namespace A144097.P7684812492866827242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A144097.P7684812492866827242

/-! ## A144097.P8203554329796340299

`record[A336534(A060577(n))]`
-/

namespace A144097.P8203554329796340299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 (A060577 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144097.P8203554329796340299

/-! ## A144097.P14337845464794818201

`record[A336534(abs(A046691(n)))]`
-/

namespace A144097.P14337845464794818201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336534 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144097.P14337845464794818201

/-! ## A144097.P17369130362052694774

`record[gcd(A049600(n+4), A336534(n))]`
-/

namespace A144097.P17369130362052694774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 (n + 4)) (A336534 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A144097.P17369130362052694774

/-! ## A144097.P2596765959422300610

`A110682(A046092(n))/(n+1)`
-/

namespace A144097.P2596765959422300610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110682 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A144097.P2596765959422300610

/-!
# A144098: a(1)=1. a(n) = the smallest positive multiple of a(n-1) that contains the binary representations of all positive integers <= n at least once each in its binary representation.

The programs for A144098, there is no canonical definition to state claims against.
-/

/-! ## A144098.P4302433086166343278

`∏[A070010(n!+(n+1)*a(n-1)-1)+A033879(n+1)]` with `a(0)=1`
-/

namespace A144098.P4302433086166343278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A070010 ((Nat.factorial n : ℤ) + (n + 1 : ℤ) * f1 (n - 1) - 1).toNat + A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A144098.P4302433086166343278

/-! ## A144098.P16607628429681733866

`A091205(A058312(n+1)^A048762(n))`
-/

namespace A144098.P16607628429681733866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (SequenceMachineLib.roundAway ((A058312 (n + 1) : ℚ) ^ (A048762 n : ℤ))).toNat

end

end A144098.P16607628429681733866

/-! ## A144098.P4957733032442131517

`A091203(A109935(n+1)^A048762(n))`
-/

namespace A144098.P4957733032442131517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091203 (SequenceMachineLib.roundAway ((A109935 (n + 1) : ℚ) ^ (A048762 n : ℤ))).toNat

end

end A144098.P4957733032442131517

/-! ## A144098.P10751262289748345841

`A091205(A109935(n+1)^A048762(n))`
-/

namespace A144098.P10751262289748345841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091205 (SequenceMachineLib.roundAway ((A109935 (n + 1) : ℚ) ^ (A048762 n : ℤ))).toNat

end

end A144098.P10751262289748345841

/-!
# A144099: a(n) = A144098(n) represented in binary.

The programs for A144099, there is no canonical definition to state claims against.
-/

/-! ## A144099.P4244514645900923404

`A007088(A144098(n+1))`
-/

namespace A144099.P4244514645900923404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A144098 (n + 1)).toNat

end

end A144099.P4244514645900923404

/-! ## A144099.P8157836623556329775

`A007088(∏{e}[A229865(n), A117855(#)])`
-/

namespace A144099.P8157836623556329775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A117855 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A144099.P8157836623556329775

