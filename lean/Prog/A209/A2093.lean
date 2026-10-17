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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B002.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C026

/-!
# A209301: Table T(n,k) n, k > 0, T(n,k)=n-k+1, if n>=k, T(n,k)=k-n+2, if n < k. Table read by sides of squares from T(1,n) to T(n,n), then from T(n,n) to T(n,1).

The programs for A209301, the canonical program `A209301.P14437856871989843362` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209301 has offset 1).

The definition of A209301 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209301.P5787154867596489121

`A052938(A253580(n))`
-/

namespace A209301.P5787154867596489121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A253580 n).toNat

end

end A209301.P5787154867596489121

namespace A209301

/-- `A052938(A253580(n))` -/
def P5787154867596489121.Spec : Prop :=
  ∀ n, P5787154867596489121.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P14437856871989843362

`A053615(n)+2-A118175(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209301

/-- `A053615(n)+2-A118175(n)` -/
def P14437856871989843362.Spec : Prop :=
  ∀ n, P14437856871989843362.a n = A209301 (n + 1)

theorem P14437856871989843362.correct : P14437856871989843362.Spec := by
  intro n
  simp only [A209301, Nat.add_sub_cancel]

end A209301

/-! ## A209301.P13657322131573515521

`A110657(2*(A004741(n+1)+1))`
-/

namespace A209301.P13657322131573515521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * (A004741 (n + 1) + 1)).toNat

end

end A209301.P13657322131573515521

namespace A209301

/-- `A110657(2*(A004741(n+1)+1))` -/
def P13657322131573515521.Spec : Prop :=
  ∀ n, P13657322131573515521.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P1021216869833134581

`A079813(n+1)+A004738(n+1)`
-/

namespace A209301.P1021216869833134581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 1) + A004738 (n + 1)

end

end A209301.P1021216869833134581

namespace A209301

/-- `A079813(n+1)+A004738(n+1)` -/
def P1021216869833134581.Spec : Prop :=
  ∀ n, P1021216869833134581.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P8169909790830849782

`A079813(n+1)+A053615(n)+1`
-/

namespace A209301.P8169909790830849782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079813 (n + 1) + (A053615 n + 1)

end

end A209301.P8169909790830849782

namespace A209301

/-- `A079813(n+1)+A053615(n)+1` -/
def P8169909790830849782.Spec : Prop :=
  ∀ n, P8169909790830849782.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P8487998392925703686

`A004738(n+1)+1-A118175(n)`
-/

namespace A209301.P8487998392925703686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1) + (1 - A118175 n)

end

end A209301.P8487998392925703686

namespace A209301

/-- `A004738(n+1)+1-A118175(n)` -/
def P8487998392925703686.Spec : Prop :=
  ∀ n, P8487998392925703686.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P12564678446459626943

`A004739(n+1)+2*A079813(n+1)`
-/

namespace A209301.P12564678446459626943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) + 2 * A079813 (n + 1)

end

end A209301.P12564678446459626943

namespace A209301

/-- `A004739(n+1)+2*A079813(n+1)` -/
def P12564678446459626943.Spec : Prop :=
  ∀ n, P12564678446459626943.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P17375472014055367940

`2*A004738(n+1)-A004739(n+1)`
-/

namespace A209301.P17375472014055367940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004738 (n + 1) - A004739 (n + 1)

end

end A209301.P17375472014055367940

namespace A209301

/-- `2*A004738(n+1)-A004739(n+1)` -/
def P17375472014055367940.Spec : Prop :=
  ∀ n, P17375472014055367940.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P5583851419979698183

`A004739(n+2)+1-Δ[A004741(n+1)]`
-/

namespace A209301.P5583851419979698183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 2) + (1 - (f1 (n + 1) - f1 n))

end

end A209301.P5583851419979698183

namespace A209301

/-- `A004739(n+2)+1-Δ[A004741(n+1)]` -/
def P5583851419979698183.Spec : Prop :=
  ∀ n, P5583851419979698183.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P17126166400363912769

`A110657(A004741(n+1)+A004741(n+1)+2)`
-/

namespace A209301.P17126166400363912769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A004741 (n + 1) + (A004741 (n + 1) + 2)).toNat

end

end A209301.P17126166400363912769

namespace A209301

/-- `A110657(A004741(n+1)+A004741(n+1)+2)` -/
def P17126166400363912769.Spec : Prop :=
  ∀ n, P17126166400363912769.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P13853126637603000258

`A004741(n+1)+1-A004526(A004741(n+2))`
-/

namespace A209301.P13853126637603000258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) + (1 - A004526 (A004741 (n + 2)).toNat)

end

end A209301.P13853126637603000258

namespace A209301

/-- `A004741(n+1)+1-A004526(A004741(n+2))` -/
def P13853126637603000258.Spec : Prop :=
  ∀ n, P13853126637603000258.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P16410485320232875567

`A004738(n+1)+A000290(A004738(n+1)-A004739(n+1))`
-/

namespace A209301.P16410485320232875567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1) + A000290 (A004738 (n + 1) - A004739 (n + 1)).toNat

end

end A209301.P16410485320232875567

namespace A209301

/-- `A004738(n+1)+A000290(A004738(n+1)-A004739(n+1))` -/
def P16410485320232875567.Spec : Prop :=
  ∀ n, P16410485320232875567.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P13849685780886689436

`A084990(A004738(n+1)-A004739(n+1))+A004738(n+1)`
-/

namespace A209301.P13849685780886689436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084990 (A004738 (n + 1) - A004739 (n + 1)).toNat + A004738 (n + 1)

end

end A209301.P13849685780886689436

namespace A209301

/-- `A084990(A004738(n+1)-A004739(n+1))+A004738(n+1)` -/
def P13849685780886689436.Spec : Prop :=
  ∀ n, P13849685780886689436.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P16168504835643595208

`A118175(A004738(n+1)*A004739(n+1))+A004738(n+1)`
-/

namespace A209301.P16168504835643595208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (A004738 (n + 1) * A004739 (n + 1)).toNat + A004738 (n + 1)

end

end A209301.P16168504835643595208

namespace A209301

/-- `A118175(A004738(n+1)*A004739(n+1))+A004738(n+1)` -/
def P16168504835643595208.Spec : Prop :=
  ∀ n, P16168504835643595208.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P3553344815596105133

`A004738(A049068(n+1))`
-/

namespace A209301.P3553344815596105133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A049068 (n + 1)).toNat

end

end A209301.P3553344815596105133

namespace A209301

/-- `A004738(A049068(n+1))` -/
def P3553344815596105133.Spec : Prop :=
  ∀ n, P3553344815596105133.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P7954474603716685165

`A053615(A049068(n+1)-1)+1`
-/

namespace A209301.P7954474603716685165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A049068 (n + 1) - 1).toNat + 1

end

end A209301.P7954474603716685165

namespace A209301

/-- `A053615(A049068(n+1)-1)+1` -/
def P7954474603716685165.Spec : Prop :=
  ∀ n, P7954474603716685165.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P5035735882150105953

`A004738(A000037(A000037(n+1)))`
-/

namespace A209301.P5035735882150105953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A000037 (A000037 (n + 1)).toNat).toNat

end

end A209301.P5035735882150105953

namespace A209301

/-- `A004738(A000037(A000037(n+1)))` -/
def P5035735882150105953.Spec : Prop :=
  ∀ n, P5035735882150105953.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P515610929381434945

`2*A004739(A049068(n+1))-A004739(n+1)`
-/

namespace A209301.P515610929381434945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004739 (A049068 (n + 1)).toNat - A004739 (n + 1)

end

end A209301.P515610929381434945

namespace A209301

/-- `2*A004739(A049068(n+1))-A004739(n+1)` -/
def P515610929381434945.Spec : Prop :=
  ∀ n, P515610929381434945.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P4276081209335248018

`A004737(A161827(n+1))`
-/

namespace A209301.P4276081209335248018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A161827 (n + 1)).toNat

end

end A209301.P4276081209335248018

namespace A209301

/-- `A004737(A161827(n+1))` -/
def P4276081209335248018.Spec : Prop :=
  ∀ n, P4276081209335248018.a n = A209301 (n + 1)

end A209301

/-! ## A209301.P8515269541324780223

`A187760(A064788(n+1))`
-/

namespace A209301.P8515269541324780223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187760 (A064788 (n + 1)).toNat

end

end A209301.P8515269541324780223

namespace A209301

/-- `A187760(A064788(n+1))` -/
def P8515269541324780223.Spec : Prop :=
  ∀ n, P8515269541324780223.a n = A209301 (n + 1)

end A209301

/-!
# A209302: Table T(n,k) = max{n+k-1, n+k-1} n, k > 0, read by sides of squares from T(1,n) to T(n,n), then from T(n,n) to T(n,1).

The programs for A209302, the canonical program `A209302.P16164252374650155125` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209302 has offset 1).

The definition of A209302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209302.P16058633355542538597

`A213088(n+1)+1`
-/

namespace A209302.P16058633355542538597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213088 (n + 1) + 1

end

end A209302.P16058633355542538597

namespace A209302

/-- `A213088(n+1)+1` -/
def P16058633355542538597.Spec : Prop :=
  ∀ n, P16058633355542538597.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P16164252374650155125

`∑[1-2*A023969(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209302

/-- `∑[1-2*A023969(n)]` -/
def P16164252374650155125.Spec : Prop :=
  ∀ n, P16164252374650155125.a n = A209302 (n + 1)

theorem P16164252374650155125.correct : P16164252374650155125.Spec := by
  intro n
  simp only [A209302, Nat.add_sub_cancel]

end A209302

/-! ## A209302.P40635988237454836

`∑[2*A267708(n)-1]`
-/

namespace A209302.P40635988237454836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267708 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209302.P40635988237454836

namespace A209302

/-- `∑[2*A267708(n)-1]` -/
def P40635988237454836.Spec : Prop :=
  ∀ n, P40635988237454836.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P7118540499801242291

`∑[(-1)^A060018(n+2)]`
-/

namespace A209302.P7118540499801242291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A060018 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209302.P7118540499801242291

namespace A209302

/-- `∑[(-1)^A060018(n+2)]` -/
def P7118540499801242291.Spec : Prop :=
  ∀ n, P7118540499801242291.a n = (A209302 (n + 1) : ℚ)

end A209302

/-! ## A209302.P12484531134267444167

`n+1-2*A080344(n)`
-/

namespace A209302.P12484531134267444167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - 2 * A080344 n

end

end A209302.P12484531134267444167

namespace A209302

/-- `n+1-2*A080344(n)` -/
def P12484531134267444167.Spec : Prop :=
  ∀ n, P12484531134267444167.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P15639571648122339756

`round(sqrt(2*A064788(n+1)))`
-/

namespace A209302.P15639571648122339756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A064788 (n + 1) : ℝ))

end

end A209302.P15639571648122339756

namespace A209302

/-- `round(sqrt(2*A064788(n+1)))` -/
def P15639571648122339756.Spec : Prop :=
  ∀ n, P15639571648122339756.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P12083439382402631486

`round(sqrt(2*A064790(n+1)))`
-/

namespace A209302.P12083439382402631486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * A064790 (n + 1) : ℝ))

end

end A209302.P12083439382402631486

namespace A209302

/-- `round(sqrt(2*A064790(n+1)))` -/
def P12083439382402631486.Spec : Prop :=
  ∀ n, P12083439382402631486.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P6518483499237512589

`floor(A004737(n+1)+sqrt(n))`
-/

namespace A209302.P6518483499237512589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004737 (n + 1) : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A209302.P6518483499237512589

namespace A209302

/-- `floor(A004737(n+1)+sqrt(n))` -/
def P6518483499237512589.Spec : Prop :=
  ∀ n, P6518483499237512589.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P17236338673687179485

`floor(sqrt(A124258(n+1))+sqrt(n))`
-/

namespace A209302.P17236338673687179485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A124258 (n + 1) : ℝ) + Real.sqrt (n : ℝ)⌋

end

end A209302.P17236338673687179485

namespace A209302

/-- `floor(sqrt(A124258(n+1))+sqrt(n))` -/
def P17236338673687179485.Spec : Prop :=
  ∀ n, P17236338673687179485.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P14961739987269398638

`A004737(n+1)+A000196(n)`
-/

namespace A209302.P14961739987269398638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (n + 1) + A000196 n

end

end A209302.P14961739987269398638

namespace A209302

/-- `A004737(n+1)+A000196(n)` -/
def P14961739987269398638.Spec : Prop :=
  ∀ n, P14961739987269398638.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P6381081844081579822

`A319289(n)+A319290(n)+1`
-/

namespace A209302.P6381081844081579822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319289 n + (A319290 n + 1)

end

end A209302.P6381081844081579822

namespace A209302

/-- `A319289(n)+A319290(n)+1` -/
def P6381081844081579822.Spec : Prop :=
  ∀ n, P6381081844081579822.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P12260962869265954703

`A001650(n+1)-A053615(n)`
-/

namespace A209302.P12260962869265954703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001650 (n + 1) - A053615 n

end

end A209302.P12260962869265954703

namespace A209302

/-- `A001650(n+1)-A053615(n)` -/
def P12260962869265954703.Spec : Prop :=
  ∀ n, P12260962869265954703.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P1314861497822578013

`∑[A056594(2*A172471(2*n))]`
-/

namespace A209302.P1314861497822578013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A172471 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209302.P1314861497822578013

namespace A209302

/-- `∑[A056594(2*A172471(2*n))]` -/
def P1314861497822578013.Spec : Prop :=
  ∀ n, P1314861497822578013.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P7795469341710618984

`A000267(n)+1-A004739(n+1)`
-/

namespace A209302.P7795469341710618984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n + (1 - A004739 (n + 1))

end

end A209302.P7795469341710618984

namespace A209302

/-- `A000267(n)+1-A004739(n+1)` -/
def P7795469341710618984.Spec : Prop :=
  ∀ n, P7795469341710618984.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P17227308619199828573

`A027434(n+1)-A004739(n+1)`
-/

namespace A209302.P17227308619199828573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (n + 1) - A004739 (n + 1)

end

end A209302.P17227308619199828573

namespace A209302

/-- `A027434(n+1)-A004739(n+1)` -/
def P17227308619199828573.Spec : Prop :=
  ∀ n, P17227308619199828573.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P292854265630008561

`A130819(n+1)-A004738(n+1)`
-/

namespace A209302.P292854265630008561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130819 (n + 1) - A004738 (n + 1)

end

end A209302.P292854265630008561

namespace A209302

/-- `A130819(n+1)-A004738(n+1)` -/
def P292854265630008561.Spec : Prop :=
  ∀ n, P292854265630008561.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P15549651015513297985

`A000196(n+1)+A053188(n+1)+A023969(n+1)`
-/

namespace A209302.P15549651015513297985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (n + 1) + (A053188 (n + 1) + A023969 (n + 1))

end

end A209302.P15549651015513297985

namespace A209302

/-- `A000196(n+1)+A053188(n+1)+A023969(n+1)` -/
def P15549651015513297985.Spec : Prop :=
  ∀ n, P15549651015513297985.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P2707675656893036061

`A003059(n+1)+A003059(n+1)-A004738(n+1)`
-/

namespace A209302.P2707675656893036061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A003059 (n + 1) - A004738 (n + 1))

end

end A209302.P2707675656893036061

namespace A209302

/-- `A003059(n+1)+A003059(n+1)-A004738(n+1)` -/
def P2707675656893036061.Spec : Prop :=
  ∀ n, P2707675656893036061.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P808758994707499761

`A053188(n+1)+A000194(n+1)`
-/

namespace A209302.P808758994707499761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (n + 1) + A000194 (n + 1)

end

end A209302.P808758994707499761

namespace A209302

/-- `A053188(n+1)+A000194(n+1)` -/
def P808758994707499761.Spec : Prop :=
  ∀ n, P808758994707499761.a n = A209302 (n + 1)

end A209302

/-! ## A209302.P4052705880222620010

`A001670(n+1)-A053615(n+1)`
-/

namespace A209302.P4052705880222620010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001670 (n + 1) - A053615 (n + 1)

end

end A209302.P4052705880222620010

namespace A209302

/-- `A001670(n+1)-A053615(n+1)` -/
def P4052705880222620010.Spec : Prop :=
  ∀ n, P4052705880222620010.a n = A209302 (n + 1)

end A209302

/-!
# A209303: Numbers of the form x^2 + SumOfSquaredDigits(x).

The programs for A209303, there is no canonical definition to state claims against.
-/

/-! ## A209303.P17035110548838324842

`eq[A051402(xor(n, n+1)), A330240(n)]`
-/

