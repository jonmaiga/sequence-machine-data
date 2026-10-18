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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
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
# A312900: Coordination sequence Gal.6.379.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312900, there is no canonical definition to state claims against.
-/

/-! ## A312900.P6631414185460895125

`A190889(n+1)-A156257(A345857(3*(n+1)))`
-/

namespace A312900.P6631414185460895125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190889 (n + 1) - A156257 (A345857 (3 * (n + 1))).toNat

end

end A312900.P6631414185460895125

/-! ## A312900.P7148827496264319355

`or(A137579(A007089(n)), A312899(n))`
-/

namespace A312900.P7148827496264319355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A137579 (A007089 n).toNat) (A312899 n)

end

end A312900.P7148827496264319355

/-! ## A312900.P5081115642645304189

`A190889(n+1)-A020639(A014477(n))`
-/

namespace A312900.P5081115642645304189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190889 (n + 1) - A020639 (A014477 n).toNat

end

end A312900.P5081115642645304189

/-! ## A312900.P13673754645010231106

`A190889(n+1)-A040001(A241891(n))`
-/

namespace A312900.P13673754645010231106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190889 (n + 1) - A040001 (A241891 n).toNat

end

end A312900.P13673754645010231106

/-! ## A312900.P7676864310365864105

`A190889(n+1)-A190886(A001654(n+1))`
-/

namespace A312900.P7676864310365864105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190889 (n + 1) - A190886 (A001654 (n + 1)).toNat

end

end A312900.P7676864310365864105

/-!
# A312901: Coordination sequence Gal.3.10.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312901, the canonical program `A312901.P2946689205728236209` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312901 has offset 0).

The definition of A312901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312901.P2946689205728236209

`a(n-3)+13` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A312901

/-- `a(n-3)+13` -/
def P2946689205728236209.Spec : Prop :=
  ∀ n, (P2946689205728236209.a n : ℤ) = A312901 n

theorem P2946689205728236209.correct : P2946689205728236209.Spec := by
  intro n
  simp only [A312901]

end A312901

/-! ## A312901.P5668802784173665526

`round(sqrt((39*n/9)²+1))`
-/

namespace A312901.P5668802784173665526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((39 * n : ℚ) / 9) ^ 2 + 1 : ℝ))

end

end A312901.P5668802784173665526

namespace A312901

/-- `round(sqrt((39*n/9)²+1))` -/
def P5668802784173665526.Spec : Prop :=
  ∀ n, P5668802784173665526.a n = A312901 n

end A312901

/-! ## A312901.P5693581217760216889

`∑[floor(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A312901.P5693581217760216889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312901.P5693581217760216889

namespace A312901

/-- `∑[floor(a(n-3))]` -/
def P5693581217760216889.Spec : Prop :=
  ∀ n, (P5693581217760216889.a n : ℤ) = A312901 n

end A312901

/-! ## A312901.P12749383752060883525

`∑[ceil(a(n-3))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A312901.P12749383752060883525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 4, 4] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312901.P12749383752060883525

namespace A312901

/-- `∑[ceil(a(n-3))]` -/
def P12749383752060883525.Spec : Prop :=
  ∀ n, (P12749383752060883525.a n : ℤ) = A312901 n

end A312901

/-! ## A312901.P11247191013406437560

`∑[a(n-3)%6]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=4`
-/

namespace A312901.P11247191013406437560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 4, 4] fun n f1 =>
  f1 (n - 3) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312901.P11247191013406437560

namespace A312901

/-- `∑[a(n-3)%6]` -/
def P11247191013406437560.Spec : Prop :=
  ∀ n, (P11247191013406437560.a n : ℤ) = A312901 n

end A312901

/-! ## A312901.P17726022344343616571

`∑[a(gcd(3, n+1))+1]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A312901.P17726022344343616571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (Nat.gcd 3 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312901.P17726022344343616571

namespace A312901

/-- `∑[a(gcd(3, n+1))+1]` -/
def P17726022344343616571.Spec : Prop :=
  ∀ n, (P17726022344343616571.a n : ℤ) = A312901 n

end A312901

/-! ## A312901.P13075421973191358841

`A298786(n)+n`
-/

namespace A312901.P13075421973191358841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + (n : ℤ)

end

end A312901.P13075421973191358841

namespace A312901

/-- `A298786(n)+n` -/
def P13075421973191358841.Spec : Prop :=
  ∀ n, P13075421973191358841.a n = A312901 n

end A312901

/-! ## A312901.P2826754625679785801

`A219529(n)-n`
-/

namespace A312901.P2826754625679785801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - (n : ℤ)

end

end A312901.P2826754625679785801

namespace A312901

/-- `A219529(n)-n` -/
def P2826754625679785801.Spec : Prop :=
  ∀ n, P2826754625679785801.a n = A312901 n

end A312901

/-! ## A312901.P16743728853110746124

`A008576(2*n)-n`
-/

namespace A312901.P16743728853110746124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - (n : ℤ)

end

end A312901.P16743728853110746124

namespace A312901

/-- `A008576(2*n)-n` -/
def P16743728853110746124.Spec : Prop :=
  ∀ n, P16743728853110746124.a n = A312901 n

end A312901

/-! ## A312901.P4153106044884035376

`A131737(2*n+1)+3*n`
-/

namespace A312901.P4153106044884035376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (2 * n + 1) + (3 * n : ℤ)

end

end A312901.P4153106044884035376

namespace A312901

/-- `A131737(2*n+1)+3*n` -/
def P4153106044884035376.Spec : Prop :=
  ∀ n, P4153106044884035376.a n = A312901 n

end A312901

/-! ## A312901.P17125611945176762226

`A298788(n)+A051176(n)`
-/

namespace A312901.P17125611945176762226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298788 n + A051176 n

end

end A312901.P17125611945176762226

namespace A312901

/-- `A298788(n)+A051176(n)` -/
def P17125611945176762226.Spec : Prop :=
  ∀ n, P17125611945176762226.a n = A312901 n

end A312901

/-! ## A312901.P2544070942780850614

`A008706(n)-A004396(n)`
-/

namespace A312901.P2544070942780850614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004396 n

end

end A312901.P2544070942780850614

namespace A312901

/-- `A008706(n)-A004396(n)` -/
def P2544070942780850614.Spec : Prop :=
  ∀ n, P2544070942780850614.a n = A312901 n

end A312901

/-! ## A312901.P6486013652419747311

`A301694(n)-A064429(n)`
-/

namespace A312901.P6486013652419747311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301694 n - A064429 n

end

end A312901.P6486013652419747311

namespace A312901

/-- `A301694(n)-A064429(n)` -/
def P6486013652419747311.Spec : Prop :=
  ∀ n, P6486013652419747311.a n = A312901 n

end A312901

/-! ## A312901.P10913984546881787854

`A314677(n)-A134667(n)`
-/

namespace A312901.P10913984546881787854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314677 n - A134667 n

end

end A312901.P10913984546881787854

namespace A312901

/-- `A314677(n)-A134667(n)` -/
def P10913984546881787854.Spec : Prop :=
  ∀ n, P10913984546881787854.a n = A312901 n

end A312901

/-! ## A312901.P13074391687389171256

`record[A008576(n)-A006370(n)]`
-/

namespace A312901.P13074391687389171256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n - A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312901.P13074391687389171256

namespace A312901

/-- `record[A008576(n)-A006370(n)]` -/
def P13074391687389171256.Spec : Prop :=
  ∀ n, P13074391687389171256.a n = A312901 n

end A312901

/-! ## A312901.P9728382480337725183

`A008574(n)+A002264(n+1)`
-/

namespace A312901.P9728382480337725183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A002264 (n + 1)

end

end A312901.P9728382480337725183

namespace A312901

/-- `A008574(n)+A002264(n+1)` -/
def P9728382480337725183.Spec : Prop :=
  ∀ n, P9728382480337725183.a n = A312901 n

end A312901

/-! ## A312901.P15218560374281202187

`A008854(n+1)+A008576(n)`
-/

namespace A312901.P15218560374281202187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (n + 1) + A008576 n

end

end A312901.P15218560374281202187

namespace A312901

/-- `A008854(n+1)+A008576(n)` -/
def P15218560374281202187.Spec : Prop :=
  ∀ n, P15218560374281202187.a n = A312901 n

end A312901

/-! ## A312901.P6501968960199416115

`A042965(n+1)+A008486(n)`
-/

namespace A312901.P6501968960199416115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A008486 n

end

end A312901.P6501968960199416115

namespace A312901

/-- `A042965(n+1)+A008486(n)` -/
def P6501968960199416115.Spec : Prop :=
  ∀ n, P6501968960199416115.a n = A312901 n

end A312901

/-! ## A312901.P10100336433493976011

`A047282(n+1)+A004273(n)`
-/

namespace A312901.P10100336433493976011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047282 (n + 1) + A004273 n

end

end A312901.P10100336433493976011

namespace A312901

/-- `A047282(n+1)+A004273(n)` -/
def P10100336433493976011.Spec : Prop :=
  ∀ n, P10100336433493976011.a n = A312901 n

end A312901

/-! ## A312901.P4588973718162023455

`A047386(n+1)+A004277(n)`
-/

namespace A312901.P4588973718162023455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047386 (n + 1) + A004277 n

end

end A312901.P4588973718162023455

namespace A312901

/-- `A047386(n+1)+A004277(n)` -/
def P4588973718162023455.Spec : Prop :=
  ∀ n, P4588973718162023455.a n = A312901 n

end A312901

/-!
# A312902: Coordination sequence Gal.6.129.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312902, the canonical program `A312902.P9477729746775064079` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312902 has offset 0).

The definition of A312902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2445 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312902.P9477729746775064079

`(A310378(n)+A008574(n))/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A312902

/-- `(A310378(n)+A008574(n))/2` -/
def P9477729746775064079.Spec : Prop :=
  ∀ n, P9477729746775064079.a n = (A312902 n : ℚ)

end A312902

/-! ## A312902.P3951810168199181954

`abs(A008592(n)-A315537(n))`
-/

namespace A312902.P3951810168199181954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315537 n|

end

end A312902.P3951810168199181954

namespace A312902

/-- `abs(A008592(n)-A315537(n))` -/
def P3951810168199181954.Spec : Prop :=
  ∀ n, P3951810168199181954.a n = A312902 n

end A312902

/-! ## A312902.P13700974202905079752

`A008458(n)+A008574(n)-A315537(n)`
-/

namespace A312902.P13700974202905079752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315537 n)

end

end A312902.P13700974202905079752

namespace A312902

/-- `A008458(n)+A008574(n)-A315537(n)` -/
def P13700974202905079752.Spec : Prop :=
  ∀ n, P13700974202905079752.a n = A312902 n

end A312902

/-! ## A312902.P8326581275909850948

`A004525(A310396(n))+2*n`
-/

namespace A312902.P8326581275909850948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310396 n).toNat + (2 * n : ℤ)

end

end A312902.P8326581275909850948

namespace A312902

/-- `A004525(A310396(n))+2*n` -/
def P8326581275909850948.Spec : Prop :=
  ∀ n, P8326581275909850948.a n = A312902 n

end A312902

/-! ## A312902.P9257592948423366013

`A004525(A312961(n))+2*n`
-/

namespace A312902.P9257592948423366013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312961 n).toNat + (2 * n : ℤ)

end

end A312902.P9257592948423366013

namespace A312902

/-- `A004525(A312961(n))+2*n` -/
def P9257592948423366013.Spec : Prop :=
  ∀ n, P9257592948423366013.a n = A312902 n

end A312902

/-! ## A312902.P4222093260915879847

`A004525(A313113(n))+2*n`
-/

namespace A312902.P4222093260915879847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313113 n).toNat + (2 * n : ℤ)

end

end A312902.P4222093260915879847

namespace A312902

/-- `A004525(A313113(n))+2*n` -/
def P4222093260915879847.Spec : Prop :=
  ∀ n, P4222093260915879847.a n = A312902 n

end A312902

/-! ## A312902.P12201257447528554925

`A004525(A313212(n))+2*n`
-/

namespace A312902.P12201257447528554925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313212 n).toNat + (2 * n : ℤ)

end

end A312902.P12201257447528554925

namespace A312902

/-- `A004525(A313212(n))+2*n` -/
def P12201257447528554925.Spec : Prop :=
  ∀ n, P12201257447528554925.a n = A312902 n

end A312902

/-! ## A312902.P16241777556083389210

`A005843(A008458(n)-n)-A315537(n)`
-/

namespace A312902.P16241777556083389210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315537 n

end

end A312902.P16241777556083389210

namespace A312902

/-- `A005843(A008458(n)-n)-A315537(n)` -/
def P16241777556083389210.Spec : Prop :=
  ∀ n, P16241777556083389210.a n = A312902 n

end A312902

/-! ## A312902.P4172835502166600266

`A004396(A312944(n)+2*n)`
-/

namespace A312902.P4172835502166600266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312944 n + (2 * n : ℤ)).toNat

end

end A312902.P4172835502166600266

namespace A312902

/-- `A004396(A312944(n)+2*n)` -/
def P4172835502166600266.Spec : Prop :=
  ∀ n, P4172835502166600266.a n = A312902 n

end A312902

/-! ## A312902.P11575394678593479060

`A004396(A313045(n)+2*n)`
-/

namespace A312902.P11575394678593479060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313045 n + (2 * n : ℤ)).toNat

end

end A312902.P11575394678593479060

namespace A312902

/-- `A004396(A313045(n)+2*n)` -/
def P11575394678593479060.Spec : Prop :=
  ∀ n, P11575394678593479060.a n = A312902 n

end A312902

/-! ## A312902.P1857805046594503688

`A004396(A312944(n)+n+n)`
-/

namespace A312902.P1857805046594503688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312944 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312902.P1857805046594503688

namespace A312902

/-- `A004396(A312944(n)+n+n)` -/
def P1857805046594503688.Spec : Prop :=
  ∀ n, P1857805046594503688.a n = A312902 n

end A312902

/-! ## A312902.P10985833998741501748

`A004396(A313045(n)+n+n)`
-/

namespace A312902.P10985833998741501748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313045 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312902.P10985833998741501748

namespace A312902

/-- `A004396(A313045(n)+n+n)` -/
def P10985833998741501748.Spec : Prop :=
  ∀ n, P10985833998741501748.a n = A312902 n

end A312902

/-! ## A312902.P1140462778767239197

`A311804(2*n)-4*n`
-/

namespace A312902.P1140462778767239197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 (2 * n) - (4 * n : ℤ)

end

end A312902.P1140462778767239197

namespace A312902

/-- `A311804(2*n)-4*n` -/
def P1140462778767239197.Spec : Prop :=
  ∀ n, P1140462778767239197.a n = A312902 n

end A312902

/-! ## A312902.P7925927321472782326

`ceil(A168186(A008574(2*n))/2)`
-/

namespace A312902.P7925927321472782326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A168186 (A008574 (2 * n)).toNat : ℚ) / 2⌉

end

end A312902.P7925927321472782326

namespace A312902

/-- `ceil(A168186(A008574(2*n))/2)` -/
def P7925927321472782326.Spec : Prop :=
  ∀ n, P7925927321472782326.a n = A312902 n

end A312902

/-! ## A312902.P15612664823962636355

`A004525(A311889(2*n))`
-/

namespace A312902.P15612664823962636355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311889 (2 * n)).toNat

end

end A312902.P15612664823962636355

namespace A312902

/-- `A004525(A311889(2*n))` -/
def P15612664823962636355.Spec : Prop :=
  ∀ n, P15612664823962636355.a n = A312902 n

end A312902

/-! ## A312902.P4387388328422182302

`A004525(A311932(2*n))`
-/

namespace A312902.P4387388328422182302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311932 (2 * n)).toNat

end

end A312902.P4387388328422182302

namespace A312902

/-- `A004525(A311932(2*n))` -/
def P4387388328422182302.Spec : Prop :=
  ∀ n, P4387388328422182302.a n = A312902 n

end A312902

/-! ## A312902.P4188457581022119116

`A004525(A312068(2*n))`
-/

namespace A312902.P4188457581022119116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312068 (2 * n)).toNat

end

end A312902.P4188457581022119116

namespace A312902

/-- `A004525(A312068(2*n))` -/
def P4188457581022119116.Spec : Prop :=
  ∀ n, P4188457581022119116.a n = A312902 n

end A312902

/-! ## A312902.P10896809590315468834

`A065033(A168186(A022144(n)))`
-/

namespace A312902.P10896809590315468834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A168186 (A022144 n).toNat).toNat

end

end A312902.P10896809590315468834

namespace A312902

/-- `A065033(A168186(A022144(n)))` -/
def P10896809590315468834.Spec : Prop :=
  ∀ n, P10896809590315468834.a n = A312902 n

end A312902

/-! ## A312902.P14187413539235576297

`2*A008574(2*n)-A315709(2*n)`
-/

namespace A312902.P14187413539235576297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315709 (2 * n)

end

end A312902.P14187413539235576297

namespace A312902

/-- `2*A008574(2*n)-A315709(2*n)` -/
def P14187413539235576297.Spec : Prop :=
  ∀ n, P14187413539235576297.a n = A312902 n

end A312902

/-! ## A312902.P2116553802124856012

`A068962(A313899(2*n))`
-/

namespace A312902.P2116553802124856012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313899 (2 * n)).toNat

end

end A312902.P2116553802124856012

namespace A312902

/-- `A068962(A313899(2*n))` -/
def P2116553802124856012.Spec : Prop :=
  ∀ n, P2116553802124856012.a n = A312902 n

end A312902

/-!
# A312903: Coordination sequence Gal.5.65.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312903, the canonical program `A312903.P5186887365123370171` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312903 has offset 0).

The definition of A312903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2534 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312903.P2855958910910595910

`A301726(n)-n`
-/

namespace A312903.P2855958910910595910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301726 n - (n : ℤ)

end

end A312903.P2855958910910595910

namespace A312903

/-- `A301726(n)-n` -/
def P2855958910910595910.Spec : Prop :=
  ∀ n, P2855958910910595910.a n = A312903 n

end A312903

/-! ## A312903.P5258848167995431690

`A151988(n)+A312892(n)-n`
-/

namespace A312903.P5258848167995431690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 n + (A312892 n - (n : ℤ))

end

end A312903.P5258848167995431690

namespace A312903

/-- `A151988(n)+A312892(n)-n` -/
def P5258848167995431690.Spec : Prop :=
  ∀ n, P5258848167995431690.a n = A312903 n

end A312903

/-! ## A312903.P1536338808942705267

`A008706(n)-A004525(A047263(n+1))`
-/

namespace A312903.P1536338808942705267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A004525 (A047263 (n + 1)).toNat

end

end A312903.P1536338808942705267

namespace A312903

/-- `A008706(n)-A004525(A047263(n+1))` -/
def P1536338808942705267.Spec : Prop :=
  ∀ n, P1536338808942705267.a n = A312903 n

end A312903

/-! ## A312903.P5186887365123370171

`A330025(n-A330025(n))+A311384(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A312903

/-- `A330025(n-A330025(n))+A311384(n)` -/
def P5186887365123370171.Spec : Prop :=
  ∀ n, P5186887365123370171.a n = A312903 n

theorem P5186887365123370171.correct : P5186887365123370171.Spec := by
  intro n
  simp only [A312903]

end A312903

/-! ## A312903.P12347564289865471398

`A151988(A008486(n))+A004396(A151988(n))`
-/

namespace A312903.P12347564289865471398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A008486 n).toNat + A004396 (A151988 n).toNat

end

end A312903.P12347564289865471398

namespace A312903

/-- `A151988(A008486(n))+A004396(A151988(n))` -/
def P12347564289865471398.Spec : Prop :=
  ∀ n, P12347564289865471398.a n = A312903 n

end A312903

/-! ## A312903.P9741646038573228262

`A313476(n)-A330025(n)`
-/

namespace A312903.P9741646038573228262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n - A330025 n

end

end A312903.P9741646038573228262

namespace A312903

/-- `A313476(n)-A330025(n)` -/
def P9741646038573228262.Spec : Prop :=
  ∀ n, P9741646038573228262.a n = A312903 n

end A312903

/-! ## A312903.P10859780486233976469

`A310398(n)-A057354(n+1)`
-/

namespace A312903.P10859780486233976469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A057354 (n + 1)

end

end A312903.P10859780486233976469

namespace A312903

/-- `A310398(n)-A057354(n+1)` -/
def P10859780486233976469.Spec : Prop :=
  ∀ n, P10859780486233976469.a n = A312903 n

end A312903

/-! ## A312903.P3034565636177735106

`A008458(n)+A008486(n)-A314886(n)`
-/

namespace A312903.P3034565636177735106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314886 n)

end

end A312903.P3034565636177735106

namespace A312903

/-- `A008458(n)+A008486(n)-A314886(n)` -/
def P3034565636177735106.Spec : Prop :=
  ∀ n, P3034565636177735106.a n = A312903 n

end A312903

/-! ## A312903.P2812119149147846369

`(A310379(n)+A008574(n))/2`
-/

namespace A312903.P2812119149147846369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310379 n + A008574 n : ℚ) / 2

end

end A312903.P2812119149147846369

namespace A312903

/-- `(A310379(n)+A008574(n))/2` -/
def P2812119149147846369.Spec : Prop :=
  ∀ n, P2812119149147846369.a n = (A312903 n : ℚ)

end A312903

/-! ## A312903.P7522556644571632892

`A008574(n)+A313842(n)-A250120(n)`
-/

namespace A312903.P7522556644571632892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313842 n - A250120 n)

end

end A312903.P7522556644571632892

namespace A312903

/-- `A008574(n)+A313842(n)-A250120(n)` -/
def P7522556644571632892.Spec : Prop :=
  ∀ n, P7522556644571632892.a n = A312903 n

end A312903

/-! ## A312903.P5608483564852918578

`A315684(n)-(A330025(n)+n)`
-/

namespace A312903.P5608483564852918578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315684 n - (A330025 n + (n : ℤ))

end

end A312903.P5608483564852918578

namespace A312903

/-- `A315684(n)-(A330025(n)+n)` -/
def P5608483564852918578.Spec : Prop :=
  ∀ n, P5608483564852918578.a n = A312903 n

end A312903

/-! ## A312903.P9981629704912388185

`A008458(n)+A008574(n)-A315536(n)`
-/

namespace A312903.P9981629704912388185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315536 n)

end

end A312903.P9981629704912388185

namespace A312903

/-- `A008458(n)+A008574(n)-A315536(n)` -/
def P9981629704912388185.Spec : Prop :=
  ∀ n, P9981629704912388185.a n = A312903 n

end A312903

/-! ## A312903.P10634591367171254649

`A314220(n)-A047263(n+1)`
-/

namespace A312903.P10634591367171254649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - A047263 (n + 1)

end

end A312903.P10634591367171254649

namespace A312903

/-- `A314220(n)-A047263(n+1)` -/
def P10634591367171254649.Spec : Prop :=
  ∀ n, P10634591367171254649.a n = A312903 n

end A312903

/-! ## A312903.P6132618691108490379

`A004525(A310439(n))+2*n`
-/

namespace A312903.P6132618691108490379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310439 n).toNat + (2 * n : ℤ)

end

end A312903.P6132618691108490379

namespace A312903

/-- `A004525(A310439(n))+2*n` -/
def P6132618691108490379.Spec : Prop :=
  ∀ n, P6132618691108490379.a n = A312903 n

end A312903

/-! ## A312903.P10167518259636223741

`A004525(A312979(n))+2*n`
-/

namespace A312903.P10167518259636223741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312979 n).toNat + (2 * n : ℤ)

end

end A312903.P10167518259636223741

namespace A312903

/-- `A004525(A312979(n))+2*n` -/
def P10167518259636223741.Spec : Prop :=
  ∀ n, P10167518259636223741.a n = A312903 n

end A312903

/-! ## A312903.P5099187533347825417

`A004396(A314164(n)+n)`
-/

namespace A312903.P5099187533347825417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314164 n + (n : ℤ)).toNat

end

end A312903.P5099187533347825417

namespace A312903

/-- `A004396(A314164(n)+n)` -/
def P5099187533347825417.Spec : Prop :=
  ∀ n, P5099187533347825417.a n = A312903 n

end A312903

/-! ## A312903.P6431888148982038164

`A004396(A314220(n)+n)`
-/

namespace A312903.P6431888148982038164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314220 n + (n : ℤ)).toNat

end

end A312903.P6431888148982038164

namespace A312903

/-- `A004396(A314220(n)+n)` -/
def P6431888148982038164.Spec : Prop :=
  ∀ n, P6431888148982038164.a n = A312903 n

end A312903

/-! ## A312903.P14941411623687871062

`A004396(A313053(n)+2*n)`
-/

namespace A312903.P14941411623687871062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313053 n + (2 * n : ℤ)).toNat

end

end A312903.P14941411623687871062

namespace A312903

/-- `A004396(A313053(n)+2*n)` -/
def P14941411623687871062.Spec : Prop :=
  ∀ n, P14941411623687871062.a n = A312903 n

end A312903

/-! ## A312903.P4888789492034643597

`A004396(A313053(n)+n+n)`
-/

namespace A312903.P4888789492034643597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313053 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312903.P4888789492034643597

namespace A312903

/-- `A004396(A313053(n)+n+n)` -/
def P4888789492034643597.Spec : Prop :=
  ∀ n, P4888789492034643597.a n = A312903 n

end A312903

/-! ## A312903.P3583145026084516449

`A004396(A301726(n)+A151988(n))`
-/

namespace A312903.P3583145026084516449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301726 n + A151988 n).toNat

end

end A312903.P3583145026084516449

namespace A312903

/-- `A004396(A301726(n)+A151988(n))` -/
def P3583145026084516449.Spec : Prop :=
  ∀ n, P3583145026084516449.a n = A312903 n

end A312903

/-!
# A312904: Coordination sequence Gal.6.457.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312904, there is no canonical definition to state claims against.
-/

/-! ## A312904.P14739435576702546888

`A008574(n)+A000120(A330645(n))`
-/

namespace A312904.P14739435576702546888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A000120 (A330645 n).toNat

end

end A312904.P14739435576702546888

/-! ## A312904.P16673001308752343919

`A312948(A351870(n))-A160380(A250120(n))`
-/

namespace A312904.P16673001308752343919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 (A351870 n).toNat - A160380 (A250120 n).toNat

end

end A312904.P16673001308752343919

/-! ## A312904.P10457399688630738203

`A312948(A351870(n))-A160380(A315187(n))`
-/

namespace A312904.P10457399688630738203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 (A351870 n).toNat - A160380 (A315187 n).toNat

end

end A312904.P10457399688630738203

/-! ## A312904.P15456913265920290401

`A102786(A299910(n+1))`
-/

namespace A312904.P15456913265920290401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102786 (A299910 (n + 1)).toNat

end

end A312904.P15456913265920290401

/-! ## A312904.P9615178125079786774

`A298024(n)-A103919(A000108(n))`
-/

namespace A312904.P9615178125079786774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A103919 (A000108 n).toNat

end

end A312904.P9615178125079786774

/-!
# A312905: Coordination sequence Gal.6.389.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312905, there is no canonical definition to state claims against.
-/

/-! ## A312905.P10854484219418582555

`A311311(n)+A185102(A005773(n))`
-/

namespace A312905.P10854484219418582555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311311 n + A185102 (A005773 n).toNat

end

end A312905.P10854484219418582555

/-! ## A312905.P4521412740924263

`A353371(A046717(n))+A311215(n)`
-/

namespace A312905.P4521412740924263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (A046717 n).toNat + A311215 n

end

end A312905.P4521412740924263

/-! ## A312905.P8014203326162815744

`A353371(A046717(n))+A311216(n)`
-/

namespace A312905.P8014203326162815744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353371 (A046717 n).toNat + A311216 n

end

end A312905.P8014203326162815744

/-! ## A312905.P12484863667791167467

`A003002(xor(A001105(n+1), A355526(3*n+5)))`
-/

namespace A312905.P12484863667791167467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (Int.xor (A001105 (n + 1)) (A355526 (3 * n + 5))).toNat

end

end A312905.P12484863667791167467

/-! ## A312905.P636075273587549106

`A124767(A351144(n))+4*n`
-/

namespace A312905.P636075273587549106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A351144 n).toNat + (4 * n : ℤ)

end

end A312905.P636075273587549106

/-!
# A312906: Coordination sequence Gal.5.92.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312906, there is no canonical definition to state claims against.
-/

/-! ## A312906.P9705135799781061085

`A311256(n)+A001179(A148218(n))`
-/

namespace A312906.P9705135799781061085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311256 n + A001179 (A148218 n).toNat

end

end A312906.P9705135799781061085

/-! ## A312906.P14612562943403482133

`A311257(n)+A001179(A148218(n))`
-/

namespace A312906.P14612562943403482133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A001179 (A148218 n).toNat

end

end A312906.P14612562943403482133

/-! ## A312906.P11306555012582488162

`A227394(A312963(n)+1)+A001179(A148218(n))`
-/

namespace A312906.P11306555012582488162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227394 (A312963 n + 1).toNat + A001179 (A148218 n).toNat

end

end A312906.P11306555012582488162

/-! ## A312906.P6270530094388879730

`A311256(n)+A001221(A001835(n))`
-/

namespace A312906.P6270530094388879730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311256 n + A001221 (A001835 n).toNat

end

end A312906.P6270530094388879730

/-! ## A312906.P3896475532493264046

`A311257(n)+A001221(A001835(n))`
-/

namespace A312906.P3896475532493264046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A001221 (A001835 n).toNat

end

end A312906.P3896475532493264046

/-!
# A312907: Coordination sequence Gal.4.85.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312907, the canonical program `A312907.P8561089575111463148` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312907 has offset 0).

The definition of A312907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312907.P8561089575111463148

`A005843(n)+A072154(n)-A134667(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312907

/-- `A005843(n)+A072154(n)-A134667(n)` -/
def P8561089575111463148.Spec : Prop :=
  ∀ n, P8561089575111463148.a n = A312907 n

theorem P8561089575111463148.correct : P8561089575111463148.Spec := by
  intro n
  simp only [A312907]

end A312907

/-! ## A312907.P6985601591214602399

`A311384(n)+A330025(n)-A134667(n)`
-/

namespace A312907.P6985601591214602399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311384 n + (A330025 n - A134667 n)

end

end A312907.P6985601591214602399

namespace A312907

/-- `A311384(n)+A330025(n)-A134667(n)` -/
def P6985601591214602399.Spec : Prop :=
  ∀ n, P6985601591214602399.a n = A312907 n

end A312907

/-! ## A312907.P14828494445666151299

`A008458(n)-(A134667(n)+A047486(n+1))`
-/

namespace A312907.P14828494445666151299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A134667 n + A047486 (n + 1))

end

end A312907.P14828494445666151299

namespace A312907

/-- `A008458(n)-(A134667(n)+A047486(n+1))` -/
def P14828494445666151299.Spec : Prop :=
  ∀ n, P14828494445666151299.a n = A312907 n

end A312907

/-! ## A312907.P11807698228264923742

`A008486(2*n)-A047486(n+1)-A134667(n)`
-/

namespace A312907.P11807698228264923742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A047486 (n + 1) - A134667 n

end

end A312907.P11807698228264923742

namespace A312907

/-- `A008486(2*n)-A047486(n+1)-A134667(n)` -/
def P11807698228264923742.Spec : Prop :=
  ∀ n, P11807698228264923742.a n = A312907 n

end A312907

/-! ## A312907.P13922774053332676199

`A314685(n)-A134667(n)`
-/

namespace A312907.P13922774053332676199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n - A134667 n

end

end A312907.P13922774053332676199

namespace A312907

/-- `A314685(n)-A134667(n)` -/
def P13922774053332676199.Spec : Prop :=
  ∀ n, P13922774053332676199.a n = A312907 n

end A312907

/-! ## A312907.P10333610281119562036

`A072154(n)+A313110(n)-A008576(n)`
-/

namespace A312907.P10333610281119562036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A313110 n - A008576 n)

end

end A312907.P10333610281119562036

namespace A312907

/-- `A072154(n)+A313110(n)-A008576(n)` -/
def P10333610281119562036.Spec : Prop :=
  ∀ n, P10333610281119562036.a n = A312907 n

end A312907

/-! ## A312907.P12399934546917958868

`A072154(n)+A310461(n)-A008486(n)`
-/

namespace A312907.P12399934546917958868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (A310461 n - A008486 n)

end

end A312907.P12399934546917958868

namespace A312907

/-- `A072154(n)+A310461(n)-A008486(n)` -/
def P12399934546917958868.Spec : Prop :=
  ∀ n, P12399934546917958868.a n = A312907 n

end A312907

/-! ## A312907.P3374746281264136079

`A315477(n)-(A134667(n)+n)`
-/

namespace A312907.P3374746281264136079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n - (A134667 n + (n : ℤ))

end

end A312907.P3374746281264136079

namespace A312907

/-- `A315477(n)-(A134667(n)+n)` -/
def P3374746281264136079.Spec : Prop :=
  ∀ n, P3374746281264136079.a n = A312907 n

end A312907

/-! ## A312907.P5784024233485743855

`A008706(n)+A310461(n)-A301718(n)`
-/

namespace A312907.P5784024233485743855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A310461 n - A301718 n)

end

end A312907.P5784024233485743855

namespace A312907

/-- `A008706(n)+A310461(n)-A301718(n)` -/
def P5784024233485743855.Spec : Prop :=
  ∀ n, P5784024233485743855.a n = A312907 n

end A312907

/-! ## A312907.P12002925608501331602

`A004396(A315654(n)+n)-A134667(n)`
-/

namespace A312907.P12002925608501331602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315654 n + (n : ℤ)).toNat - A134667 n

end

end A312907.P12002925608501331602

namespace A312907

/-- `A004396(A315654(n)+n)-A134667(n)` -/
def P12002925608501331602.Spec : Prop :=
  ∀ n, P12002925608501331602.a n = A312907 n

end A312907

/-!
# A312908: Coordination sequence Gal.5.64.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312908, the canonical program `A312908.P18385197356515419689` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312908 has offset 0).

