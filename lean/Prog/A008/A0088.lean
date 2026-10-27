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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A008800: Molien series for group [2,7]+ = 227.

The programs for A008800, the canonical program `A008800.P4216580120172005762` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008800 has offset 0).

The definition of A008800 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008800.P4216580120172005762

`∑[A008617(n)-A001057(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008800

/-- `∑[A008617(n)-A001057(n)]` -/
def P4216580120172005762.Spec : Prop :=
  ∀ n, P4216580120172005762.a n = A008800 n

theorem P4216580120172005762.correct : P4216580120172005762.Spec := by
  intro n
  simp only [A008800]

end A008800

/-! ## A008800.P3133934654890782820

`∑[A008617(n)+∑[A038608(n)]]`
-/

namespace A008800.P3133934654890782820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008800.P3133934654890782820

namespace A008800

/-- `∑[A008617(n)+∑[A038608(n)]]` -/
def P3133934654890782820.Spec : Prop :=
  ∀ n, P3133934654890782820.a n = A008800 n

end A008800

/-! ## A008800.P4119386464630218552

`A008619(n)²-A194229(n+1)`
-/

namespace A008800.P4119386464630218552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A194229 (n + 1)

end

end A008800.P4119386464630218552

namespace A008800

/-- `A008619(n)²-A194229(n+1)` -/
def P4119386464630218552.Spec : Prop :=
  ∀ n, P4119386464630218552.a n = A008800 n

end A008800

/-! ## A008800.P8423650390047865852

`A065423(n+1)+A025764(n)-n`
-/

namespace A008800.P8423650390047865852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (n + 1) + (A025764 n - (n : ℤ))

end

end A008800.P8423650390047865852

namespace A008800

/-- `A065423(n+1)+A025764(n)-n` -/
def P8423650390047865852.Spec : Prop :=
  ∀ n, P8423650390047865852.a n = A008800 n

end A008800

/-! ## A008800.P9815981293319852182

`A025764(n)-A000035(n)*A008619(n)`
-/

namespace A008800.P9815981293319852182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025764 n - A000035 n * A008619 n

end

end A008800.P9815981293319852182

namespace A008800

/-- `A025764(n)-A000035(n)*A008619(n)` -/
def P9815981293319852182.Spec : Prop :=
  ∀ n, P9815981293319852182.a n = A008800 n

end A008800

/-! ## A008800.P5443314602889717198

`∑[A057358(n)]+n+1-A002378(A004526(n+1))`
-/

namespace A008800.P5443314602889717198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1 : ℤ) - A002378 (A004526 (n + 1)).toNat)

end

end A008800.P5443314602889717198

namespace A008800

/-- `∑[A057358(n)]+n+1-A002378(A004526(n+1))` -/
def P5443314602889717198.Spec : Prop :=
  ∀ n, P5443314602889717198.a n = A008800 n

end A008800

/-! ## A008800.P9681358593917511153

`∑[A193356(n+1)-A057357(n+2)]`
-/

namespace A008800.P9681358593917511153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) - A057357 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008800.P9681358593917511153

namespace A008800

/-- `∑[A193356(n+1)-A057357(n+2)]` -/
def P9681358593917511153.Spec : Prop :=
  ∀ n, P9681358593917511153.a n = A008800 n

end A008800

/-! ## A008800.P1712665561527310391

`A128176(∑[n]+1)²-A057357(∑[n+1])`
-/

namespace A008800.P1712665561527310391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128176 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2 - A057357 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A008800.P1712665561527310391

namespace A008800

/-- `A128176(∑[n]+1)²-A057357(∑[n+1])` -/
def P1712665561527310391.Spec : Prop :=
  ∀ n, P1712665561527310391.a n = A008800 n

end A008800

/-! ## A008800.P2105841865576283002

`A008619(n)²-A057357(A253145(n))`
-/

namespace A008800.P2105841865576283002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n ^ 2 - A057357 (A253145 n).toNat

end

end A008800.P2105841865576283002

namespace A008800

/-- `A008619(n)²-A057357(A253145(n))` -/
def P2105841865576283002.Spec : Prop :=
  ∀ n, P2105841865576283002.a n = A008800 n

end A008800

/-!
# A008801: Molien series for group [2,8]+ = 228.

The programs for A008801, the canonical program `A008801.P15140999886607481432` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008801 has offset 0).

The definition of A008801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008801.P15140999886607481432

`∑[∑[A033999(n)*A168183(n+1)]]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008801

/-- `∑[∑[A033999(n)*A168183(n+1)]]` -/
def P15140999886607481432.Spec : Prop :=
  ∀ n, P15140999886607481432.a n = A008801 n

theorem P15140999886607481432.correct : P15140999886607481432.Spec := by
  intro n
  simp only [A008801]

end A008801

/-! ## A008801.P6190127753963647329

`A130519(A123108(n))+A027656(n)`
-/

namespace A008801.P6190127753963647329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A123108 n).toNat + A027656 n

end

end A008801.P6190127753963647329

namespace A008801

/-- `A130519(A123108(n))+A027656(n)` -/
def P6190127753963647329.Spec : Prop :=
  ∀ n, P6190127753963647329.a n = A008801 n

end A008801

/-! ## A008801.P10965943402668591876

`A008795(n)-A033436(A008619(n))`
-/

namespace A008801.P10965943402668591876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - A033436 (A008619 n).toNat

end

end A008801.P10965943402668591876

namespace A008801

/-- `A008795(n)-A033436(A008619(n))` -/
def P10965943402668591876.Spec : Prop :=
  ∀ n, P10965943402668591876.a n = A008801 n

end A008801

/-! ## A008801.P12573194230101575178

`A130519(A168230(A028242(n)+A008619(n)))`
-/

namespace A008801.P12573194230101575178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A168230 (A028242 n + A008619 n).toNat).toNat

end

end A008801.P12573194230101575178

namespace A008801

/-- `A130519(A168230(A028242(n)+A008619(n)))` -/
def P12573194230101575178.Spec : Prop :=
  ∀ n, P12573194230101575178.a n = A008801 n

end A008801

/-! ## A008801.P10942058906953716314

`A130519(A065164(n+2)-∑[and(1, n)])`
-/

namespace A008801.P10942058906953716314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A065164 (n + 2) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A008801.P10942058906953716314

namespace A008801

/-- `A130519(A065164(n+2)-∑[and(1, n)])` -/
def P10942058906953716314.Spec : Prop :=
  ∀ n, P10942058906953716314.a n = A008801 n

end A008801

/-! ## A008801.P5235245193754819932

`∑[A002265(A142150(n))+A001057(n+1)]`
-/

namespace A008801.P5235245193754819932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A142150 n).toNat + A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008801.P5235245193754819932

namespace A008801

/-- `∑[A002265(A142150(n))+A001057(n+1)]` -/
def P5235245193754819932.Spec : Prop :=
  ∀ n, P5235245193754819932.a n = A008801 n

end A008801

/-! ## A008801.P4333603516999072014

`A001972(A004526(n))-A004526(A330602(n))`
-/

namespace A008801.P4333603516999072014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (A004526 n).toNat - A004526 (A330602 n).toNat

end

end A008801.P4333603516999072014

namespace A008801

/-- `A001972(A004526(n))-A004526(A330602(n))` -/
def P4333603516999072014.Spec : Prop :=
  ∀ n, P4333603516999072014.a n = A008801 n

end A008801

/-! ## A008801.P6534516456959178516

`abs(∑[A001057(A008815(n))])`
-/

namespace A008801.P6534516456959178516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008815 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008801.P6534516456959178516

namespace A008801

/-- `abs(∑[A001057(A008815(n))])` -/
def P6534516456959178516.Spec : Prop :=
  ∀ n, P6534516456959178516.a n = A008801 n

end A008801

/-! ## A008801.P2502621513568683074

`A008795(n)-A057353(∑[A110514(n)])`
-/

namespace A008801.P2502621513568683074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - A057353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008801.P2502621513568683074

namespace A008801

/-- `A008795(n)-A057353(∑[A110514(n)])` -/
def P2502621513568683074.Spec : Prop :=
  ∀ n, P2502621513568683074.a n = A008801 n

end A008801

/-!
# A008802: Molien series for group [2,9]+ = 229.

The programs for A008802, the canonical program `A008802.P8525404290087497442` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008802 has offset 0).

The definition of A008802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008802.P8525404290087497442

`∑[A008618(n)-A001057(n)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008802

/-- `∑[A008618(n)-A001057(n)]` -/
def P8525404290087497442.Spec : Prop :=
  ∀ n, P8525404290087497442.a n = A008802 n

theorem P8525404290087497442.correct : P8525404290087497442.Spec := by
  intro n
  simp only [A008802]

end A008802

/-! ## A008802.P14908835017903464155

`A025765(n)-∑[A001057(n)]`
-/

namespace A008802.P14908835017903464155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P14908835017903464155

namespace A008802

/-- `A025765(n)-∑[A001057(n)]` -/
def P14908835017903464155.Spec : Prop :=
  ∀ n, P14908835017903464155.a n = A008802 n

end A008802

/-! ## A008802.P1154584169140569350

`A025765(n)+∑[∑[A038608(n)]]`
-/

namespace A008802.P1154584169140569350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025765 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P1154584169140569350

namespace A008802

/-- `A025765(n)+∑[∑[A038608(n)]]` -/
def P1154584169140569350.Spec : Prop :=
  ∀ n, P1154584169140569350.a n = A008802 n

end A008802

/-! ## A008802.P8806857553842723711

`∑[A008618(n)-Δ[A142150(n)]]`
-/

namespace A008802.P8806857553842723711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P8806857553842723711

namespace A008802

/-- `∑[A008618(n)-Δ[A142150(n)]]` -/
def P8806857553842723711.Spec : Prop :=
  ∀ n, P8806857553842723711.a n = A008802 n

end A008802

/-! ## A008802.P1961584734466690235

`∑[A008618(n)]-A142150(n+1)`
-/

namespace A008802.P1961584734466690235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A142150 (n + 1)

end

end A008802.P1961584734466690235

namespace A008802

/-- `∑[A008618(n)]-A142150(n+1)` -/
def P1961584734466690235.Spec : Prop :=
  ∀ n, P1961584734466690235.a n = A008802 n

end A008802

/-! ## A008802.P7127405503480451048

`∑[A033183(2*n)-A001057(n)]`
-/

namespace A008802.P7127405503480451048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (2 * n) - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P7127405503480451048

namespace A008802

/-- `∑[A033183(2*n)-A001057(n)]` -/
def P7127405503480451048.Spec : Prop :=
  ∀ n, P7127405503480451048.a n = A008802 n

end A008802

/-! ## A008802.P7605634894883503751

`∑[A008618(n)]-A130507(2*n)`
-/

namespace A008802.P7605634894883503751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A130507 (2 * n)

end

end A008802.P7605634894883503751

namespace A008802

/-- `∑[A008618(n)]-A130507(2*n)` -/
def P7605634894883503751.Spec : Prop :=
  ∀ n, P7605634894883503751.a n = A008802 n

end A008802

/-! ## A008802.P1317767648043024187

`abs(∑[A001057(A008816(n))])`
-/

namespace A008802.P1317767648043024187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A008816 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008802.P1317767648043024187

namespace A008802

/-- `abs(∑[A001057(A008816(n))])` -/
def P1317767648043024187.Spec : Prop :=
  ∀ n, P1317767648043024187.a n = A008802 n

end A008802

/-! ## A008802.P16681268469856388233

`A001057(n+1)²-A004523(A004523(∑[n+1]))`
-/

namespace A008802.P16681268469856388233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1) ^ 2 - A004523 (A004523 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A008802.P16681268469856388233

namespace A008802

/-- `A001057(n+1)²-A004523(A004523(∑[n+1]))` -/
def P16681268469856388233.Spec : Prop :=
  ∀ n, P16681268469856388233.a n = A008802 n

end A008802

/-! ## A008802.P9940801937290684886

`∑[A008618(n)-A307012(A001859(n))]`
-/

namespace A008802.P9940801937290684886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 n - A307012 (A001859 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008802.P9940801937290684886

namespace A008802

/-- `∑[A008618(n)-A307012(A001859(n))]` -/
def P9940801937290684886.Spec : Prop :=
  ∀ n, P9940801937290684886.a n = A008802 n

end A008802

/-!
# A008803: Molien series for group [2,10]+ = 2 2 10.

The programs for A008803, the canonical program `A008803.P6545994674811966108` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008803 has offset 0).

The definition of A008803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008803.P6545994674811966108

`floor((11*(2*n+3)*(-1)^n+2*n²+6*n+79)/80)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008803

/-- `floor((11*(2*n+3)*(-1)^n+2*n²+6*n+79)/80)` -/
def P6545994674811966108.Spec : Prop :=
  ∀ n, P6545994674811966108.a n = A008803 n

theorem P6545994674811966108.correct : P6545994674811966108.Spec := by
  intro n
  simp only [A008803]

end A008803

/-! ## A008803.P8842322171448203672

`A008732(A004526(n))-A000217(n)%(n+1)`
-/

namespace A008803.P8842322171448203672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A004526 n).toNat - Int.tmod (A000217 n) (n + 1 : ℤ)

end

end A008803.P8842322171448203672

namespace A008803

/-- `A008732(A004526(n))-A000217(n)%(n+1)` -/
def P8842322171448203672.Spec : Prop :=
  ∀ n, P8842322171448203672.a n = A008803 n

end A008803

/-! ## A008803.P6370617859351480545

`A008732(A004526(n))-A000566(n+1)%(n+1)`
-/

namespace A008803.P6370617859351480545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A004526 n).toNat - Int.tmod (A000566 (n + 1)) (n + 1 : ℤ)

end

end A008803.P6370617859351480545

namespace A008803

/-- `A008732(A004526(n))-A000566(n+1)%(n+1)` -/
def P6370617859351480545.Spec : Prop :=
  ∀ n, P6370617859351480545.a n = A008803 n

end A008803

/-! ## A008803.P13054803120939347398

`A008732(A004526(n))-A005475(n+1)%(n+1)`
-/

namespace A008803.P13054803120939347398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A004526 n).toNat - Int.tmod (A005475 (n + 1)) (n + 1 : ℤ)

end

end A008803.P13054803120939347398

namespace A008803

/-- `A008732(A004526(n))-A005475(n+1)%(n+1)` -/
def P13054803120939347398.Spec : Prop :=
  ∀ n, P13054803120939347398.a n = A008803 n

end A008803

/-! ## A008803.P4377552213219465778

`A008732(A004526(n))-A005476(n+1)%(n+1)`
-/

namespace A008803.P4377552213219465778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008732 (A004526 n).toNat - Int.tmod (A005476 (n + 1)) (n + 1 : ℤ)

end

end A008803.P4377552213219465778

namespace A008803

/-- `A008732(A004526(n))-A005476(n+1)%(n+1)` -/
def P4377552213219465778.Spec : Prop :=
  ∀ n, P4377552213219465778.a n = A008803 n

end A008803

/-!
# A008804: Expansion of 1/((1-x)^2*(1-x^2)*(1-x^4)).

The programs for A008804, the canonical program `A008804.P13205831485394128185` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008804 has offset 0).

The definition of A008804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))` (program `A008804.P13205831485394128185`, by `A008804.P13205831485394128185.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008804.P13205831485394128185

`ogf(1/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008804

/-- `ogf(1/(1-2x+2x^3-2x^4+2x^5-2x^7+x^8))` -/
def P13205831485394128185.Spec : Prop :=
  ∀ n, P13205831485394128185.a n = A008804 n

theorem P13205831485394128185.correct : P13205831485394128185.Spec := by
  intro n
  simp only [A008804]

end A008804

/-! ## A008804.P3148978433511863666

`floor((2*n^3+24*n²+n*(85+3*(-1)^n)+96)/96)`
-/

namespace A008804.P3148978433511863666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 3 + 24 * n ^ 2 : ℤ) + (n : ℤ) * (85 + 3 * (-1) ^ n) + 96 : ℚ) / 96⌋

end

end A008804.P3148978433511863666

namespace A008804

/-- `floor((2*n^3+24*n²+n*(85+3*(-1)^n)+96)/96)` -/
def P3148978433511863666.Spec : Prop :=
  ∀ n, P3148978433511863666.a n = A008804 n

end A008804

/-! ## A008804.P16480980241528923079

`∑[A008642(n)]`
-/

namespace A008804.P16480980241528923079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008804.P16480980241528923079

namespace A008804

/-- `∑[A008642(n)]` -/
def P16480980241528923079.Spec : Prop :=
  ∀ n, P16480980241528923079.a n = A008804 n

end A008804

/-! ## A008804.P2023080204488591473

`A001972(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A008804.P2023080204488591473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001972 n + a (n - 2)

end

end A008804.P2023080204488591473

namespace A008804

/-- `A001972(n)+a(n-2)` -/
def P2023080204488591473.Spec : Prop :=
  ∀ n, P2023080204488591473.a n = A008804 n

end A008804

/-! ## A008804.P5180488212257676719

`∑[A002265(n)+1]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A008804.P5180488212257676719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A008804.P5180488212257676719

namespace A008804

/-- `∑[A002265(n)+1]+a(n-2)` -/
def P5180488212257676719.Spec : Prop :=
  ∀ n, P5180488212257676719.a n = A008804 n

end A008804

/-! ## A008804.P5991411522473499022

`A064412(n+1)-∑[∑[lcm(2, n)+n]]`
-/

namespace A008804.P5991411522473499022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A008804.P5991411522473499022

namespace A008804

/-- `A064412(n+1)-∑[∑[lcm(2, n)+n]]` -/
def P5991411522473499022.Spec : Prop :=
  ∀ n, P5991411522473499022.a n = A008804 n

end A008804

/-! ## A008804.P869327943846153864

`A000601(n)-A026810(n+1)`
-/

namespace A008804.P869327943846153864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 n - A026810 (n + 1)

end

end A008804.P869327943846153864

namespace A008804

/-- `A000601(n)-A026810(n+1)` -/
def P869327943846153864.Spec : Prop :=
  ∀ n, P869327943846153864.a n = A008804 n

end A008804

/-! ## A008804.P1662487547364993144

`A064412(n+1)-A212967(n)`
-/

namespace A008804.P1662487547364993144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064412 (n + 1) - A212967 n

end

end A008804.P1662487547364993144

namespace A008804

/-- `A064412(n+1)-A212967(n)` -/
def P1662487547364993144.Spec : Prop :=
  ∀ n, P1662487547364993144.a n = A008804 n

theorem P1662487547364993144.correct : P1662487547364993144.Spec := by
  intro n
  simp only [A008804, Nat.add_sub_cancel, A008804.P1662487547364993144.a, A008804.P13205831485394128185.a, A064412, A064412.P10500995238747171540.a, A212967, A212967.P17330647537761317883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008804

/-! ## A008804.P6144141541316244081

`∑[A001399(n)]-A026810(n+1)`
-/

namespace A008804.P6144141541316244081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A026810 (n + 1)

end

end A008804.P6144141541316244081

namespace A008804

/-- `∑[A001399(n)]-A026810(n+1)` -/
def P6144141541316244081.Spec : Prop :=
  ∀ n, P6144141541316244081.a n = A008804 n

end A008804

/-! ## A008804.P7811222007629548432

`A005232(n)+A002620(A008619(n+1))`
-/

namespace A008804.P7811222007629548432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005232 n + A002620 (A008619 (n + 1)).toNat

end

end A008804.P7811222007629548432

namespace A008804

/-- `A005232(n)+A002620(A008619(n+1))` -/
def P7811222007629548432.Spec : Prop :=
  ∀ n, P7811222007629548432.a n = A008804 n

end A008804

/-! ## A008804.P12963021487314207994

`A165188(n+1)+A251260(n)-A254594(n)`
-/

namespace A008804.P12963021487314207994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165188 (n + 1) + (A251260 n - A254594 n)

end

end A008804.P12963021487314207994

namespace A008804

/-- `A165188(n+1)+A251260(n)-A254594(n)` -/
def P12963021487314207994.Spec : Prop :=
  ∀ n, P12963021487314207994.a n = A008804 n

end A008804

/-! ## A008804.P569887243055855111

`A251260(n)+A254707(n)-A165188(n+1)`
-/

namespace A008804.P569887243055855111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251260 n + (A254707 n - A165188 (n + 1))

end

end A008804.P569887243055855111

namespace A008804

/-- `A251260(n)+A254707(n)-A165188(n+1)` -/
def P569887243055855111.Spec : Prop :=
  ∀ n, P569887243055855111.a n = A008804 n

end A008804

/-! ## A008804.P8127311093858782278

`A000601(n+1)+A002621(n)-A002621(n+1)`
-/

namespace A008804.P8127311093858782278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) + (A002621 n - A002621 (n + 1))

end

end A008804.P8127311093858782278

namespace A008804

/-- `A000601(n+1)+A002621(n)-A002621(n+1)` -/
def P8127311093858782278.Spec : Prop :=
  ∀ n, P8127311093858782278.a n = A008804 n

end A008804

/-! ## A008804.P7144553759601243923

`A000601(n+1)-A001400(n+1)`
-/

namespace A008804.P7144553759601243923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) - A001400 (n + 1)

end

end A008804.P7144553759601243923

namespace A008804

/-- `A000601(n+1)-A001400(n+1)` -/
def P7144553759601243923.Spec : Prop :=
  ∀ n, P7144553759601243923.a n = A008804 n

end A008804

/-! ## A008804.P10280747164768110437

`A002624(n+1)-(A005232(n+1)+A002624(n))`
-/

namespace A008804.P10280747164768110437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (n + 1) - (A005232 (n + 1) + A002624 n)

end

end A008804.P10280747164768110437

namespace A008804

/-- `A002624(n+1)-(A005232(n+1)+A002624(n))` -/
def P10280747164768110437.Spec : Prop :=
  ∀ n, P10280747164768110437.a n = A008804 n

end A008804

/-! ## A008804.P177681958898964888

`A002623(n+1)-(A014125(n)+A001400(n+1))`
-/

namespace A008804.P177681958898964888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (n + 1) - (A014125 n + A001400 (n + 1))

end

end A008804.P177681958898964888

namespace A008804

/-- `A002623(n+1)-(A014125(n)+A001400(n+1))` -/
def P177681958898964888.Spec : Prop :=
  ∀ n, P177681958898964888.a n = A008804 n

end A008804

/-! ## A008804.P11807037392578240789

`A000601(n+1)-(A254594(n+1)+A254594(n))`
-/

namespace A008804.P11807037392578240789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (n + 1) - (A254594 (n + 1) + A254594 n)

end

end A008804.P11807037392578240789

namespace A008804

/-- `A000601(n+1)-(A254594(n+1)+A254594(n))` -/
def P11807037392578240789.Spec : Prop :=
  ∀ n, P11807037392578240789.a n = A008804 n

end A008804

/-! ## A008804.P5737707279147945558

`A006918(n+1)+A008805(n+1)-A005232(n+1)`
-/

namespace A008804.P5737707279147945558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) + (A008805 (n + 1) - A005232 (n + 1))

end

end A008804.P5737707279147945558

namespace A008804

/-- `A006918(n+1)+A008805(n+1)-A005232(n+1)` -/
def P5737707279147945558.Spec : Prop :=
  ∀ n, P5737707279147945558.a n = A008804 n

end A008804

/-! ## A008804.P15489432294833251345

`A122046(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A008804.P15489432294833251345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122046 (n + 3) - a (n - 1)

end

end A008804.P15489432294833251345

namespace A008804

/-- `A122046(n+3)-a(n-1)` -/
def P15489432294833251345.Spec : Prop :=
  ∀ n, P15489432294833251345.a n = A008804 n

end A008804

/-! ## A008804.P18368960338948969501

`A266769(n)+A026810(n+3)`
-/

namespace A008804.P18368960338948969501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n + A026810 (n + 3)

end

end A008804.P18368960338948969501

namespace A008804

/-- `A266769(n)+A026810(n+3)` -/
def P18368960338948969501.Spec : Prop :=
  ∀ n, P18368960338948969501.a n = A008804 n

end A008804

/-!
# A008805: Triangular numbers repeated.

The programs for A008805, the canonical program `A008805.P1560584299711762519` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008805 has offset 0).

The definition of A008805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008805.P4581791793024908798

`C(floor(n/2)+2, 2)`
-/

namespace A008805.P4581791793024908798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (⌊(n : ℚ) / 2⌋ + 2).toNat 2

end

end A008805.P4581791793024908798

namespace A008805

/-- `C(floor(n/2)+2, 2)` -/
def P4581791793024908798.Spec : Prop :=
  ∀ n, (P4581791793024908798.a n : ℤ) = A008805 n

end A008805

/-! ## A008805.P4131372105791210158

`1/2*floor((n+2)/2)*(floor((n+2)/2)+1)`
-/

namespace A008805.P4131372105791210158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (⌊(n + 2 : ℚ) / 2⌋ : ℚ) * (⌊(n + 2 : ℚ) / 2⌋ + 1 : ℚ)

end

end A008805.P4131372105791210158

namespace A008805

/-- `1/2*floor((n+2)/2)*(floor((n+2)/2)+1)` -/
def P4131372105791210158.Spec : Prop :=
  ∀ n, P4131372105791210158.a n = (A008805 n : ℚ)

end A008805

/-! ## A008805.P1560584299711762519

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3, a(4)=6`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008805

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P1560584299711762519.Spec : Prop :=
  ∀ n, P1560584299711762519.a n = A008805 n

theorem P1560584299711762519.correct : P1560584299711762519.Spec := by
  intro n
  simp only [A008805]

end A008805

/-! ## A008805.P18281794068990213505

`A000217(A008619(n))`
-/

namespace A008805.P18281794068990213505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A008619 n).toNat

end

end A008805.P18281794068990213505

namespace A008805

/-- `A000217(A008619(n))` -/
def P18281794068990213505.Spec : Prop :=
  ∀ n, P18281794068990213505.a n = A008805 n

end A008805

/-! ## A008805.P17413081376452557199

`A002620(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A008805.P17413081376452557199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002620 (n + 2) - a (n - 1)

end

end A008805.P17413081376452557199

namespace A008805

/-- `A002620(n+2)-a(n-1)` -/
def P17413081376452557199.Spec : Prop :=
  ∀ n, P17413081376452557199.a n = A008805 n

end A008805

/-! ## A008805.P6710773926938323374

`A142150(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A008805.P6710773926938323374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A142150 (n + 2) + a (n - 1)

end

end A008805.P6710773926938323374

namespace A008805

/-- `A142150(n+2)+a(n-1)` -/
def P6710773926938323374.Spec : Prop :=
  ∀ n, P6710773926938323374.a n = A008805 n

end A008805

/-! ## A008805.P12535572778123568471

`A004125(n+3)-A049798(n+2)`
-/

namespace A008805.P12535572778123568471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 3) - A049798 (n + 2)

end

end A008805.P12535572778123568471

namespace A008805

/-- `A004125(n+3)-A049798(n+2)` -/
def P12535572778123568471.Spec : Prop :=
  ∀ n, P12535572778123568471.a n = A008805 n

end A008805

/-! ## A008805.P15241653333487686429

`A000217(n+3)/2-A135276(n+3)/2`
-/

namespace A008805.P15241653333487686429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 3) : ℚ) / 2 - (A135276 (n + 3) : ℚ) / 2

end

end A008805.P15241653333487686429

namespace A008805

/-- `A000217(n+3)/2-A135276(n+3)/2` -/
def P15241653333487686429.Spec : Prop :=
  ∀ n, P15241653333487686429.a n = (A008805 n : ℚ)

end A008805

/-! ## A008805.P616393777394408444

`floor(or(1, n+2)²/8)`
-/

namespace A008805.P616393777394408444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8⌋

end

end A008805.P616393777394408444

namespace A008805

/-- `floor(or(1, n+2)²/8)` -/
def P616393777394408444.Spec : Prop :=
  ∀ n, P616393777394408444.a n = A008805 n

end A008805

/-! ## A008805.P14372354878552132943

`round(or(1, n+2)²/8)`
-/

namespace A008805.P14372354878552132943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8)

end

end A008805.P14372354878552132943

namespace A008805

/-- `round(or(1, n+2)²/8)` -/
def P14372354878552132943.Spec : Prop :=
  ∀ n, P14372354878552132943.a n = A008805 n

end A008805

/-! ## A008805.P1037169213808847146

`∑[∑[n+1]%(n+2)]`
-/

namespace A008805.P1037169213808847146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008805.P1037169213808847146

namespace A008805

/-- `∑[∑[n+1]%(n+2)]` -/
def P1037169213808847146.Spec : Prop :=
  ∀ n, (P1037169213808847146.a n : ℤ) = A008805 n

end A008805

/-! ## A008805.P6728508838591260992

`∑[or(1, n)-gcd(n, ∑[n])]`
-/

namespace A008805.P6728508838591260992
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008805.P6728508838591260992

namespace A008805

/-- `∑[or(1, n)-gcd(n, ∑[n])]` -/
def P6728508838591260992.Spec : Prop :=
  ∀ n, P6728508838591260992.a n = A008805 n

end A008805

/-! ## A008805.P16609718415901727244

`∑[∑[∑[ogf(1/(1+2x+x^2))]]]`
-/

namespace A008805.P16609718415901727244
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008805.P16609718415901727244

namespace A008805

/-- `∑[∑[∑[ogf(1/(1+2x+x^2))]]]` -/
def P16609718415901727244.Spec : Prop :=
  ∀ n, P16609718415901727244.a n = A008805 n

end A008805

/-! ## A008805.P11596441222617184019

`ogf(1/(1-x-2x^2+2x^3+x^4-x^5))`
-/

namespace A008805.P11596441222617184019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, -2, 2, 1, -1] n

end

end A008805.P11596441222617184019

namespace A008805

/-- `ogf(1/(1-x-2x^2+2x^3+x^4-x^5))` -/
def P11596441222617184019.Spec : Prop :=
  ∀ n, P11596441222617184019.a n = A008805 n

end A008805

/-! ## A008805.P4862235484904673396

`∑[floor((lcm(2, n+1)-n)/2)]`
-/

namespace A008805.P4862235484904673396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lcm 2 (n + 1) : ℤ) - (n : ℤ) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008805.P4862235484904673396

namespace A008805

/-- `∑[floor((lcm(2, n+1)-n)/2)]` -/
def P4862235484904673396.Spec : Prop :=
  ∀ n, P4862235484904673396.a n = A008805 n

end A008805

/-! ## A008805.P945142797759534038

`∑[(n+2)*and(1, n+1)/2]`
-/

namespace A008805.P945142797759534038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * ((Nat.land 1 (n + 1) : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008805.P945142797759534038

namespace A008805

/-- `∑[(n+2)*and(1, n+1)/2]` -/
def P945142797759534038.Spec : Prop :=
  ∀ n, P945142797759534038.a n = (A008805 n : ℚ)

end A008805

/-! ## A008805.P4907141962624194241

`∑[lcm(n+2, and(1, n+1))/2]`
-/

namespace A008805.P4907141962624194241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (Nat.land 1 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008805.P4907141962624194241

namespace A008805

/-- `∑[lcm(n+2, and(1, n+1))/2]` -/
def P4907141962624194241.Spec : Prop :=
  ∀ n, P4907141962624194241.a n = (A008805 n : ℚ)

end A008805

/-! ## A008805.P10471026266646364354

`∑[∑[(-1)^n]]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A008805.P10471026266646364354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A008805.P10471026266646364354

namespace A008805

/-- `∑[∑[(-1)^n]]+a(n-2)` -/
def P10471026266646364354.Spec : Prop :=
  ∀ n, P10471026266646364354.a n = A008805 n

end A008805

/-! ## A008805.P14813743262253738547

`floor(a(n-2)+n/2+1)` with `a(0)=1, a(1)=1`
-/

namespace A008805.P14813743262253738547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((n : ℚ) / 2 + 1)⌋

end

end A008805.P14813743262253738547

namespace A008805

/-- `floor(a(n-2)+n/2+1)` -/
def P14813743262253738547.Spec : Prop :=
  ∀ n, P14813743262253738547.a n = A008805 n

end A008805

/-! ## A008805.P18073328326943423898

`ceil(a(n-2)+(n+1)/2)` with `a(0)=1, a(1)=1`
-/

namespace A008805.P18073328326943423898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 2⌉

end

end A008805.P18073328326943423898

namespace A008805

/-- `ceil(a(n-2)+(n+1)/2)` -/
def P18073328326943423898.Spec : Prop :=
  ∀ n, P18073328326943423898.a n = A008805 n

end A008805

/-!
# A008806: Expansion of (1+x^3)/((1-x^2)^2*(1-x^3)).

The programs for A008806, the canonical program `A008806.P17122215986502449600` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008806 has offset 0).

The definition of A008806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^3)/(1-2x^2-x^3+x^4+2x^5-x^7))` (program `A008806.P17122215986502449600`, by `A008806.P17122215986502449600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008806.P17122215986502449600

`ogf((1+x^3)/(1-2x^2-x^3+x^4+2x^5-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008806

/-- `ogf((1+x^3)/(1-2x^2-x^3+x^4+2x^5-x^7))` -/
def P17122215986502449600.Spec : Prop :=
  ∀ n, P17122215986502449600.a n = A008806 n

theorem P17122215986502449600.correct : P17122215986502449600.Spec := by
  intro n
  simp only [A008806]

end A008806

/-! ## A008806.P4488582981190242321

`floor((6*n²+24*n+61+27*(-1)^n)/72)`
-/

namespace A008806.P4488582981190242321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((6 * n ^ 2 + 24 * n + 61 : ℤ) + 27 * (-1) ^ n : ℚ) / 72⌋

end

end A008806.P4488582981190242321

namespace A008806

/-- `floor((6*n²+24*n+61+27*(-1)^n)/72)` -/
def P4488582981190242321.Spec : Prop :=
  ∀ n, P4488582981190242321.a n = A008806 n

end A008806

/-! ## A008806.P230925367175735197

`a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2, a(4)=3, a(5)=4`
-/

namespace A008806.P230925367175735197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2, 2, 3, 4] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 4) - a (n - 5) + a (n - 6)

end

end A008806.P230925367175735197

namespace A008806

/-- `a(n-1)+a(n-2)-a(n-4)-a(n-5)+a(n-6)` -/
def P230925367175735197.Spec : Prop :=
  ∀ n, P230925367175735197.a n = A008806 n

end A008806

/-! ## A008806.P14310856792027670591

`(16*A131713(n)+29+24*n+6*n²+27*(-1)^n)/72`
-/

namespace A008806.P14310856792027670591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * A131713 n + 29 + (24 * n : ℤ) + (6 * n ^ 2 : ℤ) + 27 * (-1) ^ n : ℚ) / 72

end

end A008806.P14310856792027670591

namespace A008806

/-- `(16*A131713(n)+29+24*n+6*n²+27*(-1)^n)/72` -/
def P14310856792027670591.Spec : Prop :=
  ∀ n, P14310856792027670591.a n = (A008806 n : ℚ)

end A008806

/-! ## A008806.P1589937894235518205

`ceil(∑[(n+1)/3]-a(n-1))` with `a(0)=1`
-/

namespace A008806.P1589937894235518205
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) : ℚ)⌉

end

end A008806.P1589937894235518205

namespace A008806

/-- `ceil(∑[(n+1)/3]-a(n-1))` -/
def P1589937894235518205.Spec : Prop :=
  ∀ n, P1589937894235518205.a n = A008806 n

end A008806

/-! ## A008806.P11315124501053155810

`round(∑[n+1]/3)+char[3*n]-a(n-1)` with `a(0)=1`
-/

namespace A008806.P11315124501053155810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3) + (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 1))

end

end A008806.P11315124501053155810

namespace A008806

/-- `round(∑[n+1]/3)+char[3*n]-a(n-1)` -/
def P11315124501053155810.Spec : Prop :=
  ∀ n, P11315124501053155810.a n = A008806 n

end A008806

/-! ## A008806.P4477250678202344418

`∑[n-a(n-1)-a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A008806.P4477250678202344418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  (n : ℤ) - f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A008806.P4477250678202344418

namespace A008806

/-- `∑[n-a(n-1)-a(n-2)]-a(n-1)` -/
def P4477250678202344418.Spec : Prop :=
  ∀ n, P4477250678202344418.a n = A008806 n

end A008806

/-! ## A008806.P2459788084727444826

`∑[A008611(n)-a(n-1)]` with `a(0)=1`
-/

namespace A008806.P2459788084727444826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A008611 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008806.P2459788084727444826

namespace A008806

/-- `∑[A008611(n)-a(n-1)]` -/
def P2459788084727444826.Spec : Prop :=
  ∀ n, P2459788084727444826.a n = A008806 n

end A008806

/-! ## A008806.P16633913048027928388

`A058212(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A008806.P16633913048027928388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058212 n - a (n - 1) + (n : ℤ)

end

end A008806.P16633913048027928388

namespace A008806

/-- `A058212(n)-a(n-1)+n` -/
def P16633913048027928388.Spec : Prop :=
  ∀ n, P16633913048027928388.a n = A008806 n

end A008806

/-! ## A008806.P13918644669509030089

`∑[n+1-a(n-1)-A302402(n)]` with `a(0)=1`
-/

namespace A008806.P13918644669509030089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℤ) - f1 (n - 1) - A302402 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008806.P13918644669509030089

namespace A008806

/-- `∑[n+1-a(n-1)-A302402(n)]` -/
def P13918644669509030089.Spec : Prop :=
  ∀ n, P13918644669509030089.a n = A008806 n

end A008806

/-! ## A008806.P11384729957137662519

`A069905(n)+A051275(n)`
-/

namespace A008806.P11384729957137662519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n + A051275 n

end

end A008806.P11384729957137662519

namespace A008806

/-- `A069905(n)+A051275(n)` -/
def P11384729957137662519.Spec : Prop :=
  ∀ n, P11384729957137662519.a n = A008806 n

end A008806

/-! ## A008806.P5870779054841096471

`A117573(n)-A001840(n)`
-/

namespace A008806.P5870779054841096471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 n - A001840 n

end

end A008806.P5870779054841096471

namespace A008806

/-- `A117573(n)-A001840(n)` -/
def P5870779054841096471.Spec : Prop :=
  ∀ n, P5870779054841096471.a n = A008806 n

end A008806

/-! ## A008806.P18182920021676607886

`A208994(n)-A004652(n)`
-/

namespace A008806.P18182920021676607886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208994 n - A004652 n

end

end A008806.P18182920021676607886

namespace A008806

/-- `A208994(n)-A004652(n)` -/
def P18182920021676607886.Spec : Prop :=
  ∀ n, P18182920021676607886.a n = A008806 n

end A008806

/-! ## A008806.P2246907831911247088

`A128012(n)-A236337(n)`
-/

namespace A008806.P2246907831911247088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128012 n - A236337 n

end

end A008806.P2246907831911247088

namespace A008806

/-- `A128012(n)-A236337(n)` -/
def P2246907831911247088.Spec : Prop :=
  ∀ n, P2246907831911247088.a n = A008806 n

end A008806

/-! ## A008806.P11206877565278981853

`A103221(n)+∑[A008615(n)]`
-/

namespace A008806.P11206877565278981853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008806.P11206877565278981853

namespace A008806

/-- `A103221(n)+∑[A008615(n)]` -/
def P11206877565278981853.Spec : Prop :=
  ∀ n, P11206877565278981853.a n = A008806 n

end A008806

/-! ## A008806.P17078577913730245914

`A103221(n)+A069905(n+1)`
-/

namespace A008806.P17078577913730245914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 n + A069905 (n + 1)

end

end A008806.P17078577913730245914

namespace A008806

/-- `A103221(n)+A069905(n+1)` -/
def P17078577913730245914.Spec : Prop :=
  ∀ n, P17078577913730245914.a n = A008806 n

end A008806

/-! ## A008806.P4026354359397792825

`A001399(n)-A008615(n+1)`
-/

namespace A008806.P4026354359397792825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n - A008615 (n + 1)

end

end A008806.P4026354359397792825

namespace A008806

/-- `A001399(n)-A008615(n+1)` -/
def P4026354359397792825.Spec : Prop :=
  ∀ n, P4026354359397792825.a n = A008806 n

end A008806

/-! ## A008806.P3730543931822757891

`A008748(n)+A060022(n)-1`
-/

namespace A008806.P3730543931822757891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008748 n + (A060022 n - 1)

end

end A008806.P3730543931822757891

namespace A008806

/-- `A008748(n)+A060022(n)-1` -/
def P3730543931822757891.Spec : Prop :=
  ∀ n, P3730543931822757891.a n = A008806 n

end A008806

/-! ## A008806.P14887612351801799570

`A156040(n)-∑[A008615(n+1)]`
-/

namespace A008806.P14887612351801799570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156040 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008806.P14887612351801799570

namespace A008806

/-- `A156040(n)-∑[A008615(n+1)]` -/
def P14887612351801799570.Spec : Prop :=
  ∀ n, P14887612351801799570.a n = A008806 n

end A008806

/-! ## A008806.P2428749072083692538

`A387996(n+3)-A211004(n+1)`
-/

namespace A008806.P2428749072083692538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387996 (n + 3) - A211004 (n + 1)

end

end A008806.P2428749072083692538

namespace A008806

/-- `A387996(n+3)-A211004(n+1)` -/
def P2428749072083692538.Spec : Prop :=
  ∀ n, P2428749072083692538.a n = A008806 n

end A008806

/-!
# A008807: Expansion of (1+x^5)/((1-x^2)^2*(1-x^5)).

The programs for A008807, the canonical program `A008807.P11270776434830338931` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008807 has offset 0).

The definition of A008807 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-2x^2+x^4-x^5+2x^7-x^9))` (program `A008807.P11270776434830338931`, by `A008807.P11270776434830338931.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008807.P11270776434830338931

`ogf((1+x^5)/(1-2x^2+x^4-x^5+2x^7-x^9))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008807

/-- `ogf((1+x^5)/(1-2x^2+x^4-x^5+2x^7-x^9))` -/
def P11270776434830338931.Spec : Prop :=
  ∀ n, P11270776434830338931.a n = A008807 n

theorem P11270776434830338931.correct : P11270776434830338931.Spec := by
  intro n
  simp only [A008807]

end A008807

/-! ## A008807.P17314107794303864478

`ceil(∑[(n+1)/5])-a(n-1)` with `a(0)=1`
-/

namespace A008807.P17314107794303864478
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - a (n - 1)

end

end A008807.P17314107794303864478

namespace A008807

/-- `ceil(∑[(n+1)/5])-a(n-1)` -/
def P17314107794303864478.Spec : Prop :=
  ∀ n, P17314107794303864478.a n = A008807 n

end A008807

/-! ## A008807.P12614858176471427968

`floor((∑[n+1]+4)/5-a(n-1))` with `a(0)=1`
-/

namespace A008807.P12614858176471427968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℚ) / 5 - (a (n - 1) : ℚ)⌋

end

end A008807.P12614858176471427968

namespace A008807

/-- `floor((∑[n+1]+4)/5-a(n-1))` -/
def P12614858176471427968.Spec : Prop :=
  ∀ n, P12614858176471427968.a n = A008807 n

end A008807

/-! ## A008807.P1344852381655085846

`abs(∑[∑[A008812(n)/(-1)^n]])`
-/

namespace A008807.P1344852381655085846
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008812 n : ℚ) / ((-1) ^ n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A008807.P1344852381655085846

namespace A008807

/-- `abs(∑[∑[A008812(n)/(-1)^n]])` -/
def P1344852381655085846.Spec : Prop :=
  ∀ n, P1344852381655085846.a n = (A008807 n : ℚ)

end A008807

/-! ## A008807.P18389698866467350670

`∑[A194509(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A008807.P18389698866467350670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A194509 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008807.P18389698866467350670

namespace A008807

/-- `∑[A194509(n+1)-a(n-1)]` -/
def P18389698866467350670.Spec : Prop :=
  ∀ n, P18389698866467350670.a n = A008807 n

end A008807

/-! ## A008807.P3205064103203431899

`A186386(n+1)-(a(n-1)+n)` with `a(0)=1`
-/

namespace A008807.P3205064103203431899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A186386 (n + 1) - (a (n - 1) + (n : ℤ))

end

end A008807.P3205064103203431899

namespace A008807

/-- `A186386(n+1)-(a(n-1)+n)` -/
def P3205064103203431899.Spec : Prop :=
  ∀ n, P3205064103203431899.a n = A008807 n

end A008807

/-! ## A008807.P16346830448144693331

`2*A008720(n)-A027656(n)`
-/

namespace A008807.P16346830448144693331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008720 n - A027656 n

end

end A008807.P16346830448144693331

namespace A008807

/-- `2*A008720(n)-A027656(n)` -/
def P16346830448144693331.Spec : Prop :=
  ∀ n, P16346830448144693331.a n = A008807 n

end A008807

/-! ## A008807.P12451329943851449767

`A027656(n)+A005843(A008720(n)-A027656(n))`
-/

namespace A008807.P12451329943851449767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A005843 (A008720 n - A027656 n).toNat

end

end A008807.P12451329943851449767

namespace A008807

/-- `A027656(n)+A005843(A008720(n)-A027656(n))` -/
def P12451329943851449767.Spec : Prop :=
  ∀ n, P12451329943851449767.a n = A008807 n

end A008807

/-! ## A008807.P9622915237322932601

`A005843(A008720(n))-A027656(n)`
-/

namespace A008807.P9622915237322932601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008720 n).toNat - A027656 n

end

end A008807.P9622915237322932601

namespace A008807

/-- `A005843(A008720(n))-A027656(n)` -/
def P9622915237322932601.Spec : Prop :=
  ∀ n, P9622915237322932601.a n = A008807 n

end A008807

/-! ## A008807.P9351317010764464700

`A002266(A000096(n))+1-a(n-1)` with `a(0)=1`
-/

namespace A008807.P9351317010764464700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002266 (A000096 n).toNat + (1 - a (n - 1))

end

end A008807.P9351317010764464700

namespace A008807

/-- `A002266(A000096(n))+1-a(n-1)` -/
def P9351317010764464700.Spec : Prop :=
  ∀ n, P9351317010764464700.a n = A008807 n

end A008807

/-! ## A008807.P4339662730635107219

`A024000(a(n-1))+A002266(A000096(n))` with `a(0)=1`
-/

namespace A008807.P4339662730635107219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024000 (a (n - 1)).toNat + A002266 (A000096 n).toNat

end

end A008807.P4339662730635107219

namespace A008807

/-- `A024000(a(n-1))+A002266(A000096(n))` -/
def P4339662730635107219.Spec : Prop :=
  ∀ n, P4339662730635107219.a n = A008807 n

end A008807

/-!
# A008808: Expansion of (1+x^7)/((1-x^2)^2*(1-x^7)).

The programs for A008808, the canonical program `A008808.P5934461052425247451` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008808 has offset 0).

The definition of A008808 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^7)/(1-2x^2+x^4-x^7+2x^9-x^11))` (program `A008808.P5934461052425247451`, by `A008808.P5934461052425247451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008808.P5934461052425247451

`ogf((1+x^7)/(1-2x^2+x^4-x^7+2x^9-x^11))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008808

/-- `ogf((1+x^7)/(1-2x^2+x^4-x^7+2x^9-x^11))` -/
def P5934461052425247451.Spec : Prop :=
  ∀ n, P5934461052425247451.a n = A008808 n

theorem P5934461052425247451.correct : P5934461052425247451.Spec := by
  intro n
  simp only [A008808]

end A008808

/-! ## A008808.P5493521267305173851

`2*A008721(n)-A027656(n)`
-/

namespace A008808.P5493521267305173851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008721 n - A027656 n

end

end A008808.P5493521267305173851

namespace A008808

/-- `2*A008721(n)-A027656(n)` -/
def P5493521267305173851.Spec : Prop :=
  ∀ n, P5493521267305173851.a n = A008808 n

end A008808

/-! ## A008808.P6277542467663139763

`2*A008721(n)+A027656(n)*A309873(A016825(n))`
-/

namespace A008808.P6277542467663139763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008721 n + A027656 n * A309873 (A016825 n).toNat

end

end A008808.P6277542467663139763

namespace A008808

/-- `2*A008721(n)+A027656(n)*A309873(A016825(n))` -/
def P6277542467663139763.Spec : Prop :=
  ∀ n, P6277542467663139763.a n = A008808 n

end A008808

/-! ## A008808.P12504934508960341746

`A027656(n)+A005843(A008721(n)-A027656(n))`
-/

namespace A008808.P12504934508960341746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A005843 (A008721 n - A027656 n).toNat

end

end A008808.P12504934508960341746

namespace A008808

/-- `A027656(n)+A005843(A008721(n)-A027656(n))` -/
def P12504934508960341746.Spec : Prop :=
  ∀ n, P12504934508960341746.a n = A008808 n

end A008808

/-! ## A008808.P5241830612159983547

`A005843(A008721(n))-A027656(n)`
-/

namespace A008808.P5241830612159983547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008721 n).toNat - A027656 n

end

end A008808.P5241830612159983547

namespace A008808

/-- `A005843(A008721(n))-A027656(n)` -/
def P5241830612159983547.Spec : Prop :=
  ∀ n, P5241830612159983547.a n = A008808 n

end A008808

/-!
# A008809: Expansion of (1+x^9)/((1-x^2)^2*(1-x^9)).

The programs for A008809, the canonical program `A008809.P1707383882300904773` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008809 has offset 0).

The definition of A008809 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^9)/(1-2x^2+x^4-x^9+2x^11-x^13))` (program `A008809.P1707383882300904773`, by `A008809.P1707383882300904773.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008809.P1707383882300904773

`ogf((1+x^9)/(1-2x^2+x^4-x^9+2x^11-x^13))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008809

/-- `ogf((1+x^9)/(1-2x^2+x^4-x^9+2x^11-x^13))` -/
def P1707383882300904773.Spec : Prop :=
  ∀ n, P1707383882300904773.a n = A008809 n

theorem P1707383882300904773.correct : P1707383882300904773.Spec := by
  intro n
  simp only [A008809]

end A008809

/-! ## A008809.P9583628994896887438

`2*A008722(n)-A027656(n)`
-/

namespace A008809.P9583628994896887438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008722 n - A027656 n

end

end A008809.P9583628994896887438

namespace A008809

/-- `2*A008722(n)-A027656(n)` -/
def P9583628994896887438.Spec : Prop :=
  ∀ n, P9583628994896887438.a n = A008809 n

end A008809

/-! ## A008809.P9868524168608356539

`∑[A194513(n+5)-a(n-1)]` with `a(0)=1`
-/

namespace A008809.P9868524168608356539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A194513 (n + 5) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008809.P9868524168608356539

namespace A008809

/-- `∑[A194513(n+5)-a(n-1)]` -/
def P9868524168608356539.Spec : Prop :=
  ∀ n, P9868524168608356539.a n = A008809 n

end A008809

/-! ## A008809.P14781311387436059984

`A027656(n)+A005843(A008722(n)-A027656(n))`
-/

namespace A008809.P14781311387436059984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A005843 (A008722 n - A027656 n).toNat

end

end A008809.P14781311387436059984

namespace A008809

/-- `A027656(n)+A005843(A008722(n)-A027656(n))` -/
def P14781311387436059984.Spec : Prop :=
  ∀ n, P14781311387436059984.a n = A008809 n

end A008809

/-! ## A008809.P10804584508185502434

`A005843(A008722(n))-A027656(n)`
-/

namespace A008809.P10804584508185502434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008722 n).toNat - A027656 n

end

end A008809.P10804584508185502434

namespace A008809

/-- `A005843(A008722(n))-A027656(n)` -/
def P10804584508185502434.Spec : Prop :=
  ∀ n, P10804584508185502434.a n = A008809 n

end A008809

/-! ## A008809.P14485853994983082395

`A008611(∑[A008611(n)]+1)-a(n-1)` with `a(0)=1`
-/

namespace A008809.P14485853994983082395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - a (n - 1)

end

end A008809.P14485853994983082395

namespace A008809

/-- `A008611(∑[A008611(n)]+1)-a(n-1)` -/
def P14485853994983082395.Spec : Prop :=
  ∀ n, P14485853994983082395.a n = A008809 n

end A008809

/-!
# A008810: a(n) = ceiling(n^2/3).

The programs for A008810, the canonical program `A008810.P16680249432660166697` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008810 has offset 0).

The definition of A008810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n²/3)` (program `A008810.P16680249432660166697`, by `A008810.P16680249432660166697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008810.P16680249432660166697

`ceil(n²/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008810

/-- `ceil(n²/3)` -/
def P16680249432660166697.Spec : Prop :=
  ∀ n, P16680249432660166697.a n = A008810 n

theorem P16680249432660166697.correct : P16680249432660166697.Spec := by
  intro n
  simp only [A008810]

end A008810

/-! ## A008810.P12228436066984010811

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A008810.P12228436066984010811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3, 6] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A008810.P12228436066984010811

namespace A008810

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P12228436066984010811.Spec : Prop :=
  ∀ n, P12228436066984010811.a n = A008810 n

end A008810

/-! ## A008810.P17774876483202604931

`n²-2*A000212(n)`
-/

namespace A008810.P17774876483202604931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 2 * A000212 n

end

end A008810.P17774876483202604931

namespace A008810

/-- `n²-2*A000212(n)` -/
def P17774876483202604931.Spec : Prop :=
  ∀ n, P17774876483202604931.a n = A008810 n

end A008810

/-! ## A008810.P11337338574024953672

`floor(or(2, n²)/3)`
-/

namespace A008810.P11337338574024953672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (n ^ 2) : ℚ) / 3⌋

end

end A008810.P11337338574024953672

namespace A008810

/-- `floor(or(2, n²)/3)` -/
def P11337338574024953672.Spec : Prop :=
  ∀ n, P11337338574024953672.a n = A008810 n

end A008810

/-! ## A008810.P494992457117929220

`floor(xor(2, n²)/3)`
-/

namespace A008810.P494992457117929220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (n ^ 2) : ℚ) / 3⌋

end

end A008810.P494992457117929220

namespace A008810

/-- `floor(xor(2, n²)/3)` -/
def P494992457117929220.Spec : Prop :=
  ∀ n, P494992457117929220.a n = A008810 n

end A008810

/-! ## A008810.P8832056614031426963

`floor(sin(1)+n²/3)`
-/

namespace A008810.P8832056614031426963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (1 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ)⌋

end

end A008810.P8832056614031426963

namespace A008810

/-- `floor(sin(1)+n²/3)` -/
def P8832056614031426963.Spec : Prop :=
  ∀ n, P8832056614031426963.a n = A008810 n

end A008810

/-! ## A008810.P14910086487242578446

`round((cos(1)+n²)/3)`
-/

namespace A008810.P14910086487242578446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cos (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P14910086487242578446

namespace A008810

/-- `round((cos(1)+n²)/3)` -/
def P14910086487242578446.Spec : Prop :=
  ∀ n, P14910086487242578446.a n = A008810 n

end A008810

/-! ## A008810.P12425365570602250278

`round((sin(1)+n²)/3)`
-/

namespace A008810.P12425365570602250278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P12425365570602250278

namespace A008810

/-- `round((sin(1)+n²)/3)` -/
def P12425365570602250278.Spec : Prop :=
  ∀ n, P12425365570602250278.a n = A008810 n

end A008810

/-! ## A008810.P12508203307464100204

`floor(n²/3-cos(3))`
-/

namespace A008810.P12508203307464100204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℚ) / 3 : ℝ) - Real.cos (3 : ℝ)⌋

end

end A008810.P12508203307464100204

namespace A008810

/-- `floor(n²/3-cos(3))` -/
def P12508203307464100204.Spec : Prop :=
  ∀ n, P12508203307464100204.a n = A008810 n

end A008810

/-! ## A008810.P1754297883619289870

`floor((n²-tan(2))/3)`
-/

namespace A008810.P1754297883619289870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n ^ 2 : ℝ) - Real.tan (2 : ℝ)) / 3⌋

end

end A008810.P1754297883619289870

namespace A008810

/-- `floor((n²-tan(2))/3)` -/
def P1754297883619289870.Spec : Prop :=
  ∀ n, P1754297883619289870.a n = A008810 n

end A008810

/-! ## A008810.P16066925530601949817

`round(n²/3-cos(2))`
-/

namespace A008810.P16066925530601949817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n ^ 2 : ℚ) / 3 : ℝ) - Real.cos (2 : ℝ))

end

end A008810.P16066925530601949817

namespace A008810

/-- `round(n²/3-cos(2))` -/
def P16066925530601949817.Spec : Prop :=
  ∀ n, P16066925530601949817.a n = A008810 n

end A008810

/-! ## A008810.P16531183249638979727

`floor(atan(1)+n²/3)`
-/

namespace A008810.P16531183249638979727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (1 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ)⌋

end

end A008810.P16531183249638979727

namespace A008810

/-- `floor(atan(1)+n²/3)` -/
def P16531183249638979727.Spec : Prop :=
  ∀ n, P16531183249638979727.a n = A008810 n

end A008810

/-! ## A008810.P9730972250395724846

`round((atan(1)+n²)/3)`
-/

namespace A008810.P9730972250395724846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arctan (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P9730972250395724846

namespace A008810

/-- `round((atan(1)+n²)/3)` -/
def P9730972250395724846.Spec : Prop :=
  ∀ n, P9730972250395724846.a n = A008810 n

end A008810

/-! ## A008810.P7829082421739547417

`floor(tanh(1)+n²/3)`
-/

namespace A008810.P7829082421739547417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (1 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ)⌋

end

end A008810.P7829082421739547417

namespace A008810

/-- `floor(tanh(1)+n²/3)` -/
def P7829082421739547417.Spec : Prop :=
  ∀ n, P7829082421739547417.a n = A008810 n

end A008810

/-! ## A008810.P4807832900355624046

`round((sinh(1)+n²)/3)`
-/

namespace A008810.P4807832900355624046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sinh (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P4807832900355624046

namespace A008810

/-- `round((sinh(1)+n²)/3)` -/
def P4807832900355624046.Spec : Prop :=
  ∀ n, P4807832900355624046.a n = A008810 n

end A008810

/-! ## A008810.P5915720324932886571

`round((tanh(1)+n²)/3)`
-/

namespace A008810.P5915720324932886571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.tanh (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P5915720324932886571

namespace A008810

/-- `round((tanh(1)+n²)/3)` -/
def P5915720324932886571.Spec : Prop :=
  ∀ n, P5915720324932886571.a n = A008810 n

end A008810

/-! ## A008810.P16963050966190293725

`floor(acot(1)+n²/3)`
-/

namespace A008810.P16963050966190293725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (1 : ℝ) + ((n ^ 2 : ℚ) / 3 : ℝ)⌋

end

end A008810.P16963050966190293725

namespace A008810

/-- `floor(acot(1)+n²/3)` -/
def P16963050966190293725.Spec : Prop :=
  ∀ n, P16963050966190293725.a n = A008810 n

end A008810

/-! ## A008810.P10202345754611460953

`round((cot(1)+n²)/3)`
-/

namespace A008810.P10202345754611460953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.cot (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P10202345754611460953

namespace A008810

/-- `round((cot(1)+n²)/3)` -/
def P10202345754611460953.Spec : Prop :=
  ∀ n, P10202345754611460953.a n = A008810 n

end A008810

/-! ## A008810.P12533414991741041619

`floor(cot(3/(n²+3)))`
-/

namespace A008810.P12533414991741041619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (3 / (n ^ 2 + 3 : ℚ) : ℝ)⌋

end

end A008810.P12533414991741041619

namespace A008810

/-- `floor(cot(3/(n²+3)))` -/
def P12533414991741041619.Spec : Prop :=
  ∀ n, P12533414991741041619.a n = A008810 n

end A008810

/-! ## A008810.P8399546960378503967

`round((acot(1)+n²)/3)`
-/

namespace A008810.P8399546960378503967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (1 : ℝ) + (n ^ 2 : ℝ)) / 3)

end

end A008810.P8399546960378503967

namespace A008810

/-- `round((acot(1)+n²)/3)` -/
def P8399546960378503967.Spec : Prop :=
  ∀ n, P8399546960378503967.a n = A008810 n

end A008810

/-!
# A008811: Expansion of x*(1+x^4)/((1-x)^2*(1-x^4)).

The programs for A008811, the canonical program `A008811.P13227867956857118763` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008811 has offset 0).

The definition of A008811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+x^5)/(1-2x+x^2-x^4+2x^5-x^6))` (program `A008811.P13227867956857118763`, by `A008811.P13227867956857118763.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008811.P13227867956857118763

`ogf((x+x^5)/(1-2x+x^2-x^4+2x^5-x^6))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008811

/-- `ogf((x+x^5)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P13227867956857118763.Spec : Prop :=
  ∀ n, P13227867956857118763.a n = A008811 n

theorem P13227867956857118763.correct : P13227867956857118763.Spec := by
  intro n
  simp only [A008811]

end A008811

/-! ## A008811.P1972418989897996532

`(2*n-4)*floor(n/4)-4*floor(n/4)²+n`
-/

namespace A008811.P1972418989897996532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 4) * ⌊(n : ℚ) / 4⌋ - 4 * ⌊(n : ℚ) / 4⌋ ^ 2 + (n : ℤ)

end

end A008811.P1972418989897996532

namespace A008811

/-- `(2*n-4)*floor(n/4)-4*floor(n/4)²+n` -/
def P1972418989897996532.Spec : Prop :=
  ∀ n, P1972418989897996532.a n = A008811 n

end A008811

/-! ## A008811.P7849497345049102044

`ceil((n%4+n²)/4)`
-/

namespace A008811.P7849497345049102044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n % 4 + n ^ 2 : ℕ) : ℚ) / 4⌉

end

end A008811.P7849497345049102044

namespace A008811

/-- `ceil((n%4+n²)/4)` -/
def P7849497345049102044.Spec : Prop :=
  ∀ n, P7849497345049102044.a n = A008811 n

end A008811

/-! ## A008811.P9598045178298392951

`∑[round(∑[n]/or(2, n+1))]`
-/

namespace A008811.P9598045178298392951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / (Nat.lor 2 (n + 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P9598045178298392951

namespace A008811

/-- `∑[round(∑[n]/or(2, n+1))]` -/
def P9598045178298392951.Spec : Prop :=
  ∀ n, P9598045178298392951.a n = A008811 n

end A008811

/-! ## A008811.P14853082570597012525

`∑[a(n-4)+2]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A008811.P14853082570597012525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 4) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P14853082570597012525

namespace A008811

/-- `∑[a(n-4)+2]` -/
def P14853082570597012525.Spec : Prop :=
  ∀ n, (P14853082570597012525.a n : ℤ) = A008811 n

end A008811

/-! ## A008811.P443009004012016356

`∑[∑[lcm(2, a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0`
-/

namespace A008811.P443009004012016356
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0] fun n f2 =>
  Nat.lcm 2 (f2 (n - 4))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P443009004012016356

namespace A008811

/-- `∑[∑[lcm(2, a(n-4))]]` -/
def P443009004012016356.Spec : Prop :=
  ∀ n, (P443009004012016356.a n : ℤ) = A008811 n

end A008811

/-! ## A008811.P4288870664610043003

`ceil(or(4, (n+1)*(n-1))/4)`
-/

namespace A008811.P4288870664610043003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lor 4 ((n + 1 : ℤ) * ((n : ℤ) - 1)) : ℚ) / 4⌉

end

end A008811.P4288870664610043003

namespace A008811

/-- `ceil(or(4, (n+1)*(n-1))/4)` -/
def P4288870664610043003.Spec : Prop :=
  ∀ n, P4288870664610043003.a n = A008811 n

end A008811

/-! ## A008811.P894660496641787452

`round(or(4, (n+1)*(n-1))/4)`
-/

namespace A008811.P894660496641787452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.lor 4 ((n + 1 : ℤ) * ((n : ℤ) - 1)) : ℚ) / 4)

end

end A008811.P894660496641787452

namespace A008811

/-- `round(or(4, (n+1)*(n-1))/4)` -/
def P894660496641787452.Spec : Prop :=
  ∀ n, P894660496641787452.a n = A008811 n

end A008811

/-! ## A008811.P15102844281399167483

`(∑[or(3, n-1)]-(n-1))/2`
-/

namespace A008811.P15102844281399167483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - ((n : ℤ) - 1) : ℤ) : ℚ) / 2

end

end A008811.P15102844281399167483

namespace A008811

/-- `(∑[or(3, n-1)]-(n-1))/2` -/
def P15102844281399167483.Spec : Prop :=
  ∀ n, P15102844281399167483.a n = (A008811 n : ℚ)

end A008811

/-! ## A008811.P17682753457561282849

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=0, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A008811.P17682753457561282849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0, 0, 0, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P17682753457561282849

namespace A008811

/-- `∑[∑[floor(a(n-4))]]` -/
def P17682753457561282849.Spec : Prop :=
  ∀ n, (P17682753457561282849.a n : ℤ) = A008811 n

end A008811

/-! ## A008811.P3530985646316623408

`abs(∑[∑[(and(n, -n)+n)%4]]-n)`
-/

namespace A008811.P3530985646316623408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ)) 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A008811.P3530985646316623408

namespace A008811

/-- `abs(∑[∑[(and(n, -n)+n)%4]]-n)` -/
def P3530985646316623408.Spec : Prop :=
  ∀ n, P3530985646316623408.a n = A008811 n

end A008811

/-! ## A008811.P18100497224190900903

`ceil(A104563(n)/2)`
-/

namespace A008811.P18100497224190900903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104563 n : ℚ) / 2⌉

end

end A008811.P18100497224190900903

namespace A008811

/-- `ceil(A104563(n)/2)` -/
def P18100497224190900903.Spec : Prop :=
  ∀ n, P18100497224190900903.a n = A008811 n

end A008811

/-! ## A008811.P2313421595388690750

`∑[(2*A047203(n+1)+1)%(n+1)]`
-/

namespace A008811.P2313421595388690750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A047203 (n + 1) + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P2313421595388690750

namespace A008811

/-- `∑[(2*A047203(n+1)+1)%(n+1)]` -/
def P2313421595388690750.Spec : Prop :=
  ∀ n, P2313421595388690750.a n = A008811 n

end A008811

/-! ## A008811.P5593101174198806690

`xor(A033638(n), A121262(n))`
-/

namespace A008811.P5593101174198806690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033638 n) (A121262 n)

end

end A008811.P5593101174198806690

namespace A008811

/-- `xor(A033638(n), A121262(n))` -/
def P5593101174198806690.Spec : Prop :=
  ∀ n, P5593101174198806690.a n = A008811 n

end A008811

/-! ## A008811.P14515823009561847227

`xor(A097066(n), A152822(n))`
-/

namespace A008811.P14515823009561847227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097066 n) (A152822 n)

end

end A008811.P14515823009561847227

namespace A008811

/-- `xor(A097066(n), A152822(n))` -/
def P14515823009561847227.Spec : Prop :=
  ∀ n, P14515823009561847227.a n = A008811 n

end A008811

/-! ## A008811.P12020004542385521927

`∑[A004277(A110655(n))-1]`
-/

namespace A008811.P12020004542385521927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A110655 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P12020004542385521927

namespace A008811

/-- `∑[A004277(A110655(n))-1]` -/
def P12020004542385521927.Spec : Prop :=
  ∀ n, P12020004542385521927.a n = A008811 n

end A008811

/-! ## A008811.P13403201431306656866

`∑[A131055(A080513(n))-1]`
-/

namespace A008811.P13403201431306656866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 (A080513 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P13403201431306656866

namespace A008811

/-- `∑[A131055(A080513(n))-1]` -/
def P13403201431306656866.Spec : Prop :=
  ∀ n, P13403201431306656866.a n = A008811 n

end A008811

/-! ## A008811.P7306620954134154088

`∑[A187180(n+2)-A040001(n)]`
-/

namespace A008811.P7306620954134154088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (n + 2) - A040001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P7306620954134154088

namespace A008811

/-- `∑[A187180(n+2)-A040001(n)]` -/
def P7306620954134154088.Spec : Prop :=
  ∀ n, P7306620954134154088.a n = A008811 n

end A008811

/-! ## A008811.P1103977142778897354

`∑[A092533(n+3)-1]`
-/

namespace A008811.P1103977142778897354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008811.P1103977142778897354

namespace A008811

/-- `∑[A092533(n+3)-1]` -/
def P1103977142778897354.Spec : Prop :=
  ∀ n, P1103977142778897354.a n = A008811 n

end A008811

/-! ## A008811.P2798440276001673294

`record[A008819(abs(1-n))]`
-/

namespace A008811.P2798440276001673294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008819 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008811.P2798440276001673294

namespace A008811

/-- `record[A008819(abs(1-n))]` -/
def P2798440276001673294.Spec : Prop :=
  ∀ n, P2798440276001673294.a n = A008811 n

end A008811

/-!
# A008812: Expansion of (1+x^5)/((1-x)^2*(1-x^5)).

The programs for A008812, the canonical program `A008812.P10015824577188194070` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008812 has offset 0).

The definition of A008812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` (program `A008812.P10015824577188194070`, by `A008812.P10015824577188194070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008812.P10015824577188194070

`ogf((1+x^5)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008812

/-- `ogf((1+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P10015824577188194070.Spec : Prop :=
  ∀ n, P10015824577188194070.a n = A008812 n

theorem P10015824577188194070.correct : P10015824577188194070.Spec := by
  intro n
  simp only [A008812]

end A008812

/-! ## A008812.P9928718176475192701

`(2*n-3)*floor((n+1)/5)-5*floor((n+1)/5)²+n+1`
-/

namespace A008812.P9928718176475192701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) * ⌊(n + 1 : ℚ) / 5⌋ - 5 * ⌊(n + 1 : ℚ) / 5⌋ ^ 2 + (n : ℤ) + 1

end

end A008812.P9928718176475192701

namespace A008812

/-- `(2*n-3)*floor((n+1)/5)-5*floor((n+1)/5)²+n+1` -/
def P9928718176475192701.Spec : Prop :=
  ∀ n, P9928718176475192701.a n = A008812 n

end A008812

/-! ## A008812.P7702991251014281572

`∑[a(n-5)+2]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A008812.P7702991251014281572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008812.P7702991251014281572

namespace A008812

/-- `∑[a(n-5)+2]` -/
def P7702991251014281572.Spec : Prop :=
  ∀ n, (P7702991251014281572.a n : ℤ) = A008812 n

end A008812

/-! ## A008812.P5655082566271083502

`∑[A130497(n)]`
-/

namespace A008812.P5655082566271083502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008812.P5655082566271083502

namespace A008812

/-- `∑[A130497(n)]` -/
def P5655082566271083502.Spec : Prop :=
  ∀ n, P5655082566271083502.a n = A008812 n

end A008812

/-! ## A008812.P14211379609345040735

`∑[A130496(n)+1]`
-/

namespace A008812.P14211379609345040735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130496 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008812.P14211379609345040735

namespace A008812

/-- `∑[A130496(n)+1]` -/
def P14211379609345040735.Spec : Prop :=
  ∀ n, P14211379609345040735.a n = A008812 n

end A008812

/-! ## A008812.P16599479031654320433

`∑[A047369(n+1)-n]`
-/

namespace A008812.P16599479031654320433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047369 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008812.P16599479031654320433

namespace A008812

/-- `∑[A047369(n+1)-n]` -/
def P16599479031654320433.Spec : Prop :=
  ∀ n, P16599479031654320433.a n = A008812 n

end A008812

/-! ## A008812.P17020981775682913181

`∑[A047305(n+1)-(n+1)]`
-/

namespace A008812.P17020981775682913181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047305 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008812.P17020981775682913181

namespace A008812

/-- `∑[A047305(n+1)-(n+1)]` -/
def P17020981775682913181.Spec : Prop :=
  ∀ n, P17020981775682913181.a n = A008812 n

end A008812

/-! ## A008812.P1677092137679145195

`A008807(2*n)`
-/

namespace A008812.P1677092137679145195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008807 (2 * n)

end

end A008812.P1677092137679145195

namespace A008812

/-- `A008807(2*n)` -/
def P1677092137679145195.Spec : Prop :=
  ∀ n, P1677092137679145195.a n = A008812 n

end A008812

/-! ## A008812.P4428583864868006598

`A008817(Δ[n²])/2`
-/

namespace A008812.P4428583864868006598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008817 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A008812.P4428583864868006598

namespace A008812

/-- `A008817(Δ[n²])/2` -/
def P4428583864868006598.Spec : Prop :=
  ∀ n, P4428583864868006598.a n = (A008812 n : ℚ)

end A008812

/-! ## A008812.P13681143326725001374

`∑[A194509(2*n+1)]`
-/

namespace A008812.P13681143326725001374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194509 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008812.P13681143326725001374

namespace A008812

/-- `∑[A194509(2*n+1)]` -/
def P13681143326725001374.Spec : Prop :=
  ∀ n, P13681143326725001374.a n = A008812 n

end A008812

/-! ## A008812.P6073079617406366459

`A286717(A008810(n+1))`
-/

namespace A008812.P6073079617406366459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 (A008810 (n + 1)).toNat

end

end A008812.P6073079617406366459

namespace A008812

/-- `A286717(A008810(n+1))` -/
def P6073079617406366459.Spec : Prop :=
  ∀ n, P6073079617406366459.a n = A008812 n

end A008812

/-! ## A008812.P14739821977078659094

`A058207((n+1)²)`
-/

namespace A008812.P14739821977078659094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 ((n + 1) ^ 2)

end

end A008812.P14739821977078659094

namespace A008812

/-- `A058207((n+1)²)` -/
def P14739821977078659094.Spec : Prop :=
  ∀ n, P14739821977078659094.a n = A008812 n

end A008812

/-! ## A008812.P8372726046862307886

`record[A058207((1-n)²)]`
-/

namespace A008812.P8372726046862307886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058207 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008812.P8372726046862307886

namespace A008812

/-- `record[A058207((1-n)²)]` -/
def P8372726046862307886.Spec : Prop :=
  ∀ n, P8372726046862307886.a n = A008812 n

end A008812

/-! ## A008812.P829530272082057416

`A286717(A008611(n*(n+2)))`
-/

namespace A008812.P829530272082057416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 (A008611 (n * (n + 2))).toNat

end

end A008812.P829530272082057416

namespace A008812

/-- `A286717(A008611(n*(n+2)))` -/
def P829530272082057416.Spec : Prop :=
  ∀ n, P829530272082057416.a n = A008812 n

end A008812

/-! ## A008812.P6771409541317882436

`A286717(A285872(A083219((n+1)²)))`
-/

namespace A008812.P6771409541317882436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 (A285872 (A083219 ((n + 1) ^ 2)).toNat).toNat

end

end A008812.P6771409541317882436

namespace A008812

/-- `A286717(A285872(A083219((n+1)²)))` -/
def P6771409541317882436.Spec : Prop :=
  ∀ n, P6771409541317882436.a n = A008812 n

end A008812

/-!
# A008813: Expansion of (1+x^6)/((1-x)^2*(1-x^6)).

The programs for A008813, the canonical program `A008813.P10744003542731930036` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008813 has offset 0).

The definition of A008813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^6)/(1-2x+x^2-x^6+2x^7-x^8))` (program `A008813.P10744003542731930036`, by `A008813.P10744003542731930036.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008813.P10744003542731930036

`ogf((1+x^6)/(1-2x+x^2-x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008813

/-- `ogf((1+x^6)/(1-2x+x^2-x^6+2x^7-x^8))` -/
def P10744003542731930036.Spec : Prop :=
  ∀ n, P10744003542731930036.a n = A008813 n

theorem P10744003542731930036.correct : P10744003542731930036.Spec := by
  intro n
  simp only [A008813]

end A008813

/-! ## A008813.P5749597345762440494

`(2*n-4)*floor((n+1)/6)-6*floor((n+1)/6)²+n+1`
-/

namespace A008813.P5749597345762440494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 4) * ⌊(n + 1 : ℚ) / 6⌋ - 6 * ⌊(n + 1 : ℚ) / 6⌋ ^ 2 + (n : ℤ) + 1

end

end A008813.P5749597345762440494

namespace A008813

/-- `(2*n-4)*floor((n+1)/6)-6*floor((n+1)/6)²+n+1` -/
def P5749597345762440494.Spec : Prop :=
  ∀ n, P5749597345762440494.a n = A008813 n

end A008813

/-! ## A008813.P5431184833945744796

`∑[or(1, floor(n/3))]`
-/

namespace A008813.P5431184833945744796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008813.P5431184833945744796

namespace A008813

/-- `∑[or(1, floor(n/3))]` -/
def P5431184833945744796.Spec : Prop :=
  ∀ n, P5431184833945744796.a n = A008813 n

end A008813

/-! ## A008813.P8269459353647401525

`∑[A047422(n+1)-n]`
-/

namespace A008813.P8269459353647401525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047422 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008813.P8269459353647401525

namespace A008813

/-- `∑[A047422(n+1)-n]` -/
def P8269459353647401525.Spec : Prop :=
  ∀ n, P8269459353647401525.a n = A008813 n

end A008813

/-! ## A008813.P2743570747211729328

`∑[A047593(n+1)-(n+1)]`
-/

namespace A008813.P2743570747211729328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047593 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008813.P2743570747211729328

namespace A008813

/-- `∑[A047593(n+1)-(n+1)]` -/
def P2743570747211729328.Spec : Prop :=
  ∀ n, P2743570747211729328.a n = A008813 n

end A008813

/-! ## A008813.P7654245444411163175

`ceil(A267489(n+1)/2)`
-/

namespace A008813.P7654245444411163175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A267489 (n + 1) : ℚ) / 2⌉

end

end A008813.P7654245444411163175

namespace A008813

/-- `ceil(A267489(n+1)/2)` -/
def P7654245444411163175.Spec : Prop :=
  ∀ n, P7654245444411163175.a n = A008813 n

end A008813

/-! ## A008813.P16687809421053324309

`∑[n+1-A341311(n+1)]`
-/

namespace A008813.P16687809421053324309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A341311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008813.P16687809421053324309

namespace A008813

/-- `∑[n+1-A341311(n+1)]` -/
def P16687809421053324309.Spec : Prop :=
  ∀ n, P16687809421053324309.a n = A008813 n

end A008813

/-! ## A008813.P11973956827451148610

`record[A008820(n)]`
-/

namespace A008813.P11973956827451148610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008813.P11973956827451148610

namespace A008813

/-- `record[A008820(n)]` -/
def P11973956827451148610.Spec : Prop :=
  ∀ n, P11973956827451148610.a n = A008813 n

end A008813

/-! ## A008813.P1697303019375320091

`A008820(2*n)`
-/

namespace A008813.P1697303019375320091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 (2 * n)

end

end A008813.P1697303019375320091

namespace A008813

/-- `A008820(2*n)` -/
def P1697303019375320091.Spec : Prop :=
  ∀ n, P1697303019375320091.a n = A008813 n

end A008813

/-! ## A008813.P1415046288026926684

`abs(A008730(2*n+1)-(n+1))`
-/

namespace A008813.P1415046288026926684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008730 (2 * n + 1) - (n + 1 : ℤ)|

end

end A008813.P1415046288026926684

namespace A008813

/-- `abs(A008730(2*n+1)-(n+1))` -/
def P1415046288026926684.Spec : Prop :=
  ∀ n, P1415046288026926684.a n = A008813 n

end A008813

/-! ## A008813.P12683690523275488200

`A083219(A008810(n+1))`
-/

namespace A008813.P12683690523275488200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A008810 (n + 1)).toNat

end

end A008813.P12683690523275488200

namespace A008813

/-- `A083219(A008810(n+1))` -/
def P12683690523275488200.Spec : Prop :=
  ∀ n, P12683690523275488200.a n = A008813 n

end A008813

/-! ## A008813.P7742784849778278766

`A004525(A267489(n+1))`
-/

namespace A008813.P7742784849778278766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A267489 (n + 1)).toNat

end

end A008813.P7742784849778278766

namespace A008813

/-- `A004525(A267489(n+1))` -/
def P7742784849778278766.Spec : Prop :=
  ∀ n, P7742784849778278766.a n = A008813 n

end A008813

/-! ## A008813.P13799104481060644065

`A008611(A061925(n+1))`
-/

namespace A008813.P13799104481060644065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A061925 (n + 1)).toNat

end

end A008813.P13799104481060644065

namespace A008813

/-- `A008611(A061925(n+1))` -/
def P13799104481060644065.Spec : Prop :=
  ∀ n, P13799104481060644065.a n = A008813 n

end A008813

/-! ## A008813.P13539857793267337668

`A187181(A105343(n+1))`
-/

namespace A008813.P13539857793267337668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A105343 (n + 1)).toNat

end

end A008813.P13539857793267337668

namespace A008813

/-- `A187181(A105343(n+1))` -/
def P13539857793267337668.Spec : Prop :=
  ∀ n, P13539857793267337668.a n = A008813 n

end A008813

/-! ## A008813.P1088258299560058734

`A047878(A245581(n+1))`
-/

namespace A008813.P1088258299560058734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 (A245581 (n + 1)).toNat

end

end A008813.P1088258299560058734

namespace A008813

/-- `A047878(A245581(n+1))` -/
def P1088258299560058734.Spec : Prop :=
  ∀ n, P1088258299560058734.a n = A008813 n

end A008813

/-! ## A008813.P11673800510056778826

`A187181(A330357(n+1))`
-/

namespace A008813.P11673800510056778826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187181 (A330357 (n + 1)).toNat

end

end A008813.P11673800510056778826

namespace A008813

/-- `A187181(A330357(n+1))` -/
def P11673800510056778826.Spec : Prop :=
  ∀ n, P11673800510056778826.a n = A008813 n

end A008813

/-! ## A008813.P12872075537666669567

`A155041(A120413(n+1))`
-/

namespace A008813.P12872075537666669567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155041 (A120413 (n + 1)).toNat

end

end A008813.P12872075537666669567

namespace A008813

/-- `A155041(A120413(n+1))` -/
def P12872075537666669567.Spec : Prop :=
  ∀ n, P12872075537666669567.a n = A008813 n

end A008813

/-! ## A008813.P12044575116698659322

`A008611(A162330((n+1)²))`
-/

namespace A008813.P12044575116698659322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A162330 ((n + 1) ^ 2)).toNat

end

end A008813.P12044575116698659322

namespace A008813

/-- `A008611(A162330((n+1)²))` -/
def P12044575116698659322.Spec : Prop :=
  ∀ n, P12044575116698659322.a n = A008813 n

end A008813

/-! ## A008813.P8760694503740868219

`A083219(A008611(n*(n+2)))`
-/

namespace A008813.P8760694503740868219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083219 (A008611 (n * (n + 2))).toNat

end

end A008813.P8760694503740868219

namespace A008813

/-- `A083219(A008611(n*(n+2)))` -/
def P8760694503740868219.Spec : Prop :=
  ∀ n, P8760694503740868219.a n = A008813 n

end A008813

/-! ## A008813.P9187527141717863396

`A106249(A018840(n*(n+2)))`
-/

namespace A008813.P9187527141717863396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A018840 (n * (n + 2))).toNat

end

end A008813.P9187527141717863396

namespace A008813

/-- `A106249(A018840(n*(n+2)))` -/
def P9187527141717863396.Spec : Prop :=
  ∀ n, P9187527141717863396.a n = A008813 n

end A008813

/-!
# A008814: Expansion of (1+x^7)/((1-x)^2*(1-x^7)).

The programs for A008814, the canonical program `A008814.P12747710307691830017` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008814 has offset 0).

The definition of A008814 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^7)/(1-2x+x^2-x^7+2x^8-x^9))` (program `A008814.P12747710307691830017`, by `A008814.P12747710307691830017.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008814.P12747710307691830017

`ogf((1+x^7)/(1-2x+x^2-x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008814

/-- `ogf((1+x^7)/(1-2x+x^2-x^7+2x^8-x^9))` -/
def P12747710307691830017.Spec : Prop :=
  ∀ n, P12747710307691830017.a n = A008814 n

theorem P12747710307691830017.correct : P12747710307691830017.Spec := by
  intro n
  simp only [A008814]

end A008814

/-! ## A008814.P10752530937674413086

`(2*n-5)*floor((n+1)/7)-7*floor((n+1)/7)²+n+1`
-/

namespace A008814.P10752530937674413086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 5) * ⌊(n + 1 : ℚ) / 7⌋ - 7 * ⌊(n + 1 : ℚ) / 7⌋ ^ 2 + (n : ℤ) + 1

end

end A008814.P10752530937674413086

namespace A008814

/-- `(2*n-5)*floor((n+1)/7)-7*floor((n+1)/7)²+n+1` -/
def P10752530937674413086.Spec : Prop :=
  ∀ n, P10752530937674413086.a n = A008814 n

end A008814

/-! ## A008814.P4526587148278052761

`A008808(2*n)`
-/

namespace A008814.P4526587148278052761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008808 (2 * n)

end

end A008814.P4526587148278052761

namespace A008814

/-- `A008808(2*n)` -/
def P4526587148278052761.Spec : Prop :=
  ∀ n, P4526587148278052761.a n = A008814 n

end A008814

/-! ## A008814.P6241916819402563412

`A187185(A114949(n+1))`
-/

namespace A008814.P6241916819402563412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A114949 (n + 1)).toNat

end

end A008814.P6241916819402563412

namespace A008814

/-- `A187185(A114949(n+1))` -/
def P6241916819402563412.Spec : Prop :=
  ∀ n, P6241916819402563412.a n = A008814 n

end A008814

/-! ## A008814.P15552280336191390739

`A194511(A189833(n+1))`
-/

namespace A008814.P15552280336191390739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A189833 (n + 1)).toNat

end

end A008814.P15552280336191390739

namespace A008814

/-- `A194511(A189833(n+1))` -/
def P15552280336191390739.Spec : Prop :=
  ∀ n, P15552280336191390739.a n = A008814 n

end A008814

/-!
# A008815: Expansion of (1+x^8)/((1-x)^2*(1-x^8)).

The programs for A008815, the canonical program `A008815.P7779934489680462857` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008815 has offset 0).

The definition of A008815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^8)/(1-2x+x^2-x^8+2x^9-x^10))` (program `A008815.P7779934489680462857`, by `A008815.P7779934489680462857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008815.P7779934489680462857

`ogf((1+x^8)/(1-2x+x^2-x^8+2x^9-x^10))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008815

/-- `ogf((1+x^8)/(1-2x+x^2-x^8+2x^9-x^10))` -/
def P7779934489680462857.Spec : Prop :=
  ∀ n, P7779934489680462857.a n = A008815 n

theorem P7779934489680462857.correct : P7779934489680462857.Spec := by
  intro n
  simp only [A008815]

end A008815

/-! ## A008815.P2238216414738206400

`(2*n-6)*floor((n+1)/8)-8*floor((n+1)/8)²+n+1`
-/

namespace A008815.P2238216414738206400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 6) * ⌊(n + 1 : ℚ) / 8⌋ - 8 * ⌊(n + 1 : ℚ) / 8⌋ ^ 2 + (n : ℤ) + 1

end

end A008815.P2238216414738206400

namespace A008815

/-- `(2*n-6)*floor((n+1)/8)-8*floor((n+1)/8)²+n+1` -/
def P2238216414738206400.Spec : Prop :=
  ∀ n, P2238216414738206400.a n = A008815 n

end A008815

/-! ## A008815.P2616539527972735204

`floor((n*(n+2)+14+4*(n%4-1)*(-1)^floor(n/4))/8)`
-/

namespace A008815.P2616539527972735204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n * (n + 2) + 14 : ℚ) + (4 * (((n % 4 : ℕ) : ℤ) - 1) : ℚ) * (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ)) / 8⌋

end

end A008815.P2616539527972735204

namespace A008815

/-- `floor((n*(n+2)+14+4*(n%4-1)*(-1)^floor(n/4))/8)` -/
def P2616539527972735204.Spec : Prop :=
  ∀ n, P2616539527972735204.a n = A008815 n

end A008815

/-! ## A008815.P12863265521915257447

`∑[or(1, floor(n/4))]`
-/

namespace A008815.P12863265521915257447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008815.P12863265521915257447

namespace A008815

/-- `∑[or(1, floor(n/4))]` -/
def P12863265521915257447.Spec : Prop :=
  ∀ n, P12863265521915257447.a n = A008815 n

end A008815

/-! ## A008815.P14574214158347856153

`∑[A129756(A129756(n))]`
-/

namespace A008815.P14574214158347856153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A129756 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008815.P14574214158347856153

namespace A008815

/-- `∑[A129756(A129756(n))]` -/
def P14574214158347856153.Spec : Prop :=
  ∀ n, P14574214158347856153.a n = A008815 n

end A008815

/-! ## A008815.P11750611582675962940

`record[A008821(n)]`
-/

namespace A008815.P11750611582675962940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008815.P11750611582675962940

namespace A008815

/-- `record[A008821(n)]` -/
def P11750611582675962940.Spec : Prop :=
  ∀ n, P11750611582675962940.a n = A008815 n

end A008815

/-! ## A008815.P18085339789607817498

`A008821(2*n)`
-/

namespace A008815.P18085339789607817498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008821 (2 * n)

end

end A008815.P18085339789607817498

namespace A008815

/-- `A008821(2*n)` -/
def P18085339789607817498.Spec : Prop :=
  ∀ n, P18085339789607817498.a n = A008815 n

end A008815

/-! ## A008815.P10170842499114813406

`A000027(A008726(n)+A008726(n)-(n+1))`
-/

namespace A008815.P10170842499114813406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008726 n + (A008726 n - (n + 1 : ℤ))).toNat

end

end A008815.P10170842499114813406

namespace A008815

/-- `A000027(A008726(n)+A008726(n)-(n+1))` -/
def P10170842499114813406.Spec : Prop :=
  ∀ n, P10170842499114813406.a n = A008815 n

end A008815

/-!
# A008816: Expansion of (1+x^9)/((1-x)^2*(1-x^9)).

The programs for A008816, the canonical program `A008816.P6736834743893444287` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008816 has offset 0).

The definition of A008816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^9)/(1-2x+x^2-x^9+2x^10-x^11))` (program `A008816.P6736834743893444287`, by `A008816.P6736834743893444287.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008816.P6736834743893444287

`ogf((1+x^9)/(1-2x+x^2-x^9+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008816

/-- `ogf((1+x^9)/(1-2x+x^2-x^9+2x^10-x^11))` -/
def P6736834743893444287.Spec : Prop :=
  ∀ n, P6736834743893444287.a n = A008816 n

theorem P6736834743893444287.correct : P6736834743893444287.Spec := by
  intro n
  simp only [A008816]

end A008816

/-! ## A008816.P12002602528382333998

`(2*n-7)*floor((n+1)/9)-9*floor((n+1)/9)²+n+1`
-/

namespace A008816.P12002602528382333998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 7) * ⌊(n + 1 : ℚ) / 9⌋ - 9 * ⌊(n + 1 : ℚ) / 9⌋ ^ 2 + (n : ℤ) + 1

end

end A008816.P12002602528382333998

namespace A008816

/-- `(2*n-7)*floor((n+1)/9)-9*floor((n+1)/9)²+n+1` -/
def P12002602528382333998.Spec : Prop :=
  ∀ n, P12002602528382333998.a n = A008816 n

end A008816

/-! ## A008816.P5534051256300117337

`floor((∑[A016945(floor(n/9))]+2)/3)`
-/

namespace A008816.P5534051256300117337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 ⌊(n : ℚ) / 9⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℚ) / 3⌋

end

end A008816.P5534051256300117337

namespace A008816

/-- `floor((∑[A016945(floor(n/9))]+2)/3)` -/
def P5534051256300117337.Spec : Prop :=
  ∀ n, P5534051256300117337.a n = A008816 n

end A008816

/-! ## A008816.P7153124238526629406

`A008809(2*n)`
-/

namespace A008816.P7153124238526629406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (2 * n)

end

end A008816.P7153124238526629406

namespace A008816

/-- `A008809(2*n)` -/
def P7153124238526629406.Spec : Prop :=
  ∀ n, P7153124238526629406.a n = A008816 n

end A008816

/-! ## A008816.P15626972842846332526

`∑[A002654(Δ[A061479(n)])]`
-/

namespace A008816.P15626972842846332526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008816.P15626972842846332526

namespace A008816

/-- `∑[A002654(Δ[A061479(n)])]` -/
def P15626972842846332526.Spec : Prop :=
  ∀ n, P15626972842846332526.a n = A008816 n

end A008816

/-!
# A008817: Expansion of (1+x^10)/((1-x)^2*(1-x^10)).

The programs for A008817, the canonical program `A008817.P14091198874485769388` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008817 has offset 0).

The definition of A008817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x^10)/(1-2x+x^2-x^10+2x^11-x^12))` (program `A008817.P14091198874485769388`, by `A008817.P14091198874485769388.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008817.P14945770136080011568

`(2*n-8)*floor((n+1)/10)-10*floor((n+1)/10)²+n+1`
-/

namespace A008817.P14945770136080011568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 8) * ⌊(n + 1 : ℚ) / 10⌋ - 10 * ⌊(n + 1 : ℚ) / 10⌋ ^ 2 + (n : ℤ) + 1

end

end A008817.P14945770136080011568

namespace A008817

/-- `(2*n-8)*floor((n+1)/10)-10*floor((n+1)/10)²+n+1` -/
def P14945770136080011568.Spec : Prop :=
  ∀ n, P14945770136080011568.a n = A008817 n

end A008817

/-! ## A008817.P14091198874485769388

`ogf((1+x^10)/(1-2x+x^2-x^10+2x^11-x^12))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008817

/-- `ogf((1+x^10)/(1-2x+x^2-x^10+2x^11-x^12))` -/
def P14091198874485769388.Spec : Prop :=
  ∀ n, P14091198874485769388.a n = A008817 n

theorem P14091198874485769388.correct : P14091198874485769388.Spec := by
  intro n
  simp only [A008817]

end A008817

/-! ## A008817.P15070473072955282871

`∑[or(1, floor(n/5))]`
-/

namespace A008817.P15070473072955282871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(n : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008817.P15070473072955282871

namespace A008817

/-- `∑[or(1, floor(n/5))]` -/
def P15070473072955282871.Spec : Prop :=
  ∀ n, P15070473072955282871.a n = A008817 n

end A008817

/-! ## A008817.P16715723078281399168

`∑[n+1-A081599(n)]`
-/

namespace A008817.P16715723078281399168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A081599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008817.P16715723078281399168

namespace A008817

/-- `∑[n+1-A081599(n)]` -/
def P16715723078281399168.Spec : Prop :=
  ∀ n, P16715723078281399168.a n = A008817 n

end A008817

/-! ## A008817.P12077236637989522020

`A000027(A008728(n)+A008728(n)-(n+1))`
-/

namespace A008817.P12077236637989522020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A008728 n + (A008728 n - (n + 1 : ℤ))).toNat

end

end A008817.P12077236637989522020

namespace A008817

/-- `A000027(A008728(n)+A008728(n)-(n+1))` -/
def P12077236637989522020.Spec : Prop :=
  ∀ n, P12077236637989522020.a n = A008817 n

end A008817

/-!
# A008818: Expansion of (1+2*x^3+x^4)/((1-x^2)^2*(1-x^4)); Molien series for 3-dimensional representation of group 2x = [ 2+,4+ ] = CC_4 = C4.

The programs for A008818, the canonical program `A008818.P17170823525312792612` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008818 has offset 0).

The definition of A008818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^3+x^4)/(1-2x^2+2x^6-x^8))` (program `A008818.P17170823525312792612`, by `A008818.P17170823525312792612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008818.P17170823525312792612

`ogf((1+2x^3+x^4)/(1-2x^2+2x^6-x^8))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008818

/-- `ogf((1+2x^3+x^4)/(1-2x^2+2x^6-x^8))` -/
def P17170823525312792612.Spec : Prop :=
  ∀ n, P17170823525312792612.a n = A008818 n

theorem P17170823525312792612.correct : P17170823525312792612.Spec := by
  intro n
  simp only [A008818]

end A008818

/-! ## A008818.P7980659554433478142

`(n/2+9/4)*floor(n/2)+floor((n+1)/4)-(n²+7*n)/8+1`
-/

namespace A008818.P7980659554433478142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + (9 : ℚ) / 4) * (⌊(n : ℚ) / 2⌋ : ℚ) + (⌊(n + 1 : ℚ) / 4⌋ : ℚ) - (n ^ 2 + 7 * n : ℚ) / 8 + 1

end

end A008818.P7980659554433478142

namespace A008818

/-- `(n/2+9/4)*floor(n/2)+floor((n+1)/4)-(n²+7*n)/8+1` -/
def P7980659554433478142.Spec : Prop :=
  ∀ n, P7980659554433478142.a n = (A008818 n : ℚ)

end A008818

/-! ## A008818.P16349017681151196634

`floor(∑[n/2-floor(a(n-1))])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A008818.P16349017681151196634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / 2 - (⌊f1 (n - 1)⌋ : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A008818.P16349017681151196634

namespace A008818

/-- `floor(∑[n/2-floor(a(n-1))])` -/
def P16349017681151196634.Spec : Prop :=
  ∀ n, P16349017681151196634.a n = A008818 n

end A008818

/-! ## A008818.P954127670039545774

`∑[∑[(-1)^∑[∑[n]]-a(n-1)]]` with `a(0)=1`
-/

namespace A008818.P954127670039545774
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f3 j) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P954127670039545774

namespace A008818

/-- `∑[∑[(-1)^∑[∑[n]]-a(n-1)]]` -/
def P954127670039545774.Spec : Prop :=
  ∀ n, P954127670039545774.a n = A008818 n

end A008818

/-! ## A008818.P5708273454809615930

`∑[∑[2%(2*a(n-1)-n)-(a(n-1)+1)]]` with `a(0)=1`
-/

namespace A008818.P5708273454809615930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod 2 (2 * f2 (n - 1) - (n : ℤ)) - (f2 (n - 1) + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P5708273454809615930

namespace A008818

/-- `∑[∑[2%(2*a(n-1)-n)-(a(n-1)+1)]]` -/
def P5708273454809615930.Spec : Prop :=
  ∀ n, P5708273454809615930.a n = A008818 n

end A008818

/-! ## A008818.P13956728560226521556

`∑[A110514(n)]`
-/

namespace A008818.P13956728560226521556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P13956728560226521556

namespace A008818

/-- `∑[A110514(n)]` -/
def P13956728560226521556.Spec : Prop :=
  ∀ n, P13956728560226521556.a n = A008818 n

end A008818

/-! ## A008818.P4050708150055990699

`A166515(xor(1, n))`
-/

namespace A008818.P4050708150055990699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (Nat.xor 1 n)

end

end A008818.P4050708150055990699

namespace A008818

/-- `A166515(xor(1, n))` -/
def P4050708150055990699.Spec : Prop :=
  ∀ n, P4050708150055990699.a n = A008818 n

end A008818

/-! ## A008818.P12510746829911915641

`∑[∑[A110516(n)]]`
-/

namespace A008818.P12510746829911915641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110516 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P12510746829911915641

namespace A008818

/-- `∑[∑[A110516(n)]]` -/
def P12510746829911915641.Spec : Prop :=
  ∀ n, P12510746829911915641.a n = A008818 n

end A008818

/-! ## A008818.P10979592966556541138

`∑[A106249(n)-a(n-1)]` with `a(0)=1`
-/

namespace A008818.P10979592966556541138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A106249 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P10979592966556541138

namespace A008818

/-- `∑[A106249(n)-a(n-1)]` -/
def P10979592966556541138.Spec : Prop :=
  ∀ n, P10979592966556541138.a n = A008818 n

end A008818

/-! ## A008818.P8802023332758447205

`∑[∑[2-(A000045(gcd(n+3, n-1))+a(n-1))]]` with `a(0)=1`
-/

namespace A008818.P8802023332758447205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  2 - (A000045 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) + f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P8802023332758447205

namespace A008818

/-- `∑[∑[2-(A000045(gcd(n+3, n-1))+a(n-1))]]` -/
def P8802023332758447205.Spec : Prop :=
  ∀ n, P8802023332758447205.a n = A008818 n

end A008818

/-! ## A008818.P11950964622590995332

`A166515(A004442(n))`
-/

namespace A008818.P11950964622590995332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (A004442 n).toNat

end

end A008818.P11950964622590995332

namespace A008818

/-- `A166515(A004442(n))` -/
def P11950964622590995332.Spec : Prop :=
  ∀ n, P11950964622590995332.a n = A008818 n

end A008818

/-! ## A008818.P10895832891954592082

`A166515(A219977(n)+n)`
-/

namespace A008818.P10895832891954592082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166515 (A219977 n + (n : ℤ)).toNat

end

end A008818.P10895832891954592082

namespace A008818

/-- `A166515(A219977(n)+n)` -/
def P10895832891954592082.Spec : Prop :=
  ∀ n, P10895832891954592082.a n = A008818 n

end A008818

/-! ## A008818.P8950806511197191098

`∑[∑[A181983(A083219(n+1))]]`
-/

namespace A008818.P8950806511197191098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A083219 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P8950806511197191098

namespace A008818

/-- `∑[∑[A181983(A083219(n+1))]]` -/
def P8950806511197191098.Spec : Prop :=
  ∀ n, P8950806511197191098.a n = A008818 n

end A008818

/-! ## A008818.P11395351925555325536

`∑[∑[A181983(A187180(n+2))]]`
-/

namespace A008818.P11395351925555325536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 (A187180 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P11395351925555325536

namespace A008818

/-- `∑[∑[A181983(A187180(n+2))]]` -/
def P11395351925555325536.Spec : Prop :=
  ∀ n, P11395351925555325536.a n = A008818 n

end A008818

/-! ## A008818.P12213178594069568507

`∑[A215495(n+1)-A110659(2*n+1)]`
-/

namespace A008818.P12213178594069568507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215495 (n + 1) - A110659 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008818.P12213178594069568507

namespace A008818

/-- `∑[A215495(n+1)-A110659(2*n+1)]` -/
def P12213178594069568507.Spec : Prop :=
  ∀ n, P12213178594069568507.a n = A008818 n

end A008818

/-! ## A008818.P4635746218658707652

`A110654(A110654(n+3)²-(n+3))`
-/

namespace A008818.P4635746218658707652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110654 (n + 3) ^ 2 - (n + 3 : ℤ)).toNat

end

end A008818.P4635746218658707652

namespace A008818

/-- `A110654(A110654(n+3)²-(n+3))` -/
def P4635746218658707652.Spec : Prop :=
  ∀ n, P4635746218658707652.a n = A008818 n

end A008818

/-! ## A008818.P556075712620176349

`A110654(A110660(n)+A028242(n))`
-/

namespace A008818.P556075712620176349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A110660 n + A028242 n).toNat

end

end A008818.P556075712620176349

namespace A008818

/-- `A110654(A110660(n)+A028242(n))` -/
def P556075712620176349.Spec : Prop :=
  ∀ n, P556075712620176349.a n = A008818 n

end A008818

/-! ## A008818.P13902373669832236717

`A110654(A028242(n)*A080513(n))`
-/

namespace A008818.P13902373669832236717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A028242 n * A080513 n).toNat

end

end A008818.P13902373669832236717

namespace A008818

/-- `A110654(A028242(n)*A080513(n))` -/
def P13902373669832236717.Spec : Prop :=
  ∀ n, P13902373669832236717.a n = A008818 n

end A008818

/-! ## A008818.P11757536631733171069

`A110654(A008619(n)²-A000035(n))`
-/

namespace A008818.P11757536631733171069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A008619 n ^ 2 - A000035 n).toNat

end

end A008818.P11757536631733171069

namespace A008818

/-- `A110654(A008619(n)²-A000035(n))` -/
def P11757536631733171069.Spec : Prop :=
  ∀ n, P11757536631733171069.a n = A008818 n

end A008818

/-! ## A008818.P16283751295284218951

`A110654((A110654(n)+1)*A028242(n))`
-/

namespace A008818.P16283751295284218951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ((A110654 n + 1) * A028242 n).toNat

end

end A008818.P16283751295284218951

namespace A008818

/-- `A110654((A110654(n)+1)*A028242(n))` -/
def P16283751295284218951.Spec : Prop :=
  ∀ n, P16283751295284218951.a n = A008818 n

end A008818

/-!
# A008819: Expansion of (1+2*x^5+x^8)/((1-x^2)^2*(1-x^8)).

The programs for A008819, the canonical program `A008819.P1944870302463676042` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008819 has offset 0).

The definition of A008819 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^5+x^8)/(1-2x^2+x^4-x^8+2x^10-x^12))` (program `A008819.P1944870302463676042`, by `A008819.P1944870302463676042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008819.P1944870302463676042

`ogf((1+2x^5+x^8)/(1-2x^2+x^4-x^8+2x^10-x^12))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008819

/-- `ogf((1+2x^5+x^8)/(1-2x^2+x^4-x^8+2x^10-x^12))` -/
def P1944870302463676042.Spec : Prop :=
  ∀ n, P1944870302463676042.a n = A008819 n

theorem P1944870302463676042.correct : P1944870302463676042.Spec := by
  intro n
  simp only [A008819]

end A008819

/-! ## A008819.P11084510522512098982

`2*A008734(n)-A027656(n)`
-/

namespace A008819.P11084510522512098982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008734 n - A027656 n

end

end A008819.P11084510522512098982

namespace A008819

/-- `2*A008734(n)-A027656(n)` -/
def P11084510522512098982.Spec : Prop :=
  ∀ n, P11084510522512098982.a n = A008819 n

end A008819

/-! ## A008819.P4902919350633148868

`A008642(n)-A004524(A052938(n))`
-/

namespace A008819.P4902919350633148868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A004524 (A052938 n).toNat

end

end A008819.P4902919350633148868

namespace A008819

/-- `A008642(n)-A004524(A052938(n))` -/
def P4902919350633148868.Spec : Prop :=
  ∀ n, P4902919350633148868.a n = A008819 n

end A008819

/-! ## A008819.P8478427653859642831

`A130519(A028242(n+1))+A008734(n)`
-/

namespace A008819.P8478427653859642831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A028242 (n + 1)).toNat + A008734 n

end

end A008819.P8478427653859642831

namespace A008819

/-- `A130519(A028242(n+1))+A008734(n)` -/
def P8478427653859642831.Spec : Prop :=
  ∀ n, P8478427653859642831.a n = A008819 n

end A008819

/-! ## A008819.P2603983375495177433

`A182568(A052938(n))+A142150(n+2)`
-/

namespace A008819.P2603983375495177433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182568 (A052938 n).toNat + A142150 (n + 2)

end

end A008819.P2603983375495177433

namespace A008819

/-- `A182568(A052938(n))+A142150(n+2)` -/
def P2603983375495177433.Spec : Prop :=
  ∀ n, P2603983375495177433.a n = A008819 n

end A008819

/-! ## A008819.P7764434600505479423

`A008642(n)-A112689(A007494(n))`
-/

namespace A008819.P7764434600505479423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n - A112689 (A007494 n).toNat

end

end A008819.P7764434600505479423

namespace A008819

/-- `A008642(n)-A112689(A007494(n))` -/
def P7764434600505479423.Spec : Prop :=
  ∀ n, P7764434600505479423.a n = A008819 n

end A008819

/-! ## A008819.P17836606829854987545

`A027656(n)+A005843(A008734(n)-A027656(n))`
-/

namespace A008819.P17836606829854987545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A005843 (A008734 n - A027656 n).toNat

end

end A008819.P17836606829854987545

namespace A008819

/-- `A027656(n)+A005843(A008734(n)-A027656(n))` -/
def P17836606829854987545.Spec : Prop :=
  ∀ n, P17836606829854987545.a n = A008819 n

end A008819

/-! ## A008819.P11403120085669568593

`A005843(A008734(n))-A027656(n)`
-/

namespace A008819.P11403120085669568593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008734 n).toNat - A027656 n

end

end A008819.P11403120085669568593

namespace A008819

/-- `A005843(A008734(n))-A027656(n)` -/
def P11403120085669568593.Spec : Prop :=
  ∀ n, P11403120085669568593.a n = A008819 n

end A008819

/-! ## A008819.P2907893153728641170

`A005843(A008734(n))-A142150(n+2)`
-/

namespace A008819.P2907893153728641170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008734 n).toNat - A142150 (n + 2)

end

end A008819.P2907893153728641170

namespace A008819

/-- `A005843(A008734(n))-A142150(n+2)` -/
def P2907893153728641170.Spec : Prop :=
  ∀ n, P2907893153728641170.a n = A008819 n

end A008819

/-! ## A008819.P2892003653192940644

`A106249(A008818(n)-A087960(n))`
-/

namespace A008819.P2892003653192940644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A008818 n - A087960 n).toNat

end

end A008819.P2892003653192940644

namespace A008819

/-- `A106249(A008818(n)-A087960(n))` -/
def P2892003653192940644.Spec : Prop :=
  ∀ n, P2892003653192940644.a n = A008819 n

end A008819

/-! ## A008819.P1846182123239959730

`A106249(A008805(n)-A110659(n))`
-/

namespace A008819.P1846182123239959730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A008805 n - A110659 n).toNat

end

end A008819.P1846182123239959730

namespace A008819

/-- `A106249(A008805(n)-A110659(n))` -/
def P1846182123239959730.Spec : Prop :=
  ∀ n, P1846182123239959730.a n = A008819 n

end A008819

/-! ## A008819.P14857536400428398330

`A004524(∑[A026741(n+9)-A004524(n+14)])`
-/

namespace A008819.P14857536400428398330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 9) - A004524 (n + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008819.P14857536400428398330

namespace A008819

/-- `A004524(∑[A026741(n+9)-A004524(n+14)])` -/
def P14857536400428398330.Spec : Prop :=
  ∀ n, P14857536400428398330.a n = A008819 n

end A008819

/-! ## A008819.P3429327639430104940

`A106249(A110657(A000096(n)-A001057(n)))`
-/

namespace A008819.P3429327639430104940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A110657 (A000096 n - A001057 n).toNat).toNat

end

end A008819.P3429327639430104940

namespace A008819

/-- `A106249(A110657(A000096(n)-A001057(n)))` -/
def P3429327639430104940.Spec : Prop :=
  ∀ n, P3429327639430104940.a n = A008819 n

end A008819

/-!
# A008820: Expansion of (1+2*x^7+x^12)/((1-x^2)^2*(1-x^12)).

The programs for A008820, the canonical program `A008820.P15486652155251508926` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008820 has offset 0).

The definition of A008820 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^7+x^12)/(1-2x^2+x^4-x^12+2x^14-x^16))` (program `A008820.P15486652155251508926`, by `A008820.P15486652155251508926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008820.P15486652155251508926

`ogf((1+2x^7+x^12)/(1-2x^2+x^4-x^12+2x^14-x^16))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008820

/-- `ogf((1+2x^7+x^12)/(1-2x^2+x^4-x^12+2x^14-x^16))` -/
def P15486652155251508926.Spec : Prop :=
  ∀ n, P15486652155251508926.a n = A008820 n

theorem P15486652155251508926.correct : P15486652155251508926.Spec := by
  intro n
  simp only [A008820]

end A008820

/-! ## A008820.P805558653586526579

`2*A008735(n)-A027656(n)`
-/

namespace A008820.P805558653586526579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008735 n - A027656 n

end

end A008820.P805558653586526579

namespace A008820

/-- `2*A008735(n)-A027656(n)` -/
def P805558653586526579.Spec : Prop :=
  ∀ n, P805558653586526579.a n = A008820 n

end A008820

/-! ## A008820.P14123640301137775825

`A008735(n)+A025895(A146951(n))-A027656(n)`
-/

namespace A008820.P14123640301137775825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008735 n + (A025895 (A146951 n).toNat - A027656 n)

end

end A008820.P14123640301137775825

namespace A008820

/-- `A008735(n)+A025895(A146951(n))-A027656(n)` -/
def P14123640301137775825.Spec : Prop :=
  ∀ n, P14123640301137775825.a n = A008820 n

end A008820

/-! ## A008820.P17726248627117179827

`A025895(A187715(n+2))+A008735(n)-A027656(n)`
-/

namespace A008820.P17726248627117179827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025895 (A187715 (n + 2)).toNat + (A008735 n - A027656 n)

end

end A008820.P17726248627117179827

namespace A008820

/-- `A025895(A187715(n+2))+A008735(n)-A027656(n)` -/
def P17726248627117179827.Spec : Prop :=
  ∀ n, P17726248627117179827.a n = A008820 n

end A008820

/-! ## A008820.P11471405740554633704

`A027656(n)+A005843(A008735(n)-A027656(n))`
-/

namespace A008820.P11471405740554633704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A005843 (A008735 n - A027656 n).toNat

end

end A008820.P11471405740554633704

namespace A008820

/-- `A027656(n)+A005843(A008735(n)-A027656(n))` -/
def P11471405740554633704.Spec : Prop :=
  ∀ n, P11471405740554633704.a n = A008820 n

end A008820

/-! ## A008820.P15008335137778747154

`A005843(A008735(n))-A027656(n)`
-/

namespace A008820.P15008335137778747154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008735 n).toNat - A027656 n

end

end A008820.P15008335137778747154

namespace A008820

/-- `A005843(A008735(n))-A027656(n)` -/
def P15008335137778747154.Spec : Prop :=
  ∀ n, P15008335137778747154.a n = A008820 n

end A008820

/-!
# A008821: Expansion of (1+2*x^9+x^16)/((1-x^2)^2*(1-x^16)).

The programs for A008821, there is no canonical definition to state claims against.
-/

/-! ## A008821.P12070500604422867906

`2*A008736(n)-A027656(n)`
-/

namespace A008821.P12070500604422867906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008736 n - A027656 n

end

end A008821.P12070500604422867906

/-! ## A008821.P17175725675313016988

`A027656(n)+A005843(A008736(n)-A027656(n))`
-/

namespace A008821.P17175725675313016988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A005843 (A008736 n - A027656 n).toNat

end

end A008821.P17175725675313016988

/-! ## A008821.P5056238804079526549

`A005843(A008736(n))-A027656(n)`
-/

namespace A008821.P5056238804079526549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008736 n).toNat - A027656 n

end

end A008821.P5056238804079526549

/-! ## A008821.P13534844271809971200

`A005843(A008736(n))-∑[A001057(n+1)]`
-/

namespace A008821.P13534844271809971200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008736 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008821.P13534844271809971200

/-! ## A008821.P4872630887898441039

`A005843(A008736(n))+A027656(n)*A057428(n+1)`
-/

namespace A008821.P4872630887898441039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008736 n).toNat + A027656 n * A057428 (n + 1)

end

end A008821.P4872630887898441039

/-!
# A008822: Expansion of (1 + 2*x^2 + x^3)/((1 - x)^2*(1 - x^3)).

The programs for A008822, the canonical program `A008822.P10157306821716189224` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008822 has offset 0).

The definition of A008822 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^2+x^3)/(1-2x+x^2-x^3+2x^4-x^5))` (program `A008822.P10157306821716189224`, by `A008822.P10157306821716189224.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008822.P8341966346329364845

`ceil((n+1)*(2*n+1)/3)`
-/

namespace A008822.P8341966346329364845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) * (2 * n + 1) : ℚ) / 3⌉

end

end A008822.P8341966346329364845

namespace A008822

/-- `ceil((n+1)*(2*n+1)/3)` -/
def P8341966346329364845.Spec : Prop :=
  ∀ n, P8341966346329364845.a n = A008822 n

end A008822

/-! ## A008822.P10157306821716189224

`ogf((1+2x^2+x^3)/(1-2x+x^2-x^3+2x^4-x^5))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008822

/-- `ogf((1+2x^2+x^3)/(1-2x+x^2-x^3+2x^4-x^5))` -/
def P10157306821716189224.Spec : Prop :=
  ∀ n, P10157306821716189224.a n = A008822 n

theorem P10157306821716189224.correct : P10157306821716189224.Spec := by
  intro n
  simp only [A008822]

end A008822

/-! ## A008822.P2617289678967552876

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=15`
-/

namespace A008822.P2617289678967552876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5, 10, 15] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A008822.P2617289678967552876

namespace A008822

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P2617289678967552876.Spec : Prop :=
  ∀ n, P2617289678967552876.a n = A008822 n

end A008822

/-! ## A008822.P5872008169962319919

`∑[or(1, comp[or(3, n)])]`
-/

namespace A008822.P5872008169962319919
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P5872008169962319919

namespace A008822

/-- `∑[or(1, comp[or(3, n)])]` -/
def P5872008169962319919.Spec : Prop :=
  ∀ n, (P5872008169962319919.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P15391687555266131813

`∑[or(1, round(4*n/3))]`
-/

namespace A008822.P15391687555266131813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P15391687555266131813

namespace A008822

/-- `∑[or(1, round(4*n/3))]` -/
def P15391687555266131813.Spec : Prop :=
  ∀ n, P15391687555266131813.a n = A008822 n

end A008822

/-! ## A008822.P435377439032228849

`∑[∑[abs((1-∑[n])%3)]]`
-/

namespace A008822.P435377439032228849
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (1 - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)) 3|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P435377439032228849

namespace A008822

/-- `∑[∑[abs((1-∑[n])%3)]]` -/
def P435377439032228849.Spec : Prop :=
  ∀ n, P435377439032228849.a n = A008822 n

end A008822

/-! ## A008822.P16602724167814962489

`∑[∑[(-1)^(n%3)]+n]`
-/

namespace A008822.P16602724167814962489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P16602724167814962489

namespace A008822

/-- `∑[∑[(-1)^(n%3)]+n]` -/
def P16602724167814962489.Spec : Prop :=
  ∀ n, P16602724167814962489.a n = A008822 n

end A008822

/-! ## A008822.P8334811319828809460

`∑[a(n-3)+4]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A008822.P8334811319828809460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 3) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P8334811319828809460

namespace A008822

/-- `∑[a(n-3)+4]` -/
def P8334811319828809460.Spec : Prop :=
  ∀ n, (P8334811319828809460.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P8337183867391250882

`∑[∑[(∑[n]-1)%3]+2]`
-/

namespace A008822.P8337183867391250882
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1) 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P8337183867391250882

namespace A008822

/-- `∑[∑[(∑[n]-1)%3]+2]` -/
def P8337183867391250882.Spec : Prop :=
  ∀ n, P8337183867391250882.a n = A008822 n

end A008822

/-! ## A008822.P13355578433473222462

`∑[∑[gcd(3, ∑[n])-1]-1]`
-/

namespace A008822.P13355578433473222462
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P13355578433473222462

namespace A008822

/-- `∑[∑[gcd(3, ∑[n])-1]-1]` -/
def P13355578433473222462.Spec : Prop :=
  ∀ n, P13355578433473222462.a n = A008822 n

end A008822

/-! ## A008822.P16412364913108327145

`∑[∑[abs(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A008822.P16412364913108327145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P16412364913108327145

namespace A008822

/-- `∑[∑[abs(a(n-3))]]` -/
def P16412364913108327145.Spec : Prop :=
  ∀ n, (P16412364913108327145.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P10213100261811693627

`∑[∑[lcm(2, a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A008822.P10213100261811693627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f2 =>
  Nat.lcm 2 (f2 (n - 3))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P10213100261811693627

namespace A008822

/-- `∑[∑[lcm(2, a(n-3))]]` -/
def P10213100261811693627.Spec : Prop :=
  ∀ n, (P10213100261811693627.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P13045063028812088379

`∑[∑[dr(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A008822.P13045063028812088379
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P13045063028812088379

namespace A008822

/-- `∑[∑[dr(a(n-3))]]` -/
def P13045063028812088379.Spec : Prop :=
  ∀ n, (P13045063028812088379.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P2607861759964511585

`∑[∑[floor(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A008822.P2607861759964511585
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P2607861759964511585

namespace A008822

/-- `∑[∑[floor(a(n-3))]]` -/
def P2607861759964511585.Spec : Prop :=
  ∀ n, (P2607861759964511585.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P9016854274150613375

`∑[∑[ceil(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A008822.P9016854274150613375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P9016854274150613375

namespace A008822

/-- `∑[∑[ceil(a(n-3))]]` -/
def P9016854274150613375.Spec : Prop :=
  ∀ n, (P9016854274150613375.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P4250011597149452501

`∑[∑[round(a(n-3))]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`round` is left out, it is the identity on integers.
-/

namespace A008822.P4250011597149452501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P4250011597149452501

namespace A008822

/-- `∑[∑[round(a(n-3))]]` -/
def P4250011597149452501.Spec : Prop :=
  ∀ n, (P4250011597149452501.a n : ℤ) = A008822 n

end A008822

/-! ## A008822.P15781935977594748314

`4*n+a(n-3)-3` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A008822.P15781935977594748314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (4 * n : ℤ) + (a (n - 3) - 3)

end

end A008822.P15781935977594748314

namespace A008822

/-- `4*n+a(n-3)-3` -/
def P15781935977594748314.Spec : Prop :=
  ∀ n, P15781935977594748314.a n = A008822 n

end A008822

/-! ## A008822.P15396925851375422637

`4*n-(3-a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A008822.P15396925851375422637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  (4 * n : ℤ) - (3 - a (n - 3))

end

end A008822.P15396925851375422637

namespace A008822

/-- `4*n-(3-a(n-3))` -/
def P15396925851375422637.Spec : Prop :=
  ∀ n, P15396925851375422637.a n = A008822 n

end A008822

/-! ## A008822.P10764876094418682021

`∑[∑[a(n-3)²/2]]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`
-/

namespace A008822.P10764876094418682021
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f2 =>
  f2 (n - 3) ^ 2 / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008822.P10764876094418682021

namespace A008822

/-- `∑[∑[a(n-3)²/2]]` -/
def P10764876094418682021.Spec : Prop :=
  ∀ n, P10764876094418682021.a n = (A008822 n : ℚ)

end A008822

/-! ## A008822.P17440891027746446560

`∑[n]-∑[a(n-3)-1]` with `a(0)=-1, a(1)=0, a(2)=-1`
-/

namespace A008822.P17440891027746446560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, -1] fun n f2 =>
  f2 (n - 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A008822.P17440891027746446560

namespace A008822

/-- `∑[n]-∑[a(n-3)-1]` -/
def P17440891027746446560.Spec : Prop :=
  ∀ n, P17440891027746446560.a n = A008822 n

end A008822

/-!
# A008823: Expansion of (1+2*x^3+x^5)/((1-x)^2*(1-x^5)).

The programs for A008823, the canonical program `A008823.P5156950442361125180` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008823 has offset 0).

The definition of A008823 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^3+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` (program `A008823.P5156950442361125180`, by `A008823.P5156950442361125180.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008823.P11300983632514308695

`floor(n*(2*n+3)/5)+1`
-/

namespace A008823.P11300983632514308695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * (2 * n + 3) : ℚ) / 5⌋ + 1

end

end A008823.P11300983632514308695

namespace A008823

/-- `floor(n*(2*n+3)/5)+1` -/
def P11300983632514308695.Spec : Prop :=
  ∀ n, P11300983632514308695.a n = A008823 n

end A008823

/-! ## A008823.P5156950442361125180

`ogf((1+2x^3+x^5)/(1-2x+x^2-x^5+2x^6-x^7))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008823

/-- `ogf((1+2x^3+x^5)/(1-2x+x^2-x^5+2x^6-x^7))` -/
def P5156950442361125180.Spec : Prop :=
  ∀ n, P5156950442361125180.a n = A008823 n

theorem P5156950442361125180.correct : P5156950442361125180.Spec := by
  intro n
  simp only [A008823]

end A008823

/-! ## A008823.P16083828428175142255

`∑[or(1, floor(4*n/5))]`
-/

namespace A008823.P16083828428175142255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊4 * ((n : ℚ) / 5)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P16083828428175142255

namespace A008823

/-- `∑[or(1, floor(4*n/5))]` -/
def P16083828428175142255.Spec : Prop :=
  ∀ n, P16083828428175142255.a n = A008823 n

end A008823

/-! ## A008823.P2314665913010891091

`∑[a(n-5)+4]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=3`
-/

namespace A008823.P2314665913010891091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3, 3] fun n f1 =>
  f1 (n - 5) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P2314665913010891091

namespace A008823

/-- `∑[a(n-5)+4]` -/
def P2314665913010891091.Spec : Prop :=
  ∀ n, (P2314665913010891091.a n : ℤ) = A008823 n

end A008823

/-! ## A008823.P10196900719753625624

`∑[∑[floor(a(n-5))]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=0, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A008823.P10196900719753625624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 2, 0, 2] fun n f2 =>
  f2 (n - 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P10196900719753625624

namespace A008823

/-- `∑[∑[floor(a(n-5))]]` -/
def P10196900719753625624.Spec : Prop :=
  ∀ n, (P10196900719753625624.a n : ℤ) = A008823 n

end A008823

/-! ## A008823.P5795054256757293666

`round((lcm(2*n+1, n+1)+2)/5)`
-/

namespace A008823.P5795054256757293666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (2 * n + 1) (n + 1) + 2 : ℚ) / 5)

end

end A008823.P5795054256757293666

namespace A008823

/-- `round((lcm(2*n+1, n+1)+2)/5)` -/
def P5795054256757293666.Spec : Prop :=
  ∀ n, P5795054256757293666.a n = A008823 n

end A008823

/-! ## A008823.P5645175005542796365

`∑[2*A057354(n)+1]`
-/

namespace A008823.P5645175005542796365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057354 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P5645175005542796365

namespace A008823

/-- `∑[2*A057354(n)+1]` -/
def P5645175005542796365.Spec : Prop :=
  ∀ n, P5645175005542796365.a n = A008823 n

end A008823

/-! ## A008823.P11324013384996720521

`∑[A289195(n+2)-1]`
-/

namespace A008823.P11324013384996720521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289195 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P11324013384996720521

namespace A008823

/-- `∑[A289195(n+2)-1]` -/
def P11324013384996720521.Spec : Prop :=
  ∀ n, P11324013384996720521.a n = A008823 n

end A008823

/-! ## A008823.P8718514779631714602

`∑[A005408(A288156(n+2)-1)]`
-/

namespace A008823.P8718514779631714602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A288156 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P8718514779631714602

namespace A008823

/-- `∑[A005408(A288156(n+2)-1)]` -/
def P8718514779631714602.Spec : Prop :=
  ∀ n, P8718514779631714602.a n = A008823 n

end A008823

/-! ## A008823.P691811978856226291

`∑[2*(A002266(n+2)+A002266(n))+1]`
-/

namespace A008823.P691811978856226291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A002266 (n + 2) + A002266 n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P691811978856226291

namespace A008823

/-- `∑[2*(A002266(n+2)+A002266(n))+1]` -/
def P691811978856226291.Spec : Prop :=
  ∀ n, P691811978856226291.a n = A008823 n

end A008823

/-! ## A008823.P17746817778693337073

`∑[A130823(comp[6*n])]`
-/

namespace A008823.P17746817778693337073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P17746817778693337073

namespace A008823

/-- `∑[A130823(comp[6*n])]` -/
def P17746817778693337073.Spec : Prop :=
  ∀ n, P17746817778693337073.a n = A008823 n

end A008823

/-! ## A008823.P2779984729441336096

`∑[A129756(2*A090223(n))]`
-/

namespace A008823.P2779984729441336096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (2 * A090223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P2779984729441336096

namespace A008823

/-- `∑[A129756(2*A090223(n))]` -/
def P2779984729441336096.Spec : Prop :=
  ∀ n, P2779984729441336096.a n = A008823 n

end A008823

/-! ## A008823.P14171901195710414105

`∑[A130497(2*n)]`
-/

namespace A008823.P14171901195710414105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008823.P14171901195710414105

namespace A008823

/-- `∑[A130497(2*n)]` -/
def P14171901195710414105.Spec : Prop :=
  ∀ n, P14171901195710414105.a n = A008823 n

end A008823

/-! ## A008823.P2713503380866221683

`A286717(A008822(n))`
-/

namespace A008823.P2713503380866221683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286717 (A008822 n).toNat

end

end A008823.P2713503380866221683

namespace A008823

/-- `A286717(A008822(n))` -/
def P2713503380866221683.Spec : Prop :=
  ∀ n, P2713503380866221683.a n = A008823 n

end A008823

/-!
# A008824: Expansion of (1+2*x^4+x^7)/((1-x)^2*(1-x^7)).

The programs for A008824, the canonical program `A008824.P9552811610792364808` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008824 has offset 0).

The definition of A008824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^4+x^7)/(1-2x+x^2-x^7+2x^8-x^9))` (program `A008824.P9552811610792364808`, by `A008824.P9552811610792364808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008824.P9552811610792364808

`ogf((1+2x^4+x^7)/(1-2x+x^2-x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008824

/-- `ogf((1+2x^4+x^7)/(1-2x+x^2-x^7+2x^8-x^9))` -/
def P9552811610792364808.Spec : Prop :=
  ∀ n, P9552811610792364808.a n = A008824 n

theorem P9552811610792364808.correct : P9552811610792364808.Spec := by
  intro n
  simp only [A008824]

end A008824

/-! ## A008824.P2387225339466691368

`floor((2*n²+3*n+7+2*(floor((n-1)/7)-floor((n-2)/7)))/7)`
-/

namespace A008824.P2387225339466691368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n ^ 2 + 3 * n + 7 : ℤ) + 2 * (⌊((n : ℤ) - 1 : ℚ) / 7⌋ - ⌊((n : ℤ) - 2 : ℚ) / 7⌋) : ℚ) / 7⌋

end

end A008824.P2387225339466691368

namespace A008824

/-- `floor((2*n²+3*n+7+2*(floor((n-1)/7)-floor((n-2)/7)))/7)` -/
def P2387225339466691368.Spec : Prop :=
  ∀ n, P2387225339466691368.a n = A008824 n

end A008824

/-! ## A008824.P538544199472439890

`2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=10, a(6)=13, a(7)=18, a(8)=23`
-/

namespace A008824.P538544199472439890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4, 7, 10, 13, 18, 23] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 7) - 2 * a (n - 8) + a (n - 9)

end

end A008824.P538544199472439890

namespace A008824

/-- `2*a(n-1)-a(n-2)+a(n-7)-2*a(n-8)+a(n-9)` -/
def P538544199472439890.Spec : Prop :=
  ∀ n, P538544199472439890.a n = A008824 n

end A008824

/-! ## A008824.P17765012808802460301

`∑[or(1, A057358(n))]`
-/

namespace A008824.P17765012808802460301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A057358 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P17765012808802460301

namespace A008824

/-- `∑[or(1, A057358(n))]` -/
def P17765012808802460301.Spec : Prop :=
  ∀ n, P17765012808802460301.a n = A008824 n

end A008824

/-! ## A008824.P13935620243912061979

`∑[2*A057356(n)+1]`
-/

namespace A008824.P13935620243912061979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057356 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P13935620243912061979

namespace A008824

/-- `∑[2*A057356(n)+1]` -/
def P13935620243912061979.Spec : Prop :=
  ∀ n, P13935620243912061979.a n = A008824 n

end A008824

/-! ## A008824.P1607252737507054162

`2*A008739(n)-(n+1)`
-/

namespace A008824.P1607252737507054162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008739 n - (n + 1 : ℤ)

end

end A008824.P1607252737507054162

namespace A008824

/-- `2*A008739(n)-(n+1)` -/
def P1607252737507054162.Spec : Prop :=
  ∀ n, P1607252737507054162.a n = A008824 n

end A008824

/-! ## A008824.P16760126009735551402

`∑[A005408(A057356(n))]`
-/

namespace A008824.P16760126009735551402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A057356 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P16760126009735551402

namespace A008824

/-- `∑[A005408(A057356(n))]` -/
def P16760126009735551402.Spec : Prop :=
  ∀ n, P16760126009735551402.a n = A008824 n

end A008824

/-! ## A008824.P14233893678171419824

`∑[A004273(ceil(A004273(n+1)/7))]`
-/

namespace A008824.P14233893678171419824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ⌈(A004273 (n + 1) : ℚ) / 7⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P14233893678171419824

namespace A008824

/-- `∑[A004273(ceil(A004273(n+1)/7))]` -/
def P14233893678171419824.Spec : Prop :=
  ∀ n, P14233893678171419824.a n = A008824 n

end A008824

/-! ## A008824.P5735828656411576656

`∑[A004396(n-A194515(n+2))]`
-/

namespace A008824.P5735828656411576656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 ((n : ℤ) - A194515 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P5735828656411576656

namespace A008824

/-- `∑[A004396(n-A194515(n+2))]` -/
def P5735828656411576656.Spec : Prop :=
  ∀ n, P5735828656411576656.a n = A008824 n

end A008824

/-! ## A008824.P13104304807315756337

`record[2*A008800(n)-A008619(n)]`
-/

namespace A008824.P13104304807315756337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008800 n - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008824.P13104304807315756337

namespace A008824

/-- `record[2*A008800(n)-A008619(n)]` -/
def P13104304807315756337.Spec : Prop :=
  ∀ n, P13104304807315756337.a n = A008824 n

end A008824

/-! ## A008824.P16918012715652184096

`∑[or(1, A002265(A004775(2*(n+1))))]`
-/

namespace A008824.P16918012715652184096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002265 (A004775 (2 * (n + 1))).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P16918012715652184096

namespace A008824

/-- `∑[or(1, A002265(A004775(2*(n+1))))]` -/
def P16918012715652184096.Spec : Prop :=
  ∀ n, P16918012715652184096.a n = A008824 n

end A008824

/-! ## A008824.P7215092592103802107

`∑[A130497(A194225(n+1)+n)]`
-/

namespace A008824.P7215092592103802107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (A194225 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008824.P7215092592103802107

namespace A008824

/-- `∑[A130497(A194225(n+1)+n)]` -/
def P7215092592103802107.Spec : Prop :=
  ∀ n, P7215092592103802107.a n = A008824 n

end A008824

/-!
# A008825: Expansion of (1+2*x^5+x^9)/((1-x)^2*(1-x^9)).

The programs for A008825, the canonical program `A008825.P12974779536466113240` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008825 has offset 0).

The definition of A008825 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x^5+x^9)/(1-2x+x^2-x^9+2x^10-x^11))` (program `A008825.P12974779536466113240`, by `A008825.P12974779536466113240.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008825.P12974779536466113240

`ogf((1+2x^5+x^9)/(1-2x+x^2-x^9+2x^10-x^11))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008825

/-- `ogf((1+2x^5+x^9)/(1-2x+x^2-x^9+2x^10-x^11))` -/
def P12974779536466113240.Spec : Prop :=
  ∀ n, P12974779536466113240.a n = A008825 n

theorem P12974779536466113240.correct : P12974779536466113240.Spec := by
  intro n
  simp only [A008825]

end A008825

/-! ## A008825.P4707898994030679412

`2*A008740(n)-(n+1)`
-/

namespace A008825.P4707898994030679412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008740 n - (n + 1 : ℤ)

end

end A008825.P4707898994030679412

namespace A008825

/-- `2*A008740(n)-(n+1)` -/
def P4707898994030679412.Spec : Prop :=
  ∀ n, P4707898994030679412.a n = A008825 n

end A008825

/-! ## A008825.P561580328891202509

`∑[A130823(A004396(n+1))]`
-/

namespace A008825.P561580328891202509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130823 (A004396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P561580328891202509

namespace A008825

/-- `∑[A130823(A004396(n+1))]` -/
def P561580328891202509.Spec : Prop :=
  ∀ n, P561580328891202509.a n = A008825 n

end A008825

/-! ## A008825.P3531000043610169229

`∑[or(1, A004523(A004523(n)))]`
-/

namespace A008825.P3531000043610169229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A004523 (A004523 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P3531000043610169229

namespace A008825

/-- `∑[or(1, A004523(A004523(n)))]` -/
def P3531000043610169229.Spec : Prop :=
  ∀ n, P3531000043610169229.a n = A008825 n

end A008825

/-! ## A008825.P10930084266177935583

`∑[A130497(comp[10*n+5])]`
-/

namespace A008825.P10930084266177935583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130497 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P10930084266177935583

namespace A008825

/-- `∑[A130497(comp[10*n+5])]` -/
def P10930084266177935583.Spec : Prop :=
  ∀ n, P10930084266177935583.a n = A008825 n

end A008825

/-! ## A008825.P5806767235586091392

`∑[A008611(A168056(n)-1)]`
-/

namespace A008825.P5806767235586091392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A168056 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P5806767235586091392

namespace A008825

/-- `∑[A008611(A168056(n)-1)]` -/
def P5806767235586091392.Spec : Prop :=
  ∀ n, P5806767235586091392.a n = A008825 n

end A008825

/-! ## A008825.P9715087016427465293

`∑[or(1, A002264(A002264(n)+n))]`
-/

namespace A008825.P9715087016427465293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002264 (A002264 n + (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P9715087016427465293

namespace A008825

/-- `∑[or(1, A002264(A002264(n)+n))]` -/
def P9715087016427465293.Spec : Prop :=
  ∀ n, P9715087016427465293.a n = A008825 n

end A008825

/-! ## A008825.P12154932361391561510

`∑[A008612(A002264(2*n))+A002264(n+1)]`
-/

namespace A008825.P12154932361391561510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A002264 (2 * n)).toNat + A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P12154932361391561510

namespace A008825

/-- `∑[A008612(A002264(2*n))+A002264(n+1)]` -/
def P12154932361391561510.Spec : Prop :=
  ∀ n, P12154932361391561510.a n = A008825 n

end A008825

/-! ## A008825.P11643052888813189007

`2*A025765(2*n)-(n+1)`
-/

namespace A008825.P11643052888813189007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025765 (2 * n) - (n + 1 : ℤ)

end

end A008825.P11643052888813189007

namespace A008825

/-- `2*A025765(2*n)-(n+1)` -/
def P11643052888813189007.Spec : Prop :=
  ∀ n, P11643052888813189007.a n = A008825 n

end A008825

/-! ## A008825.P535635139905054749

`∑[A008611(2*n-A008611(2*n+1))]`
-/

namespace A008825.P535635139905054749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 ((2 * n : ℤ) - A008611 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P535635139905054749

namespace A008825

/-- `∑[A008611(2*n-A008611(2*n+1))]` -/
def P535635139905054749.Spec : Prop :=
  ∀ n, P535635139905054749.a n = A008825 n

end A008825

/-! ## A008825.P14120150831850246952

`∑[A129756(A130823(A130823(2*n+1)))]`
-/

namespace A008825.P14120150831850246952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129756 (A130823 (A130823 (2 * n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P14120150831850246952

namespace A008825

/-- `∑[A129756(A130823(A130823(2*n+1)))]` -/
def P14120150831850246952.Spec : Prop :=
  ∀ n, P14120150831850246952.a n = A008825 n

end A008825

/-! ## A008825.P6571542638867291307

`∑[A341311(2*n)-A341311(A341311(2*n))]`
-/

namespace A008825.P6571542638867291307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341311 (2 * n) - A341311 (A341311 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P6571542638867291307

namespace A008825

/-- `∑[A341311(2*n)-A341311(A341311(2*n))]` -/
def P6571542638867291307.Spec : Prop :=
  ∀ n, P6571542638867291307.a n = A008825 n

end A008825

/-! ## A008825.P13090858992103938623

`∑[A008611(A008611(4*n)-1)]`
-/

namespace A008825.P13090858992103938623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A008611 (4 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P13090858992103938623

namespace A008825

/-- `∑[A008611(A008611(4*n)-1)]` -/
def P13090858992103938623.Spec : Prop :=
  ∀ n, P13090858992103938623.a n = A008825 n

end A008825

/-! ## A008825.P12216909183273278547

`∑[or(1, A002264(A002264(4*n)))]`
-/

namespace A008825.P12216909183273278547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A002264 (A002264 (4 * n)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008825.P12216909183273278547

namespace A008825

/-- `∑[or(1, A002264(A002264(4*n)))]` -/
def P12216909183273278547.Spec : Prop :=
  ∀ n, P12216909183273278547.a n = A008825 n

end A008825

/-! ## A008825.P7866631063571970029

`A008611(A001840(n)-n)+A001840(n)`
-/

namespace A008825.P7866631063571970029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A001840 n - (n : ℤ)).toNat + A001840 n

end

end A008825.P7866631063571970029

namespace A008825

/-- `A008611(A001840(n)-n)+A001840(n)` -/
def P7866631063571970029.Spec : Prop :=
  ∀ n, P7866631063571970029.a n = A008825 n

end A008825

/-! ## A008825.P18377413854355959989

`A014681(2*A008740(n))-n`
-/

namespace A008825.P18377413854355959989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A008740 n).toNat - (n : ℤ)

end

end A008825.P18377413854355959989

namespace A008825

/-- `A014681(2*A008740(n))-n` -/
def P18377413854355959989.Spec : Prop :=
  ∀ n, P18377413854355959989.a n = A008825 n

end A008825

/-! ## A008825.P12599188144484212942

`A008611(∑[A168056(n)]+1)`
-/

namespace A008825.P12599188144484212942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A008825.P12599188144484212942

namespace A008825

/-- `A008611(∑[A168056(n)]+1)` -/
def P12599188144484212942.Spec : Prop :=
  ∀ n, P12599188144484212942.a n = A008825 n

end A008825

/-! ## A008825.P7862203447148675963

`A008611(∑[A008611(4*n)]+1)`
-/

namespace A008825.P7862203447148675963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A008825.P7862203447148675963

namespace A008825

/-- `A008611(∑[A008611(4*n)]+1)` -/
def P7862203447148675963.Spec : Prop :=
  ∀ n, P7862203447148675963.a n = A008825 n

end A008825

/-! ## A008825.P14173962665985874922

`A008611(A000124(n)+∑[A008611(n)])`
-/

namespace A008825.P14173962665985874922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000124 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A008825.P14173962665985874922

namespace A008825

/-- `A008611(A000124(n)+∑[A008611(n)])` -/
def P14173962665985874922.Spec : Prop :=
  ∀ n, P14173962665985874922.a n = A008825 n

end A008825

/-! ## A008825.P93226340457934867

`A008611(A131380(n²)+n)`
-/

namespace A008825.P93226340457934867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A131380 (n ^ 2) + (n : ℤ)).toNat

end

end A008825.P93226340457934867

namespace A008825

/-- `A008611(A131380(n²)+n)` -/
def P93226340457934867.Spec : Prop :=
  ∀ n, P93226340457934867.a n = A008825 n

end A008825

/-!
# A008827: Number of proper partitions of a set of n labeled elements.

The programs for A008827, there is no canonical definition to state claims against.
-/

/-! ## A008827.P2396242748703230197

`A000110(n+2)-2`
-/

namespace A008827.P2396242748703230197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (n + 2) - 2

end

end A008827.P2396242748703230197

/-! ## A008827.P2702276218609817542

`∑[A005493(n)]-1`
-/

namespace A008827.P2702276218609817542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A008827.P2702276218609817542

/-! ## A008827.P3015923832957250698

`A058692(n+2)-1`
-/

namespace A008827.P3015923832957250698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058692 (n + 2) - 1

end

end A008827.P3015923832957250698

/-! ## A008827.P4689571732320300853

`∑[∑[A011965(n)]]-1`
-/

namespace A008827.P4689571732320300853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011965 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A008827.P4689571732320300853

/-! ## A008827.P5955813619700604421

`record[Δ[A283424(n)]-1]`
-/

namespace A008827.P5955813619700604421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008827.P5955813619700604421

/-! ## A008827.P5654087395592773102

`A011972(∑[n+1])-2`
-/

namespace A008827.P5654087395592773102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A008827.P5654087395592773102

/-! ## A008827.P12143188148613851825

`A095674(∑[n+1])-2`
-/

namespace A008827.P12143188148613851825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095674 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A008827.P12143188148613851825

/-! ## A008827.P14036874023711767752

`A123346(∑[n+1])-2`
-/

namespace A008827.P14036874023711767752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A008827.P14036874023711767752

/-! ## A008827.P16077730016129347240

`A283424(∑[n+1])-2`
-/

namespace A008827.P16077730016129347240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (∑ j ∈ Finset.range (n + 1), f1 j) - 2

end

end A008827.P16077730016129347240

/-! ## A008827.P6565672038609442243

`record[A123346(n+1)-2]`
-/

namespace A008827.P6565672038609442243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008827.P6565672038609442243

/-!
# A008829: Smallest number a(n) formed from consecutive sequences of digits of Pi and satisfying a(n) > a(n-1); first 3 is omitted.

The programs for A008829, there is no canonical definition to state claims against.
-/

/-! ## A008829.P6189484873762037807

`A016062(n+1)%A074608(n)`
-/

namespace A008829.P6189484873762037807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016062 (n + 1)) (A074608 n)

end

end A008829.P6189484873762037807

/-! ## A008829.P3694375576645368367

`A016062(A077168(n))%A208126(2*(n+1))`
-/

namespace A008829.P3694375576645368367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016062 (A077168 n).toNat) (A208126 (2 * (n + 1)))

end

end A008829.P3694375576645368367

/-! ## A008829.P2401969592648217839

`A322920(A002998(n)+1)`
-/

namespace A008829.P2401969592648217839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322920 (A002998 n + 1).toNat

end

end A008829.P2401969592648217839

/-! ## A008829.P5852117167931280864

`A322920(A043315(n+1))`
-/

namespace A008829.P5852117167931280864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322920 (A043315 (n + 1)).toNat

end

end A008829.P5852117167931280864

/-! ## A008829.P10997353828383701954

`A322920(A087036(n)+1)`
-/

namespace A008829.P10997353828383701954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322920 (A087036 n + 1).toNat

end

end A008829.P10997353828383701954

/-!
# A008831: Discrete logarithm of n to the base 2 modulo 13.

The programs for A008831, there is no canonical definition to state claims against.
-/

/-! ## A008831.P8741366759857280554

`A054503(n+23)`
-/

namespace A008831.P8741366759857280554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 23)

end

end A008831.P8741366759857280554

/-! ## A008831.P17822588297752475032

`A053832(2*A002247(n))`
-/

namespace A008831.P17822588297752475032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (2 * A002247 n).toNat

end

end A008831.P17822588297752475032

/-! ## A008831.P7665309953482569551

`A053832(A002247(n)+A002247(n))`
-/

namespace A008831.P7665309953482569551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053832 (A002247 n + A002247 n).toNat

end

end A008831.P7665309953482569551

/-!
# A008832: Discrete logarithm of n to the base 2 modulo 19.

The programs for A008832, there is no canonical definition to state claims against.
-/

/-! ## A008832.P14836315930743453156

`A054503(n+51)`
-/

namespace A008832.P14836315930743453156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (n + 51)

end

end A008832.P14836315930743453156

/-!
# A008833: Largest square dividing n.

The programs for A008833, the canonical program `A008833.P11016767941717339701` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008833 has offset 1).

The definition of A008833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008833.P5515188948271298231

`A000188(n+1)²`
-/

namespace A008833.P5515188948271298231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1) ^ 2

end

end A008833.P5515188948271298231

namespace A008833

/-- `A000188(n+1)²` -/
def P5515188948271298231.Spec : Prop :=
  ∀ n, P5515188948271298231.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P18388074464065390543

`(n+1)/A007913(n+1)`
-/

namespace A008833.P18388074464065390543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007913 (n + 1) : ℚ)

end

end A008833.P18388074464065390543

namespace A008833

/-- `(n+1)/A007913(n+1)` -/
def P18388074464065390543.Spec : Prop :=
  ∀ n, P18388074464065390543.a n = (A008833 (n + 1) : ℚ)

end A008833

/-! ## A008833.P17580355989798021069

`A008836(n+1)*A358272(n+1)`
-/

namespace A008833.P17580355989798021069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A358272 (n + 1)

end

end A008833.P17580355989798021069

namespace A008833

/-- `A008836(n+1)*A358272(n+1)` -/
def P17580355989798021069.Spec : Prop :=
  ∀ n, P17580355989798021069.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P11016767941717339701

`∏{p}[n+1, #^val(n+1, #²)]²`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008833

/-- `∏{p}[n+1, #^val(n+1, #²)]²` -/
def P11016767941717339701.Spec : Prop :=
  ∀ n, (P11016767941717339701.a n : ℤ) = A008833 (n + 1)

theorem P11016767941717339701.correct : P11016767941717339701.Spec := by
  intro n
  simp only [A008833, Nat.add_sub_cancel]

end A008833

/-! ## A008833.P4083068472753767560

`abs(A358272(n+1))`
-/

namespace A008833.P4083068472753767560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A358272 (n + 1)|

end

end A008833.P4083068472753767560

namespace A008833

/-- `abs(A358272(n+1))` -/
def P4083068472753767560.Spec : Prop :=
  ∀ n, P4083068472753767560.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P4719878649102460917

`A336642(n+1)+1`
-/

namespace A008833.P4719878649102460917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336642 (n + 1) + 1

end

end A008833.P4719878649102460917

namespace A008833

/-- `A336642(n+1)+1` -/
def P4719878649102460917.Spec : Prop :=
  ∀ n, P4719878649102460917.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P1044673140552869220

`(A057918(n+1)+1)²`
-/

namespace A008833.P1044673140552869220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057918 (n + 1) + 1) ^ 2

end

end A008833.P1044673140552869220

namespace A008833

/-- `(A057918(n+1)+1)²` -/
def P1044673140552869220.Spec : Prop :=
  ∀ n, P1044673140552869220.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P1574588543027885388

`A337101(2*(n+1))²`
-/

namespace A008833.P1574588543027885388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * (n + 1)) ^ 2

end

end A008833.P1574588543027885388

namespace A008833

/-- `A337101(2*(n+1))²` -/
def P1574588543027885388.Spec : Prop :=
  ∀ n, P1574588543027885388.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P16603189035753301627

`(n+1)/Δ[A069891(n)]`
-/

namespace A008833.P16603189035753301627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A008833.P16603189035753301627

namespace A008833

/-- `(n+1)/Δ[A069891(n)]` -/
def P16603189035753301627.Spec : Prop :=
  ∀ n, P16603189035753301627.a n = (A008833 (n + 1) : ℚ)

end A008833

/-! ## A008833.P7790643254467112213

`1-A326055(n+1)+n`
-/

namespace A008833.P7790643254467112213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A326055 (n + 1) + (n : ℤ)

end

end A008833.P7790643254467112213

namespace A008833

/-- `1-A326055(n+1)+n` -/
def P7790643254467112213.Spec : Prop :=
  ∀ n, P7790643254467112213.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P16147997459034043962

`gcd(n+1, A011264(n+1))`
-/

namespace A008833.P16147997459034043962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011264 (n + 1))

end

end A008833.P16147997459034043962

namespace A008833

/-- `gcd(n+1, A011264(n+1))` -/
def P16147997459034043962.Spec : Prop :=
  ∀ n, (P16147997459034043962.a n : ℤ) = A008833 (n + 1)

end A008833

/-! ## A008833.P16751587648340455035

`A059479(n+1)%(n+2)`
-/

namespace A008833.P16751587648340455035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059479 (n + 1)) (n + 2 : ℤ)

end

end A008833.P16751587648340455035

namespace A008833

/-- `A059479(n+1)%(n+2)` -/
def P16751587648340455035.Spec : Prop :=
  ∀ n, P16751587648340455035.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P3902203591710232992

`((n+1)/A019554(n+1))²`
-/

namespace A008833.P3902203591710232992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ)) ^ 2

end

end A008833.P3902203591710232992

namespace A008833

/-- `((n+1)/A019554(n+1))²` -/
def P3902203591710232992.Spec : Prop :=
  ∀ n, P3902203591710232992.a n = (A008833 (n + 1) : ℚ)

end A008833

/-! ## A008833.P2013806240170222356

`(n+1)²/A053143(n+1)`
-/

namespace A008833.P2013806240170222356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A053143 (n + 1) : ℚ)

end

end A008833.P2013806240170222356

namespace A008833

/-- `(n+1)²/A053143(n+1)` -/
def P2013806240170222356.Spec : Prop :=
  ∀ n, P2013806240170222356.a n = (A008833 (n + 1) : ℚ)

end A008833

/-! ## A008833.P2115435529828218514

`(A355264(n+1)/(n+1))²`
-/

namespace A008833.P2115435529828218514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A355264 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A008833.P2115435529828218514

namespace A008833

/-- `(A355264(n+1)/(n+1))²` -/
def P2115435529828218514.Spec : Prop :=
  ∀ n, P2115435529828218514.a n = (A008833 (n + 1) : ℚ)

end A008833

/-! ## A008833.P17602318932240504765

`(n+1)/sqrt(A055491(n+1))`
-/

namespace A008833.P17602318932240504765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.sqrt (A055491 (n + 1) : ℝ)

end

end A008833.P17602318932240504765

namespace A008833

/-- `(n+1)/sqrt(A055491(n+1))` -/
def P17602318932240504765.Spec : Prop :=
  ∀ n, P17602318932240504765.a n = (A008833 (n + 1) : ℝ)

end A008833

/-! ## A008833.P14432332572264304089

`(floor(sqrt(A336644(n+1)))+1)²`
-/

namespace A008833.P14432332572264304089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.sqrt (A336644 (n + 1)) + 1) ^ 2

end

end A008833.P14432332572264304089

namespace A008833

/-- `(floor(sqrt(A336644(n+1)))+1)²` -/
def P14432332572264304089.Spec : Prop :=
  ∀ n, P14432332572264304089.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P7092283990830830573

`(n+1)/(n+1-A326128(n+1))`
-/

namespace A008833.P7092283990830830573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((n + 1 : ℤ) - A326128 (n + 1) : ℚ)

end

end A008833.P7092283990830830573

namespace A008833

/-- `(n+1)/(n+1-A326128(n+1))` -/
def P7092283990830830573.Spec : Prop :=
  ∀ n, P7092283990830830573.a n = (A008833 (n + 1) : ℚ)

end A008833

/-! ## A008833.P12818264783486864544

`A053143(A003557(n+1))`
-/

namespace A008833.P12818264783486864544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (A003557 (n + 1)).toNat

end

end A008833.P12818264783486864544

namespace A008833

/-- `A053143(A003557(n+1))` -/
def P12818264783486864544.Spec : Prop :=
  ∀ n, P12818264783486864544.a n = A008833 (n + 1)

end A008833

/-! ## A008833.P7179250202040909996

`A162400(A235872(n+1))`
-/

namespace A008833.P7179250202040909996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162400 (A235872 (n + 1)).toNat

end

end A008833.P7179250202040909996

namespace A008833

/-- `A162400(A235872(n+1))` -/
def P7179250202040909996.Spec : Prop :=
  ∀ n, P7179250202040909996.a n = A008833 (n + 1)

end A008833

/-!
# A008834: Largest cube dividing n.

The programs for A008834, the canonical program `A008834.P8690349651579721460` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008834 has offset 1).

The definition of A008834 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050985, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008834.P17208951749117866926

`A053150(n+1)^3`
-/

namespace A008834.P17208951749117866926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (n + 1) ^ 3

end

end A008834.P17208951749117866926

namespace A008834

/-- `A053150(n+1)^3` -/
def P17208951749117866926.Spec : Prop :=
  ∀ n, P17208951749117866926.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P8690349651579721460

`(n+1)/A050985(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008834

/-- `(n+1)/A050985(n+1)` -/
def P8690349651579721460.Spec : Prop :=
  ∀ n, P8690349651579721460.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P2914072577791669312

`A000578(A053150(n+1))`
-/

namespace A008834.P2914072577791669312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A053150 (n + 1)).toNat

end

end A008834.P2914072577791669312

namespace A008834

/-- `A000578(A053150(n+1))` -/
def P2914072577791669312.Spec : Prop :=
  ∀ n, P2914072577791669312.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P11501643455476174711

`A053149(A062378(n+1))`
-/

namespace A008834.P11501643455476174711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (A062378 (n + 1)).toNat

end

end A008834.P11501643455476174711

namespace A008834

/-- `A053149(A062378(n+1))` -/
def P11501643455476174711.Spec : Prop :=
  ∀ n, P11501643455476174711.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P16453124636625452000

`A048762(A113061(n+1))`
-/

namespace A008834.P16453124636625452000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048762 (A113061 (n + 1)).toNat

end

end A008834.P16453124636625452000

namespace A008834

/-- `A048762(A113061(n+1))` -/
def P16453124636625452000.Spec : Prop :=
  ∀ n, P16453124636625452000.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P8174401025222648235

`A000188(A000189(n+1))^3`
-/

namespace A008834.P8174401025222648235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A000189 (n + 1)).toNat ^ 3

end

end A008834.P8174401025222648235

namespace A008834

/-- `A000188(A000189(n+1))^3` -/
def P8174401025222648235.Spec : Prop :=
  ∀ n, P8174401025222648235.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P13105964636801903535

`A053149(n+1)/A056551(n+1)`
-/

namespace A008834.P13105964636801903535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A056551 (n + 1) : ℚ)

end

end A008834.P13105964636801903535

namespace A008834

/-- `A053149(n+1)/A056551(n+1)` -/
def P13105964636801903535.Spec : Prop :=
  ∀ n, P13105964636801903535.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P4849951431809858168

`A159253(n+1)/A048798(n+1)`
-/

namespace A008834.P4849951431809858168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159253 (n + 1) : ℚ) / (A048798 (n + 1) : ℚ)

end

end A008834.P4849951431809858168

namespace A008834

/-- `A159253(n+1)/A048798(n+1)` -/
def P4849951431809858168.Spec : Prop :=
  ∀ n, P4849951431809858168.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P8025161699962935200

`A000578(A000188(A000189(n+1)))`
-/

namespace A008834.P8025161699962935200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000188 (A000189 (n + 1)).toNat).toNat

end

end A008834.P8025161699962935200

namespace A008834

/-- `A000578(A000188(A000189(n+1)))` -/
def P8025161699962935200.Spec : Prop :=
  ∀ n, P8025161699962935200.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P18353092958102879961

`A053149(A003557(A003557(n+1)))`
-/

namespace A008834.P18353092958102879961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053149 (A003557 (A003557 (n + 1)).toNat).toNat

end

end A008834.P18353092958102879961

namespace A008834

/-- `A053149(A003557(A003557(n+1)))` -/
def P18353092958102879961.Spec : Prop :=
  ∀ n, P18353092958102879961.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P5644063140817619771

`A008833(A000189(n+1))*A053150(n+1)`
-/

namespace A008834.P5644063140817619771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000189 (n + 1)).toNat * A053150 (n + 1)

end

end A008834.P5644063140817619771

namespace A008834

/-- `A008833(A000189(n+1))*A053150(n+1)` -/
def P5644063140817619771.Spec : Prop :=
  ∀ n, P5644063140817619771.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P9286591195933814852

`A053149(n+1)/A053149(A056552(n+1))`
-/

namespace A008834.P9286591195933814852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A053149 (A056552 (n + 1)).toNat : ℚ)

end

end A008834.P9286591195933814852

namespace A008834

/-- `A053149(n+1)/A053149(A056552(n+1))` -/
def P9286591195933814852.Spec : Prop :=
  ∀ n, P9286591195933814852.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P8453411891508682015

`A008833(A053150(n+1)²)*A053150(n+1)`
-/

namespace A008834.P8453411891508682015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A053150 (n + 1) ^ 2).toNat * A053150 (n + 1)

end

end A008834.P8453411891508682015

namespace A008834

/-- `A008833(A053150(n+1)²)*A053150(n+1)` -/
def P8453411891508682015.Spec : Prop :=
  ∀ n, P8453411891508682015.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P13474330330595658100

`A000290(A053150(n+1)²)/A053150(n+1)`
-/

namespace A008834.P13474330330595658100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A053150 (n + 1) ^ 2).toNat : ℚ) / (A053150 (n + 1) : ℚ)

end

end A008834.P13474330330595658100

namespace A008834

/-- `A000290(A053150(n+1)²)/A053150(n+1)` -/
def P13474330330595658100.Spec : Prop :=
  ∀ n, P13474330330595658100.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P16037354710366997097

`A019555(n+1)/A056551(n+1)*A019555(n+1)²`
-/

namespace A008834.P16037354710366997097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019555 (n + 1) : ℚ) / (A056551 (n + 1) : ℚ) * (A019555 (n + 1) ^ 2 : ℚ)

end

end A008834.P16037354710366997097

namespace A008834

/-- `A019555(n+1)/A056551(n+1)*A019555(n+1)²` -/
def P16037354710366997097.Spec : Prop :=
  ∀ n, P16037354710366997097.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P4444723868328006620

`A008833(A053150(n+1)²²)/A053150(n+1)`
-/

namespace A008834.P4444723868328006620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 ((A053150 (n + 1) ^ 2) ^ 2).toNat : ℚ) / (A053150 (n + 1) : ℚ)

end

end A008834.P4444723868328006620

namespace A008834

/-- `A008833(A053150(n+1)²²)/A053150(n+1)` -/
def P4444723868328006620.Spec : Prop :=
  ∀ n, P4444723868328006620.a n = (A008834 (n + 1) : ℚ)

end A008834

/-! ## A008834.P16374720336366021379

`A000190(A053150(n+1)²²)`
-/

namespace A008834.P16374720336366021379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 ((A053150 (n + 1) ^ 2) ^ 2).toNat

end

end A008834.P16374720336366021379

namespace A008834

/-- `A000190(A053150(n+1)²²)` -/
def P16374720336366021379.Spec : Prop :=
  ∀ n, P16374720336366021379.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P2588219036937885361

`A000190(A008833(A000189(n+1))²)`
-/

namespace A008834.P2588219036937885361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000190 (A008833 (A000189 (n + 1)).toNat ^ 2).toNat

end

end A008834.P2588219036937885361

namespace A008834

/-- `A000190(A008833(A000189(n+1))²)` -/
def P2588219036937885361.Spec : Prop :=
  ∀ n, P2588219036937885361.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P11007081774497256265

`A050985(A062378(n+1)²)*A062378(n+1)`
-/

namespace A008834.P11007081774497256265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (A062378 (n + 1) ^ 2).toNat * A062378 (n + 1)

end

end A008834.P11007081774497256265

namespace A008834

/-- `A050985(A062378(n+1)²)*A062378(n+1)` -/
def P11007081774497256265.Spec : Prop :=
  ∀ n, P11007081774497256265.a n = A008834 (n + 1)

end A008834

/-! ## A008834.P492954724216178536

`A053149(A102631(n+1))/A053149(n+1)`
-/

namespace A008834.P492954724216178536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (A102631 (n + 1)).toNat : ℚ) / (A053149 (n + 1) : ℚ)

end

end A008834.P492954724216178536

namespace A008834

/-- `A053149(A102631(n+1))/A053149(n+1)` -/
def P492954724216178536.Spec : Prop :=
  ∀ n, P492954724216178536.a n = (A008834 (n + 1) : ℚ)

end A008834

/-!
# A008835: Largest 4th power dividing n.

The programs for A008835, the canonical program `A008835.P7771124106947273383` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008835 has offset 1).

The definition of A008835 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000188, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008835.P14671041504740576390

`A053164(n+1)^4`
-/

namespace A008835.P14671041504740576390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053164 (n + 1) ^ 4

end

end A008835.P14671041504740576390

namespace A008835

/-- `A053164(n+1)^4` -/
def P14671041504740576390.Spec : Prop :=
  ∀ n, P14671041504740576390.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P15108577995653560625

`(n+1)/A053165(n+1)`
-/

namespace A008835.P15108577995653560625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053165 (n + 1) : ℚ)

end

end A008835.P15108577995653560625

namespace A008835

/-- `(n+1)/A053165(n+1)` -/
def P15108577995653560625.Spec : Prop :=
  ∀ n, P15108577995653560625.a n = (A008835 (n + 1) : ℚ)

end A008835

/-! ## A008835.P7771124106947273383

`A000188(A000188(n+1))^4`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008835

/-- `A000188(A000188(n+1))^4` -/
def P7771124106947273383.Spec : Prop :=
  ∀ n, P7771124106947273383.a n = A008835 (n + 1)

theorem P7771124106947273383.correct : P7771124106947273383.Spec := by
  intro n
  simp only [A008835, Nat.add_sub_cancel]

end A008835

/-! ## A008835.P2689538215388324484

`A053164(∑[n]-C(n, 2)+1)²²`
-/

namespace A008835.P2689538215388324484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053164 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 2 : ℤ) + 1).toNat ^ 2) ^ 2

end

end A008835.P2689538215388324484

namespace A008835

/-- `A053164(∑[n]-C(n, 2)+1)²²` -/
def P2689538215388324484.Spec : Prop :=
  ∀ n, P2689538215388324484.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P7553918730845045895

`A053164(lcm(n, a(n-1))+1)²²` with `a(0)=1`
-/

namespace A008835.P7553918730845045895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A053164 (Int.lcm (n : ℤ) (a (n - 1)) + 1) ^ 2) ^ 2

end

end A008835.P7553918730845045895

namespace A008835

/-- `A053164(lcm(n, a(n-1))+1)²²` -/
def P7553918730845045895.Spec : Prop :=
  ∀ n, P7553918730845045895.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P9834256045396494153

`A053167(A062379(n+1))`
-/

namespace A008835.P9834256045396494153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053167 (A062379 (n + 1)).toNat

end

end A008835.P9834256045396494153

namespace A008835

/-- `A053167(A062379(n+1))` -/
def P9834256045396494153.Spec : Prop :=
  ∀ n, P9834256045396494153.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P12221801993522565320

`A008833(A000188(n+1))²`
-/

namespace A008835.P12221801993522565320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A000188 (n + 1)).toNat ^ 2

end

end A008835.P12221801993522565320

namespace A008835

/-- `A008833(A000188(n+1))²` -/
def P12221801993522565320.Spec : Prop :=
  ∀ n, P12221801993522565320.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P11603707988553059738

`A053150(A000190(n+1))²²`
-/

namespace A008835.P11603707988553059738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053150 (A000190 (n + 1)).toNat ^ 2) ^ 2

end

end A008835.P11603707988553059738

namespace A008835

/-- `A053150(A000190(n+1))²²` -/
def P11603707988553059738.Spec : Prop :=
  ∀ n, P11603707988553059738.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P6628274187775049532

`A008833(sqrt(A008833(n+1)))²`
-/

namespace A008835.P6628274187775049532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat ^ 2

end

end A008835.P6628274187775049532

namespace A008835

/-- `A008833(sqrt(A008833(n+1)))²` -/
def P6628274187775049532.Spec : Prop :=
  ∀ n, P6628274187775049532.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P11987974570771003158

`A053167(n+1)/A056553(n+1)`
-/

namespace A008835.P11987974570771003158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053167 (n + 1) : ℚ) / (A056553 (n + 1) : ℚ)

end

end A008835.P11987974570771003158

namespace A008835

/-- `A053167(n+1)/A056553(n+1)` -/
def P11987974570771003158.Spec : Prop :=
  ∀ n, P11987974570771003158.a n = (A008835 (n + 1) : ℚ)

end A008835

/-! ## A008835.P17072155153113409986

`A008833(n+1)/A335324(n+1)`
-/

namespace A008835.P17072155153113409986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) : ℚ) / (A335324 (n + 1) : ℚ)

end

end A008835.P17072155153113409986

namespace A008835

/-- `A008833(n+1)/A335324(n+1)` -/
def P17072155153113409986.Spec : Prop :=
  ∀ n, P17072155153113409986.a n = (A008835 (n + 1) : ℚ)

end A008835

/-! ## A008835.P3825341841409284441

`A000290(A000188(A000188(n+1))²)`
-/

namespace A008835.P3825341841409284441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000188 (A000188 (n + 1)).toNat ^ 2).toNat

end

end A008835.P3825341841409284441

namespace A008835

/-- `A000290(A000188(A000188(n+1))²)` -/
def P3825341841409284441.Spec : Prop :=
  ∀ n, P3825341841409284441.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P10364176955270347350

`A008833(A057918(A072905(n+1)))²`
-/

namespace A008835.P10364176955270347350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A057918 (A072905 (n + 1)).toNat).toNat ^ 2

end

end A008835.P10364176955270347350

namespace A008835

/-- `A008833(A057918(A072905(n+1)))²` -/
def P10364176955270347350.Spec : Prop :=
  ∀ n, P10364176955270347350.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P10352891365255708957

`A353897(A366906(A353897(n+1))²)`
-/

namespace A008835.P10352891365255708957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A366906 (A353897 (n + 1)).toNat ^ 2).toNat

end

end A008835.P10352891365255708957

namespace A008835

/-- `A353897(A366906(A353897(n+1))²)` -/
def P10352891365255708957.Spec : Prop :=
  ∀ n, P10352891365255708957.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P17925546380919984679

`A062379(A372329(n+1))`
-/

namespace A008835.P17925546380919984679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062379 (A372329 (n + 1)).toNat

end

end A008835.P17925546380919984679

namespace A008835

/-- `A062379(A372329(n+1))` -/
def P17925546380919984679.Spec : Prop :=
  ∀ n, P17925546380919984679.a n = A008835 (n + 1)

end A008835

/-! ## A008835.P7093867567522192382

`gcd(A034386(n), A062379(n+1))²²`
-/

namespace A008835.P7093867567522192382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034386 n) (A062379 (n + 1)) ^ 2) ^ 2

end

end A008835.P7093867567522192382

namespace A008835

/-- `gcd(A034386(n), A062379(n+1))²²` -/
def P7093867567522192382.Spec : Prop :=
  ∀ n, (P7093867567522192382.a n : ℤ) = A008835 (n + 1)

end A008835

/-! ## A008835.P13823680686613787738

`gcd(A000188(A000188(n+1)), A068510(n+1))²²`
-/

namespace A008835.P13823680686613787738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000188 (A000188 (n + 1)).toNat) (A068510 (n + 1)) ^ 2) ^ 2

end

end A008835.P13823680686613787738

namespace A008835

/-- `gcd(A000188(A000188(n+1)), A068510(n+1))²²` -/
def P13823680686613787738.Spec : Prop :=
  ∀ n, (P13823680686613787738.a n : ℤ) = A008835 (n + 1)

end A008835

/-! ## A008835.P2036313239564564121

`A008833(A015053((n+1)²))²`
-/

namespace A008835.P2036313239564564121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A015053 ((n + 1) ^ 2)).toNat ^ 2

end

end A008835.P2036313239564564121

namespace A008835

/-- `A008833(A015053((n+1)²))²` -/
def P2036313239564564121.Spec : Prop :=
  ∀ n, P2036313239564564121.a n = A008835 (n + 1)

end A008835

/-!
# A008836: Liouville's function lambda(n) = (-1)^k, where k is number of primes dividing n (counted with multiplicity).

The programs for A008836, the canonical program `A008836.P691704047226663751` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008836 has offset 1).

The definition of A008836 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008836.P5894594435870694106

`(-1)^A001222(n+1)`
-/

namespace A008836.P5894594435870694106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

end

end A008836.P5894594435870694106

namespace A008836

/-- `(-1)^A001222(n+1)` -/
def P5894594435870694106.Spec : Prop :=
  ∀ n, P5894594435870694106.a n = (A008836 (n + 1) : ℚ)

end A008836

/-! ## A008836.P14902213906470334901

`(-1)^A063647(n+1)`
-/

namespace A008836.P14902213906470334901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A063647 (n + 1) : ℤ)

end

end A008836.P14902213906470334901

namespace A008836

/-- `(-1)^A063647(n+1)` -/
def P14902213906470334901.Spec : Prop :=
  ∀ n, P14902213906470334901.a n = (A008836 (n + 1) : ℚ)

end A008836

/-! ## A008836.P564945464804038574

`(-1)^A349905(n+1)`
-/

namespace A008836.P564945464804038574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A349905 (n + 1) : ℤ)

end

end A008836.P564945464804038574

namespace A008836

/-- `(-1)^A349905(n+1)` -/
def P564945464804038574.Spec : Prop :=
  ∀ n, P564945464804038574.a n = (A008836 (n + 1) : ℚ)

end A008836

/-! ## A008836.P27336495734811074

`1-2*A066829(n+1)`
-/

namespace A008836.P27336495734811074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A066829 (n + 1)

end

end A008836.P27336495734811074

namespace A008836

/-- `1-2*A066829(n+1)` -/
def P27336495734811074.Spec : Prop :=
  ∀ n, P27336495734811074.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P691704047226663751

`A033999(A001222(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008836

/-- `A033999(A001222(n+1))` -/
def P691704047226663751.Spec : Prop :=
  ∀ n, P691704047226663751.a n = A008836 (n + 1)

theorem P691704047226663751.correct : P691704047226663751.Spec := by
  intro n
  simp only [A008836, Nat.add_sub_cancel]

end A008836

/-! ## A008836.P234322375893736165

`A101455(A048691(n+1))`
-/

namespace A008836.P234322375893736165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A048691 (n + 1)).toNat

end

end A008836.P234322375893736165

namespace A008836

/-- `A101455(A048691(n+1))` -/
def P234322375893736165.Spec : Prop :=
  ∀ n, P234322375893736165.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P787011649514575179

`sin(A000005((n+1)²)*π/2)`
-/

namespace A008836.P787011649514575179
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((A000005 ((n + 1) ^ 2) : ℝ) * Real.pi / 2)

end

end A008836.P787011649514575179

namespace A008836

/-- `sin(A000005((n+1)²)*π/2)` -/
def P787011649514575179.Spec : Prop :=
  ∀ n, P787011649514575179.a n = (A008836 (n + 1) : ℝ)

end A008836

/-! ## A008836.P14536442311295569384

`(-1)^∑{e}[n+1, #]`
-/

namespace A008836.P14536442311295569384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A008836.P14536442311295569384

namespace A008836

/-- `(-1)^∑{e}[n+1, #]` -/
def P14536442311295569384.Spec : Prop :=
  ∀ n, P14536442311295569384.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P15020497736794528185

`∏{e}[n+1, (-1)^#]`
-/

namespace A008836.P15020497736794528185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-1) ^ Nat.factorization (f1 n) p

end

end A008836.P15020497736794528185

namespace A008836

/-- `∏{e}[n+1, (-1)^#]` -/
def P15020497736794528185.Spec : Prop :=
  ∀ n, P15020497736794528185.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P10875089467223035615

`cos(π*∑{e}[n+1, #])`
-/

namespace A008836.P10875089467223035615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.pi * ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℝ))

end

end A008836.P10875089467223035615

namespace A008836

/-- `cos(π*∑{e}[n+1, #])` -/
def P10875089467223035615.Spec : Prop :=
  ∀ n, P10875089467223035615.a n = (A008836 (n + 1) : ℝ)

end A008836

/-! ## A008836.P572044113209281894

`(-1)^∑{p}[n+1, val(n+1, #)]`
-/

namespace A008836.P572044113209281894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p)

end

end A008836.P572044113209281894

namespace A008836

/-- `(-1)^∑{p}[n+1, val(n+1, #)]` -/
def P572044113209281894.Spec : Prop :=
  ∀ n, P572044113209281894.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P7903070260427854945

`∏{p}[n+1, (-1)^val(n+1, #)]`
-/

namespace A008836.P7903070260427854945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-1) ^ SequenceMachineLib.valuation (n + 1) p

end

end A008836.P7903070260427854945

namespace A008836

/-- `∏{p}[n+1, (-1)^val(n+1, #)]` -/
def P7903070260427854945.Spec : Prop :=
  ∀ n, P7903070260427854945.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P12013103800876968028

`Δ[A002819(n)]`
-/

namespace A008836.P12013103800876968028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008836.P12013103800876968028

namespace A008836

/-- `Δ[A002819(n)]` -/
def P12013103800876968028.Spec : Prop :=
  ∀ n, P12013103800876968028.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P3487977010660672242

`A114006(n+1)%2`
-/

namespace A008836.P3487977010660672242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114006 (n + 1)) 2

end

end A008836.P3487977010660672242

namespace A008836

/-- `A114006(n+1)%2` -/
def P3487977010660672242.Spec : Prop :=
  ∀ n, P3487977010660672242.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P12564774637507281027

`∑{d}[n+1, A158522(#)]`
-/

namespace A008836.P12564774637507281027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d

end

end A008836.P12564774637507281027

namespace A008836

/-- `∑{d}[n+1, A158522(#)]` -/
def P12564774637507281027.Spec : Prop :=
  ∀ n, P12564774637507281027.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P6221069006615236694

`A015111(∑{e}[n+1, #])`
-/

namespace A008836.P6221069006615236694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015111 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A008836.P6221069006615236694

namespace A008836

/-- `A015111(∑{e}[n+1, #])` -/
def P6221069006615236694.Spec : Prop :=
  ∀ n, P6221069006615236694.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P14411713839024168050

`2*A065043(n+1)-1`
-/

namespace A008836.P14411713839024168050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065043 (n + 1) - 1

end

end A008836.P14411713839024168050

namespace A008836

/-- `2*A065043(n+1)-1` -/
def P14411713839024168050.Spec : Prop :=
  ∀ n, P14411713839024168050.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P1157830571576227944

`2*A007421(n+1)-3`
-/

namespace A008836.P1157830571576227944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007421 (n + 1) - 3

end

end A008836.P1157830571576227944

namespace A008836

/-- `2*A007421(n+1)-3` -/
def P1157830571576227944.Spec : Prop :=
  ∀ n, P1157830571576227944.a n = A008836 (n + 1)

end A008836

/-! ## A008836.P18058730609350666290

`(n+1)/A061019(n+1)`
-/

namespace A008836.P18058730609350666290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061019 (n + 1) : ℚ)

end

end A008836.P18058730609350666290

namespace A008836

/-- `(n+1)/A061019(n+1)` -/
def P18058730609350666290.Spec : Prop :=
  ∀ n, P18058730609350666290.a n = (A008836 (n + 1) : ℚ)

end A008836

/-!
# A008837: a(n) = p*(p-1)/2 for p = prime(n).

The programs for A008837, the canonical program `A008837.P8759727606906235899` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008837 has offset 1).

The definition of A008837 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008837.P3113593992669403895

`A036689(n+1)/2`
-/

namespace A008837.P3113593992669403895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036689 (n + 1) : ℚ) / 2

end

end A008837.P3113593992669403895

namespace A008837

/-- `A036689(n+1)/2` -/
def P3113593992669403895.Spec : Prop :=
  ∀ n, P3113593992669403895.a n = (A008837 (n + 1) : ℚ)

theorem P3113593992669403895.correct : P3113593992669403895.Spec := by
  intro n
  simp only [A008837, Nat.add_sub_cancel, A008837.P3113593992669403895.a, A008837.P8759727606906235899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A036689, A036689.P7293150385208763651.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008837

/-! ## A008837.P7805681751455185992

`C(A000040(n+1), 2)`
-/

namespace A008837.P7805681751455185992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat 2

end

end A008837.P7805681751455185992

namespace A008837

/-- `C(A000040(n+1), 2)` -/
def P7805681751455185992.Spec : Prop :=
  ∀ n, (P7805681751455185992.a n : ℤ) = A008837 (n + 1)

end A008837

/-! ## A008837.P8759727606906235899

`A000217(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008837

/-- `A000217(A000040(n+1)-1)` -/
def P8759727606906235899.Spec : Prop :=
  ∀ n, P8759727606906235899.a n = A008837 (n + 1)

theorem P8759727606906235899.correct : P8759727606906235899.Spec := by
  intro n
  simp only [A008837, Nat.add_sub_cancel]

end A008837

/-! ## A008837.P18201824864234310197

`∑[A371201(n)]`
-/

namespace A008837.P18201824864234310197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008837.P18201824864234310197

namespace A008837

/-- `∑[A371201(n)]` -/
def P18201824864234310197.Spec : Prop :=
  ∀ n, P18201824864234310197.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P579232509845878756

`C(Δ[A007504(n)], 2)`
-/

namespace A008837.P579232509845878756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A008837.P579232509845878756

namespace A008837

/-- `C(Δ[A007504(n)], 2)` -/
def P579232509845878756.Spec : Prop :=
  ∀ n, (P579232509845878756.a n : ℤ) = A008837 (n + 1)

end A008837

/-! ## A008837.P7098505885209311422

`C(p?[A259153(n)], 2)`
-/

namespace A008837.P7098505885209311422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A008837.P7098505885209311422

namespace A008837

/-- `C(p?[A259153(n)], 2)` -/
def P7098505885209311422.Spec : Prop :=
  ∀ n, (P7098505885209311422.a n : ℤ) = A008837 (n + 1)

end A008837

/-! ## A008837.P4139391275282803108

`A072205(n+1)-1`
-/

namespace A008837.P4139391275282803108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072205 (n + 1) - 1

end

end A008837.P4139391275282803108

namespace A008837

/-- `A072205(n+1)-1` -/
def P4139391275282803108.Spec : Prop :=
  ∀ n, P4139391275282803108.a n = A008837 (n + 1)

theorem P4139391275282803108.correct : P4139391275282803108.Spec := by
  intro n
  simp only [A008837, Nat.add_sub_cancel, A008837.P4139391275282803108.a, A008837.P8759727606906235899.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000217, A000217.P10269402890581615239.a, A072205, A072205.P4241057387685092381.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008837

/-! ## A008837.P16528543018983082094

`A179545(n+1)/3`
-/

namespace A008837.P16528543018983082094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179545 (n + 1) : ℚ) / 3

end

end A008837.P16528543018983082094

namespace A008837

/-- `A179545(n+1)/3` -/
def P16528543018983082094.Spec : Prop :=
  ∀ n, P16528543018983082094.a n = (A008837 (n + 1) : ℚ)

end A008837

/-! ## A008837.P14410920590103501229

`C(sqrt(A001248(n+1)), 2)`
-/

namespace A008837.P14410920590103501229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat 2

end

end A008837.P14410920590103501229

namespace A008837

/-- `C(sqrt(A001248(n+1)), 2)` -/
def P14410920590103501229.Spec : Prop :=
  ∀ n, (P14410920590103501229.a n : ℤ) = A008837 (n + 1)

end A008837

/-! ## A008837.P7725641575114963730

`ceil(A306190(n+1)/2)`
-/

namespace A008837.P7725641575114963730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A306190 (n + 1) : ℚ) / 2⌉

end

end A008837.P7725641575114963730

namespace A008837

/-- `ceil(A306190(n+1)/2)` -/
def P7725641575114963730.Spec : Prop :=
  ∀ n, P7725641575114963730.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P12464381424495774329

`(A119959(n+1)-1)/2`
-/

namespace A008837.P12464381424495774329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119959 (n + 1) - 1 : ℚ) / 2

end

end A008837.P12464381424495774329

namespace A008837

/-- `(A119959(n+1)-1)/2` -/
def P12464381424495774329.Spec : Prop :=
  ∀ n, P12464381424495774329.a n = (A008837 (n + 1) : ℚ)

end A008837

/-! ## A008837.P4779510920809546575

`A045717(n+1)+A007504(n)`
-/

namespace A008837.P4779510920809546575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 1) + A007504 n

end

end A008837.P4779510920809546575

namespace A008837

/-- `A045717(n+1)+A007504(n)` -/
def P4779510920809546575.Spec : Prop :=
  ∀ n, P4779510920809546575.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P2322005851068919362

`A079725(n+1)+A014284(n+1)`
-/

namespace A008837.P2322005851068919362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 1) + A014284 (n + 1)

end

end A008837.P2322005851068919362

namespace A008837

/-- `A079725(n+1)+A014284(n+1)` -/
def P2322005851068919362.Spec : Prop :=
  ∀ n, P2322005851068919362.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P2152140275108439258

`A034953(n+1)-A000040(n+1)`
-/

namespace A008837.P2152140275108439258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - A000040 (n + 1)

end

end A008837.P2152140275108439258

namespace A008837

/-- `A034953(n+1)-A000040(n+1)` -/
def P2152140275108439258.Spec : Prop :=
  ∀ n, P2152140275108439258.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P13134162688387135606

`A001248(n+1)-A034953(n+1)`
-/

namespace A008837.P13134162688387135606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A034953 (n + 1)

end

end A008837.P13134162688387135606

namespace A008837

/-- `A001248(n+1)-A034953(n+1)` -/
def P13134162688387135606.Spec : Prop :=
  ∀ n, P13134162688387135606.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P8464189913484495837

`A116995(n+1)-A001248(n+1)`
-/

namespace A008837.P8464189913484495837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116995 (n + 1) - A001248 (n + 1)

end

end A008837.P8464189913484495837

namespace A008837

/-- `A116995(n+1)-A001248(n+1)` -/
def P8464189913484495837.Spec : Prop :=
  ∀ n, P8464189913484495837.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P9015414048303022026

`A143215(n+1)-A034956(n+1)`
-/

namespace A008837.P9015414048303022026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143215 (n + 1) - A034956 (n + 1)

end

end A008837.P9015414048303022026

namespace A008837

/-- `A143215(n+1)-A034956(n+1)` -/
def P9015414048303022026.Spec : Prop :=
  ∀ n, P9015414048303022026.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P16512473242062295233

`A179545(n+1)-A036689(n+1)`
-/

namespace A008837.P16512473242062295233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179545 (n + 1) - A036689 (n + 1)

end

end A008837.P16512473242062295233

namespace A008837

/-- `A179545(n+1)-A036689(n+1)` -/
def P16512473242062295233.Spec : Prop :=
  ∀ n, P16512473242062295233.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P12761344617581890983

`A117961(n+1)-A116995(n+1)`
-/

namespace A008837.P12761344617581890983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117961 (n + 1) - A116995 (n + 1)

end

end A008837.P12761344617581890983

namespace A008837

/-- `A117961(n+1)-A116995(n+1)` -/
def P12761344617581890983.Spec : Prop :=
  ∀ n, P12761344617581890983.a n = A008837 (n + 1)

end A008837

/-! ## A008837.P17220241278172575007

`A110494(n+1)-A130291(n+1)`
-/

namespace A008837.P17220241278172575007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110494 (n + 1) - A130291 (n + 1)

end

end A008837.P17220241278172575007

namespace A008837

/-- `A110494(n+1)-A130291(n+1)` -/
def P17220241278172575007.Spec : Prop :=
  ∀ n, P17220241278172575007.a n = A008837 (n + 1)

end A008837

/-!
# A008838: a(n) = floor(n/8)*ceiling(n/8).

The programs for A008838, the canonical program `A008838.P11497290807893448015` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008838 has offset 0).

The definition of A008838 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/8)*ceil(n/8)` (program `A008838.P11497290807893448015`, by `A008838.P11497290807893448015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008838.P11497290807893448015

`floor(n/8)*ceil(n/8)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008838

/-- `floor(n/8)*ceil(n/8)` -/
def P11497290807893448015.Spec : Prop :=
  ∀ n, P11497290807893448015.a n = A008838 n

theorem P11497290807893448015.correct : P11497290807893448015.Spec := by
  intro n
  simp only [A008838]

end A008838

/-! ## A008838.P5735933559588883883

`A008238(A004525(n))`
-/

namespace A008838.P5735933559588883883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A004525 n).toNat

end

end A008838.P5735933559588883883

namespace A008838

/-- `A008238(A004525(n))` -/
def P5735933559588883883.Spec : Prop :=
  ∀ n, P5735933559588883883.a n = A008838 n

end A008838

/-! ## A008838.P3289152163903507746

`A008238(A236916(n))`
-/

namespace A008838.P3289152163903507746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A236916 n).toNat

end

end A008838.P3289152163903507746

namespace A008838

/-- `A008238(A236916(n))` -/
def P3289152163903507746.Spec : Prop :=
  ∀ n, P3289152163903507746.a n = A008838 n

end A008838

/-! ## A008838.P990312622875914595

`A008737(A330881(n))`
-/

namespace A008838.P990312622875914595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 (A330881 n).toNat

end

end A008838.P990312622875914595

namespace A008838

/-- `A008737(A330881(n))` -/
def P990312622875914595.Spec : Prop :=
  ∀ n, P990312622875914595.a n = A008838 n

end A008838

/-! ## A008838.P3323227532852574641

`A008737((A293990(n)-1)/2)`
-/

namespace A008838.P3323227532852574641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 (SequenceMachineLib.roundAway ((A293990 n - 1 : ℚ) / 2)).toNat

end

end A008838.P3323227532852574641

namespace A008838

/-- `A008737((A293990(n)-1)/2)` -/
def P3323227532852574641.Spec : Prop :=
  ∀ n, P3323227532852574641.a n = A008838 n

end A008838

/-! ## A008838.P10635374933970203368

`A002620(or(A002265(n), A166486(n)))`
-/

namespace A008838.P10635374933970203368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Int.lor (A002265 n) (A166486 n)).toNat

end

end A008838.P10635374933970203368

namespace A008838

/-- `A002620(or(A002265(n), A166486(n)))` -/
def P10635374933970203368.Spec : Prop :=
  ∀ n, P10635374933970203368.a n = A008838 n

end A008838

/-! ## A008838.P13845636344789047588

`A110656(n+1)*A110656(n)-A110656(n)`
-/

namespace A008838.P13845636344789047588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n + 1) * A110656 n - A110656 n

end

end A008838.P13845636344789047588

namespace A008838

/-- `A110656(n+1)*A110656(n)-A110656(n)` -/
def P13845636344789047588.Spec : Prop :=
  ∀ n, P13845636344789047588.a n = A008838 n

end A008838

/-! ## A008838.P3236740637873735924

`A008238(A002265(n+3)+A002265(n))`
-/

namespace A008838.P3236740637873735924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 (A002265 (n + 3) + A002265 n).toNat

end

end A008838.P3236740637873735924

namespace A008838

/-- `A008238(A002265(n+3)+A002265(n))` -/
def P3236740637873735924.Spec : Prop :=
  ∀ n, P3236740637873735924.a n = A008838 n

end A008838

/-! ## A008838.P15115301300896977873

`A008857(A248375(n))`
-/

namespace A008838.P15115301300896977873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008857 (A248375 n).toNat

end

end A008838.P15115301300896977873

namespace A008838

/-- `A008857(A248375(n))` -/
def P15115301300896977873.Spec : Prop :=
  ∀ n, P15115301300896977873.a n = A008838 n

end A008838

/-! ## A008838.P2161900531828311818

`∑[A142150(A142150(A002265(2*n)))]`
-/

namespace A008838.P2161900531828311818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A142150 (A002265 (2 * n)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008838.P2161900531828311818

namespace A008838

/-- `∑[A142150(A142150(A002265(2*n)))]` -/
def P2161900531828311818.Spec : Prop :=
  ∀ n, P2161900531828311818.a n = A008838 n

end A008838

/-! ## A008838.P5664859378639634370

`A008238(n-A140201(A002265(2*n)))`
-/

namespace A008838.P5664859378639634370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008238 ((n : ℤ) - A140201 (A002265 (2 * n)).toNat).toNat

end

end A008838.P5664859378639634370

namespace A008838

/-- `A008238(n-A140201(A002265(2*n)))` -/
def P5664859378639634370.Spec : Prop :=
  ∀ n, P5664859378639634370.a n = A008838 n

end A008838

/-! ## A008838.P3150079130552045805

`A028391(A110656(n+1)*A110656(n))`
-/

namespace A008838.P3150079130552045805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 (A110656 (n + 1) * A110656 n).toNat

end

end A008838.P3150079130552045805

namespace A008838

/-- `A028391(A110656(n+1)*A110656(n))` -/
def P3150079130552045805.Spec : Prop :=
  ∀ n, P3150079130552045805.a n = A008838 n

end A008838

/-! ## A008838.P8258122444675731749

`A002265(or(A002265(n), A166486(n))²)`
-/

namespace A008838.P8258122444675731749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lor (A002265 n) (A166486 n) ^ 2).toNat

end

end A008838.P8258122444675731749

namespace A008838

/-- `A002265(or(A002265(n), A166486(n))²)` -/
def P8258122444675731749.Spec : Prop :=
  ∀ n, P8258122444675731749.a n = A008838 n

end A008838

/-!
# A008839: Numbers k such that the decimal expansion of 5^k contains no zeros.

The programs for A008839, there is no canonical definition to state claims against.
-/

/-! ## A008839.P1145141603223159478

`lt[0, ∏{digits}[5^n, #]]`
-/

namespace A008839.P1145141603223159478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008839.P1145141603223159478

/-! ## A008839.P2755787894354857834

`record[A305925(n)]`
-/

namespace A008839.P2755787894354857834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008839.P2755787894354857834

/-! ## A008839.P10554576486182341973

`eq[0, A253638(n)]`
-/

namespace A008839.P10554576486182341973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008839.P10554576486182341973

/-! ## A008839.P16511158384738493956

`val(A195948(n+1), 5)`
-/

namespace A008839.P16511158384738493956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A195948 (n + 1)).toNat 5

end

end A008839.P16511158384738493956

/-! ## A008839.P2849629498819969233

`A305925(lt[∑{digits}[2*n, #], 12])`
-/

namespace A008839.P2849629498819969233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305925 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A008839.P2849629498819969233

/-!
# A008840: Number of monotone self-dual Boolean functions of n variables that are inequivalent under the symmetric group.

The programs for A008840, there is no canonical definition to state claims against.
-/

/-! ## A008840.P9592610045853712217

`A107765(n)+a(n-1)` with `a(0)=0`
-/

namespace A008840.P9592610045853712217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A107765 n + a (n - 1)

end

end A008840.P9592610045853712217

/-! ## A008840.P16601034034226965352

`∑[A214429(round(ϕ*a(n-1))+1)]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A008840.P16601034034226965352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1, 1] fun n f1 =>
  A214429 (SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008840.P16601034034226965352

/-! ## A008840.P3885310731731755113

`∑[A107765(A028310(n))]-1`
-/

namespace A008840.P3885310731731755113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107765 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A008840.P3885310731731755113

/-!
# A008843: Squares of NSW numbers (A002315): x^2 such that x^2 - 2y^2 = -1 for some y.

The programs for A008843, the canonical program `A008843.P10618274077276836343` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008843 has offset 0).

The definition of A008843 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008843.P10618274077276836343

`34*a(n-1)-a(n-2)+16` with `a(0)=1, a(1)=49`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008843

/-- `34*a(n-1)-a(n-2)+16` -/
def P10618274077276836343.Spec : Prop :=
  ∀ n, P10618274077276836343.a n = A008843 n

theorem P10618274077276836343.correct : P10618274077276836343.Spec := by
  intro n
  simp only [A008843]

end A008843

/-! ## A008843.P9614945656866548167

`A002315(n)²`
-/

namespace A008843.P9614945656866548167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n ^ 2

end

end A008843.P9614945656866548167

namespace A008843

/-- `A002315(n)²` -/
def P9614945656866548167.Spec : Prop :=
  ∀ n, P9614945656866548167.a n = A008843 n

end A008843

/-! ## A008843.P13984342790132259379

`A001108(2*n+1)`
-/

namespace A008843.P13984342790132259379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 (2 * n + 1)

end

end A008843.P13984342790132259379

namespace A008843

/-- `A001108(2*n+1)` -/
def P13984342790132259379.Spec : Prop :=
  ∀ n, P13984342790132259379.a n = A008843 n

end A008843

/-! ## A008843.P12627928305311435138

`2*A008844(n)-1`
-/

namespace A008843.P12627928305311435138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008844 n - 1

end

end A008843.P12627928305311435138

namespace A008843

/-- `2*A008844(n)-1` -/
def P12627928305311435138.Spec : Prop :=
  ∀ n, P12627928305311435138.a n = A008843 n

end A008843

/-! ## A008843.P6451536576592444040

`floor(A046176(n+1)*sqrt(2))`
-/

namespace A008843.P6451536576592444040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046176 (n + 1) : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A008843.P6451536576592444040

namespace A008843

/-- `floor(A046176(n+1)*sqrt(2))` -/
def P6451536576592444040.Spec : Prop :=
  ∀ n, P6451536576592444040.a n = A008843 n

end A008843

/-! ## A008843.P14357069182525616538

`2*A001653(n+1)²-1`
-/

namespace A008843.P14357069182525616538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001653 (n + 1) ^ 2 - 1

end

end A008843.P14357069182525616538

namespace A008843

/-- `2*A001653(n+1)²-1` -/
def P14357069182525616538.Spec : Prop :=
  ∀ n, P14357069182525616538.a n = A008843 n

end A008843

/-! ## A008843.P13260188027746540906

`ceil(∑[((sqrt(2)+1)^n)²])²`
-/

namespace A008843.P13260188027746540906
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2

end

end A008843.P13260188027746540906

namespace A008843

/-- `ceil(∑[((sqrt(2)+1)^n)²])²` -/
def P13260188027746540906.Spec : Prop :=
  ∀ n, P13260188027746540906.a n = A008843 n

end A008843

/-! ## A008843.P18384836011615228773

`A008845(n)+1`
-/

namespace A008843.P18384836011615228773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008845 n + 1

end

end A008843.P18384836011615228773

namespace A008843

/-- `A008845(n)+1` -/
def P18384836011615228773.Spec : Prop :=
  ∀ n, P18384836011615228773.a n = A008843 n

end A008843

/-! ## A008843.P11288282664936903484

`A048739(4*n)`
-/

namespace A008843.P11288282664936903484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048739 (4 * n)

end

end A008843.P11288282664936903484

namespace A008843

/-- `A048739(4*n)` -/
def P11288282664936903484.Spec : Prop :=
  ∀ n, P11288282664936903484.a n = A008843 n

end A008843

/-! ## A008843.P15650684332197301752

`A111587(4*n)`
-/

namespace A008843.P15650684332197301752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111587 (4 * n)

end

end A008843.P15650684332197301752

namespace A008843

/-- `A111587(4*n)` -/
def P15650684332197301752.Spec : Prop :=
  ∀ n, P15650684332197301752.a n = A008843 n

end A008843

/-!
# A008844: Squares of sequence A001653: y^2 such that x^2 - 2*y^2 = -1 for some x.

The programs for A008844, the canonical program `A008844.P17120387419384741438` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008844 has offset 0).

The definition of A008844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008844.P17120387419384741438

`34*a(n-1)-a(n-2)-8` with `a(0)=1, a(1)=25`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008844

/-- `34*a(n-1)-a(n-2)-8` -/
def P17120387419384741438.Spec : Prop :=
  ∀ n, P17120387419384741438.a n = A008844 n

theorem P17120387419384741438.correct : P17120387419384741438.Spec := by
  intro n
  simp only [A008844]

end A008844

/-! ## A008844.P12043338105750699302

`A078522(n+1)+1`
-/

namespace A008844.P12043338105750699302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078522 (n + 1) + 1

end

end A008844.P12043338105750699302

namespace A008844

/-- `A078522(n+1)+1` -/
def P12043338105750699302.Spec : Prop :=
  ∀ n, P12043338105750699302.a n = A008844 n

end A008844

/-! ## A008844.P12792914842714652413

`ceil(A046176(n+1)/sqrt(2))`
-/

namespace A008844.P12792914842714652413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046176 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌉

end

end A008844.P12792914842714652413

namespace A008844

/-- `ceil(A046176(n+1)/sqrt(2))` -/
def P12792914842714652413.Spec : Prop :=
  ∀ n, P12792914842714652413.a n = A008844 n

end A008844

/-! ## A008844.P18118240570605635679

`A001652(n)²+A046090(n)²`
-/

namespace A008844.P18118240570605635679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n ^ 2 + A046090 n ^ 2

end

end A008844.P18118240570605635679

namespace A008844

/-- `A001652(n)²+A046090(n)²` -/
def P18118240570605635679.Spec : Prop :=
  ∀ n, P18118240570605635679.a n = A008844 n

end A008844

/-! ## A008844.P5952067770866900073

`1/8*((1+sqrt(2))^(4*n+2)+(1-sqrt(2))^(4*n+2)+2)`
-/

namespace A008844.P5952067770866900073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 8 : ℝ) * ((1 + Real.sqrt (2 : ℝ)) ^ (4 * n + 2) + (1 - Real.sqrt (2 : ℝ)) ^ (4 * n + 2) + 2)

end

end A008844.P5952067770866900073

namespace A008844

/-- `1/8*((1+sqrt(2))^(4*n+2)+(1-sqrt(2))^(4*n+2)+2)` -/
def P5952067770866900073.Spec : Prop :=
  ∀ n, P5952067770866900073.a n = (A008844 n : ℝ)

end A008844

/-! ## A008844.P17750513614918749615

`record[1-floor(a(n-1)/(3-sqrt(8)))]` with `a(0)=1`
-/

namespace A008844.P17750513614918749615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - ⌊(f1 (n - 1) : ℝ) / (3 - Real.sqrt (8 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008844.P17750513614918749615

namespace A008844

/-- `record[1-floor(a(n-1)/(3-sqrt(8)))]` -/
def P17750513614918749615.Spec : Prop :=
  ∀ n, P17750513614918749615.a n = A008844 n

end A008844

/-! ## A008844.P4330106974157354779

`record[-floor((sqrt(2)+1)*a(n-1))]²` with `a(0)=1`
-/

namespace A008844.P4330106974157354779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -⌊(Real.sqrt (2 : ℝ) + 1) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A008844.P4330106974157354779

namespace A008844

/-- `record[-floor((sqrt(2)+1)*a(n-1))]²` -/
def P4330106974157354779.Spec : Prop :=
  ∀ n, P4330106974157354779.a n = A008844 n

end A008844

/-! ## A008844.P12617552249372815404

`record[a(n-2)-a(n-1)-a(n-1)]²` with `a(0)=1, a(1)=0`
-/

namespace A008844.P12617552249372815404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A008844.P12617552249372815404

namespace A008844

/-- `record[a(n-2)-a(n-1)-a(n-1)]²` -/
def P12617552249372815404.Spec : Prop :=
  ∀ n, P12617552249372815404.a n = A008844 n

end A008844

/-! ## A008844.P380718332215951853

`A089928(4*n)`
-/

namespace A008844.P380718332215951853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089928 (4 * n)

end

end A008844.P380718332215951853

namespace A008844

/-- `A089928(4*n)` -/
def P380718332215951853.Spec : Prop :=
  ∀ n, P380718332215951853.a n = A008844 n

end A008844

/-! ## A008844.P10571193960154674065

`Δ[A001109(n)]²`
-/

namespace A008844.P10571193960154674065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A008844.P10571193960154674065

namespace A008844

/-- `Δ[A001109(n)]²` -/
def P10571193960154674065.Spec : Prop :=
  ∀ n, P10571193960154674065.a n = A008844 n

end A008844

/-!
# A008845: Numbers k such that k+1 and k/2+1 are squares.

The programs for A008845, the canonical program `A008845.P7229232313566230322` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008845 has offset 0).

The definition of A008845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008845.P7229232313566230322

`34*a(n-1)-a(n-2)+48` with `a(0)=0, a(1)=48`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008845

/-- `34*a(n-1)-a(n-2)+48` -/
def P7229232313566230322.Spec : Prop :=
  ∀ n, P7229232313566230322.a n = A008845 n

theorem P7229232313566230322.correct : P7229232313566230322.Spec := by
  intro n
  simp only [A008845]

end A008845

/-! ## A008845.P15526200815569867538

`16*A075528(n)`
-/

namespace A008845.P15526200815569867538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A075528 n

end

end A008845.P15526200815569867538

namespace A008845

/-- `16*A075528(n)` -/
def P15526200815569867538.Spec : Prop :=
  ∀ n, P15526200815569867538.a n = A008845 n

end A008845

/-! ## A008845.P9477910334701714975

`2*(A008844(n)-1)`
-/

namespace A008845.P9477910334701714975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008844 n - 1)

end

end A008845.P9477910334701714975

namespace A008845

/-- `2*(A008844(n)-1)` -/
def P9477910334701714975.Spec : Prop :=
  ∀ n, P9477910334701714975.a n = A008845 n

end A008845

/-! ## A008845.P1195459783839629999

`ceil(∑[((sqrt(2)+1)^n)²])²-1`
-/

namespace A008845.P1195459783839629999
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2 - 1

end

end A008845.P1195459783839629999

namespace A008845

/-- `ceil(∑[((sqrt(2)+1)^n)²])²-1` -/
def P1195459783839629999.Spec : Prop :=
  ∀ n, P1195459783839629999.a n = A008845 n

end A008845

/-! ## A008845.P18390281825457972426

`xor(1, ceil(∑[((sqrt(2)+1)^n)²])²)`
-/

namespace A008845.P18390281825457972426
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2)

end

end A008845.P18390281825457972426

namespace A008845

/-- `xor(1, ceil(∑[((sqrt(2)+1)^n)²])²)` -/
def P18390281825457972426.Spec : Prop :=
  ∀ n, P18390281825457972426.a n = A008845 n

end A008845

/-! ## A008845.P16595837965743539938

`6*∑[34*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=8`
-/

namespace A008845.P16595837965743539938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008845.P16595837965743539938

namespace A008845

/-- `6*∑[34*a(n-1)-a(n-2)]` -/
def P16595837965743539938.Spec : Prop :=
  ∀ n, P16595837965743539938.a n = A008845 n

end A008845

/-! ## A008845.P3791405169735023096

`4*A098602(n)`
-/

namespace A008845.P3791405169735023096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A098602 n

end

end A008845.P3791405169735023096

namespace A008845

/-- `4*A098602(n)` -/
def P3791405169735023096.Spec : Prop :=
  ∀ n, P3791405169735023096.a n = A008845 n

end A008845

/-! ## A008845.P1529288674421404412

`8*A029549(n)`
-/

namespace A008845.P1529288674421404412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A029549 n

end

end A008845.P1529288674421404412

namespace A008845

/-- `8*A029549(n)` -/
def P1529288674421404412.Spec : Prop :=
  ∀ n, P1529288674421404412.a n = A008845 n

end A008845

/-! ## A008845.P1715051506979933267

`∑[A081554(2*n)]`
-/

namespace A008845.P1715051506979933267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081554 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008845.P1715051506979933267

namespace A008845

/-- `∑[A081554(2*n)]` -/
def P1715051506979933267.Spec : Prop :=
  ∀ n, P1715051506979933267.a n = A008845 n

end A008845

/-! ## A008845.P3870961978577572436

`∑[8*A082405(n)]`
-/

namespace A008845.P3870961978577572436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A082405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008845.P3870961978577572436

namespace A008845

/-- `∑[8*A082405(n)]` -/
def P3870961978577572436.Spec : Prop :=
  ∀ n, P3870961978577572436.a n = A008845 n

end A008845

/-!
# A008846: Hypotenuses of primitive Pythagorean triangles.

The programs for A008846, the canonical program `A008846.P8671149939260561417` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008846 has offset 1).

The definition of A008846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6594 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008846.P2492751483257262797

`sqrt(A360280(n+1))`
-/

namespace A008846.P2492751483257262797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A360280 (n + 1) : ℝ)

end

end A008846.P2492751483257262797

namespace A008846

/-- `sqrt(A360280(n+1))` -/
def P2492751483257262797.Spec : Prop :=
  ∀ n, P2492751483257262797.a n = (A008846 (n + 1) : ℝ)

end A008846

/-! ## A008846.P18069047192776885187

`A157075(n+1)/2`
-/

namespace A008846.P18069047192776885187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157075 (n + 1) : ℚ) / 2

end

end A008846.P18069047192776885187

namespace A008846

/-- `A157075(n+1)/2` -/
def P18069047192776885187.Spec : Prop :=
  ∀ n, P18069047192776885187.a n = (A008846 (n + 1) : ℚ)

theorem P18069047192776885187.correct : P18069047192776885187.Spec := by
  intro n
  simp only [A008846, Nat.add_sub_cancel, A008846.P18069047192776885187.a, A008846.P8671149939260561417.f1, A008846.P8671149939260561417.a, A008784, A008784.P11903729417169927821.f1, A008784.P11903729417169927821.a, A157075, A157075.P6307101692987451821.a, A187074, A187074.P12495670548098968.a, A011655, A011655.P15232422005463079339.a, A072437, A072437.P9080563627844174689.f1, A072437.P9080563627844174689.f2, A072437.P9080563627844174689.a, A098725, A098725.P3697398069099776754.a, A152822, A152822.P16322060659010648271.a, A140211, A140211.P16537942396198288479.f1, A140211.P16537942396198288479.a, A166486, A166486.P13501783531280266850.a, A028310, A028310.P18130301328277559831.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008846

/-! ## A008846.P2276882282585780500

`4*A094178(n+1)+1`
-/

namespace A008846.P2276882282585780500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094178 (n + 1) + 1

end

end A008846.P2276882282585780500

namespace A008846

/-- `4*A094178(n+1)+1` -/
def P2276882282585780500.Spec : Prop :=
  ∀ n, P2276882282585780500.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P9982322411558995331

`A141614(n)+a(n-1)` with `a(0)=5`
-/

namespace A008846.P9982322411558995331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A141614 n + a (n - 1)

end

end A008846.P9982322411558995331

namespace A008846

/-- `A141614(n)+a(n-1)` -/
def P9982322411558995331.Spec : Prop :=
  ∀ n, P9982322411558995331.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P14891052524074110621

`A360280(n+1)%A157075(n+1)`
-/

namespace A008846.P14891052524074110621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360280 (n + 1)) (A157075 (n + 1))

end

end A008846.P14891052524074110621

namespace A008846

/-- `A360280(n+1)%A157075(n+1)` -/
def P14891052524074110621.Spec : Prop :=
  ∀ n, P14891052524074110621.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P15017866670674821580

`A004613(n+2)`
-/

namespace A008846.P15017866670674821580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004613 (n + 2)

end

end A008846.P15017866670674821580

namespace A008846

/-- `A004613(n+2)` -/
def P15017866670674821580.Spec : Prop :=
  ∀ n, P15017866670674821580.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P8801800496328582617

`∩[2*n+1, A008784(n+2)]`
-/

namespace A008846.P8801800496328582617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008846.P8801800496328582617

namespace A008846

/-- `∩[2*n+1, A008784(n+2)]` -/
def P8801800496328582617.Spec : Prop :=
  ∀ n, (P8801800496328582617.a n : ℤ) = A008846 (n + 1)

end A008846

/-! ## A008846.P11983609202099622974

`filter[A008784(n+1), A355450(#)]`
-/

namespace A008846.P11983609202099622974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A008846.P11983609202099622974

namespace A008846

/-- `filter[A008784(n+1), A355450(#)]` -/
def P11983609202099622974.Spec : Prop :=
  ∀ n, P11983609202099622974.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P8671149939260561417

`filter[A008784(n+2), A187074(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008846

/-- `filter[A008784(n+2), A187074(#)]` -/
def P8671149939260561417.Spec : Prop :=
  ∀ n, P8671149939260561417.a n = A008846 (n + 1)

theorem P8671149939260561417.correct : P8671149939260561417.Spec := by
  intro n
  simp only [A008846, Nat.add_sub_cancel]

end A008846

/-! ## A008846.P15250776499018583442

`filter[A008784(n+2), A093719(#)]`
-/

namespace A008846.P15250776499018583442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A008846.P15250776499018583442

namespace A008846

/-- `filter[A008784(n+2), A093719(#)]` -/
def P15250776499018583442.Spec : Prop :=
  ∀ n, P15250776499018583442.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P14871745819978450358

`filter[A008784(n+2), A152822(#)]`
-/

namespace A008846.P14871745819978450358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A008846.P14871745819978450358

namespace A008846

/-- `filter[A008784(n+2), A152822(#)]` -/
def P14871745819978450358.Spec : Prop :=
  ∀ n, P14871745819978450358.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P456147578010318823

`filter[A008784(n+2), A320106(#)]`
-/

namespace A008846.P456147578010318823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A008846.P456147578010318823

namespace A008846

/-- `filter[A008784(n+2), A320106(#)]` -/
def P456147578010318823.Spec : Prop :=
  ∀ n, P456147578010318823.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P7742157964687941094

`filter[A008784(n+2), A035263(#)]`
-/

namespace A008846.P7742157964687941094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008784 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A008846.P7742157964687941094

namespace A008846

/-- `filter[A008784(n+2), A035263(#)]` -/
def P7742157964687941094.Spec : Prop :=
  ∀ n, P7742157964687941094.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P18383626512889233388

`record[A020882(n+1)%A020882(n+2)]`
-/

namespace A008846.P18383626512889233388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020882 (n + 1)) (A020882 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008846.P18383626512889233388

namespace A008846

/-- `record[A020882(n+1)%A020882(n+2)]` -/
def P18383626512889233388.Spec : Prop :=
  ∀ n, P18383626512889233388.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P591823275411021702

`∩[2*n+1, A057129(n+2)]`
-/

namespace A008846.P591823275411021702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008846.P591823275411021702

namespace A008846

/-- `∩[2*n+1, A057129(n+2)]` -/
def P591823275411021702.Spec : Prop :=
  ∀ n, (P591823275411021702.a n : ℤ) = A008846 (n + 1)

end A008846

/-! ## A008846.P14560582784350720326

`filter[A057129(n+1), A355450(#)]`
-/

namespace A008846.P14560582784350720326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A008846.P14560582784350720326

namespace A008846

/-- `filter[A057129(n+1), A355450(#)]` -/
def P14560582784350720326.Spec : Prop :=
  ∀ n, P14560582784350720326.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P6709523480233709183

`filter[A057129(n+2), A093719(#)]`
-/

namespace A008846.P6709523480233709183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A008846.P6709523480233709183

namespace A008846

/-- `filter[A057129(n+2), A093719(#)]` -/
def P6709523480233709183.Spec : Prop :=
  ∀ n, P6709523480233709183.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P16836323405639939096

`filter[A057129(n+2), A320106(#)]`
-/

namespace A008846.P16836323405639939096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A008846.P16836323405639939096

namespace A008846

/-- `filter[A057129(n+2), A320106(#)]` -/
def P16836323405639939096.Spec : Prop :=
  ∀ n, P16836323405639939096.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P10171625558878534296

`filter[A057129(n+2), A354354(#)]`
-/

namespace A008846.P10171625558878534296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A008846.P10171625558878534296

namespace A008846

/-- `filter[A057129(n+2), A354354(#)]` -/
def P10171625558878534296.Spec : Prop :=
  ∀ n, P10171625558878534296.a n = A008846 (n + 1)

end A008846

/-! ## A008846.P13389754331858230649

`filter[A057129(n+2), A373156(#)]`
-/

namespace A008846.P13389754331858230649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A008846.P13389754331858230649

namespace A008846

/-- `filter[A057129(n+2), A373156(#)]` -/
def P13389754331858230649.Spec : Prop :=
  ∀ n, P13389754331858230649.a n = A008846 (n + 1)

end A008846

/-!
# A008847: Numbers k such that sum of divisors of k^2 is a square.

The programs for A008847, there is no canonical definition to state claims against.
-/

/-! ## A008847.P9010827971708322537

`sqrt(A008848(n+1))`
-/

namespace A008847.P9010827971708322537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008848 (n + 1) : ℝ)

end

end A008847.P9010827971708322537

/-! ## A008847.P1869760268622755387

`A008848(n+1)^(A054977(n)/2)`
-/

namespace A008847.P1869760268622755387
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008848 (n + 1) : ℝ) ^ ((A054977 n : ℚ) / 2 : ℝ)

end

end A008847.P1869760268622755387

/-! ## A008847.P12783162189038495547

`root(A008848(n+1), 2%A005276(n+1))`
-/

namespace A008847.P12783162189038495547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008848 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A005276 (n + 1)) : ℝ))

end

end A008847.P12783162189038495547

/-! ## A008847.P5063584939945004433

`root(A008848(n+1), A001316(A001316(n)))`
-/

namespace A008847.P5063584939945004433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008848 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A008847.P5063584939945004433

/-! ## A008847.P15613787759213920229

`root(A008848(n+1), A071188(A071188(n+1)))`
-/

namespace A008847.P15613787759213920229
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008848 (n + 1) : ℝ) ^ (1 / (A071188 (A071188 (n + 1)).toNat : ℝ))

end

end A008847.P15613787759213920229

/-! ## A008847.P16544713017411890588

`A008848(n+1)^(A005843(n)/A008574(n))`
-/

namespace A008847.P16544713017411890588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A008848 (n + 1) : ℝ) ^ ((A005843 n : ℚ) / (A008574 n : ℚ) : ℝ)

end

end A008847.P16544713017411890588

/-!
# A008848: Squares whose sum of divisors is a square.

The programs for A008848, there is no canonical definition to state claims against.
-/

/-! ## A008848.P17318902947130472434

`A008847(n+1)²`
-/

namespace A008848.P17318902947130472434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008847 (n + 1) ^ 2

end

end A008848.P17318902947130472434

/-! ## A008848.P5730832930831919943

`A008847(n+1)^(A000007(n)+2)`
-/

namespace A008848.P5730832930831919943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A008848.P5730832930831919943

/-! ## A008848.P1332491991769073598

`A008847(n+1)^A020639(A008864(n+1))`
-/

namespace A008848.P1332491991769073598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) : ℚ) ^ (A020639 (A008864 (n + 1)).toNat : ℤ)

end

end A008848.P1332491991769073598

/-! ## A008848.P11484281720748960455

`A008847(n+1)^A020639(A008866(n+1))`
-/

namespace A008848.P11484281720748960455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) : ℚ) ^ (A020639 (A008866 (n + 1)).toNat : ℤ)

end

end A008848.P11484281720748960455

/-! ## A008848.P4671884641592041640

`A008847(A005843(n+1)/2)*A008847(n+1)`
-/

namespace A008848.P4671884641592041640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008847 (SequenceMachineLib.roundAway ((A005843 (n + 1) : ℚ) / 2)).toNat * A008847 (n + 1)

end

end A008848.P4671884641592041640

/-! ## A008848.P17925955787381631848

`A008847(n+1)^A020639(A014657(n+2)+1)`
-/

namespace A008848.P17925955787381631848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) : ℚ) ^ (A020639 (A014657 (n + 2) + 1).toNat : ℤ)

end

end A008848.P17925955787381631848

/-! ## A008848.P8691968024669186079

`A008847(n+1)^A130883(A015138(C(2, n)+1))`
-/

namespace A008848.P8691968024669186079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) : ℚ) ^ (A130883 (A015138 (Nat.choose 2 n + 1)).toNat : ℤ)

end

end A008848.P8691968024669186079

/-! ## A008848.P9994503149157819260

`(A008847(n+1)+A000007(A015138(n+1)))*A008847(n+1)`
-/

namespace A008848.P9994503149157819260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) + A000007 (A015138 (n + 1)).toNat) * A008847 (n + 1)

end

end A008848.P9994503149157819260

/-! ## A008848.P11743249471464361650

`∩[A097025(n+1), A128607(n+1)]`
-/

namespace A008848.P11743249471464361650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128607 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008848.P11743249471464361650

/-! ## A008848.P14679786687427351998

`A008847(n+1)^A020639(A008891(n))`
-/

namespace A008848.P14679786687427351998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008847 (n + 1) : ℚ) ^ (A020639 (A008891 n).toNat : ℤ)

end

end A008848.P14679786687427351998

/-!
# A008851: Congruent to 0 or 1 mod 5.

The programs for A008851, the canonical program `A008851.P13943248388909222760` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008851 has offset 1).

The definition of A008851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008851.P13943248388909222760

`a(n-2)+5` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008851

/-- `a(n-2)+5` -/
def P13943248388909222760.Spec : Prop :=
  ∀ n, (P13943248388909222760.a n : ℤ) = A008851 (n + 1)

theorem P13943248388909222760.correct : P13943248388909222760.Spec := by
  intro n
  simp only [A008851, Nat.add_sub_cancel]

end A008851

/-! ## A008851.P6507271523140796939

`floor(5/3*floor(3*n/2))`
-/

namespace A008851.P6507271523140796939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 3 * (⌊(3 * n : ℚ) / 2⌋ : ℚ)⌋

end

end A008851.P6507271523140796939

namespace A008851

/-- `floor(5/3*floor(3*n/2))` -/
def P6507271523140796939.Spec : Prop :=
  ∀ n, P6507271523140796939.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P2624106422536088932

`∑[gcd(2, n)²]-4`
-/

namespace A008851.P2624106422536088932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A008851.P2624106422536088932

namespace A008851

/-- `∑[gcd(2, n)²]-4` -/
def P2624106422536088932.Spec : Prop :=
  ∀ n, P2624106422536088932.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P8765362473054073990

`record[n/(n%5)!]`
-/

namespace A008851.P8765362473054073990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.factorial (n % 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008851.P8765362473054073990

namespace A008851

/-- `record[n/(n%5)!]` -/
def P8765362473054073990.Spec : Prop :=
  ∀ n, P8765362473054073990.a n = (A008851 (n + 1) : ℚ)

end A008851

/-! ## A008851.P12578210255605615150

`∑[gcd(4, n^3)]-4`
-/

namespace A008851.P12578210255605615150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 4

end

end A008851.P12578210255605615150

namespace A008851

/-- `∑[gcd(4, n^3)]-4` -/
def P12578210255605615150.Spec : Prop :=
  ∀ n, P12578210255605615150.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P707762624066532843

`∑[C(4, a(n-1))]` with `a(0)=0`
-/

namespace A008851.P707762624066532843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose 4 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P707762624066532843

namespace A008851

/-- `∑[C(4, a(n-1))]` -/
def P707762624066532843.Spec : Prop :=
  ∀ n, (P707762624066532843.a n : ℤ) = A008851 (n + 1)

end A008851

/-! ## A008851.P11048220902536791643

`∑[∑{p}[3*n, C(3, #)]]`
-/

namespace A008851.P11048220902536791643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 3 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P11048220902536791643

namespace A008851

/-- `∑[∑{p}[3*n, C(3, #)]]` -/
def P11048220902536791643.Spec : Prop :=
  ∀ n, (P11048220902536791643.a n : ℤ) = A008851 (n + 1)

end A008851

/-! ## A008851.P12105263511807255883

`∑[∑{d}[n, round(1/#)]²]`
-/

namespace A008851.P12105263511807255883
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (1 / (d : ℚ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P12105263511807255883

namespace A008851

/-- `∑[∑{d}[n, round(1/#)]²]` -/
def P12105263511807255883.Spec : Prop :=
  ∀ n, P12105263511807255883.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P2105340025815190895

`∑[5-a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A008851.P2105340025815190895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P2105340025815190895

namespace A008851

/-- `∑[5-a(n-1)]` -/
def P2105340025815190895.Spec : Prop :=
  ∀ n, P2105340025815190895.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P8084569252329107675

`∑[((n-1)%2+1)²]`
-/

namespace A008851.P8084569252329107675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.tmod ((n : ℤ) - 1) 2 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P8084569252329107675

namespace A008851

/-- `∑[((n-1)%2+1)²]` -/
def P8084569252329107675.Spec : Prop :=
  ∀ n, P8084569252329107675.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P10419463429262744198

`∑[(1-(1-n)%2)²]`
-/

namespace A008851.P10419463429262744198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - Int.tmod (1 - (n : ℤ)) 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P10419463429262744198

namespace A008851

/-- `∑[(1-(1-n)%2)²]` -/
def P10419463429262744198.Spec : Prop :=
  ∀ n, P10419463429262744198.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P8995942712489689269

`∑[gcd(n², 4%(n+2))]`
-/

namespace A008851.P8995942712489689269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2) (4 % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P8995942712489689269

namespace A008851

/-- `∑[gcd(n², 4%(n+2))]` -/
def P8995942712489689269.Spec : Prop :=
  ∀ n, (P8995942712489689269.a n : ℤ) = A008851 (n + 1)

end A008851

/-! ## A008851.P61313271811996903

`(record[and(n, -7)]+n)/2`
-/

namespace A008851.P61313271811996903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-7)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) : ℚ) / 2

end

end A008851.P61313271811996903

namespace A008851

/-- `(record[and(n, -7)]+n)/2` -/
def P61313271811996903.Spec : Prop :=
  ∀ n, P61313271811996903.a n = (A008851 (n + 1) : ℚ)

end A008851

/-! ## A008851.P7865078380344311884

`∑[∑[ogf((x+4x^2)/(1+x))]]`
-/

namespace A008851.P7865078380344311884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P7865078380344311884

namespace A008851

/-- `∑[∑[ogf((x+4x^2)/(1+x))]]` -/
def P7865078380344311884.Spec : Prop :=
  ∀ n, P7865078380344311884.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P8700296363814011119

`∑[4^a(∑[(-1)^n])]` with `a(0)=0`
-/

namespace A008851.P8700296363814011119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  4 ^ f1 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P8700296363814011119

namespace A008851

/-- `∑[4^a(∑[(-1)^n])]` -/
def P8700296363814011119.Spec : Prop :=
  ∀ n, (P8700296363814011119.a n : ℤ) = A008851 (n + 1)

end A008851

/-! ## A008851.P4732500749738656939

`ogf((x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A008851.P4732500749738656939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4] [1, -1, -1, 1] n

end

end A008851.P4732500749738656939

namespace A008851

/-- `ogf((x+4x^2)/(1-x-x^2+x^3))` -/
def P4732500749738656939.Spec : Prop :=
  ∀ n, P4732500749738656939.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P2552239853560541585

`∑[(n^4-1)%4+1]`
-/

namespace A008851.P2552239853560541585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 4 : ℤ) - 1) 4 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P2552239853560541585

namespace A008851

/-- `∑[(n^4-1)%4+1]` -/
def P2552239853560541585.Spec : Prop :=
  ∀ n, P2552239853560541585.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P2094278441777625430

`∑[1-(1-n^4)%4]`
-/

namespace A008851.P2094278441777625430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (1 - (n ^ 4 : ℤ)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P2094278441777625430

namespace A008851

/-- `∑[1-(1-n^4)%4]` -/
def P2094278441777625430.Spec : Prop :=
  ∀ n, P2094278441777625430.a n = A008851 (n + 1)

end A008851

/-! ## A008851.P18155756729559489531

`lt[0, val((n+2)²+1, 5)]`
-/

namespace A008851.P18155756729559489531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((n + 2) ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008851.P18155756729559489531

namespace A008851

/-- `lt[0, val((n+2)²+1, 5)]` -/
def P18155756729559489531.Spec : Prop :=
  ∀ n, (P18155756729559489531.a n : ℤ) = A008851 (n + 1)

end A008851

/-! ## A008851.P14090336256553563589

`∑[(comp[3*(n+1)]%3)²]`
-/

namespace A008851.P14090336256553563589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008851.P14090336256553563589

namespace A008851

/-- `∑[(comp[3*(n+1)]%3)²]` -/
def P14090336256553563589.Spec : Prop :=
  ∀ n, (P14090336256553563589.a n : ℤ) = A008851 (n + 1)

end A008851

/-!
# A008852: Numbers n such that n^2 and n have same last 2 digits.

The programs for A008852, the canonical program `A008852.P17275598693581520486` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008852 has offset 1).

The definition of A008852 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008852.P17275598693581520486

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=25, a(3)=76, a(4)=100`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008852

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P17275598693581520486.Spec : Prop :=
  ∀ n, P17275598693581520486.a n = A008852 (n + 1)

theorem P17275598693581520486.correct : P17275598693581520486.Spec := by
  intro n
  simp only [A008852, Nat.add_sub_cancel]

end A008852

/-! ## A008852.P17020592685176543600

`A008856(A028836(n+1))`
-/

namespace A008852.P17020592685176543600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (A028836 (n + 1)).toNat

end

end A008852.P17020592685176543600

namespace A008852

/-- `A008856(A028836(n+1))` -/
def P17020592685176543600.Spec : Prop :=
  ∀ n, P17020592685176543600.a n = A008852 (n + 1)

end A008852

/-! ## A008852.P9351412092457706049

`A008856(A047279(n+1)+A008619(n))`
-/

namespace A008852.P9351412092457706049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (A047279 (n + 1) + A008619 n).toNat

end

end A008852.P9351412092457706049

namespace A008852

/-- `A008856(A047279(n+1)+A008619(n))` -/
def P9351412092457706049.Spec : Prop :=
  ∀ n, P9351412092457706049.a n = A008852 (n + 1)

end A008852

/-! ## A008852.P16329206205658788138

`eq[a(n-1)%50+n, n+2]` with `a(0)=2`
-/

namespace A008852.P16329206205658788138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) % 50 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008852.P16329206205658788138

namespace A008852

/-- `eq[a(n-1)%50+n, n+2]` -/
def P16329206205658788138.Spec : Prop :=
  ∀ n, (P16329206205658788138.a n : ℤ) = A008852 (n + 1)

end A008852

/-! ## A008852.P9231822683520954253

`∩[A008856(n+1), A151980(n+1)]`
-/

namespace A008852.P9231822683520954253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008852.P9231822683520954253

namespace A008852

/-- `∩[A008856(n+1), A151980(n+1)]` -/
def P9231822683520954253.Spec : Prop :=
  ∀ n, (P9231822683520954253.a n : ℤ) = A008852 (n + 1)

end A008852

/-! ## A008852.P7952218688844178668

`eq[lcm(50, A161680(n)), A161680(n)]`
-/

namespace A008852.P7952218688844178668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 50 (A161680 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A008852.P7952218688844178668

namespace A008852

/-- `eq[lcm(50, A161680(n)), A161680(n)]` -/
def P7952218688844178668.Spec : Prop :=
  ∀ n, (P7952218688844178668.a n : ℤ) = A008852 (n + 1)

end A008852

/-! ## A008852.P732110151592375857

`A005408(A265424(n+3))-A265424(n+7)`
-/

namespace A008852.P732110151592375857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A265424 (n + 3)).toNat - A265424 (n + 7)

end

end A008852.P732110151592375857

namespace A008852

/-- `A005408(A265424(n+3))-A265424(n+7)` -/
def P732110151592375857.Spec : Prop :=
  ∀ n, P732110151592375857.a n = A008852 (n + 1)

end A008852

/-!
# A008853: Numbers k such that k^2 and k have same last 3 digits.

The programs for A008853, the canonical program `A008853.P12267259192730181730` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008853 has offset 1).

The definition of A008853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008853.P12267259192730181730

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=376, a(3)=625, a(4)=1000`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008853

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P12267259192730181730.Spec : Prop :=
  ∀ n, P12267259192730181730.a n = A008853 (n + 1)

theorem P12267259192730181730.correct : P12267259192730181730.Spec := by
  intro n
  simp only [A008853, Nat.add_sub_cancel]

end A008853

/-!
# A008854: Numbers that are congruent to {0, 1, 4} mod 5.

The programs for A008854, the canonical program `A008854.P2222206027881671294` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008854 has offset 1).

The definition of A008854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008854.P2222206027881671294

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008854

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P2222206027881671294.Spec : Prop :=
  ∀ n, P2222206027881671294.a n = A008854 (n + 1)

theorem P2222206027881671294.correct : P2222206027881671294.Spec := by
  intro n
  simp only [A008854, Nat.add_sub_cancel]

end A008854

/-! ## A008854.P2360382985797846104

`5*(n+1)/3-2*(n+1)%3/3-1`
-/

namespace A008854.P2360382985797846104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℚ) / 3 - ((2 * ((n + 1) % 3) : ℕ) : ℚ) / 3 - 1

end

end A008854.P2360382985797846104

namespace A008854

/-- `5*(n+1)/3-2*(n+1)%3/3-1` -/
def P2360382985797846104.Spec : Prop :=
  ∀ n, P2360382985797846104.a n = (A008854 (n + 1) : ℚ)

end A008854

/-! ## A008854.P1362192156947203086

`(15*(n+1)-15+6*cos(2*(n+1)*π/3)+2*sqrt(3)*sin(2*(n+1)*π/3))/9`
-/

namespace A008854.P1362192156947203086
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((15 * (n + 1) : ℤ) - 15 : ℝ) + 6 * Real.cos ((2 * (n + 1) : ℝ) * Real.pi / 3) + 2 * Real.sqrt (3 : ℝ) * Real.sin ((2 * (n + 1) : ℝ) * Real.pi / 3)) / 9

end

end A008854.P1362192156947203086

namespace A008854

/-- `(15*(n+1)-15+6*cos(2*(n+1)*π/3)+2*sqrt(3)*sin(2*(n+1)*π/3))/9` -/
def P1362192156947203086.Spec : Prop :=
  ∀ n, P1362192156947203086.a n = (A008854 (n + 1) : ℝ)

end A008854

/-! ## A008854.P12664190420362899280

`A047217(n+2)-1`
-/

namespace A008854.P12664190420362899280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047217 (n + 2) - 1

end

end A008854.P12664190420362899280

namespace A008854

/-- `A047217(n+2)-1` -/
def P12664190420362899280.Spec : Prop :=
  ∀ n, P12664190420362899280.a n = A008854 (n + 1)

end A008854

/-! ## A008854.P15942696618182448020

`∑[gcd(3, n+1)]-1`
-/

namespace A008854.P15942696618182448020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A008854.P15942696618182448020

namespace A008854

/-- `∑[gcd(3, n+1)]-1` -/
def P15942696618182448020.Spec : Prop :=
  ∀ n, P15942696618182448020.a n = A008854 (n + 1)

end A008854

/-! ## A008854.P16805250083698024773

`eq[0, val(n²+1, 5)]`
-/

namespace A008854.P16805250083698024773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A008854.P16805250083698024773

namespace A008854

/-- `eq[0, val(n²+1, 5)]` -/
def P16805250083698024773.Spec : Prop :=
  ∀ n, (P16805250083698024773.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P10841484985234405651

`∑[or(1, n%3)]-1`
-/

namespace A008854.P10841484985234405651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A008854.P10841484985234405651

namespace A008854

/-- `∑[or(1, n%3)]-1` -/
def P10841484985234405651.Spec : Prop :=
  ∀ n, P10841484985234405651.a n = A008854 (n + 1)

end A008854

/-! ## A008854.P1547487547059187111

`lt[val(n²+1, 5), 1]`
-/

namespace A008854.P1547487547059187111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n ^ 2 + 1) 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A008854.P1547487547059187111

namespace A008854

/-- `lt[val(n²+1, 5), 1]` -/
def P1547487547059187111.Spec : Prop :=
  ∀ n, (P1547487547059187111.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P299874318880826041

`2*round(n/3)+n`
-/

namespace A008854.P299874318880826041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((n : ℚ) / 3) + (n : ℤ)

end

end A008854.P299874318880826041

namespace A008854

/-- `2*round(n/3)+n` -/
def P299874318880826041.Spec : Prop :=
  ∀ n, P299874318880826041.a n = A008854 (n + 1)

end A008854

/-! ## A008854.P15062083018416085548

`comp[∑[gcd(2, n)²]-2]`
-/

namespace A008854.P15062083018416085548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A008854.P15062083018416085548

namespace A008854

/-- `comp[∑[gcd(2, n)²]-2]` -/
def P15062083018416085548.Spec : Prop :=
  ∀ n, (P15062083018416085548.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P17735076905233028408

`comp[a(n-2)+5]` with `a(0)=2, a(1)=3`
-/

namespace A008854.P17735076905233028408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A008854.P17735076905233028408

namespace A008854

/-- `comp[a(n-2)+5]` -/
def P17735076905233028408.Spec : Prop :=
  ∀ n, (P17735076905233028408.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P8804108393895041297

`∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A008854.P8804108393895041297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008854.P8804108393895041297

namespace A008854

/-- `∑[abs(a(n-3))]` -/
def P8804108393895041297.Spec : Prop :=
  ∀ n, (P8804108393895041297.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P8175504881669224396

`∑[or(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A008854.P8175504881669224396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  Nat.lor 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008854.P8175504881669224396

namespace A008854

/-- `∑[or(1, a(n-3))]` -/
def P8175504881669224396.Spec : Prop :=
  ∀ n, (P8175504881669224396.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P7546373365188187519

`∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A008854.P7546373365188187519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008854.P7546373365188187519

namespace A008854

/-- `∑[dr(a(n-3))]` -/
def P7546373365188187519.Spec : Prop :=
  ∀ n, (P7546373365188187519.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P7527597655855651763

`∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A008854.P7527597655855651763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008854.P7527597655855651763

namespace A008854

/-- `∑[floor(a(n-3))]` -/
def P7527597655855651763.Spec : Prop :=
  ∀ n, (P7527597655855651763.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P17350524255109198064

`∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A008854.P17350524255109198064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008854.P17350524255109198064

namespace A008854

/-- `∑[ceil(a(n-3))]` -/
def P17350524255109198064.Spec : Prop :=
  ∀ n, (P17350524255109198064.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P4426059311268092172

`∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A008854.P4426059311268092172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008854.P4426059311268092172

namespace A008854

/-- `∑[round(a(n-3))]` -/
def P4426059311268092172.Spec : Prop :=
  ∀ n, (P4426059311268092172.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P51478213776779751

`comp[5*n-a(n-1)]` with `a(0)=2`
-/

namespace A008854.P51478213776779751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (5 * n : ℤ) - f1 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A008854.P51478213776779751

namespace A008854

/-- `comp[5*n-a(n-1)]` -/
def P51478213776779751.Spec : Prop :=
  ∀ n, (P51478213776779751.a n : ℤ) = A008854 (n + 1)

end A008854

/-! ## A008854.P12613836163397881047

`comp[∑[(3-a(n-1))²]]` with `a(0)=2`
-/

namespace A008854.P12613836163397881047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  (3 - f2 (n - 1)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A008854.P12613836163397881047

namespace A008854

/-- `comp[∑[(3-a(n-1))²]]` -/
def P12613836163397881047.Spec : Prop :=
  ∀ n, (P12613836163397881047.a n : ℤ) = A008854 (n + 1)

end A008854

/-!
# A008855: Triangle T(n,k), n>=1, read by rows, where T(n,k) is the number of lattice polygons with area n and perimeter 2*k.

The programs for A008855, there is no canonical definition to state claims against.
-/

/-! ## A008855.P9535967804863165617

`filter[A259857(n+1), A275606(#)]`
-/

namespace A008855.P9535967804863165617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A275606 (f1 j).toNat = 1) n)

end

end A008855.P9535967804863165617

/-!
# A008856: Numbers n such that n^3 and n have same last 2 digits.

The programs for A008856, the canonical program `A008856.P739299684395449640` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008856 has offset 1).

The definition of A008856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008856.P739299684395449640

`a(n-1)+a(n-9)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=24, a(3)=25, a(4)=49, a(5)=51, a(6)=75, a(7)=76, a(8)=99, a(9)=100`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008856

/-- `a(n-1)+a(n-9)-a(n-10)` -/
def P739299684395449640.Spec : Prop :=
  ∀ n, P739299684395449640.a n = A008856 (n + 1)

theorem P739299684395449640.correct : P739299684395449640.Spec := by
  intro n
  simp only [A008856, Nat.add_sub_cancel]

end A008856

/-! ## A008856.P510486383237639029

`∩[A033819(n+1), A206331(n)]`
-/

namespace A008856.P510486383237639029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206331 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A008856.P510486383237639029

namespace A008856

/-- `∩[A033819(n+1), A206331(n)]` -/
def P510486383237639029.Spec : Prop :=
  ∀ n, (P510486383237639029.a n : ℤ) = A008856 (n + 1)

end A008856

/-! ## A008856.P3914553205937541973

`A033819(n+5)%∑[A122902(n+1)]`
-/

namespace A008856.P3914553205937541973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033819 (n + 5)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A008856.P3914553205937541973

namespace A008856

/-- `A033819(n+5)%∑[A122902(n+1)]` -/
def P3914553205937541973.Spec : Prop :=
  ∀ n, P3914553205937541973.a n = A008856 (n + 1)

end A008856

/-! ## A008856.P9953272256336802250

`A033819(n+5)%A000124(A002593(n))`
-/

namespace A008856.P9953272256336802250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033819 (n + 5)) (A000124 (A002593 n).toNat)

end

end A008856.P9953272256336802250

namespace A008856

/-- `A033819(n+5)%A000124(A002593(n))` -/
def P9953272256336802250.Spec : Prop :=
  ∀ n, P9953272256336802250.a n = A008856 (n + 1)

end A008856

/-!
# A008857: a(n) = floor(n/9)*ceiling(n/9).

The programs for A008857, the canonical program `A008857.P1218785659426205568` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008857 has offset 0).

The definition of A008857 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n/9)*ceil(n/9)` (program `A008857.P1218785659426205568`, by `A008857.P1218785659426205568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008857.P1218785659426205568

`floor(n/9)*ceil(n/9)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008857

/-- `floor(n/9)*ceil(n/9)` -/
def P1218785659426205568.Spec : Prop :=
  ∀ n, P1218785659426205568.a n = A008857 n

theorem P1218785659426205568.correct : P1218785659426205568.Spec := by
  intro n
  simp only [A008857]

end A008857

/-! ## A008857.P16019638740719278116

`A008737(round(2*n/3))`
-/

namespace A008857.P16019638740719278116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008737 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A008857.P16019638740719278116

namespace A008857

/-- `A008737(round(2*n/3))` -/
def P16019638740719278116.Spec : Prop :=
  ∀ n, P16019638740719278116.a n = A008857 n

end A008857

/-! ## A008857.P4792739197448866112

`A008737(A004396(n))%A000009(n)`
-/

namespace A008857.P4792739197448866112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008737 (A004396 n).toNat) (A000009 n)

end

end A008857.P4792739197448866112

namespace A008857

/-- `A008737(A004396(n))%A000009(n)` -/
def P4792739197448866112.Spec : Prop :=
  ∀ n, P4792739197448866112.a n = A008857 n

end A008857

/-! ## A008857.P3435206844871297287

`lcm(A008737(A004396(n)), A033999(n))`
-/

namespace A008857.P3435206844871297287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008737 (A004396 n).toNat) (A033999 n)

end

end A008857.P3435206844871297287

namespace A008857

/-- `lcm(A008737(A004396(n)), A033999(n))` -/
def P3435206844871297287.Spec : Prop :=
  ∀ n, (P3435206844871297287.a n : ℤ) = A008857 n

end A008857

/-! ## A008857.P6024605752919799516

`A008737(A004396(n))/A114567(2*n)`
-/

namespace A008857.P6024605752919799516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008737 (A004396 n).toNat : ℚ) / (A114567 (2 * n) : ℚ)

end

end A008857.P6024605752919799516

namespace A008857

/-- `A008737(A004396(n))/A114567(2*n)` -/
def P6024605752919799516.Spec : Prop :=
  ∀ n, P6024605752919799516.a n = (A008857 n : ℚ)

end A008857

/-! ## A008857.P11930364260144811178

`A002620(A004525(A004396(A004396(n))))`
-/

namespace A008857.P11930364260144811178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004525 (A004396 (A004396 n).toNat).toNat).toNat

end

end A008857.P11930364260144811178

namespace A008857

/-- `A002620(A004525(A004396(A004396(n))))` -/
def P11930364260144811178.Spec : Prop :=
  ∀ n, P11930364260144811178.a n = A008857 n

end A008857

/-! ## A008857.P2401312868349927882

`A008767(A105566(n+2)-1)`
-/

namespace A008857.P2401312868349927882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008767 (A105566 (n + 2) - 1).toNat

end

end A008857.P2401312868349927882

namespace A008857

/-- `A008767(A105566(n+2)-1)` -/
def P2401312868349927882.Spec : Prop :=
  ∀ n, P2401312868349927882.a n = A008857 n

end A008857

/-! ## A008857.P16780135821552457167

`A126696(A007095(n))`
-/

namespace A008857.P16780135821552457167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (A007095 n).toNat

end

end A008857.P16780135821552457167

namespace A008857

/-- `A126696(A007095(n))` -/
def P16780135821552457167.Spec : Prop :=
  ∀ n, P16780135821552457167.a n = A008857 n

end A008857

/-! ## A008857.P332683902825969557

`A126696(A235498(n))`
-/

namespace A008857.P332683902825969557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (A235498 n).toNat

end

end A008857.P332683902825969557

namespace A008857

/-- `A126696(A235498(n))` -/
def P332683902825969557.Spec : Prop :=
  ∀ n, P332683902825969557.a n = A008857 n

end A008857

/-! ## A008857.P6409660550218802701

`A126696(A248375(n))`
-/

namespace A008857.P6409660550218802701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 (A248375 n).toNat

end

end A008857.P6409660550218802701

namespace A008857

/-- `A126696(A248375(n))` -/
def P6409660550218802701.Spec : Prop :=
  ∀ n, P6409660550218802701.a n = A008857 n

end A008857

/-!
# A008858: Number of equilibrium configurations for n bodies, each with a radial force from the center, with an opposite force acting radially from center of configuration.

The programs for A008858, there is no canonical definition to state claims against.
-/

/-! ## A008858.P17811749055797286172

`A212277(n+1)-A212221(3*n+1)`
-/

namespace A008858.P17811749055797286172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212277 (n + 1) - A212221 (3 * n + 1)

end

end A008858.P17811749055797286172

/-!
# A008859: a(n) = Sum_{k=0..6} binomial(n,k).

The programs for A008859, the canonical program `A008859.P14957720110934266118` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008859 has offset 0).

The definition of A008859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008859.P14957720110934266118

`a(n-1)+A006261(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008859

/-- `a(n-1)+A006261(n-1)` -/
def P14957720110934266118.Spec : Prop :=
  ∀ n, P14957720110934266118.a n = A008859 n

theorem P14957720110934266118.correct : P14957720110934266118.Spec := by
  intro n
  simp only [A008859]

end A008859

/-! ## A008859.P10332426197918837587

`Δ[A008860(n)]`
-/

namespace A008859.P10332426197918837587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008859.P10332426197918837587

namespace A008859

/-- `Δ[A008860(n)]` -/
def P10332426197918837587.Spec : Prop :=
  ∀ n, P10332426197918837587.a n = A008859 n

end A008859

/-! ## A008859.P17057351887031945495

`A115567(n)+1`
-/

namespace A008859.P17057351887031945495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115567 n + 1

end

end A008859.P17057351887031945495

namespace A008859

/-- `A115567(n)+1` -/
def P17057351887031945495.Spec : Prop :=
  ∀ n, P17057351887031945495.a n = A008859 n

end A008859

/-! ## A008859.P2751239049596719914

`A362194(n)+n`
-/

namespace A008859.P2751239049596719914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362194 n + (n : ℤ)

end

end A008859.P2751239049596719914

namespace A008859

/-- `A362194(n)+n` -/
def P2751239049596719914.Spec : Prop :=
  ∀ n, P2751239049596719914.a n = A008859 n

theorem P2751239049596719914.correct : P2751239049596719914.Spec := by
  intro n
  simp only [A008859, Nat.add_sub_cancel, A008859.P2751239049596719914.a, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A362194, A362194.P824322354515658544.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008859

/-! ## A008859.P12645535086867516531

`A006261(n)+C(n, 6)`
-/

namespace A008859.P12645535086867516531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n + (Nat.choose n 6 : ℤ)

end

end A008859.P12645535086867516531

namespace A008859

/-- `A006261(n)+C(n, 6)` -/
def P12645535086867516531.Spec : Prop :=
  ∀ n, P12645535086867516531.a n = A008859 n

end A008859

/-! ## A008859.P3833481580302201002

`(∑[A059174(n)]+1)/2`
-/

namespace A008859.P3833481580302201002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059174 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A008859.P3833481580302201002

namespace A008859

/-- `(∑[A059174(n)]+1)/2` -/
def P3833481580302201002.Spec : Prop :=
  ∀ n, P3833481580302201002.a n = (A008859 n : ℚ)

end A008859

/-! ## A008859.P11485236834538679913

`A006261(n)+A000579(n)`
-/

namespace A008859.P11485236834538679913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n + A000579 n

end

end A008859.P11485236834538679913

namespace A008859

/-- `A006261(n)+A000579(n)` -/
def P11485236834538679913.Spec : Prop :=
  ∀ n, P11485236834538679913.a n = A008859 n

end A008859

/-! ## A008859.P7143083828789256294

`A000579(n)+A057703(n)+1`
-/

namespace A008859.P7143083828789256294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + (A057703 n + 1)

end

end A008859.P7143083828789256294

namespace A008859

/-- `A000579(n)+A057703(n)+1` -/
def P7143083828789256294.Spec : Prop :=
  ∀ n, P7143083828789256294.a n = A008859 n

end A008859

/-! ## A008859.P16358950943180828925

`A008860(n+1)-A008860(n)`
-/

namespace A008859.P16358950943180828925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 (n + 1) - A008860 n

end

end A008859.P16358950943180828925

namespace A008859

/-- `A008860(n+1)-A008860(n)` -/
def P16358950943180828925.Spec : Prop :=
  ∀ n, P16358950943180828925.a n = A008859 n

end A008859

/-! ## A008859.P414266372248857604

`A000579(n)+A362193(n)+n`
-/

namespace A008859.P414266372248857604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n + (A362193 n + (n : ℤ))

end

end A008859.P414266372248857604

namespace A008859

/-- `A000579(n)+A362193(n)+n` -/
def P414266372248857604.Spec : Prop :=
  ∀ n, P414266372248857604.a n = A008859 n

end A008859

/-! ## A008859.P15580488968139767626

`A188557(n+1)-A188556(n+1)`
-/

namespace A008859.P15580488968139767626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188557 (n + 1) - A188556 (n + 1)

end

end A008859.P15580488968139767626

namespace A008859

/-- `A188557(n+1)-A188556(n+1)` -/
def P15580488968139767626.Spec : Prop :=
  ∀ n, P15580488968139767626.a n = A008859 n

theorem P15580488968139767626.correct : P15580488968139767626.Spec := by
  intro n
  simp only [A008859, Nat.add_sub_cancel, A008859.P15580488968139767626.a, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A188556, A188556.P2471542906957635104.f1, A188556.P2471542906957635104.a, A188557, A188557.P4941890526069849708.a, A000127, A000127.P3574234740416859874.a, A188555, A188555.P17677957703824641780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008859

/-! ## A008859.P18237518587068120451

`A006261(n)-(A057703(n)-A115567(n))`
-/

namespace A008859.P18237518587068120451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n - (A057703 n - A115567 n)

end

end A008859.P18237518587068120451

namespace A008859

/-- `A006261(n)-(A057703(n)-A115567(n))` -/
def P18237518587068120451.Spec : Prop :=
  ∀ n, P18237518587068120451.a n = A008859 n

end A008859

/-! ## A008859.P13995377571177715716

`A006261(n)+∑[A000389(n)]-A000389(n)`
-/

namespace A008859.P13995377571177715716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n + (∑ j ∈ Finset.range (n + 1), f1 j - A000389 n)

end

end A008859.P13995377571177715716

namespace A008859

/-- `A006261(n)+∑[A000389(n)]-A000389(n)` -/
def P13995377571177715716.Spec : Prop :=
  ∀ n, P13995377571177715716.a n = A008859 n

end A008859

/-! ## A008859.P11402029197367251521

`Δ[A116082(n)]`
-/

namespace A008859.P11402029197367251521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008859.P11402029197367251521

namespace A008859

/-- `Δ[A116082(n)]` -/
def P11402029197367251521.Spec : Prop :=
  ∀ n, P11402029197367251521.a n = A008859 n

end A008859

/-! ## A008859.P9695492307943775732

`Δ[Δ[A008861(n)]]`
-/

namespace A008859.P9695492307943775732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008859.P9695492307943775732

namespace A008859

/-- `Δ[Δ[A008861(n)]]` -/
def P9695492307943775732.Spec : Prop :=
  ∀ n, P9695492307943775732.a n = A008859 n

end A008859

/-! ## A008859.P782066505274067186

`Δ[A362195(n)]+1`
-/

namespace A008859.P782066505274067186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A008859.P782066505274067186

namespace A008859

/-- `Δ[A362195(n)]+1` -/
def P782066505274067186.Spec : Prop :=
  ∀ n, P782066505274067186.a n = A008859 n

end A008859

/-! ## A008859.P6284553555266816486

`A116082(n+1)-A116082(n)`
-/

namespace A008859.P6284553555266816486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116082 (n + 1) - A116082 n

end

end A008859.P6284553555266816486

namespace A008859

/-- `A116082(n+1)-A116082(n)` -/
def P6284553555266816486.Spec : Prop :=
  ∀ n, P6284553555266816486.a n = A008859 n

end A008859

/-! ## A008859.P10556565820225419351

`A000579(n+1)+A000127(n+1)`
-/

namespace A008859.P10556565820225419351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 1) + A000127 (n + 1)

end

end A008859.P10556565820225419351

namespace A008859

/-- `A000579(n+1)+A000127(n+1)` -/
def P10556565820225419351.Spec : Prop :=
  ∀ n, P10556565820225419351.a n = A008859 n

end A008859

/-! ## A008859.P3497389037820941263

`Δ[A188558(n+1)-A188557(n+1)]`
-/

namespace A008859.P3497389037820941263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - A188557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008859.P3497389037820941263

namespace A008859

/-- `Δ[A188558(n+1)-A188557(n+1)]` -/
def P3497389037820941263.Spec : Prop :=
  ∀ n, P3497389037820941263.a n = A008859 n

end A008859

/-! ## A008859.P15014649843827277812

`Δ[A188558(n+1)]-A188556(n+1)`
-/

namespace A008859.P15014649843827277812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188556 (n + 1)

end

end A008859.P15014649843827277812

namespace A008859

/-- `Δ[A188558(n+1)]-A188556(n+1)` -/
def P15014649843827277812.Spec : Prop :=
  ∀ n, P15014649843827277812.a n = A008859 n

end A008859

/-!
# A008860: a(n) = Sum_{k=0..7} binomial(n,k).

The programs for A008860, the canonical program `A008860.P18332775515594479900` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008860 has offset 0).

The definition of A008860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008860.P4448713292189015863

`Δ[A008861(n)]`
-/

namespace A008860.P4448713292189015863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008860.P4448713292189015863

namespace A008860

/-- `Δ[A008861(n)]` -/
def P4448713292189015863.Spec : Prop :=
  ∀ n, P4448713292189015863.a n = A008860 n

end A008860

/-! ## A008860.P17077311592742707620

`1+A116082(n)`
-/

namespace A008860.P17077311592742707620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A116082 n

end

end A008860.P17077311592742707620

namespace A008860

/-- `1+A116082(n)` -/
def P17077311592742707620.Spec : Prop :=
  ∀ n, P17077311592742707620.a n = A008860 n

end A008860

/-! ## A008860.P6928472156891796215

`A362195(n)+n`
-/

namespace A008860.P6928472156891796215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362195 n + (n : ℤ)

end

end A008860.P6928472156891796215

namespace A008860

/-- `A362195(n)+n` -/
def P6928472156891796215.Spec : Prop :=
  ∀ n, P6928472156891796215.a n = A008860 n

theorem P6928472156891796215.correct : P6928472156891796215.Spec := by
  intro n
  simp only [A008860, Nat.add_sub_cancel, A008860.P6928472156891796215.a, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A362195, A362195.P3919212362460993078.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008860

/-! ## A008860.P18332775515594479900

`A008859(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008860

/-- `A008859(n-1)+a(n-1)` -/
def P18332775515594479900.Spec : Prop :=
  ∀ n, P18332775515594479900.a n = A008860 n

theorem P18332775515594479900.correct : P18332775515594479900.Spec := by
  intro n
  simp only [A008860]

end A008860

/-! ## A008860.P4786632119311626894

`∑[A008859(A028310(n)-1)]`
-/

namespace A008860.P4786632119311626894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008860.P4786632119311626894

namespace A008860

/-- `∑[A008859(A028310(n)-1)]` -/
def P4786632119311626894.Spec : Prop :=
  ∀ n, P4786632119311626894.a n = A008860 n

end A008860

/-! ## A008860.P12216042673232936095

`A006261(n)+∑[A000579(n)]`
-/

namespace A008860.P12216042673232936095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006261 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008860.P12216042673232936095

namespace A008860

/-- `A006261(n)+∑[A000579(n)]` -/
def P12216042673232936095.Spec : Prop :=
  ∀ n, P12216042673232936095.a n = A008860 n

end A008860

/-! ## A008860.P15137412269274773779

`A008861(n+1)-A008861(n)`
-/

namespace A008860.P15137412269274773779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 (n + 1) - A008861 n

end

end A008860.P15137412269274773779

namespace A008860

/-- `A008861(n+1)-A008861(n)` -/
def P15137412269274773779.Spec : Prop :=
  ∀ n, P15137412269274773779.a n = A008860 n

end A008860

/-! ## A008860.P12887097165581280845

`∑[A008859(n)]+1-A008859(n)`
-/

namespace A008860.P12887097165581280845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A008859 n)

end

end A008860.P12887097165581280845

namespace A008860

/-- `∑[A008859(n)]+1-A008859(n)` -/
def P12887097165581280845.Spec : Prop :=
  ∀ n, P12887097165581280845.a n = A008860 n

end A008860

/-! ## A008860.P5290302947275304674

`A188558(n+1)-A188557(n+1)`
-/

namespace A008860.P5290302947275304674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) - A188557 (n + 1)

end

end A008860.P5290302947275304674

namespace A008860

/-- `A188558(n+1)-A188557(n+1)` -/
def P5290302947275304674.Spec : Prop :=
  ∀ n, P5290302947275304674.a n = A008860 n

end A008860

/-! ## A008860.P15161594466227382574

`Δ[A116690(n)]`
-/

namespace A008860.P15161594466227382574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008860.P15161594466227382574

namespace A008860

/-- `Δ[A116690(n)]` -/
def P15161594466227382574.Spec : Prop :=
  ∀ n, P15161594466227382574.a n = A008860 n

end A008860

/-! ## A008860.P11080258807026912034

`Δ[Δ[A008862(n)]]`
-/

namespace A008860.P11080258807026912034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008860.P11080258807026912034

namespace A008860

/-- `Δ[Δ[A008862(n)]]` -/
def P11080258807026912034.Spec : Prop :=
  ∀ n, P11080258807026912034.a n = A008860 n

end A008860

/-! ## A008860.P15677782768670530556

`Δ[Δ[A362197(n)]]`
-/

namespace A008860.P15677782768670530556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008860.P15677782768670530556

namespace A008860

/-- `Δ[Δ[A362197(n)]]` -/
def P15677782768670530556.Spec : Prop :=
  ∀ n, P15677782768670530556.a n = A008860 n

end A008860

/-! ## A008860.P10064458048953414581

`Δ[A362196(n)]+1`
-/

namespace A008860.P10064458048953414581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A008860.P10064458048953414581

namespace A008860

/-- `Δ[A362196(n)]+1` -/
def P10064458048953414581.Spec : Prop :=
  ∀ n, P10064458048953414581.a n = A008860 n

end A008860

/-! ## A008860.P9246737072422318813

`A116690(n+1)-A116690(n)`
-/

namespace A008860.P9246737072422318813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 (n + 1) - A116690 n

end

end A008860.P9246737072422318813

namespace A008860

/-- `A116690(n+1)-A116690(n)` -/
def P9246737072422318813.Spec : Prop :=
  ∀ n, P9246737072422318813.a n = A008860 n

end A008860

/-! ## A008860.P12033441200613663964

`Δ[A188559(n+1)-A188558(n+1)]`
-/

namespace A008860.P12033441200613663964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - A188558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008860.P12033441200613663964

namespace A008860

/-- `Δ[A188559(n+1)-A188558(n+1)]` -/
def P12033441200613663964.Spec : Prop :=
  ∀ n, P12033441200613663964.a n = A008860 n

end A008860

/-! ## A008860.P995084916197839064

`Δ[A188559(n+1)]-A188557(n+1)`
-/

namespace A008860.P995084916197839064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A188557 (n + 1)

end

end A008860.P995084916197839064

namespace A008860

/-- `Δ[A188559(n+1)]-A188557(n+1)` -/
def P995084916197839064.Spec : Prop :=
  ∀ n, P995084916197839064.a n = A008860 n

end A008860

/-! ## A008860.P7351478598395798904

`A188558(n+1)+A188558(n+1)-A188558(n+2)`
-/

namespace A008860.P7351478598395798904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188558 (n + 1) + (A188558 (n + 1) - A188558 (n + 2))

end

end A008860.P7351478598395798904

namespace A008860

/-- `A188558(n+1)+A188558(n+1)-A188558(n+2)` -/
def P7351478598395798904.Spec : Prop :=
  ∀ n, P7351478598395798904.a n = A008860 n

end A008860

/-! ## A008860.P4794040719373204202

`A188559(n+2)-(A188559(n+1)+A188557(n+1))`
-/

namespace A008860.P4794040719373204202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 2) - (A188559 (n + 1) + A188557 (n + 1))

end

end A008860.P4794040719373204202

namespace A008860

/-- `A188559(n+2)-(A188559(n+1)+A188557(n+1))` -/
def P4794040719373204202.Spec : Prop :=
  ∀ n, P4794040719373204202.a n = A008860 n

end A008860

/-! ## A008860.P104670695078428390

`Δ[Δ[Δ[Δ[A219531(n)]]]]`
-/

namespace A008860.P104670695078428390
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008860.P104670695078428390

namespace A008860

/-- `Δ[Δ[Δ[Δ[A219531(n)]]]]` -/
def P104670695078428390.Spec : Prop :=
  ∀ n, P104670695078428390.a n = A008860 n

end A008860

/-! ## A008860.P9866788791974253625

`2^n-A035040(n)`
-/

namespace A008860.P9866788791974253625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A035040 n

end

end A008860.P9866788791974253625

namespace A008860

/-- `2^n-A035040(n)` -/
def P9866788791974253625.Spec : Prop :=
  ∀ n, P9866788791974253625.a n = A008860 n

end A008860

/-!
# A008861: a(n) = Sum_{k=0..8} binomial(n,k).

The programs for A008861, the canonical program `A008861.P14057265660229562183` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008861 has offset 0).

The definition of A008861 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008861.P15212090599592052665

`Δ[A008862(n)]`
-/

namespace A008861.P15212090599592052665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008861.P15212090599592052665

namespace A008861

/-- `Δ[A008862(n)]` -/
def P15212090599592052665.Spec : Prop :=
  ∀ n, P15212090599592052665.a n = A008861 n

end A008861

/-! ## A008861.P17817457367209081764

`A116690(n)+1`
-/

namespace A008861.P17817457367209081764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n + 1

end

end A008861.P17817457367209081764

namespace A008861

/-- `A116690(n)+1` -/
def P17817457367209081764.Spec : Prop :=
  ∀ n, P17817457367209081764.a n = A008861 n

end A008861

/-! ## A008861.P1151330088434249864

`A362196(n)+n`
-/

namespace A008861.P1151330088434249864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362196 n + (n : ℤ)

end

end A008861.P1151330088434249864

namespace A008861

/-- `A362196(n)+n` -/
def P1151330088434249864.Spec : Prop :=
  ∀ n, P1151330088434249864.a n = A008861 n

theorem P1151330088434249864.correct : P1151330088434249864.Spec := by
  intro n
  simp only [A008861, Nat.add_sub_cancel, A008861.P1151330088434249864.a, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A362196, A362196.P10325085165088880186.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008861

/-! ## A008861.P6048673474478344620

`Δ[A362197(n)]+1`
-/

namespace A008861.P6048673474478344620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A008861.P6048673474478344620

namespace A008861

/-- `Δ[A362197(n)]+1` -/
def P6048673474478344620.Spec : Prop :=
  ∀ n, P6048673474478344620.a n = A008861 n

end A008861

/-! ## A008861.P14057265660229562183

`∑[A008860(abs(1-n))]-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A008861

/-- `∑[A008860(abs(1-n))]-1` -/
def P14057265660229562183.Spec : Prop :=
  ∀ n, P14057265660229562183.a n = A008861 n

theorem P14057265660229562183.correct : P14057265660229562183.Spec := by
  intro n
  simp only [A008861]

end A008861

/-! ## A008861.P4186988550020820406

`A008860(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008861.P4186988550020820406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008860 (n - 1) + a (n - 1)

end

end A008861.P4186988550020820406

namespace A008861

/-- `A008860(n-1)+a(n-1)` -/
def P4186988550020820406.Spec : Prop :=
  ∀ n, P4186988550020820406.a n = A008861 n

end A008861

/-! ## A008861.P9004742464630299953

`A008862(n+1)-A008862(n)`
-/

namespace A008861.P9004742464630299953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 (n + 1) - A008862 n

end

end A008861.P9004742464630299953

namespace A008861

/-- `A008862(n+1)-A008862(n)` -/
def P9004742464630299953.Spec : Prop :=
  ∀ n, P9004742464630299953.a n = A008861 n

end A008861

/-! ## A008861.P7795195508156890620

`A188559(n+1)-A188558(n+1)`
-/

namespace A008861.P7795195508156890620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) - A188558 (n + 1)

end

end A008861.P7795195508156890620

namespace A008861

/-- `A188559(n+1)-A188558(n+1)` -/
def P7795195508156890620.Spec : Prop :=
  ∀ n, P7795195508156890620.a n = A008861 n

theorem P7795195508156890620.correct : P7795195508156890620.Spec := by
  intro n
  simp only [A008861, Nat.add_sub_cancel, A008861.P7795195508156890620.a, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A188558, A188558.P17038073912110487584.a, A188559, A188559.P6003239586972994998.a, A008859, A008859.P14957720110934266118.a, A188557, A188557.P4941890526069849708.a, A006261, A006261.P4266430943369696028.a, A188556, A188556.P2471542906957635104.f1, A188556.P2471542906957635104.a, A000127, A000127.P3574234740416859874.a, A188555, A188555.P17677957703824641780.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008861

/-! ## A008861.P16497087106167050144

`A008859(n)-∑[A008859(n)-A008860(n)]`
-/

namespace A008861.P16497087106167050144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - A008860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008859 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008861.P16497087106167050144

namespace A008861

/-- `A008859(n)-∑[A008859(n)-A008860(n)]` -/
def P16497087106167050144.Spec : Prop :=
  ∀ n, P16497087106167050144.a n = A008861 n

end A008861

/-! ## A008861.P8813433563413605018

`A188559(n+1)+A188559(n+1)-A188559(n+2)`
-/

namespace A008861.P8813433563413605018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188559 (n + 1) + (A188559 (n + 1) - A188559 (n + 2))

end

end A008861.P8813433563413605018

namespace A008861

/-- `A188559(n+1)+A188559(n+1)-A188559(n+2)` -/
def P8813433563413605018.Spec : Prop :=
  ∀ n, P8813433563413605018.a n = A008861 n

end A008861

/-! ## A008861.P2526025418663956690

`Δ[Δ[A008863(n)]]`
-/

namespace A008861.P2526025418663956690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008861.P2526025418663956690

namespace A008861

/-- `Δ[Δ[A008863(n)]]` -/
def P2526025418663956690.Spec : Prop :=
  ∀ n, P2526025418663956690.a n = A008861 n

end A008861

/-! ## A008861.P10649172518285765079

`Δ[Δ[Δ[A219531(n)]]]`
-/

namespace A008861.P10649172518285765079
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008861.P10649172518285765079

namespace A008861

/-- `Δ[Δ[Δ[A219531(n)]]]` -/
def P10649172518285765079.Spec : Prop :=
  ∀ n, P10649172518285765079.a n = A008861 n

end A008861

/-! ## A008861.P7353935696824646584

`2^n-A035041(n)`
-/

namespace A008861.P7353935696824646584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A035041 n

end

end A008861.P7353935696824646584

namespace A008861

/-- `2^n-A035041(n)` -/
def P7353935696824646584.Spec : Prop :=
  ∀ n, P7353935696824646584.a n = A008861 n

theorem P7353935696824646584.correct : P7353935696824646584.Spec := by
  intro n
  simp only [A008861, Nat.add_sub_cancel, A008861.P7353935696824646584.a, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A035041, A035041.P5013102862860512790.a, A000079, A000079.P10855139691139572931.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008861

/-! ## A008861.P14316417069270813161

`A000225(n)+1-A035041(n)`
-/

namespace A008861.P14316417069270813161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A035041 n)

end

end A008861.P14316417069270813161

namespace A008861

/-- `A000225(n)+1-A035041(n)` -/
def P14316417069270813161.Spec : Prop :=
  ∀ n, P14316417069270813161.a n = A008861 n

theorem P14316417069270813161.correct : P14316417069270813161.Spec := by
  intro n
  simp only [A008861, Nat.add_sub_cancel, A008861.P14316417069270813161.a, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A000225, A000225.P6535533121115206393.a, A008860, A008860.P18332775515594479900.a, A035041, A035041.P5013102862860512790.a, A000079, A000079.P10855139691139572931.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008861

/-! ## A008861.P7656834352811289722

`A000325(n)+n-A035041(n)`
-/

namespace A008861.P7656834352811289722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n + ((n : ℤ) - A035041 n)

end

end A008861.P7656834352811289722

namespace A008861

/-- `A000325(n)+n-A035041(n)` -/
def P7656834352811289722.Spec : Prop :=
  ∀ n, P7656834352811289722.a n = A008861 n

theorem P7656834352811289722.correct : P7656834352811289722.Spec := by
  intro n
  simp only [A008861, Nat.add_sub_cancel, A008861.P7656834352811289722.a, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A000325, A000325.P17729744711211405807.a, A008860, A008860.P18332775515594479900.a, A035041, A035041.P5013102862860512790.a, A000079, A000079.P10855139691139572931.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008861

/-! ## A008861.P93559438804144934

`A000079(n)+A035042(n)-A035042(n+1)`
-/

namespace A008861.P93559438804144934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A035042 n - A035042 (n + 1))

end

end A008861.P93559438804144934

namespace A008861

/-- `A000079(n)+A035042(n)-A035042(n+1)` -/
def P93559438804144934.Spec : Prop :=
  ∀ n, P93559438804144934.a n = A008861 n

end A008861

/-! ## A008861.P16638059986283673487

`A036563(n+1)-(A036563(n)+A035041(n))`
-/

namespace A008861.P16638059986283673487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 1) - (A036563 n + A035041 n)

end

end A008861.P16638059986283673487

namespace A008861

/-- `A036563(n+1)-(A036563(n)+A035041(n))` -/
def P16638059986283673487.Spec : Prop :=
  ∀ n, P16638059986283673487.a n = A008861 n

theorem P16638059986283673487.correct : P16638059986283673487.Spec := by
  intro n
  simp only [A008861, Nat.add_sub_cancel, A008861.P16638059986283673487.a, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A008860, A008860.P18332775515594479900.a, A035041, A035041.P5013102862860512790.a, A036563, A036563.P16747850807333830855.a, A000079, A000079.P10855139691139572931.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, A000127, A000127.P3574234740416859874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008861

/-! ## A008861.P3987725195682467850

`A007051(n)-(A035041(n)+A000392(n+1))`
-/

namespace A008861.P3987725195682467850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - (A035041 n + A000392 (n + 1))

end

end A008861.P3987725195682467850

namespace A008861

/-- `A007051(n)-(A035041(n)+A000392(n+1))` -/
def P3987725195682467850.Spec : Prop :=
  ∀ n, P3987725195682467850.a n = A008861 n

end A008861

/-!
# A008862: a(n) = Sum_{k=0..9} binomial(n,k).

The programs for A008862, the canonical program `A008862.P15109180093103356418` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008862 has offset 0).

The definition of A008862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008862.P13641227949203221431

`A362197(n)+n`
-/

namespace A008862.P13641227949203221431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362197 n + (n : ℤ)

end

end A008862.P13641227949203221431

namespace A008862

/-- `A362197(n)+n` -/
def P13641227949203221431.Spec : Prop :=
  ∀ n, P13641227949203221431.a n = A008862 n

theorem P13641227949203221431.correct : P13641227949203221431.Spec := by
  intro n
  simp only [A008862, Nat.add_sub_cancel, A008862.P13641227949203221431.a, A008862.P15109180093103356418.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A362197, A362197.P8596603980637624740.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008862

/-! ## A008862.P15109180093103356418

`A008861(n-1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A008862

/-- `A008861(n-1)+a(n-1)` -/
def P15109180093103356418.Spec : Prop :=
  ∀ n, P15109180093103356418.a n = A008862 n

theorem P15109180093103356418.correct : P15109180093103356418.Spec := by
  intro n
  simp only [A008862]

end A008862

/-! ## A008862.P9878510772797402036

`A116690(n)+A115205(n)`
-/

namespace A008862.P9878510772797402036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116690 n + A115205 n

end

end A008862.P9878510772797402036

namespace A008862

/-- `A116690(n)+A115205(n)` -/
def P9878510772797402036.Spec : Prop :=
  ∀ n, P9878510772797402036.a n = A008862 n

end A008862

/-! ## A008862.P5116806077428238323

`∑[A008861(n)]+1-A008861(n)`
-/

namespace A008862.P5116806077428238323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A008861 n)

end

end A008862.P5116806077428238323

namespace A008862

/-- `∑[A008861(n)]+1-A008861(n)` -/
def P5116806077428238323.Spec : Prop :=
  ∀ n, P5116806077428238323.a n = A008862 n

end A008862

/-! ## A008862.P4231118163056175384

`A008860(n)-∑[A008860(n)-A008861(n)]`
-/

namespace A008862.P4231118163056175384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n - A008861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008860 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008862.P4231118163056175384

namespace A008862

/-- `A008860(n)-∑[A008860(n)-A008861(n)]` -/
def P4231118163056175384.Spec : Prop :=
  ∀ n, P4231118163056175384.a n = A008862 n

end A008862

/-! ## A008862.P9124738636023582906

`Δ[A008863(n)]`
-/

namespace A008862.P9124738636023582906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008862.P9124738636023582906

namespace A008862

/-- `Δ[A008863(n)]` -/
def P9124738636023582906.Spec : Prop :=
  ∀ n, P9124738636023582906.a n = A008862 n

end A008862

/-! ## A008862.P740012916644670251

`Δ[Δ[A219531(n)]]`
-/

namespace A008862.P740012916644670251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008862.P740012916644670251

namespace A008862

/-- `Δ[Δ[A219531(n)]]` -/
def P740012916644670251.Spec : Prop :=
  ∀ n, P740012916644670251.a n = A008862 n

end A008862

/-! ## A008862.P1354865871501660654

`A008863(n+1)-A008863(n)`
-/

namespace A008862.P1354865871501660654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 (n + 1) - A008863 n

end

end A008862.P1354865871501660654

namespace A008862

/-- `A008863(n+1)-A008863(n)` -/
def P1354865871501660654.Spec : Prop :=
  ∀ n, P1354865871501660654.a n = A008862 n

end A008862

/-! ## A008862.P4832989610792633198

`Δ[Δ[Δ[A219615(n)]]]`
-/

namespace A008862.P4832989610792633198
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008862.P4832989610792633198

namespace A008862

/-- `Δ[Δ[Δ[A219615(n)]]]` -/
def P4832989610792633198.Spec : Prop :=
  ∀ n, P4832989610792633198.a n = A008862 n

end A008862

/-! ## A008862.P11421771609290846516

`2^n-A035042(n)`
-/

namespace A008862.P11421771609290846516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A035042 n

end

end A008862.P11421771609290846516

namespace A008862

/-- `2^n-A035042(n)` -/
def P11421771609290846516.Spec : Prop :=
  ∀ n, P11421771609290846516.a n = A008862 n

theorem P11421771609290846516.correct : P11421771609290846516.Spec := by
  intro n
  simp only [A008862, Nat.add_sub_cancel, A008862.P11421771609290846516.a, A008862.P15109180093103356418.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035042, A035042.P1670210666577549716.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008862

/-! ## A008862.P17152840116910136613

`A000225(n)+1-A035042(n)`
-/

namespace A008862.P17152840116910136613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A035042 n)

end

end A008862.P17152840116910136613

namespace A008862

/-- `A000225(n)+1-A035042(n)` -/
def P17152840116910136613.Spec : Prop :=
  ∀ n, P17152840116910136613.a n = A008862 n

theorem P17152840116910136613.correct : P17152840116910136613.Spec := by
  intro n
  simp only [A008862, Nat.add_sub_cancel, A008862.P17152840116910136613.a, A008862.P15109180093103356418.a, A000225, A000225.P6535533121115206393.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035042, A035042.P1670210666577549716.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008862

/-! ## A008862.P101047875404654501

`A000325(n)+n-A035042(n)`
-/

namespace A008862.P101047875404654501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n + ((n : ℤ) - A035042 n)

end

end A008862.P101047875404654501

namespace A008862

/-- `A000325(n)+n-A035042(n)` -/
def P101047875404654501.Spec : Prop :=
  ∀ n, P101047875404654501.a n = A008862 n

theorem P101047875404654501.correct : P101047875404654501.Spec := by
  intro n
  simp only [A008862, Nat.add_sub_cancel, A008862.P101047875404654501.a, A008862.P15109180093103356418.a, A000325, A000325.P17729744711211405807.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035042, A035042.P1670210666577549716.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008862

/-! ## A008862.P7372513855172056494

`A000125(n)+A002663(n)-A035042(n)`
-/

namespace A008862.P7372513855172056494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + (A002663 n - A035042 n)

end

end A008862.P7372513855172056494

namespace A008862

/-- `A000125(n)+A002663(n)-A035042(n)` -/
def P7372513855172056494.Spec : Prop :=
  ∀ n, P7372513855172056494.a n = A008862 n

theorem P7372513855172056494.correct : P7372513855172056494.Spec := by
  intro n
  simp only [A008862, Nat.add_sub_cancel, A008862.P7372513855172056494.a, A008862.P15109180093103356418.a, A000125, A000125.P10762125132202112265.a, A002663, A002663.P16035654248427437417.a, A008861, A008861.P14057265660229562183.f1, A008861.P14057265660229562183.a, A035042, A035042.P1670210666577549716.a, A008860, A008860.P18332775515594479900.a, A008859, A008859.P14957720110934266118.a, A006261, A006261.P4266430943369696028.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A008862

/-! ## A008862.P3704412069500829009

`A007051(n)-(A035042(n)+A000392(n+1))`
-/

namespace A008862.P3704412069500829009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - (A035042 n + A000392 (n + 1))

end

end A008862.P3704412069500829009

namespace A008862

/-- `A007051(n)-(A035042(n)+A000392(n+1))` -/
def P3704412069500829009.Spec : Prop :=
  ∀ n, P3704412069500829009.a n = A008862 n

end A008862

/-!
# A008863: a(n) = Sum_{k=0..10} binomial(n,k).

The programs for A008863, the canonical program `A008863.P10720815592373183918` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008863 has offset 0).

The definition of A008863 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008863.P3098376466240793853

`Δ[A219531(n)]`
-/

namespace A008863.P3098376466240793853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008863.P3098376466240793853

namespace A008863

/-- `Δ[A219531(n)]` -/
def P3098376466240793853.Spec : Prop :=
  ∀ n, P3098376466240793853.a n = A008863 n

end A008863

/-! ## A008863.P10720815592373183918

`A008862(n)+C(n, 10)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A008863

/-- `A008862(n)+C(n, 10)` -/
def P10720815592373183918.Spec : Prop :=
  ∀ n, P10720815592373183918.a n = A008863 n

theorem P10720815592373183918.correct : P10720815592373183918.Spec := by
  intro n
  simp only [A008863]

end A008863

/-! ## A008863.P12153990738432448302

`A008862(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A008863.P12153990738432448302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008862 (n - 1) + a (n - 1)

end

end A008863.P12153990738432448302

namespace A008863

/-- `A008862(n-1)+a(n-1)` -/
def P12153990738432448302.Spec : Prop :=
  ∀ n, P12153990738432448302.a n = A008863 n

end A008863

/-! ## A008863.P522571837427178886

`A219531(n+1)-A219531(n)`
-/

namespace A008863.P522571837427178886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 (n + 1) - A219531 n

end

end A008863.P522571837427178886

namespace A008863

/-- `A219531(n+1)-A219531(n)` -/
def P522571837427178886.Spec : Prop :=
  ∀ n, P522571837427178886.a n = A008863 n

end A008863

/-! ## A008863.P8290293543056824382

`Δ[Δ[A219615(n)]]`
-/

namespace A008863.P8290293543056824382
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219615 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008863.P8290293543056824382

namespace A008863

/-- `Δ[Δ[A219615(n)]]` -/
def P8290293543056824382.Spec : Prop :=
  ∀ n, P8290293543056824382.a n = A008863 n

end A008863

/-! ## A008863.P15541233599445468511

`Δ[Δ[Δ[A219676(n)]]]`
-/

namespace A008863.P15541233599445468511
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008863.P15541233599445468511

namespace A008863

/-- `Δ[Δ[Δ[A219676(n)]]]` -/
def P15541233599445468511.Spec : Prop :=
  ∀ n, P15541233599445468511.a n = A008863 n

end A008863

/-!
# A008864: a(n) = prime(n) + 1.

The programs for A008864, the canonical program `A008864.P9177617808325052279` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008864 has offset 1).

The definition of A008864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+1` (program `A008864.P9177617808325052279`, by `A008864.P9177617808325052279.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008864.P17060157803529490397

`1+A000040(n+1)`
-/

namespace A008864.P17060157803529490397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000040 (n + 1)

end

end A008864.P17060157803529490397

namespace A008864

/-- `1+A000040(n+1)` -/
def P17060157803529490397.Spec : Prop :=
  ∀ n, P17060157803529490397.a n = A008864 (n + 1)

theorem P17060157803529490397.correct : P17060157803529490397.Spec := by
  intro n
  simp only [A008864, Nat.add_sub_cancel, A008864.P17060157803529490397.a, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A008864

/-! ## A008864.P9177617808325052279

`A000040(n+1)+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008864

/-- `A000040(n+1)+1` -/
def P9177617808325052279.Spec : Prop :=
  ∀ n, P9177617808325052279.a n = A008864 (n + 1)

theorem P9177617808325052279.correct : P9177617808325052279.Spec := by
  intro n
  simp only [A008864, Nat.add_sub_cancel]

end A008864

/-! ## A008864.P9878748949939227155

`A084920(n+1)/A006093(n+1)`
-/

namespace A008864.P9878748949939227155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 1) : ℚ) / (A006093 (n + 1) : ℚ)

end

end A008864.P9878748949939227155

namespace A008864

/-- `A084920(n+1)/A006093(n+1)` -/
def P9878748949939227155.Spec : Prop :=
  ∀ n, P9878748949939227155.a n = (A008864 (n + 1) : ℚ)

end A008864

/-! ## A008864.P5597265425072839771

`A000203(A000040(n+1))`
-/

namespace A008864.P5597265425072839771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000040 (n + 1)).toNat

end

end A008864.P5597265425072839771

namespace A008864

/-- `A000203(A000040(n+1))` -/
def P5597265425072839771.Spec : Prop :=
  ∀ n, P5597265425072839771.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P17168908081215358803

`p?[round(8*n/7)]+1`
-/

namespace A008864.P17168908081215358803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A008864.P17168908081215358803

namespace A008864

/-- `p?[round(8*n/7)]+1` -/
def P17168908081215358803.Spec : Prop :=
  ∀ n, P17168908081215358803.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P1287846707983652242

`A028815(n+1)`
-/

namespace A008864.P1287846707983652242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

end

end A008864.P1287846707983652242

namespace A008864

/-- `A028815(n+1)` -/
def P1287846707983652242.Spec : Prop :=
  ∀ n, P1287846707983652242.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P4291731188115860555

`sqrt(A110833(n+1))`
-/

namespace A008864.P4291731188115860555
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ)

end

end A008864.P4291731188115860555

namespace A008864

/-- `sqrt(A110833(n+1))` -/
def P4291731188115860555.Spec : Prop :=
  ∀ n, P4291731188115860555.a n = (A008864 (n + 1) : ℝ)

end A008864

/-! ## A008864.P4005521965224977404

`∑[A125266(n+1)]`
-/

namespace A008864.P4005521965224977404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008864.P4005521965224977404

namespace A008864

/-- `∑[A125266(n+1)]` -/
def P4005521965224977404.Spec : Prop :=
  ∀ n, P4005521965224977404.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P10911329155944293935

`Δ[A007504(n)]+1`
-/

namespace A008864.P10911329155944293935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A008864.P10911329155944293935

namespace A008864

/-- `Δ[A007504(n)]+1` -/
def P10911329155944293935.Spec : Prop :=
  ∀ n, P10911329155944293935.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P6626642004277994724

`∑[A075526(n)]+2`
-/

namespace A008864.P6626642004277994724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A008864.P6626642004277994724

namespace A008864

/-- `∑[A075526(n)]+2` -/
def P6626642004277994724.Spec : Prop :=
  ∀ n, P6626642004277994724.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P14494446275992224902

`A006093(n+1)+2`
-/

namespace A008864.P14494446275992224902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

end

end A008864.P14494446275992224902

namespace A008864

/-- `A006093(n+1)+2` -/
def P14494446275992224902.Spec : Prop :=
  ∀ n, P14494446275992224902.a n = A008864 (n + 1)

theorem P14494446275992224902.correct : P14494446275992224902.Spec := by
  intro n
  simp only [A008864, Nat.add_sub_cancel, A008864.P14494446275992224902.a, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008864

/-! ## A008864.P14594211468501474640

`3+A040976(n+1)`
-/

namespace A008864.P14594211468501474640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A040976 (n + 1)

end

end A008864.P14594211468501474640

namespace A008864

/-- `3+A040976(n+1)` -/
def P14594211468501474640.Spec : Prop :=
  ∀ n, P14594211468501474640.a n = A008864 (n + 1)

theorem P14594211468501474640.correct : P14594211468501474640.Spec := by
  intro n
  simp only [A008864, Nat.add_sub_cancel, A008864.P14594211468501474640.a, A008864.P9177617808325052279.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A008864

/-! ## A008864.P8363572354527229650

`A014688(n+1)-n`
-/

namespace A008864.P8363572354527229650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (n : ℤ)

end

end A008864.P8363572354527229650

namespace A008864

/-- `A014688(n+1)-n` -/
def P8363572354527229650.Spec : Prop :=
  ∀ n, P8363572354527229650.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P11807317851636846659

`sqrt(A005722(n+1))+2`
-/

namespace A008864.P11807317851636846659
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) + 2

end

end A008864.P11807317851636846659

namespace A008864

/-- `sqrt(A005722(n+1))+2` -/
def P11807317851636846659.Spec : Prop :=
  ∀ n, P11807317851636846659.a n = (A008864 (n + 1) : ℝ)

end A008864

/-! ## A008864.P2500400036924478866

`∑[A054541(n+1)]+1`
-/

namespace A008864.P2500400036924478866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A008864.P2500400036924478866

namespace A008864

/-- `∑[A054541(n+1)]+1` -/
def P2500400036924478866.Spec : Prop :=
  ∀ n, P2500400036924478866.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P12242344905243057410

`∑[A230847(n+1)]-n`
-/

namespace A008864.P12242344905243057410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A008864.P12242344905243057410

namespace A008864

/-- `∑[A230847(n+1)]-n` -/
def P12242344905243057410.Spec : Prop :=
  ∀ n, P12242344905243057410.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P11144461273084949626

`a(n-1)+A001223(n)` with `a(0)=3`
-/

namespace A008864.P11144461273084949626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + A001223 n

end

end A008864.P11144461273084949626

namespace A008864

/-- `a(n-1)+A001223(n)` -/
def P11144461273084949626.Spec : Prop :=
  ∀ n, P11144461273084949626.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P2085476714350246513

`∑{d}[A000040(2*n-(n-1)), #]`
-/

namespace A008864.P2085476714350246513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A008864.P2085476714350246513

namespace A008864

/-- `∑{d}[A000040(2*n-(n-1)), #]` -/
def P2085476714350246513.Spec : Prop :=
  ∀ n, (P2085476714350246513.a n : ℤ) = A008864 (n + 1)

end A008864

/-! ## A008864.P10987984762613676985

`1-Δ[a(n-1)-A000040(n)]` with `a(0)=0`
-/

namespace A008864.P10987984762613676985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A000040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A008864.P10987984762613676985

namespace A008864

/-- `1-Δ[a(n-1)-A000040(n)]` -/
def P10987984762613676985.Spec : Prop :=
  ∀ n, P10987984762613676985.a n = A008864 (n + 1)

end A008864

/-! ## A008864.P4072423119081410406

`A014686(n+1)+A010673(n)`
-/

namespace A008864.P4072423119081410406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014686 (n + 1) + A010673 n

end

end A008864.P4072423119081410406

namespace A008864

/-- `A014686(n+1)+A010673(n)` -/
def P4072423119081410406.Spec : Prop :=
  ∀ n, P4072423119081410406.a n = A008864 (n + 1)

end A008864

/-!
# A008865: a(n) = n^2 - 2.

The programs for A008865, the canonical program `A008865.P16699731729816255732` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008865 has offset 1).

The definition of A008865 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²-2` (program `A008865.P16699731729816255732`, by `A008865.P16699731729816255732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A008865.P16699731729816255732

`(n+1)²-2`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008865

/-- `(n+1)²-2` -/
def P16699731729816255732.Spec : Prop :=
  ∀ n, P16699731729816255732.a n = A008865 (n + 1)

theorem P16699731729816255732.correct : P16699731729816255732.Spec := by
  intro n
  simp only [A008865, Nat.add_sub_cancel]

end A008865

/-! ## A008865.P13335565910985934751

`record[(1-n)²-2]`
-/

namespace A008865.P13335565910985934751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008865.P13335565910985934751

namespace A008865

/-- `record[(1-n)²-2]` -/
def P13335565910985934751.Spec : Prop :=
  ∀ n, P13335565910985934751.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P2310457503477818070

`or(2, n*(n+2)-1)`
-/

namespace A008865.P2310457503477818070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n * (n + 2) : ℤ) - 1)

end

end A008865.P2310457503477818070

namespace A008865

/-- `or(2, n*(n+2)-1)` -/
def P2310457503477818070.Spec : Prop :=
  ∀ n, P2310457503477818070.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P15765794829474561823

`xor(2, (n+3)*(n-1))`
-/

namespace A008865.P15765794829474561823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n + 3 : ℤ) * ((n : ℤ) - 1))

end

end A008865.P15765794829474561823

namespace A008865

/-- `xor(2, (n+3)*(n-1))` -/
def P15765794829474561823.Spec : Prop :=
  ∀ n, P15765794829474561823.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P8511283199791445917

`ceil(n/acot(n+2)-ϕ)`
-/

namespace A008865.P8511283199791445917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n + 2 : ℝ) - Real.goldenRatio⌉

end

end A008865.P8511283199791445917

namespace A008865

/-- `ceil(n/acot(n+2)-ϕ)` -/
def P8511283199791445917.Spec : Prop :=
  ∀ n, P8511283199791445917.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P6333284748528300339

`∑[a(n-1)+2]` with `a(0)=-1, a(1)=3`
-/

namespace A008865.P6333284748528300339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008865.P6333284748528300339

namespace A008865

/-- `∑[a(n-1)+2]` -/
def P6333284748528300339.Spec : Prop :=
  ∀ n, P6333284748528300339.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P15064358838472588881

`ogf((1-5x+2x^2)/(-1+3x-3x^2+x^3))`
-/

namespace A008865.P15064358838472588881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 5, -2] [1, -3, 3, -1] n

end

end A008865.P15064358838472588881

namespace A008865

/-- `ogf((1-5x+2x^2)/(-1+3x-3x^2+x^3))` -/
def P15064358838472588881.Spec : Prop :=
  ∀ n, P15064358838472588881.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P12305081903309741529

`-(xor(-1, (n+1)²)+3)`
-/

namespace A008865.P12305081903309741529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) ((n + 1) ^ 2 : ℤ) + 3)

end

end A008865.P12305081903309741529

namespace A008865

/-- `-(xor(-1, (n+1)²)+3)` -/
def P12305081903309741529.Spec : Prop :=
  ∀ n, P12305081903309741529.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P4804011760114447027

`-(∑[xor(2*n, -1)]+2)`
-/

namespace A008865.P4804011760114447027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A008865.P4804011760114447027

namespace A008865

/-- `-(∑[xor(2*n, -1)]+2)` -/
def P4804011760114447027.Spec : Prop :=
  ∀ n, P4804011760114447027.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P12582076050349557227

`ceil(lcm(n, n+1)-ϕ+n)`
-/

namespace A008865.P12582076050349557227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm n (n + 1) : ℝ) - Real.goldenRatio + (n : ℝ)⌉

end

end A008865.P12582076050349557227

namespace A008865

/-- `ceil(lcm(n, n+1)-ϕ+n)` -/
def P12582076050349557227.Spec : Prop :=
  ∀ n, P12582076050349557227.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P4627675804519297021

`Δ[a(n-1)-(2-n²)]` with `a(0)=0`
-/

namespace A008865.P4627675804519297021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - (2 - (n ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A008865.P4627675804519297021

namespace A008865

/-- `Δ[a(n-1)-(2-n²)]` -/
def P4627675804519297021.Spec : Prop :=
  ∀ n, P4627675804519297021.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P18043908680655525143

`floor(C(n+2, 2)+∑[n]-ϕ)`
-/

namespace A008865.P18043908680655525143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) 2 : ℝ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.goldenRatio)⌋

end

end A008865.P18043908680655525143

namespace A008865

/-- `floor(C(n+2, 2)+∑[n]-ϕ)` -/
def P18043908680655525143.Spec : Prop :=
  ∀ n, P18043908680655525143.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P10988758680339976609

`ceil(n*(n+2)-atan(n+2))`
-/

namespace A008865.P10988758680339976609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n * (n + 2) : ℝ) - Real.arctan (n + 2 : ℝ)⌉

end

end A008865.P10988758680339976609

namespace A008865

/-- `ceil(n*(n+2)-atan(n+2))` -/
def P10988758680339976609.Spec : Prop :=
  ∀ n, P10988758680339976609.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P12849023215856703822

`floor((n+1)*(n+1-acot(n)))`
-/

namespace A008865.P12849023215856703822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((n + 1 : ℝ) - SequenceMachineLib.acot (n : ℝ))⌋

end

end A008865.P12849023215856703822

namespace A008865

/-- `floor((n+1)*(n+1-acot(n)))` -/
def P12849023215856703822.Spec : Prop :=
  ∀ n, P12849023215856703822.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P5301801478674878090

`floor((n+1)/acot(n+1)-ϕ)`
-/

namespace A008865.P5301801478674878090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ) - Real.goldenRatio⌋

end

end A008865.P5301801478674878090

namespace A008865

/-- `floor((n+1)/acot(n+1)-ϕ)` -/
def P5301801478674878090.Spec : Prop :=
  ∀ n, P5301801478674878090.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P17453410832538867807

`ceil((n+2)*(n-acot(n+1)))`
-/

namespace A008865.P17453410832538867807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌉

end

end A008865.P17453410832538867807

namespace A008865

/-- `ceil((n+2)*(n-acot(n+1)))` -/
def P17453410832538867807.Spec : Prop :=
  ∀ n, P17453410832538867807.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P4596267364162568687

`round(n/acot(n+1)+n-1)`
-/

namespace A008865.P4596267364162568687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ) + ((n : ℤ) - 1 : ℝ))

end

end A008865.P4596267364162568687

namespace A008865

/-- `round(n/acot(n+1)+n-1)` -/
def P4596267364162568687.Spec : Prop :=
  ∀ n, P4596267364162568687.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P8793710733296587025

`round((n+2)*(n-acot(n+2)))`
-/

namespace A008865.P8793710733296587025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) * ((n : ℝ) - SequenceMachineLib.acot (n + 2 : ℝ)))

end

end A008865.P8793710733296587025

namespace A008865

/-- `round((n+2)*(n-acot(n+2)))` -/
def P8793710733296587025.Spec : Prop :=
  ∀ n, P8793710733296587025.a n = A008865 (n + 1)

end A008865

/-! ## A008865.P3722381206847010744

`(n+2)*(n-tan(acot(n+2)))`
-/

namespace A008865.P3722381206847010744
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) * ((n : ℝ) - Real.tan (SequenceMachineLib.acot (n + 2 : ℝ)))

end

end A008865.P3722381206847010744

namespace A008865

/-- `(n+2)*(n-tan(acot(n+2)))` -/
def P3722381206847010744.Spec : Prop :=
  ∀ n, P3722381206847010744.a n = (A008865 (n + 1) : ℝ)

end A008865

/-! ## A008865.P6082491086989484238

`floor(a(n-2)+4*n)` with `a(0)=-1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A008865.P6082491086989484238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  a (n - 2) + (4 * n : ℤ)

end

end A008865.P6082491086989484238

namespace A008865

/-- `floor(a(n-2)+4*n)` -/
def P6082491086989484238.Spec : Prop :=
  ∀ n, P6082491086989484238.a n = A008865 (n + 1)

theorem P6082491086989484238.correct : P6082491086989484238.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A008865, Nat.add_sub_cancel, A008865.P6082491086989484238.a, A008865.P16699731729816255732.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A008865, Nat.add_sub_cancel, A008865.P6082491086989484238.a, A008865.P16699731729816255732.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A008865

/-!
# A008866: Prime(A052928(n+1)) + (-1)^n* prime(A109613(n)).

The programs for A008866, the canonical program `A008866.P5966189434648982322` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008866 has offset 1).

The definition of A008866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008866.P5412257634817329547

`A000040(2*ceil((n+1)/2))+(-1)^(n+1)*A000040(2*floor((n+1)/2)+1)`
-/

namespace A008866.P5412257634817329547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * ⌈(n + 1 : ℚ) / 2⌉).toNat + (-1) ^ (n + 1) * A000040 (2 * ⌊(n + 1 : ℚ) / 2⌋ + 1).toNat

end

end A008866.P5412257634817329547

namespace A008866

/-- `A000040(2*ceil((n+1)/2))+(-1)^(n+1)*A000040(2*floor((n+1)/2)+1)` -/
def P5412257634817329547.Spec : Prop :=
  ∀ n, P5412257634817329547.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P5966189434648982322

`A000040(A052928(n+2))+(-1)^(n+1)*A000040(A109613(n+1))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008866

/-- `A000040(A052928(n+2))+(-1)^(n+1)*A000040(A109613(n+1))` -/
def P5966189434648982322.Spec : Prop :=
  ∀ n, P5966189434648982322.a n = A008866 (n + 1)

theorem P5966189434648982322.correct : P5966189434648982322.Spec := by
  intro n
  simp only [A008866, Nat.add_sub_cancel]

end A008866

/-! ## A008866.P1588034489108184244

`A273960(n+1)+A065091(n+1)`
-/

namespace A008866.P1588034489108184244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + A065091 (n + 1)

end

end A008866.P1588034489108184244

namespace A008866

/-- `A273960(n+1)+A065091(n+1)` -/
def P1588034489108184244.Spec : Prop :=
  ∀ n, P1588034489108184244.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P3163912802425900257

`A001043(n+1)%A107621(n+1)`
-/

namespace A008866.P3163912802425900257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001043 (n + 1)) (A107621 (n + 1))

end

end A008866.P3163912802425900257

namespace A008866

/-- `A001043(n+1)%A107621(n+1)` -/
def P3163912802425900257.Spec : Prop :=
  ∀ n, P3163912802425900257.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P15951134918660977568

`A273960(n+1)+A000040(n+2)`
-/

namespace A008866.P15951134918660977568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + A000040 (n + 2)

end

end A008866.P15951134918660977568

namespace A008866

/-- `A273960(n+1)+A000040(n+2)` -/
def P15951134918660977568.Spec : Prop :=
  ∀ n, P15951134918660977568.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P10266500951797177980

`A273960(n+1)+A006005(n+2)`
-/

namespace A008866.P10266500951797177980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + A006005 (n + 2)

end

end A008866.P10266500951797177980

namespace A008866

/-- `A273960(n+1)+A006005(n+2)` -/
def P10266500951797177980.Spec : Prop :=
  ∀ n, P10266500951797177980.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P10240446735799275388

`abs(A182986(n+2)-A273960(n+2))`
-/

namespace A008866.P10240446735799275388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182986 (n + 2) - A273960 (n + 2)|

end

end A008866.P10240446735799275388

namespace A008866

/-- `abs(A182986(n+2)-A273960(n+2))` -/
def P10240446735799275388.Spec : Prop :=
  ∀ n, P10240446735799275388.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P16353291401330170555

`A273960(n+1)+A033999(n)*A273960(n+2)`
-/

namespace A008866.P16353291401330170555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + A033999 n * A273960 (n + 2)

end

end A008866.P16353291401330170555

namespace A008866

/-- `A273960(n+1)+A033999(n)*A273960(n+2)` -/
def P16353291401330170555.Spec : Prop :=
  ∀ n, P16353291401330170555.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P6714583982892539318

`A000040(n+2)-A000040(n+1)*A033999(n)`
-/

namespace A008866.P6714583982892539318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A000040 (n + 1) * A033999 n

end

end A008866.P6714583982892539318

namespace A008866

/-- `A000040(n+2)-A000040(n+1)*A033999(n)` -/
def P6714583982892539318.Spec : Prop :=
  ∀ n, P6714583982892539318.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P7778666774838811387

`A000040(n+2)+A000040(n+1)/A033999(n+1)`
-/

namespace A008866.P7778666774838811387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) + (A000040 (n + 1) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A008866.P7778666774838811387

namespace A008866

/-- `A000040(n+2)+A000040(n+1)/A033999(n+1)` -/
def P7778666774838811387.Spec : Prop :=
  ∀ n, P7778666774838811387.a n = (A008866 (n + 1) : ℚ)

end A008866

/-! ## A008866.P6826396487740629397

`A273960(n+1)-A273960(n+2)/A033999(n+1)`
-/

namespace A008866.P6826396487740629397
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273960 (n + 1) : ℚ) - (A273960 (n + 2) : ℚ) / (A033999 (n + 1) : ℚ)

end

end A008866.P6826396487740629397

namespace A008866

/-- `A273960(n+1)-A273960(n+2)/A033999(n+1)` -/
def P6826396487740629397.Spec : Prop :=
  ∀ n, P6826396487740629397.a n = (A008866 (n + 1) : ℚ)

end A008866

/-! ## A008866.P15121014639312006051

`A273960(n+1)+p?[A061345(n)]`
-/

namespace A008866.P15121014639312006051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A008866.P15121014639312006051

namespace A008866

/-- `A273960(n+1)+p?[A061345(n)]` -/
def P15121014639312006051.Spec : Prop :=
  ∀ n, P15121014639312006051.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P11498367889789466857

`A273960(n+1)+record[A000705(n+2)]`
-/

namespace A008866.P11498367889789466857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008866.P11498367889789466857

namespace A008866

/-- `A273960(n+1)+record[A000705(n+2)]` -/
def P11498367889789466857.Spec : Prop :=
  ∀ n, P11498367889789466857.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P5427147327756069531

`Δ[A061802(n)]%A000040(A165998(n))`
-/

namespace A008866.P5427147327756069531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000040 (A165998 n).toNat)

end

end A008866.P5427147327756069531

namespace A008866

/-- `Δ[A061802(n)]%A000040(A165998(n))` -/
def P5427147327756069531.Spec : Prop :=
  ∀ n, P5427147327756069531.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P519626140128878074

`A001043(n+1)%A000040(A165998(n))`
-/

namespace A008866.P519626140128878074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001043 (n + 1)) (A000040 (A165998 n).toNat)

end

end A008866.P519626140128878074

namespace A008866

/-- `A001043(n+1)%A000040(A165998(n))` -/
def P519626140128878074.Spec : Prop :=
  ∀ n, P519626140128878074.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P15217126697099606140

`A273960(n+1)+p?[A004273(n)]`
-/

namespace A008866.P15217126697099606140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A008866.P15217126697099606140

namespace A008866

/-- `A273960(n+1)+p?[A004273(n)]` -/
def P15217126697099606140.Spec : Prop :=
  ∀ n, P15217126697099606140.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P1579292808664573502

`A273960(n+1)+p?[A005408(n)]`
-/

namespace A008866.P1579292808664573502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A008866.P1579292808664573502

namespace A008866

/-- `A273960(n+1)+p?[A005408(n)]` -/
def P1579292808664573502.Spec : Prop :=
  ∀ n, P1579292808664573502.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P371745144717743545

`abs(p?[A057717(n)]-A273960(n+2))`
-/

namespace A008866.P371745144717743545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A273960 (n + 2)|

end

end A008866.P371745144717743545

namespace A008866

/-- `abs(p?[A057717(n)]-A273960(n+2))` -/
def P371745144717743545.Spec : Prop :=
  ∀ n, P371745144717743545.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P14614824365559923017

`A273960(n+1)+p?[A022998(n)]`
-/

namespace A008866.P14614824365559923017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A008866.P14614824365559923017

namespace A008866

/-- `A273960(n+1)+p?[A022998(n)]` -/
def P14614824365559923017.Spec : Prop :=
  ∀ n, P14614824365559923017.a n = A008866 (n + 1)

end A008866

/-! ## A008866.P14545369901454200917

`A273960(n+1)+record[A014963(n+3)]`
-/

namespace A008866.P14545369901454200917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A008866.P14545369901454200917

namespace A008866

/-- `A273960(n+1)+record[A014963(n+3)]` -/
def P14545369901454200917.Spec : Prop :=
  ∀ n, P14545369901454200917.a n = A008866 (n + 1)

end A008866

/-!
# A008867: Triangle of truncated triangular numbers: k-th term in n-th row is number of dots in hexagon of sides k, n-k, k, n-k, k, n-k.

The programs for A008867, the canonical program `A008867.P9313319048555575930` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008867 has offset 2).

The definition of A008867 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008867.P5777706309676914961

`∑[∑[char[∑[n]]]²-2*n]`
-/

namespace A008867.P5777706309676914961
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008867.P5777706309676914961

namespace A008867

/-- `∑[∑[char[∑[n]]]²-2*n]` -/
def P5777706309676914961.Spec : Prop :=
  ∀ n, P5777706309676914961.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P9164125369314562799

`∑[∑[char[∑[n]]]²]%(n+1)+1+n`
-/

namespace A008867.P9164125369314562799
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + 1 + n

end

end A008867.P9164125369314562799

namespace A008867

/-- `∑[∑[char[∑[n]]]²]%(n+1)+1+n` -/
def P9164125369314562799.Spec : Prop :=
  ∀ n, (P9164125369314562799.a n : ℤ) = A008867 (n + 2)

end A008867

/-! ## A008867.P14622974785247888754

`∑[char[∑[n]]]²-n-(n-a(n-1))` with `a(0)=1`
-/

namespace A008867.P14622974785247888754
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A008867.P14622974785247888754

namespace A008867

/-- `∑[char[∑[n]]]²-n-(n-a(n-1))` -/
def P14622974785247888754.Spec : Prop :=
  ∀ n, P14622974785247888754.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P9682316242751738728

`A077028(comp[∑[n]])+n`
-/

namespace A008867.P9682316242751738728
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (n : ℤ)

end

end A008867.P9682316242751738728

namespace A008867

/-- `A077028(comp[∑[n]])+n` -/
def P9682316242751738728.Spec : Prop :=
  ∀ n, P9682316242751738728.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P9313319048555575930

`∑[A114327(n)]+1+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008867

/-- `∑[A114327(n)]+1+n` -/
def P9313319048555575930.Spec : Prop :=
  ∀ n, P9313319048555575930.a n = A008867 (n + 2)

theorem P9313319048555575930.correct : P9313319048555575930.Spec := by
  intro n
  simp only [A008867, Nat.add_sub_cancel]

end A008867

/-! ## A008867.P5329876967273663319

`n+1+A094053(1+n)`
-/

namespace A008867.P5329876967273663319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A094053 (1 + n)

end

end A008867.P5329876967273663319

namespace A008867

/-- `n+1+A094053(1+n)` -/
def P5329876967273663319.Spec : Prop :=
  ∀ n, P5329876967273663319.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P15036264427801472094

`∑[A265129(n+1)]-(n+1)²`
-/

namespace A008867.P15036264427801472094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A008867.P15036264427801472094

namespace A008867

/-- `∑[A265129(n+1)]-(n+1)²` -/
def P15036264427801472094.Spec : Prop :=
  ∀ n, P15036264427801472094.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P5853032474538552591

`A128139(n)+A061579(n)`
-/

namespace A008867.P5853032474538552591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 n + A061579 n

end

end A008867.P5853032474538552591

namespace A008867

/-- `A128139(n)+A061579(n)` -/
def P5853032474538552591.Spec : Prop :=
  ∀ n, P5853032474538552591.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P14076747293137711699

`A271668(n)+A087401(n)`
-/

namespace A008867.P14076747293137711699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271668 n + A087401 n

end

end A008867.P14076747293137711699

namespace A008867

/-- `A271668(n)+A087401(n)` -/
def P14076747293137711699.Spec : Prop :=
  ∀ n, P14076747293137711699.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P17243051964954810281

`A057944(n)+A003991(n+1)`
-/

namespace A008867.P17243051964954810281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A003991 (n + 1)

end

end A008867.P17243051964954810281

namespace A008867

/-- `A057944(n)+A003991(n+1)` -/
def P17243051964954810281.Spec : Prop :=
  ∀ n, P17243051964954810281.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P15955811478690567605

`A057944(n)+A059036(n)+1`
-/

namespace A008867.P15955811478690567605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + (A059036 n + 1)

end

end A008867.P15955811478690567605

namespace A008867

/-- `A057944(n)+A059036(n)+1` -/
def P15955811478690567605.Spec : Prop :=
  ∀ n, P15955811478690567605.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P13747117103537576593

`A127739(n+1)+A004247(n)`
-/

namespace A008867.P13747117103537576593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127739 (n + 1) + A004247 n

end

end A008867.P13747117103537576593

namespace A008867

/-- `A127739(n+1)+A004247(n)` -/
def P13747117103537576593.Spec : Prop :=
  ∀ n, P13747117103537576593.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P12471030813683748662

`A141419(n+1)+A049780(n)`
-/

namespace A008867.P12471030813683748662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) + A049780 n

end

end A008867.P12471030813683748662

namespace A008867

/-- `A141419(n+1)+A049780(n)` -/
def P12471030813683748662.Spec : Prop :=
  ∀ n, P12471030813683748662.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P3496028472793683265

`A127738(n+1)+A083920(n)`
-/

namespace A008867.P3496028472793683265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127738 (n + 1) + A083920 n

end

end A008867.P3496028472793683265

namespace A008867

/-- `A127738(n+1)+A083920(n)` -/
def P3496028472793683265.Spec : Prop :=
  ∀ n, P3496028472793683265.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P17870734192949166246

`A180858(n+1)-A335262(n)`
-/

namespace A008867.P17870734192949166246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180858 (n + 1) - A335262 n

end

end A008867.P17870734192949166246

namespace A008867

/-- `A180858(n+1)-A335262(n)` -/
def P17870734192949166246.Spec : Prop :=
  ∀ n, P17870734192949166246.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P8864479693570948192

`A025581(n)+A077028(n)+n`
-/

namespace A008867.P8864479693570948192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A077028 n + (n : ℤ))

end

end A008867.P8864479693570948192

namespace A008867

/-- `A025581(n)+A077028(n)+n` -/
def P8864479693570948192.Spec : Prop :=
  ∀ n, P8864479693570948192.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P18040921289742214949

`A309559(n)+n-A112367(n)`
-/

namespace A008867.P18040921289742214949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309559 n + ((n : ℤ) - A112367 n)

end

end A008867.P18040921289742214949

namespace A008867

/-- `A309559(n)+n-A112367(n)` -/
def P18040921289742214949.Spec : Prop :=
  ∀ n, P18040921289742214949.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P8771389513647668680

`A004736(n+1)+A004247(n)+n`
-/

namespace A008867.P8771389513647668680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + (A004247 n + (n : ℤ))

end

end A008867.P8771389513647668680

namespace A008867

/-- `A004736(n+1)+A004247(n)+n` -/
def P8771389513647668680.Spec : Prop :=
  ∀ n, P8771389513647668680.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P2243515877857771505

`∑[A025581(n)+2]-A014370(n+1)`
-/

namespace A008867.P2243515877857771505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A014370 (n + 1)

end

end A008867.P2243515877857771505

namespace A008867

/-- `∑[A025581(n)+2]-A014370(n+1)` -/
def P2243515877857771505.Spec : Prop :=
  ∀ n, P2243515877857771505.a n = A008867 (n + 2)

end A008867

/-! ## A008867.P13048635466847754697

`A128139(n+1)+n`
-/

namespace A008867.P13048635466847754697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128139 (n + 1) + (n : ℤ)

end

end A008867.P13048635466847754697

namespace A008867

/-- `A128139(n+1)+n` -/
def P13048635466847754697.Spec : Prop :=
  ∀ n, P13048635466847754697.a n = A008867 (n + 2)

end A008867

/-!
# A008873: 3x+1 sequence starting at 97.

The programs for A008873, the canonical program `A008873.P1671193655373844113` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008873 has offset 0).

The definition of A008873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008873.P1671193655373844113

`A006370(a(n-1))` with `a(0)=97`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008873

/-- `A006370(a(n-1))` -/
def P1671193655373844113.Spec : Prop :=
  ∀ n, P1671193655373844113.a n = A008873 n

theorem P1671193655373844113.correct : P1671193655373844113.Spec := by
  intro n
  simp only [A008873]

end A008873

/-!
# A008874: 3x+1 sequence starting at 63.

The programs for A008874, the canonical program `A008874.P8003952070289375166` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008874 has offset 0).

The definition of A008874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008874.P8003952070289375166

`A006370(a(n-1))` with `a(0)=63`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008874

/-- `A006370(a(n-1))` -/
def P8003952070289375166.Spec : Prop :=
  ∀ n, P8003952070289375166.a n = A008874 n

theorem P8003952070289375166.correct : P8003952070289375166.Spec := by
  intro n
  simp only [A008874]

end A008874

/-!
# A008875: 3x+1 sequence starting at 95.

The programs for A008875, the canonical program `A008875.P10416676355482975149` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008875 has offset 0).

The definition of A008875 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008874, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A008875.P10416676355482975149

`A008874(n+2)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008875

/-- `A008874(n+2)` -/
def P10416676355482975149.Spec : Prop :=
  ∀ n, P10416676355482975149.a n = A008875 n

theorem P10416676355482975149.correct : P10416676355482975149.Spec := by
  intro n
  simp only [A008875]

end A008875

/-!
# A008876: 3x+1 sequence starting at 81.

The programs for A008876, the canonical program `A008876.P18276786027771550035` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008876 has offset 0).

The definition of A008876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008876.P18276786027771550035

`A006370(a(n-1))` with `a(0)=81`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008876

/-- `A006370(a(n-1))` -/
def P18276786027771550035.Spec : Prop :=
  ∀ n, P18276786027771550035.a n = A008876 n

theorem P18276786027771550035.correct : P18276786027771550035.Spec := by
  intro n
  simp only [A008876]

end A008876

/-!
# A008877: 3x+1 sequence starting at 57.

The programs for A008877, the canonical program `A008877.P15527850574462886525` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008877 has offset 0).

The definition of A008877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008877.P15527850574462886525

`A006370(a(n-1))` with `a(0)=57`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008877

/-- `A006370(a(n-1))` -/
def P15527850574462886525.Spec : Prop :=
  ∀ n, P15527850574462886525.a n = A008877 n

theorem P15527850574462886525.correct : P15527850574462886525.Spec := by
  intro n
  simp only [A008877]

end A008877

/-!
# A008878: 3x+1 sequence starting at 39.

The programs for A008878, the canonical program `A008878.P7526681278005354983` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008878 has offset 0).

The definition of A008878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008878.P7526681278005354983

`A006370(a(n-1))` with `a(0)=39`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008878

/-- `A006370(a(n-1))` -/
def P7526681278005354983.Spec : Prop :=
  ∀ n, P7526681278005354983.a n = A008878 n

theorem P7526681278005354983.correct : P7526681278005354983.Spec := by
  intro n
  simp only [A008878]

end A008878

/-!
# A008879: 3x+1 sequence starting at 87.

The programs for A008879, the canonical program `A008879.P8474290159504392472` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008879 has offset 0).

The definition of A008879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008879.P8474290159504392472

`A006370(a(n-1))` with `a(0)=87`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008879

/-- `A006370(a(n-1))` -/
def P8474290159504392472.Spec : Prop :=
  ∀ n, P8474290159504392472.a n = A008879 n

theorem P8474290159504392472.correct : P8474290159504392472.Spec := by
  intro n
  simp only [A008879]

end A008879

/-!
# A008880: 3x + 1 sequence starting at 33.

The programs for A008880, the canonical program `A008880.P11489506952217173467` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008880 has offset 0).

The definition of A008880 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008880.P11489506952217173467

`A006370(a(n-1))` with `a(0)=33`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008880

/-- `A006370(a(n-1))` -/
def P11489506952217173467.Spec : Prop :=
  ∀ n, P11489506952217173467.a n = A008880 n

theorem P11489506952217173467.correct : P11489506952217173467.Spec := by
  intro n
  simp only [A008880]

end A008880

/-!
# A008881: a(n) = Product_{j=0..5} floor((n+j)/6).

The programs for A008881, there is no canonical definition to state claims against.
-/

/-! ## A008881.P18059897985028731842

`A171181(A009641(n+2))`
-/

namespace A008881.P18059897985028731842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (A009641 (n + 2)).toNat

end

end A008881.P18059897985028731842

/-! ## A008881.P16109931324770403039

`A126257(or(1, A009641(n+2)))`
-/

namespace A008881.P16109931324770403039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126257 (Int.lor 1 (A009641 (n + 2))).toNat

end

end A008881.P16109931324770403039

/-! ## A008881.P7535580364693750332

`A175126(A009641(n+2)%A125827(n+1))`
-/

namespace A008881.P7535580364693750332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (Int.tmod (A009641 (n + 2)) (A125827 (n + 1))).toNat

end

end A008881.P7535580364693750332

/-! ## A008881.P12771895972675680587

`A175126(A009641(n+2))%A128167(3*n+2)`
-/

namespace A008881.P12771895972675680587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175126 (A009641 (n + 2)).toNat) (A128167 (3 * n + 2))

end

end A008881.P12771895972675680587

/-! ## A008881.P12102320147213044644

`A049107(2^n)-A275073(n)`
-/

namespace A008881.P12102320147213044644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049107 (2 ^ n) - A275073 n

end

end A008881.P12102320147213044644

/-!
# A008882: 3x+1 sequence starting at 99.

The programs for A008882, the canonical program `A008882.P9967260782044080548` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008882 has offset 0).

The definition of A008882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008882.P9967260782044080548

`A006370(a(n-1))` with `a(0)=99`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008882

/-- `A006370(a(n-1))` -/
def P9967260782044080548.Spec : Prop :=
  ∀ n, P9967260782044080548.a n = A008882 n

theorem P9967260782044080548.correct : P9967260782044080548.Spec := by
  intro n
  simp only [A008882]

end A008882

/-!
# A008883: 3x+1 sequence starting at 51.

The programs for A008883, the canonical program `A008883.P8711540397018335679` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008883 has offset 0).

The definition of A008883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008883.P8711540397018335679

`A006370(a(n-1))` with `a(0)=51`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008883

/-- `A006370(a(n-1))` -/
def P8711540397018335679.Spec : Prop :=
  ∀ n, P8711540397018335679.a n = A008883 n

theorem P8711540397018335679.correct : P8711540397018335679.Spec := by
  intro n
  simp only [A008883]

end A008883

/-!
# A008884: 3x+1 sequence starting at 27.

The programs for A008884, the canonical program `A008884.P3036512594241040887` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008884 has offset 0).

The definition of A008884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008884.P3036512594241040887

`A006370(a(n-1))` with `a(0)=27`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008884

/-- `A006370(a(n-1))` -/
def P3036512594241040887.Spec : Prop :=
  ∀ n, P3036512594241040887.a n = A008884 n

theorem P3036512594241040887.correct : P3036512594241040887.Spec := by
  intro n
  simp only [A008884]

end A008884

/-!
# A008885: Aliquot sequence starting at 30.

The programs for A008885, there is no canonical definition to state claims against.
-/

/-! ## A008885.P4788780594628307440

`A362440(n+2)`
-/

namespace A008885.P4788780594628307440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362440 (n + 2)

end

end A008885.P4788780594628307440

/-! ## A008885.P1380870140413512837

`A001065(A028310(a(n-1)))` with `a(0)=30`
-/

namespace A008885.P1380870140413512837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [30] fun n a =>
  A001065 (A028310 (a (n - 1)).toNat).toNat

end

end A008885.P1380870140413512837

/-!
# A008886: Aliquot sequence starting at 42.

The programs for A008886, there is no canonical definition to state claims against.
-/

/-! ## A008886.P5906137645199241717

`A008885(n+1)`
-/

namespace A008886.P5906137645199241717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008885 (n + 1)

end

end A008886.P5906137645199241717

/-! ## A008886.P187298980512663105

`A362440(n+3)`
-/

namespace A008886.P187298980512663105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362440 (n + 3)

end

end A008886.P187298980512663105

/-! ## A008886.P18174469126120427556

`abs(Δ[-∑[A008885(n)]])`
-/

namespace A008886.P18174469126120427556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008885 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A008886.P18174469126120427556

/-! ## A008886.P3407194296099299482

`filter[A008885(n), A071023(#)]`
-/

namespace A008886.P3407194296099299482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A008886.P3407194296099299482

/-! ## A008886.P1270878656150706663

`∑{d}[A008885(n), A051953(#)]`
-/

namespace A008886.P1270878656150706663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A051953 d

end

end A008886.P1270878656150706663

/-!
# A008887: Aliquot sequence starting at 60.

The programs for A008887, there is no canonical definition to state claims against.
-/

/-! ## A008887.P16609495367752931949

`A001065(A029940(a(n-1)+1))` with `a(0)=60`
-/

namespace A008887.P16609495367752931949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [60] fun n a =>
  A001065 (A029940 (a (n - 1) + 1).toNat).toNat

end

end A008887.P16609495367752931949

/-!
# A008888: Aliquot sequence starting at 138.

The programs for A008888, the canonical program `A008888.P18166674682599614551` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008888 has offset 0).

The definition of A008888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008888.P18166674682599614551

`A001065(a(n-1))` with `a(0)=138`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A008888

/-- `A001065(a(n-1))` -/
def P18166674682599614551.Spec : Prop :=
  ∀ n, P18166674682599614551.a n = A008888 n

theorem P18166674682599614551.correct : P18166674682599614551.Spec := by
  intro n
  simp only [A008888]

end A008888

/-!
# A008889: Aliquot sequence starting at 150.

The programs for A008889, the canonical program `A008889.P2877282476747895501` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008889 has offset 0).

The definition of A008889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008889.P2877282476747895501

`A008888(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A008889

/-- `A008888(n+1)` -/
def P2877282476747895501.Spec : Prop :=
  ∀ n, P2877282476747895501.a n = A008889 n

theorem P2877282476747895501.correct : P2877282476747895501.Spec := by
  intro n
  simp only [A008889]

end A008889

/-! ## A008889.P9818497994292653387

`A008888(n)-Δ[-A008888(n)]`
-/

namespace A008889.P9818497994292653387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008888 n - (f1 (n + 1) - f1 n)

end

end A008889.P9818497994292653387

namespace A008889

/-- `A008888(n)-Δ[-A008888(n)]` -/
def P9818497994292653387.Spec : Prop :=
  ∀ n, P9818497994292653387.a n = A008889 n

theorem P9818497994292653387.correct : P9818497994292653387.Spec := by
  intro n
  simp only [A008889, Nat.add_sub_cancel, A008889.P9818497994292653387.f1, A008889.P9818497994292653387.a, A008889.P2877282476747895501.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A008889

/-! ## A008889.P851994464675108393

`(n%2)!*A008888(A008619(2*n))`
-/

namespace A008889.P851994464675108393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A008888 (A008619 (2 * n)).toNat

end

end A008889.P851994464675108393

namespace A008889

/-- `(n%2)!*A008888(A008619(2*n))` -/
def P851994464675108393.Spec : Prop :=
  ∀ n, P851994464675108393.a n = A008889 n

end A008889

/-! ## A008889.P2995769475856501354

`lcm(A008888(1-(n-2*n)), A020985(n))`
-/

namespace A008889.P2995769475856501354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008888 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat) (A020985 n)

end

end A008889.P2995769475856501354

namespace A008889

/-- `lcm(A008888(1-(n-2*n)), A020985(n))` -/
def P2995769475856501354.Spec : Prop :=
  ∀ n, (P2995769475856501354.a n : ℤ) = A008889 n

end A008889

/-! ## A008889.P10088116234810571256

`A279329(n)!*A008888(1-(n-2*n))`
-/

namespace A008889.P10088116234810571256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A279329 n).toNat : ℤ) * A008888 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

end

end A008889.P10088116234810571256

namespace A008889

/-- `A279329(n)!*A008888(1-(n-2*n))` -/
def P10088116234810571256.Spec : Prop :=
  ∀ n, P10088116234810571256.a n = A008889 n

end A008889

/-! ## A008889.P5310026270527532984

`A000034(2*n)*A008888(A008619(2*n))`
-/

namespace A008889.P5310026270527532984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A008888 (A008619 (2 * n)).toNat

end

end A008889.P5310026270527532984

namespace A008889

/-- `A000034(2*n)*A008888(A008619(2*n))` -/
def P5310026270527532984.Spec : Prop :=
  ∀ n, P5310026270527532984.a n = A008889 n

end A008889

/-!
# A008893: Number of equilateral triangles formed by triples of points taken from a hexagonal chunk of side n in the hexagonal lattice.

The programs for A008893, the canonical program `A008893.P3152059274839950108` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008893 has offset 0).

The definition of A008893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A008893.P6449630172219528318

`n*(n+1)*(7*n*(n+1)+2)/4`
-/

namespace A008893.P6449630172219528318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (7 * n * (n + 1) + 2) : ℚ) / 4

end

end A008893.P6449630172219528318

namespace A008893

/-- `n*(n+1)*(7*n*(n+1)+2)/4` -/
def P6449630172219528318.Spec : Prop :=
  ∀ n, P6449630172219528318.a n = (A008893 n : ℚ)

theorem P6449630172219528318.correct : P6449630172219528318.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A008893, Nat.add_sub_cancel, A008893.P6449630172219528318.a, A008893.P3152059274839950108.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A008893, Nat.add_sub_cancel, A008893.P6449630172219528318.a, A008893.P3152059274839950108.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A008893

/-! ## A008893.P3152059274839950108

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=8, a(2)=66, a(3)=258, a(4)=710`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A008893

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3152059274839950108.Spec : Prop :=
  ∀ n, P3152059274839950108.a n = A008893 n

theorem P3152059274839950108.correct : P3152059274839950108.Spec := by
  intro n
  simp only [A008893]

end A008893

/-! ## A008893.P17915195799065676890

`2*A152041(n)`
-/

namespace A008893.P17915195799065676890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152041 n

end

end A008893.P17915195799065676890

namespace A008893

/-- `2*A152041(n)` -/
def P17915195799065676890.Spec : Prop :=
  ∀ n, P17915195799065676890.a n = A008893 n

end A008893

/-! ## A008893.P17211016661965406750

`∑[a(n-1)+7]*∑[n]` with `a(0)=1, a(1)=7`
-/

namespace A008893.P17211016661965406750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A008893.P17211016661965406750

namespace A008893

/-- `∑[a(n-1)+7]*∑[n]` -/
def P17211016661965406750.Spec : Prop :=
  ∀ n, (P17211016661965406750.a n : ℤ) = A008893 n

end A008893

/-! ## A008893.P16408144984807284395

`∑[A244727(n)+n]`
-/

namespace A008893.P16408144984807284395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244727 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008893.P16408144984807284395

namespace A008893

/-- `∑[A244727(n)+n]` -/
def P16408144984807284395.Spec : Prop :=
  ∀ n, P16408144984807284395.a n = A008893 n

end A008893

/-! ## A008893.P16723588907183262187

`∑[n*A247541(n)]`
-/

namespace A008893.P16723588907183262187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A247541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A008893.P16723588907183262187

namespace A008893

/-- `∑[n*A247541(n)]` -/
def P16723588907183262187.Spec : Prop :=
  ∀ n, P16723588907183262187.a n = A008893 n

end A008893

/-! ## A008893.P16567720459743255518

`A339483(n)-∑[n]²`
-/

namespace A008893.P16567720459743255518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339483 n - (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A008893.P16567720459743255518

namespace A008893

/-- `A339483(n)-∑[n]²` -/
def P16567720459743255518.Spec : Prop :=
  ∀ n, P16567720459743255518.a n = A008893 n

end A008893

/-! ## A008893.P826682177625623316

`∑[n]*A069099(n+1)`
-/

namespace A008893.P826682177625623316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A069099 (n + 1)

end

end A008893.P826682177625623316

namespace A008893

/-- `∑[n]*A069099(n+1)` -/
def P826682177625623316.Spec : Prop :=
  ∀ n, P826682177625623316.a n = A008893 n

end A008893

/-! ## A008893.P5269210576599356410

`∑[A118465(n)]-∑[n]²`
-/

namespace A008893.P5269210576599356410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118465 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A008893.P5269210576599356410

namespace A008893

/-- `∑[A118465(n)]-∑[n]²` -/
def P5269210576599356410.Spec : Prop :=
  ∀ n, P5269210576599356410.a n = A008893 n

end A008893

/-! ## A008893.P10683483566556243299

`lcm((2*n+1)²-C(n, 2)-n, A000217(n))`
-/

namespace A008893.P10683483566556243299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((2 * n + 1) ^ 2 : ℤ) - (Nat.choose n 2 : ℤ) - (n : ℤ)) (A000217 n)

end

end A008893.P10683483566556243299

namespace A008893

/-- `lcm((2*n+1)²-C(n, 2)-n, A000217(n))` -/
def P10683483566556243299.Spec : Prop :=
  ∀ n, (P10683483566556243299.a n : ℤ) = A008893 n

end A008893

/-! ## A008893.P7415279852822591268

`A172077(n)+A051895(n)`
-/

namespace A008893.P7415279852822591268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172077 n + A051895 n

end

end A008893.P7415279852822591268

namespace A008893

/-- `A172077(n)+A051895(n)` -/
def P7415279852822591268.Spec : Prop :=
  ∀ n, P7415279852822591268.a n = A008893 n

end A008893

/-! ## A008893.P16232326324606050489

`A160747(n)-A003215(n)`
-/

namespace A008893.P16232326324606050489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160747 n - A003215 n

end

end A008893.P16232326324606050489

namespace A008893

/-- `A160747(n)-A003215(n)` -/
def P16232326324606050489.Spec : Prop :=
  ∀ n, P16232326324606050489.a n = A008893 n

end A008893

/-! ## A008893.P84032780517489654

`A007204(n)-A160767(n)`
-/

namespace A008893.P84032780517489654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n - A160767 n

end

end A008893.P84032780517489654

namespace A008893

/-- `A007204(n)-A160767(n)` -/
def P84032780517489654.Spec : Prop :=
  ∀ n, P84032780517489654.a n = A008893 n

end A008893

/-! ## A008893.P124274519263743481

`A297662(n+1)+A219086(n)`
-/

namespace A008893.P124274519263743481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) + A219086 n

end

end A008893.P124274519263743481

namespace A008893

/-- `A297662(n+1)+A219086(n)` -/
def P124274519263743481.Spec : Prop :=
  ∀ n, P124274519263743481.a n = A008893 n

end A008893

/-! ## A008893.P4880218394621840201

`A070302(n+1)-A072025(n)`
-/

namespace A008893.P4880218394621840201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070302 (n + 1) - A072025 n

end

end A008893.P4880218394621840201

namespace A008893

/-- `A070302(n+1)-A072025(n)` -/
def P4880218394621840201.Spec : Prop :=
  ∀ n, P4880218394621840201.a n = A008893 n

end A008893

/-! ## A008893.P11339812702865238171

`A000217(n)+7*A000537(n)`
-/

namespace A008893.P11339812702865238171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 7 * A000537 n

end

end A008893.P11339812702865238171

namespace A008893

/-- `A000217(n)+7*A000537(n)` -/
def P11339812702865238171.Spec : Prop :=
  ∀ n, P11339812702865238171.a n = A008893 n

end A008893

/-! ## A008893.P17190581441839891432

`lcm(A000217(n), A069099(n+1))`
-/

namespace A008893.P17190581441839891432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000217 n) (A069099 (n + 1))

end

end A008893.P17190581441839891432

namespace A008893

/-- `lcm(A000217(n), A069099(n+1))` -/
def P17190581441839891432.Spec : Prop :=
  ∀ n, (P17190581441839891432.a n : ℤ) = A008893 n

end A008893

/-! ## A008893.P10378031636184975737

`A000217(n)+A254371(n)-A000537(n)`
-/

namespace A008893.P10378031636184975737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A254371 n - A000537 n)

end

end A008893.P10378031636184975737

namespace A008893

/-- `A000217(n)+A254371(n)-A000537(n)` -/
def P10378031636184975737.Spec : Prop :=
  ∀ n, P10378031636184975737.a n = A008893 n

end A008893

/-! ## A008893.P6313397101072262150

`(A003215(n)+A000217(n))*A000217(n)`
-/

namespace A008893.P6313397101072262150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003215 n + A000217 n) * A000217 n

end

end A008893.P6313397101072262150

namespace A008893

/-- `(A003215(n)+A000217(n))*A000217(n)` -/
def P6313397101072262150.Spec : Prop :=
  ∀ n, P6313397101072262150.a n = A008893 n

end A008893

/-! ## A008893.P12006613066729299731

`A000217(n)+A000217(n)*A024966(n)`
-/

namespace A008893.P12006613066729299731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + A000217 n * A024966 n

end

end A008893.P12006613066729299731

namespace A008893

/-- `A000217(n)+A000217(n)*A024966(n)` -/
def P12006613066729299731.Spec : Prop :=
  ∀ n, P12006613066729299731.a n = A008893 n

end A008893

/-!
# A008894: 3x - 1 sequence starting at 36.

The programs for A008894, the canonical program `A008894.P10112289979587652656` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008894 has offset 0).

The definition of A008894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008894.P10112289979587652656

`A001281(a(n-1))` with `a(0)=36`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008894

/-- `A001281(a(n-1))` -/
def P10112289979587652656.Spec : Prop :=
  ∀ n, P10112289979587652656.a n = A008894 n

theorem P10112289979587652656.correct : P10112289979587652656.Spec := by
  intro n
  simp only [A008894]

end A008894

/-!
# A008895: The 3x-1 map: a(n) = n/2 if n is even, 3n-1 if n is odd.

The programs for A008895, the canonical program `A008895.P2495746317080168951` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008895 has offset 0).

The definition of A008895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008895.P2495746317080168951

`A001281(a(n-1))` with `a(0)=63`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008895

/-- `A001281(a(n-1))` -/
def P2495746317080168951.Spec : Prop :=
  ∀ n, P2495746317080168951.a n = A008895 n

theorem P2495746317080168951.correct : P2495746317080168951.Spec := by
  intro n
  simp only [A008895]

end A008895

/-!
# A008896: 3x - 1 sequence starting at 66.

The programs for A008896, the canonical program `A008896.P9510152395807805343` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008896 has offset 0).

The definition of A008896 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008896.P9510152395807805343

`A001281(a(n-1))` with `a(0)=66`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008896

/-- `A001281(a(n-1))` -/
def P9510152395807805343.Spec : Prop :=
  ∀ n, P9510152395807805343.a n = A008896 n

theorem P9510152395807805343.correct : P9510152395807805343.Spec := by
  intro n
  simp only [A008896]

end A008896

/-!
# A008897: x->x/2 if x even, x->3x-1 if x odd.

The programs for A008897, the canonical program `A008897.P17580086680733222442` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008897 has offset 0).

The definition of A008897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008897.P17580086680733222442

`A001281(a(A023443(n)))` with `a(0)=83`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008897

/-- `A001281(a(A023443(n)))` -/
def P17580086680733222442.Spec : Prop :=
  ∀ n, P17580086680733222442.a n = A008897 n

theorem P17580086680733222442.correct : P17580086680733222442.Spec := by
  intro n
  simp only [A008897]

end A008897

/-!
# A008898: Trajectory of 84 under the map x -> x/2 for x even, x -> 3x - 1 for x odd.

The programs for A008898, the canonical program `A008898.P5153367433346883263` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008898 has offset 0).

The definition of A008898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008898.P5153367433346883263

`A001281(a(n-1))` with `a(0)=84`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008898

/-- `A001281(a(n-1))` -/
def P5153367433346883263.Spec : Prop :=
  ∀ n, P5153367433346883263.a n = A008898 n

theorem P5153367433346883263.correct : P5153367433346883263.Spec := by
  intro n
  simp only [A008898]

end A008898

/-!
# A008899: x -> x/2 if x even, x -> 3x - 1 if x odd.

The programs for A008899, the canonical program `A008899.P8923274985076799054` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A008899 has offset 0).

The definition of A008899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A008899.P8923274985076799054

`A001281(a(n-1))` with `a(0)=87`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A008899

/-- `A001281(a(n-1))` -/
def P8923274985076799054.Spec : Prop :=
  ∀ n, P8923274985076799054.a n = A008899 n

theorem P8923274985076799054.correct : P8923274985076799054.Spec := by
  intro n
  simp only [A008899]

end A008899