namespace A209303.P17035110548838324842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051402 (Nat.xor n (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209303.P17035110548838324842

/-! ## A209303.P10663383347495433096

`eq[A124625(n), A331886(A173786(n))]`
-/

namespace A209303.P10663383347495433096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331886 (A173786 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209303.P10663383347495433096

/-! ## A209303.P13656056386104458712

`A001105(n+1)-A174617(A133031(n+2))`
-/

namespace A209303.P13656056386104458712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 1) - A174617 (A133031 (n + 2)).toNat

end

end A209303.P13656056386104458712

/-!
# A209304: Table T(n,k)=n+4*k-4 n, k > 0, read by antidiagonals.

The programs for A209304, the canonical program `A209304.P6160491928506155217` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209304 has offset 1).

The definition of A209304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209304.P6477701434331769068

`∑[char[∑[n]]]+3*A025581(n)`
-/

namespace A209304.P6477701434331769068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 3 * A025581 n

end

end A209304.P6477701434331769068

namespace A209304

/-- `∑[char[∑[n]]]+3*A025581(n)` -/
def P6477701434331769068.Spec : Prop :=
  ∀ n, P6477701434331769068.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P10667907008080340202

`A292565(n+1)-4*(n+1)`
-/

namespace A209304.P10667907008080340202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292565 (n + 1) - (4 * (n + 1) : ℤ)

end

end A209304.P10667907008080340202

namespace A209304

/-- `A292565(n+1)-4*(n+1)` -/
def P10667907008080340202.Spec : Prop :=
  ∀ n, P10667907008080340202.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P6160491928506155217

`A131413(n)+A114327(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209304

/-- `A131413(n)+A114327(n)` -/
def P6160491928506155217.Spec : Prop :=
  ∀ n, P6160491928506155217.a n = A209304 (n + 1)

theorem P6160491928506155217.correct : P6160491928506155217.Spec := by
  intro n
  simp only [A209304, Nat.add_sub_cancel]

end A209304

/-! ## A209304.P2329773800185982294

`A294317(n)+A099375(n)`
-/

namespace A209304.P2329773800185982294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 n + A099375 n

end

end A209304.P2329773800185982294

namespace A209304

/-- `A294317(n)+A099375(n)` -/
def P2329773800185982294.Spec : Prop :=
  ∀ n, P2329773800185982294.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P8704041094146976666

`A143971(n+1)+A003056(n)`
-/

namespace A209304.P8704041094146976666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143971 (n + 1) + A003056 n

end

end A209304.P8704041094146976666

namespace A209304

/-- `A143971(n+1)+A003056(n)` -/
def P8704041094146976666.Spec : Prop :=
  ∀ n, P8704041094146976666.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P8548884872314073958

`A131914(n+1)+A025581(n)`
-/

namespace A209304.P8548884872314073958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (n + 1) + A025581 n

end

end A209304.P8548884872314073958

namespace A209304

/-- `A131914(n+1)+A025581(n)` -/
def P8548884872314073958.Spec : Prop :=
  ∀ n, P8548884872314073958.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P34172252937136512

`A131413(n)+1-A127948(n)`
-/

namespace A209304.P34172252937136512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131413 n + (1 - A127948 n)

end

end A209304.P34172252937136512

namespace A209304

/-- `A131413(n)+1-A127948(n)` -/
def P34172252937136512.Spec : Prop :=
  ∀ n, P34172252937136512.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P200942459201557901

`A343125(n+2)+A176270(n)`
-/

namespace A209304.P200942459201557901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343125 (n + 2) + A176270 n

end

end A209304.P200942459201557901

namespace A209304

/-- `A343125(n+2)+A176270(n)` -/
def P200942459201557901.Spec : Prop :=
  ∀ n, P200942459201557901.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P9854159553121718339

`A134483(n+1)+2*A114327(n)`
-/

namespace A209304.P9854159553121718339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134483 (n + 1) + 2 * A114327 n

end

end A209304.P9854159553121718339

namespace A209304

/-- `A134483(n+1)+2*A114327(n)` -/
def P9854159553121718339.Spec : Prop :=
  ∀ n, P9854159553121718339.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P13085281710750880471

`2*A131413(n)-A134483(n+1)`
-/

namespace A209304.P13085281710750880471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131413 n - A134483 (n + 1)

end

end A209304.P13085281710750880471

namespace A209304

/-- `2*A131413(n)-A134483(n+1)` -/
def P13085281710750880471.Spec : Prop :=
  ∀ n, P13085281710750880471.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P3193865425323138754

`2*A128076(n+1)-A002260(n+1)`
-/

namespace A209304.P3193865425323138754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128076 (n + 1) - A002260 (n + 1)

end

end A209304.P3193865425323138754

namespace A209304

/-- `2*A128076(n+1)-A002260(n+1)` -/
def P3193865425323138754.Spec : Prop :=
  ∀ n, P3193865425323138754.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P6068544393415775687

`2*A131914(n+1)-A128076(n+1)`
-/

namespace A209304.P6068544393415775687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131914 (n + 1) - A128076 (n + 1)

end

end A209304.P6068544393415775687

namespace A209304

/-- `2*A131914(n+1)-A128076(n+1)` -/
def P6068544393415775687.Spec : Prop :=
  ∀ n, P6068544393415775687.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P14933156320955831519

`A016777(A025581(n))+A003056(n)`
-/

namespace A209304.P14933156320955831519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A025581 n).toNat + A003056 n

end

end A209304.P14933156320955831519

namespace A209304

/-- `A016777(A025581(n))+A003056(n)` -/
def P14933156320955831519.Spec : Prop :=
  ∀ n, P14933156320955831519.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P4001164744283054643

`A002262(n)+A008586(A025581(n))+1`
-/

namespace A209304.P4001164744283054643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A008586 (A025581 n).toNat + 1)

end

end A209304.P4001164744283054643

namespace A209304

/-- `A002262(n)+A008586(A025581(n))+1` -/
def P4001164744283054643.Spec : Prop :=
  ∀ n, P4001164744283054643.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P17826765134341122532

`A003056(n)+A047229(A099375(n))+1`
-/

namespace A209304.P17826765134341122532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A047229 (A099375 n).toNat + 1)

end

end A209304.P17826765134341122532

namespace A209304

/-- `A003056(n)+A047229(A099375(n))+1` -/
def P17826765134341122532.Spec : Prop :=
  ∀ n, P17826765134341122532.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P14336333887327002876

`A002262(n)+A004277(A099375(n))-1`
-/

namespace A209304.P14336333887327002876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A004277 (A099375 n).toNat - 1)

end

end A209304.P14336333887327002876

namespace A209304

/-- `A002262(n)+A004277(A099375(n))-1` -/
def P14336333887327002876.Spec : Prop :=
  ∀ n, P14336333887327002876.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P6140180005381657153

`A005408(2*A025581(n))+A002262(n)`
-/

namespace A209304.P6140180005381657153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A025581 n).toNat + A002262 n

end

end A209304.P6140180005381657153

namespace A209304

/-- `A005408(2*A025581(n))+A002262(n)` -/
def P6140180005381657153.Spec : Prop :=
  ∀ n, P6140180005381657153.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P1930729123692106480

`A016813(A004736(n+1)-1)+A002262(n)`
-/

namespace A209304.P1930729123692106480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A004736 (n + 1) - 1).toNat + A002262 n

end

end A209304.P1930729123692106480

namespace A209304

/-- `A016813(A004736(n+1)-1)+A002262(n)` -/
def P1930729123692106480.Spec : Prop :=
  ∀ n, P1930729123692106480.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P5547897904109410625

`A002260(n+1)+A042948(A099375(n)-1)`
-/

namespace A209304.P5547897904109410625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + A042948 (A099375 n - 1).toNat

end

end A209304.P5547897904109410625

namespace A209304

/-- `A002260(n+1)+A042948(A099375(n)-1)` -/
def P5547897904109410625.Spec : Prop :=
  ∀ n, P5547897904109410625.a n = A209304 (n + 1)

end A209304

/-! ## A209304.P12174341569482077656

`A008486(A004736(n+1))+A003056(n)-2`
-/

namespace A209304.P12174341569482077656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004736 (n + 1)).toNat + (A003056 n - 2)

end

end A209304.P12174341569482077656

namespace A209304

/-- `A008486(A004736(n+1))+A003056(n)-2` -/
def P12174341569482077656.Spec : Prop :=
  ∀ n, P12174341569482077656.a n = A209304 (n + 1)

end A209304

/-!
# A209305: Exponential generating function A(x) is the unique solution of the Cauchy problem: A'(x) = exp(x+A(x)^2-1), A(0) = 1.

The programs for A209305, there is no canonical definition to state claims against.
-/

/-! ## A209305.P14769348927000345160

`A213635(A182957(n))+1`
-/

namespace A209305.P14769348927000345160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213635 (A182957 n).toNat + 1

end

end A209305.P14769348927000345160

/-! ## A209305.P4249985968972434066

`or(1, A030103(A135750(n)))`
-/

namespace A209305.P4249985968972434066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A030103 (A135750 n).toNat)

end

end A209305.P4249985968972434066

/-!
# A209307: Binomial self-convolution of sequence A209305.

The programs for A209307, there is no canonical definition to state claims against.
-/

/-! ## A209307.P9584352074770789511

`A140472(A000888(n))`
-/

namespace A209307.P9584352074770789511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A000888 n).toNat

end

end A209307.P9584352074770789511

/-!
# A209308: Denominators of the Akiyama-Tanigawa algorithm applied to 2^(-n), written by antidiagonals.

The programs for A209308, there is no canonical definition to state claims against.
-/

/-! ## A209308.P6587426241202755016

`gcd(A006519(A235186(n+1)), A193862(n))`
-/

namespace A209308.P6587426241202755016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006519 (A235186 (n + 1)).toNat) (A193862 n)

end

end A209308.P6587426241202755016

/-! ## A209308.P3907995600901781193

`A006519(or(A193862(n), A235186(n+1)))`
-/

namespace A209308.P3907995600901781193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (Int.lor (A193862 n) (A235186 (n + 1))).toNat

end

end A209308.P3907995600901781193

/-! ## A209308.P6398026971512904677

`gcd(A064319(n+1), A338313(A338307(n+1)))`
-/

namespace A209308.P6398026971512904677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064319 (n + 1)) (A338313 (A338307 (n + 1)).toNat)

end

end A209308.P6398026971512904677

/-!
# A209309: Numbers whose sum of triangular divisors is also triangular and greater than 1.

The programs for A209309, the canonical program `A209309.P9333809845315119633` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209309 has offset 1).

The definition of A209309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209309.P9333809845315119633

`lt[A185027(n+1), A185027(A185027(n+1))]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209309

/-- `lt[A185027(n+1), A185027(A185027(n+1))]+1` -/
def P9333809845315119633.Spec : Prop :=
  ∀ n, (P9333809845315119633.a n : ℤ) = A209309 (n + 1)

theorem P9333809845315119633.correct : P9333809845315119633.Spec := by
  intro n
  simp only [A209309, Nat.add_sub_cancel]

end A209309

/-! ## A209309.P12502925788654939228

`eq[A306975(A295310(n+5)), A325334(n)]`
-/

namespace A209309.P12502925788654939228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306975 (A295310 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209309.P12502925788654939228

namespace A209309

/-- `eq[A306975(A295310(n+5)), A325334(n)]` -/
def P12502925788654939228.Spec : Prop :=
  ∀ n, (P12502925788654939228.a n : ℤ) = A209309 (n + 1)

end A209309

/-! ## A209309.P4330874172579079425

`eq[A325334(n), A332900(A007590(3*n+2))]`
-/

namespace A209309.P4330874172579079425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (A007590 (3 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209309.P4330874172579079425

namespace A209309

/-- `eq[A325334(n), A332900(A007590(3*n+2))]` -/
def P4330874172579079425.Spec : Prop :=
  ∀ n, (P4330874172579079425.a n : ℤ) = A209309 (n + 1)

end A209309

/-! ## A209309.P17864292751372878797

`eq[A201375(A266593(n)), A325334(n)]`
-/

namespace A209309.P17864292751372878797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201375 (A266593 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A209309.P17864292751372878797

namespace A209309

/-- `eq[A201375(A266593(n)), A325334(n)]` -/
def P17864292751372878797.Spec : Prop :=
  ∀ n, (P17864292751372878797.a n : ℤ) = A209309 (n + 1)

end A209309

/-!
# A209313: Total number of parts k in all partitions of n such that k does not divide n.

The programs for A209313, there is no canonical definition to state claims against.
-/

/-! ## A209313.P2344253826161864392

`A006128(n+1)-A089251(n+1)`
-/

namespace A209313.P2344253826161864392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) - A089251 (n + 1)

end

end A209313.P2344253826161864392

/-! ## A209313.P16597560126527800890

`∑[A138137(n+1)]-A089251(n+1)`
-/

namespace A209313.P16597560126527800890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A089251 (n + 1)

end

end A209313.P16597560126527800890

/-! ## A209313.P8907456605694314072

`A144115(n+1)+A144116(n+1)-A089251(n+1)`
-/

namespace A209313.P8907456605694314072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144115 (n + 1) + (A144116 (n + 1) - A089251 (n + 1))

end

end A209313.P8907456605694314072

/-! ## A209313.P4840907695664008257

`record[A181187(n+1)]-A089251(n+1)`
-/

namespace A209313.P4840907695664008257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A089251 (n + 1)

end

end A209313.P4840907695664008257

/-! ## A209313.P9727701082279471189

`A181187(A000124(n))-A089251(n+1)`
-/

namespace A209313.P9727701082279471189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181187 (A000124 n).toNat - A089251 (n + 1)

end

end A209313.P9727701082279471189

/-!
# A209315: Number of ways to write 2n-1 = p+q with q practical, p and q-p both prime.

The programs for A209315, there is no canonical definition to state claims against.
-/

/-! ## A209315.P2039482922874327783

`∑{e}[A000931(A193924(n+2))+A000931(n), #]`
-/

namespace A209315.P2039482922874327783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (A193924 (n + 2)).toNat + A000931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A209315.P2039482922874327783

/-! ## A209315.P272097598285101845

`val(A001316(A200148(n+1)), 8)`
-/

namespace A209315.P272097598285101845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (A200148 (n + 1)).toNat).toNat 8

end

end A209315.P272097598285101845

/-! ## A209315.P15396993896857842914

`A196564(lcm(A001971(n), A133041(n)))`
-/

namespace A209315.P15396993896857842914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (Int.lcm (A001971 n) (A133041 n))

end

end A209315.P15396993896857842914

/-! ## A209315.P17839364373468729790

`A037830(A308447(n+1))`
-/

namespace A209315.P17839364373468729790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037830 (A308447 (n + 1)).toNat

end

end A209315.P17839364373468729790

/-!
# A209316: E.g.f.: Sum_{n>=0} a(n) * (cos(n^2*x) - sin(n^2*x)) * x^n/n! = 1/(1-x).

The programs for A209316, there is no canonical definition to state claims against.
-/

/-! ## A209316.P18127175469785665151

`A284799((a(n-1)+2)²)` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A209316.P18127175469785665151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  A284799 ((a (n - 1) + 2) ^ 2).toNat

end

end A209316.P18127175469785665151

/-!
# A209317: E.g.f.: Sum_{n>=0} a(n) * (cos(n*x) - sin(n*x))^n * x^n/n! = 1/(1-x).

The programs for A209317, there is no canonical definition to state claims against.
-/

/-! ## A209317.P8599866440726517247

`A285357(A077138(n+1))`
-/

namespace A209317.P8599866440726517247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285357 (A077138 (n + 1)).toNat

end

end A209317.P8599866440726517247

/-!
# A209318: Number T(n,k) of partitions of n with k parts in which no part occurs more than twice; triangle T(n,k), n>=0, 0<=k<=A055086(n), read by rows.

The programs for A209318, there is no canonical definition to state claims against.
-/

/-! ## A209318.P13804500787540311993

`A353315(lt[A287697(n+2), A007919(n+5)])`
-/

namespace A209318.P13804500787540311993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287697 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007919 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353315 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A209318.P13804500787540311993

/-! ## A209318.P14421054949745119392

`round(A360033(2*(n+2))/record[A360005(n+6)])`
-/

namespace A209318.P14421054949745119392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360005 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360033 (2 * (n + 2)) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ))

end

end A209318.P14421054949745119392

/-! ## A209318.P6088298298291431429

`A095827(A109974(record[A301853(n+1)]))`
-/

namespace A209318.P6088298298291431429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301853 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A109974 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A209318.P6088298298291431429

/-! ## A209318.P5878183654685421511

`A129761(A132393(2*n))%A173238(n+2)`
-/

namespace A209318.P5878183654685421511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129761 (A132393 (2 * n)).toNat) (A173238 (n + 2))

end

end A209318.P5878183654685421511

/-! ## A209318.P6181654704760721215

`A071858(A107462(n+2))`
-/

namespace A209318.P6181654704760721215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071858 (A107462 (n + 2)).toNat

end

end A209318.P6181654704760721215

/-!
# A209319: Number of functions f:{1,2,...,n}->{1,2,...,n} whose cycle lengths are <= 2.

The programs for A209319, there is no canonical definition to state claims against.
-/

/-! ## A209319.P9282894330929066610

`A246522(∑[n+3])`
-/

namespace A209319.P9282894330929066610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246522 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209319.P9282894330929066610

/-! ## A209319.P12785805234451138573

`A163951(n)+A000272(n+1)`
-/

namespace A209319.P12785805234451138573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163951 n + A000272 (n + 1)

end

end A209319.P12785805234451138573

/-! ## A209319.P2750833290115140596

`A163951(n)+A105599(A000124(n))`
-/

namespace A209319.P2750833290115140596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163951 n + A105599 (A000124 n).toNat

end

end A209319.P2750833290115140596

/-! ## A209319.P9525644848883383303

`n^n-A208240(n)`
-/

namespace A209319.P9525644848883383303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) - A208240 n

end

end A209319.P9525644848883383303

/-! ## A209319.P3020173314563374579

`A000312(n)+A163951(n)-A101334(n)`
-/

namespace A209319.P3020173314563374579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 n + (A163951 n - A101334 n)

end

end A209319.P3020173314563374579

/-! ## A209319.P7862710170618451078

`A000272(n+1)+A101334(n)-A208240(n)`
-/

namespace A209319.P7862710170618451078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 (n + 1) + (A101334 n - A208240 n)

end

end A209319.P7862710170618451078

/-!
# A209320: Number of ways to write 2n = p+q with p and q both prime, p+1 and q-1 both practical.

The programs for A209320, there is no canonical definition to state claims against.
-/

/-! ## A209320.P4903876581477610986

`or(A208243(n+1), A286484(A113370(n)))`
-/

namespace A209320.P4903876581477610986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A208243 (n + 1)) (A286484 (A113370 n).toNat)

end

end A209320.P4903876581477610986

/-! ## A209320.P1633824922108496098

`A208243(n+1)+A187946(A288039(n))`
-/

namespace A209320.P1633824922108496098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208243 (n + 1) + A187946 (A288039 n).toNat

end

end A209320.P1633824922108496098

/-! ## A209320.P8457447095227411417

`A294930(A048587(n))+A208243(n+1)`
-/

namespace A209320.P8457447095227411417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294930 (A048587 n).toNat + A208243 (n + 1)

end

end A209320.P8457447095227411417

/-! ## A209320.P10277664427704161477

`or(A072608(A212390(n)), A208243(n+1))`
-/

namespace A209320.P10277664427704161477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072608 (A212390 n).toNat) (A208243 (n + 1))