The definition of A312908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2516 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312908.P18385197356515419689

`A042965(A298786(n)+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312908

/-- `A042965(A298786(n)+1)` -/
def P18385197356515419689.Spec : Prop :=
  ∀ n, P18385197356515419689.a n = A312908 n

theorem P18385197356515419689.correct : P18385197356515419689.Spec := by
  intro n
  simp only [A312908]

end A312908

/-! ## A312908.P2198194867854664228

`A107750(A042965(n+1)+2*n+1)`
-/

namespace A312908.P2198194867854664228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (A042965 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A312908.P2198194867854664228

namespace A312908

/-- `A107750(A042965(n+1)+2*n+1)` -/
def P2198194867854664228.Spec : Prop :=
  ∀ n, P2198194867854664228.a n = A312908 n

end A312908

/-! ## A312908.P4585841949562992825

`A107750(A004396(2*n)+2*n+1)`
-/

namespace A312908.P4585841949562992825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107750 (A004396 (2 * n) + (2 * n + 1 : ℤ)).toNat

end

end A312908.P4585841949562992825

namespace A312908

/-- `A107750(A004396(2*n)+2*n+1)` -/
def P4585841949562992825.Spec : Prop :=
  ∀ n, P4585841949562992825.a n = A312908 n

end A312908

/-! ## A312908.P7076473396614224513

`A298786(n)+A002264(A298786(n)+1)`
-/

namespace A312908.P7076473396614224513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A002264 (A298786 n + 1).toNat

end

end A312908.P7076473396614224513

namespace A312908

/-- `A298786(n)+A002264(A298786(n)+1)` -/
def P7076473396614224513.Spec : Prop :=
  ∀ n, P7076473396614224513.a n = A312908 n

end A312908

/-! ## A312908.P6982492076295847028

`A042965(A042968(n+2)+A004273(n))`
-/

namespace A312908.P6982492076295847028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A042968 (n + 2) + A004273 n).toNat

end

end A312908.P6982492076295847028

namespace A312908

/-- `A042965(A042968(n+2)+A004273(n))` -/
def P6982492076295847028.Spec : Prop :=
  ∀ n, P6982492076295847028.a n = A312908 n

end A312908

/-! ## A312908.P13731797838784256125

`A311344(n)+A004396(n-A004396(n))`
-/

namespace A312908.P13731797838784256125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A312908.P13731797838784256125

namespace A312908

/-- `A311344(n)+A004396(n-A004396(n))` -/
def P13731797838784256125.Spec : Prop :=
  ∀ n, P13731797838784256125.a n = A312908 n

end A312908

/-! ## A312908.P5719895751651369452

`A298024(n)-A004396(n-A004396(n))`
-/

namespace A312908.P5719895751651369452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312908.P5719895751651369452

namespace A312908

/-- `A298024(n)-A004396(n-A004396(n))` -/
def P5719895751651369452.Spec : Prop :=
  ∀ n, P5719895751651369452.a n = A312908 n

end A312908

/-! ## A312908.P5509529791887894137

`A042965(A042965(n+1)+A004277(n)+1)`
-/

namespace A312908.P5509529791887894137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A042965 (n + 1) + (A004277 n + 1)).toNat

end

end A312908.P5509529791887894137

namespace A312908

/-- `A042965(A042965(n+1)+A004277(n)+1)` -/
def P5509529791887894137.Spec : Prop :=
  ∀ n, P5509529791887894137.a n = A312908 n

end A312908

/-! ## A312908.P1684535820993104002

`A042965(A042965(n+1)+A004273(n)+2)`
-/

namespace A312908.P1684535820993104002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A042965 (n + 1) + (A004273 n + 2)).toNat

end

end A312908.P1684535820993104002

namespace A312908

/-- `A042965(A042965(n+1)+A004273(n)+2)` -/
def P1684535820993104002.Spec : Prop :=
  ∀ n, P1684535820993104002.a n = A312908 n

end A312908

/-! ## A312908.P4510854796724240778

`A313580(n)-A004396(A004396(n))`
-/

namespace A312908.P4510854796724240778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n - A004396 (A004396 n).toNat

end

end A312908.P4510854796724240778

namespace A312908

/-- `A313580(n)-A004396(A004396(n))` -/
def P4510854796724240778.Spec : Prop :=
  ∀ n, P4510854796724240778.a n = A312908 n

end A312908

/-! ## A312908.P420665384148062843

`A315427(n)-2*A004396(A004396(n))`
-/

namespace A312908.P420665384148062843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n - 2 * A004396 (A004396 n).toNat

end

end A312908.P420665384148062843

namespace A312908

/-- `A315427(n)-2*A004396(A004396(n))` -/
def P420665384148062843.Spec : Prop :=
  ∀ n, P420665384148062843.a n = A312908 n

end A312908

/-! ## A312908.P5013502840091411398

`A313894(n)-A004396(2*A004396(n))`
-/

namespace A312908.P5013502840091411398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n - A004396 (2 * A004396 n).toNat

end

end A312908.P5013502840091411398

namespace A312908

/-- `A313894(n)-A004396(2*A004396(n))` -/
def P5013502840091411398.Spec : Prop :=
  ∀ n, P5013502840091411398.a n = A312908 n

end A312908

/-! ## A312908.P17167481611545679888

`A008458(n)+A008574(n)-A315535(n)`
-/

namespace A312908.P17167481611545679888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315535 n)

end

end A312908.P17167481611545679888

namespace A312908

/-- `A008458(n)+A008574(n)-A315535(n)` -/
def P17167481611545679888.Spec : Prop :=
  ∀ n, P17167481611545679888.a n = A312908 n

end A312908

/-! ## A312908.P1391124583569072709

`A314163(n)-A004396(A004396(n)+n)`
-/

namespace A312908.P1391124583569072709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A004396 (A004396 n + (n : ℤ)).toNat

end

end A312908.P1391124583569072709

namespace A312908

/-- `A314163(n)-A004396(A004396(n)+n)` -/
def P1391124583569072709.Spec : Prop :=
  ∀ n, P1391124583569072709.a n = A312908 n

end A312908

/-! ## A312908.P8635722613948815260

`A315495(n)-(A004396(n)+A004396(A004396(n)))`
-/

namespace A312908.P8635722613948815260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - (A004396 n + A004396 (A004396 n).toNat)

end

end A312908.P8635722613948815260

namespace A312908

/-- `A315495(n)-(A004396(n)+A004396(A004396(n)))` -/
def P8635722613948815260.Spec : Prop :=
  ∀ n, P8635722613948815260.a n = A312908 n

end A312908

/-! ## A312908.P16853148027385748927

`A313746(n)-A004396(n)`
-/

namespace A312908.P16853148027385748927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n - A004396 n

end

end A312908.P16853148027385748927

namespace A312908

/-- `A313746(n)-A004396(n)` -/
def P16853148027385748927.Spec : Prop :=
  ∀ n, P16853148027385748927.a n = A312908 n

end A312908

/-! ## A312908.P11638765334830161552

`A315546(n)-2*A004396(n)`
-/

namespace A312908.P11638765334830161552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - 2 * A004396 n

end

end A312908.P11638765334830161552

namespace A312908

/-- `A315546(n)-2*A004396(n)` -/
def P11638765334830161552.Spec : Prop :=
  ∀ n, P11638765334830161552.a n = A312908 n

end A312908

/-! ## A312908.P8375090093027531201

`A004396(2*n)+A004396(A314736(n))`
-/

namespace A312908.P8375090093027531201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314736 n).toNat

end

end A312908.P8375090093027531201

namespace A312908

/-- `A004396(2*n)+A004396(A314736(n))` -/
def P8375090093027531201.Spec : Prop :=
  ∀ n, P8375090093027531201.a n = A312908 n

end A312908

/-! ## A312908.P7905943506061081025

`A004396(2*n)+A004396(A314848(n))`
-/

namespace A312908.P7905943506061081025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314848 n).toNat

end

end A312908.P7905943506061081025

namespace A312908

/-- `A004396(2*n)+A004396(A314848(n))` -/
def P7905943506061081025.Spec : Prop :=
  ∀ n, P7905943506061081025.a n = A312908 n

end A312908

/-! ## A312908.P1628913681625308617

`A004525(A313125(n))+2*n`
-/

namespace A312908.P1628913681625308617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313125 n).toNat + (2 * n : ℤ)

end

end A312908.P1628913681625308617

namespace A312908

/-- `A004525(A313125(n))+2*n` -/
def P1628913681625308617.Spec : Prop :=
  ∀ n, P1628913681625308617.a n = A312908 n

end A312908

/-!
# A312909: Coordination sequence Gal.6.150.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312909, the canonical program `A312909.P9930151025395677949` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312909 has offset 0).

The definition of A312909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312909.P9930151025395677949

`A008574(n)+A004525(3*round(n/3))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312909

/-- `A008574(n)+A004525(3*round(n/3))` -/
def P9930151025395677949.Spec : Prop :=
  ∀ n, P9930151025395677949.a n = A312909 n

theorem P9930151025395677949.correct : P9930151025395677949.Spec := by
  intro n
  simp only [A312909]

end A312909

/-! ## A312909.P7216892329592332047

`A311257(n)+A002264(n+1)`
-/

namespace A312909.P7216892329592332047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A002264 (n + 1)

end

end A312909.P7216892329592332047

namespace A312909

/-- `A311257(n)+A002264(n+1)` -/
def P7216892329592332047.Spec : Prop :=
  ∀ n, P7216892329592332047.a n = A312909 n

end A312909

/-! ## A312909.P4579307572319943508

`A311257(n)+n-A004396(n)`
-/

namespace A312909.P4579307572319943508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + ((n : ℤ) - A004396 n)

end

end A312909.P4579307572319943508

namespace A312909

/-- `A311257(n)+n-A004396(n)` -/
def P4579307572319943508.Spec : Prop :=
  ∀ n, P4579307572319943508.a n = A312909 n

end A312909

/-! ## A312909.P6628228007956406657

`A008486(n)+A311257(n)-A008576(n)`
-/

namespace A312909.P6628228007956406657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A311257 n - A008576 n)

end

end A312909.P6628228007956406657

namespace A312909

/-- `A008486(n)+A311257(n)-A008576(n)` -/
def P6628228007956406657.Spec : Prop :=
  ∀ n, P6628228007956406657.a n = A312909 n

end A312909

/-! ## A312909.P962123023051635092

`A004396(A005843(n))-(n-A311257(n))`
-/

namespace A312909.P962123023051635092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 n).toNat - ((n : ℤ) - A311257 n)

end

end A312909.P962123023051635092

namespace A312909

/-- `A004396(A005843(n))-(n-A311257(n))` -/
def P962123023051635092.Spec : Prop :=
  ∀ n, P962123023051635092.a n = A312909 n

end A312909

/-! ## A312909.P9847627865751640322

`A314688(n)-A134667(n)`
-/

namespace A312909.P9847627865751640322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A134667 n

end

end A312909.P9847627865751640322

namespace A312909

/-- `A314688(n)-A134667(n)` -/
def P9847627865751640322.Spec : Prop :=
  ∀ n, P9847627865751640322.a n = A312909 n

end A312909

/-! ## A312909.P15644405180396116240

`A314688(n)-A128834(A128834(n)+n)`
-/

namespace A312909.P15644405180396116240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n - A128834 (A128834 n + (n : ℤ)).toNat

end

end A312909.P15644405180396116240

namespace A312909

/-- `A314688(n)-A128834(A128834(n)+n)` -/
def P15644405180396116240.Spec : Prop :=
  ∀ n, P15644405180396116240.a n = A312909 n

end A312909

/-! ## A312909.P3132171573681205781

`A312123(n)+A128834(n-A128834(n))`
-/

namespace A312909.P3132171573681205781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + A128834 ((n : ℤ) - A128834 n).toNat

end

end A312909.P3132171573681205781

namespace A312909

/-- `A312123(n)+A128834(n-A128834(n))` -/
def P3132171573681205781.Spec : Prop :=
  ∀ n, P3132171573681205781.a n = A312909 n

end A312909

/-! ## A312909.P12582002949610206392

`A004525(n)+A313057(n)-A004396(n)`
-/

namespace A312909.P12582002949610206392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313057 n - A004396 n)

end

end A312909.P12582002949610206392

namespace A312909

/-- `A004525(n)+A313057(n)-A004396(n)` -/
def P12582002949610206392.Spec : Prop :=
  ∀ n, P12582002949610206392.a n = A312909 n

end A312909

/-! ## A312909.P8079880750250853499

`A310444(n)-∑[char[or(2, n)]]`
-/

namespace A312909.P8079880750250853499
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A312909.P8079880750250853499

namespace A312909

/-- `A310444(n)-∑[char[or(2, n)]]` -/
def P8079880750250853499.Spec : Prop :=
  ∀ n, P8079880750250853499.a n = A312909 n

end A312909

/-! ## A312909.P17982775140444485705

`A310444(n)-∑[A021913(n)]`
-/

namespace A312909.P17982775140444485705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312909.P17982775140444485705

namespace A312909

/-- `A310444(n)-∑[A021913(n)]` -/
def P17982775140444485705.Spec : Prop :=
  ∀ n, P17982775140444485705.a n = A312909 n

end A312909

/-! ## A312909.P12585832981624080999

`A310444(n)-Δ[A011848(n)]`
-/

namespace A312909.P12585832981624080999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310444 n - (f1 (n + 1) - f1 n)

end

end A312909.P12585832981624080999

namespace A312909

/-- `A310444(n)-Δ[A011848(n)]` -/
def P12585832981624080999.Spec : Prop :=
  ∀ n, P12585832981624080999.a n = A312909 n

end A312909

/-! ## A312909.P10514241032150386175

`A313747(n)-A004396(n)`
-/

namespace A312909.P10514241032150386175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313747 n - A004396 n

end

end A312909.P10514241032150386175

namespace A312909

/-- `A313747(n)-A004396(n)` -/
def P10514241032150386175.Spec : Prop :=
  ∀ n, P10514241032150386175.a n = A312909 n

end A312909

/-! ## A312909.P13871656125467433353

`abs(A008592(n)-A315534(n))`
-/

namespace A312909.P13871656125467433353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315534 n|

end

end A312909.P13871656125467433353

namespace A312909

/-- `abs(A008592(n)-A315534(n))` -/
def P13871656125467433353.Spec : Prop :=
  ∀ n, P13871656125467433353.a n = A312909 n

end A312909

/-! ## A312909.P3733500316342472640

`A008458(n)+A008574(n)-A315534(n)`
-/

namespace A312909.P3733500316342472640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315534 n)

end

end A312909.P3733500316342472640

namespace A312909

/-- `A008458(n)+A008574(n)-A315534(n)` -/
def P3733500316342472640.Spec : Prop :=
  ∀ n, P3733500316342472640.a n = A312909 n

end A312909

/-! ## A312909.P3178755100136233027

`A315335(n)-A064429(n)`
-/

namespace A312909.P3178755100136233027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - A064429 n

end

end A312909.P3178755100136233027

namespace A312909

/-- `A315335(n)-A064429(n)` -/
def P3178755100136233027.Spec : Prop :=
  ∀ n, P3178755100136233027.a n = A312909 n

end A312909

/-! ## A312909.P17977191698902906011

`A315549(n)-2*A004396(n)`
-/

namespace A312909.P17977191698902906011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - 2 * A004396 n

end

end A312909.P17977191698902906011

namespace A312909

/-- `A315549(n)-2*A004396(n)` -/
def P17977191698902906011.Spec : Prop :=
  ∀ n, P17977191698902906011.a n = A312909 n

end A312909

/-! ## A312909.P6157642974720782617

`A004525(A310405(n))+2*n`
-/

namespace A312909.P6157642974720782617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310405 n).toNat + (2 * n : ℤ)

end

end A312909.P6157642974720782617

namespace A312909

/-- `A004525(A310405(n))+2*n` -/
def P6157642974720782617.Spec : Prop :=
  ∀ n, P6157642974720782617.a n = A312909 n

end A312909

/-! ## A312909.P1761662642610312090

`A313126(n)-∑[A021913(A313126(n))]`
-/

namespace A312909.P1761662642610312090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A313126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313126 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312909.P1761662642610312090

namespace A312909

/-- `A313126(n)-∑[A021913(A313126(n))]` -/
def P1761662642610312090.Spec : Prop :=
  ∀ n, P1761662642610312090.a n = A312909 n

end A312909

/-! ## A312909.P6270849296673949867

`A004525(A313280(2*n)-n)`
-/

namespace A312909.P6270849296673949867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313280 (2 * n) - (n : ℤ)).toNat

end

end A312909.P6270849296673949867

namespace A312909

/-- `A004525(A313280(2*n)-n)` -/
def P6270849296673949867.Spec : Prop :=
  ∀ n, P6270849296673949867.a n = A312909 n

end A312909

/-!
# A312910: Coordination sequence Gal.6.514.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312910, there is no canonical definition to state claims against.
-/

/-! ## A312910.P11126043698401104766

`or(A080224(A221688(n+1)), A312907(n))`
-/

namespace A312910.P11126043698401104766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080224 (A221688 (n + 1)).toNat) (A312907 n)

end

end A312910.P11126043698401104766

/-! ## A312910.P504453652577547061

`or(A268833(A148116(n)), A311861(n))`
-/

namespace A312910.P504453652577547061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268833 (A148116 n).toNat) (A311861 n)

end

end A312910.P504453652577547061

/-! ## A312910.P16835767002631399300

`or(A311924(n), A318973(A026769(2*(n+1))))`
-/

namespace A312910.P16835767002631399300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A311924 n) (A318973 (A026769 (2 * (n + 1))).toNat)

end

end A312910.P16835767002631399300

/-! ## A312910.P9903089280202159041

`or(A001222(A008932(n)), A311260(n))`
-/

namespace A312910.P9903089280202159041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A008932 n).toNat) (A311260 n)

end

end A312910.P9903089280202159041

/-! ## A312910.P8027975987799008914

`or(A299757(A081123(n)), A325367(3*n+1))`
-/

namespace A312910.P8027975987799008914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A299757 (A081123 n).toNat) (A325367 (3 * n + 1))

end

end A312910.P8027975987799008914

/-!
# A312911: Coordination sequence Gal.5.206.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312911, there is no canonical definition to state claims against.
-/

/-! ## A312911.P1154509166188809460

`A311548(n)+A086077(A001906(n))`
-/

namespace A312911.P1154509166188809460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311548 n + A086077 (A001906 n).toNat

end

end A312911.P1154509166188809460

/-! ## A312911.P1482392508901012629

`A312908(n)+A064911(A082938(n))`
-/

namespace A312911.P1482392508901012629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + A064911 (A082938 n).toNat

end

end A312911.P1482392508901012629

/-! ## A312911.P10182589414094967846

`A311344(A062399(n))+A259361(n)`
-/

namespace A312911.P10182589414094967846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311344 (A062399 n).toNat + A259361 n

end

end A312911.P10182589414094967846

/-! ## A312911.P15954712253857953764

`or(A021913(A006882(n)), A311548(n))`
-/

namespace A312911.P15954712253857953764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A021913 (A006882 n).toNat) (A311548 n)

end

end A312911.P15954712253857953764

/-! ## A312911.P8368107953999629258

`A035487(n+1)-A010872(A208235(n+1))`
-/

namespace A312911.P8368107953999629258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035487 (n + 1) - A010872 (A208235 (n + 1)).toNat

end

end A312911.P8368107953999629258

/-!
# A312912: Coordination sequence Gal.6.267.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312912, there is no canonical definition to state claims against.
-/

/-! ## A312912.P8912025880808652846

`A313081(n)-A051659(A312920(n))`
-/

namespace A312912.P8912025880808652846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313081 n - A051659 (A312920 n).toNat

end

end A312912.P8912025880808652846

/-! ## A312912.P6906821328879664339

`or(A001221(A003510(n)), A311385(n))`
-/

namespace A312912.P6906821328879664339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A003510 n).toNat) (A311385 n)

end

end A312912.P6906821328879664339

/-! ## A312912.P9991304047946898502

`or(A001221(A003510(n)), A312905(n))`
-/

namespace A312912.P9991304047946898502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A003510 n).toNat) (A312905 n)

end

end A312912.P9991304047946898502

/-! ## A312912.P485832860118780878

`or(A196563(A029584(n)), A311385(n))`
-/

namespace A312912.P485832860118780878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A196563 (A029584 n).toNat) (A311385 n)

end

end A312912.P485832860118780878

/-! ## A312912.P12672337836086736923

`xor(A001221(A149274(n)), A311612(n))`
-/

namespace A312912.P12672337836086736923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A149274 n).toNat) (A311612 n)

end

end A312912.P12672337836086736923

/-!
# A312913: Coordination sequence Gal.6.515.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312913, there is no canonical definition to state claims against.
-/

/-! ## A312913.P10313478134312727584

`A311756(n)+A275949(A001002(n))`
-/

namespace A312913.P10313478134312727584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 n + A275949 (A001002 n).toNat

end

end A312913.P10313478134312727584

/-! ## A312913.P15446642201554205661

`A311757(n)+A275949(A001002(n))`
-/

namespace A312913.P15446642201554205661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n + A275949 (A001002 n).toNat

end

end A312913.P15446642201554205661

/-! ## A312913.P9281664663787480150

`A311756(n)+A194923(A104433(n))`
-/

namespace A312913.P9281664663787480150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311756 n + A194923 (A104433 n).toNat

end

end A312913.P9281664663787480150

/-! ## A312913.P11669460031672310264

`A311757(n)+A194923(A104433(n))`
-/

namespace A312913.P11669460031672310264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311757 n + A194923 (A104433 n).toNat

end

end A312913.P11669460031672310264

/-! ## A312913.P131471145231412194

`A312917(n)-A295659(A001287(n))`
-/

namespace A312913.P131471145231412194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312917 n - A295659 (A001287 (n + 10)).toNat

end

end A312913.P131471145231412194

/-!
# A312914: Coordination sequence Gal.5.193.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312914, there is no canonical definition to state claims against.
-/

/-! ## A312914.P18027860444447277917

`(A310391(n)+A301670(n))/2`
-/

namespace A312914.P18027860444447277917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310391 n + A301670 n : ℚ) / 2

end

end A312914.P18027860444447277917

/-! ## A312914.P4996186922086825372

`A312915(n)-A107846(A007283(n))`
-/

namespace A312914.P4996186922086825372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312915 n - A107846 (A007283 n).toNat

end

end A312914.P4996186922086825372

/-! ## A312914.P5587238253370165553

`A312915(n)-A058348(A008292(n+1))`
-/

namespace A312914.P5587238253370165553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312915 n - A058348 (A008292 (n + 1)).toNat

end

end A312914.P5587238253370165553

/-! ## A312914.P18426444883703702370

`A312915(n)-A185284(A000040(n+1))`
-/

namespace A312914.P18426444883703702370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312915 n - A185284 (A000040 (n + 1)).toNat

end

end A312914.P18426444883703702370

/-! ## A312914.P7288528348650159895

`A312915(A062399(n))`
-/

namespace A312914.P7288528348650159895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312915 (A062399 n).toNat

end

end A312914.P7288528348650159895

/-!
# A312915: Coordination sequence Gal.5.191.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312915, there is no canonical definition to state claims against.
-/

/-! ## A312915.P1733607390348908054

`A312914(n)+A107846(A007283(n))`
-/

namespace A312915.P1733607390348908054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312914 n + A107846 (A007283 n).toNat

end

end A312915.P1733607390348908054

/-! ## A312915.P584861987327724392

`A312914(n)+A058348(A008292(n+1))`
-/

namespace A312915.P584861987327724392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312914 n + A058348 (A008292 (n + 1)).toNat

end

end A312915.P584861987327724392

/-! ## A312915.P16322558108017380346

`A312914(n)+A185284(A000040(n+1))`
-/

namespace A312915.P16322558108017380346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312914 n + A185284 (A000040 (n + 1)).toNat

end

end A312915.P16322558108017380346

/-! ## A312915.P1626146136444066245

`A312914(n)+A185284(A139317(n+1))`
-/

namespace A312915.P1626146136444066245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312914 n + A185284 (A139317 (n + 1)).toNat

end

end A312915.P1626146136444066245

/-! ## A312915.P4588934556873442767

`A312914(n)+A107846(A058348(3*n+1))`
-/

namespace A312915.P4588934556873442767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312914 n + A107846 (A058348 (3 * n + 1)).toNat

end

end A312915.P4588934556873442767

/-!
# A312916: Coordination sequence Gal.5.246.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312916, there is no canonical definition to state claims against.
-/

/-! ## A312916.P2160008879868529188

`A125206(n+1)+lt[n, A125209(2*n+5)]`
-/

namespace A312916.P2160008879868529188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125209 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125206 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A312916.P2160008879868529188

/-! ## A312916.P1767050026658258962

`A312913(n)+A055641(A000110(n))`
-/

namespace A312916.P1767050026658258962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312913 n + A055641 (A000110 n).toNat

end

end A312916.P1767050026658258962

/-! ## A312916.P11611994630364224179

`A003814(n+1)-A151847(A151826(n+2))`
-/

namespace A312916.P11611994630364224179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003814 (n + 1) - A151847 (A151826 (n + 2)).toNat

end

end A312916.P11611994630364224179

/-! ## A312916.P4523571443199829842

`xor(A211111(A279215(n)), A331873(2*n+1))`
-/

namespace A312916.P4523571443199829842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A211111 (A279215 n).toNat) (A331873 (2 * n + 1))

end

end A312916.P4523571443199829842

/-!
# A312917: Coordination sequence Gal.5.197.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312917, there is no canonical definition to state claims against.
-/

/-! ## A312917.P3234884915347166082

`A312913(n)+A295659(A001287(n))`
-/

namespace A312917.P3234884915347166082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312913 n + A295659 (A001287 (n + 10)).toNat

end

end A312917.P3234884915347166082

/-! ## A312917.P9023710411894868142

`A020498(n+1)+A001222(A001692(n))`
-/

namespace A312917.P9023710411894868142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020498 (n + 1) + A001222 (A001692 n).toNat

end

end A312917.P9023710411894868142

/-! ## A312917.P4543352086748615202

`A200567(n+1)+A001222(A001692(n))`
-/

namespace A312917.P4543352086748615202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200567 (n + 1) + A001222 (A001692 n).toNat

end

end A312917.P4543352086748615202

/-!
# A312918: Coordination sequence Gal.5.150.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312918, there is no canonical definition to state claims against.
-/

/-! ## A312918.P8973211639590198787

`∑[dr(A000005(A026674(n+1)))]`
-/

namespace A312918.P8973211639590198787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000005 (A026674 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312918.P8973211639590198787

/-! ## A312918.P5425128466767828709

`∑[dr(A000005(A026676(2*n+1)))]`
-/

namespace A312918.P5425128466767828709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000005 (A026676 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312918.P5425128466767828709

/-! ## A312918.P9863011330871789085

`∑[dr(A000005(A026731(2*n+1)))]`
-/

namespace A312918.P9863011330871789085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000005 (A026731 (2 * n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312918.P9863011330871789085

/-! ## A312918.P11941827915115579182

`∑[dr(A000005(A165407(3*n+2)))]`
-/

namespace A312918.P11941827915115579182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000005 (A165407 (3 * n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312918.P11941827915115579182

/-! ## A312918.P15279519499875397218

`A066207(n+1)+A000120(A114245(n+1))`
-/

namespace A312918.P15279519499875397218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066207 (n + 1) + A000120 (A114245 (n + 1)).toNat

end

end A312918.P15279519499875397218

/-!
# A312919: Coordination sequence Gal.4.109.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312919, there is no canonical definition to state claims against.
-/

/-! ## A312919.P4538247743429946248

`A312886(n)+A280750(A161474(n))`
-/

namespace A312919.P4538247743429946248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312886 n + A280750 (A161474 n).toNat

end

end A312919.P4538247743429946248

/-! ## A312919.P7818150047872669704

`A314011(n)-A105700(A181442(n))`
-/

namespace A312919.P7818150047872669704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314011 n - A105700 (A181442 n).toNat

end

end A312919.P7818150047872669704

/-! ## A312919.P10227536443721850738

`xor(A063863(A242391(n)), A312915(n))`
-/

namespace A312919.P10227536443721850738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063863 (A242391 n).toNat) (A312915 n)

end

end A312919.P10227536443721850738

/-! ## A312919.P4379548054436407856

`eq[A025581(n), A132462(A004524(n))]`
-/

namespace A312919.P4379548054436407856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132462 (A004524 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A312919.P4379548054436407856

/-! ## A312919.P2958876803005133002

`A312886(n)+A226520(A357480(n)+1)`
-/

namespace A312919.P2958876803005133002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312886 n + A226520 (A357480 n + 1).toNat

end

end A312919.P2958876803005133002

/-!
# A312921: Coordination sequence Gal.6.20.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312921, there is no canonical definition to state claims against.
-/

/-! ## A312921.P2942767204505975922

`A312963(n)-A037847(A030238(n))`
-/

namespace A312921.P2942767204505975922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n - A037847 (A030238 n).toNat

end

end A312921.P2942767204505975922

/-! ## A312921.P2855402153952852246

`A310369(n)-A213725(A000244(n))`
-/

namespace A312921.P2855402153952852246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310369 n - A213725 (A000244 n).toNat

end

end A312921.P2855402153952852246

/-! ## A312921.P5525455675139666111

`A311407(n)-A188510(A080144(n))`
-/

namespace A312921.P5525455675139666111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311407 n - A188510 (A080144 n).toNat

end

end A312921.P5525455675139666111

/-! ## A312921.P6778300686515153852

`or(A008574(n), A032741(A047974(n)))`
-/

namespace A312921.P6778300686515153852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A032741 (A047974 n).toNat)

end

end A312921.P6778300686515153852

/-! ## A312921.P8269020016456859149

`or(A102677(A073446(n)), A311145(n))`
-/

namespace A312921.P8269020016456859149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102677 (A073446 n).toNat) (A311145 n)

end

end A312921.P8269020016456859149

/-!
# A312922: Coordination sequence Gal.6.429.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312922, there is no canonical definition to state claims against.
-/

/-! ## A312922.P16906479732188734702

`A312894(n)+A046080(A244455(n+2))`
-/

namespace A312922.P16906479732188734702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312894 n + A046080 (A244455 (n + 2)).toNat

end

end A312922.P16906479732188734702

/-! ## A312922.P16104816459201684013

`∑[A079085(record[A079094(2*n+1)])]`
-/

namespace A312922.P16104816459201684013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079094 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079085 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312922.P16104816459201684013

/-! ## A312922.P16923188038842392963

`A311134(n)+A001221(A149288(n))`
-/

namespace A312922.P16923188038842392963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n + A001221 (A149288 n).toNat

end

end A312922.P16923188038842392963

/-! ## A312922.P4768203006819418379

`A311134(n)+A001221(A149315(n))`
-/

namespace A312922.P4768203006819418379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311134 n + A001221 (A149315 n).toNat

end

end A312922.P4768203006819418379

/-! ## A312922.P12379266951667888372

`A375057(n)+A352513(A000045(n+1))`
-/

namespace A312922.P12379266951667888372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375057 n + A352513 (A000045 (n + 1)).toNat

end

end A312922.P12379266951667888372

/-!
# A312923: Coordination sequence Gal.6.538.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312923, there is no canonical definition to state claims against.
-/

/-! ## A312923.P7951986817427133444

`A005117(3*n+1)-A287170(A000041(3*n))`
-/

namespace A312923.P7951986817427133444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A287170 (A000041 (3 * n)).toNat

end

end A312923.P7951986817427133444

/-! ## A312923.P8540250779480477881

`A250120(n)-A242411(A007956(2*(n+2)))`
-/

namespace A312923.P8540250779480477881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A242411 (A007956 (2 * (n + 2))).toNat

end

end A312923.P8540250779480477881

/-! ## A312923.P16528358455917496767

`A250120(n)-A243055(A007955(2*(n+2)))`
-/

namespace A312923.P16528358455917496767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A243055 (A007955 (2 * (n + 2))).toNat

end

end A312923.P16528358455917496767

/-! ## A312923.P5459851567250156046

`A250120(n)-A355526(A003961(2*(n+2)))`
-/

namespace A312923.P5459851567250156046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A355526 (A003961 (2 * (n + 2))).toNat

end

end A312923.P5459851567250156046

/-!
# A312924: Coordination sequence Gal.6.391.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312924, there is no canonical definition to state claims against.
-/

/-! ## A312924.P7574055907614250982

`A177151(A120226(n+1)+A083030(n+1))`
-/

namespace A312924.P7574055907614250982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A120226 (n + 1) + A083030 (n + 1)).toNat

end

end A312924.P7574055907614250982

/-! ## A312924.P17159815007819715724

`A268375(3*n+1)+A268374(A268403(3*n+4))`
-/

namespace A312924.P17159815007819715724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268375 (3 * n + 1) + A268374 (A268403 (3 * n + 4)).toNat

end

end A312924.P17159815007819715724

/-!
# A312925: Coordination sequence Gal.6.380.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312925, there is no canonical definition to state claims against.
-/

/-! ## A312925.P18139536525134435128

`A080336(eq[A097576(n), A341945(n+2)])`
-/

namespace A312925.P18139536525134435128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341945 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080336 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A312925.P18139536525134435128

/-!
# A312926: Coordination sequence Gal.6.118.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312926, the canonical program `A312926.P704849189180626292` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312926 has offset 0).

The definition of A312926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2462 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312926.P704849189180626292

`A313540(n)-A004525(A004396(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A312926

/-- `A313540(n)-A004525(A004396(n))` -/
def P704849189180626292.Spec : Prop :=
  ∀ n, P704849189180626292.a n = A312926 n

theorem P704849189180626292.correct : P704849189180626292.Spec := by
  intro n
  simp only [A312926]

end A312926

/-! ## A312926.P8590388635188134435

`abs(A008592(n)-(A314841(n)+n))`
-/

namespace A312926.P8590388635188134435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314841 n + (n : ℤ))|

end

end A312926.P8590388635188134435

namespace A312926

/-- `abs(A008592(n)-(A314841(n)+n))` -/
def P8590388635188134435.Spec : Prop :=
  ∀ n, P8590388635188134435.a n = A312926 n

end A312926

/-! ## A312926.P1803792154193947337

`A008458(n)+A008486(n)-A314841(n)`
-/

namespace A312926.P1803792154193947337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314841 n)

end

end A312926.P1803792154193947337

namespace A312926

/-- `A008458(n)+A008486(n)-A314841(n)` -/
def P1803792154193947337.Spec : Prop :=
  ∀ n, P1803792154193947337.a n = A312926 n

end A312926

/-! ## A312926.P2656266508314597861

`A004525(n)+A310452(n)-n`
-/

namespace A312926.P2656266508314597861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310452 n - (n : ℤ))

end

end A312926.P2656266508314597861

namespace A312926

/-- `A004525(n)+A310452(n)-n` -/
def P2656266508314597861.Spec : Prop :=
  ∀ n, P2656266508314597861.a n = A312926 n

end A312926

/-! ## A312926.P13337012411465171341

`A313619(n)-A004525(n)`
-/

namespace A312926.P13337012411465171341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n - A004525 n

end

end A312926.P13337012411465171341

namespace A312926

/-- `A313619(n)-A004525(n)` -/
def P13337012411465171341.Spec : Prop :=
  ∀ n, P13337012411465171341.a n = A312926 n

end A312926

/-! ## A312926.P13630636400936962895

`A313769(n)-A004396(n)`
-/

namespace A312926.P13630636400936962895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313769 n - A004396 n

end

end A312926.P13630636400936962895

namespace A312926

/-- `A313769(n)-A004396(n)` -/
def P13630636400936962895.Spec : Prop :=
  ∀ n, P13630636400936962895.a n = A312926 n

end A312926

/-! ## A312926.P12396281259897177363

`A313872(n)-A004525(A004396(n)+n)`
-/

namespace A312926.P12396281259897177363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A004525 (A004396 n + (n : ℤ)).toNat

end

end A312926.P12396281259897177363

namespace A312926

/-- `A313872(n)-A004525(A004396(n)+n)` -/
def P12396281259897177363.Spec : Prop :=
  ∀ n, P12396281259897177363.a n = A312926 n

end A312926

/-! ## A312926.P15350205159030664231

`A315641(n)-(A128834(n)+n)`
-/

namespace A312926.P15350205159030664231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315641 n - (A128834 n + (n : ℤ))

end

end A312926.P15350205159030664231

namespace A312926

/-- `A315641(n)-(A128834(n)+n)` -/
def P15350205159030664231.Spec : Prop :=
  ∀ n, P15350205159030664231.a n = A312926 n

end A312926

/-! ## A312926.P2192734168880175851

`A314144(n)-n`
-/

namespace A312926.P2192734168880175851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - (n : ℤ)

end

end A312926.P2192734168880175851

namespace A312926

/-- `A314144(n)-n` -/
def P2192734168880175851.Spec : Prop :=
  ∀ n, P2192734168880175851.a n = A312926 n

end A312926

/-! ## A312926.P5480930720201845557

`A314216(n)-(Δ[A011865(n)]+n)`
-/

namespace A312926.P5480930720201845557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A312926.P5480930720201845557

namespace A312926

/-- `A314216(n)-(Δ[A011865(n)]+n)` -/
def P5480930720201845557.Spec : Prop :=
  ∀ n, P5480930720201845557.a n = A312926 n

end A312926

/-! ## A312926.P13694309960008724494

`A004396(2*n)+A004396(A314884(n))`
-/

namespace A312926.P13694309960008724494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A314884 n).toNat

end

end A312926.P13694309960008724494

namespace A312926

/-- `A004396(2*n)+A004396(A314884(n))` -/
def P13694309960008724494.Spec : Prop :=
  ∀ n, P13694309960008724494.a n = A312926 n

end A312926

/-! ## A312926.P6779581974689388936

`A315700(n)-A047424(n+1)`
-/

namespace A312926.P6779581974689388936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A047424 (n + 1)

end

end A312926.P6779581974689388936

namespace A312926

/-- `A315700(n)-A047424(n+1)` -/
def P6779581974689388936.Spec : Prop :=
  ∀ n, P6779581974689388936.a n = A312926 n

end A312926

/-! ## A312926.P1548265194860275765

`A315700(n)-(A004525(A004396(n))+n)`
-/

namespace A312926.P1548265194860275765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - (A004525 (A004396 n).toNat + (n : ℤ))

end

end A312926.P1548265194860275765

namespace A312926

/-- `A315700(n)-(A004525(A004396(n))+n)` -/
def P1548265194860275765.Spec : Prop :=
  ∀ n, P1548265194860275765.a n = A312926 n

end A312926

/-! ## A312926.P789456392500642974

`A004525(A313136(n))+2*n`
-/

namespace A312926.P789456392500642974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313136 n).toNat + (2 * n : ℤ)

end

end A312926.P789456392500642974

namespace A312926

/-- `A004525(A313136(n))+2*n` -/
def P789456392500642974.Spec : Prop :=
  ∀ n, P789456392500642974.a n = A312926 n

end A312926

/-! ## A312926.P10508719882844805350

`A004525(A313228(n))+2*n`
-/

namespace A312926.P10508719882844805350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313228 n).toNat + (2 * n : ℤ)

end

end A312926.P10508719882844805350

namespace A312926

/-- `A004525(A313228(n))+2*n` -/
def P10508719882844805350.Spec : Prop :=
  ∀ n, P10508719882844805350.a n = A312926 n

end A312926

/-! ## A312926.P9469488597617635965

`A008458(n)+A008574(n)-A315527(n)`
-/

namespace A312926.P9469488597617635965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315527 n)

end

end A312926.P9469488597617635965

namespace A312926

/-- `A008458(n)+A008574(n)-A315527(n)` -/
def P9469488597617635965.Spec : Prop :=
  ∀ n, P9469488597617635965.a n = A312926 n

end A312926

/-! ## A312926.P2918226640803113676

`A004396(A310470(n))+n`
-/

namespace A312926.P2918226640803113676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310470 n).toNat + (n : ℤ)

end

end A312926.P2918226640803113676

namespace A312926

/-- `A004396(A310470(n))+n` -/
def P2918226640803113676.Spec : Prop :=
  ∀ n, P2918226640803113676.a n = A312926 n

end A312926

/-! ## A312926.P18304031151648461845

`A004396(A313778(n))+n`
-/

namespace A312926.P18304031151648461845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313778 n).toNat + (n : ℤ)

end

end A312926.P18304031151648461845

namespace A312926

/-- `A004396(A313778(n))+n` -/
def P18304031151648461845.Spec : Prop :=
  ∀ n, P18304031151648461845.a n = A312926 n

end A312926

/-! ## A312926.P2369724541544428571

`A004396(n)+A004396(A310373(n)+n)`
-/

namespace A312926.P2369724541544428571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004396 (A310373 n + (n : ℤ)).toNat

end

end A312926.P2369724541544428571

namespace A312926

/-- `A004396(n)+A004396(A310373(n)+n)` -/
def P2369724541544428571.Spec : Prop :=
  ∀ n, P2369724541544428571.a n = A312926 n

end A312926

/-! ## A312926.P2076963788098784663

`A004396(A314236(n)+n)`
-/

namespace A312926.P2076963788098784663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314236 n + (n : ℤ)).toNat

end

end A312926.P2076963788098784663

namespace A312926

/-- `A004396(A314236(n)+n)` -/
def P2076963788098784663.Spec : Prop :=
  ∀ n, P2076963788098784663.a n = A312926 n

end A312926

/-!
# A312927: Coordination sequence Gal.6.149.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312927, the canonical program `A312927.P540762951115705510` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312927 has offset 0).

The definition of A312927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312927.P540762951115705510

`A313045(n)-Δ[A011864(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312927

/-- `A313045(n)-Δ[A011864(n)]` -/
def P540762951115705510.Spec : Prop :=
  ∀ n, P540762951115705510.a n = A312927 n

theorem P540762951115705510.correct : P540762951115705510.Spec := by
  intro n
  simp only [A312927]

end A312927

/-! ## A312927.P17076561691583741272

`(A310408(n)+A008574(n))/2`
-/

namespace A312927.P17076561691583741272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310408 n + A008574 n : ℚ) / 2

end

end A312927.P17076561691583741272

namespace A312927

/-- `(A310408(n)+A008574(n))/2` -/
def P17076561691583741272.Spec : Prop :=
  ∀ n, P17076561691583741272.a n = (A312927 n : ℚ)

end A312927

/-! ## A312927.P7093707724518700120

`abs(A008592(n)-A315526(n))`
-/

namespace A312927.P7093707724518700120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315526 n|

end

end A312927.P7093707724518700120

namespace A312927

/-- `abs(A008592(n)-A315526(n))` -/
def P7093707724518700120.Spec : Prop :=
  ∀ n, P7093707724518700120.a n = A312927 n

end A312927

/-! ## A312927.P328031937583768347

`2*A008706(n)-A315526(n)`
-/

namespace A312927.P328031937583768347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315526 n

end

end A312927.P328031937583768347

namespace A312927

/-- `2*A008706(n)-A315526(n)` -/
def P328031937583768347.Spec : Prop :=
  ∀ n, P328031937583768347.a n = A312927 n

end A312927

/-! ## A312927.P8174132656321887113

`A008458(n)+A008574(n)-A315526(n)`
-/

namespace A312927.P8174132656321887113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315526 n)

end

end A312927.P8174132656321887113

namespace A312927

/-- `A008458(n)+A008574(n)-A315526(n)` -/
def P8174132656321887113.Spec : Prop :=
  ∀ n, P8174132656321887113.a n = A312927 n

end A312927

/-! ## A312927.P17096637810380118723

`A004525(A313229(n))+2*n`
-/

namespace A312927.P17096637810380118723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313229 n).toNat + (2 * n : ℤ)

end

end A312927.P17096637810380118723

namespace A312927

/-- `A004525(A313229(n))+2*n` -/
def P17096637810380118723.Spec : Prop :=
  ∀ n, P17096637810380118723.a n = A312927 n

end A312927

/-! ## A312927.P2670674360712070735

`A004526(A310408(n))+A004277(n)`
-/

namespace A312927.P2670674360712070735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310408 n).toNat + A004277 n

end

end A312927.P2670674360712070735

namespace A312927

/-- `A004526(A310408(n))+A004277(n)` -/
def P2670674360712070735.Spec : Prop :=
  ∀ n, P2670674360712070735.a n = A312927 n

end A312927

/-! ## A312927.P17678831203364404126

`A005843(A008458(n)-n)-A315526(n)`
-/

namespace A312927.P17678831203364404126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315526 n

end

end A312927.P17678831203364404126

namespace A312927

/-- `A005843(A008458(n)-n)-A315526(n)` -/
def P17678831203364404126.Spec : Prop :=
  ∀ n, P17678831203364404126.a n = A312927 n

end A312927

/-! ## A312927.P11051695130725822039

`round(A008458(A313779(n))/7)`
-/

namespace A312927.P11051695130725822039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008458 (A313779 n).toNat : ℚ) / 7)

end

end A312927.P11051695130725822039

namespace A312927

/-- `round(A008458(A313779(n))/7)` -/
def P11051695130725822039.Spec : Prop :=
  ∀ n, P11051695130725822039.a n = A312927 n

end A312927

/-! ## A312927.P16513666853441503315

`A008458(n)+n-A004526(A315312(n))`
-/

namespace A312927.P16513666853441503315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315312 n).toNat)

end

end A312927.P16513666853441503315

namespace A312927

/-- `A008458(n)+n-A004526(A315312(n))` -/
def P16513666853441503315.Spec : Prop :=
  ∀ n, P16513666853441503315.a n = A312927 n

end A312927

/-! ## A312927.P2756383273862844081

`round(A008574(A314149(n))/5)`
-/

namespace A312927.P2756383273862844081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 (A314149 n).toNat : ℚ) / 5)

end

end A312927.P2756383273862844081

namespace A312927

/-- `round(A008574(A314149(n))/5)` -/
def P2756383273862844081.Spec : Prop :=
  ∀ n, P2756383273862844081.a n = A312927 n

end A312927

/-! ## A312927.P8420314052361193675

`A314157(n)-A134119(A314157(n))`
-/

namespace A312927.P8420314052361193675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314157 n - A134119 (A314157 n).toNat

end

end A312927.P8420314052361193675

namespace A312927

/-- `A314157(n)-A134119(A314157(n))` -/
def P8420314052361193675.Spec : Prop :=
  ∀ n, P8420314052361193675.a n = A312927 n

end A312927

/-! ## A312927.P7555107106243016326

`A311434(2*n)-4*n`
-/

namespace A312927.P7555107106243016326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311434 (2 * n) - (4 * n : ℤ)

end

end A312927.P7555107106243016326

namespace A312927

/-- `A311434(2*n)-4*n` -/
def P7555107106243016326.Spec : Prop :=
  ∀ n, P7555107106243016326.a n = A312927 n

end A312927

/-! ## A312927.P13603510760925835290

`A004525(A311481(2*n))`
-/

namespace A312927.P13603510760925835290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311481 (2 * n)).toNat

end

end A312927.P13603510760925835290

namespace A312927

/-- `A004525(A311481(2*n))` -/
def P13603510760925835290.Spec : Prop :=
  ∀ n, P13603510760925835290.a n = A312927 n

end A312927

/-! ## A312927.P5731669747266347829

`A004525(A311523(2*n))`
-/

namespace A312927.P5731669747266347829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311523 (2 * n)).toNat

end

end A312927.P5731669747266347829

namespace A312927

/-- `A004525(A311523(2*n))` -/
def P5731669747266347829.Spec : Prop :=
  ∀ n, P5731669747266347829.a n = A312927 n

end A312927

/-! ## A312927.P8014683407049196010

`A004525(A311593(2*n))`
-/

namespace A312927.P8014683407049196010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311593 (2 * n)).toNat

end

end A312927.P8014683407049196010

namespace A312927

/-- `A004525(A311593(2*n))` -/
def P8014683407049196010.Spec : Prop :=
  ∀ n, P8014683407049196010.a n = A312927 n

end A312927

/-! ## A312927.P6315791509606138800

`2*A008574(2*n)-A315750(2*n)`
-/

namespace A312927.P6315791509606138800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315750 (2 * n)

end

end A312927.P6315791509606138800

namespace A312927

/-- `2*A008574(2*n)-A315750(2*n)` -/
def P6315791509606138800.Spec : Prop :=
  ∀ n, P6315791509606138800.a n = A312927 n

end A312927

/-! ## A312927.P3889430572971387783

`A068962(A313802(2*n))`
-/

namespace A312927.P3889430572971387783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A313802 (2 * n)).toNat

end

end A312927.P3889430572971387783

namespace A312927

/-- `A068962(A313802(2*n))` -/
def P3889430572971387783.Spec : Prop :=
  ∀ n, P3889430572971387783.a n = A312927 n

end A312927

/-! ## A312927.P10110185781923164776

`A134119(4*A314157(n))`
-/

namespace A312927.P10110185781923164776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (4 * A314157 n).toNat

end

end A312927.P10110185781923164776

namespace A312927

/-- `A134119(4*A314157(n))` -/
def P10110185781923164776.Spec : Prop :=
  ∀ n, P10110185781923164776.a n = A312927 n

end A312927

/-! ## A312927.P9370462138169416830

`A313560(A008458(n))-A008574(A008458(n))`
-/

namespace A312927.P9370462138169416830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 (A008458 n).toNat - A008574 (A008458 n).toNat

end

end A312927.P9370462138169416830

namespace A312927

/-- `A313560(A008458(n))-A008574(A008458(n))` -/
def P9370462138169416830.Spec : Prop :=
  ∀ n, P9370462138169416830.a n = A312927 n

end A312927

/-!
# A312928: Coordination sequence Gal.3.16.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312928, the canonical program `A312928.P657395255871882406` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312928 has offset 0).

The definition of A312928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312928.P657395255871882406

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13, a(4)=18, a(5)=22, a(6)=26`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A312928

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P657395255871882406.Spec : Prop :=
  ∀ n, P657395255871882406.a n = A312928 n

theorem P657395255871882406.correct : P657395255871882406.Spec := by
  intro n
  simp only [A312928]

end A312928

/-! ## A312928.P6941310670126992060

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=3, a(2)=5, a(3)=4, a(4)=5, a(5)=4, a(6)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A312928.P6941310670126992060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5, 4, 5, 4, 4] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312928.P6941310670126992060

namespace A312928

/-- `∑[floor(a(n-5))]` -/
def P6941310670126992060.Spec : Prop :=
  ∀ n, (P6941310670126992060.a n : ℤ) = A312928 n

end A312928

/-! ## A312928.P11607035563775475636

`round(A008574(n)+2*n/5)`
-/

namespace A312928.P11607035563775475636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008574 n : ℚ) + 2 * ((n : ℚ) / 5))

end

end A312928.P11607035563775475636

namespace A312928

/-- `round(A008574(n)+2*n/5)` -/
def P11607035563775475636.Spec : Prop :=
  ∀ n, P11607035563775475636.a n = A312928 n

end A312928

/-! ## A312928.P6051944835801055526

`A008486(n)+round(7*n/5)`
-/

namespace A312928.P6051944835801055526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + SequenceMachineLib.roundAway (7 * ((n : ℚ) / 5))

end

end A312928.P6051944835801055526

namespace A312928

/-- `A008486(n)+round(7*n/5)` -/
def P6051944835801055526.Spec : Prop :=
  ∀ n, P6051944835801055526.a n = A312928 n

end A312928

/-! ## A312928.P10883541574818859003

`A008458(n)-round(8*n/5)`
-/

namespace A312928.P10883541574818859003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - SequenceMachineLib.roundAway (8 * ((n : ℚ) / 5))

end

end A312928.P10883541574818859003

namespace A312928

/-- `A008458(n)-round(8*n/5)` -/
def P10883541574818859003.Spec : Prop :=
  ∀ n, P10883541574818859003.a n = A312928 n

end A312928

/-! ## A312928.P594673126002700443

`A008574(n)+Δ[A011858(n)]`
-/

namespace A312928.P594673126002700443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n)

end

end A312928.P594673126002700443

namespace A312928

/-- `A008574(n)+Δ[A011858(n)]` -/
def P594673126002700443.Spec : Prop :=
  ∀ n, P594673126002700443.a n = A312928 n

end A312928

/-! ## A312928.P14101886666142593065

`A047299(n+1)+A008486(n)`
-/

namespace A312928.P14101886666142593065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + A008486 n

end

end A312928.P14101886666142593065

namespace A312928

/-- `A047299(n+1)+A008486(n)` -/
def P14101886666142593065.Spec : Prop :=
  ∀ n, P14101886666142593065.a n = A312928 n

end A312928

/-! ## A312928.P17215010088096463803

`A271114(n)-A047516(n+1)`
-/

namespace A312928.P17215010088096463803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A047516 (n + 1)

end

end A312928.P17215010088096463803

namespace A312928

/-- `A271114(n)-A047516(n+1)` -/
def P17215010088096463803.Spec : Prop :=
  ∀ n, P17215010088096463803.a n = A312928 n

end A312928

/-! ## A312928.P15995521679919833214

`A315707(n)-A047363(n+1)`
-/

namespace A312928.P15995521679919833214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315707 n - A047363 (n + 1)

end

end A312928.P15995521679919833214

namespace A312928

/-- `A315707(n)-A047363(n+1)` -/
def P15995521679919833214.Spec : Prop :=
  ∀ n, P15995521679919833214.a n = A312928 n

end A312928

/-! ## A312928.P11545069047870637919

`A008706(n)+Δ[A011858(n)]-n`
-/

namespace A312928.P11545069047870637919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n - (n : ℤ))

end

end A312928.P11545069047870637919

namespace A312928

/-- `A008706(n)+Δ[A011858(n)]-n` -/
def P11545069047870637919.Spec : Prop :=
  ∀ n, P11545069047870637919.a n = A312928 n

end A312928

/-! ## A312928.P6670831618214869813

`A047299(n+1)+A004277(n)+n`
-/

namespace A312928.P6670831618214869813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A004277 n + (n : ℤ))

end

end A312928.P6670831618214869813

namespace A312928

/-- `A047299(n+1)+A004277(n)+n` -/
def P6670831618214869813.Spec : Prop :=
  ∀ n, P6670831618214869813.a n = A312928 n

end A312928

/-! ## A312928.P13928084325911362800

`A047299(n+1)+A008574(n)-n`
-/

namespace A312928.P13928084325911362800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A008574 n - (n : ℤ))

end

end A312928.P13928084325911362800

namespace A312928

/-- `A047299(n+1)+A008574(n)-n` -/
def P13928084325911362800.Spec : Prop :=
  ∀ n, P13928084325911362800.a n = A312928 n

end A312928

/-! ## A312928.P6902531995893300720

`A057354(n+1)+A008574(n)`
-/

namespace A312928.P6902531995893300720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + A008574 n

end

end A312928.P6902531995893300720

namespace A312928

/-- `A057354(n+1)+A008574(n)` -/
def P6902531995893300720.Spec : Prop :=
  ∀ n, P6902531995893300720.a n = A312928 n

end A312928

/-! ## A312928.P7092946873183757038

`A057354(n+1)+A004277(2*n)`
-/

namespace A312928.P7092946873183757038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + A004277 (2 * n)

end

end A312928.P7092946873183757038

namespace A312928

/-- `A057354(n+1)+A004277(2*n)` -/
def P7092946873183757038.Spec : Prop :=
  ∀ n, P7092946873183757038.a n = A312928 n

end A312928

/-! ## A312928.P14706547804654350923

`A134119(2*n)+A008574(n)`
-/

namespace A312928.P14706547804654350923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (2 * n) + A008574 n

end

end A312928.P14706547804654350923

namespace A312928

/-- `A134119(2*n)+A008574(n)` -/
def P14706547804654350923.Spec : Prop :=
  ∀ n, P14706547804654350923.a n = A312928 n

end A312928

/-! ## A312928.P9725851686514882406

`A047263(2*n+1)+A004277(n)`
-/

namespace A312928.P9725851686514882406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + A004277 n

end

end A312928.P9725851686514882406

namespace A312928

/-- `A047263(2*n+1)+A004277(n)` -/
def P9725851686514882406.Spec : Prop :=
  ∀ n, P9725851686514882406.a n = A312928 n

end A312928

/-! ## A312928.P11593335960521407440

`A134119(2*n)+A004277(2*n)`
-/

namespace A312928.P11593335960521407440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (2 * n) + A004277 (2 * n)

end

end A312928.P11593335960521407440

namespace A312928

/-- `A134119(2*n)+A004277(2*n)` -/
def P11593335960521407440.Spec : Prop :=
  ∀ n, P11593335960521407440.a n = A312928 n

end A312928

/-! ## A312928.P4920914787214046785

`A047263(2*n+1)+A004275(n+1)`
-/

namespace A312928.P4920914787214046785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + A004275 (n + 1)

end

end A312928.P4920914787214046785

namespace A312928

/-- `A047263(2*n+1)+A004275(n+1)` -/
def P4920914787214046785.Spec : Prop :=
  ∀ n, P4920914787214046785.a n = A312928 n

end A312928

/-! ## A312928.P4025960805073314270

`A057354(n+1)+A004275(2*n+1)`
-/

namespace A312928.P4025960805073314270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + A004275 (2 * n + 1)

end

end A312928.P4025960805073314270

namespace A312928

/-- `A057354(n+1)+A004275(2*n+1)` -/
def P4025960805073314270.Spec : Prop :=
  ∀ n, P4025960805073314270.a n = A312928 n

end A312928

/-! ## A312928.P444601363951987619

`A047263(2*n+1)+A028310(2*n)`
-/

namespace A312928.P444601363951987619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + A028310 (2 * n)

end

end A312928.P444601363951987619

namespace A312928

/-- `A047263(2*n+1)+A028310(2*n)` -/
def P444601363951987619.Spec : Prop :=
  ∀ n, P444601363951987619.a n = A312928 n

end A312928

/-!
# A312929: Coordination sequence Gal.6.550.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312929, there is no canonical definition to state claims against.
-/

/-! ## A312929.P6353419579341255882

`A311933(n)+A055029(A186526(n))`
-/

namespace A312929.P6353419579341255882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311933 n + A055029 (A186526 n).toNat

end

end A312929.P6353419579341255882

/-! ## A312929.P9744554516095248966

`A311933(n)+A262988(A002445(n))`
-/

namespace A312929.P9744554516095248966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311933 n + A262988 (A002445 n).toNat

end

end A312929.P9744554516095248966

/-! ## A312929.P14273393740953802733

`A311461(n)+A188973(A121285(n))`
-/

namespace A312929.P14273393740953802733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311461 n + A188973 (A121285 n).toNat

end

end A312929.P14273393740953802733

/-! ## A312929.P5160466864097156612

`A301672(n)+A048881(A331022(n))`
-/

namespace A312929.P5160466864097156612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + A048881 (A331022 n).toNat

end

end A312929.P5160466864097156612

/-!
# A312930: Coordination sequence Gal.5.190.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312930, the canonical program `A312930.P2955828828530391935` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312930 has offset 0).

The definition of A312930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312930.P2955828828530391935

`A313045(n)-A254011(A004280(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312930

/-- `A313045(n)-A254011(A004280(n+1))` -/
def P2955828828530391935.Spec : Prop :=
  ∀ n, P2955828828530391935.a n = A312930 n

theorem P2955828828530391935.correct : P2955828828530391935.Spec := by
  intro n
  simp only [A312930]

end A312930

/-! ## A312930.P2814848989334473544

`A301301(n)+A287520(A107597(n))`
-/

namespace A312930.P2814848989334473544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A287520 (A107597 n).toNat

end

end A312930.P2814848989334473544

namespace A312930

/-- `A301301(n)+A287520(A107597(n))` -/
def P2814848989334473544.Spec : Prop :=
  ∀ n, P2814848989334473544.a n = A312930 n

end A312930

/-! ## A312930.P6307793910881382084

`A301293(n)-A268643(A006451(n))`
-/

namespace A312930.P6307793910881382084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n - A268643 (A006451 n).toNat

end

end A312930.P6307793910881382084

namespace A312930

/-- `A301293(n)-A268643(A006451(n))` -/
def P6307793910881382084.Spec : Prop :=
  ∀ n, P6307793910881382084.a n = A312930 n

end A312930

/-! ## A312930.P8712312090090367066

`A312922(n)+A288216(A006414(n))`
-/

namespace A312930.P8712312090090367066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312922 n + A288216 (A006414 n).toNat

end

end A312930.P8712312090090367066

namespace A312930

/-- `A312922(n)+A288216(A006414(n))` -/
def P8712312090090367066.Spec : Prop :=
  ∀ n, P8712312090090367066.a n = A312930 n

end A312930

/-! ## A312930.P8291918479273080545

`A301298(n)%A220857(n+1)-A143619(n+3)`
-/

namespace A312930.P8291918479273080545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A301298 n) (A220857 (n + 1)) - A143619 (n + 3)

end

end A312930.P8291918479273080545

namespace A312930

/-- `A301298(n)%A220857(n+1)-A143619(n+3)` -/
def P8291918479273080545.Spec : Prop :=
  ∀ n, P8291918479273080545.a n = A312930 n

end A312930

/-!
# A312932: Coordination sequence Gal.5.81.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312932, the canonical program `A312932.P265636690513476108` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312932 has offset 0).

The definition of A312932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312932.P265636690513476108

`round(A008574(n)/(1-1/10))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312932

/-- `round(A008574(n)/(1-1/10))` -/
def P265636690513476108.Spec : Prop :=
  ∀ n, P265636690513476108.a n = A312932 n

theorem P265636690513476108.correct : P265636690513476108.Spec := by
  intro n
  simp only [A312932]

end A312932

/-! ## A312932.P17733093857854487338

`A008706(n)-∑[A113217(n)]`
-/

namespace A312932.P17733093857854487338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312932.P17733093857854487338

namespace A312932

/-- `A008706(n)-∑[A113217(n)]` -/
def P17733093857854487338.Spec : Prop :=
  ∀ n, P17733093857854487338.a n = A312932 n

end A312932

/-! ## A312932.P17334946517157107676

`round((A219529(n)+A022144(n))/3)`
-/

namespace A312932.P17334946517157107676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A219529 n + A022144 n : ℚ) / 3)

end

end A312932.P17334946517157107676

namespace A312932

/-- `round((A219529(n)+A022144(n))/3)` -/
def P17334946517157107676.Spec : Prop :=
  ∀ n, P17334946517157107676.a n = A312932 n

end A312932

/-! ## A312932.P2336389665657078059

`A042965(A042965(n+1)+1)+A008576(n)`
-/

namespace A312932.P2336389665657078059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A042965 (n + 1) + 1).toNat + A008576 n

end

end A312932.P2336389665657078059

namespace A312932

/-- `A042965(A042965(n+1)+1)+A008576(n)` -/
def P2336389665657078059.Spec : Prop :=
  ∀ n, P2336389665657078059.a n = A312932 n

end A312932

/-! ## A312932.P10851121387395568883

`A219529(n)-A004396(A004396(2*n))`
-/

namespace A312932.P10851121387395568883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A004396 (A004396 (2 * n)).toNat

end

end A312932.P10851121387395568883

namespace A312932

/-- `A219529(n)-A004396(A004396(2*n))` -/
def P10851121387395568883.Spec : Prop :=
  ∀ n, P10851121387395568883.a n = A312932 n

end A312932

/-! ## A312932.P13524119372888439565

`record[A280166(n)+Δ[A011862(n)]]`
-/

namespace A312932.P13524119372888439565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280166 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312932.P13524119372888439565

namespace A312932

/-- `record[A280166(n)+Δ[A011862(n)]]` -/
def P13524119372888439565.Spec : Prop :=
  ∀ n, P13524119372888439565.a n = A312932 n

end A312932

/-! ## A312932.P5120990819883970089

`A265187(2*n+1)+A004277(n)`
-/

namespace A312932.P5120990819883970089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (2 * n + 1) + A004277 n

end

end A312932.P5120990819883970089

namespace A312932

/-- `A265187(2*n+1)+A004277(n)` -/
def P5120990819883970089.Spec : Prop :=
  ∀ n, P5120990819883970089.a n = A312932 n

end A312932

/-! ## A312932.P630833374415863859

`A265187(2*n+1)+A004275(n+1)`
-/

namespace A312932.P630833374415863859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (2 * n + 1) + A004275 (n + 1)

end

end A312932.P630833374415863859

namespace A312932

/-- `A265187(2*n+1)+A004275(n+1)` -/
def P630833374415863859.Spec : Prop :=
  ∀ n, P630833374415863859.a n = A312932 n

end A312932

/-! ## A312932.P8491073221857023562

`A265187(2*n+1)+A294732(2*(n+1))-n`
-/

namespace A312932.P8491073221857023562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (2 * n + 1) + (A294732 (2 * (n + 1)) - (n : ℤ))

end

end A312932.P8491073221857023562

namespace A312932

/-- `A265187(2*n+1)+A294732(2*(n+1))-n` -/
def P8491073221857023562.Spec : Prop :=
  ∀ n, P8491073221857023562.a n = A312932 n

end A312932

/-! ## A312932.P4486740211663699827

`A008576(2*n)-A004396(A004396(2*n))`
-/

namespace A312932.P4486740211663699827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A004396 (A004396 (2 * n)).toNat

end

end A312932.P4486740211663699827

namespace A312932

/-- `A008576(2*n)-A004396(A004396(2*n))` -/
def P4486740211663699827.Spec : Prop :=
  ∀ n, P4486740211663699827.a n = A312932 n

end A312932

/-! ## A312932.P474795418076885976

`A313100(n)-Δ[A011862(n)]`
-/

namespace A312932.P474795418076885976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n - (f1 (n + 1) - f1 n)

end

end A312932.P474795418076885976

namespace A312932

/-- `A313100(n)-Δ[A011862(n)]` -/
def P474795418076885976.Spec : Prop :=
  ∀ n, P474795418076885976.a n = A312932 n

end A312932

/-! ## A312932.P706744333263151112

`A004396(A004396(n))+A313100(n)-A004396(n)`
-/

namespace A312932.P706744333263151112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313100 n - A004396 n)

end

end A312932.P706744333263151112

namespace A312932

/-- `A004396(A004396(n))+A313100(n)-A004396(n)` -/
def P706744333263151112.Spec : Prop :=
  ∀ n, P706744333263151112.a n = A312932 n

end A312932

/-! ## A312932.P11246003150254414563

`A313241(n)-Δ[2*A011862(n)]`
-/

namespace A312932.P11246003150254414563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n - (f1 (n + 1) - f1 n)

end

end A312932.P11246003150254414563

namespace A312932

/-- `A313241(n)-Δ[2*A011862(n)]` -/
def P11246003150254414563.Spec : Prop :=
  ∀ n, P11246003150254414563.a n = A312932 n

end A312932

/-! ## A312932.P17466181196984605306

`(A310412(n)+A008574(n))/2`
-/

namespace A312932.P17466181196984605306
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310412 n + A008574 n : ℚ) / 2

end

end A312932.P17466181196984605306

namespace A312932

/-- `(A310412(n)+A008574(n))/2` -/
def P17466181196984605306.Spec : Prop :=
  ∀ n, P17466181196984605306.a n = (A312932 n : ℚ)

end A312932

/-! ## A312932.P15955937360582959176

`A313773(n)-A004396(n)`
-/

namespace A312932.P15955937360582959176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 n - A004396 n

end

end A312932.P15955937360582959176

namespace A312932

/-- `A313773(n)-A004396(n)` -/
def P15955937360582959176.Spec : Prop :=
  ∀ n, P15955937360582959176.a n = A312932 n

end A312932

/-! ## A312932.P16108212576001528500

`A313909(n)-A004396(2*A004396(n))`
-/

namespace A312932.P16108212576001528500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n - A004396 (2 * A004396 n).toNat

end

end A312932.P16108212576001528500

namespace A312932

/-- `A313909(n)-A004396(2*A004396(n))` -/
def P16108212576001528500.Spec : Prop :=
  ∀ n, P16108212576001528500.a n = A312932 n

end A312932

/-! ## A312932.P3756995073177338972

`A004396(2*n)+A004396(A313100(n))`
-/

namespace A312932.P3756995073177338972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A313100 n).toNat

end

end A312932.P3756995073177338972

namespace A312932

/-- `A004396(2*n)+A004396(A313100(n))` -/
def P3756995073177338972.Spec : Prop :=
  ∀ n, P3756995073177338972.a n = A312932 n

end A312932

/-! ## A312932.P15592929622629854675

`A042965(n+1)+A004396(A301298(n))`
-/

namespace A312932.P15592929622629854675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + A004396 (A301298 n).toNat

end

end A312932.P15592929622629854675

namespace A312932

/-- `A042965(n+1)+A004396(A301298(n))` -/
def P15592929622629854675.Spec : Prop :=
  ∀ n, P15592929622629854675.a n = A312932 n

end A312932

/-! ## A312932.P9879179224447052475

`A004396(2*n)+A004396(A301298(n))`
-/

namespace A312932.P9879179224447052475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * n) + A004396 (A301298 n).toNat

end

end A312932.P9879179224447052475

namespace A312932

/-- `A004396(2*n)+A004396(A301298(n))` -/
def P9879179224447052475.Spec : Prop :=
  ∀ n, P9879179224447052475.a n = A312932 n

end A312932

/-! ## A312932.P12774678395901346815

`A004525(A310454(n))+2*n`
-/

namespace A312932.P12774678395901346815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310454 n).toNat + (2 * n : ℤ)

end

end A312932.P12774678395901346815

namespace A312932

/-- `A004525(A310454(n))+2*n` -/
def P12774678395901346815.Spec : Prop :=
  ∀ n, P12774678395901346815.a n = A312932 n

end A312932

/-!
# A312933: Coordination sequence Gal.6.131.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312933, the canonical program `A312933.P2044792691388858937` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312933 has offset 0).

The definition of A312933 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312933.P2044792691388858937

`2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13, a(4)=18, a(5)=22, a(6)=27, a(7)=32, a(8)=36`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A312933

/-- `2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P2044792691388858937.Spec : Prop :=
  ∀ n, P2044792691388858937.a n = A312933 n

theorem P2044792691388858937.correct : P2044792691388858937.Spec := by
  intro n
  simp only [A312933]

end A312933

/-! ## A312933.P10771195540679568933

`A313774(n)-A004396(n)`
-/

namespace A312933.P10771195540679568933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313774 n - A004396 n

end

end A312933.P10771195540679568933

namespace A312933

/-- `A313774(n)-A004396(n)` -/
def P10771195540679568933.Spec : Prop :=
  ∀ n, P10771195540679568933.a n = A312933 n

end A312933

/-! ## A312933.P6246848902958596839

`A313774(n)-A002264(Δ[n²])`
-/

namespace A312933.P6246848902958596839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313774 n - A002264 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A312933.P6246848902958596839

namespace A312933

/-- `A313774(n)-A002264(Δ[n²])` -/
def P6246848902958596839.Spec : Prop :=
  ∀ n, P6246848902958596839.a n = A312933 n

end A312933

/-! ## A312933.P17600796448375197906

`A004525(n)+A312896(n)-A004396(A004525(n))`
-/

namespace A312933.P17600796448375197906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312896 n - A004396 (A004525 n).toNat)