end

end A209320.P10277664427704161477

/-!
# A209321: Indices k for which A209312(k) = 2.

The programs for A209321, there is no canonical definition to state claims against.
-/

/-! ## A209321.P4997026414846838895

`eq[2, A209312(n+1)]+1`
-/

namespace A209321.P4997026414846838895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209312 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209321.P4997026414846838895

/-! ## A209321.P2207664487754350947

`eq[2, A209312(A028310(n))]`
-/

namespace A209321.P2207664487754350947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209312 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209321.P2207664487754350947

/-! ## A209321.P6443768289426352398

`A065475(eq[2, A209312(n+1)])`
-/

namespace A209321.P6443768289426352398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209321.P6443768289426352398

/-! ## A209321.P6215487458783133540

`lt[A000700(A209312(n+2)), 1]+2`
-/

namespace A209321.P6215487458783133540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A209312 (n + 2)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A209321.P6215487458783133540

/-! ## A209321.P14470045395734977146

`A346132(A182281(2*n))+2`
-/

namespace A209321.P14470045395734977146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346132 (A182281 (2 * n)).toNat + 2

end

end A209321.P14470045395734977146

/-!
# A209322: Number of derangements of [n] with no succession.

The programs for A209322, there is no canonical definition to state claims against.
-/

/-! ## A209322.P3901796673678732625

`n!-A207819(n)`
-/

namespace A209322.P3901796673678732625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A207819 n

end

end A209322.P3901796673678732625

/-! ## A209322.P15696257895897750515

`A000142(n)-A207819(n)`
-/

namespace A209322.P15696257895897750515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A207819 n

end

end A209322.P15696257895897750515

/-! ## A209322.P2943425840073746206

`A000166(n)-A209325(n)`
-/

namespace A209322.P2943425840073746206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A209325 n

end

end A209322.P2943425840073746206

/-! ## A209322.P6222095919778853810

`A047920(∑[n])-A207819(n)`
-/

namespace A209322.P6222095919778853810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 (∑ j ∈ Finset.range (n + 1), f1 j) - A207819 n

end

end A209322.P6222095919778853810

/-!
# A209323: Values of omega(n) (A001221) as n runs through the triprimes (A014612).

The programs for A209323, the canonical program `A209323.P18282624142862054047` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209323 has offset 1).

The definition of A209323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209323.P2446157348667283170

`A001221(A014612(n+1))`
-/

namespace A209323.P2446157348667283170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A014612 (n + 1)).toNat

end

end A209323.P2446157348667283170

namespace A209323

/-- `A001221(A014612(n+1))` -/
def P2446157348667283170.Spec : Prop :=
  ∀ n, P2446157348667283170.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P1780087426892131859

`∑{p}[A014612(n+1), A001222(#)]`
-/

namespace A209323.P1780087426892131859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A209323.P1780087426892131859

namespace A209323

/-- `∑{p}[A014612(n+1), A001222(#)]` -/
def P1780087426892131859.Spec : Prop :=
  ∀ n, P1780087426892131859.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P15606093669452002000

`A001222(∏{p}[A014612(n+1), #])`
-/

namespace A209323.P15606093669452002000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A209323.P15606093669452002000

namespace A209323

/-- `A001222(∏{p}[A014612(n+1), #])` -/
def P15606093669452002000.Spec : Prop :=
  ∀ n, P15606093669452002000.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P3160784907380750855

`∑{e}[A014612(n+1), A000688(#)]`
-/

namespace A209323.P3160784907380750855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 (Nat.factorization (f1 n).natAbs p)

end

end A209323.P3160784907380750855

namespace A209323

/-- `∑{e}[A014612(n+1), A000688(#)]` -/
def P3160784907380750855.Spec : Prop :=
  ∀ n, P3160784907380750855.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P18282624142862054047

`∑{e}[A014612(n+1), A007318(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A209323

/-- `∑{e}[A014612(n+1), A007318(#)]` -/
def P18282624142862054047.Spec : Prop :=
  ∀ n, P18282624142862054047.a n = A209323 (n + 1)

theorem P18282624142862054047.correct : P18282624142862054047.Spec := by
  intro n
  simp only [A209323, Nat.add_sub_cancel]

end A209323

/-! ## A209323.P5540745134077193837

`A001221(eq[3, A001222(n+1)]+1)`
-/

namespace A209323.P5540745134077193837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209323.P5540745134077193837

namespace A209323

/-- `A001221(eq[3, A001222(n+1)]+1)` -/
def P5540745134077193837.Spec : Prop :=
  ∀ n, P5540745134077193837.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P12197759309306467210

`∑{e}[A014612(n+1), A002217(#+1)]`
-/

namespace A209323.P12197759309306467210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A002217 (Nat.factorization (f1 n).natAbs p + 1)

end

end A209323.P12197759309306467210

namespace A209323

/-- `∑{e}[A014612(n+1), A002217(#+1)]` -/
def P12197759309306467210.Spec : Prop :=
  ∀ n, P12197759309306467210.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P5293474523062909300

`∑{e}[A014612(n+1), A069347(#+1)]`
-/

namespace A209323.P5293474523062909300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A069347 (Nat.factorization (f1 n).natAbs p + 1)

end

end A209323.P5293474523062909300

namespace A209323

/-- `∑{e}[A014612(n+1), A069347(#+1)]` -/
def P5293474523062909300.Spec : Prop :=
  ∀ n, P5293474523062909300.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P1234713673705047335

`∑{e}[A014612(n+1), A086995(#+1)]`
-/

namespace A209323.P1234713673705047335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A086995 (Nat.factorization (f1 n).natAbs p + 1)

end

end A209323.P1234713673705047335

namespace A209323

/-- `∑{e}[A014612(n+1), A086995(#+1)]` -/
def P1234713673705047335.Spec : Prop :=
  ∀ n, P1234713673705047335.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P12665648578159753068

`∑{e}[A014612(n+1), A305426(#+1)]`
-/

namespace A209323.P12665648578159753068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A305426 (Nat.factorization (f1 n).natAbs p + 1)

end

end A209323.P12665648578159753068

namespace A209323

/-- `∑{e}[A014612(n+1), A305426(#+1)]` -/
def P12665648578159753068.Spec : Prop :=
  ∀ n, P12665648578159753068.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P16406384324241142436

`A001221(eq[n, n/a(A001222(n))])` with `a(0)=2, a(1)=3`
-/

namespace A209323.P16406384324241142436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n f2 =>
  (n : ℚ) / f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A209323.P16406384324241142436

namespace A209323

/-- `A001221(eq[n, n/a(A001222(n))])` -/
def P16406384324241142436.Spec : Prop :=
  ∀ n, P16406384324241142436.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P7752669735376822481

`A001222(∏{p}[eq[3, A001222(n+1)]+1, #])`
-/

namespace A209323.P7752669735376822481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A209323.P7752669735376822481

namespace A209323

/-- `A001222(∏{p}[eq[3, A001222(n+1)]+1, #])` -/
def P7752669735376822481.Spec : Prop :=
  ∀ n, P7752669735376822481.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P14803456970523940088

`∑{e}[eq[3, A001222(n+1)]+1, A033676(#)]`
-/

namespace A209323.P14803456970523940088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A033676 (Nat.factorization (f1 n) p)

end

end A209323.P14803456970523940088

namespace A209323

/-- `∑{e}[eq[3, A001222(n+1)]+1, A033676(#)]` -/
def P14803456970523940088.Spec : Prop :=
  ∀ n, P14803456970523940088.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P16992067638185306925

`∑{e}[eq[3, A001222(n+1)]+1, A318506(#)]`
-/

namespace A209323.P16992067638185306925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A318506 (Nat.factorization (f1 n) p)

end

end A209323.P16992067638185306925

namespace A209323

/-- `∑{e}[eq[3, A001222(n+1)]+1, A318506(#)]` -/
def P16992067638185306925.Spec : Prop :=
  ∀ n, P16992067638185306925.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P15852253969163091499

`∑{e}[A014612(n+1), A007421(A014612(#))]`
-/

namespace A209323.P15852253969163091499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007421 (A014612 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A209323.P15852253969163091499

namespace A209323

/-- `∑{e}[A014612(n+1), A007421(A014612(#))]` -/
def P15852253969163091499.Spec : Prop :=
  ∀ n, P15852253969163091499.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P13656633320289348064

`∑{e}[A014612(n+1), A003842(A014612(#²))]`
-/

namespace A209323.P13656633320289348064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003842 (A014612 (Nat.factorization (f1 n).natAbs p ^ 2)).toNat

end

end A209323.P13656633320289348064

namespace A209323

/-- `∑{e}[A014612(n+1), A003842(A014612(#²))]` -/
def P13656633320289348064.Spec : Prop :=
  ∀ n, P13656633320289348064.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P5421878794152471357

`A086971(A014612(2*n+1-n))`
-/

namespace A209323.P5421878794152471357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A014612 (2 * n + 1 - n)).toNat

end

end A209323.P5421878794152471357

namespace A209323

/-- `A086971(A014612(2*n+1-n))` -/
def P5421878794152471357.Spec : Prop :=
  ∀ n, P5421878794152471357.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P15087532853327072260

`A087039(A086971(A014612(n+1))²)`
-/

namespace A209323.P15087532853327072260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087039 (A086971 (A014612 (n + 1)).toNat ^ 2).toNat

end

end A209323.P15087532853327072260

namespace A209323

/-- `A087039(A086971(A014612(n+1))²)` -/
def P15087532853327072260.Spec : Prop :=
  ∀ n, P15087532853327072260.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P5780793696310468574

`A001221(A000720(A124268(n+1)))`
-/

namespace A209323.P5780793696310468574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000720 (A124268 (n + 1)).toNat).toNat

end

end A209323.P5780793696310468574

namespace A209323

/-- `A001221(A000720(A124268(n+1)))` -/
def P5780793696310468574.Spec : Prop :=
  ∀ n, P5780793696310468574.a n = A209323 (n + 1)

end A209323

/-! ## A209323.P15803651688061289944

`A001221(A058933(A105346(n+1)))`
-/

namespace A209323.P15803651688061289944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A058933 (A105346 (n + 1)).toNat).toNat

end

end A209323.P15803651688061289944

namespace A209323

/-- `A001221(A058933(A105346(n+1)))` -/
def P15803651688061289944.Spec : Prop :=
  ∀ n, P15803651688061289944.a n = A209323 (n + 1)

end A209323

/-!
# A209325: Number of permutations of [n] with a succession but no fixed points.

The programs for A209325, there is no canonical definition to state claims against.
-/

/-! ## A209325.P6439352893941936341

`A000166(n)-A209322(n)`
-/

namespace A209325.P6439352893941936341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A209322 n

end

end A209325.P6439352893941936341

/-! ## A209325.P11575629049218558767

`A207819(n)-A002467(n)`
-/

namespace A209325.P11575629049218558767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207819 n - A002467 n

end

end A209325.P11575629049218558767

/-! ## A209325.P4207209865637854863

`A008290(∑[n])-A209322(n)`
-/

namespace A209325.P4207209865637854863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A209322 n

end

end A209325.P4207209865637854863

/-! ## A209325.P3576365423369566561

`A068106(A000217(n))-A209322(n)`
-/

namespace A209325.P3576365423369566561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000217 n).toNat - A209322 n

end

end A209325.P3576365423369566561

/-! ## A209325.P12089587490976165198

`A207819(n)%A002467(A028310(n))`
-/

namespace A209325.P12089587490976165198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207819 n) (A002467 (A028310 n).toNat)

end

end A209325.P12089587490976165198

/-!
# A209326: Number of permutations of [n] with a fixed point but no succession.

The programs for A209326, there is no canonical definition to state claims against.
-/

/-! ## A209326.P6978115916059301864

`A207821(n)-A209325(n)`
-/

namespace A209326.P6978115916059301864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207821 n - A209325 n

end

end A209326.P6978115916059301864

/-! ## A209326.P18434547715154443952

`A207819(n)-A180191(A028310(n))`
-/

namespace A209326.P18434547715154443952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207819 n - A180191 (A028310 n).toNat

end

end A209326.P18434547715154443952

/-! ## A209326.P8340759163803977324

`A002467(n)+A207821(n)-A207819(n)`
-/

namespace A209326.P8340759163803977324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n + (A207821 n - A207819 n)

end

end A209326.P8340759163803977324

/-! ## A209326.P14696638314159768808

`A002467(n)-A201452(n)`
-/

namespace A209326.P14696638314159768808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n - A201452 n

end

end A209326.P14696638314159768808

/-! ## A209326.P13953280578428686383

`A000142(n)-(A201452(n)+A000166(n))`
-/

namespace A209326.P13953280578428686383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - (A201452 n + A000166 n)

end

end A209326.P13953280578428686383

/-!
# A209330: Triangle defined by T(n,k) = binomial(n^2, n*k), for n>=0, k=0..n, as read by rows.

The programs for A209330, the canonical program `A209330.P6268406421257850917` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209330 has offset 0).

The definition of A209330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209330.P11036710209027506375

`A226234(n)/A228832(n)*A245243(n)`
-/

namespace A209330.P11036710209027506375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226234 n : ℚ) / (A228832 n : ℚ) * (A245243 n : ℚ)

end

end A209330.P11036710209027506375

namespace A209330

/-- `A226234(n)/A228832(n)*A245243(n)` -/
def P11036710209027506375.Spec : Prop :=
  ∀ n, P11036710209027506375.a n = (A209330 n : ℚ)

end A209330

/-! ## A209330.P6268406421257850917