end

end A312933.P17600796448375197906

namespace A312933

/-- `A004525(n)+A312896(n)-A004396(A004525(n))` -/
def P17600796448375197906.Spec : Prop :=
  ∀ n, P17600796448375197906.a n = A312933 n

end A312933

/-! ## A312933.P16965017539622090825

`A008458(n)+A008486(n)-A314836(n)`
-/

namespace A312933.P16965017539622090825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314836 n)

end

end A312933.P16965017539622090825

namespace A312933

/-- `A008458(n)+A008486(n)-A314836(n)` -/
def P16965017539622090825.Spec : Prop :=
  ∀ n, P16965017539622090825.a n = A312933 n

end A312933

/-! ## A312933.P12649950069339296795

`A313099(n)-A002264(A004525(n+2))`
-/

namespace A312933.P12649950069339296795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313099 n - A002264 (A004525 (n + 2)).toNat

end

end A312933.P12649950069339296795

namespace A312933

/-- `A313099(n)-A002264(A004525(n+2))` -/
def P12649950069339296795.Spec : Prop :=
  ∀ n, P12649950069339296795.a n = A312933 n

end A312933

/-! ## A312933.P827310141319034476

`A310393(n)-A004525(n-A004396(n))`
-/

namespace A312933.P827310141319034476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310393 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A312933.P827310141319034476

namespace A312933

/-- `A310393(n)-A004525(n-A004396(n))` -/
def P827310141319034476.Spec : Prop :=
  ∀ n, P827310141319034476.a n = A312933 n

end A312933

/-! ## A312933.P508817109785539005

`A313546(n)-A004525(A004396(n))`
-/

namespace A312933.P508817109785539005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n - A004525 (A004396 n).toNat

end

end A312933.P508817109785539005

namespace A312933

/-- `A313546(n)-A004525(A004396(n))` -/
def P508817109785539005.Spec : Prop :=
  ∀ n, P508817109785539005.a n = A312933 n

end A312933

/-! ## A312933.P16756271445972523553

`A313569(n)-A004396(A004525(n))`
-/

namespace A312933.P16756271445972523553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n - A004396 (A004525 n).toNat

end

end A312933.P16756271445972523553

namespace A312933

/-- `A313569(n)-A004396(A004525(n))` -/
def P16756271445972523553.Spec : Prop :=
  ∀ n, P16756271445972523553.a n = A312933 n

end A312933

/-! ## A312933.P13377861215305463474

`A310400(n)-A002264(n+1)`
-/

namespace A312933.P13377861215305463474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n - A002264 (n + 1)

end

end A312933.P13377861215305463474

namespace A312933

/-- `A310400(n)-A002264(n+1)` -/
def P13377861215305463474.Spec : Prop :=
  ∀ n, P13377861215305463474.a n = A312933 n

end A312933

/-! ## A312933.P11465172017717961858

`A004396(n)+A310400(n)-n`
-/

namespace A312933.P11465172017717961858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310400 n - (n : ℤ))

end

end A312933.P11465172017717961858

namespace A312933

/-- `A004396(n)+A310400(n)-n` -/
def P11465172017717961858.Spec : Prop :=
  ∀ n, P11465172017717961858.a n = A312933 n

end A312933

/-! ## A312933.P8280309421250285196

`A008576(n)+A310400(n)-A008486(n)`
-/

namespace A312933.P8280309421250285196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310400 n - A008486 n)

end

end A312933.P8280309421250285196

namespace A312933

/-- `A008576(n)+A310400(n)-A008486(n)` -/
def P8280309421250285196.Spec : Prop :=
  ∀ n, P8280309421250285196.a n = A312933 n

end A312933

/-! ## A312933.P3173897908361883042

`A313622(n)-A004525(n)`
-/

namespace A312933.P3173897908361883042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313622 n - A004525 n

end

end A312933.P3173897908361883042

namespace A312933

/-- `A313622(n)-A004525(n)` -/
def P3173897908361883042.Spec : Prop :=
  ∀ n, P3173897908361883042.a n = A312933 n

end A312933

/-! ## A312933.P8008514806306310572

`∑[A021913(n)]+A313622(n)-n`
-/

namespace A312933.P8008514806306310572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313622 n - (n : ℤ))

end

end A312933.P8008514806306310572

namespace A312933

/-- `∑[A021913(n)]+A313622(n)-n` -/
def P8008514806306310572.Spec : Prop :=
  ∀ n, P8008514806306310572.a n = A312933 n

end A312933

/-! ## A312933.P6104279381700235691

`Δ[A011848(n)]+A313622(n)-n`
-/

namespace A312933.P6104279381700235691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313622 n - (n : ℤ))

end

end A312933.P6104279381700235691

namespace A312933

/-- `Δ[A011848(n)]+A313622(n)-n` -/
def P6104279381700235691.Spec : Prop :=
  ∀ n, P6104279381700235691.a n = A312933 n

end A312933

/-! ## A312933.P16329364807366914442

`A004525(A004396(n))+A310472(n)-n`
-/

namespace A312933.P16329364807366914442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A310472 n - (n : ℤ))

end

end A312933.P16329364807366914442

namespace A312933

/-- `A004525(A004396(n))+A310472(n)-n` -/
def P16329364807366914442.Spec : Prop :=
  ∀ n, P16329364807366914442.a n = A312933 n

end A312933

/-! ## A312933.P12929643975733830917

`Δ[A011865(n)]+A314066(n)-n`
-/

namespace A312933.P12929643975733830917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A314066 n - (n : ℤ))

end

end A312933.P12929643975733830917

namespace A312933

/-- `Δ[A011865(n)]+A314066(n)-n` -/
def P12929643975733830917.Spec : Prop :=
  ∀ n, P12929643975733830917.a n = A312933 n

end A312933

/-! ## A312933.P1161938864691084863

`A314151(n)-n`
-/

namespace A312933.P1161938864691084863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - (n : ℤ)

end

end A312933.P1161938864691084863

namespace A312933

/-- `A314151(n)-n` -/
def P1161938864691084863.Spec : Prop :=
  ∀ n, P1161938864691084863.a n = A312933 n

end A312933

/-! ## A312933.P4761735824584409554

`A313879(n)-A004525(A004396(n)+n)`
-/

namespace A312933.P4761735824584409554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313879 n - A004525 (A004396 n + (n : ℤ)).toNat

end

end A312933.P4761735824584409554

namespace A312933

/-- `A313879(n)-A004525(A004396(n)+n)` -/
def P4761735824584409554.Spec : Prop :=
  ∀ n, P4761735824584409554.a n = A312933 n

end A312933

/-! ## A312933.P17498201101862422533

`abs(A008593(n)-(A315522(n)+n))`
-/

namespace A312933.P17498201101862422533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315522 n + (n : ℤ))|

end

end A312933.P17498201101862422533

namespace A312933

/-- `abs(A008593(n)-(A315522(n)+n))` -/
def P17498201101862422533.Spec : Prop :=
  ∀ n, P17498201101862422533.a n = A312933 n

end A312933

/-!
# A312934: Coordination sequence Gal.4.118.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312934, there is no canonical definition to state claims against.
-/

/-! ## A312934.P15813642195504158451

`A312932(n)+A244895(A165655(n))`
-/

namespace A312934.P15813642195504158451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + A244895 (A165655 n).toNat

end

end A312934.P15813642195504158451

/-! ## A312934.P11761067681768822749

`A359333(A128014(n))+A311608(n)`
-/

namespace A312934.P11761067681768822749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359333 (A128014 n).toNat + A311608 n

end

end A312934.P11761067681768822749

/-! ## A312934.P15409990790880241499

`or(A001221(A149290(n)), A311149(n))`
-/

namespace A312934.P15409990790880241499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A149290 n).toNat) (A311149 n)

end

end A312934.P15409990790880241499

/-! ## A312934.P7421318770799956970

`or(A001221(A149290(n)), A311150(n))`
-/

namespace A312934.P7421318770799956970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A149290 n).toNat) (A311150 n)

end

end A312934.P7421318770799956970

/-! ## A312934.P7385218031076043922

`A375053(n)+A001221(A007716(n+1))`
-/

namespace A312934.P7385218031076043922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375053 n + A001221 (A007716 (n + 1)).toNat

end

end A312934.P7385218031076043922

/-!
# A312935: Coordination sequence Gal.4.105.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312935, the canonical program `A312935.P3936906225367747265` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312935 has offset 0).

The definition of A312935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312935.P9664174612646307633

`(A311613(n)+A310371(n))/2`
-/

namespace A312935.P9664174612646307633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311613 n + A310371 n : ℚ) / 2

end

end A312935.P9664174612646307633

namespace A312935

/-- `(A311613(n)+A310371(n))/2` -/
def P9664174612646307633.Spec : Prop :=
  ∀ n, P9664174612646307633.a n = (A312935 n : ℚ)

end A312935

/-! ## A312935.P9194116193815938505

`A313062(n)-Δ[A011864(n)]`
-/

namespace A312935.P9194116193815938505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313062 n - (f1 (n + 1) - f1 n)

end

end A312935.P9194116193815938505

namespace A312935

/-- `A313062(n)-Δ[A011864(n)]` -/
def P9194116193815938505.Spec : Prop :=
  ∀ n, P9194116193815938505.a n = A312935 n

end A312935

/-! ## A312935.P8404803382330715342

`A313543(n)-A004525(A313543(n)-A311331(n))`
-/

namespace A312935.P8404803382330715342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313543 n - A004525 (A313543 n - A311331 n).toNat

end

end A312935.P8404803382330715342

namespace A312935

/-- `A313543(n)-A004525(A313543(n)-A311331(n))` -/
def P8404803382330715342.Spec : Prop :=
  ∀ n, P8404803382330715342.a n = A312935 n

end A312935

/-! ## A312935.P4051472669988047180

`A311481(n)+A004525(A310438(n)-A311481(n))`
-/

namespace A312935.P4051472669988047180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311481 n + A004525 (A310438 n - A311481 n).toNat

end

end A312935.P4051472669988047180

namespace A312935

/-- `A311481(n)+A004525(A310438(n)-A311481(n))` -/
def P4051472669988047180.Spec : Prop :=
  ∀ n, P4051472669988047180.a n = A312935 n

end A312935

/-! ## A312935.P3936906225367747265

`abs(A008592(n)-A315521(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A312935

/-- `abs(A008592(n)-A315521(n))` -/
def P3936906225367747265.Spec : Prop :=
  ∀ n, P3936906225367747265.a n = A312935 n

theorem P3936906225367747265.correct : P3936906225367747265.Spec := by
  intro n
  simp only [A312935]

end A312935

/-! ## A312935.P5621754437505830244

`2*A008706(n)-A315521(n)`
-/

namespace A312935.P5621754437505830244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315521 n

end

end A312935.P5621754437505830244

namespace A312935

/-- `2*A008706(n)-A315521(n)` -/
def P5621754437505830244.Spec : Prop :=
  ∀ n, P5621754437505830244.a n = A312935 n

end A312935

/-! ## A312935.P7235224118264885153

`A135042(2*n+1)-A315521(n)`
-/

namespace A312935.P7235224118264885153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315521 n

end

end A312935.P7235224118264885153

namespace A312935

/-- `A135042(2*n+1)-A315521(n)` -/
def P7235224118264885153.Spec : Prop :=
  ∀ n, P7235224118264885153.a n = A312935 n

end A312935

/-! ## A312935.P6211057639374579105

`A008458(n)+A008574(n)-A315521(n)`
-/

namespace A312935.P6211057639374579105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315521 n)

end

end A312935.P6211057639374579105

namespace A312935

/-- `A008458(n)+A008574(n)-A315521(n)` -/
def P6211057639374579105.Spec : Prop :=
  ∀ n, P6211057639374579105.a n = A312935 n

end A312935

/-! ## A312935.P9192116658126225235

`∑{d}[A008592(n)-A315521(n), A000010(#)]`
-/

namespace A312935.P9192116658126225235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312935.P9192116658126225235

namespace A312935

/-- `∑{d}[A008592(n)-A315521(n), A000010(#)]` -/
def P9192116658126225235.Spec : Prop :=
  ∀ n, P9192116658126225235.a n = A312935 n

end A312935

/-! ## A312935.P4479834039555296514

`(A008592(n)-A315521(n))^and(1, A000040(n+1))`
-/

namespace A312935.P4479834039555296514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315521 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A312935.P4479834039555296514

namespace A312935

/-- `(A008592(n)-A315521(n))^and(1, A000040(n+1))` -/
def P4479834039555296514.Spec : Prop :=
  ∀ n, P4479834039555296514.a n = (A312935 n : ℚ)

end A312935

/-! ## A312935.P5113735741326889170

`A315521(n)-A005843(A315521(n)-A008706(n))`
-/

namespace A312935.P5113735741326889170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315521 n - A005843 (A315521 n - A008706 n).toNat

end

end A312935.P5113735741326889170

namespace A312935

/-- `A315521(n)-A005843(A315521(n)-A008706(n))` -/
def P5113735741326889170.Spec : Prop :=
  ∀ n, P5113735741326889170.a n = A312935 n

end A312935

/-! ## A312935.P13470138733699675352

`A005843(A008706(n))-A315521(n)`
-/

namespace A312935.P13470138733699675352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315521 n

end

end A312935.P13470138733699675352

namespace A312935

/-- `A005843(A008706(n))-A315521(n)` -/
def P13470138733699675352.Spec : Prop :=
  ∀ n, P13470138733699675352.a n = A312935 n

end A312935

/-! ## A312935.P8090397286532212595

`A065502(A008458(n))-A315521(n)`
-/

namespace A312935.P8090397286532212595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315521 n

end

end A312935.P8090397286532212595

namespace A312935

/-- `A065502(A008458(n))-A315521(n)` -/
def P8090397286532212595.Spec : Prop :=
  ∀ n, P8090397286532212595.a n = A312935 n

end A312935

/-! ## A312935.P4967551937356429883

`A314837(2*n)+A314837(n+1)-A314837(2*n+1)`
-/

namespace A312935.P4967551937356429883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314837 (2 * n) + (A314837 (n + 1) - A314837 (2 * n + 1))

end

end A312935.P4967551937356429883

namespace A312935

/-- `A314837(2*n)+A314837(n+1)-A314837(2*n+1)` -/
def P4967551937356429883.Spec : Prop :=
  ∀ n, P4967551937356429883.a n = A312935 n

end A312935

/-! ## A312935.P13892267029633811315

`A271324(A022144(n))-A315521(n)`
-/

namespace A312935.P13892267029633811315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A315521 n

end

end A312935.P13892267029633811315

namespace A312935

/-- `A271324(A022144(n))-A315521(n)` -/
def P13892267029633811315.Spec : Prop :=
  ∀ n, P13892267029633811315.a n = A312935 n

end A312935

/-! ## A312935.P10271650762999903792

`A004525(A311481(n)+A310438(n))`
-/

namespace A312935.P10271650762999903792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311481 n + A310438 n).toNat

end

end A312935.P10271650762999903792

namespace A312935

/-- `A004525(A311481(n)+A310438(n))` -/
def P10271650762999903792.Spec : Prop :=
  ∀ n, P10271650762999903792.a n = A312935 n

end A312935

/-! ## A312935.P5139214265081272424

`A004525(A311613(n)+A310371(n))`
-/

namespace A312935.P5139214265081272424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311613 n + A310371 n).toNat

end

end A312935.P5139214265081272424

namespace A312935

/-- `A004525(A311613(n)+A310371(n))` -/
def P5139214265081272424.Spec : Prop :=
  ∀ n, P5139214265081272424.a n = A312935 n

end A312935

/-! ## A312935.P11985359073493072309

`A233583(A017281(n))-A315521(n)`
-/

namespace A312935.P11985359073493072309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315521 n

end

end A312935.P11985359073493072309

namespace A312935

/-- `A233583(A017281(n))-A315521(n)` -/
def P11985359073493072309.Spec : Prop :=
  ∀ n, P11985359073493072309.a n = A312935 n

end A312935

/-!
# A312936: Coordination sequence Gal.6.386.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312936, there is no canonical definition to state claims against.
-/

/-! ## A312936.P15309433951382927754

`A106744(A314118(n))`
-/

namespace A312936.P15309433951382927754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106744 (A314118 n).toNat

end

end A312936.P15309433951382927754

/-! ## A312936.P1450356872412346240

`∑[A280053(A239663(n+1))]`
-/

namespace A312936.P1450356872412346240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280053 (A239663 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312936.P1450356872412346240

/-! ## A312936.P1739175985053379925

`A311475(n)+A086251(A205499(n))`
-/

namespace A312936.P1739175985053379925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A086251 (A205499 n).toNat

end

end A312936.P1739175985053379925

/-! ## A312936.P882034654426189114

`A310398(A087051(n))-A072345(n)%A131830(n)`
-/

namespace A312936.P882034654426189114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 (A087051 n).toNat - Int.tmod (A072345 n) (A131830 n)

end

end A312936.P882034654426189114

/-! ## A312936.P1318305877779779974

`A311896(n)+A287170(A131428(n))-A261990(n+1)`
-/

namespace A312936.P1318305877779779974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311896 n + A287170 (A131428 n).toNat - A261990 (n + 1)

end

end A312936.P1318305877779779974

/-!
# A312937: Coordination sequence Gal.6.375.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312937, there is no canonical definition to state claims against.
-/

/-! ## A312937.P13528742633873354906

`∑[A005811(A162862(n+1)²)]`
-/

namespace A312937.P13528742633873354906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A162862 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312937.P13528742633873354906

/-! ## A312937.P2522368814374552473

`A023416(A000139(n))+A008586(n)`
-/

namespace A312937.P2522368814374552473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A000139 n).toNat + A008586 n

end

end A312937.P2522368814374552473

/-! ## A312937.P1812390017208425320

`A106633(n)+A083896(A000244(n))`
-/

namespace A312937.P1812390017208425320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106633 n + A083896 (A000244 n).toNat

end

end A312937.P1812390017208425320

/-! ## A312937.P12110203963915558135

`A311479(n)+A001221(A054499(n))`
-/

namespace A312937.P12110203963915558135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311479 n + A001221 (A054499 n).toNat

end

end A312937.P12110203963915558135

/-! ## A312937.P9137947832617036478

`A313707(n)-A001221(A010683(n))`
-/

namespace A312937.P9137947832617036478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n - A001221 (A010683 n).toNat

end

end A312937.P9137947832617036478

/-!
# A312938: Coordination sequence Gal.5.127.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312938, there is no canonical definition to state claims against.
-/

/-! ## A312938.P9037011166550372973

`A250120(n)-A347062(A339454(n+1))`
-/

namespace A312938.P9037011166550372973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A347062 (A339454 (n + 1)).toNat

end

end A312938.P9037011166550372973

/-! ## A312938.P5250464857460253264

`record[A313623(n)-round(2^round((n-3)/2))]`
-/

namespace A312938.P5250464857460253264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313623 n - SequenceMachineLib.roundAway ((2 : ℚ) ^ (SequenceMachineLib.roundAway (((n : ℤ) - 3 : ℚ) / 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312938.P5250464857460253264

/-! ## A312938.P4809804114616531541

`A301688(A087051(n))+A002264(n)`
-/

namespace A312938.P4809804114616531541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 (A087051 n).toNat + A002264 n

end

end A312938.P4809804114616531541

/-! ## A312938.P4555686652638358138

`A312896(n)+A180160(A324783(n))`
-/

namespace A312938.P4555686652638358138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A180160 (A324783 n).toNat

end

end A312938.P4555686652638358138

/-! ## A312938.P3893552121641417808

`A008574(n)+A001221(A063179(n+1))`
-/

namespace A312938.P3893552121641417808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001221 (A063179 (n + 1)).toNat

end

end A312938.P3893552121641417808

/-!
# A312939: Coordination sequence Gal.6.315.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312939, there is no canonical definition to state claims against.
-/

/-! ## A312939.P17769137128167917664

`A311597(n)+A104606(A311555(2*(n+2)))`
-/

namespace A312939.P17769137128167917664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311597 n + A104606 (A311555 (2 * (n + 2))).toNat

end

end A312939.P17769137128167917664

/-! ## A312939.P10495762874275497836

`A311242(n)+A001221(A348410(n))`
-/

namespace A312939.P10495762874275497836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311242 n + A001221 (A348410 n).toNat

end

end A312939.P10495762874275497836

/-! ## A312939.P1441969189108747315

`A313540(n)-A191347(A033313(n+1))`
-/

namespace A312939.P1441969189108747315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n - A191347 (A033313 (n + 1)).toNat

end

end A312939.P1441969189108747315

/-! ## A312939.P11884060046845175766

`A250120(n+1)-A329231(A141957(2*n+1))`
-/

namespace A312939.P11884060046845175766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (n + 1) - A329231 (A141957 (2 * n + 1)).toNat

end

end A312939.P11884060046845175766

/-!
# A312940: Coordination sequence Gal.4.119.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312940, there is no canonical definition to state claims against.
-/

/-! ## A312940.P14948469820893430460

`A311347(n)+A063962(A275504(3*n+1))`
-/

namespace A312940.P14948469820893430460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A063962 (A275504 (3 * n + 1)).toNat

end

end A312940.P14948469820893430460

/-! ## A312940.P12368082925163953229

`A312926(n)+A001221(A146368(n+1))`
-/

namespace A312940.P12368082925163953229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A001221 (A146368 (n + 1)).toNat

end

end A312940.P12368082925163953229

/-! ## A312940.P5199795690297272357

`A167866(A023032(n+7))+A060605(n+1)`
-/

namespace A312940.P5199795690297272357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167866 (A023032 (n + 7)).toNat + A060605 (n + 1)

end

end A312940.P5199795690297272357

/-! ## A312940.P9089662884689359221

`A072154(2*n+1)-A366632(A000043(n+1))`
-/

namespace A312940.P9089662884689359221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n + 1) - A366632 (A000043 (n + 1)).toNat

end

end A312940.P9089662884689359221

/-! ## A312940.P12899646336305367680

`A311506(n)+A124010(A001681(n))`
-/

namespace A312940.P12899646336305367680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311506 n + A124010 (A001681 n).toNat

end

end A312940.P12899646336305367680

/-!
# A312941: Coordination sequence Gal.5.14.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312941, the canonical program `A312941.P9567637435389230207` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312941 has offset 0).

The definition of A312941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312941.P9567637435389230207

`a(n-1)+a(n-6)-a(n-7)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13, a(4)=18, a(5)=23, a(6)=27, a(7)=31`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A312941

/-- `a(n-1)+a(n-6)-a(n-7)` -/
def P9567637435389230207.Spec : Prop :=
  ∀ n, P9567637435389230207.a n = A312941 n

theorem P9567637435389230207.correct : P9567637435389230207.Spec := by
  intro n
  simp only [A312941]

end A312941

/-! ## A312941.P7784468437821361705

`A123108(∑[n%3])+4*n`
-/

namespace A312941.P7784468437821361705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ j ∈ Finset.range (n + 1), f1 j) + (4 * n : ℤ)

end

end A312941.P7784468437821361705

namespace A312941

/-- `A123108(∑[n%3])+4*n` -/
def P7784468437821361705.Spec : Prop :=
  ∀ n, P7784468437821361705.a n = A312941 n

end A312941

/-! ## A312941.P8864297979009733104

`A008706(n)-A300076(n)`
-/

namespace A312941.P8864297979009733104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A300076 n

end

end A312941.P8864297979009733104

namespace A312941

/-- `A008706(n)-A300076(n)` -/
def P8864297979009733104.Spec : Prop :=
  ∀ n, P8864297979009733104.a n = A312941 n

end A312941

/-! ## A312941.P14575919984697916114

`A008574(n)+∑[A214090(n)]`
-/

namespace A312941.P14575919984697916114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312941.P14575919984697916114

namespace A312941

/-- `A008574(n)+∑[A214090(n)]` -/
def P14575919984697916114.Spec : Prop :=
  ∀ n, P14575919984697916114.a n = A312941 n

end A312941

/-! ## A312941.P2637540588568387066

`A298786(n)+A032775(n+1)`
-/

namespace A312941.P2637540588568387066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + A032775 (n + 1)

end

end A312941.P2637540588568387066

namespace A312941

/-- `A298786(n)+A032775(n+1)` -/
def P2637540588568387066.Spec : Prop :=
  ∀ n, P2637540588568387066.a n = A312941 n

end A312941

/-! ## A312941.P9566923326140840896

`A123108(A130481(n))+4*n`
-/

namespace A312941.P9566923326140840896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A130481 n).toNat + (4 * n : ℤ)

end

end A312941.P9566923326140840896

namespace A312941

/-- `A123108(A130481(n))+4*n` -/
def P9566923326140840896.Spec : Prop :=
  ∀ n, P9566923326140840896.a n = A312941 n

end A312941

/-! ## A312941.P13216845563971395046

`A008574(n)+n-A300076(n)`
-/

namespace A312941.P13216845563971395046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + ((n : ℤ) - A300076 n)

end

end A312941.P13216845563971395046

namespace A312941

/-- `A008574(n)+n-A300076(n)` -/
def P13216845563971395046.Spec : Prop :=
  ∀ n, P13216845563971395046.a n = A312941 n

end A312941

/-! ## A312941.P9875509734355209947

`A008574(n)+A004526(A130481(n))`
-/

namespace A312941.P9875509734355209947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A004526 (A130481 n).toNat

end

end A312941.P9875509734355209947

namespace A312941

/-- `A008574(n)+A004526(A130481(n))` -/
def P9875509734355209947.Spec : Prop :=
  ∀ n, P9875509734355209947.a n = A312941 n

end A312941

/-! ## A312941.P14554631222919617271

`A313110(n)-Δ[A008724(n)]`
-/

namespace A312941.P14554631222919617271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n - (f1 (n + 1) - f1 n)

end

end A312941.P14554631222919617271

namespace A312941

/-- `A313110(n)-Δ[A008724(n)]` -/
def P14554631222919617271.Spec : Prop :=
  ∀ n, P14554631222919617271.a n = A312941 n

end A312941

/-! ## A312941.P9876073318881888418

`A314247(n)-A047318(n+1)`
-/

namespace A312941.P9876073318881888418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A047318 (n + 1)

end

end A312941.P9876073318881888418

namespace A312941

/-- `A314247(n)-A047318(n+1)` -/
def P9876073318881888418.Spec : Prop :=
  ∀ n, P9876073318881888418.a n = A312941 n

end A312941

/-! ## A312941.P17566611598633489152

`A008619(A310461(n))+comp[2*(n+1)]`
-/

namespace A312941.P17566611598633489152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A310461 n).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A312941.P17566611598633489152

namespace A312941

/-- `A008619(A310461(n))+comp[2*(n+1)]` -/
def P17566611598633489152.Spec : Prop :=
  ∀ n, P17566611598633489152.a n = A312941 n

end A312941

/-! ## A312941.P17485478022971261521

`A123108(A022003(n)+A008591(n))`
-/

namespace A312941.P17485478022971261521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A022003 n + A008591 n).toNat

end

end A312941.P17485478022971261521

namespace A312941

/-- `A123108(A022003(n)+A008591(n))` -/
def P17485478022971261521.Spec : Prop :=
  ∀ n, P17485478022971261521.a n = A312941 n

end A312941

/-!
# A312942: Coordination sequence Gal.6.544.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312942, there is no canonical definition to state claims against.
-/

/-! ## A312942.P1583077844260631364

`or(A038769(A095527(n)), A312077(n))`
-/

namespace A312942.P1583077844260631364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038769 (A095527 n).toNat) (A312077 n)

end

end A312942.P1583077844260631364

/-! ## A312942.P10728090186776017530

`or(A038769(A095527(n)), A312941(n))`
-/

namespace A312942.P10728090186776017530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038769 (A095527 n).toNat) (A312941 n)

end

end A312942.P10728090186776017530

/-! ## A312942.P4302456105406949199

`or(A171400(A042950(n)), A312941(n))`
-/

namespace A312942.P4302456105406949199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A171400 (A042950 n).toNat) (A312941 n)

end

end A312942.P4302456105406949199

/-! ## A312942.P8551549680999918879

`A313559(n)-A178798(A155495(n))-A001221(2*n+1)`
-/

namespace A312942.P8551549680999918879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313559 n - A178798 (A155495 n).toNat - A001221 (2 * n + 1)

end

end A312942.P8551549680999918879

/-! ## A312942.P7746450602608161717

`A298024(n)-A093879(A000108(n))`
-/

namespace A312942.P7746450602608161717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A093879 (A000108 n).toNat

end

end A312942.P7746450602608161717

/-!
# A312943: Coordination sequence Gal.4.41.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312943, the canonical program `A312943.P15149972139158582154` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312943 has offset 0).

The definition of A312943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312943.P15149972139158582154

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13, a(4)=18, a(5)=23, a(6)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A312943

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P15149972139158582154.Spec : Prop :=
  ∀ n, P15149972139158582154.a n = A312943 n

theorem P15149972139158582154.correct : P15149972139158582154.Spec := by
  intro n
  simp only [A312943]

end A312943

/-! ## A312943.P1974157453204007404

`a(n-1)+dr(xor(4, 27*n))` with `a(0)=1, a(1)=4`
-/

namespace A312943.P1974157453204007404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + SequenceMachineLib.digitalRoot (Nat.xor 4 (27 * n) : ℤ)

end

end A312943.P1974157453204007404

namespace A312943

/-- `a(n-1)+dr(xor(4, 27*n))` -/
def P1974157453204007404.Spec : Prop :=
  ∀ n, (P1974157453204007404.a n : ℤ) = A312943 n

end A312943

/-! ## A312943.P6152108003426403521

`A315685(n)-(A046978(n)+n)`
-/

namespace A312943.P6152108003426403521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - (A046978 n + (n : ℤ))

end

end A312943.P6152108003426403521

namespace A312943

/-- `A315685(n)-(A046978(n)+n)` -/
def P6152108003426403521.Spec : Prop :=
  ∀ n, P6152108003426403521.a n = A312943 n

end A312943

/-! ## A312943.P13883517332331387644

`A004525(n)+A312894(n)-A004525(A004525(n))`
-/

namespace A312943.P13883517332331387644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312894 n - A004525 (A004525 n).toNat)

end

end A312943.P13883517332331387644

namespace A312943

/-- `A004525(n)+A312894(n)-A004525(A004525(n))` -/
def P13883517332331387644.Spec : Prop :=
  ∀ n, P13883517332331387644.a n = A312943 n

end A312943

/-! ## A312943.P7263191536384780855

`A311501(n)+A004525(n-A004525(n))`
-/

namespace A312943.P7263191536384780855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A312943.P7263191536384780855

namespace A312943

/-- `A311501(n)+A004525(n-A004525(n))` -/
def P7263191536384780855.Spec : Prop :=
  ∀ n, P7263191536384780855.a n = A312943 n

end A312943

/-! ## A312943.P3736654675787559993

`A311625(n)+A046978(n-A046978(n))`
-/

namespace A312943.P3736654675787559993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311625 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A312943.P3736654675787559993

namespace A312943

/-- `A311625(n)+A046978(n-A046978(n))` -/
def P3736654675787559993.Spec : Prop :=
  ∀ n, P3736654675787559993.a n = A312943 n

end A312943

/-! ## A312943.P9609342293805406087

`A314829(n)-A188510(n)`
-/

namespace A312943.P9609342293805406087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n - A188510 n

end

end A312943.P9609342293805406087

namespace A312943

/-- `A314829(n)-A188510(n)` -/
def P9609342293805406087.Spec : Prop :=
  ∀ n, P9609342293805406087.a n = A312943 n

end A312943

/-! ## A312943.P6866022678780434500

`A008458(n)+A008486(n)-A314829(n)`
-/

namespace A312943.P6866022678780434500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314829 n)

end

end A312943.P6866022678780434500

namespace A312943

/-- `A008458(n)+A008486(n)-A314829(n)` -/
def P6866022678780434500.Spec : Prop :=
  ∀ n, P6866022678780434500.a n = A312943 n

end A312943

/-! ## A312943.P17790808583279209378

`A313480(n)-A046978(n)`
-/

namespace A312943.P17790808583279209378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n - A046978 n

end

end A312943.P17790808583279209378

namespace A312943

/-- `A313480(n)-A046978(n)` -/
def P17790808583279209378.Spec : Prop :=
  ∀ n, P17790808583279209378.a n = A312943 n

end A312943

/-! ## A312943.P15920333131721624805

`A310397(n)-A004525(n-A004525(n))`
-/

namespace A312943.P15920333131721624805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310397 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A312943.P15920333131721624805

namespace A312943

/-- `A310397(n)-A004525(n-A004525(n))` -/
def P15920333131721624805.Spec : Prop :=
  ∀ n, P15920333131721624805.a n = A312943 n

end A312943

/-! ## A312943.P16273115599721693434

`A313561(n)-A004525(A004525(n))`
-/

namespace A312943.P16273115599721693434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n - A004525 (A004525 n).toNat

end

end A312943.P16273115599721693434

namespace A312943

/-- `A313561(n)-A004525(A004525(n))` -/
def P16273115599721693434.Spec : Prop :=
  ∀ n, P16273115599721693434.a n = A312943 n

end A312943

/-! ## A312943.P13288726195562725528

`A313115(n)-Δ[A011861(n)]`
-/

namespace A312943.P13288726195562725528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n - (f1 (n + 1) - f1 n)

end

end A312943.P13288726195562725528

namespace A312943

/-- `A313115(n)-Δ[A011861(n)]` -/
def P13288726195562725528.Spec : Prop :=
  ∀ n, P13288726195562725528.a n = A312943 n

end A312943

/-! ## A312943.P9060622954026450259

`A315411(n)-2*A004525(A004525(n))`
-/

namespace A312943.P9060622954026450259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315411 n - 2 * A004525 (A004525 n).toNat

end

end A312943.P9060622954026450259

namespace A312943

/-- `A315411(n)-2*A004525(A004525(n))` -/
def P9060622954026450259.Spec : Prop :=
  ∀ n, P9060622954026450259.a n = A312943 n

end A312943

/-! ## A312943.P2847882951775454382

`A313635(n)-A004525(n)`
-/

namespace A312943.P2847882951775454382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n - A004525 n

end

end A312943.P2847882951775454382

namespace A312943

/-- `A313635(n)-A004525(n)` -/
def P2847882951775454382.Spec : Prop :=
  ∀ n, P2847882951775454382.a n = A312943 n

end A312943

/-! ## A312943.P97213180466094256

`(A310419(n)+A008574(n))/2`
-/

namespace A312943.P97213180466094256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310419 n + A008574 n : ℚ) / 2

end

end A312943.P97213180466094256

namespace A312943

/-- `(A310419(n)+A008574(n))/2` -/
def P97213180466094256.Spec : Prop :=
  ∀ n, P97213180466094256.a n = (A312943 n : ℚ)

end A312943

/-! ## A312943.P4550488023286449183

`A004525(n)+A310458(n)-n`
-/

namespace A312943.P4550488023286449183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310458 n - (n : ℤ))

end

end A312943.P4550488023286449183

namespace A312943

/-- `A004525(n)+A310458(n)-n` -/
def P4550488023286449183.Spec : Prop :=
  ∀ n, P4550488023286449183.a n = A312943 n

end A312943

/-! ## A312943.P5672989783931535967

`Δ[A054925(n)]+A310458(n)-n`
-/

namespace A312943.P5672989783931535967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A310458 n - (n : ℤ))

end

end A312943.P5672989783931535967

namespace A312943

/-- `Δ[A054925(n)]+A310458(n)-n` -/
def P5672989783931535967.Spec : Prop :=
  ∀ n, P5672989783931535967.a n = A312943 n

end A312943

/-! ## A312943.P2485183454208608592

`A313793(n)-A004525(A004525(n)+n)`
-/

namespace A312943.P2485183454208608592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n - A004525 (A004525 n + (n : ℤ)).toNat

end

end A312943.P2485183454208608592

namespace A312943

/-- `A313793(n)-A004525(A004525(n)+n)` -/
def P2485183454208608592.Spec : Prop :=
  ∀ n, P2485183454208608592.a n = A312943 n

end A312943

/-! ## A312943.P11625934254703523317

`A314161(n)-n`
-/

namespace A312943.P11625934254703523317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314161 n - (n : ℤ)

end

end A312943.P11625934254703523317

namespace A312943

/-- `A314161(n)-n` -/
def P11625934254703523317.Spec : Prop :=
  ∀ n, P11625934254703523317.a n = A312943 n

end A312943

/-! ## A312943.P17568603172299336019

`A315520(n)-(A188510(n)+n)`
-/

namespace A312943.P17568603172299336019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - (A188510 n + (n : ℤ))

end

end A312943.P17568603172299336019

namespace A312943

/-- `A315520(n)-(A188510(n)+n)` -/
def P17568603172299336019.Spec : Prop :=
  ∀ n, P17568603172299336019.a n = A312943 n

end A312943

/-!
# A312944: Coordination sequence Gal.6.245.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312944, the canonical program `A312944.P10352977025746883391` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312944 has offset 0).

The definition of A312944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312944.P2393556302088091899

`(A310420(n)+A008574(n))/2`
-/

namespace A312944.P2393556302088091899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310420 n + A008574 n : ℚ) / 2

end

end A312944.P2393556302088091899

namespace A312944

/-- `(A310420(n)+A008574(n))/2` -/
def P2393556302088091899.Spec : Prop :=
  ∀ n, P2393556302088091899.a n = (A312944 n : ℚ)

end A312944

/-! ## A312944.P11673368317224935555

`A008574(n)+A001281(A310420(n)-A008574(n))`
-/

namespace A312944.P11673368317224935555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001281 (A310420 n - A008574 n).toNat

end

end A312944.P11673368317224935555

namespace A312944

/-- `A008574(n)+A001281(A310420(n)-A008574(n))` -/
def P11673368317224935555.Spec : Prop :=
  ∀ n, P11673368317224935555.a n = A312944 n

end A312944

/-! ## A312944.P13434833931947337306

`abs(A008592(n)-A315519(n))`
-/

namespace A312944.P13434833931947337306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315519 n|

end

end A312944.P13434833931947337306

namespace A312944

/-- `abs(A008592(n)-A315519(n))` -/
def P13434833931947337306.Spec : Prop :=
  ∀ n, P13434833931947337306.a n = A312944 n

end A312944

/-! ## A312944.P18052146697755173153

`A008458(n)+A008574(n)-A315519(n)`
-/

namespace A312944.P18052146697755173153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315519 n)

end

end A312944.P18052146697755173153

namespace A312944

/-- `A008458(n)+A008574(n)-A315519(n)` -/
def P18052146697755173153.Spec : Prop :=
  ∀ n, P18052146697755173153.a n = A312944 n

end A312944

/-! ## A312944.P18232221223551418182

`2*A313113(n)-A180004(A313113(n))`
-/

namespace A312944.P18232221223551418182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313113 n - A180004 (A313113 n).toNat

end

end A312944.P18232221223551418182

namespace A312944

/-- `2*A313113(n)-A180004(A313113(n))` -/
def P18232221223551418182.Spec : Prop :=
  ∀ n, P18232221223551418182.a n = A312944 n

end A312944

/-! ## A312944.P9991545436779404362

`A008458(n)+n-A004526(A315305(n))`
-/

namespace A312944.P9991545436779404362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ((n : ℤ) - A004526 (A315305 n).toNat)

end

end A312944.P9991545436779404362

namespace A312944

/-- `A008458(n)+n-A004526(A315305(n))` -/
def P9991545436779404362.Spec : Prop :=
  ∀ n, P9991545436779404362.a n = A312944 n

end A312944

/-! ## A312944.P1811256460480288375

`A005843(A008458(n)-n)-A315519(n)`
-/

namespace A312944.P1811256460480288375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n - (n : ℤ)).toNat - A315519 n

end

end A312944.P1811256460480288375

namespace A312944

/-- `A005843(A008458(n)-n)-A315519(n)` -/
def P1811256460480288375.Spec : Prop :=
  ∀ n, P1811256460480288375.a n = A312944 n

end A312944

/-! ## A312944.P11989619055761710895

`A004525(A313148(n))+2*n`
-/

namespace A312944.P11989619055761710895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313148 n).toNat + (2 * n : ℤ)

end

end A312944.P11989619055761710895

namespace A312944

/-- `A004525(A313148(n))+2*n` -/
def P11989619055761710895.Spec : Prop :=
  ∀ n, P11989619055761710895.a n = A312944 n

end A312944

/-! ## A312944.P13545962593293873551

`A004525(A313259(n))+2*n`
-/

namespace A312944.P13545962593293873551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313259 n).toNat + (2 * n : ℤ)

end

end A312944.P13545962593293873551

namespace A312944

/-- `A004525(A313259(n))+2*n` -/
def P13545962593293873551.Spec : Prop :=
  ∀ n, P13545962593293873551.a n = A312944 n

end A312944

/-! ## A312944.P6508663879880672714

`A004526(A310420(n))+A004277(n)`
-/

namespace A312944.P6508663879880672714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310420 n).toNat + A004277 n

end

end A312944.P6508663879880672714

namespace A312944

/-- `A004526(A310420(n))+A004277(n)` -/
def P6508663879880672714.Spec : Prop :=
  ∀ n, P6508663879880672714.a n = A312944 n

end A312944

/-! ## A312944.P9577773637206937616

`A065502(A314157(n))/2`
-/

namespace A312944.P9577773637206937616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A314157 n).toNat : ℚ) / 2

end

end A312944.P9577773637206937616

namespace A312944

/-- `A065502(A314157(n))/2` -/
def P9577773637206937616.Spec : Prop :=
  ∀ n, P9577773637206937616.a n = (A312944 n : ℚ)

end A312944

/-! ## A312944.P10352977025746883391

`A004396(A314253(n)+n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A312944

/-- `A004396(A314253(n)+n)` -/
def P10352977025746883391.Spec : Prop :=
  ∀ n, P10352977025746883391.a n = A312944 n

theorem P10352977025746883391.correct : P10352977025746883391.Spec := by
  intro n
  simp only [A312944]

end A312944

/-! ## A312944.P15991633008256502217

`A274616(A314253(n)+n)`
-/

namespace A312944.P15991633008256502217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A314253 n + (n : ℤ)).toNat

end

end A312944.P15991633008256502217

namespace A312944

/-- `A274616(A314253(n)+n)` -/
def P15991633008256502217.Spec : Prop :=
  ∀ n, P15991633008256502217.a n = A312944 n

end A312944

/-! ## A312944.P12015060185330876627

`A004396(A313247(2*n)-A008585(n))`
-/

namespace A312944.P12015060185330876627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313247 (2 * n) - A008585 n).toNat

end

end A312944.P12015060185330876627

namespace A312944

/-- `A004396(A313247(2*n)-A008585(n))` -/
def P12015060185330876627.Spec : Prop :=
  ∀ n, P12015060185330876627.a n = A312944 n

end A312944

/-! ## A312944.P15797526253767701081

`A004525(A312606(2*n))`
-/

namespace A312944.P15797526253767701081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312606 (2 * n)).toNat

end

end A312944.P15797526253767701081

namespace A312944

/-- `A004525(A312606(2*n))` -/
def P15797526253767701081.Spec : Prop :=
  ∀ n, P15797526253767701081.a n = A312944 n

end A312944

/-! ## A312944.P5867476426222980076

`A001281(A310420(n)+A008574(n))`
-/

namespace A312944.P5867476426222980076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A310420 n + A008574 n).toNat

end

end A312944.P5867476426222980076

namespace A312944

/-- `A001281(A310420(n)+A008574(n))` -/
def P5867476426222980076.Spec : Prop :=
  ∀ n, P5867476426222980076.a n = A312944 n

end A312944

/-! ## A312944.P13885790334454569259

`A313887(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A312944.P13885790334454569259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313887 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A312944.P13885790334454569259

namespace A312944

/-- `A313887(2*n)+A008458(n+1)-(12*n+6)` -/
def P13885790334454569259.Spec : Prop :=
  ∀ n, P13885790334454569259.a n = A312944 n

end A312944

/-! ## A312944.P2318142815011761673

`A004396(A313247(2*n))-A005843(n)`
-/

namespace A312944.P2318142815011761673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313247 (2 * n)).toNat - A005843 n

end

end A312944.P2318142815011761673

namespace A312944

/-- `A004396(A313247(2*n))-A005843(n)` -/
def P2318142815011761673.Spec : Prop :=
  ∀ n, P2318142815011761673.a n = A312944 n

end A312944

/-! ## A312944.P17717357137082521251

`A004396(A315034(2*n))-A005843(n)`
-/

namespace A312944.P17717357137082521251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315034 (2 * n)).toNat - A005843 n

end

end A312944.P17717357137082521251

namespace A312944

/-- `A004396(A315034(2*n))-A005843(n)` -/
def P17717357137082521251.Spec : Prop :=
  ∀ n, P17717357137082521251.a n = A312944 n

end A312944

/-! ## A312944.P7777287214593637220

`A004396(A315056(2*n))-A005843(n)`
-/

namespace A312944.P7777287214593637220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315056 (2 * n)).toNat - A005843 n

end

end A312944.P7777287214593637220

namespace A312944

/-- `A004396(A315056(2*n))-A005843(n)` -/
def P7777287214593637220.Spec : Prop :=
  ∀ n, P7777287214593637220.a n = A312944 n

end A312944

/-!
# A312945: Coordination sequence Gal.6.537.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312945, there is no canonical definition to state claims against.
-/

/-! ## A312945.P8959131222094203679

`xor(A103589(A017017(n)), A312948(n))`
-/

namespace A312945.P8959131222094203679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103589 (A017017 n).toNat) (A312948 n)

end

end A312945.P8959131222094203679

/-! ## A312945.P188744286146877139

`A313056(n)-A003849(A172435(n+1))`
-/

namespace A312945.P188744286146877139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313056 n - A003849 (A172435 (n + 1)).toNat

end

end A312945.P188744286146877139

/-! ## A312945.P9382417066886235134

`A342910(A014692(2*(n+2)))+A312935(n)`
-/

namespace A312945.P9382417066886235134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342910 (A014692 (2 * (n + 2))).toNat + A312935 n

end

end A312945.P9382417066886235134

/-! ## A312945.P6720085237090181871

`A322338(A000041(n))+A311536(n)`
-/

namespace A312945.P6720085237090181871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A000041 n).toNat + A311536 n

end

end A312945.P6720085237090181871

/-! ## A312945.P14487499625723184939

`A312125(n)+A094186(A290114(n))`
-/

namespace A312945.P14487499625723184939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312125 n + A094186 (A290114 n).toNat

end

end A312945.P14487499625723184939

/-!
# A312946: Coordination sequence Gal.6.536.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312946, there is no canonical definition to state claims against.
-/

/-! ## A312946.P12045268949677852801

`A312973(n)-A016389(A019565(n))`
-/

namespace A312946.P12045268949677852801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312973 n - A016389 (A019565 n).toNat

end

end A312946.P12045268949677852801

/-! ## A312946.P6838987820975727995

`A351870(A312903(n)+A002265(n))`
-/

namespace A312946.P6838987820975727995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A312903 n + A002265 n).toNat

end

end A312946.P6838987820975727995

/-! ## A312946.P4654224820921839997

`A310398(n)-A153246(A308699(n))`
-/

namespace A312946.P4654224820921839997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310398 n - A153246 (A308699 n).toNat

end

end A312946.P4654224820921839997

/-! ## A312946.P16917226784617732500

`xor(A185284(A002620(n)), A312945(n))`
-/

namespace A312946.P16917226784617732500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A002620 n).toNat) (A312945 n)

end

end A312946.P16917226784617732500

/-!
# A312947: Coordination sequence Gal.6.444.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312947, there is no canonical definition to state claims against.
-/

/-! ## A312947.P17675251221112285174

`A311306(n)+A001221(A293110(n))`
-/

namespace A312947.P17675251221112285174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311306 n + A001221 (A293110 n).toNat

end

end A312947.P17675251221112285174

/-! ## A312947.P11701022337994177641

`A313510(n)-A010059(A084481(n+1))`
-/

namespace A312947.P11701022337994177641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n - A010059 (A084481 (n + 1)).toNat

end

end A312947.P11701022337994177641

/-! ## A312947.P3788420448116265053

`record[A314164(n)-A010785(n)]`
-/

namespace A312947.P3788420448116265053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - A010785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312947.P3788420448116265053

/-! ## A312947.P6759244333556892022

`A352822(A000085(n))+A311535(n)`
-/

namespace A312947.P6759244333556892022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352822 (A000085 n).toNat + A311535 n

end

end A312947.P6759244333556892022

/-! ## A312947.P15716197412039766948

`A310400(n)-A001221(A148434(n))`
-/

namespace A312947.P15716197412039766948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310400 n - A001221 (A148434 n).toNat

end

end A312947.P15716197412039766948

/-!
# A312948: Coordination sequence Gal.5.66.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312948, the canonical program `A312948.P565331137883369299` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312948 has offset 0).

The definition of A312948 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312948.P565331137883369299

`A151988(n)+A312928(n)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A312948

/-- `A151988(n)+A312928(n)-n` -/
def P565331137883369299.Spec : Prop :=
  ∀ n, P565331137883369299.a n = A312948 n

theorem P565331137883369299.correct : P565331137883369299.Spec := by
  intro n
  simp only [A312948]

end A312948

/-! ## A312948.P9211033916746193908

`A047299(n+1)+A151988(n)+A004277(n)`
-/

namespace A312948.P9211033916746193908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A151988 n + A004277 n)

end

end A312948.P9211033916746193908

namespace A312948

/-- `A047299(n+1)+A151988(n)+A004277(n)` -/
def P9211033916746193908.Spec : Prop :=
  ∀ n, P9211033916746193908.a n = A312948 n

end A312948

/-! ## A312948.P12752822103498461597

`A311289(n)+Δ[A011858(n)]`
-/

namespace A312948.P12752822103498461597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + (f1 (n + 1) - f1 n)

end

end A312948.P12752822103498461597

namespace A312948

/-- `A311289(n)+Δ[A011858(n)]` -/
def P12752822103498461597.Spec : Prop :=
  ∀ n, P12752822103498461597.a n = A312948 n

end A312948

/-! ## A312948.P10028045863632516014

`A311289(n)+A057354(n+1)`
-/

namespace A312948.P10028045863632516014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A057354 (n + 1)

end

end A312948.P10028045863632516014

namespace A312948

/-- `A311289(n)+A057354(n+1)` -/
def P10028045863632516014.Spec : Prop :=
  ∀ n, P10028045863632516014.a n = A312948 n

end A312948

/-! ## A312948.P8220446458482905570

`A047299(n+1)+A311289(n)-n`
-/

namespace A312948.P8220446458482905570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (n + 1) + (A311289 n - (n : ℤ))

end

end A312948.P8220446458482905570

namespace A312948

/-- `A047299(n+1)+A311289(n)-n` -/
def P8220446458482905570.Spec : Prop :=
  ∀ n, P8220446458482905570.a n = A312948 n

end A312948

/-! ## A312948.P7098851676260792086

`A008458(n)+A008486(n)-A314827(n)`
-/

namespace A312948.P7098851676260792086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A314827 n)

end

end A312948.P7098851676260792086

namespace A312948

/-- `A008458(n)+A008486(n)-A314827(n)` -/
def P7098851676260792086.Spec : Prop :=
  ∀ n, P7098851676260792086.a n = A312948 n

end A312948

/-! ## A312948.P8236491809465469307

`A330025(n-A330025(n))+A311552(n)`
-/

namespace A312948.P8236491809465469307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A311552 n

end

end A312948.P8236491809465469307

namespace A312948

/-- `A330025(n-A330025(n))+A311552(n)` -/
def P8236491809465469307.Spec : Prop :=
  ∀ n, P8236491809465469307.a n = A312948 n

end A312948

/-! ## A312948.P9921321215705627518

`A313537(n)-A330025(n)`
-/

namespace A312948.P9921321215705627518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313537 n - A330025 n

end

end A312948.P9921321215705627518

namespace A312948

/-- `A313537(n)-A330025(n)` -/
def P9921321215705627518.Spec : Prop :=
  ∀ n, P9921321215705627518.a n = A312948 n

end A312948

/-! ## A312948.P719612618619782796

`A313506(n)-A330025(A330025(n)+n)`
-/

namespace A312948.P719612618619782796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313506 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A312948.P719612618619782796

namespace A312948

/-- `A313506(n)-A330025(A330025(n)+n)` -/
def P719612618619782796.Spec : Prop :=
  ∀ n, P719612618619782796.a n = A312948 n

end A312948

/-! ## A312948.P5768187905236304208

`A313116(n)-A002266(n+2)`
-/

namespace A312948.P5768187905236304208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313116 n - A002266 (n + 2)

end

end A312948.P5768187905236304208

namespace A312948

/-- `A313116(n)-A002266(n+2)` -/
def P5768187905236304208.Spec : Prop :=
  ∀ n, P5768187905236304208.a n = A312948 n

end A312948

/-! ## A312948.P3694113972308981237

`(A310422(n)+A008574(n))/2`
-/

namespace A312948.P3694113972308981237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310422 n + A008574 n : ℚ) / 2

end

end A312948.P3694113972308981237

namespace A312948

/-- `(A310422(n)+A008574(n))/2` -/
def P3694113972308981237.Spec : Prop :=
  ∀ n, P3694113972308981237.a n = (A312948 n : ℚ)

end A312948

/-! ## A312948.P4912955568168405154

`abs(A008592(n)-A315518(n))`
-/

namespace A312948.P4912955568168405154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315518 n|

end

end A312948.P4912955568168405154

namespace A312948

/-- `abs(A008592(n)-A315518(n))` -/
def P4912955568168405154.Spec : Prop :=
  ∀ n, P4912955568168405154.a n = A312948 n

end A312948

/-! ## A312948.P16055059014863497236

`abs(A008593(n)-(A315518(n)+n))`
-/

namespace A312948.P16055059014863497236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - (A315518 n + (n : ℤ))|

end

end A312948.P16055059014863497236

namespace A312948

/-- `abs(A008593(n)-(A315518(n)+n))` -/
def P16055059014863497236.Spec : Prop :=
  ∀ n, P16055059014863497236.a n = A312948 n

end A312948

/-! ## A312948.P3079222616103352676

`A008458(n)+A008574(n)-A315518(n)`
-/

namespace A312948.P3079222616103352676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315518 n)

end

end A312948.P3079222616103352676

namespace A312948

/-- `A008458(n)+A008574(n)-A315518(n)` -/
def P3079222616103352676.Spec : Prop :=
  ∀ n, P3079222616103352676.a n = A312948 n

end A312948

/-! ## A312948.P10586888994795492030

`A008574(n)+A313898(n)-A250120(n)`
-/

namespace A312948.P10586888994795492030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313898 n - A250120 n)

end

end A312948.P10586888994795492030

namespace A312948

/-- `A008574(n)+A313898(n)-A250120(n)` -/
def P10586888994795492030.Spec : Prop :=
  ∀ n, P10586888994795492030.a n = A312948 n

end A312948

/-! ## A312948.P17588647233027703260

`A315698(n)-(A330025(n)+n)`
-/

namespace A312948.P17588647233027703260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - (A330025 n + (n : ℤ))

end

end A312948.P17588647233027703260

namespace A312948

/-- `A315698(n)-(A330025(n)+n)` -/
def P17588647233027703260.Spec : Prop :=
  ∀ n, P17588647233027703260.a n = A312948 n

end A312948

/-! ## A312948.P14566952872684507840

`A314252(n)-A047263(n+1)`
-/

namespace A312948.P14566952872684507840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A047263 (n + 1)

end

end A312948.P14566952872684507840

namespace A312948

/-- `A314252(n)-A047263(n+1)` -/
def P14566952872684507840.Spec : Prop :=
  ∀ n, P14566952872684507840.a n = A312948 n

end A312948

/-! ## A312948.P3598419128947586833

`A314252(n)-A004525(A151988(2*n))`
-/

namespace A312948.P3598419128947586833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A004525 (A151988 (2 * n)).toNat

end

end A312948.P3598419128947586833

namespace A312948

/-- `A314252(n)-A004525(A151988(2*n))` -/
def P3598419128947586833.Spec : Prop :=
  ∀ n, P3598419128947586833.a n = A312948 n

end A312948

/-! ## A312948.P16193277904817542993

`A008486(n)+A311634(n)-A004396(A311634(n))`
-/

namespace A312948.P16193277904817542993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A311634 n - A004396 (A311634 n).toNat)

end

end A312948.P16193277904817542993

namespace A312948

/-- `A008486(n)+A311634(n)-A004396(A311634(n))` -/
def P16193277904817542993.Spec : Prop :=
  ∀ n, P16193277904817542993.a n = A312948 n

end A312948

/-! ## A312948.P5745866997992796924

`A314164(n)-n`
-/

namespace A312948.P5745866997992796924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314164 n - (n : ℤ)

end

end A312948.P5745866997992796924

namespace A312948

/-- `A314164(n)-n` -/
def P5745866997992796924.Spec : Prop :=
  ∀ n, P5745866997992796924.a n = A312948 n

end A312948

/-!
# A312949: Coordination sequence Gal.6.443.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312949, there is no canonical definition to state claims against.
-/

/-! ## A312949.P6344420352584669771

`A324683(A329070(n))+A312948(n)`
-/

namespace A312949.P6344420352584669771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324683 (A329070 n).toNat + A312948 n

end

end A312949.P6344420352584669771

/-! ## A312949.P4350251780619939270

`A312948(n)+A016402(A013946(n+1))*A343095(n)`
-/

namespace A312949.P4350251780619939270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A016402 (A013946 (n + 1)).toNat * A343095 n

end

end A312949.P4350251780619939270

/-! ## A312949.P1208755558141114053

`A312948(n)+A016402(A013946(n+1))*A090368(n+3)`
-/

namespace A312949.P1208755558141114053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A016402 (A013946 (n + 1)).toNat * A090368 (n + 3)

end

end A312949.P1208755558141114053

/-!
# A312950: Coordination sequence Gal.6.151.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312950, the canonical program `A312950.P6413655452689753570` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312950 has offset 0).

The definition of A312950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312950.P6413655452689753570

`a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13, a(4)=18, a(5)=23, a(6)=28, a(7)=33, a(8)=38`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A312950

/-- `a(n-1)+a(n-2)-2*a(n-4)+a(n-6)+a(n-7)-a(n-8)` -/
def P6413655452689753570.Spec : Prop :=
  ∀ n, P6413655452689753570.a n = A312950 n

theorem P6413655452689753570.correct : P6413655452689753570.Spec := by
  intro n
  simp only [A312950]

end A312950

/-! ## A312950.P4450986463806015888

`A311475(n)+A002264(n+1)`
-/

namespace A312950.P4450986463806015888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + A002264 (n + 1)

end

end A312950.P4450986463806015888

namespace A312950

/-- `A311475(n)+A002264(n+1)` -/
def P4450986463806015888.Spec : Prop :=
  ∀ n, P4450986463806015888.a n = A312950 n

end A312950

/-! ## A312950.P2485359284510542001

`A311475(n)+n-A004396(n)`
-/

namespace A312950.P2485359284510542001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311475 n + ((n : ℤ) - A004396 n)

end

end A312950.P2485359284510542001

namespace A312950

/-- `A311475(n)+n-A004396(n)` -/
def P2485359284510542001.Spec : Prop :=
  ∀ n, P2485359284510542001.a n = A312950 n

end A312950

/-! ## A312950.P14228090180280805803

`A042965(n+1)+A311475(n)-n`
-/

namespace A312950.P14228090180280805803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1) + (A311475 n - (n : ℤ))

end

end A312950.P14228090180280805803

namespace A312950

/-- `A042965(n+1)+A311475(n)-n` -/
def P14228090180280805803.Spec : Prop :=
  ∀ n, P14228090180280805803.a n = A312950 n

end A312950

/-! ## A312950.P16087249767144456929

`A008486(n)+A311475(n)-A008576(n)`
-/

namespace A312950.P16087249767144456929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A311475 n - A008576 n)

end

end A312950.P16087249767144456929

namespace A312950

/-- `A008486(n)+A311475(n)-A008576(n)` -/
def P16087249767144456929.Spec : Prop :=
  ∀ n, P16087249767144456929.a n = A312950 n

end A312950

/-! ## A312950.P17432722622781561581

`A313540(n)+A010892(A004525(n)+2)`
-/

namespace A312950.P17432722622781561581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A010892 (A004525 n + 2).toNat

end

end A312950.P17432722622781561581

namespace A312950

/-- `A313540(n)+A010892(A004525(n)+2)` -/
def P17432722622781561581.Spec : Prop :=
  ∀ n, P17432722622781561581.a n = A312950 n

end A312950

/-! ## A312950.P3437818266933968025

`A313583(n)-A004396(A004525(n))`
-/

namespace A312950.P3437818266933968025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n - A004396 (A004525 n).toNat

end

end A312950.P3437818266933968025

namespace A312950

/-- `A313583(n)-A004396(A004525(n))` -/
def P3437818266933968025.Spec : Prop :=
  ∀ n, P3437818266933968025.a n = A312950 n

end A312950

/-! ## A312950.P5640987529947120843

`A310405(n)-floor((n+1)/3)`
-/

namespace A312950.P5640987529947120843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310405 n - ⌊(n + 1 : ℚ) / 3⌋

end

end A312950.P5640987529947120843

namespace A312950

/-- `A310405(n)-floor((n+1)/3)` -/
def P5640987529947120843.Spec : Prop :=
  ∀ n, P5640987529947120843.a n = A312950 n

end A312950

/-! ## A312950.P12611379511037384875

`A004396(n)+A310405(n)-n`
-/

namespace A312950.P12611379511037384875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A310405 n - (n : ℤ))

end

end A312950.P12611379511037384875

namespace A312950

/-- `A004396(n)+A310405(n)-n` -/
def P12611379511037384875.Spec : Prop :=
  ∀ n, P12611379511037384875.a n = A312950 n

end A312950

/-! ## A312950.P5607126239211997007

`A008576(n)+A310405(n)-A008486(n)`
-/

namespace A312950.P5607126239211997007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A310405 n - A008486 n)

end

end A312950.P5607126239211997007

namespace A312950

/-- `A008576(n)+A310405(n)-A008486(n)` -/
def P5607126239211997007.Spec : Prop :=
  ∀ n, P5607126239211997007.a n = A312950 n

end A312950

/-! ## A312950.P1333323308204457845

`A004525(n)+A310459(n)-n`
-/

namespace A312950.P1333323308204457845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310459 n - (n : ℤ))

end

end A312950.P1333323308204457845

namespace A312950

/-- `A004525(n)+A310459(n)-n` -/
def P1333323308204457845.Spec : Prop :=
  ∀ n, P1333323308204457845.a n = A312950 n

end A312950

/-! ## A312950.P11005990940227617271

`A313646(n)-A004525(n)`
-/

namespace A312950.P11005990940227617271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313646 n - A004525 n

end

end A312950.P11005990940227617271

namespace A312950

/-- `A313646(n)-A004525(n)` -/
def P11005990940227617271.Spec : Prop :=
  ∀ n, P11005990940227617271.a n = A312950 n

end A312950

/-! ## A312950.P3706637529825453473

`Δ[A011848(n)]+A313646(n)-n`
-/

namespace A312950.P3706637529825453473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A313646 n - (n : ℤ))

end

end A312950.P3706637529825453473

namespace A312950

/-- `Δ[A011848(n)]+A313646(n)-n` -/
def P3706637529825453473.Spec : Prop :=
  ∀ n, P3706637529825453473.a n = A312950 n

end A312950

/-! ## A312950.P12268156552719994024

`abs(10*n-A315517(n))`
-/

namespace A312950.P12268156552719994024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315517 n|

end

end A312950.P12268156552719994024

namespace A312950

/-- `abs(10*n-A315517(n))` -/
def P12268156552719994024.Spec : Prop :=
  ∀ n, P12268156552719994024.a n = A312950 n

end A312950

/-! ## A312950.P2436666814936196793

`A313789(n)-A004396(n)`
-/

namespace A312950.P2436666814936196793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A004396 n

end

end A312950.P2436666814936196793

namespace A312950

/-- `A313789(n)-A004396(n)` -/
def P2436666814936196793.Spec : Prop :=
  ∀ n, P2436666814936196793.a n = A312950 n

end A312950

/-! ## A312950.P451706744771704739

`∑[A022003(n)]+A313789(n)-n`
-/

namespace A312950.P451706744771704739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313789 n - (n : ℤ))

end

end A312950.P451706744771704739

namespace A312950

/-- `∑[A022003(n)]+A313789(n)-n` -/
def P451706744771704739.Spec : Prop :=
  ∀ n, P451706744771704739.a n = A312950 n

end A312950

/-! ## A312950.P5765499916321470295

`A313789(n)-A002264(2*n+1)`
-/

namespace A312950.P5765499916321470295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n - A002264 (2 * n + 1)

end

end A312950.P5765499916321470295

namespace A312950

/-- `A313789(n)-A002264(2*n+1)` -/
def P5765499916321470295.Spec : Prop :=
  ∀ n, P5765499916321470295.a n = A312950 n

end A312950

/-! ## A312950.P12871724908287840555

`A314167(n)-n`
-/

namespace A312950.P12871724908287840555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314167 n - (n : ℤ)

end

end A312950.P12871724908287840555

namespace A312950

/-- `A314167(n)-n` -/
def P12871724908287840555.Spec : Prop :=
  ∀ n, P12871724908287840555.a n = A312950 n

end A312950

/-! ## A312950.P879351654808556822

`abs(A008592(n)-(A314825(n)+n))`
-/

namespace A312950.P879351654808556822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - (A314825 n + (n : ℤ))|

end

end A312950.P879351654808556822

namespace A312950

/-- `abs(A008592(n)-(A314825(n)+n))` -/
def P879351654808556822.Spec : Prop :=
  ∀ n, P879351654808556822.a n = A312950 n

end A312950

/-!
# A312951: Coordination sequence Gal.5.154.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312951, there is no canonical definition to state claims against.
-/

/-! ## A312951.P13328985651069412873

`A312906(n)+A001222(A146996(n+1))`
-/

namespace A312951.P13328985651069412873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312906 n + A001222 (A146996 (n + 1)).toNat

end

end A312951.P13328985651069412873

/-! ## A312951.P5335194704578378301

`round(1/acot(5*n))-A217869((n+1)²)`
-/

namespace A312951.P5335194704578378301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (5 * n : ℝ)) - A217869 ((n + 1) ^ 2)

end

end A312951.P5335194704578378301

/-! ## A312951.P5507905142743680711

`A008706(n)-A001222(A157809(n))`
-/

namespace A312951.P5507905142743680711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001222 (A157809 n).toNat

end

end A312951.P5507905142743680711

/-! ## A312951.P15032916487665652659

`A008706(n)-A001221(A224071(n))`
-/

namespace A312951.P15032916487665652659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A001221 (A224071 n).toNat

end

end A312951.P15032916487665652659

/-! ## A312951.P496608728180994246

`A250120(n)-A087942(A135573(n))`
-/

namespace A312951.P496608728180994246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A087942 (A135573 n).toNat

end

end A312951.P496608728180994246

/-!
# A312952: Coordination sequence Gal.5.196.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312952, there is no canonical definition to state claims against.
-/

/-! ## A312952.P298396012060196281

`A312953(n)-A127326(A058682(n))`
-/

namespace A312952.P298396012060196281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312953 n - A127326 (A058682 n).toNat

end

end A312952.P298396012060196281

/-! ## A312952.P8350007471419525582

`A312953(n)-A280618(A001353(n))`
-/

namespace A312952.P8350007471419525582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312953 n - A280618 (A001353 n).toNat

end

end A312952.P8350007471419525582

/-! ## A312952.P2824231170668982196

`A312951(n)+A079998(A150058(n))`
-/

namespace A312952.P2824231170668982196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312951 n + A079998 (A150058 n).toNat

end

end A312952.P2824231170668982196

/-! ## A312952.P11786073340001994235

`A310413(n)-A060950(A000110(n))`
-/

namespace A312952.P11786073340001994235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 n - A060950 (A000110 n).toNat

end

end A312952.P11786073340001994235

/-! ## A312952.P15142508881550067843

`A187199(A289229(n+1)+A160747(n))`
-/

namespace A312952.P15142508881550067843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187199 (A289229 (n + 1) + A160747 n).toNat

end

end A312952.P15142508881550067843

/-!
# A312953: Coordination sequence Gal.5.149.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312953, there is no canonical definition to state claims against.
-/

/-! ## A312953.P14733747696845376437

`A312952(n)+A127326(A058682(n))`
-/

namespace A312953.P14733747696845376437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312952 n + A127326 (A058682 n).toNat

end

end A312953.P14733747696845376437

/-! ## A312953.P2609693363730924922

`A312952(n)+A280618(A001353(n))`
-/

namespace A312953.P2609693363730924922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312952 n + A280618 (A001353 n).toNat

end

end A312953.P2609693363730924922

/-! ## A312953.P5688044120092750938

`A311374(n)+A257990(A002212(n))`
-/

namespace A312953.P5688044120092750938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311374 n + A257990 (A002212 n).toNat

end

end A312953.P5688044120092750938

/-! ## A312953.P7598596415186402096

`A331383(A089259(n))+A312902(n)`
-/

namespace A312953.P7598596415186402096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331383 (A089259 n).toNat + A312902 n

end

end A312953.P7598596415186402096

/-!
# A312954: Coordination sequence Gal.6.365.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312954, there is no canonical definition to state claims against.
-/

/-! ## A312954.P8241252983851652493

`A312951(n)+A037859(A327644(n))`
-/

namespace A312954.P8241252983851652493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312951 n + A037859 (A327644 n).toNat

end

end A312954.P8241252983851652493

/-! ## A312954.P4949000811975369409

`A312953(n)+A035202(A226736(n+1))`
-/

namespace A312954.P4949000811975369409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312953 n + A035202 (A226736 (n + 1)).toNat

end

end A312954.P4949000811975369409

/-! ## A312954.P18162629349244005195

`A313079(n)-A033665(A033818(n+1))`
-/

namespace A312954.P18162629349244005195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313079 n - A033665 (A033818 (n + 1)).toNat

end

end A312954.P18162629349244005195

/-! ## A312954.P15665650701553508898

`A311972(n)+A326413(A005348(n+1))²`
-/

namespace A312954.P15665650701553508898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311972 n + A326413 (A005348 (n + 1)).toNat ^ 2

end

end A312954.P15665650701553508898

/-!
# A312955: Coordination sequence Gal.5.92.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312955, there is no canonical definition to state claims against.
-/

/-! ## A312955.P3157779162599773265

`A301299(n)+A007949(A007272(n))`
-/

namespace A312955.P3157779162599773265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A007949 (A007272 n).toNat

end

end A312955.P3157779162599773265

/-! ## A312955.P13515768493739280194

`A301299(n)+A078442(A207088(2*n+3))`
-/

namespace A312955.P13515768493739280194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301299 n + A078442 (A207088 (2 * n + 3)).toNat

end

end A312955.P13515768493739280194

/-! ## A312955.P14844108524604064589

`A312115(n)+A131533(A152035(n))`
-/

namespace A312955.P14844108524604064589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312115 n + A131533 (A152035 n).toNat

end

end A312955.P14844108524604064589

/-! ## A312955.P15664148381961532467

`A008574(n)+A001222(A261420(n))`
-/

namespace A312955.P15664148381961532467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + A001222 (A261420 n).toNat

end

end A312955.P15664148381961532467

/-! ## A312955.P11093918273017447736

`A314728(n)-A188014(A059020(n+1))`
-/

namespace A312955.P11093918273017447736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314728 n - A188014 (A059020 (n + 1)).toNat

end

end A312955.P11093918273017447736

/-!
# A312956: Coordination sequence Gal.5.264.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312956, there is no canonical definition to state claims against.
-/

/-! ## A312956.P3586642148521807120

`xor(A190938(A184231(n+1)), A312958(n))`
-/

namespace A312956.P3586642148521807120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A190938 (A184231 (n + 1)).toNat) (A312958 n)

end

end A312956.P3586642148521807120

/-! ## A312956.P16764309498718761848

`A311257(n)+A001221(A041473(n))`
-/

namespace A312956.P16764309498718761848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A001221 (A041473 n).toNat

end

end A312956.P16764309498718761848

/-! ## A312956.P16355475860650926764

`A319395(A041129(n))+A311521(n)`
-/

namespace A312956.P16355475860650926764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319395 (A041129 n).toNat + A311521 n

end

end A312956.P16355475860650926764

/-! ## A312956.P5583044224622757689

`A311617(n)+A189640(A201204(n))`
-/

namespace A312956.P5583044224622757689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311617 n + A189640 (A201204 n).toNat

end

end A312956.P5583044224622757689

/-! ## A312956.P13333557036374867999

`A311591(n)+A096159(A309243(n+1))`
-/

namespace A312956.P13333557036374867999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311591 n + A096159 (A309243 (n + 1)).toNat

end

end A312956.P13333557036374867999

/-!
# A312957: Coordination sequence Gal.6.501.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312957, there is no canonical definition to state claims against.
-/

/-! ## A312957.P8080357939296325236

`A311614(n)+A084888(A126068(n))`
-/

namespace A312957.P8080357939296325236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311614 n + A084888 (A126068 n).toNat

end

end A312957.P8080357939296325236

/-! ## A312957.P15400109495279774426

`A311493(n)+A025474(A000108(n))`
-/

namespace A312957.P15400109495279774426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311493 n + A025474 (A000108 n).toNat

end

end A312957.P15400109495279774426

/-! ## A312957.P16107034653427951459

`A311984(n)+A288520(A001444(n))`
-/

namespace A312957.P16107034653427951459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311984 n + A288520 (A001444 n).toNat

end

end A312957.P16107034653427951459

/-! ## A312957.P9357530302734980768

`A301688(n)+A175190(A057977(n))`
-/

namespace A312957.P9357530302734980768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301688 n + A175190 (A057977 n).toNat

end

end A312957.P9357530302734980768

/-! ## A312957.P14667355001395667727

`A355301(A301688(n)+A287383(n))`
-/

namespace A312957.P14667355001395667727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355301 (A301688 n + A287383 n).toNat

end

end A312957.P14667355001395667727

/-!
# A312958: Coordination sequence Gal.6.266.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312958, there is no canonical definition to state claims against.
-/

/-! ## A312958.P12610683364950958743

`xor(A190938(A184231(n+1)), A312956(n))`
-/

namespace A312958.P12610683364950958743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A190938 (A184231 (n + 1)).toNat) (A312956 n)

end

end A312958.P12610683364950958743

/-! ## A312958.P1190184887734718052

`A119930(A244223(n+1))-1+n`
-/

namespace A312958.P1190184887734718052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119930 (A244223 (n + 1)).toNat - 1 + (n : ℤ)

end

end A312958.P1190184887734718052

/-! ## A312958.P13992586923429548086

`A301670(n)+A158819(A125273(n))`
-/

namespace A312958.P13992586923429548086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301670 n + A158819 (A125273 n).toNat

end

end A312958.P13992586923429548086

/-! ## A312958.P18113926733505841520

`A311542(n)+A157928(A148942(n))`
-/

namespace A312958.P18113926733505841520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311542 n + A157928 (A148942 n).toNat

end

end A312958.P18113926733505841520

/-! ## A312958.P15980792912730541638

`A311814(n)+A162642(A148942(n))`
-/

namespace A312958.P15980792912730541638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311814 n + A162642 (A148942 n).toNat

end

end A312958.P15980792912730541638

/-!
# A312959: Coordination sequence Gal.6.465.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312959, there is no canonical definition to state claims against.
-/

/-! ## A312959.P12455431929326641536

`A314847(n)-A340988(A017305(n))`
-/

namespace A312959.P12455431929326641536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n - A340988 ((A017305 n).toNat + 91)

end

end A312959.P12455431929326641536

/-! ## A312959.P2586313098270397645

`A311347(n)+A001221(A002628(n))`
-/

namespace A312959.P2586313098270397645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311347 n + A001221 (A002628 n).toNat

end

end A312959.P2586313098270397645

/-! ## A312959.P9028771834107274582

`A016777(n)+A001222(A344063(n))`
-/

namespace A312959.P9028771834107274582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n + A001222 (A344063 n).toNat

end

end A312959.P9028771834107274582

/-! ## A312959.P9192957981564441220

`A311267(n)+A001221(A218939(n))`
-/

namespace A312959.P9192957981564441220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311267 n + A001221 (A218939 n).toNat

end

end A312959.P9192957981564441220

/-! ## A312959.P1702137223280155569

`A298024(n)-A000035(A185544(n))`
-/

namespace A312959.P1702137223280155569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A000035 (A185544 n).toNat

end

end A312959.P1702137223280155569

/-!
# A312960: Coordination sequence Gal.4.106.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312960, the canonical program `A312960.P4476342324315307319` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312960 has offset 0).

The definition of A312960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A312960.P4476342324315307319

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=13, a(4)=18, a(5)=24, a(6)=28, a(7)=32`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A312960

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P4476342324315307319.Spec : Prop :=
  ∀ n, P4476342324315307319.a n = A312960 n