`C(A003056(n)², A079904(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A209330

/-- `C(A003056(n)², A079904(n))` -/
def P6268406421257850917.Spec : Prop :=
  ∀ n, (P6268406421257850917.a n : ℤ) = A209330 n

theorem P6268406421257850917.correct : P6268406421257850917.Spec := by
  intro n
  simp only [A209330]

end A209330

/-! ## A209330.P14542725697233353944

`C(A003056(n)², A091435(n))`
-/

namespace A209330.P14542725697233353944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A091435 n).toNat

end

end A209330.P14542725697233353944

namespace A209330

/-- `C(A003056(n)², A091435(n))` -/
def P14542725697233353944.Spec : Prop :=
  ∀ n, (P14542725697233353944.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P5981759255786393952

`C((1-A002024(n+1))², A079904(n))`
-/

namespace A209330.P5981759255786393952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - A002024 (n + 1)) ^ 2).toNat (A079904 n).toNat

end

end A209330.P5981759255786393952

namespace A209330

/-- `C((1-A002024(n+1))², A079904(n))` -/
def P5981759255786393952.Spec : Prop :=
  ∀ n, (P5981759255786393952.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P10518026630349415939

`C(A069011(A057944(n)), A079904(n))`
-/

namespace A209330.P10518026630349415939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069011 (A057944 n).toNat).toNat (A079904 n).toNat

end

end A209330.P10518026630349415939

namespace A209330

/-- `C(A069011(A057944(n)), A079904(n))` -/
def P10518026630349415939.Spec : Prop :=
  ∀ n, (P10518026630349415939.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P525654175851851157

`C(A069011(A057944(n)), A091435(n))`
-/

namespace A209330.P525654175851851157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069011 (A057944 n).toNat).toNat (A091435 n).toNat

end

end A209330.P525654175851851157

namespace A209330

/-- `C(A069011(A057944(n)), A091435(n))` -/
def P525654175851851157.Spec : Prop :=
  ∀ n, (P525654175851851157.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P13824805381567997764

`C(A003056(n)², A002262(n)*A003056(n))`
-/

namespace A209330.P13824805381567997764
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A002262 n * A003056 n).toNat

end

end A209330.P13824805381567997764

namespace A209330

/-- `C(A003056(n)², A002262(n)*A003056(n))` -/
def P13824805381567997764.Spec : Prop :=
  ∀ n, (P13824805381567997764.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P7883681837743035545

`C(A003056(n)², A003056(n)*A025581(n))`
-/

namespace A209330.P7883681837743035545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A003056 n * A025581 n).toNat

end

end A209330.P7883681837743035545

namespace A209330

/-- `C(A003056(n)², A003056(n)*A025581(n))` -/
def P7883681837743035545.Spec : Prop :=
  ∀ n, (P7883681837743035545.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P5456974601302780444

`C(A003056(n)², A003056(n)*A103822(n))`
-/

namespace A209330.P5456974601302780444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A003056 n * A103822 n).toNat

end

end A209330.P5456974601302780444

namespace A209330

/-- `C(A003056(n)², A003056(n)*A103822(n))` -/
def P5456974601302780444.Spec : Prop :=
  ∀ n, (P5456974601302780444.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P2229203032130069861

`C(A003056(n)², A003056(n)*A103823(n))`
-/

namespace A209330.P2229203032130069861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A003056 n * A103823 n).toNat

end

end A209330.P2229203032130069861

namespace A209330

/-- `C(A003056(n)², A003056(n)*A103823(n))` -/
def P2229203032130069861.Spec : Prop :=
  ∀ n, (P2229203032130069861.a n : ℤ) = A209330 n

end A209330

/-! ## A209330.P2617495007127519181

`C(A003056(n)², A003056(n)*A057554(2*(n+1)))`
-/

namespace A209330.P2617495007127519181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n ^ 2).toNat (A003056 n * A057554 (2 * (n + 1))).toNat

end

end A209330.P2617495007127519181

namespace A209330

/-- `C(A003056(n)², A003056(n)*A057554(2*(n+1)))` -/
def P2617495007127519181.Spec : Prop :=
  ∀ n, (P2617495007127519181.a n : ℤ) = A209330 n

end A209330

/-!
# A209331: a(n) = Sum_{k=0..[n/2]} binomial((n-k)^2, n*k-k^2).

The programs for A209331, there is no canonical definition to state claims against.
-/

/-! ## A209331.P3489235395797963878

`A004525(A160586(n)+A120958(n))`
-/

namespace A209331.P3489235395797963878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A160586 n + A120958 n).toNat

end

end A209331.P3489235395797963878

/-! ## A209331.P16879993000809721757

`A004526(A160586(n)+A120958(n))`
-/

namespace A209331.P16879993000809721757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A160586 n + A120958 n).toNat

end

end A209331.P16879993000809721757

/-!
# A209332: a(n) is the minimal positive number k such that n<+>k is prime or 0 if no such number exists (operation <+> defined in A206853).

The programs for A209332, there is no canonical definition to state claims against.
-/

/-! ## A209332.P17865150057238700584

`gcd(∑[A344743(2*n)], A213221(n))`
-/

namespace A209332.P17865150057238700584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344743 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A213221 n)

end

end A209332.P17865150057238700584

/-! ## A209332.P12586399369645462485

`gcd(A122310(A190252(n)), A260284(n+1))`
-/

namespace A209332.P12586399369645462485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122310 (A190252 n).toNat) (A260284 (n + 1))

end

end A209332.P12586399369645462485

/-!
# A209333: Numbers k for which A209332(k)=0.

The programs for A209333, there is no canonical definition to state claims against.
-/

/-! ## A209333.P11541044224048091537

`eq[0, A209332(n+1)]+1`
-/

namespace A209333.P11541044224048091537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A209333.P11541044224048091537

/-! ## A209333.P7344979587235154919

`lt[A209332(round(sqrt(n²+1))), 1]`
-/

namespace A209333.P7344979587235154919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209332 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A209333.P7344979587235154919

/-! ## A209333.P3119924370222983220

`eq[0, A209332(-xor(n, C(n, n²)-2))]`
-/

namespace A209333.P3119924370222983220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209332 (-Int.xor (n : ℤ) ((Nat.choose n (n ^ 2) : ℤ) - 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209333.P3119924370222983220

/-! ## A209333.P1975945375640720376

`eq[0, A209332(A028310(n))]`
-/

namespace A209333.P1975945375640720376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209332 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209333.P1975945375640720376

/-! ## A209333.P16183444470229906784

`eq[0, A209332(A093178(n))]`
-/

namespace A209333.P16183444470229906784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209332 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A209333.P16183444470229906784

/-!
# A209334: Table, by rows, of the maximum number of minimal codewords in an [n,k]-code.

The programs for A209334, there is no canonical definition to state claims against.
-/

/-! ## A209334.P18063856539867734953

`A247005(n)+A232615(A209996(n+1))`
-/

namespace A209334.P18063856539867734953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247005 n + A232615 (A209996 (n + 1)).toNat

end

end A209334.P18063856539867734953

/-! ## A209334.P5363752105189227017

`A263666(n+1)+A097430(A199898(n+1))`
-/

namespace A209334.P5363752105189227017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263666 (n + 1) + A097430 (A199898 (n + 1)).toNat

end

end A209334.P5363752105189227017

/-! ## A209334.P17014861910535482688

`A180975(n+1)-A055641(A022112(n))`
-/

namespace A209334.P17014861910535482688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180975 (n + 1) - A055641 (A022112 n).toNat

end

end A209334.P17014861910535482688

/-! ## A209334.P13363391077328036199

`A180975(n+1)-A341256(A154983(n))`
-/

namespace A209334.P13363391077328036199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180975 (n + 1) - A341256 (A154983 n).toNat

end

end A209334.P13363391077328036199

/-! ## A209334.P4647526447055395734

`A091256(A137593(n+1))`
-/

namespace A209334.P4647526447055395734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091256 (A137593 (n + 1)).toNat

end

end A209334.P4647526447055395734

/-!
# A209335: G.f. A(x) satisfies: A(x) = x / [Sum_{n>=1} (-1)^(n-1) * A(x)^(n*(n-1)/2) * (1 - A(x)^n)/(1 - A(x))].

The programs for A209335, there is no canonical definition to state claims against.
-/

/-! ## A209335.P16878819833355824292

`A049159(n)-A335460(A270831(n+1))`
-/

namespace A209335.P16878819833355824292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049159 n - A335460 (A270831 (n + 1)).toNat

end

end A209335.P16878819833355824292

/-! ## A209335.P3079250120677061184

`xor(A049159(n), A212619(A224985(3*n+1)))`
-/

namespace A209335.P3079250120677061184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A049159 n) (A212619 (A224985 (3 * n + 1)).toNat)

end

end A209335.P3079250120677061184

/-!
# A209336: Number of n-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209336, there is no canonical definition to state claims against.
-/

/-! ## A209336.P18212045737835311719

`A209344(∑[4*n]+1)`
-/

namespace A209336.P18212045737835311719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209336.P18212045737835311719

/-! ## A209336.P14205610913058328627

`record[A209344(Δ[A235355(n)])]`
-/

namespace A209336.P14205610913058328627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209336.P14205610913058328627

/-! ## A209336.P13842280356237443418

`record[A209344(A178218(n+1))]`
-/

namespace A209336.P13842280356237443418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A178218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209336.P13842280356237443418

/-! ## A209336.P1847266297613059624

`record[A209344(A330613(n+1))]`
-/

namespace A209336.P1847266297613059624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209336.P1847266297613059624

/-! ## A209336.P15069701918651245855

`A209344(A001844(n))+char[14]`
-/

namespace A209336.P15069701918651245855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209336.P15069701918651245855

/-!
# A209337: Number of n-bead necklaces labeled with numbers -1..1 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209337, there is no canonical definition to state claims against.
-/

/-! ## A209337.P14288550008941279224

`A209344(∑[n+1])`
-/

namespace A209337.P14288550008941279224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209337.P14288550008941279224

/-! ## A209337.P14855810799181909608

`root(A209344(∑[Δ[n²]-n]), 2)²`
-/

namespace A209337.P14855810799181909608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A209344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A209337.P14855810799181909608

/-! ## A209337.P1377527909749498538

`A000027(A209344(∑[Δ[n²]-n]))`
-/

namespace A209337.P1377527909749498538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A209344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A209337.P1377527909749498538

/-! ## A209337.P5519196910986658778

`lcm((-1)^n, A209344(A000217(n+1)))`
-/

namespace A209337.P5519196910986658778
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A209344 (A000217 (n + 1)).toNat)

end

end A209337.P5519196910986658778

/-! ## A209337.P3724398945948701602

`A209344(∑[Δ[n²]-n])%(24*A000108(n))`
-/

namespace A209337.P3724398945948701602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (24 * A000108 n)

end

end A209337.P3724398945948701602

/-!
# A209338: Number of n-bead necklaces labeled with numbers -2..2 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209338, there is no canonical definition to state claims against.
-/

/-! ## A209338.P2583067492954146912

`A209344(∑[n+2])`
-/

namespace A209338.P2583067492954146912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209338.P2583067492954146912

/-! ## A209338.P7673992054010216439

`record[A209344(A198455(n+1))]`
-/

namespace A209338.P7673992054010216439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209338.P7673992054010216439

/-! ## A209338.P17441873505692224716

`record[A209344(A333530(n+1))]`
-/

namespace A209338.P17441873505692224716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A333530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209338.P17441873505692224716

/-! ## A209338.P5028868118694345274

`record[A209344(A209268(2*(n+2)))]`
-/

namespace A209338.P5028868118694345274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A209268 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209338.P5028868118694345274

/-! ## A209338.P18445074192734209261

`A209344(A000096(n+1))+char[46]`
-/

namespace A209338.P18445074192734209261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  46

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209338.P18445074192734209261

/-!
# A209339: Number of n-bead necklaces labeled with numbers -3..3 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209339, there is no canonical definition to state claims against.
-/

/-! ## A209339.P11155692345817768633

`A209344(∑[n+3]+1)`
-/

namespace A209339.P11155692345817768633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209339.P11155692345817768633

/-! ## A209339.P18353738806380106377

`record[A209344(A198464(n+1))]`
-/

namespace A209339.P18353738806380106377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209339.P18353738806380106377

/-! ## A209339.P11470385377406755554

`record[A209344(A237519(n+1))]`
-/

namespace A209339.P11470385377406755554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209339.P11470385377406755554

/-! ## A209339.P10453489422298267060

`record[A209344(A198455(n+1)-1)]`
-/

namespace A209339.P10453489422298267060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A198455 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209339.P10453489422298267060

/-! ## A209339.P3908772702271267714

`record[A209344(A333530(n+1)-1)]`
-/

namespace A209339.P3908772702271267714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A333530 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209339.P3908772702271267714

/-!
# A209340: Number of n-bead necklaces labeled with numbers -4..4 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209340, there is no canonical definition to state claims against.
-/

/-! ## A209340.P10705577493016642280

`A209344(∑[n+4]+3)`
-/

namespace A209340.P10705577493016642280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A209340.P10705577493016642280

/-! ## A209340.P16696313640904325682

`record[A209344(A019304(n))]`
-/

namespace A209340.P16696313640904325682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209340.P16696313640904325682

/-! ## A209340.P2106136157181114374

`A209344(A027379(n+2))%A058328(n+1)`
-/

namespace A209340.P2106136157181114374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209344 (A027379 (n + 2)).toNat) (A058328 (n + 1))

end

end A209340.P2106136157181114374

/-! ## A209340.P18325780157003737974

`A101261(2*n+5)*A209344(A165157(2*(n+2)))`
-/

namespace A209340.P18325780157003737974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101261 (2 * n + 5) * A209344 (A165157 (2 * (n + 2))).toNat

end

end A209340.P18325780157003737974

/-!
# A209341: Number of n-bead necklaces labeled with numbers -5..5 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209341, there is no canonical definition to state claims against.
-/

/-! ## A209341.P17404514984952409224

`A209344(∑[n+5]+6)`
-/

namespace A209341.P17404514984952409224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A209341.P17404514984952409224

/-! ## A209341.P14388288762991695838

`record[A209344(A198464(n+1)-2)]`
-/

namespace A209341.P14388288762991695838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A198464 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209341.P14388288762991695838

/-! ## A209341.P13597153367489367758

`A209344(A046691(n+3))*A214249(n)`
-/

namespace A209341.P13597153367489367758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A046691 (n + 3)).toNat * A214249 n

end

end A209341.P13597153367489367758

/-! ## A209341.P14794592560898642770

`A209344(A046691(n+3))%A305287(n+1)`
-/

namespace A209341.P14794592560898642770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209344 (A046691 (n + 3)).toNat) (A305287 (n + 1))

end

end A209341.P14794592560898642770

/-!
# A209342: Number of n-bead necklaces labeled with numbers -6..6 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209342, there is no canonical definition to state claims against.
-/

/-! ## A209342.P14864222275099461474

`A209344(A052905(n+3))`
-/

namespace A209342.P14864222275099461474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A052905 (n + 3)).toNat

end

end A209342.P14864222275099461474

/-! ## A209342.P3891823845901715633

`A209344(A302537(n)+15)`
-/

namespace A209342.P3891823845901715633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A302537 n + 15).toNat

end

end A209342.P3891823845901715633

/-! ## A209342.P8982382587723511028

`A209344(A056119(n)+16)`
-/

namespace A209342.P8982382587723511028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A056119 n + 16).toNat

end

end A209342.P8982382587723511028

/-! ## A209342.P4582169185216648372

`A209344(eq[3, A219347(n)])`
-/

namespace A209342.P4582169185216648372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209342.P4582169185216648372

/-! ## A209342.P906855651590843019

`A209344(eq[5, A152157(n)])`
-/

namespace A209342.P906855651590843019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209342.P906855651590843019

/-!
# A209343: Number of n-bead necklaces labeled with numbers -7..7 allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209343, there is no canonical definition to state claims against.
-/

/-! ## A209343.P12656325851059098564

`A209344(A055999(n+4))`
-/

namespace A209343.P12656325851059098564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A055999 (n + 4)).toNat

end

end A209343.P12656325851059098564

/-! ## A209343.P7768651734655133906

`A209344(A056121(n)+22)`
-/

namespace A209343.P7768651734655133906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A056121 n + 22).toNat

end

end A209343.P7768651734655133906

/-! ## A209343.P11200553232126076985

`A209344(eq[4, A219347(n)])`
-/

namespace A209343.P11200553232126076985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209343.P11200553232126076985

/-! ## A209343.P1059948517162291476

`A209344(eq[5, A332954(n)])`
-/

namespace A209343.P1059948517162291476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209343.P1059948517162291476

/-! ## A209343.P10095686305587900612

`A209344(eq[6, A193592(n)])`
-/

namespace A209343.P10095686305587900612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209343.P10095686305587900612

/-!
# A209344: T(n,k) is the number of n-bead necklaces labeled with numbers -k..k allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209344, there is no canonical definition to state claims against.
-/

/-! ## A209344.P13433801310369048293

`or(A098851(a(n-1)), A209485(n+1))` with `a(0)=1`
-/

namespace A209344.P13433801310369048293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (A098851 (a (n - 1)).toNat) (A209485 (n + 1))

end

end A209344.P13433801310369048293

/-! ## A209344.P13231013877182368663

`A209485(n+1)+A025469(A022089(n))`
-/

namespace A209344.P13231013877182368663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (n + 1) + A025469 (A022089 n).toNat

end

end A209344.P13231013877182368663

/-! ## A209344.P4357277630076477906

`A318315(A104176(n))+A209485(n+1)`
-/

namespace A209344.P4357277630076477906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318315 (A104176 n).toNat + A209485 (n + 1)

end

end A209344.P4357277630076477906

/-! ## A209344.P5202848369118402710

`or(A055641(A006145(n+1)), A209485(n+1))`
-/

namespace A209344.P5202848369118402710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A006145 (n + 1)).toNat) (A209485 (n + 1))

end

end A209344.P5202848369118402710

/-! ## A209344.P7253025751929306649

`A209485(n+1)+A010059(A003591(2*(n+2)))`
-/

namespace A209344.P7253025751929306649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209485 (n + 1) + A010059 (A003591 (2 * (n + 2))).toNat

end

end A209344.P7253025751929306649

/-!
# A209345: Number of 4-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209345, the canonical program `A209345.P4324925737008278335` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209345 has offset 1).

The definition of A209345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209345.P4324925737008278335

`∑[∑[n+2]%3+(2*n+1)*(n+2)]`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A209345

/-- `∑[∑[n+2]%3+(2*n+1)*(n+2)]` -/
def P4324925737008278335.Spec : Prop :=
  ∀ n, (P4324925737008278335.a n : ℤ) = A209345 (n + 1)

theorem P4324925737008278335.correct : P4324925737008278335.Spec := by
  intro n
  simp only [A209345, Nat.add_sub_cancel]

end A209345

/-! ## A209345.P7690364980538500396

`∑[∑[2*A047249(n+1)-1]-1]`
-/

namespace A209345.P7690364980538500396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047249 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P7690364980538500396

namespace A209345

/-- `∑[∑[2*A047249(n+1)-1]-1]` -/
def P7690364980538500396.Spec : Prop :=
  ∀ n, P7690364980538500396.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P4093672167570927218

`∑[A000217(2*(n+1))+Δ[lcm(3, n)]%2]`
-/

namespace A209345.P4093672167570927218
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * (n + 1)) + Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P4093672167570927218

namespace A209345

/-- `∑[A000217(2*(n+1))+Δ[lcm(3, n)]%2]` -/
def P4093672167570927218.Spec : Prop :=
  ∀ n, P4093672167570927218.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P11590918625984037628

`A208946(n+1)-∑[A000384(n+1)]`
-/

namespace A209345.P11590918625984037628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P11590918625984037628

namespace A209345

/-- `A208946(n+1)-∑[A000384(n+1)]` -/
def P11590918625984037628.Spec : Prop :=
  ∀ n, P11590918625984037628.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P7377345531515727493

`∑[A014105(n)+2*A047261(n+1)]`
-/

namespace A209345.P7377345531515727493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n + 2 * A047261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P7377345531515727493

namespace A209345

/-- `∑[A014105(n)+2*A047261(n+1)]` -/
def P7377345531515727493.Spec : Prop :=
  ∀ n, P7377345531515727493.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P780539875906044151

`A208946(n+1)-Δ[n*A000292(n)]`
-/

namespace A209345.P780539875906044151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208946 (n + 1) - (f1 (n + 1) - f1 n)

end

end A209345.P780539875906044151

namespace A209345

/-- `A208946(n+1)-Δ[n*A000292(n)]` -/
def P780539875906044151.Spec : Prop :=
  ∀ n, P780539875906044151.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P8246158493263074793

`A008619(A133310(n))+Δ[A004320(n)]`
-/

namespace A209345.P8246158493263074793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A133310 n).toNat + (f1 (n + 1) - f1 n)

end

end A209345.P8246158493263074793

namespace A209345

/-- `A008619(A133310(n))+Δ[A004320(n)]` -/
def P8246158493263074793.Spec : Prop :=
  ∀ n, P8246158493263074793.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P1130285874148627970

`∑[A096376(n+1)-gcd(3, n+1)]`
-/

namespace A209345.P1130285874148627970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096376 (n + 1) - (Nat.gcd 3 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P1130285874148627970

namespace A209345

/-- `∑[A096376(n+1)-gcd(3, n+1)]` -/
def P1130285874148627970.Spec : Prop :=
  ∀ n, P1130285874148627970.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P3222273150745872257

`A008611(n+2)+Δ[A004320(n)]`
-/

namespace A209345.P3222273150745872257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2) + (f1 (n + 1) - f1 n)

end

end A209345.P3222273150745872257

namespace A209345

/-- `A008611(n+2)+Δ[A004320(n)]` -/
def P3222273150745872257.Spec : Prop :=
  ∀ n, P3222273150745872257.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P1577036959004397932

`A016061(n+1)+A008611(n+2)`
-/

namespace A209345.P1577036959004397932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (n + 1) + A008611 (n + 2)

end

end A209345.P1577036959004397932

namespace A209345

/-- `A016061(n+1)+A008611(n+2)` -/
def P1577036959004397932.Spec : Prop :=
  ∀ n, P1577036959004397932.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P6615999593473739853

`∑[A014105(n+1)+2]-A047217(n+2)`
-/

namespace A209345.P6615999593473739853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047217 (n + 2)

end

end A209345.P6615999593473739853

namespace A209345

/-- `∑[A014105(n+1)+2]-A047217(n+2)` -/
def P6615999593473739853.Spec : Prop :=
  ∀ n, P6615999593473739853.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P17002163656132084429

`A016061(n+1)+A008619(A131380(n))`
-/

namespace A209345.P17002163656132084429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016061 (n + 1) + A008619 (A131380 n).toNat

end

end A209345.P17002163656132084429

namespace A209345

/-- `A016061(n+1)+A008619(A131380(n))` -/
def P17002163656132084429.Spec : Prop :=
  ∀ n, P17002163656132084429.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P3468312791382492036

`∑[∑[A267873(A047228(n+1))]]`
-/

namespace A209345.P3468312791382492036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A047228 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P3468312791382492036

namespace A209345

/-- `∑[∑[A267873(A047228(n+1))]]` -/
def P3468312791382492036.Spec : Prop :=
  ∀ n, P3468312791382492036.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P6400397609253173527

`∑[A061800(2*n)+A033816(n)]`
-/

namespace A209345.P6400397609253173527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (2 * n) + A033816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P6400397609253173527

namespace A209345

/-- `∑[A061800(2*n)+A033816(n)]` -/
def P6400397609253173527.Spec : Prop :=
  ∀ n, P6400397609253173527.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P6838660244425942461

`A008611(n+2)+A002623(2*n+1)`
-/

namespace A209345.P6838660244425942461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 2) + A002623 (2 * n + 1)

end

end A209345.P6838660244425942461

namespace A209345

/-- `A008611(n+2)+A002623(2*n+1)` -/
def P6838660244425942461.Spec : Prop :=
  ∀ n, P6838660244425942461.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P7004164683508919807

`∑[A047261(A047261(n+1))+A014105(n)]`
-/

namespace A209345.P7004164683508919807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (A047261 (n + 1)).toNat + A014105 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P7004164683508919807

namespace A209345

/-- `∑[A047261(A047261(n+1))+A014105(n)]` -/
def P7004164683508919807.Spec : Prop :=
  ∀ n, P7004164683508919807.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P545430938809517043

`∑[A266257(A047261(n+1))]`
-/

namespace A209345.P545430938809517043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266257 (A047261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P545430938809517043

namespace A209345

/-- `∑[A266257(A047261(n+1))]` -/
def P545430938809517043.Spec : Prop :=
  ∀ n, P545430938809517043.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P9762812733688268306

`∑[∑[A330396(4*n)]+3*n+2]`
-/

namespace A209345.P9762812733688268306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (3 * n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P9762812733688268306

namespace A209345

/-- `∑[∑[A330396(4*n)]+3*n+2]` -/
def P9762812733688268306.Spec : Prop :=
  ∀ n, P9762812733688268306.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P2468728348933090218

`∑[A330396(3*n)+∑[A330396(4*n)]]`
-/

namespace A209345.P2468728348933090218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (4 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (3 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P2468728348933090218

namespace A209345

/-- `∑[A330396(3*n)+∑[A330396(4*n)]]` -/
def P2468728348933090218.Spec : Prop :=
  ∀ n, P2468728348933090218.a n = A209345 (n + 1)

end A209345

/-! ## A209345.P17232560189942021226

`∑[A080782(2*(n+1))+∑[A080782(4*n+1)]]`
-/

namespace A209345.P17232560189942021226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080782 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209345.P17232560189942021226

namespace A209345

/-- `∑[A080782(2*(n+1))+∑[A080782(4*n+1)]]` -/
def P17232560189942021226.Spec : Prop :=
  ∀ n, P17232560189942021226.a n = A209345 (n + 1)

end A209345

/-!
# A209346: Number of 5-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209346, there is no canonical definition to state claims against.
-/

/-! ## A209346.P12828412068051280492

`A209344(∑[n+4]+11)`
-/

namespace A209346.P12828412068051280492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A209346.P12828412068051280492

/-!
# A209347: Number of 6-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209347, there is no canonical definition to state claims against.
-/

/-! ## A209347.P12252075493619266432

`A209344(A166136(n+4))`
-/

namespace A209347.P12252075493619266432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A166136 (n + 4)).toNat

end

end A209347.P12252075493619266432

/-! ## A209347.P10962888512627845267

`A209344(A056115(n)+21)`
-/

namespace A209347.P10962888512627845267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A056115 n + 21).toNat

end

end A209347.P10962888512627845267

/-! ## A209347.P17356022507949262765

`A209344(A167499(n+4)+1)`
-/

namespace A209347.P17356022507949262765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A167499 (n + 4) + 1).toNat

end

end A209347.P17356022507949262765

/-! ## A209347.P13597502174300062352

`A209344(A000096(n+4)+7)`
-/

namespace A209347.P13597502174300062352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A000096 (n + 4) + 7).toNat

end

end A209347.P13597502174300062352

/-! ## A209347.P100586486478685378

`A209344(A141214(n+2)+9)`
-/

namespace A209347.P100586486478685378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A141214 (n + 2) + 9).toNat

end

end A209347.P100586486478685378

/-!
# A209348: Number of 7-bead necklaces labeled with numbers -n..n allowing reversal, with sum zero with no three beads in a row equal.

The programs for A209348, there is no canonical definition to state claims against.
-/

/-! ## A209348.P13072438036234701983

`A209344(A167487(n+5))`
-/

namespace A209348.P13072438036234701983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A167487 (n + 5)).toNat

end

end A209348.P13072438036234701983

/-! ## A209348.P16057630533916492647

`A209344(A302537(n)+27)`
-/

namespace A209348.P16057630533916492647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A302537 n + 27).toNat

end

end A209348.P16057630533916492647

/-! ## A209348.P13526655288852160558

`A209344(A056119(n)+28)`
-/

namespace A209348.P13526655288852160558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A056119 n + 28).toNat

end

end A209348.P13526655288852160558

/-! ## A209348.P18226261152749758420

`A209344(eq[11, A066657(n)])`
-/

namespace A209348.P18226261152749758420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209348.P18226261152749758420

/-! ## A209348.P6395787261695522678

`A209344(A166136(n+5)+1)`
-/

namespace A209348.P6395787261695522678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209344 (A166136 (n + 5) + 1).toNat

end

end A209348.P6395787261695522678

/-!
# A209350: Number of initially rising meander words, where each letter of the cyclic n-ary alphabet occurs twice.

The programs for A209350, the canonical program `A209350.P16922822359085765586` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209350 has offset 0).

The definition of A209350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209350.P16922822359085765586

`a(n-2)+n+1` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A209350

/-- `a(n-2)+n+1` -/
def P16922822359085765586.Spec : Prop :=
  ∀ n, (P16922822359085765586.a n : ℤ) = A209350 n

theorem P16922822359085765586.correct : P16922822359085765586.Spec := by
  intro n
  simp only [A209350]

end A209350

/-! ## A209350.P4337766120386149267

`n-(a(n-1)-∑[n])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=5`
-/

namespace A209350.P4337766120386149267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 5] fun n a =>
  (n : ℤ) - (a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A209350.P4337766120386149267

namespace A209350

/-- `n-(a(n-1)-∑[n])` -/
def P4337766120386149267.Spec : Prop :=
  ∀ n, P4337766120386149267.a n = A209350 n

end A209350

/-! ## A209350.P2950074334038518307

`A057979(n)+A135276(n)%A002061(n)`
-/

namespace A209350.P2950074334038518307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n + Int.tmod (A135276 n) (A002061 n)

end

end A209350.P2950074334038518307

namespace A209350

/-- `A057979(n)+A135276(n)%A002061(n)` -/
def P2950074334038518307.Spec : Prop :=
  ∀ n, P2950074334038518307.a n = A209350 n

end A209350

/-! ## A209350.P4017570166304315565

`A002620(n)+A109613(n)%A000032(n)`
-/

namespace A209350.P4017570166304315565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n + Int.tmod (A109613 n) (A000032 n)

end

end A209350.P4017570166304315565

namespace A209350

/-- `A002620(n)+A109613(n)%A000032(n)` -/
def P4017570166304315565.Spec : Prop :=
  ∀ n, P4017570166304315565.a n = A209350 n

end A209350

/-! ## A209350.P2409806673328365837

`(A109613(n)+A002620(n))%A073817(n)`
-/

namespace A209350.P2409806673328365837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109613 n + A002620 n) (A073817 n)

end

end A209350.P2409806673328365837

namespace A209350

/-- `(A109613(n)+A002620(n))%A073817(n)` -/
def P2409806673328365837.Spec : Prop :=
  ∀ n, P2409806673328365837.a n = A209350 n

end A209350

/-!
# A209351: Number of initially rising meander words, where each letter of the cyclic 5-ary alphabet occurs n times.

The programs for A209351, there is no canonical definition to state claims against.
-/

/-! ## A209351.P15582206527235167643

`A209349(A055999(n+3))`
-/

namespace A209351.P15582206527235167643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (A055999 (n + 3)).toNat

end

end A209351.P15582206527235167643

/-! ## A209351.P11937350119418020226

`A209349(eq[5, A025581(n)])`
-/

namespace A209351.P11937350119418020226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209351.P11937350119418020226

/-! ## A209351.P14692087782824576621

`A209349(eq[5, A129713(n)])`
-/

namespace A209351.P14692087782824576621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209351.P14692087782824576621

/-! ## A209351.P6605544758754326997

`A209349(eq[6, A193739(n)])`
-/

namespace A209351.P6605544758754326997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209351.P6605544758754326997

/-! ## A209351.P1724773922806784147

`A209349(eq[11, A099375(n)])`
-/

namespace A209351.P1724773922806784147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209351.P1724773922806784147

/-!
# A209352: Number of initially rising meander words, where each letter of the cyclic 6-ary alphabet occurs n times.

The programs for A209352, there is no canonical definition to state claims against.
-/

/-! ## A209352.P16816433680483198609

`A197657(log2(ceil(2^(n-1))))²`
-/

namespace A209352.P16816433680483198609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197657 (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℝ))).toNat ^ 2

end

end A209352.P16816433680483198609

/-! ## A209352.P4632655005270050434

`(A141147(round(sqrt(n²+1)))/2)²`
-/

namespace A209352.P4632655005270050434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141147 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2) ^ 2

end

end A209352.P4632655005270050434

/-! ## A209352.P4518141766257532313

`(A141147(A028310(n))/2)^2`
-/

namespace A209352.P4518141766257532313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A141147 (A028310 n).toNat : ℚ) / 2) ^ 2

end

end A209352.P4518141766257532313

/-! ## A209352.P10057289253203190136

`((A000172(abs(1-n))+A000172(n))/3)²`
-/

namespace A209352.P10057289253203190136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000172 |1 - (n : ℤ)|.toNat + A000172 n : ℚ) / 3) ^ 2

end

end A209352.P10057289253203190136

/-! ## A209352.P5849932604297276691

`A209349(eq[6, A025581(n)])`
-/

namespace A209352.P5849932604297276691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209352.P5849932604297276691

/-!
# A209353: Number of initially rising meander words, where each letter of the cyclic 7-ary alphabet occurs n times.

The programs for A209353, there is no canonical definition to state claims against.
-/

/-! ## A209353.P6727911235018624469

`A209349(eq[7, A025581(n)])`
-/

namespace A209353.P6727911235018624469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209353.P6727911235018624469

/-! ## A209353.P10091143803572075172

`A209349(eq[8, A193739(n)])`
-/

namespace A209353.P10091143803572075172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209353.P10091143803572075172

/-! ## A209353.P15151559095775950141

`A209349(eq[7, A025669(n+1)])`
-/

namespace A209353.P15151559095775950141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209353.P15151559095775950141

/-! ## A209353.P4381336783748802995

`A209349(eq[8, A004736(n+1)])`
-/

namespace A209353.P4381336783748802995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209353.P4381336783748802995

/-! ## A209353.P9758666450289767670

`A209349(eq[19, A104887(n+1)])`
-/

namespace A209353.P9758666450289767670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104887 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209353.P9758666450289767670

/-!
# A209354: Triangular array: T(n,k) = number of partitions of n for which (maximal term)-(minimal term)=k, if 0<=k

The programs for A209354, there is no canonical definition to state claims against.
-/

/-! ## A209354.P18036172857565226284

`A058061(A152148(n)+1)`
-/

namespace A209354.P18036172857565226284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058061 (A152148 n + 1).toNat

end

end A209354.P18036172857565226284

/-! ## A209354.P8721614567943038448

`A322869(A152148(n)+1)`
-/

namespace A209354.P8721614567943038448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (A152148 n + 1).toNat

end

end A209354.P8721614567943038448

/-! ## A209354.P9093940351088601628

`A084115(A016993(A008290(n)))`
-/

namespace A209354.P9093940351088601628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084115 (A016993 (A008290 n).toNat).toNat

end

end A209354.P9093940351088601628

/-! ## A209354.P7962992172004249713

`A029142(A328739(n+1)-A000034(A005894(n)))`
-/

namespace A209354.P7962992172004249713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029142 (A328739 (n + 1) - A000034 (A005894 n).toNat).toNat

end

end A209354.P7962992172004249713

/-! ## A209354.P16738828496701763067

`A139128(A218592(n+2))`
-/

namespace A209354.P16738828496701763067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139128 (A218592 (n + 2)).toNat

end

end A209354.P16738828496701763067

/-!
# A209355: Sequence with each term appearing in runs of every length infinitely often.

The programs for A209355, the canonical program `A209355.P10385269046573957715` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209355 has offset 1).

The definition of A209355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209355.P10385269046573957715

`char[A056560(n)+2*n+1]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A209355