theorem P4476342324315307319.correct : P4476342324315307319.Spec := by
  intro n
  simp only [A312960]

end A312960

/-! ## A312960.P11691842262934005880

`A298024(n)-A003982(A062383(n))`
-/

namespace A312960.P11691842262934005880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A003982 (A062383 n).toNat

end

end A312960.P11691842262934005880

namespace A312960

/-- `A298024(n)-A003982(A062383(n))` -/
def P11691842262934005880.Spec : Prop :=
  ∀ n, P11691842262934005880.a n = A312960 n

end A312960

/-! ## A312960.P7913218198053098375

`A298024(n)-A063524(A004526(n))`
-/

namespace A312960.P7913218198053098375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A063524 (A004526 n).toNat

end

end A312960.P7913218198053098375

namespace A312960

/-- `A298024(n)-A063524(A004526(n))` -/
def P7913218198053098375.Spec : Prop :=
  ∀ n, P7913218198053098375.a n = A312960 n

end A312960

/-! ## A312960.P13592890233681938186

`A298024(n)-A014707(A053644(n))`
-/

namespace A312960.P13592890233681938186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A014707 (A053644 n).toNat

end

end A312960.P13592890233681938186

namespace A312960

/-- `A298024(n)-A014707(A053644(n))` -/
def P13592890233681938186.Spec : Prop :=
  ∀ n, P13592890233681938186.a n = A312960 n

end A312960

/-! ## A312960.P6435329973754755027

`A298024(n)-A063524(A029923(n))`
-/

namespace A312960.P6435329973754755027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A063524 (A029923 n).toNat

end

end A312960.P6435329973754755027

namespace A312960

/-- `A298024(n)-A063524(A029923(n))` -/
def P6435329973754755027.Spec : Prop :=
  ∀ n, P6435329973754755027.a n = A312960 n

end A312960

/-! ## A312960.P11818818568401197573

`A298024(n)-A010051(A006874(n+1))`
-/

namespace A312960.P11818818568401197573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A010051 (A006874 (n + 1)).toNat

end

end A312960.P11818818568401197573

namespace A312960

/-- `A298024(n)-A010051(A006874(n+1))` -/
def P11818818568401197573.Spec : Prop :=
  ∀ n, P11818818568401197573.a n = A312960 n

end A312960

/-! ## A312960.P16055685003929198592

`A298024(n)-A010051(A008805(n))`
-/

namespace A312960.P16055685003929198592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A010051 (A008805 n).toNat

end

end A312960.P16055685003929198592

namespace A312960

/-- `A298024(n)-A010051(A008805(n))` -/
def P16055685003929198592.Spec : Prop :=
  ∀ n, P16055685003929198592.a n = A312960 n

end A312960

/-! ## A312960.P3312279291079691486

`A298024(n)-A049084(A008642(n))`
-/

namespace A312960.P3312279291079691486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A049084 (A008642 n).toNat

end

end A312960.P3312279291079691486

namespace A312960

/-- `A298024(n)-A049084(A008642(n))` -/
def P3312279291079691486.Spec : Prop :=
  ∀ n, P3312279291079691486.a n = A312960 n

end A312960

/-! ## A312960.P3504308630316687047

`A298024(n)-A048113(A000124(n))`
-/

namespace A312960.P3504308630316687047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298024 n - A048113 (A000124 n).toNat

end

end A312960.P3504308630316687047

namespace A312960

/-- `A298024(n)-A048113(A000124(n))` -/
def P3504308630316687047.Spec : Prop :=
  ∀ n, P3504308630316687047.a n = A312960 n

end A312960

/-!
# A312961: Coordination sequence Gal.6.152.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312961, the canonical program `A312961.P11569695398906220671` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312961 has offset 0).

The definition of A312961 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312961.P11569695398906220671

`abs(A008592(n)-A315516(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A312961

/-- `abs(A008592(n)-A315516(n))` -/
def P11569695398906220671.Spec : Prop :=
  ∀ n, P11569695398906220671.a n = A312961 n

theorem P11569695398906220671.correct : P11569695398906220671.Spec := by
  intro n
  simp only [A312961]

end A312961

/-! ## A312961.P1618380831612403538

`2*A008706(n)-A315516(n)`
-/

namespace A312961.P1618380831612403538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315516 n

end

end A312961.P1618380831612403538

namespace A312961

/-- `2*A008706(n)-A315516(n)` -/
def P1618380831612403538.Spec : Prop :=
  ∀ n, P1618380831612403538.a n = A312961 n

end A312961

/-! ## A312961.P13624083152551003822

`A135042(2*n+1)-A315516(n)`
-/

namespace A312961.P13624083152551003822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315516 n

end

end A312961.P13624083152551003822

namespace A312961

/-- `A135042(2*n+1)-A315516(n)` -/
def P13624083152551003822.Spec : Prop :=
  ∀ n, P13624083152551003822.a n = A312961 n

end A312961

/-! ## A312961.P12354312872917118146

`A008458(n)+A008574(n)-A315516(n)`
-/

namespace A312961.P12354312872917118146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315516 n)

end

end A312961.P12354312872917118146

namespace A312961

/-- `A008458(n)+A008574(n)-A315516(n)` -/
def P12354312872917118146.Spec : Prop :=
  ∀ n, P12354312872917118146.a n = A312961 n

end A312961

/-! ## A312961.P3389402554526610417

`∑{d}[A008592(n)-A315516(n), A000010(#)]`
-/

namespace A312961.P3389402554526610417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312961.P3389402554526610417

namespace A312961

/-- `∑{d}[A008592(n)-A315516(n), A000010(#)]` -/
def P3389402554526610417.Spec : Prop :=
  ∀ n, P3389402554526610417.a n = A312961 n

end A312961

/-! ## A312961.P3660011928658425986

`A315516(n)-A005843(A315516(n)-A008706(n))`
-/

namespace A312961.P3660011928658425986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315516 n - A005843 (A315516 n - A008706 n).toNat

end

end A312961.P3660011928658425986

namespace A312961

/-- `A315516(n)-A005843(A315516(n)-A008706(n))` -/
def P3660011928658425986.Spec : Prop :=
  ∀ n, P3660011928658425986.a n = A312961 n

end A312961

/-! ## A312961.P5245135261805581866

`A005843(A008706(n))-A315516(n)`
-/

namespace A312961.P5245135261805581866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315516 n

end

end A312961.P5245135261805581866

namespace A312961

/-- `A005843(A008706(n))-A315516(n)` -/
def P5245135261805581866.Spec : Prop :=
  ∀ n, P5245135261805581866.a n = A312961 n

end A312961

/-! ## A312961.P10315739557380374072

`A065502(A008458(n))-A315516(n)`
-/

namespace A312961.P10315739557380374072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315516 n

end

end A312961.P10315739557380374072

namespace A312961

/-- `A065502(A008458(n))-A315516(n)` -/
def P10315739557380374072.Spec : Prop :=
  ∀ n, P10315739557380374072.a n = A312961 n

end A312961

/-! ## A312961.P8336552502378113485

`(A008592(n)-A315516(n))^A051777(∑[n+1]+2)`
-/

namespace A312961.P8336552502378113485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315516 n : ℚ) ^ (A051777 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℤ)

end

end A312961.P8336552502378113485

namespace A312961

/-- `(A008592(n)-A315516(n))^A051777(∑[n+1]+2)` -/
def P8336552502378113485.Spec : Prop :=
  ∀ n, P8336552502378113485.a n = (A312961 n : ℚ)

end A312961

/-!
# A312962: Coordination sequence Gal.5.152.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312962, there is no canonical definition to state claims against.
-/

/-! ## A312962.P15664485602334694083

`xor(A295303(A165883(3*n)), A312192(n))`
-/

namespace A312962.P15664485602334694083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A295303 (A165883 (3 * n)).toNat) (A312192 n)

end

end A312962.P15664485602334694083

/-! ## A312962.P780419788330951541

`A312948(n)+A294881(A196655(n))`
-/

namespace A312962.P780419788330951541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A294881 (A196655 n).toNat

end

end A312962.P780419788330951541

/-! ## A312962.P2441905150790332527

`A301678(n)-A001221(A150808(n))`
-/

namespace A312962.P2441905150790332527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n - A001221 (A150808 n).toNat

end

end A312962.P2441905150790332527

/-! ## A312962.P10345829279891023415

`A313598(n)-A257990(A007052(n))`
-/

namespace A312962.P10345829279891023415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313598 n - A257990 (A007052 n).toNat

end

end A312962.P10345829279891023415

/-! ## A312962.P15422495701451640596

`xor(A087117(A201648(n+1)), A250120(n))`
-/

namespace A312962.P15422495701451640596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087117 (A201648 (n + 1)).toNat) (A250120 n)

end

end A312962.P15422495701451640596

/-!
# A312963: Coordination sequence Gal.6.153.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312963, the canonical program `A312963.P18354648499990341232` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312963 has offset 0).

The definition of A312963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2440 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312963.P18354648499990341232

`A311549(n)+A004525(n-A004396(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A312963

/-- `A311549(n)+A004525(n-A004396(n))` -/
def P18354648499990341232.Spec : Prop :=
  ∀ n, P18354648499990341232.a n = A312963 n

theorem P18354648499990341232.correct : P18354648499990341232.Spec := by
  intro n
  simp only [A312963]

end A312963

/-! ## A312963.P5906623992477401533

`abs(10*n-A315515(n))`
-/

namespace A312963.P5906623992477401533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315515 n|

end

end A312963.P5906623992477401533

namespace A312963

/-- `abs(10*n-A315515(n))` -/
def P5906623992477401533.Spec : Prop :=
  ∀ n, P5906623992477401533.a n = A312963 n

end A312963

/-! ## A312963.P15695189738101586845

`A008458(n)+A008574(n)-A315515(n)`
-/

namespace A312963.P15695189738101586845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315515 n)

end

end A312963.P15695189738101586845

namespace A312963

/-- `A008458(n)+A008574(n)-A315515(n)` -/
def P15695189738101586845.Spec : Prop :=
  ∀ n, P15695189738101586845.a n = A312963 n

end A312963

/-! ## A312963.P9507703510162994418

`A311536(n)+A002264(n+1)`
-/

namespace A312963.P9507703510162994418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + A002264 (n + 1)

end

end A312963.P9507703510162994418

namespace A312963

/-- `A311536(n)+A002264(n+1)` -/
def P9507703510162994418.Spec : Prop :=
  ∀ n, P9507703510162994418.a n = A312963 n

end A312963

/-! ## A312963.P676631746749543308

`A311536(n)+n-A004396(n)`
-/

namespace A312963.P676631746749543308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + ((n : ℤ) - A004396 n)

end

end A312963.P676631746749543308

namespace A312963

/-- `A311536(n)+n-A004396(n)` -/
def P676631746749543308.Spec : Prop :=
  ∀ n, P676631746749543308.a n = A312963 n

end A312963

/-! ## A312963.P4274184088604930886

`A008486(n)+A311536(n)-A008576(n)`
-/

namespace A312963.P4274184088604930886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A311536 n - A008576 n)

end

end A312963.P4274184088604930886

namespace A312963

/-- `A008486(n)+A311536(n)-A008576(n)` -/
def P4274184088604930886.Spec : Prop :=
  ∀ n, P4274184088604930886.a n = A312963 n

end A312963

/-! ## A312963.P7111154794586413676

`A004396(A005843(n))-(n-A311536(n))`
-/

namespace A312963.P7111154794586413676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A005843 n).toNat - ((n : ℤ) - A311536 n)

end

end A312963.P7111154794586413676

namespace A312963

/-- `A004396(A005843(n))-(n-A311536(n))` -/
def P7111154794586413676.Spec : Prop :=
  ∀ n, P7111154794586413676.a n = A312963 n

end A312963

/-! ## A312963.P17483140690050207360

`A313803(n)-A004396(n)`
-/

namespace A312963.P17483140690050207360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - A004396 n

end

end A312963.P17483140690050207360

namespace A312963

/-- `A313803(n)-A004396(n)` -/
def P17483140690050207360.Spec : Prop :=
  ∀ n, P17483140690050207360.a n = A312963 n

end A312963

/-! ## A312963.P3686533321180709666

`∑[A022003(n)]+A313803(n)-n`
-/

namespace A312963.P3686533321180709666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A313803 n - (n : ℤ))

end

end A312963.P3686533321180709666

namespace A312963

/-- `∑[A022003(n)]+A313803(n)-n` -/
def P3686533321180709666.Spec : Prop :=
  ∀ n, P3686533321180709666.a n = A312963 n

end A312963

/-! ## A312963.P4228121621661233958

`A313803(n)-A002264(2*n+1)`
-/

namespace A312963.P4228121621661233958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313803 n - A002264 (2 * n + 1)

end

end A312963.P4228121621661233958

namespace A312963

/-- `A313803(n)-A002264(2*n+1)` -/
def P4228121621661233958.Spec : Prop :=
  ∀ n, P4228121621661233958.a n = A312963 n

end A312963

/-! ## A312963.P11392714213457828491

`A310466(n)-∑[A021913(n)]`
-/

namespace A312963.P11392714213457828491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310466 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312963.P11392714213457828491

namespace A312963

/-- `A310466(n)-∑[A021913(n)]` -/
def P11392714213457828491.Spec : Prop :=
  ∀ n, P11392714213457828491.a n = A312963 n

end A312963

/-! ## A312963.P4382268127400131969

`A310466(n)-Δ[A011848(n)]`
-/

namespace A312963.P4382268127400131969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310466 n - (f1 (n + 1) - f1 n)

end

end A312963.P4382268127400131969

namespace A312963

/-- `A310466(n)-Δ[A011848(n)]` -/
def P4382268127400131969.Spec : Prop :=
  ∀ n, P4382268127400131969.a n = A312963 n

end A312963

/-! ## A312963.P15505979691482269734

`A310466(n)-A004524(n+1)`
-/

namespace A312963.P15505979691482269734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310466 n - A004524 (n + 1)

end

end A312963.P15505979691482269734

namespace A312963

/-- `A310466(n)-A004524(n+1)` -/
def P15505979691482269734.Spec : Prop :=
  ∀ n, P15505979691482269734.a n = A312963 n

end A312963

/-! ## A312963.P3650865537864871906

`A004525(n)+A310466(n)-n`
-/

namespace A312963.P3650865537864871906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310466 n - (n : ℤ))

end

end A312963.P3650865537864871906

namespace A312963

/-- `A004525(n)+A310466(n)-n` -/
def P3650865537864871906.Spec : Prop :=
  ∀ n, P3650865537864871906.a n = A312963 n

end A312963

/-!
# A312964: Coordination sequence Gal.6.73.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312964, there is no canonical definition to state claims against.
-/

/-! ## A312964.P1667765285945425665

`A312915(n)+A052344(A215576(n))`
-/

namespace A312964.P1667765285945425665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312915 n + A052344 (A215576 n).toNat

end

end A312964.P1667765285945425665

/-! ## A312964.P8177180398387965288

`A314780(n)-A183063(A210472(3*n+4))`
-/

namespace A312964.P8177180398387965288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314780 n - A183063 (A210472 (3 * n + 4)).toNat

end

end A312964.P8177180398387965288

/-!
# A312965: Coordination sequence Gal.6.373.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312965, there is no canonical definition to state claims against.
-/

/-! ## A312965.P16124184039350740555

`A072473(n+1)+A035232(A003946(n))`
-/

namespace A312965.P16124184039350740555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072473 (n + 1) + A035232 (A003946 n).toNat

end

end A312965.P16124184039350740555

/-! ## A312965.P850743101025319510

`A318451(A150603(n))+A001597(n+1)`
-/

namespace A312965.P850743101025319510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318451 (A150603 n).toNat + A001597 (n + 1)

end

end A312965.P850743101025319510

/-! ## A312965.P9986146657513815968

`A047206(A351596(n+1)+A075458(3*n+1))`
-/

namespace A312965.P9986146657513815968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047206 (A351596 (n + 1) + A075458 (3 * n + 1)).toNat

end

end A312965.P9986146657513815968

/-!
# A312966: Coordination sequence Gal.6.392.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312966, there is no canonical definition to state claims against.
-/

/-! ## A312966.P7874612511237140833

`A311197(n)+A001222(A148750(n))`
-/

namespace A312966.P7874612511237140833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311197 n + A001222 (A148750 n).toNat

end

end A312966.P7874612511237140833

/-! ## A312966.P17205921831344281192

`A177151(A022144(n))-A003987(n)`
-/

namespace A312966.P17205921831344281192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177151 (A022144 n).toNat - A003987 n

end

end A312966.P17205921831344281192

/-! ## A312966.P5939594141531333305

`xor(A301291(n), A340507(A149815(n)))`
-/

namespace A312966.P5939594141531333305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A301291 n) (A340507 (A149815 n).toNat)

end

end A312966.P5939594141531333305

/-! ## A312966.P7843118208636619561

`A311449(n)+A196049(A059377(n+1))`
-/

namespace A312966.P7843118208636619561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311449 n + A196049 (A059377 (n + 1)).toNat

end

end A312966.P7843118208636619561

/-! ## A312966.P1036649202353377368

`A285419(n+1)+A000120(A006749(n+1))`
-/

namespace A312966.P1036649202353377368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285419 (n + 1) + A000120 (A006749 (n + 1)).toNat

end

end A312966.P1036649202353377368

/-!
# A312967: Coordination sequence Gal.6.316.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312967, there is no canonical definition to state claims against.
-/

/-! ## A312967.P18399655604751275722

`A312928(n)+A225639(A299746(n+1))`
-/

namespace A312967.P18399655604751275722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312928 n + A225639 (A299746 (n + 1)).toNat

end

end A312967.P18399655604751275722

/-! ## A312967.P4782013456454480614

`∑[A330036(A066739(3*n+2)-2)]`
-/

namespace A312967.P4782013456454480614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 (A066739 (3 * n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312967.P4782013456454480614

/-! ## A312967.P6474633193318189237

`or(A001221(A143426(n)), A312100(n))`
-/

namespace A312967.P6474633193318189237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A143426 n).toNat) (A312100 n)

end

end A312967.P6474633193318189237

/-! ## A312967.P13012361126083411708

`or(A001221(A294531(n)), A311536(n))`
-/

namespace A312967.P13012361126083411708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A294531 n).toNat) (A311536 n)

end

end A312967.P13012361126083411708

/-! ## A312967.P17870527836167627937

`or(A001221(A135069(n+1)), A311536(n))`
-/

namespace A312967.P17870527836167627937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A135069 (n + 1)).toNat) (A311536 n)

end

end A312967.P17870527836167627937

/-!
# A312968: Coordination sequence Gal.6.315.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312968, there is no canonical definition to state claims against.
-/

/-! ## A312968.P12875151527461967000

`A314943(n)-A193238(A001444(n))`
-/

namespace A312968.P12875151527461967000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314943 n - A193238 (A001444 n).toNat

end

end A312968.P12875151527461967000

/-! ## A312968.P580625993548770147

`A312081(n)+A286493(A148740(n))`
-/

namespace A312968.P580625993548770147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312081 n + A286493 (A148740 n).toNat

end

end A312968.P580625993548770147

/-! ## A312968.P919820618635173125

`or(A312081(n), A353350(A134165(n)))`
-/

namespace A312968.P919820618635173125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A312081 n) (A353350 (A134165 n).toNat)

end

end A312968.P919820618635173125

/-!
# A312969: Coordination sequence Gal.6.254.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312969, the canonical program `A312969.P1122136448779470542` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312969 has offset 0).

The definition of A312969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312969.P1122136448779470542

`A004525(n)+A312926(n)-A004396(A004525(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A312969

/-- `A004525(n)+A312926(n)-A004396(A004525(n))` -/
def P1122136448779470542.Spec : Prop :=
  ∀ n, P1122136448779470542.a n = A312969 n

theorem P1122136448779470542.correct : P1122136448779470542.Spec := by
  intro n
  simp only [A312969]

end A312969

/-! ## A312969.P6493313847916875771

`A313110(n)-Δ[A011865(n)]`
-/

namespace A312969.P6493313847916875771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313110 n - (f1 (n + 1) - f1 n)

end

end A312969.P6493313847916875771

namespace A312969

/-- `A313110(n)-Δ[A011865(n)]` -/
def P6493313847916875771.Spec : Prop :=
  ∀ n, P6493313847916875771.a n = A312969 n

end A312969

/-! ## A312969.P18399908241753840671

`A313619(n)-A004396(A004525(n))`
-/

namespace A312969.P18399908241753840671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n - A004396 (A004525 n).toNat

end

end A312969.P18399908241753840671

namespace A312969

/-- `A313619(n)-A004396(A004525(n))` -/
def P18399908241753840671.Spec : Prop :=
  ∀ n, P18399908241753840671.a n = A312969 n

end A312969

/-! ## A312969.P4332960380377613633

`A313611(n)-A004525(A004396(n))`
-/

namespace A312969.P4332960380377613633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n - A004525 (A004396 n).toNat

end

end A312969.P4332960380377613633

namespace A312969

/-- `A313611(n)-A004525(A004396(n))` -/
def P4332960380377613633.Spec : Prop :=
  ∀ n, P4332960380377613633.a n = A312969 n

end A312969

/-! ## A312969.P2424870087099706668

`A310410(n)-A004396(n-A004525(n))`
-/

namespace A312969.P2424870087099706668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310410 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A312969.P2424870087099706668

namespace A312969

/-- `A310410(n)-A004396(n-A004525(n))` -/
def P2424870087099706668.Spec : Prop :=
  ∀ n, P2424870087099706668.a n = A312969 n

end A312969

/-! ## A312969.P9856203478722959906

`A310470(n)-∑[A021913(n)]`
-/

namespace A312969.P9856203478722959906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312969.P9856203478722959906

namespace A312969

/-- `A310470(n)-∑[A021913(n)]` -/
def P9856203478722959906.Spec : Prop :=
  ∀ n, P9856203478722959906.a n = A312969 n

end A312969

/-! ## A312969.P13833425515603703440

`A310470(n)-Δ[A011848(n)]`
-/

namespace A312969.P13833425515603703440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n - (f1 (n + 1) - f1 n)

end

end A312969.P13833425515603703440

namespace A312969

/-- `A310470(n)-Δ[A011848(n)]` -/
def P13833425515603703440.Spec : Prop :=
  ∀ n, P13833425515603703440.a n = A312969 n

end A312969

/-! ## A312969.P1962782610918857205

`A310470(n)-A004524(n+1)`
-/

namespace A312969.P1962782610918857205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310470 n - A004524 (n + 1)

end

end A312969.P1962782610918857205

namespace A312969

/-- `A310470(n)-A004524(n+1)` -/
def P1962782610918857205.Spec : Prop :=
  ∀ n, P1962782610918857205.a n = A312969 n

end A312969

/-! ## A312969.P8792761307200075781

`A004525(n)+A310470(n)-n`
-/

namespace A312969.P8792761307200075781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A310470 n - (n : ℤ))

end

end A312969.P8792761307200075781

namespace A312969

/-- `A004525(n)+A310470(n)-n` -/
def P8792761307200075781.Spec : Prop :=
  ∀ n, P8792761307200075781.a n = A312969 n

end A312969

/-! ## A312969.P7177322716279071753

`A004525(n)-(A004525(A005843(n))-A310470(n))`
-/

namespace A312969.P7177322716279071753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - (A004525 (A005843 n).toNat - A310470 n)

end

end A312969.P7177322716279071753

namespace A312969

/-- `A004525(n)-(A004525(A005843(n))-A310470(n))` -/
def P7177322716279071753.Spec : Prop :=
  ∀ n, P7177322716279071753.a n = A312969 n

end A312969

/-! ## A312969.P6272472256960106523

`abs(A008592(n)-A315512(n))`
-/

namespace A312969.P6272472256960106523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315512 n|

end

end A312969.P6272472256960106523

namespace A312969

/-- `abs(A008592(n)-A315512(n))` -/
def P6272472256960106523.Spec : Prop :=
  ∀ n, P6272472256960106523.a n = A312969 n

end A312969

/-! ## A312969.P16375455224294192762

`A008458(n)+A008574(n)-A315512(n)`
-/

namespace A312969.P16375455224294192762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315512 n)