/-- `char[A056560(n)+2*n+1]` -/
def P10385269046573957715.Spec : Prop :=
  ∀ n, (P10385269046573957715.a n : ℤ) = A209355 (n + 1)

theorem P10385269046573957715.correct : P10385269046573957715.Spec := by
  intro n
  simp only [A209355, Nat.add_sub_cancel]

end A209355

/-! ## A209355.P10698526124502718475

`floor(acot(char[2*n-A056558(n)]))`
-/

namespace A209355.P10698526124502718475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A056558 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℝ)⌋

end

end A209355.P10698526124502718475

namespace A209355

/-- `floor(acot(char[2*n-A056558(n)]))` -/
def P10698526124502718475.Spec : Prop :=
  ∀ n, P10698526124502718475.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P10767147552223785768

`char[A005843(n)+A056560(n)+1]`
-/

namespace A209355.P10767147552223785768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A056560 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A209355.P10767147552223785768

namespace A209355

/-- `char[A005843(n)+A056560(n)+1]` -/
def P10767147552223785768.Spec : Prop :=
  ∀ n, (P10767147552223785768.a n : ℤ) = A209355 (n + 1)

end A209355

/-! ## A209355.P724624457839745827

`char[A002260(A273824(n+1))+2*n]`
-/

namespace A209355.P724624457839745827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A273824 (n + 1)).toNat + (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A209355.P724624457839745827

namespace A209355

/-- `char[A002260(A273824(n+1))+2*n]` -/
def P724624457839745827.Spec : Prop :=
  ∀ n, (P724624457839745827.a n : ℤ) = A209355 (n + 1)

end A209355

/-! ## A209355.P17269112836425908067

`p?[A309954(A065883(n+1))]-2`
-/

namespace A209355.P17269112836425908067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A209355.P17269112836425908067

namespace A209355

/-- `p?[A309954(A065883(n+1))]-2` -/
def P17269112836425908067.Spec : Prop :=
  ∀ n, P17269112836425908067.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P5856467427633946632

`A257992(p?[A309954(A065883(n+1))])`
-/

namespace A209355.P5856467427633946632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A209355.P5856467427633946632

namespace A209355

/-- `A257992(p?[A309954(A065883(n+1))])` -/
def P5856467427633946632.Spec : Prop :=
  ∀ n, P5856467427633946632.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P9467778239399217527

`A139616(n)%p?[A309954(A065883(n+1))]`
-/

namespace A209355.P9467778239399217527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139616 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A209355.P9467778239399217527

namespace A209355

/-- `A139616(n)%p?[A309954(A065883(n+1))]` -/
def P9467778239399217527.Spec : Prop :=
  ∀ n, P9467778239399217527.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P3650556791303902100

`p?[A309954(A065883(n+1))]%A280560(n)`
-/

namespace A209355.P3650556791303902100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A280560 n)

end

end A209355.P3650556791303902100

namespace A209355

/-- `p?[A309954(A065883(n+1))]%A280560(n)` -/
def P3650556791303902100.Spec : Prop :=
  ∀ n, P3650556791303902100.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P2866190608055498495

`A248201(n+1)²%p?[A309954(A065883(n+1))]`
-/

namespace A209355.P2866190608055498495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248201 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A209355.P2866190608055498495

namespace A209355

/-- `A248201(n+1)²%p?[A309954(A065883(n+1))]` -/
def P2866190608055498495.Spec : Prop :=
  ∀ n, P2866190608055498495.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P12855516456925913957

`A344072(n+1)²%p?[A309954(A065883(n+1))]`
-/

namespace A209355.P12855516456925913957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344072 (n + 1) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A209355.P12855516456925913957

namespace A209355

/-- `A344072(n+1)²%p?[A309954(A065883(n+1))]` -/
def P12855516456925913957.Spec : Prop :=
  ∀ n, P12855516456925913957.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P13950366436063706788

`A014206(2*n)²%p?[A309954(A065883(n+1))]`
-/

namespace A209355.P13950366436063706788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014206 (2 * n) ^ 2) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A209355.P13950366436063706788

namespace A209355

/-- `A014206(2*n)²%p?[A309954(A065883(n+1))]` -/
def P13950366436063706788.Spec : Prop :=
  ∀ n, P13950366436063706788.a n = A209355 (n + 1)

end A209355

/-! ## A209355.P18173831230709064429

`A280560(2*n+1)+p?[A309954(A065883(n+2))]`
-/

namespace A209355.P18173831230709064429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309954 (A065883 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A209355.P18173831230709064429

namespace A209355

/-- `A280560(2*n+1)+p?[A309954(A065883(n+2))]` -/
def P18173831230709064429.Spec : Prop :=
  ∀ n, P18173831230709064429.a n = A209355 (n + 1)

end A209355

/-!
# A209357: G.f. satisfies: A(x) = Product_{n>=1} (1 + x^(n+1)*A(x)) / (1 - x^n).

The programs for A209357, there is no canonical definition to state claims against.
-/

/-! ## A209357.P1394550456707843870

`A008618(4*A018020(n))+A004523(A011782(n))`
-/

namespace A209357.P1394550456707843870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (4 * A018020 n).toNat + A004523 (A011782 n).toNat

end

end A209357.P1394550456707843870

/-! ## A209357.P15658170234143420511

`A292987(A085748(n))`
-/

namespace A209357.P15658170234143420511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (A085748 n).toNat

end

end A209357.P15658170234143420511

/-! ## A209357.P11158684063611858501

`A292987(A206119(n))`
-/

namespace A209357.P11158684063611858501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (A206119 n).toNat

end

end A209357.P11158684063611858501

/-! ## A209357.P13010639543802523220

`A292987(A252354(n))`
-/

namespace A209357.P13010639543802523220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292987 (A252354 n).toNat

end

end A209357.P13010639543802523220

/-!
# A209358: G.f.: (1-4*x)^(-1/4) * (1-8*x)^(-1/8).

The programs for A209358, there is no canonical definition to state claims against.
-/

/-! ## A209358.P12527710471304744320

`A184511(n+1)-record[A276330(n²)]`
-/

namespace A209358.P12527710471304744320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276330 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184511 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209358.P12527710471304744320

/-! ## A209358.P10328770616455639253

`A008611(A017994(n)+A003645(n))`
-/

namespace A209358.P10328770616455639253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A017994 n + A003645 n).toNat

end

end A209358.P10328770616455639253

/-!
# A209359: a(n) = 2^n * (n^4 - 4*n^3 + 18*n^2 - 52*n + 75) - 75.

The programs for A209359, the canonical program `A209359.P15740642204509798894` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209359 has offset 0).

The definition of A209359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n^4-4*n^3+18*n²-52*n+75)-75` (program `A209359.P15740642204509798894`, by `A209359.P15740642204509798894.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209359.P15740642204509798894

`2^n*(n^4-4*n^3+18*n²-52*n+75)-75`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A209359

/-- `2^n*(n^4-4*n^3+18*n²-52*n+75)-75` -/
def P15740642204509798894.Spec : Prop :=
  ∀ n, P15740642204509798894.a n = A209359 n

theorem P15740642204509798894.correct : P15740642204509798894.Spec := by
  intro n
  simp only [A209359]

end A209359

/-! ## A209359.P15134301952354793306

`∑[2^n/2*A000290(n)²]`
-/

namespace A209359.P15134301952354793306
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 2 * (A000290 n ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209359.P15134301952354793306

namespace A209359

/-- `∑[2^n/2*A000290(n)²]` -/
def P15134301952354793306.Spec : Prop :=
  ∀ n, P15134301952354793306.a n = (A209359 n : ℚ)

end A209359

/-! ## A209359.P7116708176445524034

`-∑[Δ[A122958(n)]*A000583(n)]`
-/

namespace A209359.P7116708176445524034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209359.P7116708176445524034

namespace A209359

/-- `-∑[Δ[A122958(n)]*A000583(n)]` -/
def P7116708176445524034.Spec : Prop :=
  ∀ n, P7116708176445524034.a n = A209359 n

end A209359

/-! ## A209359.P8714323741933870847

`-∑[n*Δ[A122958(n)]*A000578(n)]`
-/

namespace A209359.P8714323741933870847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f2 (n + 1) - f2 n) * A000578 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A209359.P8714323741933870847

namespace A209359

/-- `-∑[n*Δ[A122958(n)]*A000578(n)]` -/
def P8714323741933870847.Spec : Prop :=
  ∀ n, P8714323741933870847.a n = A209359 n

end A209359

/-! ## A209359.P11515915284888575404

`∑[n^4*A000079(n)]/2`
-/

namespace A209359.P11515915284888575404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A209359.P11515915284888575404

namespace A209359

/-- `∑[n^4*A000079(n)]/2` -/
def P11515915284888575404.Spec : Prop :=
  ∀ n, P11515915284888575404.a n = (A209359 n : ℚ)

end A209359

/-! ## A209359.P8495846042162169234

`∑[n*A036289(n)*n²]/2`
-/

namespace A209359.P8495846042162169234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A036289 n * (n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A209359.P8495846042162169234

namespace A209359

/-- `∑[n*A036289(n)*n²]/2` -/
def P8495846042162169234.Spec : Prop :=
  ∀ n, P8495846042162169234.a n = (A209359 n : ℚ)

end A209359

/-!
# A209360: Number of nX1 1..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209360, there is no canonical definition to state claims against.
-/

/-! ## A209360.P4577075639623156586

`A209365(∑[n]+1)`
-/

namespace A209360.P4577075639623156586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209360.P4577075639623156586

/-! ## A209360.P11418914774210485612

`A209365(A000124(n))+char[11]`
-/

namespace A209360.P11418914774210485612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A209360.P11418914774210485612

/-! ## A209360.P7610994489967703806

`A326546(n)+A209365(A000124(n))`
-/

namespace A209360.P7610994489967703806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326546 n + A209365 (A000124 n).toNat

end

end A209360.P7610994489967703806

/-! ## A209360.P5656721576191371327

`A342696(n)+A209365(A000124(n))`
-/

namespace A209360.P5656721576191371327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342696 n + A209365 (A000124 n).toNat

end

end A209360.P5656721576191371327

/-! ## A209360.P5707724164309385859

`A057427(n)*A209365(A000124(n))`
-/

namespace A209360.P5707724164309385859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A209365 (A000124 n).toNat

end

end A209360.P5707724164309385859

/-!
# A209361: Number of nX2 1..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209361, there is no canonical definition to state claims against.
-/

/-! ## A209361.P17070063800686939928

`A209365(∑[n+1]+2)`
-/

namespace A209361.P17070063800686939928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209361.P17070063800686939928

/-! ## A209361.P17069248304814109285

`record[A209365(A286158(n+1)+2)]`
-/

namespace A209361.P17069248304814109285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A286158 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209361.P17069248304814109285

/-! ## A209361.P772208787155908414

`record[gcd(A161564(n), A209365(n+4))]`
-/

namespace A209361.P772208787155908414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A161564 n) (A209365 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209361.P772208787155908414

/-! ## A209361.P323285181739342999

`record[gcd(A209365(n+1), A284823(n+1))]`
-/

namespace A209361.P323285181739342999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209365 (n + 1)) (A284823 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209361.P323285181739342999

/-! ## A209361.P5496569402149870113

`record[A209365(Δ[A003453(n+5)])]`
-/

namespace A209361.P5496569402149870113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209361.P5496569402149870113

/-!
# A209362: Number of nX3 1..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209362, there is no canonical definition to state claims against.
-/

/-! ## A209362.P15938554408489768142

`A209365(∑[n+2]+4)`
-/

namespace A209362.P15938554408489768142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209362.P15938554408489768142

/-! ## A209362.P16674552115690723630

`record[gcd(A209365(n+4), A287417(n))]`
-/

namespace A209362.P16674552115690723630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209365 (n + 4)) (A287417 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209362.P16674552115690723630

/-! ## A209362.P5147312958677647725

`record[A209365(n+3)/A209324(n+1)]`
-/

namespace A209362.P5147312958677647725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209365 (n + 3) : ℚ) / (A209324 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209362.P5147312958677647725

/-! ## A209362.P7860484954386967369

`A209365(A167614(n+1))+A026816(n)`
-/

namespace A209362.P7860484954386967369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A167614 (n + 1)).toNat + A026816 n

end

end A209362.P7860484954386967369

/-! ## A209362.P13221768231640044027

`A209365(A167614(n+1))+A054899(n)`
-/

namespace A209362.P13221768231640044027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A167614 (n + 1)).toNat + A054899 n

end

end A209362.P13221768231640044027

/-!
# A209363: Number of nX4 1..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209363, there is no canonical definition to state claims against.
-/

/-! ## A209363.P17109249277617347072

`A209365(A374004(n+1))`
-/

namespace A209363.P17109249277617347072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A374004 (n + 1)).toNat

end

end A209363.P17109249277617347072

/-! ## A209363.P16538625146084197225

`A209365(A145018(n+4))`
-/

namespace A209363.P16538625146084197225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A145018 (n + 4)).toNat

end

end A209363.P16538625146084197225

/-! ## A209363.P8890239652954159990

`A209365(A141214(n)+7)`
-/

namespace A209363.P8890239652954159990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A141214 n + 7).toNat

end

end A209363.P8890239652954159990

/-! ## A209363.P14782505992860725702

`A209365(A052905(n)+9)`
-/

namespace A209363.P14782505992860725702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (A052905 n + 9).toNat

end

end A209363.P14782505992860725702

/-!
# A209364: Number of nX5 1..3 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209364, there is no canonical definition to state claims against.
-/

/-! ## A209364.P7887985726069733816

`A209365(Δ[A264443(n)])`
-/

namespace A209364.P7887985726069733816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209365 (f1 (n + 1) - f1 n).toNat

end

end A209364.P7887985726069733816

/-!
# A209366: Number of n X n 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209366, there is no canonical definition to state claims against.
-/

/-! ## A209366.P2231751273925862269

`A209374(∑[4*n]+1)`
-/

namespace A209366.P2231751273925862269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209366.P2231751273925862269

/-! ## A209366.P11641730985027501691

`A209374(A001844(n))%A237535(n+1)`
-/

namespace A209366.P11641730985027501691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209374 (A001844 n).toNat) (A237535 (n + 1))

end

end A209366.P11641730985027501691

/-! ## A209366.P12720578736213118865

`lcm(A008836(n+1), A209374(A001844(n)))`
-/

namespace A209366.P12720578736213118865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A209374 (A001844 n).toNat)

end

end A209366.P12720578736213118865

/-! ## A209366.P4571035279192485793

`A209374(A001844(n))+A049240((n+1)²)`
-/

namespace A209366.P4571035279192485793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A001844 n).toNat + A049240 ((n + 1) ^ 2)

end

end A209366.P4571035279192485793

/-! ## A209366.P6334628723265891404

`A000041(and(1, n)^n)*A209374(A001844(n))`
-/

namespace A209366.P6334628723265891404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.land 1 n ^ n) * A209374 (A001844 n).toNat

end

end A209366.P6334628723265891404

/-!
# A209367: Number of n X 1 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209367, there is no canonical definition to state claims against.
-/

/-! ## A209367.P2821640058863509062

`A209374(∑[n]+1)`
-/

namespace A209367.P2821640058863509062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209367.P2821640058863509062

/-! ## A209367.P8526407413696022818

`A209374(A000124(n))+n%-1`
-/

namespace A209367.P8526407413696022818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A000124 n).toNat + Int.tmod (n : ℤ) (-1)

end

end A209367.P8526407413696022818

/-! ## A209367.P5495320052257354178

`record[A103451(n)*A209374(n+1)]`
-/

namespace A209367.P5495320052257354178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A209374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209367.P5495320052257354178

/-! ## A209367.P320194085542855987

`record[root(A209374(n+1), A060098(n))]`
-/

namespace A209367.P320194085542855987
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209374 (n + 1) : ℝ) ^ (1 / (A060098 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209367.P320194085542855987

/-! ## A209367.P9941596331556609381

`record[root(A209374(n+1), A123970(n))]`
-/

namespace A209367.P9941596331556609381
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209374 (n + 1) : ℝ) ^ (1 / (A123970 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209367.P9941596331556609381

/-!
# A209368: Number of n X 2 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209368, there is no canonical definition to state claims against.
-/

/-! ## A209368.P16905222672328240726

`A209374(∑[n+1]+2)`
-/

namespace A209368.P16905222672328240726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209368.P16905222672328240726

/-! ## A209368.P393392873509091673

`record[A209374(A133263(abs(1-n)))]`
-/

namespace A209368.P393392873509091673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209368.P393392873509091673

/-! ## A209368.P14723509716093245321

`record[root(A209374(n+2), A123970(n))]`
-/

namespace A209368.P14723509716093245321
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209374 (n + 2) : ℝ) ^ (1 / (A123970 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209368.P14723509716093245321

/-! ## A209368.P4378053786013584640

`A209374(A373662(n+1))%A226361(n+1)`
-/

namespace A209368.P4378053786013584640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209374 (A373662 (n + 1)).toNat) (A226361 (n + 1))

end

end A209368.P4378053786013584640

/-! ## A209368.P1775734264960218403

`A209374(A000096(n)+3)%A250753(n+1)`
-/

namespace A209368.P1775734264960218403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209374 (A000096 n + 3).toNat) (A250753 (n + 1))

end

end A209368.P1775734264960218403

/-!
# A209369: Number of n X 3 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209369, there is no canonical definition to state claims against.
-/

/-! ## A209369.P16770093157798017774

`A209374(∑[n+2]+4)`
-/

namespace A209369.P16770093157798017774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209369.P16770093157798017774

/-! ## A209369.P17052811011029886433

`lcm(A033999(n), A209374(A167614(n+1)))`
-/

namespace A209369.P17052811011029886433
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A209374 (A167614 (n + 1)).toNat)

end

end A209369.P17052811011029886433

/-! ## A209369.P12113464464669770524

`A209374(A167614(n+1))+A034508(n+1)`
-/

namespace A209369.P12113464464669770524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A167614 (n + 1)).toNat + A034508 (n + 1)

end

end A209369.P12113464464669770524

/-! ## A209369.P16331266534751574081

`A070672(n+1)*A209374(A167614(n+1))`
-/

namespace A209369.P16331266534751574081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070672 (n + 1) * A209374 (A167614 (n + 1)).toNat

end

end A209369.P16331266534751574081

/-! ## A209369.P2498564886379561088

`A209374(A167614(n+1))%A209370(n+1)`
-/

namespace A209369.P2498564886379561088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209374 (A167614 (n + 1)).toNat) (A209370 (n + 1))

end

end A209369.P2498564886379561088

/-!
# A209370: Number of nX4 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209370, there is no canonical definition to state claims against.
-/

/-! ## A209370.P5615600758811069234

`A209374(∑[n+3]+7)`
-/

namespace A209370.P5615600758811069234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A209370.P5615600758811069234

/-!
# A209371: Number of nX5 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209371, there is no canonical definition to state claims against.
-/

/-! ## A209371.P6823212557384188424

`A209374(A374005(n+1))`
-/

namespace A209371.P6823212557384188424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A374005 (n + 1)).toNat

end

end A209371.P6823212557384188424

/-! ## A209371.P14365598221792802520

`A209374(A167499(n+3))`
-/

namespace A209371.P14365598221792802520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A167499 (n + 3)).toNat

end

end A209371.P14365598221792802520

/-! ## A209371.P15256499908174685193

`A209374(A167614(n+3)+2)`
-/

namespace A209371.P15256499908174685193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A167614 (n + 3) + 2).toNat

end

end A209371.P15256499908174685193

/-! ## A209371.P18001884288750810865

`A209374(A000217(n+4)+5)`
-/

namespace A209371.P18001884288750810865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A000217 (n + 4) + 5).toNat

end

end A209371.P18001884288750810865

/-! ## A209371.P12279697727615383154

`A209374(A055998(n+2)+8)`
-/

namespace A209371.P12279697727615383154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A055998 (n + 2) + 8).toNat

end

end A209371.P12279697727615383154

/-!
# A209372: Number of n X 6 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209372, there is no canonical definition to state claims against.
-/

/-! ## A209372.P7944355866542233340

`A209374(A374007(n+1))`
-/

namespace A209372.P7944355866542233340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A374007 (n + 1)).toNat

end

end A209372.P7944355866542233340

/-! ## A209372.P6601324079108532887

`A209374(A167499(n+4)+1)`
-/

namespace A209372.P6601324079108532887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A167499 (n + 4) + 1).toNat

end

end A209372.P6601324079108532887

/-! ## A209372.P10289449057677881707

`A209374(A052905(n+3))`
-/

namespace A209372.P10289449057677881707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A052905 (n + 3)).toNat

end

end A209372.P10289449057677881707

/-! ## A209372.P14088974778023102505

`A209374(A000124(n+6)-6)`
-/

namespace A209372.P14088974778023102505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A000124 (n + 6) - 6).toNat

end

end A209372.P14088974778023102505

/-! ## A209372.P6067423499297924792

`A209374(Δ[Δ[A006504(n+1)]])`
-/

namespace A209372.P6067423499297924792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (f1 (n + 1) - f1 n).toNat

end

end A209372.P6067423499297924792

/-!
# A209373: Number of nX7 1..3 arrays with no element with value z exactly a city block distance of z from another element with value z.

The programs for A209373, there is no canonical definition to state claims against.
-/

/-! ## A209373.P1312633940799157028

`A209374(A374008(n+1))`
-/

namespace A209373.P1312633940799157028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A374008 (n + 1)).toNat

end

end A209373.P1312633940799157028

/-! ## A209373.P9892929675730254326

`A209374(A167499(n+5)+2)`
-/

namespace A209373.P9892929675730254326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A167499 (n + 5) + 2).toNat

end

end A209373.P9892929675730254326

/-! ## A209373.P6313486266714434783

`A209374(A238531(n+7)+5)`
-/

namespace A209373.P6313486266714434783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A238531 (n + 7) + 5).toNat

end

end A209373.P6313486266714434783

/-! ## A209373.P14393841119090789343

`A209374(A000217(n+6)+7)`
-/

namespace A209373.P14393841119090789343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A000217 (n + 6) + 7).toNat

end

end A209373.P14393841119090789343

/-! ## A209373.P4069326349789689898

`A209374(A055998(n+3)+n+16)`
-/

namespace A209373.P4069326349789689898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209374 (A055998 (n + 3) + (n + 16 : ℤ)).toNat

end

end A209373.P4069326349789689898

/-!
# A209375: 1/4 the number of (n+1)X(n+1) 0..2 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209375, there is no canonical definition to state claims against.
-/

/-! ## A209375.P4922139537313298245

`A209382(∑[4*n]+1)`
-/