end

end A312969.P16375455224294192762

namespace A312969

/-- `A008458(n)+A008574(n)-A315512(n)` -/
def P16375455224294192762.Spec : Prop :=
  ∀ n, P16375455224294192762.a n = A312969 n

end A312969

/-! ## A312969.P15487557318517406224

`A004525(A313280(n))+2*n`
-/

namespace A312969.P15487557318517406224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313280 n).toNat + (2 * n : ℤ)

end

end A312969.P15487557318517406224

namespace A312969

/-- `A004525(A313280(n))+2*n` -/
def P15487557318517406224.Spec : Prop :=
  ∀ n, P15487557318517406224.a n = A312969 n

end A312969

/-! ## A312969.P7169521503650595238

`A005843(n)+A004525(A310470(n))`
-/

namespace A312969.P7169521503650595238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A310470 n).toNat

end

end A312969.P7169521503650595238

namespace A312969

/-- `A005843(n)+A004525(A310470(n))` -/
def P7169521503650595238.Spec : Prop :=
  ∀ n, P7169521503650595238.a n = A312969 n

end A312969

/-! ## A312969.P14365417671906300310

`A004525(A008586(n))+A004525(A310470(n))`
-/

namespace A312969.P14365417671906300310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008586 n).toNat + A004525 (A310470 n).toNat

end

end A312969.P14365417671906300310

namespace A312969

/-- `A004525(A008586(n))+A004525(A310470(n))` -/
def P14365417671906300310.Spec : Prop :=
  ∀ n, P14365417671906300310.a n = A312969 n

end A312969

/-! ## A312969.P12156023851145183091

`A004525(n)+A004396(A310470(n)+n)`
-/

namespace A312969.P12156023851145183091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + A004396 (A310470 n + (n : ℤ)).toNat

end

end A312969.P12156023851145183091

namespace A312969

/-- `A004525(n)+A004396(A310470(n)+n)` -/
def P12156023851145183091.Spec : Prop :=
  ∀ n, P12156023851145183091.a n = A312969 n

end A312969

/-! ## A312969.P3668155841561199664

`A004525(A311536(2*n))`
-/

namespace A312969.P3668155841561199664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311536 (2 * n)).toNat

end

end A312969.P3668155841561199664

namespace A312969

/-- `A004525(A311536(2*n))` -/
def P3668155841561199664.Spec : Prop :=
  ∀ n, P3668155841561199664.a n = A312969 n

end A312969

/-! ## A312969.P9923049610574049843

`A004525(A313119(2*n)-n)`
-/

namespace A312969.P9923049610574049843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313119 (2 * n) - (n : ℤ)).toNat

end

end A312969.P9923049610574049843

namespace A312969

/-- `A004525(A313119(2*n)-n)` -/
def P9923049610574049843.Spec : Prop :=
  ∀ n, P9923049610574049843.a n = A312969 n

end A312969

/-! ## A312969.P12309418056485947726

`A004525(A314903(2*n)-n)`
-/

namespace A312969.P12309418056485947726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314903 (2 * n) - (n : ℤ)).toNat

end

end A312969.P12309418056485947726

namespace A312969

/-- `A004525(A314903(2*n)-n)` -/
def P12309418056485947726.Spec : Prop :=
  ∀ n, P12309418056485947726.a n = A312969 n

end A312969

/-! ## A312969.P3104219679514653035

`A004525(A310470(n)+A008574(n))`
-/

namespace A312969.P3104219679514653035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310470 n + A008574 n).toNat

end

end A312969.P3104219679514653035

namespace A312969

/-- `A004525(A310470(n)+A008574(n))` -/
def P3104219679514653035.Spec : Prop :=
  ∀ n, P3104219679514653035.a n = A312969 n

end A312969

/-!
# A312970: Coordination sequence Gal.5.15.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312970, there is no canonical definition to state claims against.
-/

/-! ## A312970.P17942048704587367022

`A312971(n)-A102683(A005043(n))`
-/

namespace A312970.P17942048704587367022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312971 n - A102683 (A005043 n).toNat

end

end A312970.P17942048704587367022

/-! ## A312970.P3763977080448146710

`A312971(n)-A107846(A224204(n+1))`
-/

namespace A312970.P3763977080448146710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312971 n - A107846 (A224204 (n + 1)).toNat

end

end A312970.P3763977080448146710

/-! ## A312970.P98300136252038925

`A312110(n)+A030301(A161221(n))`
-/

namespace A312970.P98300136252038925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312110 n + A030301 (A161221 n).toNat

end

end A312970.P98300136252038925

/-! ## A312970.P14988114331046853801

`A312069(n)+A007814(A000108(n))`
-/

namespace A312970.P14988114331046853801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312069 n + A007814 (A000108 n).toNat

end

end A312970.P14988114331046853801

/-! ## A312970.P7756671685406969457

`A311608(n)+A080101(A006389(n))`
-/

namespace A312970.P7756671685406969457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311608 n + A080101 (A006389 n).toNat

end

end A312970.P7756671685406969457

/-!
# A312971: Coordination sequence Gal.4.84.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312971, there is no canonical definition to state claims against.
-/

/-! ## A312971.P635082248341843632

`A312970(n)+A102683(A005043(n))`
-/

namespace A312971.P635082248341843632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312970 n + A102683 (A005043 n).toNat

end

end A312971.P635082248341843632

/-! ## A312971.P9868383121903851035

`or(A185274(A075162(n)), A312970(n))`
-/

namespace A312971.P9868383121903851035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185274 (A075162 n).toNat) (A312970 n)

end

end A312971.P9868383121903851035

/-! ## A312971.P11849406113112906771

`or(A014021(A000129(n)), A312970(n))`
-/

namespace A312971.P11849406113112906771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014021 (A000129 n).toNat) (A312970 n)

end

end A312971.P11849406113112906771

/-! ## A312971.P6371034558501666996

`A312970(n)+A010054(A241964(2*(n+1)))`
-/

namespace A312971.P6371034558501666996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312970 n + A010054 (A241964 (2 * (n + 1))).toNat

end

end A312971.P6371034558501666996

/-! ## A312971.P16582523497676912208

`or(A010891(A325865(2*(n+2))), A312970(n))`
-/

namespace A312971.P16582523497676912208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010891 (A325865 (2 * (n + 2))).toNat) (A312970 n)

end

end A312971.P16582523497676912208

/-!
# A312972: Coordination sequence Gal.6.308.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312972, there is no canonical definition to state claims against.
-/

/-! ## A312972.P15500575728273310730

`A312973(n)-A179801(A196729(n+1))`
-/

namespace A312972.P15500575728273310730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312973 n - A179801 (A196729 (n + 1)).toNat

end

end A312972.P15500575728273310730

/-! ## A312972.P15107150725891811525

`A312973(n)-A088950(A304901(n+1))`
-/

namespace A312972.P15107150725891811525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312973 n - A088950 (A304901 (n + 1)).toNat

end

end A312972.P15107150725891811525

/-! ## A312972.P11767534222875368379

`A312973(n)-A185284(A115334(n+1))`
-/

namespace A312972.P11767534222875368379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312973 n - A185284 (A115334 (n + 1)).toNat

end

end A312972.P11767534222875368379

/-! ## A312972.P4691386042345291470

`A312973(n)-A055641(A006720(n))`
-/

namespace A312972.P4691386042345291470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312973 n - A055641 (A006720 n).toNat

end

end A312972.P4691386042345291470

/-! ## A312972.P10825932956919283783

`A312973(A062399(n))`
-/

namespace A312972.P10825932956919283783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312973 (A062399 n).toNat

end

end A312972.P10825932956919283783

/-!
# A312973: Coordination sequence Gal.6.307.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312973, there is no canonical definition to state claims against.
-/

/-! ## A312973.P12010207714686543672

`A312972(n)+A179801(A196729(n+1))`
-/

namespace A312973.P12010207714686543672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312972 n + A179801 (A196729 (n + 1)).toNat

end

end A312973.P12010207714686543672

/-! ## A312973.P12937470501801990722

`A312972(n)+A088950(A304901(n+1))`
-/

namespace A312973.P12937470501801990722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312972 n + A088950 (A304901 (n + 1)).toNat

end

end A312973.P12937470501801990722

/-! ## A312973.P9572736080659097912

`A312972(n)+A055641(ceil(2^(n-1)))`
-/

namespace A312973.P9572736080659097912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312972 n + A055641 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A312973.P9572736080659097912

/-! ## A312973.P1551148133990293688

`A312946(n)+A016389(A019565(n))`
-/

namespace A312973.P1551148133990293688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312946 n + A016389 (A019565 n).toNat

end

end A312973.P1551148133990293688

/-! ## A312973.P7471588818567036848

`A312976(n)-A001221(A146587(n+1))`
-/

namespace A312973.P7471588818567036848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n - A001221 (A146587 (n + 1)).toNat

end

end A312973.P7471588818567036848

/-!
# A312974: Coordination sequence Gal.4.61.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312974, the canonical program `A312974.P7421975159170050839` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312974 has offset 0).

The definition of A312974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2494 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312974.P7421975159170050839

`A312549(n)-A238468(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312974

/-- `A312549(n)-A238468(n)` -/
def P7421975159170050839.Spec : Prop :=
  ∀ n, P7421975159170050839.a n = A312974 n

theorem P7421975159170050839.correct : P7421975159170050839.Spec := by
  intro n
  simp only [A312974]

end A312974

/-! ## A312974.P6423147726775361672

`A314753(n)-A238469(n)`
-/

namespace A312974.P6423147726775361672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 n - A238469 n

end

end A312974.P6423147726775361672

namespace A312974

/-- `A314753(n)-A238469(n)` -/
def P6423147726775361672.Spec : Prop :=
  ∀ n, P6423147726775361672.a n = A312974 n

end A312974

/-! ## A312974.P16736862659985579683

`A313051(n)+A238469(2*n)`
-/

namespace A312974.P16736862659985579683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + A238469 (2 * n)

end

end A312974.P16736862659985579683

namespace A312974

/-- `A313051(n)+A238469(2*n)` -/
def P16736862659985579683.Spec : Prop :=
  ∀ n, P16736862659985579683.a n = A312974 n

end A312974

/-! ## A312974.P5362418729997655590

`A313147(n)-Δ[A011860(n)]`
-/

namespace A312974.P5362418729997655590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n - (f1 (n + 1) - f1 n)

end

end A312974.P5362418729997655590

namespace A312974

/-- `A313147(n)-Δ[A011860(n)]` -/
def P5362418729997655590.Spec : Prop :=
  ∀ n, P5362418729997655590.a n = A312974 n

end A312974

/-! ## A312974.P13172878104962245421

`A313289(n)-Δ[2*A011860(n)]`
-/

namespace A312974.P13172878104962245421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313289 n - (f1 (n + 1) - f1 n)

end

end A312974.P13172878104962245421

namespace A312974

/-- `A313289(n)-Δ[2*A011860(n)]` -/
def P13172878104962245421.Spec : Prop :=
  ∀ n, P13172878104962245421.a n = A312974 n

end A312974

/-! ## A312974.P9146317129976705165

`A312183(n)+A238470(n)`
-/

namespace A312974.P9146317129976705165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312183 n + A238470 n

end

end A312974.P9146317129976705165

namespace A312974

/-- `A312183(n)+A238470(n)` -/
def P9146317129976705165.Spec : Prop :=
  ∀ n, P9146317129976705165.a n = A312974 n

end A312974

/-! ## A312974.P9931401864274559724

`round(A219529(A311586(n))/5)`
-/

namespace A312974.P9931401864274559724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A219529 (A311586 n).toNat : ℚ) / 5)

end

end A312974.P9931401864274559724

namespace A312974

/-- `round(A219529(A311586(n))/5)` -/
def P9931401864274559724.Spec : Prop :=
  ∀ n, P9931401864274559724.a n = A312974 n

end A312974

/-! ## A312974.P11648370324823773016

`abs(A008592(n)-A315511(n))`
-/

namespace A312974.P11648370324823773016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315511 n|

end

end A312974.P11648370324823773016

namespace A312974

/-- `abs(A008592(n)-A315511(n))` -/
def P11648370324823773016.Spec : Prop :=
  ∀ n, P11648370324823773016.a n = A312974 n

end A312974

/-! ## A312974.P16842119866603779838

`A008458(n)+A008574(n)-A315511(n)`
-/

namespace A312974.P16842119866603779838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315511 n)

end

end A312974.P16842119866603779838

namespace A312974

/-- `A008458(n)+A008574(n)-A315511(n)` -/
def P16842119866603779838.Spec : Prop :=
  ∀ n, P16842119866603779838.a n = A312974 n

end A312974

/-! ## A312974.P14231769130790637386

`round(A008576(A313780(n))/3)`
-/

namespace A312974.P14231769130790637386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008576 (A313780 n).toNat : ℚ) / 3)

end

end A312974.P14231769130790637386

namespace A312974

/-- `round(A008576(A313780(n))/3)` -/
def P14231769130790637386.Spec : Prop :=
  ∀ n, P14231769130790637386.a n = A312974 n

end A312974

/-! ## A312974.P3925568537008872763

`A004525(A313289(n))+2*n`
-/

namespace A312974.P3925568537008872763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313289 n).toNat + (2 * n : ℤ)

end

end A312974.P3925568537008872763

namespace A312974

/-- `A004525(A313289(n))+2*n` -/
def P3925568537008872763.Spec : Prop :=
  ∀ n, P3925568537008872763.a n = A312974 n

end A312974

/-! ## A312974.P7494684255818814532

`A004396(A310411(n)+2*n)`
-/

namespace A312974.P7494684255818814532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310411 n + (2 * n : ℤ)).toNat

end

end A312974.P7494684255818814532

namespace A312974

/-- `A004396(A310411(n)+2*n)` -/
def P7494684255818814532.Spec : Prop :=
  ∀ n, P7494684255818814532.a n = A312974 n

end A312974

/-! ## A312974.P4540611861142149479

`A004396(A313147(n)+2*n)`
-/

namespace A312974.P4540611861142149479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313147 n + (2 * n : ℤ)).toNat

end

end A312974.P4540611861142149479

namespace A312974

/-- `A004396(A313147(n)+2*n)` -/
def P4540611861142149479.Spec : Prop :=
  ∀ n, P4540611861142149479.a n = A312974 n

end A312974

/-! ## A312974.P11765286700719103187

`A004396(A310411(n)+n+n)`
-/

namespace A312974.P11765286700719103187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310411 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312974.P11765286700719103187

namespace A312974

/-- `A004396(A310411(n)+n+n)` -/
def P11765286700719103187.Spec : Prop :=
  ∀ n, P11765286700719103187.a n = A312974 n

end A312974

/-! ## A312974.P2741259801195759140

`A004396(A313147(n)+n+n)`
-/

namespace A312974.P2741259801195759140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313147 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312974.P2741259801195759140

namespace A312974

/-- `A004396(A313147(n)+n+n)` -/
def P2741259801195759140.Spec : Prop :=
  ∀ n, P2741259801195759140.a n = A312974 n

end A312974

/-! ## A312974.P15417880011826287310

`A314838(2*n)+A314838(n+1)-A314838(2*n+1)`
-/

namespace A312974.P15417880011826287310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314838 (2 * n) + (A314838 (n + 1) - A314838 (2 * n + 1))

end

end A312974.P15417880011826287310

namespace A312974

/-- `A314838(2*n)+A314838(n+1)-A314838(2*n+1)` -/
def P15417880011826287310.Spec : Prop :=
  ∀ n, P15417880011826287310.a n = A312974 n

end A312974

/-! ## A312974.P3060253541386111649

`A008458(A008574(n))-A314954(A008574(n))`
-/

namespace A312974.P3060253541386111649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A008574 n).toNat - A314954 (A008574 n).toNat

end

end A312974.P3060253541386111649

namespace A312974

/-- `A008458(A008574(n))-A314954(A008574(n))` -/
def P3060253541386111649.Spec : Prop :=
  ∀ n, P3060253541386111649.a n = A312974 n

end A312974

/-!
# A312975: Coordination sequence Gal.5.110.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312975, the canonical program `A312975.P9491113938046766116` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312975 has offset 0).

The definition of A312975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2464 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312975.P9491113938046766116

`2*A312932(n)-A312893(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312975

/-- `2*A312932(n)-A312893(n)` -/
def P9491113938046766116.Spec : Prop :=
  ∀ n, P9491113938046766116.a n = A312975 n

theorem P9491113938046766116.correct : P9491113938046766116.Spec := by
  intro n
  simp only [A312975]

end A312975

/-! ## A312975.P16596790797925950498

`A311612(n)+A004396(n-A004396(n))`
-/

namespace A312975.P16596790797925950498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A312975.P16596790797925950498

namespace A312975

/-- `A311612(n)+A004396(n-A004396(n))` -/
def P16596790797925950498.Spec : Prop :=
  ∀ n, P16596790797925950498.a n = A312975 n

end A312975

/-! ## A312975.P4173826132890274716

`A312893(n)+A005843(A312932(n)-A312893(n))`
-/

namespace A312975.P4173826132890274716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A005843 (A312932 n - A312893 n).toNat

end

end A312975.P4173826132890274716

namespace A312975

/-- `A312893(n)+A005843(A312932(n)-A312893(n))` -/
def P4173826132890274716.Spec : Prop :=
  ∀ n, P4173826132890274716.a n = A312975 n

end A312975

/-! ## A312975.P11565362467026118193

`A314848(n)-A128834(A006369(n))`
-/

namespace A312975.P11565362467026118193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n - A128834 (A006369 n).toNat

end

end A312975.P11565362467026118193

namespace A312975

/-- `A314848(n)-A128834(A006369(n))` -/
def P11565362467026118193.Spec : Prop :=
  ∀ n, P11565362467026118193.a n = A312975 n

end A312975

/-! ## A312975.P5854823724921999881

`A313538(n)-A128834(A004396(n))`
-/

namespace A312975.P5854823724921999881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 n - A128834 (A004396 n).toNat

end

end A312975.P5854823724921999881

namespace A312975

/-- `A313538(n)-A128834(A004396(n))` -/
def P5854823724921999881.Spec : Prop :=
  ∀ n, P5854823724921999881.a n = A312975 n

end A312975

/-! ## A312975.P8487535773574482291

`(A311612(n)+A310412(n))/2`
-/

namespace A312975.P8487535773574482291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311612 n + A310412 n : ℚ) / 2

end

end A312975.P8487535773574482291

namespace A312975

/-- `(A311612(n)+A310412(n))/2` -/
def P8487535773574482291.Spec : Prop :=
  ∀ n, P8487535773574482291.a n = (A312975 n : ℚ)

end A312975

/-! ## A312975.P17699576695718974800

`A310412(n)-A004396(n-A004396(n))`
-/

namespace A312975.P17699576695718974800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310412 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A312975.P17699576695718974800

namespace A312975

/-- `A310412(n)-A004396(n-A004396(n))` -/
def P17699576695718974800.Spec : Prop :=
  ∀ n, P17699576695718974800.a n = A312975 n

end A312975

/-! ## A312975.P16832299320368108274

`A311612(n)+A004525(A310412(n)-A311612(n))`
-/

namespace A312975.P16832299320368108274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311612 n + A004525 (A310412 n - A311612 n).toNat

end

end A312975.P16832299320368108274

namespace A312975

/-- `A311612(n)+A004525(A310412(n)-A311612(n))` -/
def P16832299320368108274.Spec : Prop :=
  ∀ n, P16832299320368108274.a n = A312975 n

end A312975

/-! ## A312975.P9054543920958476089

`A005843(A312932(n))-A312893(n)`
-/

namespace A312975.P9054543920958476089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A312932 n).toNat - A312893 n

end

end A312975.P9054543920958476089

namespace A312975

/-- `A005843(A312932(n))-A312893(n)` -/
def P9054543920958476089.Spec : Prop :=
  ∀ n, P9054543920958476089.a n = A312975 n

end A312975

/-! ## A312975.P17947618055122685211

`A314163(n)-A004396(A004396(2*n))`
-/

namespace A312975.P17947618055122685211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 n - A004396 (A004396 (2 * n)).toNat

end

end A312975.P17947618055122685211

namespace A312975

/-- `A314163(n)-A004396(A004396(2*n))` -/
def P17947618055122685211.Spec : Prop :=
  ∀ n, P17947618055122685211.a n = A312975 n

end A312975

/-! ## A312975.P17495202161850448063

`2*n+A004525(A313293(n))`
-/

namespace A312975.P17495202161850448063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004525 (A313293 n).toNat

end

end A312975.P17495202161850448063

namespace A312975

/-- `2*n+A004525(A313293(n))` -/
def P17495202161850448063.Spec : Prop :=
  ∀ n, P17495202161850448063.a n = A312975 n

end A312975

/-! ## A312975.P15279240339226029349

`A004525(A313293(n)+A008574(n))`
-/

namespace A312975.P15279240339226029349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313293 n + A008574 n).toNat

end

end A312975.P15279240339226029349

namespace A312975

/-- `A004525(A313293(n)+A008574(n))` -/
def P15279240339226029349.Spec : Prop :=
  ∀ n, P15279240339226029349.a n = A312975 n

end A312975

/-! ## A312975.P12987325744065553126

`A004525(A311612(n)+A310412(n))`
-/

namespace A312975.P12987325744065553126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311612 n + A310412 n).toNat

end

end A312975.P12987325744065553126

namespace A312975

/-- `A004525(A311612(n)+A310412(n))` -/
def P12987325744065553126.Spec : Prop :=
  ∀ n, P12987325744065553126.a n = A312975 n

end A312975

/-! ## A312975.P13791271708907423441

`abs(10*n-A315510(n))`
-/

namespace A312975.P13791271708907423441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A315510 n|

end

end A312975.P13791271708907423441

namespace A312975

/-- `abs(10*n-A315510(n))` -/
def P13791271708907423441.Spec : Prop :=
  ∀ n, P13791271708907423441.a n = A312975 n

end A312975

/-! ## A312975.P16205555240355758871

`2*A008706(n)-A315510(n)`
-/

namespace A312975.P16205555240355758871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315510 n

end

end A312975.P16205555240355758871

namespace A312975

/-- `2*A008706(n)-A315510(n)` -/
def P16205555240355758871.Spec : Prop :=
  ∀ n, P16205555240355758871.a n = A312975 n

end A312975

/-! ## A312975.P859899069826603059

`A005843(A008706(n))-A315510(n)`
-/

namespace A312975.P859899069826603059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315510 n

end

end A312975.P859899069826603059

namespace A312975

/-- `A005843(A008706(n))-A315510(n)` -/
def P859899069826603059.Spec : Prop :=
  ∀ n, P859899069826603059.a n = A312975 n

end A312975

/-! ## A312975.P16784779684807442234

`A008458(n)+A008574(n)-A315510(n)`
-/

namespace A312975.P16784779684807442234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315510 n)

end

end A312975.P16784779684807442234

namespace A312975

/-- `A008458(n)+A008574(n)-A315510(n)` -/
def P16784779684807442234.Spec : Prop :=
  ∀ n, P16784779684807442234.a n = A312975 n

end A312975

/-! ## A312975.P5469978225879623727

`∑{d}[A008592(n)-A315510(n), A000010(#)]`
-/

namespace A312975.P5469978225879623727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315510 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A312975.P5469978225879623727

namespace A312975

/-- `∑{d}[A008592(n)-A315510(n), A000010(#)]` -/
def P5469978225879623727.Spec : Prop :=
  ∀ n, P5469978225879623727.a n = A312975 n

end A312975

/-!
# A312976: Coordination sequence Gal.6.246.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312976, the canonical program `A312976.P18215844327102758922` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312976 has offset 0).

The definition of A312976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312976.P6881689572236404345

`A313118(n)-Δ[A011864(n)]`
-/

namespace A312976.P6881689572236404345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313118 n - (f1 (n + 1) - f1 n)

end

end A312976.P6881689572236404345

namespace A312976

/-- `A313118(n)-Δ[A011864(n)]` -/
def P6881689572236404345.Spec : Prop :=
  ∀ n, P6881689572236404345.a n = A312976 n

end A312976

/-! ## A312976.P3185189937984098500

`abs(A008592(n)-A315509(n))`
-/

namespace A312976.P3185189937984098500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315509 n|

end

end A312976.P3185189937984098500

namespace A312976

/-- `abs(A008592(n)-A315509(n))` -/
def P3185189937984098500.Spec : Prop :=
  ∀ n, P3185189937984098500.a n = A312976 n

end A312976

/-! ## A312976.P1339676756096832758

`A008458(n)+A008574(n)-A315509(n)`
-/

namespace A312976.P1339676756096832758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315509 n)

end

end A312976.P1339676756096832758

namespace A312976

/-- `A008458(n)+A008574(n)-A315509(n)` -/
def P1339676756096832758.Spec : Prop :=
  ∀ n, P1339676756096832758.a n = A312976 n

end A312976

/-! ## A312976.P14541644035001899029

`A008592(n)-A315509(n)-A232601(C(2, n+2))`
-/

namespace A312976.P14541644035001899029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A315509 n - A232601 (Nat.choose 2 (n + 2))

end

end A312976.P14541644035001899029

namespace A312976

/-- `A008592(n)-A315509(n)-A232601(C(2, n+2))` -/
def P14541644035001899029.Spec : Prop :=
  ∀ n, P14541644035001899029.a n = A312976 n

end A312976

/-! ## A312976.P9541323048798829963

`(A008592(n)-A315509(n))^A004291(C(2, n+2))`
-/

namespace A312976.P9541323048798829963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315509 n : ℚ) ^ (A004291 (Nat.choose 2 (n + 2)) : ℤ)

end

end A312976.P9541323048798829963

namespace A312976

/-- `(A008592(n)-A315509(n))^A004291(C(2, n+2))` -/
def P9541323048798829963.Spec : Prop :=
  ∀ n, P9541323048798829963.a n = (A312976 n : ℚ)

end A312976

/-! ## A312976.P1328814717259501374

`(A008592(n)-A315509(n))^A129661(C(2, n+2))`
-/

namespace A312976.P1328814717259501374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315509 n : ℚ) ^ (A129661 (Nat.choose 2 (n + 2)) : ℤ)

end

end A312976.P1328814717259501374

namespace A312976

/-- `(A008592(n)-A315509(n))^A129661(C(2, n+2))` -/
def P1328814717259501374.Spec : Prop :=
  ∀ n, P1328814717259501374.a n = (A312976 n : ℚ)

end A312976

/-! ## A312976.P14049012855425539346

`(A008592(n)-A315509(n))^A348470(C(2, n+2)+1)²`
-/

namespace A312976.P14049012855425539346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A315509 n : ℚ) ^ (A348470 (Nat.choose 2 (n + 2) + 1) ^ 2 : ℤ)

end

end A312976.P14049012855425539346

namespace A312976

/-- `(A008592(n)-A315509(n))^A348470(C(2, n+2)+1)²` -/
def P14049012855425539346.Spec : Prop :=
  ∀ n, P14049012855425539346.a n = (A312976 n : ℚ)

end A312976

/-! ## A312976.P2716291963126106906

`A004525(A313296(n))+2*n`
-/

namespace A312976.P2716291963126106906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313296 n).toNat + (2 * n : ℤ)

end

end A312976.P2716291963126106906

namespace A312976

/-- `A004525(A313296(n))+2*n` -/
def P2716291963126106906.Spec : Prop :=
  ∀ n, P2716291963126106906.a n = A312976 n

end A312976

/-! ## A312976.P15070935967379704768

`A005843(n)+A004525(A313296(n))`
-/

namespace A312976.P15070935967379704768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004525 (A313296 n).toNat

end

end A312976.P15070935967379704768

namespace A312976

/-- `A005843(n)+A004525(A313296(n))` -/
def P15070935967379704768.Spec : Prop :=
  ∀ n, P15070935967379704768.a n = A312976 n

end A312976

/-! ## A312976.P10573216376379402368

`A004396(A313148(n)+2*n)`
-/

namespace A312976.P10573216376379402368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 n + (2 * n : ℤ)).toNat

end

end A312976.P10573216376379402368

namespace A312976

/-- `A004396(A313148(n)+2*n)` -/
def P10573216376379402368.Spec : Prop :=
  ∀ n, P10573216376379402368.a n = A312976 n

end A312976

/-! ## A312976.P14832177237262457988

`A274616(A313148(n)+2*n)`
-/

namespace A312976.P14832177237262457988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313148 n + (2 * n : ℤ)).toNat

end

end A312976.P14832177237262457988

namespace A312976

/-- `A274616(A313148(n)+2*n)` -/
def P14832177237262457988.Spec : Prop :=
  ∀ n, P14832177237262457988.a n = A312976 n

end A312976

/-! ## A312976.P18215844327102758922