namespace A209375.P4922139537313298245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209375.P4922139537313298245

/-! ## A209375.P16223398540273013896

`record[gcd(A114327(n), A209382(n+1))]`
-/

namespace A209375.P16223398540273013896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A209382 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209375.P16223398540273013896

/-! ## A209375.P7187233464394453237

`A209382(A001844(n))*A304042(n)`
-/

namespace A209375.P7187233464394453237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A001844 n).toNat * A304042 n

end

end A209375.P7187233464394453237

/-! ## A209375.P10080921487971997327

`A057077(n)²*A209382(A001844(n))`
-/

namespace A209375.P10080921487971997327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n ^ 2 * A209382 (A001844 n).toNat

end

end A209375.P10080921487971997327

/-! ## A209375.P9245975783460411330

`A007318(∑[n])*A209382(A001844(n))`
-/

namespace A209375.P9245975783460411330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A209382 (A001844 n).toNat

end

end A209375.P9245975783460411330

/-!
# A209376: 1/4 the number of (n+1) X 3 0..2 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209376, the canonical program `A209376.P4849199247625514023` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209376 has offset 1).

The definition of A209376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209376.P4849199247625514023

`a(n-1)+6*a(n-2)-6*a(n-3)-4*a(n-4)+4*a(n-5)` with `a(0)=8, a(1)=17, a(2)=34, a(3)=80, a(4)=170`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A209376

/-- `a(n-1)+6*a(n-2)-6*a(n-3)-4*a(n-4)+4*a(n-5)` -/
def P4849199247625514023.Spec : Prop :=
  ∀ n, P4849199247625514023.a n = A209376 (n + 1)

theorem P4849199247625514023.correct : P4849199247625514023.Spec := by
  intro n
  simp only [A209376, Nat.add_sub_cancel]

end A209376

/-! ## A209376.P16494840288013008855

`A020701(n)*A164090(n+1)+2`
-/

namespace A209376.P16494840288013008855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n * A164090 (n + 1) + 2

end

end A209376.P16494840288013008855

namespace A209376

/-- `A020701(n)*A164090(n+1)+2` -/
def P16494840288013008855.Spec : Prop :=
  ∀ n, P16494840288013008855.a n = A209376 (n + 1)

end A209376

/-! ## A209376.P13419067092321107013

`A020701(n)*A029744(n+2)+2`
-/

namespace A209376.P13419067092321107013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020701 n * A029744 (n + 2) + 2

end

end A209376.P13419067092321107013

namespace A209376

/-- `A020701(n)*A029744(n+2)+2` -/
def P13419067092321107013.Spec : Prop :=
  ∀ n, P13419067092321107013.a n = A209376 (n + 1)

end A209376

/-! ## A209376.P1123526273693920372

`Δ[A020717(n)]*A164090(n+1)+2`
-/

namespace A209376.P1123526273693920372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A164090 (n + 1) + 2

end

end A209376.P1123526273693920372

namespace A209376

/-- `Δ[A020717(n)]*A164090(n+1)+2` -/
def P1123526273693920372.Spec : Prop :=
  ∀ n, P1123526273693920372.a n = A209376 (n + 1)

end A209376

/-! ## A209376.P4430718597203468611

`A029744(n+2)*A071679(n+2)+2`
-/

namespace A209376.P4430718597203468611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) * A071679 (n + 2) + 2

end

end A209376.P4430718597203468611

namespace A209376

/-- `A029744(n+2)*A071679(n+2)+2` -/
def P4430718597203468611.Spec : Prop :=
  ∀ n, P4430718597203468611.a n = A209376 (n + 1)

end A209376

/-! ## A209376.P12034917472513308445

`A000045(n+4)*A164090(n+1)+2`
-/

namespace A209376.P12034917472513308445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 4) * A164090 (n + 1) + 2

end

end A209376.P12034917472513308445

namespace A209376

/-- `A000045(n+4)*A164090(n+1)+2` -/
def P12034917472513308445.Spec : Prop :=
  ∀ n, P12034917472513308445.a n = A209376 (n + 1)

end A209376

/-!
# A209377: 1/4 the number of (n+1) X 4 0..2 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209377, the canonical program `A209377.P7978664943061020724` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209377 has offset 1).

The definition of A209377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A209377.P7978664943061020724

`8*a(n-2)-12*a(n-4)` with `a(0)=16, a(1)=34, a(2)=64, a(3)=156`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A209377

/-- `8*a(n-2)-12*a(n-4)` -/
def P7978664943061020724.Spec : Prop :=
  ∀ n, P7978664943061020724.a n = A209377 (n + 1)

theorem P7978664943061020724.correct : P7978664943061020724.Spec := by
  intro n
  simp only [A209377, Nat.add_sub_cancel]

end A209377

/-! ## A209377.P3335466460154024236

`A209382(∑[n+2]+4)`
-/

namespace A209377.P3335466460154024236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209377.P3335466460154024236

namespace A209377

/-- `A209382(∑[n+2]+4)` -/
def P3335466460154024236.Spec : Prop :=
  ∀ n, P3335466460154024236.a n = A209377 (n + 1)

end A209377

/-! ## A209377.P10799098114181041275

`lcm(2, A209382(A167614(n+1)))`
-/

namespace A209377.P10799098114181041275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A209382 (A167614 (n + 1)).toNat)

end

end A209377.P10799098114181041275

namespace A209377

/-- `lcm(2, A209382(A167614(n+1)))` -/
def P10799098114181041275.Spec : Prop :=
  ∀ n, (P10799098114181041275.a n : ℤ) = A209377 (n + 1)

end A209377

/-! ## A209377.P5116795431370782695

`A209382(A167614(n+1))+A185284(n)`
-/

namespace A209377.P5116795431370782695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167614 (n + 1)).toNat + A185284 n

end

end A209377.P5116795431370782695

namespace A209377

/-- `A209382(A167614(n+1))+A185284(n)` -/
def P5116795431370782695.Spec : Prop :=
  ∀ n, P5116795431370782695.a n = A209377 (n + 1)

end A209377

/-! ## A209377.P1613379814119253095

`A209382(A167614(n+1))+A034571(n+1)`
-/

namespace A209377.P1613379814119253095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167614 (n + 1)).toNat + A034571 (n + 1)

end

end A209377.P1613379814119253095

namespace A209377

/-- `A209382(A167614(n+1))+A034571(n+1)` -/
def P1613379814119253095.Spec : Prop :=
  ∀ n, P1613379814119253095.a n = A209377 (n + 1)

end A209377

/-!
# A209378: 1/4 the number of (n+1) X 5 0..2 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209378, there is no canonical definition to state claims against.
-/

/-! ## A209378.P17571705639763140250

`A209382(A141214(n)+7)`
-/

namespace A209378.P17571705639763140250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A141214 n + 7).toNat

end

end A209378.P17571705639763140250

/-! ## A209378.P14095730817427659170

`A209382(A055999(n)+10)`
-/

namespace A209378.P14095730817427659170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A055999 n + 10).toNat

end

end A209378.P14095730817427659170

/-! ## A209378.P6425094936846347032

`A209382(A167614(n+2)+1)`
-/

namespace A209378.P6425094936846347032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167614 (n + 2) + 1).toNat

end

end A209378.P6425094936846347032

/-! ## A209378.P6400159351211736343

`A209382(A167499(n+2)-1)`
-/

namespace A209378.P6400159351211736343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167499 (n + 2) - 1).toNat

end

end A209378.P6400159351211736343

/-! ## A209378.P15740846060678420507

`A209382(A027379(n+1)+7)`
-/

namespace A209378.P15740846060678420507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A027379 (n + 1) + 7).toNat

end

end A209378.P15740846060678420507

/-!
# A209379: 1/4 the number of (n+1) X 6 0..2 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209379, there is no canonical definition to state claims against.
-/

/-! ## A209379.P4729896995617806637

`A209382(A167499(n+3))`
-/

namespace A209379.P4729896995617806637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167499 (n + 3)).toNat

end

end A209379.P4729896995617806637

/-! ## A209379.P17516275593511786555

`A209382(A167614(n+3)+2)`
-/

namespace A209379.P17516275593511786555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167614 (n + 3) + 2).toNat

end

end A209379.P17516275593511786555

/-! ## A209379.P18186206774116049139

`A209382(A000217(n+4)+5)`
-/

namespace A209379.P18186206774116049139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A000217 (n + 4) + 5).toNat

end

end A209379.P18186206774116049139

/-! ## A209379.P17600188658786491710

`A209382(A027379(n+2)+8)`
-/

namespace A209379.P17600188658786491710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A027379 (n + 2) + 8).toNat

end

end A209379.P17600188658786491710

/-! ## A209379.P16446543955157170952

`A209382(A046691(n+2)+9)`
-/

namespace A209379.P16446543955157170952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A046691 (n + 2) + 9).toNat

end

end A209379.P16446543955157170952

/-!
# A209380: 1/4 the number of (n+1)X7 0..2 arrays with every 2X2 subblock having distinct edge sums.

The programs for A209380, there is no canonical definition to state claims against.
-/

/-! ## A209380.P17905085096218737252

`A209382(A167499(n+4)+1)`
-/

namespace A209380.P17905085096218737252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167499 (n + 4) + 1).toNat

end

end A209380.P17905085096218737252

/-! ## A209380.P16357975298373186153

`A209382(A000217(n+5)+6)`
-/

namespace A209380.P16357975298373186153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A000217 (n + 5) + 6).toNat

end

end A209380.P16357975298373186153

/-! ## A209380.P5154822655708020797

`A209382(eq[5, A002262(n)]+1)`
-/

namespace A209380.P5154822655708020797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A209380.P5154822655708020797

/-! ## A209380.P13095054855787224596

`A209382(A000124(n+6)-(n+1))`
-/

namespace A209380.P13095054855787224596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A209380.P13095054855787224596

/-! ## A209380.P5860694126994747988

`A209382(A374007(n+1))`
-/

namespace A209380.P5860694126994747988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A374007 (n + 1)).toNat

end

end A209380.P5860694126994747988

/-!
# A209381: 1/4 the number of (n+1) X 8 0..2 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209381, there is no canonical definition to state claims against.
-/

/-! ## A209381.P12463019098628976447

`A209382(A167499(n+5)+2)`
-/

namespace A209381.P12463019098628976447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167499 (n + 5) + 2).toNat

end

end A209381.P12463019098628976447

/-! ## A209381.P6716034741835797130

`A209382(A167614(n+5)+4)`
-/

namespace A209381.P6716034741835797130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A167614 (n + 5) + 4).toNat

end

end A209381.P6716034741835797130

/-! ## A209381.P12789406280272998838

`A209382(A000217(n+6)+7)`
-/

namespace A209381.P12789406280272998838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A000217 (n + 6) + 7).toNat

end

end A209381.P12789406280272998838

/-! ## A209381.P5765281669814328215

`A209382(A374008(n+1))`
-/

namespace A209381.P5765281669814328215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A374008 (n + 1)).toNat

end

end A209381.P5765281669814328215

/-! ## A209381.P10302503491400431332

`A209382(A052905(n+4)-1)`
-/

namespace A209381.P10302503491400431332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209382 (A052905 (n + 4) - 1).toNat

end

end A209381.P10302503491400431332

/-!
# A209382: T(n,k) = 1/4 the number of (n+1) X (k+1) 0..2 arrays with every 2 X 2 subblock having distinct edge sums.

The programs for A209382, there is no canonical definition to state claims against.
-/

/-! ## A209382.P18030123500691002278

`A014473(A062399(n))+2^(comp[∑[n]]-n)`
-/

namespace A209382.P18030123500691002278
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014473 (A062399 n).toNat : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A209382.P18030123500691002278

/-! ## A209382.P15786071383078255104

`A046665(A156645(n))+2^(comp[∑[n]]-n)`
-/

namespace A209382.P15786071383078255104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046665 (A156645 n).toNat : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A209382.P15786071383078255104

/-! ## A209382.P8501496374046765860

`A227847(A176305(n))+2^(comp[∑[n]]-n)`
-/

namespace A209382.P8501496374046765860
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227847 (A176305 n).toNat : ℚ) + (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ)

end

end A209382.P8501496374046765860

/-! ## A209382.P15808875790388612212

`2^(comp[∑[n]]-n)-A118998(A129453(n))`
-/

namespace A209382.P15808875790388612212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ) : ℤ) - (A118998 (A129453 n).toNat : ℚ)

end

end A209382.P15808875790388612212

/-! ## A209382.P10351667458200024003

`A358522(A256816(n+1))+A014473(n)`
-/

namespace A209382.P10351667458200024003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358522 (A256816 (n + 1)).toNat + A014473 n

end

end A209382.P10351667458200024003

/-!
# A209383: Meandric numbers for a river crossing up to 8 parallel roads at n points.

The programs for A209383, there is no canonical definition to state claims against.
-/

/-! ## A209383.P8907581520190178464

`A380367(eq[7, A025581(n)])`
-/

namespace A209383.P8907581520190178464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380367 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A209383.P8907581520190178464

/-! ## A209383.P17941702791455494563

`A209707(n)-A081227(A000704(n))`
-/

namespace A209383.P17941702791455494563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209707 n - A081227 (A000704 n).toNat

end

end A209383.P17941702791455494563

/-! ## A209383.P10552635830007650339

`A206432(n)-A083917(A036765(n))`
-/

namespace A209383.P10552635830007650339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A083917 (A036765 n).toNat

end

end A209383.P10552635830007650339

/-! ## A209383.P8622172293358044213

`A206432(n)-A351907(A001590(n)+1)`
-/

namespace A209383.P8622172293358044213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206432 n - A351907 (A001590 n + 1).toNat

end

end A209383.P8622172293358044213

/-! ## A209383.P9643110100958989215

`A209622(n)-A326529(A097855(n+1))`
-/

namespace A209383.P9643110100958989215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209622 n - A326529 (A097855 (n + 1)).toNat

end

end A209383.P9643110100958989215

/-!
# A209384: Tri-recursive sequence: a(n) = a(a(a(n - 1))) + a(n - a(a(n - 1))), a(0) = 0, a(1) = a(2) = a(3) = a(4) = a(5) = a(6) = 1.

The programs for A209384, the canonical program `A209384.P13455900050051357833` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209384 has offset 0).

The definition of A209384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(a(n-1)))+a(n-a(a(n-1)))` (program `A209384.P13455900050051357833`, by `A209384.P13455900050051357833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A209384.P13455900050051357833

`a(a(a(n-1)))+a(n-a(a(n-1)))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A209384

/-- `a(a(a(n-1)))+a(n-a(a(n-1)))` -/
def P13455900050051357833.Spec : Prop :=
  ∀ n, (P13455900050051357833.a n : ℤ) = A209384 n

theorem P13455900050051357833.correct : P13455900050051357833.Spec := by
  intro n
  simp only [A209384]

end A209384

/-! ## A209384.P13771631011560913228

`∑[A003849(A152980(A212804(n)))]`
-/

namespace A209384.P13771631011560913228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A152980 (A212804 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209384.P13771631011560913228

namespace A209384

/-- `∑[A003849(A152980(A212804(n)))]` -/
def P13771631011560913228.Spec : Prop :=
  ∀ n, P13771631011560913228.a n = A209384 n

end A209384

/-!
# A209386: a(n) = 2*A005132(n).

The programs for A209386, there is no canonical definition to state claims against.
-/

/-! ## A209386.P4730627507948237411

`2*A005132(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209386.P4730627507948237411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005132 n

end

end A209386.P4730627507948237411

/-! ## A209386.P5551248234114408835

`A209387(n)-1`
-/

namespace A209386.P5551248234114408835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209387 n - 1

end

end A209386.P5551248234114408835

/-! ## A209386.P9699930417882821917

`∑[2*Δ[A063733(n)]]`
-/

namespace A209386.P9699930417882821917
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209386.P9699930417882821917

/-! ## A209386.P9913386784985053464

`∑[2*n*A160357(n)]`
-/

namespace A209386.P9913386784985053464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * A160357 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A209386.P9913386784985053464

/-! ## A209386.P8194631679925068199

`2*(A063733(n+1)-1)`
-/

namespace A209386.P8194631679925068199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A063733 (n + 1) - 1)

end

end A209386.P8194631679925068199

/-! ## A209386.P13390249159417686458

`2*(A334951(n+1)+n+1)`
-/

namespace A209386.P13390249159417686458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A334951 (n + 1) + (n + 1 : ℤ))

end

end A209386.P13390249159417686458

/-! ## A209386.P52183078046123261

`2*(A378120(n)-A377748(n))`
-/

namespace A209386.P52183078046123261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A378120 n - A377748 n)

end

end A209386.P52183078046123261

/-! ## A209386.P12679458314325175932

`A063733(n+1)+A334951(n+1)+n`
-/

namespace A209386.P12679458314325175932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1) + (A334951 (n + 1) + (n : ℤ))

end

end A209386.P12679458314325175932

/-! ## A209386.P3711256699526041239

`2*(∑[A160356(n+1)]-A160356(n+1))`
-/

namespace A209386.P3711256699526041239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A160356 (n + 1))

end

end A209386.P3711256699526041239

/-! ## A209386.P16673251282126442738

`A005132(n)+A378120(n)-A377748(n)`
-/

namespace A209386.P16673251282126442738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n + (A378120 n - A377748 n)

end

end A209386.P16673251282126442738

/-! ## A209386.P17368826642120220025

`A005132(or(n, A000035(n)))+A005132(n)`
-/

namespace A209386.P17368826642120220025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (Int.lor (n : ℤ) (A000035 n)).toNat + A005132 n

end

end A209386.P17368826642120220025

/-! ## A209386.P11535520305675305006

`A005132(n+1)+A005132(n)-A160356(n+1)`
-/

namespace A209386.P11535520305675305006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (n + 1) + (A005132 n - A160356 (n + 1))

end

end A209386.P11535520305675305006

/-! ## A209386.P11643099949917738126

`2*A382128(Δ[n²])`
-/

namespace A209386.P11643099949917738126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A382128 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A209386.P11643099949917738126