`A004396(2*(A312935(n)-n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A312976

/-- `A004396(2*(A312935(n)-n))` -/
def P18215844327102758922.Spec : Prop :=
  ∀ n, P18215844327102758922.a n = A312976 n

theorem P18215844327102758922.correct : P18215844327102758922.Spec := by
  intro n
  simp only [A312976]

end A312976

/-! ## A312976.P10173330853110248318

`A004396(A313148(n)+n+n)`
-/

namespace A312976.P10173330853110248318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313148 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312976.P10173330853110248318

namespace A312976

/-- `A004396(A313148(n)+n+n)` -/
def P10173330853110248318.Spec : Prop :=
  ∀ n, P10173330853110248318.a n = A312976 n

end A312976

/-! ## A312976.P5093897722104856357

`A274616(A313148(n)+n+n)`
-/

namespace A312976.P5093897722104856357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A313148 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312976.P5093897722104856357

namespace A312976

/-- `A274616(A313148(n)+n+n)` -/
def P5093897722104856357.Spec : Prop :=
  ∀ n, P5093897722104856357.a n = A312976 n

end A312976

/-! ## A312976.P2827417765778175209

`A004525(A313296(n)+A008574(n))`
-/

namespace A312976.P2827417765778175209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313296 n + A008574 n).toNat

end

end A312976.P2827417765778175209

namespace A312976

/-- `A004525(A313296(n)+A008574(n))` -/
def P2827417765778175209.Spec : Prop :=
  ∀ n, P2827417765778175209.a n = A312976 n

end A312976

/-!
# A312977: Coordination sequence Gal.6.384.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312977, there is no canonical definition to state claims against.
-/

/-! ## A312977.P1089823146131012043

`or(A124764(A055204(n+1)), A312185(n))`
-/

namespace A312977.P1089823146131012043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124764 (A055204 (n + 1)).toNat) (A312185 n)

end

end A312977.P1089823146131012043

/-! ## A312977.P10657780537543042729

`∑[A014499(A002235(3*n+2))]`
-/

namespace A312977.P10657780537543042729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014499 (A002235 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312977.P10657780537543042729

/-! ## A312977.P6884653983645736083

`∑[A100661(A077441(3*n)+3)]`
-/

namespace A312977.P6884653983645736083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100661 (A077441 (3 * n) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312977.P6884653983645736083

/-! ## A312977.P316413315102175294

`A055572(or(A071295(n), A301301(n)))`
-/

namespace A312977.P316413315102175294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (Int.lor (A071295 n) (A301301 n)).toNat

end

end A312977.P316413315102175294

/-! ## A312977.P17088631730100522819

`A107846(A166678(n+1))+A005122(2*n+1)`
-/

namespace A312977.P17088631730100522819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A166678 (n + 1)).toNat + A005122 (2 * n + 1)

end

end A312977.P17088631730100522819

/-!
# A312978: Coordination sequence Gal.6.381.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312978, there is no canonical definition to state claims against.
-/

/-! ## A312978.P516142702532293824

`A312948(n)+A102679(A070198(n))`
-/

namespace A312978.P516142702532293824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 n + A102679 (A070198 n).toNat

end

end A312978.P516142702532293824

/-! ## A312978.P3572676579679069564

`A353841(A000110(n))+A301684(n)`
-/

namespace A312978.P3572676579679069564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353841 (A000110 n).toNat + A301684 n

end

end A312978.P3572676579679069564

/-! ## A312978.P4999622099718368656

`A312946(n)+A031346(A319560(n))`
-/

namespace A312978.P4999622099718368656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312946 n + A031346 (A319560 n).toNat

end

end A312978.P4999622099718368656

/-! ## A312978.P8925791931907165064

`A313519(n)-A330025(A056577(n))`
-/

namespace A312978.P8925791931907165064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313519 n - A330025 (A056577 n).toNat

end

end A312978.P8925791931907165064

/-! ## A312978.P17508882135639076279

`xor(A086013(A247995(n+1)), A250120(n))`
-/

namespace A312978.P17508882135639076279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086013 (A247995 (n + 1)).toNat) (A250120 n)

end

end A312978.P17508882135639076279

/-!
# A312979: Coordination sequence Gal.6.247.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312979, the canonical program `A312979.P10469328530055326609` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312979 has offset 0).

The definition of A312979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2405 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312979.P12331156101035542731

`A313610(n)-A330025(n)`
-/

namespace A312979.P12331156101035542731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313610 n - A330025 n

end

end A312979.P12331156101035542731

namespace A312979

/-- `A313610(n)-A330025(n)` -/
def P12331156101035542731.Spec : Prop :=
  ∀ n, P12331156101035542731.a n = A312979 n

end A312979

/-! ## A312979.P17956962359265527007

`A311535(n)+Δ[A011858(n)]`
-/

namespace A312979.P17956962359265527007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + (f1 (n + 1) - f1 n)

end

end A312979.P17956962359265527007

namespace A312979

/-- `A311535(n)+Δ[A011858(n)]` -/
def P17956962359265527007.Spec : Prop :=
  ∀ n, P17956962359265527007.a n = A312979 n

end A312979

/-! ## A312979.P8698612156232537579

`A311535(n)+A057354(n+1)`
-/

namespace A312979.P8698612156232537579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + A057354 (n + 1)

end

end A312979.P8698612156232537579

namespace A312979

/-- `A311535(n)+A057354(n+1)` -/
def P8698612156232537579.Spec : Prop :=
  ∀ n, P8698612156232537579.a n = A312979 n

end A312979

/-! ## A312979.P10469328530055326609

`A310398(n)+A014019(n+3)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A312979

/-- `A310398(n)+A014019(n+3)` -/
def P10469328530055326609.Spec : Prop :=
  ∀ n, P10469328530055326609.a n = A312979 n

theorem P10469328530055326609.correct : P10469328530055326609.Spec := by
  intro n
  simp only [A312979]

end A312979

/-! ## A312979.P3180170104330767943

`A314020(n)-A253262(n)`
-/

namespace A312979.P3180170104330767943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314020 n - A253262 n

end

end A312979.P3180170104330767943

namespace A312979

/-- `A314020(n)-A253262(n)` -/
def P3180170104330767943.Spec : Prop :=
  ∀ n, P3180170104330767943.a n = A312979 n

end A312979

/-! ## A312979.P15984704382540151365

`abs(A008592(n)-A315508(n))`
-/

namespace A312979.P15984704382540151365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315508 n|

end

end A312979.P15984704382540151365

namespace A312979

/-- `abs(A008592(n)-A315508(n))` -/
def P15984704382540151365.Spec : Prop :=
  ∀ n, P15984704382540151365.a n = A312979 n

end A312979

/-! ## A312979.P7049390728553602386

`A008458(n)+A008574(n)-A315508(n)`
-/

namespace A312979.P7049390728553602386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315508 n)

end

end A312979.P7049390728553602386

namespace A312979

/-- `A008458(n)+A008574(n)-A315508(n)` -/
def P7049390728553602386.Spec : Prop :=
  ∀ n, P7049390728553602386.a n = A312979 n

end A312979

/-! ## A312979.P7233823045653839056

`A008574(n)+A313928(n)-A250120(n)`
-/

namespace A312979.P7233823045653839056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A313928 n - A250120 n)

end

end A312979.P7233823045653839056

namespace A312979

/-- `A008574(n)+A313928(n)-A250120(n)` -/
def P7233823045653839056.Spec : Prop :=
  ∀ n, P7233823045653839056.a n = A312979 n

end A312979

/-! ## A312979.P6623864450274269586

`A005843(A314164(n))-(A301726(n)+n)`
-/

namespace A312979.P6623864450274269586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314164 n).toNat - (A301726 n + (n : ℤ))

end

end A312979.P6623864450274269586

namespace A312979

/-- `A005843(A314164(n))-(A301726(n)+n)` -/
def P6623864450274269586.Spec : Prop :=
  ∀ n, P6623864450274269586.a n = A312979 n

end A312979

/-! ## A312979.P16954120280924401464

`A004396(A310422(n)+2*n)`
-/

namespace A312979.P16954120280924401464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310422 n + (2 * n : ℤ)).toNat

end

end A312979.P16954120280924401464

namespace A312979

/-- `A004396(A310422(n)+2*n)` -/
def P16954120280924401464.Spec : Prop :=
  ∀ n, P16954120280924401464.a n = A312979 n

end A312979

/-! ## A312979.P346840882787593965

`A004396(A313154(n)+2*n)`
-/

namespace A312979.P346840882787593965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313154 n + (2 * n : ℤ)).toNat

end

end A312979.P346840882787593965

namespace A312979

/-- `A004396(A313154(n)+2*n)` -/
def P346840882787593965.Spec : Prop :=
  ∀ n, P346840882787593965.a n = A312979 n

end A312979

/-! ## A312979.P12715384614130193005

`A004396(A310422(n)+n+n)`
-/

namespace A312979.P12715384614130193005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A310422 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312979.P12715384614130193005

namespace A312979

/-- `A004396(A310422(n)+n+n)` -/
def P12715384614130193005.Spec : Prop :=
  ∀ n, P12715384614130193005.a n = A312979 n

end A312979

/-! ## A312979.P5795862164106412401

`A004396(A313154(n)+n+n)`
-/

namespace A312979.P5795862164106412401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313154 n + (n : ℤ) + (n : ℤ)).toNat

end

end A312979.P5795862164106412401

namespace A312979

/-- `A004396(A313154(n)+n+n)` -/
def P5795862164106412401.Spec : Prop :=
  ∀ n, P5795862164106412401.a n = A312979 n

end A312979

/-! ## A312979.P4739953890725559097

`A004396(2*A004396(A313801(n)))`
-/

namespace A312979.P4739953890725559097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A004396 (A313801 n).toNat).toNat

end

end A312979.P4739953890725559097

namespace A312979

/-- `A004396(2*A004396(A313801(n)))` -/
def P4739953890725559097.Spec : Prop :=
  ∀ n, P4739953890725559097.a n = A312979 n

end A312979

/-! ## A312979.P7773505292235878078

`A064429(A315402(2*n))-A315402(n)`
-/

namespace A312979.P7773505292235878078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A315402 (2 * n)).toNat - A315402 n

end

end A312979.P7773505292235878078

namespace A312979

/-- `A064429(A315402(2*n))-A315402(n)` -/
def P7773505292235878078.Spec : Prop :=
  ∀ n, P7773505292235878078.a n = A312979 n

end A312979

/-!
# A312980: Coordination sequence Gal.6.248.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312980, the canonical program `A312980.P12703125068755292074` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312980 has offset 0).

The definition of A312980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312980.P12703125068755292074

`A135042(2*n+1)-(2*A313689(n)-A312902(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A312980

/-- `A135042(2*n+1)-(2*A313689(n)-A312902(n))` -/
def P12703125068755292074.Spec : Prop :=
  ∀ n, P12703125068755292074.a n = A312980 n

theorem P12703125068755292074.correct : P12703125068755292074.Spec := by
  intro n
  simp only [A312980]

end A312980

/-! ## A312980.P1895879570038953614

`A313128(n)-Δ[A011864(n)]`
-/

namespace A312980.P1895879570038953614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313128 n - (f1 (n + 1) - f1 n)

end

end A312980.P1895879570038953614

namespace A312980

/-- `A313128(n)-Δ[A011864(n)]` -/
def P1895879570038953614.Spec : Prop :=
  ∀ n, P1895879570038953614.a n = A312980 n

end A312980

/-! ## A312980.P10990739052570256092

`abs(A008592(n)-A315507(n))`
-/

namespace A312980.P10990739052570256092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315507 n|

end

end A312980.P10990739052570256092

namespace A312980

/-- `abs(A008592(n)-A315507(n))` -/
def P10990739052570256092.Spec : Prop :=
  ∀ n, P10990739052570256092.a n = A312980 n

end A312980

/-! ## A312980.P2047863685823155014

`2*A008706(n)-A315507(n)`
-/

namespace A312980.P2047863685823155014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A315507 n

end

end A312980.P2047863685823155014

namespace A312980

/-- `2*A008706(n)-A315507(n)` -/
def P2047863685823155014.Spec : Prop :=
  ∀ n, P2047863685823155014.a n = A312980 n

end A312980

/-! ## A312980.P17861353303100228138

`A135042(2*n+1)-A315507(n)`
-/

namespace A312980.P17861353303100228138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A315507 n

end

end A312980.P17861353303100228138

namespace A312980

/-- `A135042(2*n+1)-A315507(n)` -/
def P17861353303100228138.Spec : Prop :=
  ∀ n, P17861353303100228138.a n = A312980 n

end A312980

/-! ## A312980.P12989379377978778779

`A008458(n)+A008574(n)-A315507(n)`
-/

namespace A312980.P12989379377978778779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315507 n)

end

end A312980.P12989379377978778779

namespace A312980

/-- `A008458(n)+A008574(n)-A315507(n)` -/
def P12989379377978778779.Spec : Prop :=
  ∀ n, P12989379377978778779.a n = A312980 n

end A312980

/-! ## A312980.P8563077224010363985

`(A311613(n)+A310423(n))/2`
-/

namespace A312980.P8563077224010363985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311613 n + A310423 n : ℚ) / 2

end

end A312980.P8563077224010363985

namespace A312980

/-- `(A311613(n)+A310423(n))/2` -/
def P8563077224010363985.Spec : Prop :=
  ∀ n, P8563077224010363985.a n = (A312980 n : ℚ)

end A312980

/-! ## A312980.P15155797186756496732

`A005843(A008706(n))-A315507(n)`
-/

namespace A312980.P15155797186756496732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A315507 n

end

end A312980.P15155797186756496732

namespace A312980

/-- `A005843(A008706(n))-A315507(n)` -/
def P15155797186756496732.Spec : Prop :=
  ∀ n, P15155797186756496732.a n = A312980 n

end A312980

/-! ## A312980.P11734431253880520049

`A065502(A008458(n))-A315507(n)`
-/

namespace A312980.P11734431253880520049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A315507 n

end

end A312980.P11734431253880520049

namespace A312980

/-- `A065502(A008458(n))-A315507(n)` -/
def P11734431253880520049.Spec : Prop :=
  ∀ n, P11734431253880520049.a n = A312980 n

end A312980

/-! ## A312980.P3672671834230548407

`A271324(A022144(n))-A315507(n)`
-/

namespace A312980.P3672671834230548407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A315507 n

end

end A312980.P3672671834230548407

namespace A312980

/-- `A271324(A022144(n))-A315507(n)` -/
def P3672671834230548407.Spec : Prop :=
  ∀ n, P3672671834230548407.a n = A312980 n

end A312980

/-! ## A312980.P4444482865745425119

`A233583(A017281(n))-A315507(n)`
-/

namespace A312980.P4444482865745425119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A315507 n

end

end A312980.P4444482865745425119

namespace A312980

/-- `A233583(A017281(n))-A315507(n)` -/
def P4444482865745425119.Spec : Prop :=
  ∀ n, P4444482865745425119.a n = A312980 n

end A312980

/-!
# A312981: Coordination sequence Gal.5.146.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312981, there is no canonical definition to state claims against.
-/

/-! ## A312981.P14304931004495657501

`A265227(n+1)+A311002(n)-n`
-/

namespace A312981.P14304931004495657501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265227 (n + 1) + (A311002 n - (n : ℤ))

end

end A312981.P14304931004495657501

/-! ## A312981.P3683925660060329851

`A314049(n)-A186421(A057354(2*n+1))`
-/

namespace A312981.P3683925660060329851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314049 n - A186421 (A057354 (2 * n + 1)).toNat

end

end A312981.P3683925660060329851

/-! ## A312981.P16402982267798271830

`A057354(2*n+1)+A004525(A310200(2*n))`
-/

namespace A312981.P16402982267798271830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 1) + A004525 (A310200 (2 * n)).toNat

end

end A312981.P16402982267798271830

/-! ## A312981.P12410900978139087822

`A057354(2*n+1)+A004525(A310252(2*n))`
-/

namespace A312981.P12410900978139087822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (2 * n + 1) + A004525 (A310252 (2 * n)).toNat

end

end A312981.P12410900978139087822

/-! ## A312981.P510649321059140695

`A004525(A310252(2*n)+A047486(n+1))`
-/

namespace A312981.P510649321059140695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310252 (2 * n) + A047486 (n + 1)).toNat

end

end A312981.P510649321059140695

/-!
# A312982: Coordination sequence Gal.5.232.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312982, there is no canonical definition to state claims against.
-/

/-! ## A312982.P1720147170290126815

`floor((floor((A175227(A175228(n+1))+1)/2)+1)/2)`
-/

namespace A312982.P1720147170290126815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A175227 (A175228 (n + 1)).toNat + 1 : ℚ) / 2⌋ + 1 : ℚ) / 2⌋

end

end A312982.P1720147170290126815

/-! ## A312982.P16347121834450654598

`A313782(n)-A001221(A007482(n))`
-/

namespace A312982.P16347121834450654598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n - A001221 (A007482 n).toNat

end

end A312982.P16347121834450654598

/-! ## A312982.P7611490353440035009

`A312976(n)+A016389(A008574(3*(n+1)))`
-/

namespace A312982.P7611490353440035009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312976 n + A016389 (A008574 (3 * (n + 1))).toNat

end

end A312982.P7611490353440035009

/-! ## A312982.P280709499016275320

`A313772(n)-A001222(A020515(n))`
-/

namespace A312982.P280709499016275320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n - A001222 (A020515 n).toNat

end

end A312982.P280709499016275320

/-! ## A312982.P17964134295855024977

`A115405(3*n+1)+A080300(A005664(n))`
-/

namespace A312982.P17964134295855024977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115405 (3 * n + 1) + A080300 (A005664 n).toNat

end

end A312982.P17964134295855024977

/-!
# A312983: Coordination sequence Gal.3.25.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312983, the canonical program `A312983.P16184876047948628761` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312983 has offset 0).

The definition of A312983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312983.P16184876047948628761

`A310409(n)-(char[2]+char[3])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A312983

/-- `A310409(n)-(char[2]+char[3])` -/
def P16184876047948628761.Spec : Prop :=
  ∀ n, P16184876047948628761.a n = A312983 n

theorem P16184876047948628761.correct : P16184876047948628761.Spec := by
  intro n
  simp only [A312983]

end A312983

/-! ## A312983.P8490192840687716090

`A058992(A175884(n+2))-A185012(A168659(n+1))`
-/

namespace A312983.P8490192840687716090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A175884 (n + 2)).toNat - A185012 (A168659 (n + 1)).toNat

end

end A312983.P8490192840687716090

namespace A312983

/-- `A058992(A175884(n+2))-A185012(A168659(n+1))` -/
def P8490192840687716090.Spec : Prop :=
  ∀ n, P8490192840687716090.a n = A312983 n

end A312983

/-! ## A312983.P5722092386787128545

`A151988(A004277(2*n))-A185012(A168659(n+1))`
-/

namespace A312983.P5722092386787128545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004277 (2 * n)).toNat - A185012 (A168659 (n + 1)).toNat

end

end A312983.P5722092386787128545

namespace A312983

/-- `A151988(A004277(2*n))-A185012(A168659(n+1))` -/
def P5722092386787128545.Spec : Prop :=
  ∀ n, P5722092386787128545.a n = A312983 n

end A312983

/-! ## A312983.P7796560327571113216

`A151988(A004275(2*n+1))-A185012(A168659(n+1))`
-/

namespace A312983.P7796560327571113216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004275 (2 * n + 1)).toNat - A185012 (A168659 (n + 1)).toNat

end

end A312983.P7796560327571113216

namespace A312983

/-- `A151988(A004275(2*n+1))-A185012(A168659(n+1))` -/
def P7796560327571113216.Spec : Prop :=
  ∀ n, P7796560327571113216.a n = A312983 n

end A312983

/-! ## A312983.P18230446369063587257

`A151988(A004273(2*n)+1)-A185012(A168659(n+1))`
-/

namespace A312983.P18230446369063587257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A004273 (2 * n) + 1).toNat - A185012 (A168659 (n + 1)).toNat

end

end A312983.P18230446369063587257

namespace A312983

/-- `A151988(A004273(2*n)+1)-A185012(A168659(n+1))` -/
def P18230446369063587257.Spec : Prop :=
  ∀ n, P18230446369063587257.a n = A312983 n

end A312983

/-!
# A312984: Coordination sequence Gal.6.35.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312984, there is no canonical definition to state claims against.
-/

/-! ## A312984.P17495213998099783687

`A312974(n)+A059841(A094283(n+1))`
-/

namespace A312984.P17495213998099783687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A059841 (A094283 (n + 1)).toNat

end

end A312984.P17495213998099783687

/-! ## A312984.P5375336475799348486

`A314180(n)-A001222(A000984(n))`
-/

namespace A312984.P5375336475799348486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314180 n - A001222 (A000984 n).toNat

end

end A312984.P5375336475799348486

/-! ## A312984.P6942390621256838241

`A312974(n)+A013595(A241467(n+1))`
-/

namespace A312984.P6942390621256838241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A013595 (A241467 (n + 1)).toNat

end

end A312984.P6942390621256838241

/-! ## A312984.P4637300004411406629

`A312974(n)+A174726(A220447(n+1))`
-/

namespace A312984.P4637300004411406629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312974 n + A174726 (A220447 (n + 1)).toNat

end

end A312984.P4637300004411406629

/-! ## A312984.P9065502325040572358

`A313147(n)-A179762(A179702(n+1))`
-/

namespace A312984.P9065502325040572358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n - A179762 (A179702 (n + 1)).toNat

end

end A312984.P9065502325040572358

/-!
# A312985: Coordination sequence Gal.6.566.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312985, there is no canonical definition to state claims against.
-/

/-! ## A312985.P15120195782585957947

`A311593(n)+A001222(A146033(n+1))`
-/

namespace A312985.P15120195782585957947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311593 n + A001222 (A146033 (n + 1)).toNat

end

end A312985.P15120195782585957947

/-! ## A312985.P2426482874730056940

`A312926(n)+A238444(A047691(n))`
-/

namespace A312985.P2426482874730056940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A238444 (A047691 n).toNat

end

end A312985.P2426482874730056940

/-! ## A312985.P6296125842635411603

`A312187(n)+A005614(A141200(n+1))`
-/

namespace A312985.P6296125842635411603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312187 n + A005614 (A141200 (n + 1)).toNat

end

end A312985.P6296125842635411603

/-! ## A312985.P13750353009560912487

`A324179(A099851(n+1))+A312941(n)`
-/

namespace A312985.P13750353009560912487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (A099851 (n + 1)).toNat + A312941 n

end

end A312985.P13750353009560912487

/-! ## A312985.P604214022252444788

`A312214(n)+A046660(A121653(3*n))`
-/

namespace A312985.P604214022252444788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312214 n + A046660 (A121653 (3 * n)).toNat

end

end A312985.P604214022252444788

/-!
# A312986: Coordination sequence Gal.6.36.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312986, there is no canonical definition to state claims against.
-/

/-! ## A312986.P2740519178631638223

`A003995(A240960(n+1)+A228912(n))`
-/

namespace A312986.P2740519178631638223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (A240960 (n + 1) + A228912 n).toNat

end

end A312986.P2740519178631638223

/-! ## A312986.P1334853825025215284

`A039956(n+1)-A003137(A007097(n))`
-/

namespace A312986.P1334853825025215284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1) - A003137 (A007097 n).toNat

end

end A312986.P1334853825025215284

/-! ## A312986.P2414075774144594568

`A313247(n)-A141700(A141708(n+1))`
-/

namespace A312986.P2414075774144594568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313247 n - A141700 (A141708 (n + 1)).toNat

end

end A312986.P2414075774144594568

/-! ## A312986.P12934047697193583293

`A003995(A391241(n+1))%A074824(3*n+2)`
-/

namespace A312986.P12934047697193583293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003995 (A391241 (n + 1)).toNat) (A074824 (3 * n + 2))

end

end A312986.P12934047697193583293

/-! ## A312986.P3181248252218285420

`A003995(A391241(n+1)%A217726(3*n+2))`
-/

namespace A312986.P3181248252218285420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003995 (Int.tmod (A391241 (n + 1)) (A217726 (3 * n + 2))).toNat

end

end A312986.P3181248252218285420

/-!
# A312988: Coordination sequence Gal.5.158.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312988, there is no canonical definition to state claims against.
-/

/-! ## A312988.P1420800188928856046

`A313321(n)-(A064911(A195924(n))+A057354(n))`
-/

namespace A312988.P1420800188928856046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - (A064911 (A195924 n).toNat + A057354 n)

end

end A312988.P1420800188928856046

/-! ## A312988.P7749896504784868798

`A173177(n+1)-A008683(A001764(n))`
-/

namespace A312988.P7749896504784868798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) - A008683 (A001764 n).toNat

end

end A312988.P7749896504784868798

/-! ## A312988.P13309000586268603163

`A173177(n+1)+A008683(2*A001764(n))`
-/

namespace A312988.P13309000586268603163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173177 (n + 1) + A008683 (2 * A001764 n).toNat

end

end A312988.P13309000586268603163

/-! ## A312988.P15513048987800030352

`A080791(A025181(n+3))+A008574(n)-A057354(n)`
-/

namespace A312988.P15513048987800030352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A025181 (n + 3)).toNat + A008574 n - A057354 n

end

end A312988.P15513048987800030352

/-! ## A312988.P15200393589526307912

`A313321(n)-A186716(A078829(2*n+1))-A057354(n)`
-/

namespace A312988.P15200393589526307912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n - A186716 (A078829 (2 * n + 1)).toNat - A057354 n

end

end A312988.P15200393589526307912

/-!
# A312989: Coordination sequence Gal.5.148.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312989, there is no canonical definition to state claims against.
-/

/-! ## A312989.P13300093470104008240

`record[A313185(n)-∑[floor(2*n/5)]]`
-/

namespace A312989.P13300093470104008240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℚ) / 5)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313185 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312989.P13300093470104008240

/-! ## A312989.P4409687882775858419

`A314436(A032555(n+1))-4`
-/

namespace A312989.P4409687882775858419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314436 (A032555 (n + 1)).toNat - 4

end

end A312989.P4409687882775858419

/-! ## A312989.P9555038220953535320

`lt[A243940(n+1), Δ[A000731(n)]]`
-/

namespace A312989.P9555038220953535320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243940 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000731 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A312989.P9555038220953535320

/-! ## A312989.P6608582570811900762

`A301730(n)-A010673(A024429(n))`
-/

namespace A312989.P6608582570811900762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A010673 (A024429 n).toNat

end

end A312989.P6608582570811900762

/-! ## A312989.P3978884413893807192

`A301730(n)-A010872(A244730(n))`
-/

namespace A312989.P3978884413893807192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301730 n - A010872 (A244730 n).toNat

end

end A312989.P3978884413893807192

/-!
# A312990: Coordination sequence Gal.5.263.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312990, there is no canonical definition to state claims against.
-/

/-! ## A312990.P1848303629608289793

`xor(A060398(A142239(n)), A312506(n))`
-/

namespace A312990.P1848303629608289793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060398 (A142239 n).toNat) (A312506 n)

end

end A312990.P1848303629608289793

/-! ## A312990.P13780167326934244194

`xor(A002262(A032555(n+1)), A315004(n))`
-/

namespace A312990.P13780167326934244194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 (A032555 (n + 1)).toNat) (A315004 n)

end

end A312990.P13780167326934244194

/-!
# A312991: Coordination sequence Gal.6.306.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312991, there is no canonical definition to state claims against.
-/

/-! ## A312991.P51463602419672671

`A313162(n)-A277808(A000110(n))`
-/

namespace A312991.P51463602419672671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313162 n - A277808 (A000110 n).toNat

end

end A312991.P51463602419672671

/-!
# A312992: Coordination sequence Gal.6.29.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312992, there is no canonical definition to state claims against.
-/

/-! ## A312992.P5053368913900935149

`A250120(n)-A392705(A139250(n+3))`
-/

namespace A312992.P5053368913900935149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A392705 (A139250 (n + 3)).toNat

end

end A312992.P5053368913900935149

/-! ## A312992.P3417522820720553397

`A311495(n)-A079635(A148999(n))`
-/

namespace A312992.P3417522820720553397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311495 n - A079635 (A148999 n).toNat

end

end A312992.P3417522820720553397

/-! ## A312992.P8142220582812515776

`A313075(n)-A235127(A111004(n))`
-/

namespace A312992.P8142220582812515776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313075 n - A235127 (A111004 n).toNat

end

end A312992.P8142220582812515776

/-! ## A312992.P4688173811864251713

`and(A250120(n), A332587(A004277(n)))`
-/

namespace A312992.P4688173811864251713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A250120 n) (A332587 (A004277 n).toNat)

end

end A312992.P4688173811864251713

/-!
# A312993: Coordination sequence Gal.6.560.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312993, there is no canonical definition to state claims against.
-/

/-! ## A312993.P3916766816867441665

`record[A026229(n+1)-A062687(n+1)]`
-/

namespace A312993.P3916766816867441665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A062687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312993.P3916766816867441665

/-! ## A312993.P6519236632440594512

`record[A026229(n+1)-A103357(n+1)]`
-/

namespace A312993.P6519236632440594512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A103357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312993.P6519236632440594512

/-! ## A312993.P14092958012731276247

`record[A026229(n+1)-A147591(n+1)]`
-/

namespace A312993.P14092958012731276247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A147591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312993.P14092958012731276247

/-! ## A312993.P18052668739989353012

`record[A026229(n+1)-A239090(n+1)]`
-/

namespace A312993.P18052668739989353012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A239090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312993.P18052668739989353012

/-! ## A312993.P8740309896011189824

`record[A026229(n+1)-A002113(n+2)]`
-/

namespace A312993.P8740309896011189824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026229 (n + 1) - A002113 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A312993.P8740309896011189824

/-!
# A312996: Coordination sequence Gal.6.468.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312996, there is no canonical definition to state claims against.
-/

/-! ## A312996.P16442781730277407758

`A311764(n)+A010051(A270913(n))`
-/

namespace A312996.P16442781730277407758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A010051 (A270913 n).toNat

end

end A312996.P16442781730277407758

/-! ## A312996.P14092245507426221952

`A311764(n)+A025125(A073799(n+1))`
-/

namespace A312996.P14092245507426221952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311764 n + A025125 (A073799 (n + 1)).toNat

end

end A312996.P14092245507426221952

/-! ## A312996.P17127038326801015563

`A376359(n+1)-A010882(A244287(3*n+5))`
-/

namespace A312996.P17127038326801015563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376359 (n + 1) - A010882 (A244287 (3 * n + 5)).toNat

end

end A312996.P17127038326801015563

/-! ## A312996.P1140433445893703662

`A087874(A155212(n))+n`
-/

namespace A312996.P1140433445893703662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087874 (A155212 n).toNat + (n : ℤ)

end

end A312996.P1140433445893703662

/-! ## A312996.P13004396095478235729

`∑[A318928(A078008(n)+14*n^3)]`
-/

namespace A312996.P13004396095478235729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318928 (A078008 n + (14 * n ^ 3 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312996.P13004396095478235729

/-!
# A312997: Coordination sequence Gal.6.497.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312997, there is no canonical definition to state claims against.
-/

/-! ## A312997.P18324357139068940418

`A311839(n)+A007814(A279565(n))`
-/

namespace A312997.P18324357139068940418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311839 n + A007814 (A279565 n).toNat

end

end A312997.P18324357139068940418

/-! ## A312997.P6967944509548861963

`A311841(n)+A007814(A279565(n))`
-/

namespace A312997.P6967944509548861963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311841 n + A007814 (A279565 n).toNat

end

end A312997.P6967944509548861963

/-! ## A312997.P8888631128892985015

`A311720(n)+A010059(A320950(n))`
-/

namespace A312997.P8888631128892985015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311720 n + A010059 (A320950 n).toNat

end

end A312997.P8888631128892985015

/-! ## A312997.P11314165440738950460

`A311894(n)+A168046(A185544(n))`
-/

namespace A312997.P11314165440738950460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311894 n + A168046 (A185544 n).toNat

end

end A312997.P11314165440738950460

/-! ## A312997.P7475577079145083708

`A313003(n)-A073267(A017498(n))`
-/

namespace A312997.P7475577079145083708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313003 n - A073267 (A017498 n).toNat

end

end A312997.P7475577079145083708

/-!
# A312998: Coordination sequence Gal.4.85.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312998, the canonical program `A312998.P16096171208213579461` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A312998 has offset 0).

The definition of A312998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2531 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A312998.P16096171208213579461

`A312475(n)+∑[A131736(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A312998

/-- `A312475(n)+∑[A131736(n)]` -/
def P16096171208213579461.Spec : Prop :=
  ∀ n, P16096171208213579461.a n = A312998 n

theorem P16096171208213579461.correct : P16096171208213579461.Spec := by
  intro n
  simp only [A312998]

end A312998

/-! ## A312998.P15722485817927229911

`A312475(n)-A134667(n+3)`
-/

namespace A312998.P15722485817927229911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n - A134667 (n + 3)

end

end A312998.P15722485817927229911

namespace A312998

/-- `A312475(n)-A134667(n+3)` -/
def P15722485817927229911.Spec : Prop :=
  ∀ n, P15722485817927229911.a n = A312998 n

end A312998

/-! ## A312998.P11378566698169702618

`A312475(n)-A102283(A237420(n))`
-/

namespace A312998.P11378566698169702618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n - A102283 (A237420 n).toNat

end

end A312998.P11378566698169702618

namespace A312998

/-- `A312475(n)-A102283(A237420(n))` -/
def P11378566698169702618.Spec : Prop :=
  ∀ n, P11378566698169702618.a n = A312998 n

end A312998

/-! ## A312998.P5829096806665767553

`A312475(n)+A102283(2*A237420(n))`
-/

namespace A312998.P5829096806665767553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A102283 (2 * A237420 n).toNat

end

end A312998.P5829096806665767553

namespace A312998

/-- `A312475(n)+A102283(2*A237420(n))` -/
def P5829096806665767553.Spec : Prop :=
  ∀ n, P5829096806665767553.a n = A312998 n

end A312998

/-! ## A312998.P4632822209676655547

`A312475(n)+A102283(A237420(n)/2)`
-/

namespace A312998.P4632822209676655547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A102283 (SequenceMachineLib.roundAway ((A237420 n : ℚ) / 2)).toNat

end

end A312998.P4632822209676655547

namespace A312998

/-- `A312475(n)+A102283(A237420(n)/2)` -/
def P4632822209676655547.Spec : Prop :=
  ∀ n, P4632822209676655547.a n = A312998 n

end A312998

/-! ## A312998.P14655318107155675809

`A312475(n)+A128834(n-A128834(n))`
-/

namespace A312998.P14655318107155675809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A128834 ((n : ℤ) - A128834 n).toNat

end

end A312998.P14655318107155675809

namespace A312998

/-- `A312475(n)+A128834(n-A128834(n))` -/
def P14655318107155675809.Spec : Prop :=
  ∀ n, P14655318107155675809.a n = A312998 n

end A312998

/-! ## A312998.P12961289560389872545

`A310376(n)-A087509(n)`
-/

namespace A312998.P12961289560389872545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310376 n - A087509 n

end

end A312998.P12961289560389872545

namespace A312998

/-- `A310376(n)-A087509(n)` -/
def P12961289560389872545.Spec : Prop :=
  ∀ n, P12961289560389872545.a n = A312998 n

end A312998

/-!
# A312999: Coordination sequence Gal.6.22.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A312999, there is no canonical definition to state claims against.
-/

/-! ## A312999.P16876026690601139522

`A301301(n)+A182850(A126291(n+3))`
-/

namespace A312999.P16876026690601139522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301301 n + A182850 (A126291 (n + 3)).toNat

end

end A312999.P16876026690601139522

/-! ## A312999.P17895253679036737972

`∑[dr(A008619(A279627(n+1)))]`
-/

namespace A312999.P17895253679036737972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008619 (A279627 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A312999.P17895253679036737972

/-! ## A312999.P11707326063918723424

`A313043(n)-A024326(A002212(n))`
-/

namespace A312999.P11707326063918723424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313043 n - A024326 (A002212 n).toNat

end

end A312999.P11707326063918723424

/-! ## A312999.P636492472650448474

`A314438(n)-A062157(A094688(n))`
-/

namespace A312999.P636492472650448474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314438 n - A062157 (A094688 n).toNat

end

end A312999.P636492472650448474

/-! ## A312999.P12959837884969033158

`A313042(n)-A033909(A282953(n))`
-/

namespace A312999.P12959837884969033158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313042 n - A033909 (A282953 n).toNat

end

end A312999.P12959837884969033158