/-! ## A209386.P3782231031129907631

`A005843(A005132(n))`
-/

namespace A209386.P3782231031129907631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005132 n).toNat

end

end A209386.P3782231031129907631

/-! ## A209386.P1352021020501918748

`A005843(floor(A209387(n)/2))`
-/

namespace A209386.P1352021020501918748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 ⌊(A209387 n : ℚ) / 2⌋.toNat

end

end A209386.P1352021020501918748

/-! ## A209386.P12799277387127092363

`A004273(A005132(n)+1)-1`
-/

namespace A209386.P12799277387127092363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005132 n + 1).toNat - 1

end

end A209386.P12799277387127092363

/-! ## A209386.P12735812380409302461

`A004273(A063733(n+1))-1`
-/

namespace A209386.P12735812380409302461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063733 (n + 1)).toNat - 1

end

end A209386.P12735812380409302461

/-! ## A209386.P11090656089941011053

`A004277(A005132(n)+1)-2`
-/

namespace A209386.P11090656089941011053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005132 n + 1).toNat - 2

end

end A209386.P11090656089941011053

/-! ## A209386.P13304463940735920474

`A005408(A005132(n)+n)-A005408(n)`
-/

namespace A209386.P13304463940735920474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005132 n + (n : ℤ)).toNat - A005408 n

end

end A209386.P13304463940735920474

/-! ## A209386.P13678265000613968649

`A004442(A209387(n))`
-/

namespace A209386.P13678265000613968649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A209387 n).toNat

end

end A209386.P13678265000613968649

/-!
# A209387: a(n) = 2*A005132(n) + 1.

The programs for A209387, there is no canonical definition to state claims against.
-/

/-! ## A209387.P9358951526604217759

`2*A005132(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A209387.P9358951526604217759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005132 n + 1

end

end A209387.P9358951526604217759

/-! ## A209387.P14399634756510413874

`A209386(n)+1`
-/

namespace A209387.P14399634756510413874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209386 n + 1

end

end A209387.P14399634756510413874

/-! ## A209387.P1568133448454444883

`2*A063733(n+1)-1`
-/

namespace A209387.P1568133448454444883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063733 (n + 1) - 1

end

end A209387.P1568133448454444883

/-! ## A209387.P17365508935654020373

`∑[2*Δ[A063733(n)]]+1`
-/

namespace A209387.P17365508935654020373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A209387.P17365508935654020373

/-! ## A209387.P14447127652389469686

`2*∑[n*A160357(n)]+1`
-/

namespace A209387.P14447127652389469686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A160357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A209387.P14447127652389469686

/-! ## A209387.P15095287740546891175

`a(n-1)+2*A160356(n)` with `a(0)=1`
-/

namespace A209387.P15095287740546891175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A160356 n

end

end A209387.P15095287740546891175

/-! ## A209387.P9477365267028447452

`2*(A334951(n+1)+n+1)+1`
-/

namespace A209387.P9477365267028447452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A334951 (n + 1) + (n + 1 : ℤ)) + 1

end

end A209387.P9477365267028447452

/-! ## A209387.P11746804355525734609

`A063733(n+1)+A005132(n)`
-/

namespace A209387.P11746804355525734609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (n + 1) + A005132 n

end

end A209387.P11746804355525734609

/-! ## A209387.P6542556924009625314

`A000265(A005132(n)+A005132(n)+1)`
-/

namespace A209387.P6542556924009625314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A005132 n + (A005132 n + 1)).toNat

end

end A209387.P6542556924009625314

/-! ## A209387.P8132871094889770740

`A057427(n+1)+A005132(n)+A005132(n)`
-/

namespace A209387.P8132871094889770740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) + (A005132 n + A005132 n)

end

end A209387.P8132871094889770740

/-! ## A209387.P12660418599214085873

`A005408(A005132(n))`
-/

namespace A209387.P12660418599214085873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A005132 n).toNat

end

end A209387.P12660418599214085873

/-! ## A209387.P2573167311457717365

`A004273(A005132(n)+1)`
-/

namespace A209387.P2573167311457717365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A005132 n + 1).toNat

end

end A209387.P2573167311457717365

/-! ## A209387.P3788385948569148778

`A004273(A063733(n+1))`
-/

namespace A209387.P3788385948569148778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063733 (n + 1)).toNat

end

end A209387.P3788385948569148778

/-! ## A209387.P9442394089581697923

`A004277(A005132(n)+1)-1`
-/

namespace A209387.P9442394089581697923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005132 n + 1).toNat - 1

end

end A209387.P9442394089581697923

/-! ## A209387.P8939275365046357891

`A005408(A063733(n+1)-1)`
-/

namespace A209387.P8939275365046357891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A063733 (n + 1) - 1).toNat

end

end A209387.P8939275365046357891

/-! ## A209387.P11005183131358199521

`A093178(A005132(n)+A005132(n)+1)`
-/

namespace A209387.P11005183131358199521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A005132 n + (A005132 n + 1)).toNat

end

end A209387.P11005183131358199521

/-! ## A209387.P17571458775930819272

`A004442(A209386(n))`
-/

namespace A209387.P17571458775930819272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A209386 n).toNat

end

end A209387.P17571458775930819272

/-! ## A209387.P14414274636286942240

`A004442(2*A005132(n))`
-/

namespace A209387.P14414274636286942240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A005132 n).toNat

end

end A209387.P14414274636286942240

/-! ## A209387.P7741654597982845560

`A097062(2*A005132(n))`
-/

namespace A209387.P7741654597982845560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (2 * A005132 n).toNat

end

end A209387.P7741654597982845560

/-! ## A209387.P6534238329245358337

`A109613(2*A005132(n))`
-/

namespace A209387.P6534238329245358337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A005132 n).toNat

end

end A209387.P6534238329245358337

/-!
# A209388: Product of positive odd integers smaller than n and relatively prime to n.

The programs for A209388, there is no canonical definition to state claims against.
-/

/-! ## A209388.P15718245200998415282

`A124441(2*(n+1))`
-/

namespace A209388.P15718245200998415282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124441 (2 * (n + 1))

end

end A209388.P15718245200998415282

/-! ## A209388.P17800534765939745320

`or(1, A124441(Δ[n²]+1))`
-/

namespace A209388.P17800534765939745320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A124441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A209388.P17800534765939745320

/-! ## A209388.P754417149643098928

`A124441(Δ[n²+n])/log2(4/2)`
-/

namespace A209388.P754417149643098928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A124441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℝ) / Real.logb 2 ((4 : ℚ) / 2 : ℝ)

end

end A209388.P754417149643098928

/-! ## A209388.P17488695177362929166

`A185012(n+3)+A124441(Δ[n²+n])`
-/

namespace A209388.P17488695177362929166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 3) + A124441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A209388.P17488695177362929166

/-! ## A209388.P8579764477847692183

`A185013(n+5)+A124441(Δ[n²+n])`
-/

namespace A209388.P8579764477847692183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (n + 5) + A124441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A209388.P8579764477847692183

/-! ## A209388.P12417476283855083794

`A124441(Δ[n²+n])+A035187(A209876(n+1))`
-/

namespace A209388.P12417476283855083794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124441 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A035187 (A209876 (n + 1)).toNat

end

end A209388.P12417476283855083794

/-! ## A209388.P13546853704620739623

`gcd(A001783(n+1), A124441(A103517(n)))`
-/

namespace A209388.P13546853704620739623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001783 (n + 1)) (A124441 (A103517 n).toNat)

end

end A209388.P13546853704620739623

/-!
# A209390: Number of nX1 1..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209390, there is no canonical definition to state claims against.
-/

/-! ## A209390.P6927237474857892439

`A209394(∑[n]+1)`
-/

namespace A209390.P6927237474857892439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209390.P6927237474857892439

/-! ## A209390.P4072046773266664803

`A209394(A000124(n))%78`
-/

namespace A209390.P4072046773266664803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209394 (A000124 n).toNat) 78

end

end A209390.P4072046773266664803

/-! ## A209390.P3972545887776803269

`A209394(A000124(n))+A054899(n)`
-/

namespace A209390.P3972545887776803269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (A000124 n).toNat + A054899 n

end

end A209390.P3972545887776803269

/-! ## A209390.P6305541914596656359

`A209394(A000124(n))+A061858(n)`
-/

namespace A209390.P6305541914596656359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (A000124 n).toNat + A061858 n

end

end A209390.P6305541914596656359

/-! ## A209390.P6826636609123224356

`A326332(n)+A209394(A000124(n))`
-/

namespace A209390.P6826636609123224356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326332 n + A209394 (A000124 n).toNat

end

end A209390.P6826636609123224356

/-!
# A209391: Number of nX2 1..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209391, there is no canonical definition to state claims against.
-/

/-! ## A209391.P5023083050820637467

`A209394(∑[n+1]+2)`
-/

namespace A209391.P5023083050820637467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A209391.P5023083050820637467

/-! ## A209391.P2290921202006713044

`record[root(A209394(n+2), A292477(n))]`
-/

namespace A209391.P2290921202006713044
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A209394 (n + 2) : ℝ) ^ (1 / (A292477 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209391.P2290921202006713044

/-! ## A209391.P6012244212992348287

`record[gcd(A209394(n+1), A259776(n))]`
-/

namespace A209391.P6012244212992348287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209394 (n + 1)) (A259776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209391.P6012244212992348287

/-! ## A209391.P9961474111435560383

`record[gcd(A002262(n), A209394(n+2))]`
-/

namespace A209391.P9961474111435560383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A209394 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209391.P9961474111435560383

/-!
# A209392: Number of nX3 1..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209392, there is no canonical definition to state claims against.
-/

/-! ## A209392.P14575483183234017492

`A209394(∑[n+2]+4)`
-/

namespace A209392.P14575483183234017492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A209392.P14575483183234017492

/-! ## A209392.P6167346484808038755

`record[A209394(n+4)*A337165(n)]`
-/

namespace A209392.P6167346484808038755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (n + 4) * A337165 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209392.P6167346484808038755

/-! ## A209392.P14237799814947992403

`record[gcd(A209394(n+3), A276727(n))]`
-/

namespace A209392.P14237799814947992403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A209394 (n + 3)) (A276727 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209392.P14237799814947992403

/-!
# A209393: Number of nX4 1..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209393, there is no canonical definition to state claims against.
-/

/-! ## A209393.P8225282648446363686

`A209394(ceil(abs(π-∑[n+3]))+10)`
-/

namespace A209393.P8225282648446363686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209394 (⌈|Real.pi - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)|⌉ + 10).toNat

end

end A209393.P8225282648446363686

/-!
# A209394: T(n,k) = Number of n X k 1..4 arrays with every element value z a city block distance of exactly z from another element value z.

The programs for A209394, there is no canonical definition to state claims against.
-/

/-! ## A209394.P8565601871669498248

`A209058(n+1)-A336642(A146997(n+1))`
-/

namespace A209394.P8565601871669498248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209058 (n + 1) - A336642 (A146997 (n + 1)).toNat

end

end A209394.P8565601871669498248

/-! ## A209394.P13397790065863780622

`A209215(n+1)-A336642(A146997(n+1))`
-/

namespace A209394.P13397790065863780622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209215 (n + 1) - A336642 (A146997 (n + 1)).toNat

end

end A209394.P13397790065863780622

/-! ## A209394.P4850496275481220167

`A209023(A043320(n+1))`
-/

namespace A209394.P4850496275481220167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209023 (A043320 (n + 1)).toNat

end

end A209394.P4850496275481220167

/-! ## A209394.P7491404379166656768

`A209023(A044917(n+1))`
-/

namespace A209394.P7491404379166656768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209023 (A044917 (n + 1)).toNat

end

end A209394.P7491404379166656768

/-! ## A209394.P10165856959928824632

`A209023(A055645(n+1))`
-/

namespace A209394.P10165856959928824632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209023 (A055645 (n + 1)).toNat

end

end A209394.P10165856959928824632

/-!
# A209396: Each entry is the first of three consecutive primes with equal digital sum.

The programs for A209396, there is no canonical definition to state claims against.
-/

/-! ## A209396.P11609879804543711778

`A395623(A167614(n+1))`
-/

namespace A209396.P11609879804543711778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395623 (A167614 (n + 1)).toNat

end

end A209396.P11609879804543711778

/-!
# A209397: L.g.f.: Sum_{n>=1} a(n)*x^n/n = Sum_{n>=1} x^n/n * exp( Sum_{k>=1} a(k)*x^(n*k)/k ).

The programs for A209397, there is no canonical definition to state claims against.
-/

/-! ## A209397.P15030571320593920205

`∑{d}[n+1, A055544(#)]`
-/

namespace A209397.P15030571320593920205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055544 d

end

end A209397.P15030571320593920205

/-! ## A209397.P8410285470593452030

`∑{d}[n+1, #*A000081(#)]`
-/

namespace A209397.P8410285470593452030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000081 d

end

end A209397.P8410285470593452030

/-! ## A209397.P14799001781553948578

`record[∑{d}[A024000(n), A055544(#)]]`
-/

namespace A209397.P14799001781553948578
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A055544 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209397.P14799001781553948578

/-! ## A209397.P1272912404263613164

`record[∑{d}[A030451(n)-1, A055544(#)]]`
-/

namespace A209397.P1272912404263613164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A055544 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209397.P1272912404263613164

/-! ## A209397.P7243845923642045714

`record[∑{d}[A028920(n), A055544(#)]]`
-/

namespace A209397.P7243845923642045714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A055544 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209397.P7243845923642045714

/-! ## A209397.P12050902449486046594

`record[∑{d}[A116549(n), A055544(#)]]`
-/

namespace A209397.P12050902449486046594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116549 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A055544 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A209397.P12050902449486046594

/-!
# A209398: Number of subsets of {1,...,n} containing two elements whose difference is 2.

The programs for A209398, the canonical program `A209398.P6254359366101448643` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A209398 has offset 0).

The definition of A209398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A209398.P6254359366101448643

`2^n-A006498(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A209398

/-- `2^n-A006498(n+2)` -/
def P6254359366101448643.Spec : Prop :=
  ∀ n, P6254359366101448643.a n = A209398 n

theorem P6254359366101448643.correct : P6254359366101448643.Spec := by
  intro n
  simp only [A209398]

end A209398

/-! ## A209398.P1230885872044200960

`3*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=7`
-/

namespace A209398.P1230885872044200960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2, 7] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3) - a (n - 4) - 2 * a (n - 5)

end

end A209398.P1230885872044200960

namespace A209398

/-- `3*a(n-1)-2*a(n-2)+a(n-3)-a(n-4)-2*a(n-5)` -/
def P1230885872044200960.Spec : Prop :=
  ∀ n, P1230885872044200960.a n = A209398 n

end A209398

/-! ## A209398.P2900457663682721569

`2^n-A074677(n+3)`
-/

namespace A209398.P2900457663682721569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A074677 (n + 3)

end

end A209398.P2900457663682721569

namespace A209398

/-- `2^n-A074677(n+3)` -/
def P2900457663682721569.Spec : Prop :=
  ∀ n, P2900457663682721569.a n = A209398 n

end A209398

/-! ## A209398.P4048527100711822659

`A000079(n)-Δ[A097083(n+2)]`
-/

namespace A209398.P4048527100711822659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A209398.P4048527100711822659

namespace A209398

/-- `A000079(n)-Δ[A097083(n+2)]` -/
def P4048527100711822659.Spec : Prop :=
  ∀ n, P4048527100711822659.a n = A209398 n

end A209398

/-! ## A209398.P15443735566275330955

`A000918(n)+2-Δ[A097083(n+2)]`
-/

namespace A209398.P15443735566275330955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + 2 - (f1 (n + 1) - f1 n)

end

end A209398.P15443735566275330955

namespace A209398

/-- `A000918(n)+2-Δ[A097083(n+2)]` -/
def P15443735566275330955.Spec : Prop :=
  ∀ n, P15443735566275330955.a n = A209398 n

end A209398

/-! ## A209398.P17171939451077179252

`Δ[A000918(n)-A097083(n+2)]`
-/

namespace A209398.P17171939451077179252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n - A097083 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A209398.P17171939451077179252

namespace A209398

/-- `Δ[A000918(n)-A097083(n+2)]` -/
def P17171939451077179252.Spec : Prop :=
  ∀ n, P17171939451077179252.a n = A209398 n

end A209398

/-! ## A209398.P10456868282253305936

`A209436(∑[n+1]+1)`
-/

namespace A209398.P10456868282253305936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A209398.P10456868282253305936

namespace A209398

/-- `A209436(∑[n+1]+1)` -/
def P10456868282253305936.Spec : Prop :=
  ∀ n, P10456868282253305936.a n = A209398 n

end A209398

/-!
# A209399: Number of subsets of {1,...,n} containing two elements whose difference is 3.

The programs for A209399, there is no canonical definition to state claims against.
-/

/-! ## A209399.P1860944166497945550

`2^n-A006500(n)`
-/

namespace A209399.P1860944166497945550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A006500 n

end

end A209399.P1860944166497945550

/-! ## A209399.P16787640113007880279

`A000051(n)-(A006500(n)+1)`
-/

namespace A209399.P16787640113007880279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A006500 n + 1)

end

end A209399.P16787640113007880279

/-! ## A209399.P14303269021286638797

`A164387(n)+A209400(n)-A006500(n)`
-/

namespace A209399.P14303269021286638797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164387 n + (A209400 n - A006500 n)

end

end A209399.P14303269021286638797

/-! ## A209399.P7099019907898479715

`A209409(n)+A209410(n)-A006500(n)`
-/

namespace A209399.P7099019907898479715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209409 n + (A209410 n - A006500 n)

end

end A209399.P7099019907898479715

/-! ## A209399.P6016387574381777114

`A031923(n+1)+A209408(n)-A006500(n)`
-/

namespace A209399.P6016387574381777114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (n + 1) + (A209408 n - A006500 n)

end

end A209399.P6016387574381777114

/-! ## A209399.P16654892511453663897

`A209436(∑[n+2]+3)`
-/

namespace A209399.P16654892511453663897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209436 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A209399.P16654892511453663897

