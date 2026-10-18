import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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

/-!
# A313800: Coordination sequence Gal.6.483.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313800, there is no canonical definition to state claims against.
-/

/-! ## A313800.P5171125759290305783

`A008458(n)-A138033(A138023(n+1))`
-/

namespace A313800.P5171125759290305783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A138033 (A138023 (n + 1)).toNat

end

end A313800.P5171125759290305783

/-! ## A313800.P9755624939337486796

`A319413(A184523(n+1))`
-/

namespace A313800.P9755624939337486796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A184523 (n + 1)).toNat

end

end A313800.P9755624939337486796

/-! ## A313800.P13533358455712633750

`A008458(n)-A004218(A027598(n+1))`
-/

namespace A313800.P13533358455712633750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004218 (A027598 (n + 1)).toNat

end

end A313800.P13533358455712633750

/-! ## A313800.P18032300221482522666

`A016945(n)-A325282(A000040(2*n+1))`
-/

namespace A313800.P18032300221482522666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n - A325282 (A000040 (2 * n + 1)).toNat

end

end A313800.P18032300221482522666

/-! ## A313800.P17188088747548582412

`A093848(3*n+1)-A046660(n*2^n+1)`
-/

namespace A313800.P17188088747548582412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093848 (3 * n + 1) - A046660 (n * 2 ^ n + 1)

end

end A313800.P17188088747548582412

/-!
# A313801: Coordination sequence Gal.5.291.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313801, the canonical program `A313801.P717888020838785705` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313801 has offset 0).

The definition of A313801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313801.P7019287946851043060

`A311535(n)+n`
-/

namespace A313801.P7019287946851043060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + (n : ℤ)

end

end A313801.P7019287946851043060

namespace A313801

/-- `A311535(n)+n` -/
def P7019287946851043060.Spec : Prop :=
  ∀ n, P7019287946851043060.a n = A313801 n

end A313801

/-! ## A313801.P14628246267181305486

`A311440(n)+A151988(n)`
-/

namespace A313801.P14628246267181305486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A151988 n

end

end A313801.P14628246267181305486

namespace A313801

/-- `A311440(n)+A151988(n)` -/
def P14628246267181305486.Spec : Prop :=
  ∀ n, P14628246267181305486.a n = A313801 n

end A313801

/-! ## A313801.P16840280398146977207

`A315684(n)-A253262(n)`
-/

namespace A313801.P16840280398146977207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315684 n - A253262 n

end

end A313801.P16840280398146977207

namespace A313801

/-- `A315684(n)-A253262(n)` -/
def P16840280398146977207.Spec : Prop :=
  ∀ n, P16840280398146977207.a n = A313801 n

end A313801

/-! ## A313801.P717888020838785705

`abs(A008592(n)-A313682(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A313801

/-- `abs(A008592(n)-A313682(n))` -/
def P717888020838785705.Spec : Prop :=
  ∀ n, P717888020838785705.a n = A313801 n

theorem P717888020838785705.correct : P717888020838785705.Spec := by
  intro n
  simp only [A313801]

end A313801

/-! ## A313801.P8698888763060593123

`(A311634(n)+A008458(n))/2`
-/

namespace A313801.P8698888763060593123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311634 n + A008458 n : ℚ) / 2

end

end A313801.P8698888763060593123

namespace A313801

/-- `(A311634(n)+A008458(n))/2` -/
def P8698888763060593123.Spec : Prop :=
  ∀ n, P8698888763060593123.a n = (A313801 n : ℚ)

end A313801

/-! ## A313801.P1184493068577430911

`2*A008706(n)-A313682(n)`
-/

namespace A313801.P1184493068577430911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313682 n

end

end A313801.P1184493068577430911

namespace A313801

/-- `2*A008706(n)-A313682(n)` -/
def P1184493068577430911.Spec : Prop :=
  ∀ n, P1184493068577430911.a n = A313801 n

end A313801

/-! ## A313801.P5691192566462837797

`A313476(n)+n-A253262(n)`
-/

namespace A313801.P5691192566462837797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + ((n : ℤ) - A253262 n)

end

end A313801.P5691192566462837797

namespace A313801

/-- `A313476(n)+n-A253262(n)` -/
def P5691192566462837797.Spec : Prop :=
  ∀ n, P5691192566462837797.a n = A313801 n

end A313801

/-! ## A313801.P9722672510175466360

`A314708(n)+n-A330025(n)`
-/

namespace A313801.P9722672510175466360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + ((n : ℤ) - A330025 n)

end

end A313801.P9722672510175466360

namespace A313801

/-- `A314708(n)+n-A330025(n)` -/
def P9722672510175466360.Spec : Prop :=
  ∀ n, P9722672510175466360.a n = A313801 n

end A313801

/-! ## A313801.P8556443573068976742

`A005843(n)-(n-A311535(n))`
-/

namespace A313801.P8556443573068976742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311535 n)

end

end A313801.P8556443573068976742

namespace A313801

/-- `A005843(n)-(n-A311535(n))` -/
def P8556443573068976742.Spec : Prop :=
  ∀ n, P8556443573068976742.a n = A313801 n

end A313801

/-! ## A313801.P12982488095037659481

`abs(A008591(n)+n-A313682(n))`
-/

namespace A313801.P12982488095037659481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A313682 n)|

end

end A313801.P12982488095037659481

namespace A313801

/-- `abs(A008591(n)+n-A313682(n))` -/
def P12982488095037659481.Spec : Prop :=
  ∀ n, P12982488095037659481.a n = A313801 n

end A313801

/-! ## A313801.P11506735032093060238

`A008458(n)+A008574(n)-A313682(n)`
-/

namespace A313801.P11506735032093060238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313682 n)

end

end A313801.P11506735032093060238

namespace A313801

/-- `A008458(n)+A008574(n)-A313682(n)` -/
def P11506735032093060238.Spec : Prop :=
  ∀ n, P11506735032093060238.a n = A313801 n

end A313801

/-! ## A313801.P1656522530992366224

`A005843(n)+A005843(A008574(n))-A313682(n)`
-/

namespace A313801.P1656522530992366224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313682 n)

end

end A313801.P1656522530992366224

namespace A313801

/-- `A005843(n)+A005843(A008574(n))-A313682(n)` -/
def P1656522530992366224.Spec : Prop :=
  ∀ n, P1656522530992366224.a n = A313801 n

end A313801

/-! ## A313801.P977040848404252063

`A315489(n)-A330025(n)`
-/

namespace A313801.P977040848404252063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315489 n - A330025 n

end

end A313801.P977040848404252063

namespace A313801

/-- `A315489(n)-A330025(n)` -/
def P977040848404252063.Spec : Prop :=
  ∀ n, P977040848404252063.a n = A313801 n

end A313801

/-! ## A313801.P14140288001407038056

`A004525(A151988(n))+A314252(n)-n`
-/

namespace A313801.P14140288001407038056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151988 n).toNat + (A314252 n - (n : ℤ))

end

end A313801.P14140288001407038056

namespace A313801

/-- `A004525(A151988(n))+A314252(n)-n` -/
def P14140288001407038056.Spec : Prop :=
  ∀ n, P14140288001407038056.a n = A313801 n

end A313801

/-! ## A313801.P4250025736726865692

`A313928(n)-A047263(n+1)+n`
-/

namespace A313801.P4250025736726865692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n - A047263 (n + 1) + (n : ℤ)

end

end A313801.P4250025736726865692

namespace A313801

/-- `A313928(n)-A047263(n+1)+n` -/
def P4250025736726865692.Spec : Prop :=
  ∀ n, P4250025736726865692.a n = A313801 n

end A313801

/-! ## A313801.P8734168158135097999

`A005843(A008574(n)+n)-A313682(n)`
-/

namespace A313801.P8734168158135097999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313682 n

end

end A313801.P8734168158135097999

namespace A313801

/-- `A005843(A008574(n)+n)-A313682(n)` -/
def P8734168158135097999.Spec : Prop :=
  ∀ n, P8734168158135097999.a n = A313801 n

end A313801

/-! ## A313801.P5732025837174190934

`A004396(A151988(n))+A314164(n)-n`
-/

namespace A313801.P5732025837174190934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151988 n).toNat + (A314164 n - (n : ℤ))

end

end A313801.P5732025837174190934

namespace A313801

/-- `A004396(A151988(n))+A314164(n)-n` -/
def P5732025837174190934.Spec : Prop :=
  ∀ n, P5732025837174190934.a n = A313801 n

end A313801

/-!
# A313802: Coordination sequence Gal.6.209.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313802, the canonical program `A313802.P1453364322399320603` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313802 has offset 0).

The definition of A313802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313802.P2978924913651768693

`abs(A008592(n)-A313681(n))`
-/

namespace A313802.P2978924913651768693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313681 n|

end

end A313802.P2978924913651768693

namespace A313802

/-- `abs(A008592(n)-A313681(n))` -/
def P2978924913651768693.Spec : Prop :=
  ∀ n, P2978924913651768693.a n = A313802 n

end A313802

/-! ## A313802.P14110869773989277271

`(A311635(n)+A008458(n))/2`
-/

namespace A313802.P14110869773989277271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A311635 n + A008458 n : ℚ) / 2

end

end A313802.P14110869773989277271

namespace A313802

/-- `(A311635(n)+A008458(n))/2` -/
def P14110869773989277271.Spec : Prop :=
  ∀ n, P14110869773989277271.a n = (A313802 n : ℚ)

end A313802

/-! ## A313802.P11470016070108729087

`A008458(n)+A008574(n)-A313681(n)`
-/

namespace A313802.P11470016070108729087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313681 n)

end

end A313802.P11470016070108729087

namespace A313802

/-- `A008458(n)+A008574(n)-A313681(n)` -/
def P11470016070108729087.Spec : Prop :=
  ∀ n, P11470016070108729087.a n = A313802 n

end A313802

/-! ## A313802.P10253253996374992810

`∑{d}[A008592(n)-A313681(n), A000010(#)]`
-/

namespace A313802.P10253253996374992810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313802.P10253253996374992810

namespace A313802

/-- `∑{d}[A008592(n)-A313681(n), A000010(#)]` -/
def P10253253996374992810.Spec : Prop :=
  ∀ n, P10253253996374992810.a n = A313802 n

end A313802

/-! ## A313802.P1040086008146397795

`A005843(n)+A005843(A008574(n))-A313681(n)`
-/

namespace A313802.P1040086008146397795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313681 n)

end

end A313802.P1040086008146397795

namespace A313802

/-- `A005843(n)+A005843(A008574(n))-A313681(n)` -/
def P1040086008146397795.Spec : Prop :=
  ∀ n, P1040086008146397795.a n = A313802 n

end A313802

/-! ## A313802.P14743121588990095236

`A311635(n)+A001281(A008458(n)-A311635(n))`
-/

namespace A313802.P14743121588990095236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A001281 (A008458 n - A311635 n).toNat

end

end A313802.P14743121588990095236

namespace A313802

/-- `A311635(n)+A001281(A008458(n)-A311635(n))` -/
def P14743121588990095236.Spec : Prop :=
  ∀ n, P14743121588990095236.a n = A313802 n

end A313802

/-! ## A313802.P16797164932377513873

`A311635(n)+A004525(A008458(n)-A311635(n))`
-/

namespace A313802.P16797164932377513873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A004525 (A008458 n - A311635 n).toNat

end

end A313802.P16797164932377513873

namespace A313802

/-- `A311635(n)+A004525(A008458(n)-A311635(n))` -/
def P16797164932377513873.Spec : Prop :=
  ∀ n, P16797164932377513873.a n = A313802 n

end A313802

/-! ## A313802.P17790050865790681063

`A008458(n)-A004526(A008458(n)-A311635(n))`
-/

namespace A313802.P17790050865790681063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A311635 n).toNat

end

end A313802.P17790050865790681063

namespace A313802

/-- `A008458(n)-A004526(A008458(n)-A311635(n))` -/
def P17790050865790681063.Spec : Prop :=
  ∀ n, P17790050865790681063.a n = A313802 n

end A313802

/-! ## A313802.P1453364322399320603

`A008458(n)-A004525(A008458(n)-A312163(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A313802

/-- `A008458(n)-A004525(A008458(n)-A312163(n))` -/
def P1453364322399320603.Spec : Prop :=
  ∀ n, P1453364322399320603.a n = A313802 n

theorem P1453364322399320603.correct : P1453364322399320603.Spec := by
  intro n
  simp only [A313802]

end A313802

/-! ## A313802.P5685962445251972063

`A008486(n)+A004526(A311635(n))`
-/

namespace A313802.P5685962445251972063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A311635 n).toNat

end

end A313802.P5685962445251972063

namespace A313802

/-- `A008486(n)+A004526(A311635(n))` -/
def P5685962445251972063.Spec : Prop :=
  ∀ n, P5685962445251972063.a n = A313802 n

end A313802

/-! ## A313802.P16110466985806057609

`A004525(A311635(n))+A008588(n)/2`
-/

namespace A313802.P16110466985806057609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A311635 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A313802.P16110466985806057609

namespace A313802

/-- `A004525(A311635(n))+A008588(n)/2` -/
def P16110466985806057609.Spec : Prop :=
  ∀ n, P16110466985806057609.a n = (A313802 n : ℚ)

end A313802

/-! ## A313802.P7085382954206922395

`A005843(A008574(n)+n)-A313681(n)`
-/

namespace A313802.P7085382954206922395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313681 n

end

end A313802.P7085382954206922395

namespace A313802

/-- `A005843(A008574(n)+n)-A313681(n)` -/
def P7085382954206922395.Spec : Prop :=
  ∀ n, P7085382954206922395.a n = A313802 n

end A313802

/-! ## A313802.P10979930479854402646

`A004525(A008588(n))+A004525(A311635(n))`
-/

namespace A313802.P10979930479854402646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008588 n).toNat + A004525 (A311635 n).toNat

end

end A313802.P10979930479854402646

namespace A313802

/-- `A004525(A008588(n))+A004525(A311635(n))` -/
def P10979930479854402646.Spec : Prop :=
  ∀ n, P10979930479854402646.a n = A313802 n

end A313802

/-! ## A313802.P2795968228319979322

`A001281(A311635(n)+A008458(n))`
-/

namespace A313802.P2795968228319979322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A311635 n + A008458 n).toNat

end

end A313802.P2795968228319979322

namespace A313802

/-- `A001281(A311635(n)+A008458(n))` -/
def P2795968228319979322.Spec : Prop :=
  ∀ n, P2795968228319979322.a n = A313802 n

end A313802

/-! ## A313802.P17898904047244069271

`A004525(A311635(n)+A008458(n))`
-/

namespace A313802.P17898904047244069271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311635 n + A008458 n).toNat

end

end A313802.P17898904047244069271

namespace A313802

/-- `A004525(A311635(n)+A008458(n))` -/
def P17898904047244069271.Spec : Prop :=
  ∀ n, P17898904047244069271.a n = A313802 n

end A313802

/-! ## A313802.P7664405561391883650

`A004526(A311635(n)+A008458(n))`
-/

namespace A313802.P7664405561391883650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A311635 n + A008458 n).toNat

end

end A313802.P7664405561391883650

namespace A313802

/-- `A004526(A311635(n)+A008458(n))` -/
def P7664405561391883650.Spec : Prop :=
  ∀ n, P7664405561391883650.a n = A313802 n

end A313802

/-! ## A313802.P308585592177476272

`A004525(A311635(n)+A008588(n))`
-/

namespace A313802.P308585592177476272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311635 n + A008588 n).toNat

end

end A313802.P308585592177476272

namespace A313802

/-- `A004525(A311635(n)+A008588(n))` -/
def P308585592177476272.Spec : Prop :=
  ∀ n, P308585592177476272.a n = A313802 n

end A313802

/-! ## A313802.P17468355487233095922

`A004525(A312163(n)+A008458(n))`
-/

namespace A313802.P17468355487233095922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312163 n + A008458 n).toNat

end

end A313802.P17468355487233095922

namespace A313802

/-- `A004525(A312163(n)+A008458(n))` -/
def P17468355487233095922.Spec : Prop :=
  ∀ n, P17468355487233095922.a n = A313802 n

end A313802

/-! ## A313802.P16408079161877079857

`A004525(A312163(n)+A008588(n))`
-/

namespace A313802.P16408079161877079857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312163 n + A008588 n).toNat

end

end A313802.P16408079161877079857

namespace A313802

/-- `A004525(A312163(n)+A008588(n))` -/
def P16408079161877079857.Spec : Prop :=
  ∀ n, P16408079161877079857.a n = A313802 n

end A313802

/-!
# A313803: Coordination sequence Gal.6.210.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313803, the canonical program `A313803.P13524405696789602585` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313803 has offset 0).

The definition of A313803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313803.P15437676899500299081

`A311536(n)+n`
-/

namespace A313803.P15437676899500299081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311536 n + (n : ℤ)

end

end A313803.P15437676899500299081

namespace A313803

/-- `A311536(n)+n` -/
def P15437676899500299081.Spec : Prop :=
  ∀ n, P15437676899500299081.a n = A313803 n

end A313803

/-! ## A313803.P13559599947523110309

`A312963(n)+A004396(n)`
-/

namespace A313803.P13559599947523110309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A004396 n

end

end A313803.P13559599947523110309

namespace A313803

/-- `A312963(n)+A004396(n)` -/
def P13559599947523110309.Spec : Prop :=
  ∀ n, P13559599947523110309.a n = A313803 n

end A313803

/-! ## A313803.P4068484255201163660

`A313119(n)+A004525(n)`
-/

namespace A313803.P4068484255201163660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + A004525 n

end

end A313803.P4068484255201163660

namespace A313803

/-- `A313119(n)+A004525(n)` -/
def P4068484255201163660.Spec : Prop :=
  ∀ n, P4068484255201163660.a n = A313803 n

end A313803

/-! ## A313803.P691261626970558762

`A180004(A311312(n))+n`
-/

namespace A313803.P691261626970558762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A311312 n).toNat + (n : ℤ)

end

end A313803.P691261626970558762

namespace A313803

/-- `A180004(A311312(n))+n` -/
def P691261626970558762.Spec : Prop :=
  ∀ n, P691261626970558762.a n = A313803 n

end A313803

/-! ## A313803.P11564920981789331181

`abs(A008592(n)-A313680(n))`
-/

namespace A313803.P11564920981789331181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313680 n|

end

end A313803.P11564920981789331181

namespace A313803

/-- `abs(A008592(n)-A313680(n))` -/
def P11564920981789331181.Spec : Prop :=
  ∀ n, P11564920981789331181.a n = A313803 n

end A313803

/-! ## A313803.P7201621243263802123

`A313119(n)+Δ[A054925(n)]`
-/

namespace A313803.P7201621243263802123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + (f1 (n + 1) - f1 n)

end

end A313803.P7201621243263802123

namespace A313803

/-- `A313119(n)+Δ[A054925(n)]` -/
def P7201621243263802123.Spec : Prop :=
  ∀ n, P7201621243263802123.a n = A313803 n

end A313803

/-! ## A313803.P4810401323937069988

`A314964(n)+n-A004396(n)`
-/

namespace A313803.P4810401323937069988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314964 n + ((n : ℤ) - A004396 n)

end

end A313803.P4810401323937069988

namespace A313803

/-- `A314964(n)+n-A004396(n)` -/
def P4810401323937069988.Spec : Prop :=
  ∀ n, P4810401323937069988.a n = A313803 n

end A313803

/-! ## A313803.P4298057011795189733

`A005843(n)-(n-A311536(n))`
-/

namespace A313803.P4298057011795189733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311536 n)

end

end A313803.P4298057011795189733

namespace A313803

/-- `A005843(n)-(n-A311536(n))` -/
def P4298057011795189733.Spec : Prop :=
  ∀ n, P4298057011795189733.a n = A313803 n

end A313803

/-! ## A313803.P3188726718772861973

`abs(A008591(n)+n-A313680(n))`
-/

namespace A313803.P3188726718772861973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A313680 n)|

end

end A313803.P3188726718772861973

namespace A313803

/-- `abs(A008591(n)+n-A313680(n))` -/
def P3188726718772861973.Spec : Prop :=
  ∀ n, P3188726718772861973.a n = A313803 n

end A313803

/-! ## A313803.P3087327459959816878

`A313119(n)+n-∑[A021913(n)]`
-/

namespace A313803.P3087327459959816878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313803.P3087327459959816878

namespace A313803

/-- `A313119(n)+n-∑[A021913(n)]` -/
def P3087327459959816878.Spec : Prop :=
  ∀ n, P3087327459959816878.a n = A313803 n

end A313803

/-! ## A313803.P18279983967296185384

`A313119(n)+n-Δ[A011848(n)]`
-/

namespace A313803.P18279983967296185384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313119 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313803.P18279983967296185384

namespace A313803

/-- `A313119(n)+n-Δ[A011848(n)]` -/
def P18279983967296185384.Spec : Prop :=
  ∀ n, P18279983967296185384.a n = A313803 n

end A313803

/-! ## A313803.P296628982184394597

`A312963(n)+A002264(2*n+1)`
-/

namespace A313803.P296628982184394597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A002264 (2 * n + 1)

end

end A313803.P296628982184394597

namespace A313803

/-- `A312963(n)+A002264(2*n+1)` -/
def P296628982184394597.Spec : Prop :=
  ∀ n, P296628982184394597.a n = A313803 n

end A313803

/-! ## A313803.P13524405696789602585

`A314737(n)+n-A004396(A004525(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313803

/-- `A314737(n)+n-A004396(A004525(n))` -/
def P13524405696789602585.Spec : Prop :=
  ∀ n, P13524405696789602585.a n = A313803 n

theorem P13524405696789602585.correct : P13524405696789602585.Spec := by
  intro n
  simp only [A313803]

end A313803

/-! ## A313803.P3116847072858809879

`A314970(n)+A004396(n-A004525(n))`
-/

namespace A313803.P3116847072858809879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313803.P3116847072858809879

namespace A313803

/-- `A314970(n)+A004396(n-A004525(n))` -/
def P3116847072858809879.Spec : Prop :=
  ∀ n, P3116847072858809879.a n = A313803 n

end A313803

/-! ## A313803.P5508189613214223734

`A314974(n)+A004525(n-A004396(n))`
-/

namespace A313803.P5508189613214223734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314974 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313803.P5508189613214223734

namespace A313803

/-- `A314974(n)+A004525(n-A004396(n))` -/
def P5508189613214223734.Spec : Prop :=
  ∀ n, P5508189613214223734.a n = A313803 n

end A313803

/-! ## A313803.P17681639495609707743

`A008458(n)+A008574(n)-A313680(n)`
-/

namespace A313803.P17681639495609707743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313680 n)

end

end A313803.P17681639495609707743

namespace A313803

/-- `A008458(n)+A008574(n)-A313680(n)` -/
def P17681639495609707743.Spec : Prop :=
  ∀ n, P17681639495609707743.a n = A313803 n

end A313803

/-! ## A313803.P12536516620739104192

`A008486(n)+A314964(n)-A008576(n)`
-/

namespace A313803.P12536516620739104192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314964 n - A008576 n)

end

end A313803.P12536516620739104192

namespace A313803

/-- `A008486(n)+A314964(n)-A008576(n)` -/
def P12536516620739104192.Spec : Prop :=
  ∀ n, P12536516620739104192.a n = A313803 n

end A313803

/-! ## A313803.P10690889859056558146

`abs(A008592(n)+n-A315741(n))`
-/

namespace A313803.P10690889859056558146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315741 n)|

end

end A313803.P10690889859056558146

namespace A313803

/-- `abs(A008592(n)+n-A315741(n))` -/
def P10690889859056558146.Spec : Prop :=
  ∀ n, P10690889859056558146.a n = A313803 n

end A313803

/-! ## A313803.P11451625888257522474

`A004525(2*A314903(n)+n)`
-/

namespace A313803.P11451625888257522474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A314903 n + (n : ℤ)).toNat

end

end A313803.P11451625888257522474

namespace A313803

/-- `A004525(2*A314903(n)+n)` -/
def P11451625888257522474.Spec : Prop :=
  ∀ n, P11451625888257522474.a n = A313803 n

end A313803

/-!
# A313804: Coordination sequence Gal.5.214.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313804, there is no canonical definition to state claims against.
-/

/-! ## A313804.P3494143487093333300

`A351631(n+1)+A156262(A156287(3*n+1))`
-/

namespace A313804.P3494143487093333300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351631 (n + 1) + A156262 (A156287 (3 * n + 1)).toNat

end

end A313804.P3494143487093333300

/-! ## A313804.P4926237697977765814

`A313800(n)+A007949(A351935(n))`
-/

namespace A313804.P4926237697977765814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313800 n + A007949 (A351935 n).toNat

end

end A313804.P4926237697977765814

/-! ## A313804.P12170225711086218428

`A343957(A343949(n))+A313800(n)`
-/

namespace A313804.P12170225711086218428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343957 (A343949 n).toNat + A313800 n

end

end A313804.P12170225711086218428

/-! ## A313804.P5648525627946081714

`A301708(n)-A057814(A057814(n))`
-/

namespace A313804.P5648525627946081714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A057814 (A057814 n).toNat

end

end A313804.P5648525627946081714

/-! ## A313804.P11361675253899864362

`A301708(n)-A110101(A245790(n))`
-/

namespace A313804.P11361675253899864362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A110101 (A245790 n).toNat

end

end A313804.P11361675253899864362

/-!
# A313805: Coordination sequence Gal.6.487.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313805, there is no canonical definition to state claims against.
-/

/-! ## A313805.P13952905224324846187

`A028779(A311512(n))-A328161(n+1)`
-/

namespace A313805.P13952905224324846187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028779 (A311512 n).toNat - A328161 (n + 1)

end

end A313805.P13952905224324846187

/-! ## A313805.P547386637875698849

`A313804(n)+A035468(A276142(n+1))`
-/

namespace A313805.P547386637875698849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313804 n + A035468 (A276142 (n + 1)).toNat

end

end A313805.P547386637875698849

/-! ## A313805.P3373190941983296364

`A313933(n)-A124761(A180415(n+1))`
-/

namespace A313805.P3373190941983296364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313933 n - A124761 (A180415 (n + 1)).toNat

end

end A313805.P3373190941983296364

/-! ## A313805.P2815045829585364169

`A345913(A301291(n)*A345063(n+1)+1)`
-/

namespace A313805.P2815045829585364169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (A301291 n * A345063 (n + 1) + 1).toNat

end

end A313805.P2815045829585364169

/-!
# A313806: Coordination sequence Gal.5.296.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313806, there is no canonical definition to state claims against.
-/

/-! ## A313806.P5973789528951790569

`A314793(n)+A350507(n+1)%(n+1)`
-/

namespace A313806.P5973789528951790569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314793 n + Int.tmod (A350507 (n + 1)) (n + 1 : ℤ)

end

end A313806.P5973789528951790569

/-! ## A313806.P3474837799831678232

`A313903(n)+A056594(A088218(n))`
-/

namespace A313806.P3474837799831678232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313903 n + A056594 (A088218 n).toNat

end

end A313806.P3474837799831678232

/-! ## A313806.P12751169998101587004

`or(A072797(n), A346132(A312443(n)))`
-/

namespace A313806.P12751169998101587004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072797 n) (A346132 (A312443 n).toNat)

end

end A313806.P12751169998101587004

/-! ## A313806.P7178794946266963772

`or(A073195(n), A346132(A312443(n)))`
-/

namespace A313806.P7178794946266963772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073195 n) (A346132 (A312443 n).toNat)

end

end A313806.P7178794946266963772

/-! ## A313806.P16539641714150166809

`or(A073205(n), A346132(A312443(n)))`
-/

namespace A313806.P16539641714150166809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073205 n) (A346132 (A312443 n).toNat)

end

end A313806.P16539641714150166809

/-!
# A313807: Coordination sequence Gal.4.151.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313807, there is no canonical definition to state claims against.
-/

/-! ## A313807.P8147549844427975827

`A314939(n)+A001221(A000110(n))`
-/

namespace A313807.P8147549844427975827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314939 n + A001221 (A000110 n).toNat

end

end A313807.P8147549844427975827

/-! ## A313807.P1916170030778386326

`A065040(A004098(n))+A008706(n)`
-/

namespace A313807.P1916170030778386326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065040 (A004098 n).toNat + A008706 n

end

end A313807.P1916170030778386326

/-! ## A313807.P8239566800210617500

`A313860(n)+A123973(A014217(n))`
-/

namespace A313807.P8239566800210617500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313860 n + A123973 (A014217 n).toNat

end

end A313807.P8239566800210617500

/-! ## A313807.P15671224778431499400

`A313613(n)+A001222(A186758(n))`
-/

namespace A313807.P15671224778431499400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313613 n + A001222 (A186758 n).toNat

end

end A313807.P15671224778431499400

/-! ## A313807.P6197133019797277062

`A312141(n)+A001222(A272310(n))`
-/

namespace A313807.P6197133019797277062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312141 n + A001222 (A272310 n).toNat

end

end A313807.P6197133019797277062

/-!
# A313808: Coordination sequence Gal.6.584.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313808, there is no canonical definition to state claims against.
-/

/-! ## A313808.P4772423355562379990

`or(A011734(A210043(n)), A313807(n))`
-/

namespace A313808.P4772423355562379990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011734 (A210043 n).toNat) (A313807 n)

end

end A313808.P4772423355562379990

/-! ## A313808.P13020394613315355725

`or(A185116(A110132(n)), A313807(n))`
-/

namespace A313808.P13020394613315355725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185116 (A110132 n).toNat) (A313807 n)

end

end A313808.P13020394613315355725

/-! ## A313808.P6486195280099960489

`A313766(n)+A005089(A084776(n))`
-/

namespace A313808.P6486195280099960489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313766 n + A005089 (A084776 n).toNat

end

end A313808.P6486195280099960489

/-! ## A313808.P13482519537384901913

`A315320(n)+A244895(A303684(n+1))`
-/

namespace A313808.P13482519537384901913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315320 n + A244895 (A303684 (n + 1)).toNat

end

end A313808.P13482519537384901913

/-!
# A313809: Coordination sequence Gal.6.595.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313809, there is no canonical definition to state claims against.
-/

/-! ## A313809.P5784619450911722063

`or(A073093(A186948(n)), A146763(n))`
-/

namespace A313809.P5784619450911722063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073093 (A186948 n).toNat) (A146763 n)

end

end A313809.P5784619450911722063

/-! ## A313809.P1032788404069495254

`or(A313643(n), A318471(A134064(n)))`
-/

namespace A313809.P1032788404069495254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313643 n) (A318471 (A134064 n).toNat)

end

end A313809.P1032788404069495254

/-! ## A313809.P10904079493121177308

`A064097(A345162(2*(n+1)))+A000120(A361242(n))+4*n`
-/

namespace A313809.P10904079493121177308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (A345162 (2 * (n + 1))).toNat + (A000120 (A361242 n).toNat + (4 * n : ℤ))

end

end A313809.P10904079493121177308

/-!
# A313810: Coordination sequence Gal.6.660.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313810, there is no canonical definition to state claims against.
-/

/-! ## A313810.P12125316789146880139

`A313815(n)-A151755(A036378(n))`
-/

namespace A313810.P12125316789146880139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313815 n - A151755 (A036378 n).toNat

end

end A313810.P12125316789146880139

/-! ## A313810.P13534582395821922275

`A313918(n)-A061358(A001008(n+1))`
-/

namespace A313810.P13534582395821922275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313918 n - A061358 (A001008 (n + 1)).toNat

end

end A313810.P13534582395821922275

/-! ## A313810.P16371059136919198368

`A315538(n)-A284258(A237557(n+1))`
-/

namespace A313810.P16371059136919198368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - A284258 (A237557 (n + 1)).toNat

end

end A313810.P16371059136919198368

/-! ## A313810.P10848697142845894752

`A314151(n)-A159684(A344394(n+3))`
-/

namespace A313810.P10848697142845894752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314151 n - A159684 (A344394 (n + 3)).toNat

end

end A313810.P10848697142845894752

/-! ## A313810.P7102779298782481547

`A323512(A109097(2*n+5))+A202115(3*n+1)`
-/

namespace A313810.P7102779298782481547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323512 (A109097 (2 * n + 5)).toNat + A202115 (3 * n + 1)

end

end A313810.P7102779298782481547

/-!
# A313811: Coordination sequence Gal.6.649.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313811, the canonical program `A313811.P15472108025893280203` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313811 has offset 0).

The definition of A313811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2308 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313811.P15472108025893280203

`2*A313780(n)-A313738(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313811

/-- `2*A313780(n)-A313738(n)` -/
def P15472108025893280203.Spec : Prop :=
  ∀ n, P15472108025893280203.a n = A313811 n

theorem P15472108025893280203.correct : P15472108025893280203.Spec := by
  intro n
  simp only [A313811]

end A313811

/-! ## A313811.P9609123452157231611

`A004277(A313780(n))-A313738(n)`
-/

namespace A313811.P9609123452157231611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A313780 n).toNat - A313738 n

end

end A313811.P9609123452157231611

namespace A313811

/-- `A004277(A313780(n))-A313738(n)` -/
def P9609123452157231611.Spec : Prop :=
  ∀ n, P9609123452157231611.a n = A313811 n

end A313811

/-! ## A313811.P7322804016073031384

`A286989(A062389(n+1)%A066218(2*n+3))`
-/

namespace A313811.P7322804016073031384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286989 (Int.tmod (A062389 (n + 1)) (A066218 (2 * n + 3))).toNat

end

end A313811.P7322804016073031384

namespace A313811

/-- `A286989(A062389(n+1)%A066218(2*n+3))` -/
def P7322804016073031384.Spec : Prop :=
  ∀ n, P7322804016073031384.a n = A313811 n

end A313811

/-! ## A313811.P12405529186202390109

`∑[A353861(A365810(2*n)²)]`
-/

namespace A313811.P12405529186202390109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353861 (A365810 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313811.P12405529186202390109

namespace A313811

/-- `∑[A353861(A365810(2*n)²)]` -/
def P12405529186202390109.Spec : Prop :=
  ∀ n, P12405529186202390109.a n = A313811 n

end A313811

/-! ## A313811.P15699627427988967162

`A314074(n)-A352514(∑[ceil(3*n/2)])`
-/

namespace A313811.P15699627427988967162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n - A352514 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A313811.P15699627427988967162

namespace A313811

/-- `A314074(n)-A352514(∑[ceil(3*n/2)])` -/
def P15699627427988967162.Spec : Prop :=
  ∀ n, P15699627427988967162.a n = A313811 n

end A313811

/-!
# A313812: Coordination sequence Gal.5.310.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313812, the canonical program `A313812.P6628673086175508618` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313812 has offset 0).

The definition of A313812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313812.P18040714326650124210

`A314074(n)+A014017(n+2)`
-/

namespace A313812.P18040714326650124210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + A014017 (n + 2)

end

end A313812.P18040714326650124210

namespace A313812

/-- `A314074(n)+A014017(n+2)` -/
def P18040714326650124210.Spec : Prop :=
  ∀ n, P18040714326650124210.a n = A313812 n

end A313812

/-! ## A313812.P6202310900054766633

`A314074(n)+A056594(ceil(C(or(1, n), n)/2))`
-/

namespace A313812.P6202310900054766633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + A056594 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat

end

end A313812.P6202310900054766633

namespace A313812

/-- `A314074(n)+A056594(ceil(C(or(1, n), n)/2))` -/
def P6202310900054766633.Spec : Prop :=
  ∀ n, P6202310900054766633.a n = A313812 n

end A313812

/-! ## A313812.P206486317472894982

`A314074(n)+A056594(A029579(n))`
-/

namespace A313812.P206486317472894982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n + A056594 (A029579 n).toNat

end

end A313812.P206486317472894982

namespace A313812

/-- `A314074(n)+A056594(A029579(n))` -/
def P206486317472894982.Spec : Prop :=
  ∀ n, P206486317472894982.a n = A313812 n

end A313812

/-! ## A313812.P6628673086175508618

`A312974(n)+A004525(A004525(n)+n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313812

/-- `A312974(n)+A004525(A004525(n)+n)` -/
def P6628673086175508618.Spec : Prop :=
  ∀ n, P6628673086175508618.a n = A313812 n

theorem P6628673086175508618.correct : P6628673086175508618.Spec := by
  intro n
  simp only [A313812]

end A313812

/-! ## A313812.P12993246472900664710

`A314074(n)-A056594(A029579(n))*A056594(n)`
-/

namespace A313812.P12993246472900664710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314074 n - A056594 (A029579 n).toNat * A056594 n

end

end A313812.P12993246472900664710

namespace A313812

/-- `A314074(n)-A056594(A029579(n))*A056594(n)` -/
def P12993246472900664710.Spec : Prop :=
  ∀ n, P12993246472900664710.a n = A313812 n

end A313812

/-!
# A313813: Coordination sequence Gal.5.309.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313813, there is no canonical definition to state claims against.
-/

/-! ## A313813.P11415305789576574856

`A019269(A041171(n))+A008706(n)`
-/

namespace A313813.P11415305789576574856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019269 (A041171 n).toNat + A008706 n

end

end A313813.P11415305789576574856

/-! ## A313813.P4187956333269115757

`A313663(n)+A001878(A003462(n))`
-/

namespace A313813.P4187956333269115757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313663 n + A001878 (A003462 n).toNat

end

end A313813.P4187956333269115757

/-! ## A313813.P9423937751873186567

`or(A001221(A027496(n+1)), A313752(n))`
-/

namespace A313813.P9423937751873186567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A027496 (n + 1)).toNat) (A313752 n)

end

end A313813.P9423937751873186567

/-! ## A313813.P17991238834159902438

`or(A092782(A100153(n+1)), A310421(n))`
-/

namespace A313813.P17991238834159902438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A092782 (A100153 (n + 1)).toNat) (A310421 n)

end

end A313813.P17991238834159902438

/-! ## A313813.P9246896936755282011

`A301708(n)-A188027(A003946(n))`
-/

namespace A313813.P9246896936755282011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A188027 (A003946 n).toNat

end

end A313813.P9246896936755282011

/-!
# A313814: Coordination sequence Gal.5.314.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313814, the canonical program `A313814.P16685413866964249119` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313814 has offset 0).

The definition of A313814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2235 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313814.P16685413866964249119

`2*A313788(n)-A313738(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A313814

/-- `2*A313788(n)-A313738(n)` -/
def P16685413866964249119.Spec : Prop :=
  ∀ n, P16685413866964249119.a n = A313814 n

theorem P16685413866964249119.correct : P16685413866964249119.Spec := by
  intro n
  simp only [A313814]

end A313814

/-! ## A313814.P18142483386424402508

`A313899(n)+A314149(n)-A314194(n)`
-/

namespace A313814.P18142483386424402508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313899 n + (A314149 n - A314194 n)

end

end A313814.P18142483386424402508

namespace A313814

/-- `A313899(n)+A314149(n)-A314194(n)` -/
def P18142483386424402508.Spec : Prop :=
  ∀ n, P18142483386424402508.a n = A313814 n

end A313814

/-! ## A313814.P16565556925832249234

`A313918(n)+A314133(n)-A314194(n)`
-/

namespace A313814.P16565556925832249234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313918 n + (A314133 n - A314194 n)

end

end A313814.P16565556925832249234

namespace A313814

/-- `A313918(n)+A314133(n)-A314194(n)` -/
def P16565556925832249234.Spec : Prop :=
  ∀ n, P16565556925832249234.a n = A313814 n

end A313814

/-! ## A313814.P15332212547600766837

`A313738(n)+A005843(A313738(n)-A313696(n))`
-/

namespace A313814.P15332212547600766837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n + A005843 (A313738 n - A313696 n).toNat

end

end A313814.P15332212547600766837

namespace A313814

/-- `A313738(n)+A005843(A313738(n)-A313696(n))` -/
def P15332212547600766837.Spec : Prop :=
  ∀ n, P15332212547600766837.a n = A313814 n

end A313814

/-! ## A313814.P7924057328954553214

`A313738(n)+A005843(A313788(n)-A313738(n))`
-/

namespace A313814.P7924057328954553214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313738 n + A005843 (A313788 n - A313738 n).toNat

end

end A313814.P7924057328954553214

namespace A313814

/-- `A313738(n)+A005843(A313788(n)-A313738(n))` -/
def P7924057328954553214.Spec : Prop :=
  ∀ n, P7924057328954553214.a n = A313814 n

end A313814

/-! ## A313814.P14107368728334922302

`A313929(n)-Δ[A011864(n)]`
-/

namespace A313814.P14107368728334922302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313929 n - (f1 (n + 1) - f1 n)

end

end A313814.P14107368728334922302

namespace A313814

/-- `A313929(n)-Δ[A011864(n)]` -/
def P14107368728334922302.Spec : Prop :=
  ∀ n, P14107368728334922302.a n = A313814 n

end A313814

/-! ## A313814.P2941691981360328676

`A008486(A313738(n))-2*A313696(n)`
-/

namespace A313814.P2941691981360328676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A313738 n).toNat - 2 * A313696 n

end

end A313814.P2941691981360328676

namespace A313814

/-- `A008486(A313738(n))-2*A313696(n)` -/
def P2941691981360328676.Spec : Prop :=
  ∀ n, P2941691981360328676.a n = A313814 n

end A313814

/-! ## A313814.P8366328353792739916

`A008486(A313738(n))-A005843(A313696(n))`
-/

namespace A313814.P8366328353792739916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A313738 n).toNat - A005843 (A313696 n).toNat

end

end A313814.P8366328353792739916

namespace A313814

/-- `A008486(A313738(n))-A005843(A313696(n))` -/
def P8366328353792739916.Spec : Prop :=
  ∀ n, P8366328353792739916.a n = A313814 n

end A313814

/-! ## A313814.P3901285901582183558

`A005843(A313788(n))-A313738(n)`
-/

namespace A313814.P3901285901582183558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313788 n).toNat - A313738 n

end

end A313814.P3901285901582183558

namespace A313814

/-- `A005843(A313788(n))-A313738(n)` -/
def P3901285901582183558.Spec : Prop :=
  ∀ n, P3901285901582183558.a n = A313814 n

end A313814

/-!
# A313815: Coordination sequence Gal.5.144.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313815, there is no canonical definition to state claims against.
-/

/-! ## A313815.P4241301774019909141

`A004525(A047263(2*n+1))+A311861(n)-A099104(A046288(n+1))`
-/

namespace A313815.P4241301774019909141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (2 * n + 1)).toNat + (A311861 n - A099104 (A046288 (n + 1)).toNat)

end

end A313815.P4241301774019909141

/-! ## A313815.P10374370393999423620

`A032793(A008576(n)%A046288(n+1))+A004525(A047263(2*n+1))`
-/

namespace A313815.P10374370393999423620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (Int.tmod (A008576 n) (A046288 (n + 1))).toNat + A004525 (A047263 (2 * n + 1)).toNat

end

end A313815.P10374370393999423620

/-! ## A313815.P5489878013248723069

`A313810(n)+A151755(A036378(n))`
-/

namespace A313815.P5489878013248723069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313810 n + A151755 (A036378 n).toNat

end

end A313815.P5489878013248723069

/-! ## A313815.P13579571854332732338

`A004525(A047263(2*n+1))+A311513(n)-A010051(A002212(n))`
-/

namespace A313815.P13579571854332732338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (2 * n + 1)).toNat + (A311513 n - A010051 (A002212 n).toNat)

end

end A313815.P13579571854332732338

/-! ## A313815.P16201497387672766094

`A004525(A047263(2*n+1))+A312140(n)-A001221(A261664(n))`
-/

namespace A313815.P16201497387672766094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (2 * n + 1)).toNat + (A312140 n - A001221 (A261664 n).toNat)

end

end A313815.P16201497387672766094

/-!
# A313816: Coordination sequence Gal.6.663.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313816, there is no canonical definition to state claims against.
-/

/-! ## A313816.P17167134107989338805

`or(A020639(A209049(n)), A045682(n))`
-/

namespace A313816.P17167134107989338805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A209049 n).toNat) (A045682 n)

end

end A313816.P17167134107989338805

/-! ## A313816.P10073683047370100007

`or(A001221(A150183(n)), A310464(n))`
-/

namespace A313816.P10073683047370100007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A150183 n).toNat) (A310464 n)

end

end A313816.P10073683047370100007

/-! ## A313816.P18321856090385533560

`A315664(A087051(n))-A271420(3*(n+1))`
-/

namespace A313816.P18321856090385533560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315664 (A087051 n).toNat - A271420 (3 * (n + 1))

end

end A313816.P18321856090385533560

/-! ## A313816.P1290006589237701434

`A008458(n)-A069283(A130279(n+1))-A271420(3*(n+1))`
-/

namespace A313816.P1290006589237701434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A069283 (A130279 (n + 1)).toNat - A271420 (3 * (n + 1))

end

end A313816.P1290006589237701434

/-! ## A313816.P10518003085521965366

`6*n+2-A265745(A130279(n+1))-A265745(A265745(n))`
-/

namespace A313816.P10518003085521965366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 2 : ℤ) - A265745 (A130279 (n + 1)).toNat - A265745 (A265745 n).toNat

end

end A313816.P10518003085521965366

/-!
# A313817: Coordination sequence Gal.5.215.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313817, there is no canonical definition to state claims against.
-/

/-! ## A313817.P10851177358825131688

`A311617(A120126(n))+n`
-/

namespace A313817.P10851177358825131688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311617 (A120126 n).toNat + (n : ℤ)

end

end A313817.P10851177358825131688

/-! ## A313817.P2531628343204159393

`A311617(A351870(n))+n`
-/

namespace A313817.P2531628343204159393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311617 (A351870 n).toNat + (n : ℤ)

end

end A313817.P2531628343204159393

/-! ## A313817.P10928748937876597047

`A311501(n)+A267679(A321228(n))+n`
-/

namespace A313817.P10928748937876597047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311501 n + (A267679 (A321228 n).toNat + (n : ℤ))

end

end A313817.P10928748937876597047

/-! ## A313817.P3409167087003463144

`or(A000035(A014372(n)), A311585(n))+n`
-/

namespace A313817.P3409167087003463144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A014372 n).toNat) (A311585 n) + (n : ℤ)

end

end A313817.P3409167087003463144

/-!
# A313818: Coordination sequence Gal.6.579.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313818, there is no canonical definition to state claims against.
-/

/-! ## A313818.P3451982449302904890

`A020482(3*(n+1))-A109129(6-(n+2)*(2-∑[2^n]))`
-/

namespace A313818.P3451982449302904890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (3 * (n + 1)) - A109129 (6 - (n + 2 : ℤ) * (2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))).toNat

end

end A313818.P3451982449302904890

/-! ## A313818.P14449242133985135935

`A259934(n+1)-A034444(A000228(n+1))`
-/

namespace A313818.P14449242133985135935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 (n + 1) - A034444 (A000228 (n + 1)).toNat

end

end A313818.P14449242133985135935

/-!
# A313819: Coordination sequence Gal.6.571.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313819, there is no canonical definition to state claims against.
-/

/-! ## A313819.P6301918534273724059

`A301293(n)+A007895(A127540(n))`
-/

namespace A313819.P6301918534273724059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A007895 (A127540 n).toNat

end

end A313819.P6301918534273724059

/-! ## A313819.P12926671885099773474

`A313675(n)+A151692(A001497(n))`
-/

namespace A313819.P12926671885099773474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313675 n + A151692 (A001497 n).toNat

end

end A313819.P12926671885099773474

/-! ## A313819.P3731244297099375247

`A315523(n)-A001221(A046722(n+3))`
-/

namespace A313819.P3731244297099375247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A001221 (A046722 (n + 3)).toNat

end

end A313819.P3731244297099375247

/-! ## A313819.P12162528893436150655

`A313182(n)+A001221(A000302(n))`
-/

namespace A313819.P12162528893436150655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313182 n + A001221 (A000302 n).toNat

end

end A313819.P12162528893436150655

/-! ## A313819.P9742218277741337783

`A333224(A057977(n))+A228177(n)`
-/

namespace A313819.P9742218277741337783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (A057977 n).toNat + A228177 n

end

end A313819.P9742218277741337783

/-!
# A313820: Coordination sequence Gal.6.500.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313820, there is no canonical definition to state claims against.
-/

/-! ## A313820.P16549321760489863073

`A315538(n)-A165073(A001906(n))`
-/

namespace A313820.P16549321760489863073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315538 n - A165073 (A001906 n).toNat

end

end A313820.P16549321760489863073

/-! ## A313820.P16038688154532499470

`A160755(xor(A105700(n), A301712(n)))`
-/

namespace A313820.P16038688154532499470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (Int.xor (A105700 n) (A301712 n)).toNat

end

end A313820.P16038688154532499470

/-! ## A313820.P1995434997040754646

`A005117(3*n+1)-A090455(A101125(n))`
-/

namespace A313820.P1995434997040754646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 1) - A090455 (A101125 n).toNat

end

end A313820.P1995434997040754646

/-!
# A313821: Coordination sequence Gal.6.579.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313821, there is no canonical definition to state claims against.
-/

/-! ## A313821.P12412819178446173238

`A250120(n)+A102669(A000085(n))`
-/

namespace A313821.P12412819178446173238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A102669 (A000085 n).toNat

end

end A313821.P12412819178446173238

/-! ## A313821.P10433932273380738223

`A313837(n)-A164292(A003724(n))`
-/

namespace A313821.P10433932273380738223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - A164292 (A003724 n).toNat

end

end A313821.P10433932273380738223

/-! ## A313821.P4236725334968312021

`A313837(n)-A023973(A176644(n))`
-/

namespace A313821.P4236725334968312021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - A023973 (A176644 n).toNat

end

end A313821.P4236725334968312021

/-! ## A313821.P16599545168271042881

`A313837(n)-A267043(A146751(n))`
-/

namespace A313821.P16599545168271042881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n - A267043 (A146751 n).toNat

end

end A313821.P16599545168271042881

/-! ## A313821.P5242940396542707174

`A313837(n)+A159075(A056437(n+1))`
-/

namespace A313821.P5242940396542707174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313837 n + A159075 (A056437 (n + 1)).toNat

end

end A313821.P5242940396542707174

/-!
# A313822: Coordination sequence Gal.6.428.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313822, there is no canonical definition to state claims against.
-/

/-! ## A313822.P17092120829818258892

`record[A313823(n)-A035042(n)]`
-/

namespace A313822.P17092120829818258892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313823 n - A035042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313822.P17092120829818258892

/-! ## A313822.P18173292197707063633

`A313823(n)-A018843(A033638(n))`
-/

namespace A313822.P18173292197707063633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313823 n - A018843 (A033638 n).toNat

end

end A313822.P18173292197707063633

/-! ## A313822.P11156709642088670346

`A313823(A120126(n))-A035042(n)`
-/

namespace A313822.P11156709642088670346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313823 (A120126 n).toNat - A035042 n

end

end A313822.P11156709642088670346

/-! ## A313822.P14623656246865380935

`A313823(A120126(n))-A059995(n)`
-/

namespace A313822.P14623656246865380935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313823 (A120126 n).toNat - A059995 n

end

end A313822.P14623656246865380935

/-! ## A313822.P10767565613538763960

`A313823(A087051(n))`
-/

namespace A313822.P10767565613538763960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313823 (A087051 n).toNat

end

end A313822.P10767565613538763960

/-!
# A313823: Coordination sequence Gal.6.427.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313823, there is no canonical definition to state claims against.
-/

/-! ## A313823.P6132740266787953993

`A313822(n)+A018843(A033638(n))`
-/

namespace A313823.P6132740266787953993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313822 n + A018843 (A033638 n).toNat

end

end A313823.P6132740266787953993

/-! ## A313823.P9271974993640306966

`A313822(A120126(n))+A035042(n)`
-/

namespace A313823.P9271974993640306966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313822 (A120126 n).toNat + A035042 n

end

end A313823.P9271974993640306966

/-! ## A313823.P7930617592083404449

`A313822(A120126(n))+A059995(n)`
-/

namespace A313823.P7930617592083404449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313822 (A120126 n).toNat + A059995 n

end

end A313823.P7930617592083404449

/-!
# A313824: Coordination sequence Gal.6.195.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313824, the canonical program `A313824.P16488686342278004829` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313824 has offset 0).

The definition of A313824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313824.P16488686342278004829

`A004396(A004525(n))+A313859(n)-A004525(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313824

/-- `A004396(A004525(n))+A313859(n)-A004525(n)` -/
def P16488686342278004829.Spec : Prop :=
  ∀ n, P16488686342278004829.a n = A313824 n

theorem P16488686342278004829.correct : P16488686342278004829.Spec := by
  intro n
  simp only [A313824]

end A313824

/-! ## A313824.P13471162946572093747

`A315258(n)-A101455(n)`
-/

namespace A313824.P13471162946572093747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315258 n - A101455 n

end

end A313824.P13471162946572093747

namespace A313824

/-- `A315258(n)-A101455(n)` -/
def P13471162946572093747.Spec : Prop :=
  ∀ n, P13471162946572093747.a n = A313824 n

end A313824

/-! ## A313824.P3703753808469007076

`abs(A008592(n)-A313646(n))`
-/

namespace A313824.P3703753808469007076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313646 n|

end

end A313824.P3703753808469007076

namespace A313824

/-- `abs(A008592(n)-A313646(n))` -/
def P3703753808469007076.Spec : Prop :=
  ∀ n, P3703753808469007076.a n = A313824 n

end A313824

/-! ## A313824.P5042942158154088961

`A008458(n)+A008574(n)-A313646(n)`
-/

namespace A313824.P5042942158154088961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313646 n)

end

end A313824.P5042942158154088961

namespace A313824

/-- `A008458(n)+A008574(n)-A313646(n)` -/
def P5042942158154088961.Spec : Prop :=
  ∀ n, P5042942158154088961.a n = A313824 n

end A313824

/-! ## A313824.P10768716781609302011

`A314185(n)-∑[A022003(n)]`
-/

namespace A313824.P10768716781609302011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314185 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313824.P10768716781609302011

namespace A313824

/-- `A314185(n)-∑[A022003(n)]` -/
def P10768716781609302011.Spec : Prop :=
  ∀ n, P10768716781609302011.a n = A313824 n

end A313824

/-! ## A313824.P7106652787136329949

`A314185(n)-A002264(n+1)`
-/

namespace A313824.P7106652787136329949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314185 n - A002264 (n + 1)

end

end A313824.P7106652787136329949

namespace A313824

/-- `A314185(n)-A002264(n+1)` -/
def P7106652787136329949.Spec : Prop :=
  ∀ n, P7106652787136329949.a n = A313824 n

end A313824

/-! ## A313824.P1836288698269689645

`A004396(n)+A314185(n)-n`
-/

namespace A313824.P1836288698269689645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314185 n - (n : ℤ))

end

end A313824.P1836288698269689645

namespace A313824

/-- `A004396(n)+A314185(n)-n` -/
def P1836288698269689645.Spec : Prop :=
  ∀ n, P1836288698269689645.a n = A313824 n

end A313824

/-! ## A313824.P16955894480892306864

`A314185(n)-A008615(2*n+1)`
-/

namespace A313824.P16955894480892306864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314185 n - A008615 (2 * n + 1)

end

end A313824.P16955894480892306864

namespace A313824

/-- `A314185(n)-A008615(2*n+1)` -/
def P16955894480892306864.Spec : Prop :=
  ∀ n, P16955894480892306864.a n = A313824 n

end A313824

/-! ## A313824.P13668663599656793525

`A008576(n)+A314185(n)-A008486(n)`
-/

namespace A313824.P13668663599656793525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314185 n - A008486 n)

end

end A313824.P13668663599656793525

namespace A313824

/-- `A008576(n)+A314185(n)-A008486(n)` -/
def P13668663599656793525.Spec : Prop :=
  ∀ n, P13668663599656793525.a n = A313824 n

end A313824

/-! ## A313824.P5029062893959980741

`A315517(n)-A004525(n)`
-/

namespace A313824.P5029062893959980741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - A004525 n

end

end A313824.P5029062893959980741

namespace A313824

/-- `A315517(n)-A004525(n)` -/
def P5029062893959980741.Spec : Prop :=
  ∀ n, P5029062893959980741.a n = A313824 n

end A313824

/-! ## A313824.P6623937756885343494

`A315517(n)-Δ[A054925(n)]`
-/

namespace A313824.P6623937756885343494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - (f1 (n + 1) - f1 n)

end

end A313824.P6623937756885343494

namespace A313824

/-- `A315517(n)-Δ[A054925(n)]` -/
def P6623937756885343494.Spec : Prop :=
  ∀ n, P6623937756885343494.a n = A313824 n

end A313824

/-! ## A313824.P8292442992522414701

`∑[A021913(n)]+A315517(n)-n`
-/

namespace A313824.P8292442992522414701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315517 n - (n : ℤ))

end

end A313824.P8292442992522414701

namespace A313824

/-- `∑[A021913(n)]+A315517(n)-n` -/
def P8292442992522414701.Spec : Prop :=
  ∀ n, P8292442992522414701.a n = A313824 n

end A313824

/-! ## A313824.P11302245198624920317

`Δ[A011848(n)]+A315517(n)-n`
-/

namespace A313824.P11302245198624920317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315517 n - (n : ℤ))

end

end A313824.P11302245198624920317

namespace A313824

/-- `Δ[A011848(n)]+A315517(n)-n` -/
def P11302245198624920317.Spec : Prop :=
  ∀ n, P11302245198624920317.a n = A313824 n

end A313824

/-! ## A313824.P11223867057556847577

`A314825(n)+∑[A021913(n)]`
-/

namespace A313824.P11223867057556847577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313824.P11223867057556847577

namespace A313824

/-- `A314825(n)+∑[A021913(n)]` -/
def P11223867057556847577.Spec : Prop :=
  ∀ n, P11223867057556847577.a n = A313824 n

end A313824

/-! ## A313824.P10884891141729706369

`A314825(n)+Δ[A011848(n)]`
-/

namespace A313824.P10884891141729706369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + (f1 (n + 1) - f1 n)

end

end A313824.P10884891141729706369

namespace A313824

/-- `A314825(n)+Δ[A011848(n)]` -/
def P10884891141729706369.Spec : Prop :=
  ∀ n, P10884891141729706369.a n = A313824 n

end A313824

/-! ## A313824.P9041704249538691155

`A314825(n)+A004524(n+1)`
-/

namespace A313824.P9041704249538691155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + A004524 (n + 1)

end

end A313824.P9041704249538691155

namespace A313824

/-- `A314825(n)+A004524(n+1)` -/
def P9041704249538691155.Spec : Prop :=
  ∀ n, P9041704249538691155.a n = A313824 n

end A313824

/-! ## A313824.P264273491688893221

`A314825(n)+n-A004525(n)`
-/

namespace A313824.P264273491688893221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + ((n : ℤ) - A004525 n)

end

end A313824.P264273491688893221

namespace A313824

/-- `A314825(n)+n-A004525(n)` -/
def P264273491688893221.Spec : Prop :=
  ∀ n, P264273491688893221.a n = A313824 n

end A313824

/-! ## A313824.P1325020139253927244

`A314825(n)+n-Δ[A054925(n)]`
-/

namespace A313824.P1325020139253927244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314825 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313824.P1325020139253927244

namespace A313824

/-- `A314825(n)+n-Δ[A054925(n)]` -/
def P1325020139253927244.Spec : Prop :=
  ∀ n, P1325020139253927244.a n = A313824 n

end A313824

/-!
# A313825: Coordination sequence Gal.6.322.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313825, the canonical program `A313825.P10683649782616596619` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313825 has offset 0).

The definition of A313825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313825.P10683649782616596619

`2*A313722(n)-A313615(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313825

/-- `2*A313722(n)-A313615(n)` -/
def P10683649782616596619.Spec : Prop :=
  ∀ n, P10683649782616596619.a n = A313825 n

theorem P10683649782616596619.correct : P10683649782616596619.Spec := by
  intro n
  simp only [A313825]

end A313825

/-! ## A313825.P8968846436674894996

`abs(A008592(n)-A313639(n))`
-/

namespace A313825.P8968846436674894996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313639 n|

end

end A313825.P8968846436674894996

namespace A313825

/-- `abs(A008592(n)-A313639(n))` -/
def P8968846436674894996.Spec : Prop :=
  ∀ n, P8968846436674894996.a n = A313825 n

end A313825

/-! ## A313825.P18247090959230563988

`2*A008706(n)-A313639(n)`
-/

namespace A313825.P18247090959230563988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313639 n

end

end A313825.P18247090959230563988

namespace A313825

/-- `2*A008706(n)-A313639(n)` -/
def P18247090959230563988.Spec : Prop :=
  ∀ n, P18247090959230563988.a n = A313825 n

end A313825

/-! ## A313825.P6692872993195862884

`A184418(A008574(n))-A313639(n)`
-/

namespace A313825.P6692872993195862884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313639 n

end

end A313825.P6692872993195862884

namespace A313825

/-- `A184418(A008574(n))-A313639(n)` -/
def P6692872993195862884.Spec : Prop :=
  ∀ n, P6692872993195862884.a n = A313825 n

end A313825

/-! ## A313825.P17849710887617726076

`A008458(n)+A008574(n)-A313639(n)`
-/

namespace A313825.P17849710887617726076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313639 n)

end

end A313825.P17849710887617726076

namespace A313825

/-- `A008458(n)+A008574(n)-A313639(n)` -/
def P17849710887617726076.Spec : Prop :=
  ∀ n, P17849710887617726076.a n = A313825 n

end A313825

/-! ## A313825.P17254518571046288229

`A008486(2*n)+A008574(n)-A313639(n)`
-/

namespace A313825.P17254518571046288229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A008574 n - A313639 n)

end

end A313825.P17254518571046288229

namespace A313825

/-- `A008486(2*n)+A008574(n)-A313639(n)` -/
def P17254518571046288229.Spec : Prop :=
  ∀ n, P17254518571046288229.a n = A313825 n

end A313825

/-! ## A313825.P11952201973420242800

`A314210(n)-A312944(n)%A004277(n)`
-/

namespace A313825.P11952201973420242800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314210 n - Int.tmod (A312944 n) (A004277 n)

end

end A313825.P11952201973420242800

namespace A313825

/-- `A314210(n)-A312944(n)%A004277(n)` -/
def P11952201973420242800.Spec : Prop :=
  ∀ n, P11952201973420242800.a n = A313825 n

end A313825

/-! ## A313825.P13534117984720901483

`A005843(A313722(n))-A313615(n)`
-/

namespace A313825.P13534117984720901483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313722 n).toNat - A313615 n

end

end A313825.P13534117984720901483

namespace A313825

/-- `A005843(A313722(n))-A313615(n)` -/
def P13534117984720901483.Spec : Prop :=
  ∀ n, P13534117984720901483.a n = A313825 n

end A313825

/-! ## A313825.P3935055823355442419

`A065502(A314902(n))-A004396(A311635(n))`
-/

namespace A313825.P3935055823355442419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A314902 n).toNat - A004396 (A311635 n).toNat

end

end A313825.P3935055823355442419

namespace A313825

/-- `A065502(A314902(n))-A004396(A311635(n))` -/
def P3935055823355442419.Spec : Prop :=
  ∀ n, P3935055823355442419.a n = A313825 n

end A313825

/-! ## A313825.P8232803592271943401

`A005843(A008706(n))-A313639(n)`
-/

namespace A313825.P8232803592271943401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313639 n

end

end A313825.P8232803592271943401

namespace A313825

/-- `A005843(A008706(n))-A313639(n)` -/
def P8232803592271943401.Spec : Prop :=
  ∀ n, P8232803592271943401.a n = A313825 n

end A313825

/-! ## A313825.P15085951182791284639

`A065502(A008458(n))-A313639(n)`
-/

namespace A313825.P15085951182791284639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313639 n

end

end A313825.P15085951182791284639

namespace A313825

/-- `A065502(A008458(n))-A313639(n)` -/
def P15085951182791284639.Spec : Prop :=
  ∀ n, P15085951182791284639.a n = A313825 n

end A313825

/-!
# A313826: Coordination sequence Gal.4.78.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313826, the canonical program `A313826.P9423977663290718791` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313826 has offset 0).

The definition of A313826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2374 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313826.P9932327514910364826

`A315259(n)-A101455(n)`
-/

namespace A313826.P9932327514910364826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A101455 n

end

end A313826.P9932327514910364826

namespace A313826

/-- `A315259(n)-A101455(n)` -/
def P9932327514910364826.Spec : Prop :=
  ∀ n, P9932327514910364826.a n = A313826 n

end A313826

/-! ## A313826.P9423977663290718791

`abs(A008592(n)-A313635(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313826

/-- `abs(A008592(n)-A313635(n))` -/
def P9423977663290718791.Spec : Prop :=
  ∀ n, P9423977663290718791.a n = A313826 n

theorem P9423977663290718791.correct : P9423977663290718791.Spec := by
  intro n
  simp only [A313826]

end A313826

/-! ## A313826.P1271944138716965297

`floor(A010015(n)/A313635(n))`
-/

namespace A313826.P1271944138716965297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313635 n : ℚ)⌋

end

end A313826.P1271944138716965297

namespace A313826

/-- `floor(A010015(n)/A313635(n))` -/
def P1271944138716965297.Spec : Prop :=
  ∀ n, P1271944138716965297.a n = A313826 n

end A313826

/-! ## A313826.P4155078144887730405

`A314829(n)+∑[A021913(n)]`
-/

namespace A313826.P4155078144887730405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313826.P4155078144887730405

namespace A313826

/-- `A314829(n)+∑[A021913(n)]` -/
def P4155078144887730405.Spec : Prop :=
  ∀ n, P4155078144887730405.a n = A313826 n

end A313826

/-! ## A313826.P2932753276336224962

`A313685(n)+Δ[A011861(n)]`
-/

namespace A313826.P2932753276336224962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + (f1 (n + 1) - f1 n)

end

end A313826.P2932753276336224962

namespace A313826

/-- `A313685(n)+Δ[A011861(n)]` -/
def P2932753276336224962.Spec : Prop :=
  ∀ n, P2932753276336224962.a n = A313826 n

end A313826

/-! ## A313826.P9255597512344938417

`A314829(n)+A004524(n+1)`
-/

namespace A313826.P9255597512344938417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004524 (n + 1)

end

end A313826.P9255597512344938417

namespace A313826

/-- `A314829(n)+A004524(n+1)` -/
def P9255597512344938417.Spec : Prop :=
  ∀ n, P9255597512344938417.a n = A313826 n

end A313826

/-! ## A313826.P18245858873999880951

`A315259(n)-A046978(2*n)`
-/

namespace A313826.P18245858873999880951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n - A046978 (2 * n)

end

end A313826.P18245858873999880951

namespace A313826

/-- `A315259(n)-A046978(2*n)` -/
def P18245858873999880951.Spec : Prop :=
  ∀ n, P18245858873999880951.a n = A313826 n

end A313826

/-! ## A313826.P8837296387054446253

`A314829(n)+A201629(n)/2`
-/

namespace A313826.P8837296387054446253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A314829 n : ℚ) + (A201629 n : ℚ) / 2

end

end A313826.P8837296387054446253

namespace A313826

/-- `A314829(n)+A201629(n)/2` -/
def P8837296387054446253.Spec : Prop :=
  ∀ n, P8837296387054446253.a n = (A313826 n : ℚ)

end A313826

/-! ## A313826.P10818528872802341724

`A314829(n)+n-A004525(n)`
-/

namespace A313826.P10818528872802341724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ((n : ℤ) - A004525 n)

end

end A313826.P10818528872802341724

namespace A313826

/-- `A314829(n)+n-A004525(n)` -/
def P10818528872802341724.Spec : Prop :=
  ∀ n, P10818528872802341724.a n = A313826 n

end A313826

/-! ## A313826.P517332057547620374

`A314829(n)+A004525(A201629(n))`
-/

namespace A313826.P517332057547620374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + A004525 (A201629 n).toNat

end

end A313826.P517332057547620374

namespace A313826

/-- `A314829(n)+A004525(A201629(n))` -/
def P517332057547620374.Spec : Prop :=
  ∀ n, P517332057547620374.a n = A313826 n

end A313826

/-! ## A313826.P3044751730617862267

`A314672(n)+A047273(A004525(n+2))`
-/

namespace A313826.P3044751730617862267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314672 n + A047273 (A004525 (n + 2)).toNat

end

end A313826.P3044751730617862267

namespace A313826

/-- `A314672(n)+A047273(A004525(n+2))` -/
def P3044751730617862267.Spec : Prop :=
  ∀ n, P3044751730617862267.a n = A313826 n

end A313826

/-! ## A313826.P1190762362319352004

`A315020(n)+A004525(n-A004525(n))`
-/

namespace A313826.P1190762362319352004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315020 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313826.P1190762362319352004

namespace A313826

/-- `A315020(n)+A004525(n-A004525(n))` -/
def P1190762362319352004.Spec : Prop :=
  ∀ n, P1190762362319352004.a n = A313826 n

end A313826

/-! ## A313826.P1657849935313315999

`A314026(n)-A075553(n-A075553(n))`
-/

namespace A313826.P1657849935313315999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n - A075553 ((n : ℤ) - A075553 n).toNat

end

end A313826.P1657849935313315999

namespace A313826

/-- `A314026(n)-A075553(n-A075553(n))` -/
def P1657849935313315999.Spec : Prop :=
  ∀ n, P1657849935313315999.a n = A313826 n

end A313826

/-! ## A313826.P9101836650696998372

`A310458(n)+A188510(n)`
-/

namespace A313826.P9101836650696998372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310458 n + A188510 n

end

end A313826.P9101836650696998372

namespace A313826

/-- `A310458(n)+A188510(n)` -/
def P9101836650696998372.Spec : Prop :=
  ∀ n, P9101836650696998372.a n = A313826 n

end A313826

/-! ## A313826.P16022573822763319603

`A313258(n)+A046978(n)`
-/

namespace A313826.P16022573822763319603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313258 n + A046978 n

end

end A313826.P16022573822763319603

namespace A313826

/-- `A313258(n)+A046978(n)` -/
def P16022573822763319603.Spec : Prop :=
  ∀ n, P16022573822763319603.a n = A313826 n

end A313826

/-! ## A313826.P3345726045252511586

`A315061(n)+A046978(n-A046978(n))`
-/

namespace A313826.P3345726045252511586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A046978 ((n : ℤ) - A046978 n).toNat

end

end A313826.P3345726045252511586

namespace A313826

/-- `A315061(n)+A046978(n-A046978(n))` -/
def P3345726045252511586.Spec : Prop :=
  ∀ n, P3345726045252511586.a n = A313826 n

end A313826

/-! ## A313826.P18375853054090293144

`A004525(A004525(n))+A313875(n)-A004525(n)`
-/

namespace A313826.P18375853054090293144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A313875 n - A004525 n)

end

end A313826.P18375853054090293144

namespace A313826

/-- `A004525(A004525(n))+A313875(n)-A004525(n)` -/
def P18375853054090293144.Spec : Prop :=
  ∀ n, P18375853054090293144.a n = A313826 n

end A313826

/-! ## A313826.P334846543362138474

`A046978(n)-(A004525(A004525(n))-A313875(n))`
-/

namespace A313826.P334846543362138474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n - (A004525 (A004525 n).toNat - A313875 n)

end

end A313826.P334846543362138474

namespace A313826

/-- `A046978(n)-(A004525(A004525(n))-A313875(n))` -/
def P334846543362138474.Spec : Prop :=
  ∀ n, P334846543362138474.a n = A313826 n

end A313826

/-! ## A313826.P7103394822856850349

`A315520(n)-A004525(n)`
-/

namespace A313826.P7103394822856850349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A004525 n

end

end A313826.P7103394822856850349

namespace A313826

/-- `A315520(n)-A004525(n)` -/
def P7103394822856850349.Spec : Prop :=
  ∀ n, P7103394822856850349.a n = A313826 n

end A313826

/-! ## A313826.P9439435283312283821

`Δ[A011848(n)]+A315520(n)-n`
-/

namespace A313826.P9439435283312283821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315520 n - (n : ℤ))

end

end A313826.P9439435283312283821

namespace A313826

/-- `Δ[A011848(n)]+A315520(n)-n` -/
def P9439435283312283821.Spec : Prop :=
  ∀ n, P9439435283312283821.a n = A313826 n

end A313826

/-!
# A313827: Coordination sequence Gal.5.141.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313827, the canonical program `A313827.P1632805803004343387` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313827 has offset 0).

The definition of A313827 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313827.P1632805803004343387

`A313692(n)+A008676(A016777(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313827

/-- `A313692(n)+A008676(A016777(n))` -/
def P1632805803004343387.Spec : Prop :=
  ∀ n, P1632805803004343387.a n = A313827 n

theorem P1632805803004343387.correct : P1632805803004343387.Spec := by
  intro n
  simp only [A313827]

end A313827

/-! ## A313827.P7719055952786994529

`A250120(n)+A004525(A057354(n+1))`
-/

namespace A313827.P7719055952786994529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A004525 (A057354 (n + 1)).toNat

end

end A313827.P7719055952786994529

namespace A313827

/-- `A250120(n)+A004525(A057354(n+1))` -/
def P7719055952786994529.Spec : Prop :=
  ∀ n, P7719055952786994529.a n = A313827 n

end A313827

/-! ## A313827.P6424658278520925231

`A250120(n)+A312892(n)-A008574(n)`
-/

namespace A313827.P6424658278520925231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A312892 n - A008574 n)

end

end A313827.P6424658278520925231

namespace A313827

/-- `A250120(n)+A312892(n)-A008574(n)` -/
def P6424658278520925231.Spec : Prop :=
  ∀ n, P6424658278520925231.a n = A313827 n

end A313827

/-! ## A313827.P10280898138581257560

`A047486(A008486(n)+1)+A004525(A057354(n+1))`
-/

namespace A313827.P10280898138581257560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008486 n + 1).toNat + A004525 (A057354 (n + 1)).toNat

end

end A313827.P10280898138581257560

namespace A313827

/-- `A047486(A008486(n)+1)+A004525(A057354(n+1))` -/
def P10280898138581257560.Spec : Prop :=
  ∀ n, P10280898138581257560.a n = A313827 n

end A313827

/-! ## A313827.P16574297431772039412

`A047486(A033627(n+2))+A004525(A057354(n+1))`
-/

namespace A313827.P16574297431772039412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A033627 (n + 2)).toNat + A004525 (A057354 (n + 1)).toNat

end

end A313827.P16574297431772039412

namespace A313827

/-- `A047486(A033627(n+2))+A004525(A057354(n+1))` -/
def P16574297431772039412.Spec : Prop :=
  ∀ n, P16574297431772039412.a n = A313827 n

end A313827

/-! ## A313827.P9778000452938154394

`abs(10*n-A313623(n))`
-/

namespace A313827.P9778000452938154394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313623 n|

end

end A313827.P9778000452938154394

namespace A313827

/-- `abs(10*n-A313623(n))` -/
def P9778000452938154394.Spec : Prop :=
  ∀ n, P9778000452938154394.a n = A313827 n

end A313827

/-! ## A313827.P3634579264683997813

`floor(A010015(n)/A313623(n))`
-/

namespace A313827.P3634579264683997813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313623 n : ℚ)⌋

end

end A313827.P3634579264683997813

namespace A313827

/-- `floor(A010015(n)/A313623(n))` -/
def P3634579264683997813.Spec : Prop :=
  ∀ n, P3634579264683997813.a n = A313827 n

end A313827

/-! ## A313827.P8550476773673625862

`2*A008706(n)-A313623(n)`
-/

namespace A313827.P8550476773673625862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313623 n

end

end A313827.P8550476773673625862

namespace A313827

/-- `2*A008706(n)-A313623(n)` -/
def P8550476773673625862.Spec : Prop :=
  ∀ n, P8550476773673625862.a n = A313827 n

end A313827

/-! ## A313827.P9735918893922636054

`A330025(A330025(n)+n)+A313255(n)`
-/

namespace A313827.P9735918893922636054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313255 n

end

end A313827.P9735918893922636054

namespace A313827

/-- `A330025(A330025(n)+n)+A313255(n)` -/
def P9735918893922636054.Spec : Prop :=
  ∀ n, P9735918893922636054.a n = A313827 n

end A313827

/-! ## A313827.P1558292225564452797

`A008458(n)+A008574(n)-A313623(n)`
-/

namespace A313827.P1558292225564452797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313623 n)

end

end A313827.P1558292225564452797

namespace A313827

/-- `A008458(n)+A008574(n)-A313623(n)` -/
def P1558292225564452797.Spec : Prop :=
  ∀ n, P1558292225564452797.a n = A313827 n

end A313827

/-! ## A313827.P6935909240101865716

`2*A313873(n)-A313916(n)`
-/

namespace A313827.P6935909240101865716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313873 n - A313916 n

end

end A313827.P6935909240101865716

namespace A313827

/-- `2*A313873(n)-A313916(n)` -/
def P6935909240101865716.Spec : Prop :=
  ∀ n, P6935909240101865716.a n = A313827 n

end A313827

/-! ## A313827.P902532414616714463

`A314209(n)-Δ[A011858(n)]`
-/

namespace A313827.P902532414616714463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314209 n - (f1 (n + 1) - f1 n)

end

end A313827.P902532414616714463

namespace A313827

/-- `A314209(n)-Δ[A011858(n)]` -/
def P902532414616714463.Spec : Prop :=
  ∀ n, P902532414616714463.a n = A313827 n

end A313827

/-! ## A313827.P17295309366139124198

`round(A010018(n)/A315496(n))`
-/

namespace A313827.P17295309366139124198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A010018 n : ℚ) / (A315496 n : ℚ))

end

end A313827.P17295309366139124198

namespace A313827

/-- `round(A010018(n)/A315496(n))` -/
def P17295309366139124198.Spec : Prop :=
  ∀ n, P17295309366139124198.a n = A313827 n

end A313827

/-! ## A313827.P6611302158288046098

`A008458(n)+A250120(n)-A315547(n)`
-/

namespace A313827.P6611302158288046098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315547 n)

end

end A313827.P6611302158288046098

namespace A313827

/-- `A008458(n)+A250120(n)-A315547(n)` -/
def P6611302158288046098.Spec : Prop :=
  ∀ n, P6611302158288046098.a n = A313827 n

end A313827

/-! ## A313827.P3869515034476461231

`A008706(n)-A132380(A312658(n))`
-/

namespace A313827.P3869515034476461231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A132380 (A312658 n).toNat

end

end A313827.P3869515034476461231

namespace A313827

/-- `A008706(n)-A132380(A312658(n))` -/
def P3869515034476461231.Spec : Prop :=
  ∀ n, P3869515034476461231.a n = A313827 n

end A313827

/-! ## A313827.P2276933563995327048

`A074067(A313623(n))`
-/

namespace A313827.P2276933563995327048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313623 n).toNat

end

end A313827.P2276933563995327048

namespace A313827

/-- `A074067(A313623(n))` -/
def P2276933563995327048.Spec : Prop :=
  ∀ n, P2276933563995327048.a n = A313827 n

end A313827

/-! ## A313827.P18045330910470769384

`A005843(A008706(n))-A313623(n)`
-/

namespace A313827.P18045330910470769384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313623 n

end

end A313827.P18045330910470769384

namespace A313827

/-- `A005843(A008706(n))-A313623(n)` -/
def P18045330910470769384.Spec : Prop :=
  ∀ n, P18045330910470769384.a n = A313827 n

end A313827

/-!
# A313828: Coordination sequence Gal.6.482.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313828, there is no canonical definition to state claims against.
-/

/-! ## A313828.P2751287102945929952

`A315019(n)+A001221(A001472(n))`
-/

namespace A313828.P2751287102945929952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315019 n + A001221 (A001472 n).toNat

end

end A313828.P2751287102945929952

/-! ## A313828.P8029542056012259479

`A016340(A313591(n))+A008706(n)`
-/

namespace A313828.P8029542056012259479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016340 (A313591 n).toNat + A008706 n

end

end A313828.P8029542056012259479

/-! ## A313828.P8810995633062605954

`A313825(n)+A037802(A135336(n))`
-/

namespace A313828.P8810995633062605954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313825 n + A037802 (A135336 n).toNat

end

end A313828.P8810995633062605954

/-! ## A313828.P14102978773562492268

`A313533(n)+A302242(A343577(n))`
-/

namespace A313828.P14102978773562492268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A302242 (A343577 n).toNat

end

end A313828.P14102978773562492268

/-! ## A313828.P9716888783396634371

`A250120(n)+A001899(A006407(n+4))`
-/

namespace A313828.P9716888783396634371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001899 (A006407 (n + 4)).toNat

end

end A313828.P9716888783396634371

/-!
# A313829: Coordination sequence Gal.6.203.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313829, the canonical program `A313829.P8843607393745764516` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313829 has offset 0).

The definition of A313829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2370 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313829.P4786760512902287097

`A047263(A311801(n)+1)`
-/

namespace A313829.P4786760512902287097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A311801 n + 1).toNat

end

end A313829.P4786760512902287097

namespace A313829

/-- `A047263(A311801(n)+1)` -/
def P4786760512902287097.Spec : Prop :=
  ∀ n, P4786760512902287097.a n = A313829 n

end A313829

/-! ## A313829.P13575349908795194363

`A304804(A311801(n)-1)`
-/

namespace A313829.P13575349908795194363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 (A311801 n - 1).toNat

end

end A313829.P13575349908795194363

namespace A313829

/-- `A304804(A311801(n)-1)` -/
def P13575349908795194363.Spec : Prop :=
  ∀ n, P13575349908795194363.a n = A313829 n

end A313829

/-! ## A313829.P8843607393745764516

`A313720(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313829

/-- `A313720(n)+Δ[A011865(n)]` -/
def P8843607393745764516.Spec : Prop :=
  ∀ n, P8843607393745764516.a n = A313829 n

theorem P8843607393745764516.correct : P8843607393745764516.Spec := by
  intro n
  simp only [A313829]

end A313829

/-! ## A313829.P7332067119730703558

`A314836(n)+Δ[A011848(n)]`
-/

namespace A313829.P7332067119730703558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + (f1 (n + 1) - f1 n)

end

end A313829.P7332067119730703558

namespace A313829

/-- `A314836(n)+Δ[A011848(n)]` -/
def P7332067119730703558.Spec : Prop :=
  ∀ n, P7332067119730703558.a n = A313829 n

end A313829

/-! ## A313829.P14336900846242275495

`A315018(n)+A002264(n+1)`
-/

namespace A313829.P14336900846242275495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315018 n + A002264 (n + 1)

end

end A313829.P14336900846242275495

namespace A313829

/-- `A315018(n)+A002264(n+1)` -/
def P14336900846242275495.Spec : Prop :=
  ∀ n, P14336900846242275495.a n = A313829 n

end A313829

/-! ## A313829.P14798348596024507407

`A314836(n)+A004524(n+1)`
-/

namespace A313829.P14798348596024507407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + A004524 (n + 1)

end

end A313829.P14798348596024507407

namespace A313829

/-- `A314836(n)+A004524(n+1)` -/
def P14798348596024507407.Spec : Prop :=
  ∀ n, P14798348596024507407.a n = A313829 n

end A313829

/-! ## A313829.P14361762032145117987

`A314836(n)+n-A004525(n)`
-/

namespace A313829.P14361762032145117987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + ((n : ℤ) - A004525 n)

end

end A313829.P14361762032145117987

namespace A313829

/-- `A314836(n)+n-A004525(n)` -/
def P14361762032145117987.Spec : Prop :=
  ∀ n, P14361762032145117987.a n = A313829 n

end A313829

/-! ## A313829.P17872989942883047531

`A315018(n)+A008615(2*n+1)`
-/

namespace A313829.P17872989942883047531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315018 n + A008615 (2 * n + 1)

end

end A313829.P17872989942883047531

namespace A313829

/-- `A315018(n)+A008615(2*n+1)` -/
def P17872989942883047531.Spec : Prop :=
  ∀ n, P17872989942883047531.a n = A313829 n

end A313829

/-! ## A313829.P16748637944606967339

`A315026(n)+A004525(n-A004396(n))`
-/

namespace A313829.P16748637944606967339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313829.P16748637944606967339

namespace A313829

/-- `A315026(n)+A004525(n-A004396(n))` -/
def P16748637944606967339.Spec : Prop :=
  ∀ n, P16748637944606967339.a n = A313829 n

end A313829

/-! ## A313829.P4348411719862592549

`A008486(n)+A315018(n)-A008576(n)`
-/

namespace A313829.P4348411719862592549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315018 n - A008576 n)

end

end A313829.P4348411719862592549

namespace A313829

/-- `A008486(n)+A315018(n)-A008576(n)` -/
def P4348411719862592549.Spec : Prop :=
  ∀ n, P4348411719862592549.a n = A313829 n

end A313829

/-! ## A313829.P14011376578208965614

`abs(A008592(n)-A313622(n))`
-/

namespace A313829.P14011376578208965614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313622 n|

end

end A313829.P14011376578208965614

namespace A313829

/-- `abs(A008592(n)-A313622(n))` -/
def P14011376578208965614.Spec : Prop :=
  ∀ n, P14011376578208965614.a n = A313829 n

end A313829

/-! ## A313829.P13345852468993615180

`floor(A010015(n)/A313622(n))`
-/

namespace A313829.P13345852468993615180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313622 n : ℚ)⌋

end

end A313829.P13345852468993615180

namespace A313829

/-- `floor(A010015(n)/A313622(n))` -/
def P13345852468993615180.Spec : Prop :=
  ∀ n, P13345852468993615180.a n = A313829 n

end A313829

/-! ## A313829.P12159413695006935461

`A008458(n)+A008574(n)-A313622(n)`
-/

namespace A313829.P12159413695006935461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313622 n)

end

end A313829.P12159413695006935461

namespace A313829

/-- `A008458(n)+A008574(n)-A313622(n)` -/
def P12159413695006935461.Spec : Prop :=
  ∀ n, P12159413695006935461.a n = A313829 n

end A313829

/-! ## A313829.P5797252555585622941

`A004525(A004396(n))+A313884(n)-A004525(n)`
-/

namespace A313829.P5797252555585622941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313884 n - A004525 n)

end

end A313829.P5797252555585622941

namespace A313829

/-- `A004525(A004396(n))+A313884(n)-A004525(n)` -/
def P5797252555585622941.Spec : Prop :=
  ∀ n, P5797252555585622941.a n = A313829 n

end A313829

/-! ## A313829.P5344591955587715406

`A004396(A004525(n))+A313872(n)-A004525(n)`
-/

namespace A313829.P5344591955587715406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313872 n - A004525 n)

end

end A313829.P5344591955587715406

namespace A313829

/-- `A004396(A004525(n))+A313872(n)-A004525(n)` -/
def P5344591955587715406.Spec : Prop :=
  ∀ n, P5344591955587715406.a n = A313829 n

end A313829

/-! ## A313829.P16434372256038741870

`A315522(n)-A004525(n)`
-/

namespace A313829.P16434372256038741870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - A004525 n

end

end A313829.P16434372256038741870

namespace A313829

/-- `A315522(n)-A004525(n)` -/
def P16434372256038741870.Spec : Prop :=
  ∀ n, P16434372256038741870.a n = A313829 n

end A313829

/-! ## A313829.P2918612378241308568

`A315540(n)-A004396(2*A004525(n))`
-/

namespace A313829.P2918612378241308568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A004396 (2 * A004525 n).toNat

end

end A313829.P2918612378241308568

namespace A313829

/-- `A315540(n)-A004396(2*A004525(n))` -/
def P2918612378241308568.Spec : Prop :=
  ∀ n, P2918612378241308568.a n = A313829 n

end A313829

/-! ## A313829.P9143774387172045263

`A074067(A313622(n))`
-/

namespace A313829.P9143774387172045263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313622 n).toNat

end

end A313829.P9143774387172045263

namespace A313829

/-- `A074067(A313622(n))` -/
def P9143774387172045263.Spec : Prop :=
  ∀ n, P9143774387172045263.a n = A313829 n

end A313829

/-! ## A313829.P10003559901143784921

`A004396(n)+A004396(A314094(n))+n`
-/

namespace A313829.P10003559901143784921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A314094 n).toNat + (n : ℤ))

end

end A313829.P10003559901143784921

namespace A313829

/-- `A004396(n)+A004396(A314094(n))+n` -/
def P10003559901143784921.Spec : Prop :=
  ∀ n, P10003559901143784921.a n = A313829 n

end A313829

/-! ## A313829.P622479457426370197

`A004396(n)+A004396(A314098(n))+n`
-/

namespace A313829.P622479457426370197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A314098 n).toNat + (n : ℤ))

end

end A313829.P622479457426370197

namespace A313829

/-- `A004396(n)+A004396(A314098(n))+n` -/
def P622479457426370197.Spec : Prop :=
  ∀ n, P622479457426370197.a n = A313829 n

end A313829

/-!
# A313830: Coordination sequence Gal.4.79.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313830, there is no canonical definition to state claims against.
-/

/-! ## A313830.P13604259457326114903

`A313831(n)-A063725(A117642(n))`
-/

namespace A313830.P13604259457326114903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A063725 (A117642 n).toNat

end

end A313830.P13604259457326114903

/-! ## A313830.P5787049567738406446

`A313831(n)-A277165(A014113(n))`
-/

namespace A313830.P5787049567738406446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A277165 (A014113 n).toNat

end

end A313830.P5787049567738406446

/-! ## A313830.P15034733655145622530

`A313831(n)-A288106(A022119(n))`
-/

namespace A313830.P15034733655145622530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A288106 (A022119 n).toNat

end

end A313830.P15034733655145622530

/-! ## A313830.P1287658043965305517

`A313831(n)-A253513(A293324(n))`
-/

namespace A313830.P1287658043965305517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A253513 (A293324 n).toNat

end

end A313830.P1287658043965305517

/-! ## A313830.P3794128747131855689

`A313831(n)-A185705(A262772(n+1))`
-/

namespace A313830.P3794128747131855689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313831 n - A185705 (A262772 (n + 1)).toNat

end

end A313830.P3794128747131855689

/-!
# A313831: Coordination sequence Gal.6.328.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313831, the canonical program `A313831.P17675149220499265565` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313831 has offset 0).

The definition of A313831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2361 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313831.P13364037158404480089

`abs(10*n-A313620(n))`
-/

namespace A313831.P13364037158404480089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313620 n|

end

end A313831.P13364037158404480089

namespace A313831

/-- `abs(10*n-A313620(n))` -/
def P13364037158404480089.Spec : Prop :=
  ∀ n, P13364037158404480089.a n = A313831 n

end A313831

/-! ## A313831.P17675149220499265565

`A313722(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313831

/-- `A313722(n)+Δ[A011864(n)]` -/
def P17675149220499265565.Spec : Prop :=
  ∀ n, P17675149220499265565.a n = A313831 n

theorem P17675149220499265565.correct : P17675149220499265565.Spec := by
  intro n
  simp only [A313831]

end A313831

/-! ## A313831.P5359775394774310592

`2*A008706(n)-A313620(n)`
-/

namespace A313831.P5359775394774310592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313620 n

end

end A313831.P5359775394774310592

namespace A313831

/-- `2*A008706(n)-A313620(n)` -/
def P5359775394774310592.Spec : Prop :=
  ∀ n, P5359775394774310592.a n = A313831 n

end A313831

/-! ## A313831.P1939897256671884257

`A008458(n)+A008574(n)-A313620(n)`
-/

namespace A313831.P1939897256671884257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313620 n)

end

end A313831.P1939897256671884257

namespace A313831

/-- `A008458(n)+A008574(n)-A313620(n)` -/
def P1939897256671884257.Spec : Prop :=
  ∀ n, P1939897256671884257.a n = A313831 n

end A313831

/-! ## A313831.P11552245399537406147

`A314192(n)-∑[A022003(n)]`
-/

namespace A313831.P11552245399537406147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314192 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313831.P11552245399537406147

namespace A313831

/-- `A314192(n)-∑[A022003(n)]` -/
def P11552245399537406147.Spec : Prop :=
  ∀ n, P11552245399537406147.a n = A313831 n

end A313831

/-! ## A313831.P6472527926162514510

`A004396(n)+A314192(n)-n`
-/

namespace A313831.P6472527926162514510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314192 n - (n : ℤ))

end

end A313831.P6472527926162514510

namespace A313831

/-- `A004396(n)+A314192(n)-n` -/
def P6472527926162514510.Spec : Prop :=
  ∀ n, P6472527926162514510.a n = A313831 n

end A313831

/-! ## A313831.P4099764288977006891

`A314192(n)-A008615(2*n+1)`
-/

namespace A313831.P4099764288977006891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314192 n - A008615 (2 * n + 1)

end

end A313831.P4099764288977006891

namespace A313831

/-- `A314192(n)-A008615(2*n+1)` -/
def P4099764288977006891.Spec : Prop :=
  ∀ n, P4099764288977006891.a n = A313831 n

end A313831

/-! ## A313831.P17238135527030165366

`A008576(n)+A314192(n)-A008486(n)`
-/

namespace A313831.P17238135527030165366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314192 n - A008486 n)

end

end A313831.P17238135527030165366

namespace A313831

/-- `A008576(n)+A314192(n)-A008486(n)` -/
def P17238135527030165366.Spec : Prop :=
  ∀ n, P17238135527030165366.a n = A313831 n

end A313831

/-! ## A313831.P10441292916075033531

`2*A180004(A313514(n))-A313514(n)`
-/

namespace A313831.P10441292916075033531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180004 (A313514 n).toNat - A313514 n

end

end A313831.P10441292916075033531

namespace A313831

/-- `2*A180004(A313514(n))-A313514(n)` -/
def P10441292916075033531.Spec : Prop :=
  ∀ n, P10441292916075033531.a n = A313831 n

end A313831

/-! ## A313831.P18198843440338529737

`A005843(A008706(n))-A313620(n)`
-/

namespace A313831.P18198843440338529737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313620 n

end

end A313831.P18198843440338529737

namespace A313831

/-- `A005843(A008706(n))-A313620(n)` -/
def P18198843440338529737.Spec : Prop :=
  ∀ n, P18198843440338529737.a n = A313831 n

end A313831

/-! ## A313831.P2599473878566569824

`A314832(2*n)-4*n`
-/

namespace A313831.P2599473878566569824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314832 (2 * n) - (4 * n : ℤ)

end

end A313831.P2599473878566569824

namespace A313831

/-- `A314832(2*n)-4*n` -/
def P2599473878566569824.Spec : Prop :=
  ∀ n, P2599473878566569824.a n = A313831 n

end A313831

/-! ## A313831.P683072236493308150

`2*A008574(2*n)-A314157(2*n)`
-/

namespace A313831.P683072236493308150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314157 (2 * n)

end

end A313831.P683072236493308150

namespace A313831

/-- `2*A008574(2*n)-A314157(2*n)` -/
def P683072236493308150.Spec : Prop :=
  ∀ n, P683072236493308150.a n = A313831 n

end A313831

/-! ## A313831.P2188926662387520866

`8*n+2+A130824(2*n)-A314157(2*n)`
-/

namespace A313831.P2188926662387520866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n + 2 : ℤ) + (A130824 (2 * n) - A314157 (2 * n))

end

end A313831.P2188926662387520866

namespace A313831

/-- `8*n+2+A130824(2*n)-A314157(2*n)` -/
def P2188926662387520866.Spec : Prop :=
  ∀ n, P2188926662387520866.a n = A313831 n

end A313831

/-!
# A313832: Coordination sequence Gal.5.215.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313832, there is no canonical definition to state claims against.
-/

/-! ## A313832.P13301041333878709836

`A250120(n)+A069010(A143817(n))`
-/

namespace A313832.P13301041333878709836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A069010 (A143817 n).toNat

end

end A313832.P13301041333878709836

/-! ## A313832.P3214746777168703506

`A333632(A036656(n))+A250120(n)`
-/

namespace A313832.P3214746777168703506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A036656 n).toNat + A250120 n

end

end A313832.P3214746777168703506

/-! ## A313832.P13483557573760175587

`A333632(A274937(n))+A250120(n)`
-/

namespace A313832.P13483557573760175587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A274937 n).toNat + A250120 n

end

end A313832.P13483557573760175587

/-! ## A313832.P310478249776020217

`A314187(n)-A001221(A040027(n))`
-/

namespace A313832.P310478249776020217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314187 n - A001221 (A040027 n).toNat

end

end A313832.P310478249776020217

/-! ## A313832.P14424584755608668973

`A219529(n)-A287516(A000108(n))`
-/

namespace A313832.P14424584755608668973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A287516 (A000108 n).toNat

end

end A313832.P14424584755608668973

/-!
# A313833: Coordination sequence Gal.6.341.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313833, the canonical program `A313833.P8730359671552575781` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313833 has offset 0).

The definition of A313833 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313833.P1446459391243195194

`abs(A008592(n)-A313619(n))`
-/

namespace A313833.P1446459391243195194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313619 n|

end

end A313833.P1446459391243195194

namespace A313833

/-- `abs(A008592(n)-A313619(n))` -/
def P1446459391243195194.Spec : Prop :=
  ∀ n, P1446459391243195194.a n = A313833 n

end A313833

/-! ## A313833.P14718380571289267673

`A314841(n)+∑[A021913(n)]`
-/

namespace A313833.P14718380571289267673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313833.P14718380571289267673

namespace A313833

/-- `A314841(n)+∑[A021913(n)]` -/
def P14718380571289267673.Spec : Prop :=
  ∀ n, P14718380571289267673.a n = A313833 n

end A313833

/-! ## A313833.P8730359671552575781

`A313726(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313833

/-- `A313726(n)+Δ[A011865(n)]` -/
def P8730359671552575781.Spec : Prop :=
  ∀ n, P8730359671552575781.a n = A313833 n

theorem P8730359671552575781.correct : P8730359671552575781.Spec := by
  intro n
  simp only [A313833]

end A313833

/-! ## A313833.P9921871174103551941

`A314841(n)+Δ[A011848(n)]`
-/

namespace A313833.P9921871174103551941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + (f1 (n + 1) - f1 n)

end

end A313833.P9921871174103551941

namespace A313833

/-- `A314841(n)+Δ[A011848(n)]` -/
def P9921871174103551941.Spec : Prop :=
  ∀ n, P9921871174103551941.a n = A313833 n

end A313833

/-! ## A313833.P9230497562333739872

`2*A008706(n)-A313619(n)`
-/

namespace A313833.P9230497562333739872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313619 n

end

end A313833.P9230497562333739872

namespace A313833

/-- `2*A008706(n)-A313619(n)` -/
def P9230497562333739872.Spec : Prop :=
  ∀ n, P9230497562333739872.a n = A313833 n

end A313833

/-! ## A313833.P3077772544033863117

`A314841(n)+n-A004525(n)`
-/

namespace A313833.P3077772544033863117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - A004525 n)

end

end A313833.P3077772544033863117

namespace A313833

/-- `A314841(n)+n-A004525(n)` -/
def P3077772544033863117.Spec : Prop :=
  ∀ n, P3077772544033863117.a n = A313833 n

end A313833

/-! ## A313833.P14872727097452278693

`A314841(n)+n-Δ[A054925(n)]`
-/

namespace A313833.P14872727097452278693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313833.P14872727097452278693

namespace A313833

/-- `A314841(n)+n-Δ[A054925(n)]` -/
def P14872727097452278693.Spec : Prop :=
  ∀ n, P14872727097452278693.a n = A313833 n

end A313833

/-! ## A313833.P9967662251999460948

`A313213(n)+A004525(A004396(n))`
-/

namespace A313833.P9967662251999460948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004525 (A004396 n).toNat

end

end A313833.P9967662251999460948

namespace A313833

/-- `A313213(n)+A004525(A004396(n))` -/
def P9967662251999460948.Spec : Prop :=
  ∀ n, P9967662251999460948.a n = A313833 n

end A313833

/-! ## A313833.P8837824078051218061

`A312896(n)+A004525(A004396(n)+n)`
-/

namespace A313833.P8837824078051218061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312896 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A313833.P8837824078051218061

namespace A313833

/-- `A312896(n)+A004525(A004396(n)+n)` -/
def P8837824078051218061.Spec : Prop :=
  ∀ n, P8837824078051218061.a n = A313833 n

end A313833

/-! ## A313833.P6376110825130163638

`A004396(n)+A313707(n)-A004525(n)`
-/

namespace A313833.P6376110825130163638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313707 n - A004525 n)

end

end A313833.P6376110825130163638

namespace A313833

/-- `A004396(n)+A313707(n)-A004525(n)` -/
def P6376110825130163638.Spec : Prop :=
  ∀ n, P6376110825130163638.a n = A313833 n

end A313833

/-! ## A313833.P6810962444896610076

`A315026(n)+A004396(n-A004525(n))`
-/

namespace A313833.P6810962444896610076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313833.P6810962444896610076

namespace A313833

/-- `A315026(n)+A004396(n-A004525(n))` -/
def P6810962444896610076.Spec : Prop :=
  ∀ n, P6810962444896610076.a n = A313833 n

end A313833

/-! ## A313833.P18388294416521515548

`A008458(n)+A008574(n)-A313619(n)`
-/

namespace A313833.P18388294416521515548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313619 n)

end

end A313833.P18388294416521515548

namespace A313833

/-- `A008458(n)+A008574(n)-A313619(n)` -/
def P18388294416521515548.Spec : Prop :=
  ∀ n, P18388294416521515548.a n = A313833 n

end A313833

/-! ## A313833.P13998218652304295814

`A315266(n)-A101455(n)`
-/

namespace A313833.P13998218652304295814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315266 n - A101455 n

end

end A313833.P13998218652304295814

namespace A313833

/-- `A315266(n)-A101455(n)` -/
def P13998218652304295814.Spec : Prop :=
  ∀ n, P13998218652304295814.a n = A313833 n

end A313833

/-! ## A313833.P7958420125256497882

`A004396(A004525(n))+A313879(n)-A004525(n)`
-/

namespace A313833.P7958420125256497882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313879 n - A004525 n)

end

end A313833.P7958420125256497882

namespace A313833

/-- `A004396(A004525(n))+A313879(n)-A004525(n)` -/
def P7958420125256497882.Spec : Prop :=
  ∀ n, P7958420125256497882.a n = A313833 n

end A313833

/-! ## A313833.P1548141200762508846

`A315512(n)-A004396(A004525(n))`
-/

namespace A313833.P1548141200762508846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - A004396 (A004525 n).toNat

end

end A313833.P1548141200762508846

namespace A313833

/-- `A315512(n)-A004396(A004525(n))` -/
def P1548141200762508846.Spec : Prop :=
  ∀ n, P1548141200762508846.a n = A313833 n

end A313833

/-! ## A313833.P2364396914828058004

`A315527(n)-A004525(n)`
-/

namespace A313833.P2364396914828058004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - A004525 n

end

end A313833.P2364396914828058004

namespace A313833

/-- `A315527(n)-A004525(n)` -/
def P2364396914828058004.Spec : Prop :=
  ∀ n, P2364396914828058004.a n = A313833 n

end A313833

/-! ## A313833.P896796185605476678

`∑[A021913(n)]+A315527(n)-n`
-/

namespace A313833.P896796185605476678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315527 n - (n : ℤ))

end

end A313833.P896796185605476678

namespace A313833

/-- `∑[A021913(n)]+A315527(n)-n` -/
def P896796185605476678.Spec : Prop :=
  ∀ n, P896796185605476678.a n = A313833 n

end A313833

/-! ## A313833.P4976527099652097628

`Δ[A011848(n)]+A315527(n)-n`
-/

namespace A313833.P4976527099652097628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315527 n - (n : ℤ))

end

end A313833.P4976527099652097628

namespace A313833

/-- `Δ[A011848(n)]+A315527(n)-n` -/
def P4976527099652097628.Spec : Prop :=
  ∀ n, P4976527099652097628.a n = A313833 n

end A313833

/-!
# A313834: Coordination sequence Gal.6.616.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313834, the canonical program `A313834.P4113290971779129752` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313834 has offset 0).

The definition of A313834 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313834.P14977977193704202441

`abs(A008592(n)-A313615(n))`
-/

namespace A313834.P14977977193704202441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313615 n|

end

end A313834.P14977977193704202441

namespace A313834

/-- `abs(A008592(n)-A313615(n))` -/
def P14977977193704202441.Spec : Prop :=
  ∀ n, P14977977193704202441.a n = A313834 n

end A313834

/-! ## A313834.P4113290971779129752

`A313730(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313834

/-- `A313730(n)+Δ[A011864(n)]` -/
def P4113290971779129752.Spec : Prop :=
  ∀ n, P4113290971779129752.a n = A313834 n

theorem P4113290971779129752.correct : P4113290971779129752.Spec := by
  intro n
  simp only [A313834]

end A313834

/-! ## A313834.P4777405514281514396

`2*A008706(n)-A313615(n)`
-/

namespace A313834.P4777405514281514396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313615 n

end

end A313834.P4777405514281514396

namespace A313834

/-- `2*A008706(n)-A313615(n)` -/
def P4777405514281514396.Spec : Prop :=
  ∀ n, P4777405514281514396.a n = A313834 n

end A313834

/-! ## A313834.P4527600622968455444

`2*A313704(n)-A313519(n)`
-/

namespace A313834.P4527600622968455444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313704 n - A313519 n

end

end A313834.P4527600622968455444

namespace A313834

/-- `2*A313704(n)-A313519(n)` -/
def P4527600622968455444.Spec : Prop :=
  ∀ n, P4527600622968455444.a n = A313834 n

end A313834

/-! ## A313834.P15333183268367406476

`2*A008574(2*n)-A315492(2*n)`
-/

namespace A313834.P15333183268367406476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315492 (2 * n)

end

end A313834.P15333183268367406476

namespace A313834

/-- `2*A008574(2*n)-A315492(2*n)` -/
def P15333183268367406476.Spec : Prop :=
  ∀ n, P15333183268367406476.a n = A313834 n

end A313834

/-! ## A313834.P2265526136892511532

`A008458(n)+A008574(n)-A313615(n)`
-/

namespace A313834.P2265526136892511532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313615 n)

end

end A313834.P2265526136892511532

namespace A313834

/-- `A008458(n)+A008574(n)-A313615(n)` -/
def P2265526136892511532.Spec : Prop :=
  ∀ n, P2265526136892511532.a n = A313834 n

end A313834

/-! ## A313834.P5445667460329830843

`∑{d}[A008592(n)-A313615(n), A000010(#)]`
-/

namespace A313834.P5445667460329830843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313834.P5445667460329830843

namespace A313834

/-- `∑{d}[A008592(n)-A313615(n), A000010(#)]` -/
def P5445667460329830843.Spec : Prop :=
  ∀ n, P5445667460329830843.a n = A313834 n

end A313834

/-! ## A313834.P7338541114809111077

`A311804(n)+A004525(A008458(n)-A311804(n))`
-/

namespace A313834.P7338541114809111077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311804 n + A004525 (A008458 n - A311804 n).toNat

end

end A313834.P7338541114809111077

namespace A313834

/-- `A311804(n)+A004525(A008458(n)-A311804(n))` -/
def P7338541114809111077.Spec : Prop :=
  ∀ n, P7338541114809111077.a n = A313834 n

end A313834

/-! ## A313834.P13791396424918755787

`A313519(n)+A005843(A313704(n)-A313519(n))`
-/

namespace A313834.P13791396424918755787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313519 n + A005843 (A313704 n - A313519 n).toNat

end

end A313834.P13791396424918755787

namespace A313834

/-- `A313519(n)+A005843(A313704(n)-A313519(n))` -/
def P13791396424918755787.Spec : Prop :=
  ∀ n, P13791396424918755787.a n = A313834 n

end A313834

/-! ## A313834.P5285789276523937838

`A005843(A313704(n))-A313519(n)`
-/

namespace A313834.P5285789276523937838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313704 n).toNat - A313519 n

end

end A313834.P5285789276523937838

namespace A313834

/-- `A005843(A313704(n))-A313519(n)` -/
def P5285789276523937838.Spec : Prop :=
  ∀ n, P5285789276523937838.a n = A313834 n

end A313834

/-! ## A313834.P18394880306331377046

`A005843(A008706(n))-A313615(n)`
-/

namespace A313834.P18394880306331377046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313615 n

end

end A313834.P18394880306331377046

namespace A313834

/-- `A005843(A008706(n))-A313615(n)` -/
def P18394880306331377046.Spec : Prop :=
  ∀ n, P18394880306331377046.a n = A313834 n

end A313834

/-! ## A313834.P11506964873807623860

`A134119(A315730(n))+A008574(n)`
-/

namespace A313834.P11506964873807623860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A315730 n).toNat + A008574 n

end

end A313834.P11506964873807623860

namespace A313834

/-- `A134119(A315730(n))+A008574(n)` -/
def P11506964873807623860.Spec : Prop :=
  ∀ n, P11506964873807623860.a n = A313834 n

end A313834

/-! ## A313834.P18343769552276141865

`A065502(A008458(n))-A313615(n)`
-/

namespace A313834.P18343769552276141865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313615 n

end

end A313834.P18343769552276141865

namespace A313834

/-- `A065502(A008458(n))-A313615(n)` -/
def P18343769552276141865.Spec : Prop :=
  ∀ n, P18343769552276141865.a n = A313834 n

end A313834

/-! ## A313834.P6521573710480051099

`A313031(2*n)-4*n`
-/

namespace A313834.P6521573710480051099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313031 (2 * n) - (4 * n : ℤ)

end

end A313834.P6521573710480051099

namespace A313834

/-- `A313031(2*n)-4*n` -/
def P6521573710480051099.Spec : Prop :=
  ∀ n, P6521573710480051099.a n = A313834 n

end A313834

/-!
# A313835: Coordination sequence Gal.5.299.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313835, the canonical program `A313835.P13328153377433904358` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313835 has offset 0).

The definition of A313835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313835.P13328153377433904358

`abs(A008592(n)-A313614(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313835

/-- `abs(A008592(n)-A313614(n))` -/
def P13328153377433904358.Spec : Prop :=
  ∀ n, P13328153377433904358.a n = A313835 n

theorem P13328153377433904358.correct : P13328153377433904358.Spec := by
  intro n
  simp only [A313835]

end A313835

/-! ## A313835.P8152206348038124374

`A313703(n)+Δ[A011862(n)]`
-/

namespace A313835.P8152206348038124374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + (f1 (n + 1) - f1 n)

end

end A313835.P8152206348038124374

namespace A313835

/-- `A313703(n)+Δ[A011862(n)]` -/
def P8152206348038124374.Spec : Prop :=
  ∀ n, P8152206348038124374.a n = A313835 n

end A313835

/-! ## A313835.P2113380595591232726

`2*A008706(n)-A313614(n)`
-/

namespace A313835.P2113380595591232726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313614 n

end

end A313835.P2113380595591232726

namespace A313835

/-- `2*A008706(n)-A313614(n)` -/
def P2113380595591232726.Spec : Prop :=
  ∀ n, P2113380595591232726.a n = A313835 n

end A313835

/-! ## A313835.P13009943845985800158

`A314692(n)+A093390(A062545(n))`
-/

namespace A313835.P13009943845985800158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A093390 (A062545 n).toNat

end

end A313835.P13009943845985800158

namespace A313835

/-- `A314692(n)+A093390(A062545(n))` -/
def P13009943845985800158.Spec : Prop :=
  ∀ n, P13009943845985800158.a n = A313835 n

end A313835

/-! ## A313835.P8840186472180729507

`A311816(n)+A004396(A004396(2*n))`
-/

namespace A313835.P8840186472180729507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A004396 (A004396 (2 * n)).toNat

end

end A313835.P8840186472180729507

namespace A313835

/-- `A311816(n)+A004396(A004396(2*n))` -/
def P8840186472180729507.Spec : Prop :=
  ∀ n, P8840186472180729507.a n = A313835 n

end A313835

/-! ## A313835.P11343886313046284259

`A315033(n)+A004396(n-A004396(n))`
-/

namespace A313835.P11343886313046284259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313835.P11343886313046284259

namespace A313835

/-- `A315033(n)+A004396(n-A004396(n))` -/
def P11343886313046284259.Spec : Prop :=
  ∀ n, P11343886313046284259.a n = A313835 n

end A313835

/-! ## A313835.P7273907125237509875

`A008458(n)+A008574(n)-A313614(n)`
-/

namespace A313835.P7273907125237509875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313614 n)

end

end A313835.P7273907125237509875

namespace A313835

/-- `A008458(n)+A008574(n)-A313614(n)` -/
def P7273907125237509875.Spec : Prop :=
  ∀ n, P7273907125237509875.a n = A313835 n

end A313835

/-! ## A313835.P11018107942992511581

`A004396(n)+A313703(n)-A004396(A004396(n))`
-/

namespace A313835.P11018107942992511581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313703 n - A004396 (A004396 n).toNat)

end

end A313835.P11018107942992511581

namespace A313835

/-- `A004396(n)+A313703(n)-A004396(A004396(n))` -/
def P11018107942992511581.Spec : Prop :=
  ∀ n, P11018107942992511581.a n = A313835 n

end A313835

/-! ## A313835.P6516415274696047519

`A312893(n)+A004525(A008458(n)-A312893(n))`
-/

namespace A313835.P6516415274696047519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004525 (A008458 n - A312893 n).toNat

end

end A313835.P6516415274696047519

namespace A313835

/-- `A312893(n)+A004525(A008458(n)-A312893(n))` -/
def P6516415274696047519.Spec : Prop :=
  ∀ n, P6516415274696047519.a n = A313835 n

end A313835

/-! ## A313835.P11898724753879507582

`A313614(n)+A005843(A008706(n)-A313614(n))`
-/

namespace A313835.P11898724753879507582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313614 n + A005843 (A008706 n - A313614 n).toNat

end

end A313835.P11898724753879507582

namespace A313835

/-- `A313614(n)+A005843(A008706(n)-A313614(n))` -/
def P11898724753879507582.Spec : Prop :=
  ∀ n, P11898724753879507582.a n = A313835 n

end A313835

/-! ## A313835.P10680788699909948250

`A313962(n)-Δ[A011862(n)]`
-/

namespace A313835.P10680788699909948250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313962 n - (f1 (n + 1) - f1 n)

end

end A313835.P10680788699909948250

namespace A313835

/-- `A313962(n)-Δ[A011862(n)]` -/
def P10680788699909948250.Spec : Prop :=
  ∀ n, P10680788699909948250.a n = A313835 n

end A313835

/-! ## A313835.P8816306055056815886

`A004396(A004396(n))+A313962(n)-A004396(n)`
-/

namespace A313835.P8816306055056815886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A313962 n - A004396 n)

end

end A313835.P8816306055056815886

namespace A313835

/-- `A004396(A004396(n))+A313962(n)-A004396(n)` -/
def P8816306055056815886.Spec : Prop :=
  ∀ n, P8816306055056815886.a n = A313835 n

end A313835

/-! ## A313835.P3626435704134259705

`A315523(n)-A004396(A004396(n))`
-/

namespace A313835.P3626435704134259705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A004396 (A004396 n).toNat

end

end A313835.P3626435704134259705

namespace A313835

/-- `A315523(n)-A004396(A004396(n))` -/
def P3626435704134259705.Spec : Prop :=
  ∀ n, P3626435704134259705.a n = A313835 n

end A313835

/-! ## A313835.P12471837004652576063

`A005843(A008706(n))-A313614(n)`
-/

namespace A313835.P12471837004652576063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313614 n

end

end A313835.P12471837004652576063

namespace A313835

/-- `A005843(A008706(n))-A313614(n)` -/
def P12471837004652576063.Spec : Prop :=
  ∀ n, P12471837004652576063.a n = A313835 n

end A313835

/-! ## A313835.P2487800831248771540

`A321232(A022144(n))+A004396(n)`
-/

namespace A313835.P2487800831248771540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (A022144 n).toNat + A004396 n

end

end A313835.P2487800831248771540

namespace A313835

/-- `A321232(A022144(n))+A004396(n)` -/
def P2487800831248771540.Spec : Prop :=
  ∀ n, P2487800831248771540.a n = A313835 n

end A313835

/-! ## A313835.P5852679959061776343

`A315495(2*n)-6*n`
-/

namespace A313835.P5852679959061776343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 (2 * n) - (6 * n : ℤ)

end

end A313835.P5852679959061776343

namespace A313835

/-- `A315495(2*n)-6*n` -/
def P5852679959061776343.Spec : Prop :=
  ∀ n, P5852679959061776343.a n = A313835 n

end A313835

/-! ## A313835.P9789514658168784428

`A004525(A315214(2*n))`
-/

namespace A313835.P9789514658168784428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315214 (2 * n)).toNat

end

end A313835.P9789514658168784428

namespace A313835

/-- `A004525(A315214(2*n))` -/
def P9789514658168784428.Spec : Prop :=
  ∀ n, P9789514658168784428.a n = A313835 n

end A313835

/-!
# A313836: Coordination sequence Gal.3.23.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313836, the canonical program `A313836.P6703688534607350157` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313836 has offset 0).

The definition of A313836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A313836.P6703688534607350157

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=16, a(4)=20, a(5)=26, a(6)=31, a(7)=36, a(8)=41`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A313836

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P6703688534607350157.Spec : Prop :=
  ∀ n, P6703688534607350157.a n = A313836 n

theorem P6703688534607350157.correct : P6703688534607350157.Spec := by
  intro n
  simp only [A313836]

end A313836

/-! ## A313836.P13562748767657995712

`A074232(A008574(n))`
-/

namespace A313836.P13562748767657995712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A008574 n).toNat

end

end A313836.P13562748767657995712

namespace A313836

/-- `A074232(A008574(n))` -/
def P13562748767657995712.Spec : Prop :=
  ∀ n, P13562748767657995712.a n = A313836 n

end A313836

/-! ## A313836.P10583904942069992888

`A047263(A311914(n)+1)`
-/

namespace A313836.P10583904942069992888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A311914 n + 1).toNat

end

end A313836.P10583904942069992888

namespace A313836

/-- `A047263(A311914(n)+1)` -/
def P10583904942069992888.Spec : Prop :=
  ∀ n, P10583904942069992888.a n = A313836 n

end A313836

/-! ## A313836.P14941693783125259825

`A310503(n)+A238469(n)`
-/

namespace A313836.P14941693783125259825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310503 n + A238469 n

end

end A313836.P14941693783125259825

namespace A313836

/-- `A310503(n)+A238469(n)` -/
def P14941693783125259825.Spec : Prop :=
  ∀ n, P14941693783125259825.a n = A313836 n

end A313836

/-! ## A313836.P1554705805991684425

`A314040(n)+A238468(n)`
-/

namespace A313836.P1554705805991684425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n + A238468 n

end

end A313836.P1554705805991684425

namespace A313836

/-- `A314040(n)+A238468(n)` -/
def P1554705805991684425.Spec : Prop :=
  ∀ n, P1554705805991684425.a n = A313836 n

end A313836

/-! ## A313836.P7853611444194862940

`A315423(n)-A175629(n)`
-/

namespace A313836.P7853611444194862940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n - A175629 n

end

end A313836.P7853611444194862940

namespace A313836

/-- `A315423(n)-A175629(n)` -/
def P7853611444194862940.Spec : Prop :=
  ∀ n, P7853611444194862940.a n = A313836 n

end A313836

/-! ## A313836.P17541181062914957119

`A314096(n)-A238470(n)`
-/

namespace A313836.P17541181062914957119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314096 n - A238470 n

end

end A313836.P17541181062914957119

namespace A313836

/-- `A314096(n)-A238470(n)` -/
def P17541181062914957119.Spec : Prop :=
  ∀ n, P17541181062914957119.a n = A313836 n

end A313836

/-! ## A313836.P1602740285110631219

`A315309(n)-A238469(n)`
-/

namespace A313836.P1602740285110631219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n - A238469 n

end

end A313836.P1602740285110631219

namespace A313836

/-- `A315309(n)-A238469(n)` -/
def P1602740285110631219.Spec : Prop :=
  ∀ n, P1602740285110631219.a n = A313836 n

end A313836

/-! ## A313836.P14835308694991411716

`A313694(n)+Δ[A011860(n)]`
-/

namespace A313836.P14835308694991411716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313694 n + (f1 (n + 1) - f1 n)

end

end A313836.P14835308694991411716

namespace A313836

/-- `A313694(n)+Δ[A011860(n)]` -/
def P14835308694991411716.Spec : Prop :=
  ∀ n, P14835308694991411716.a n = A313836 n

end A313836

/-! ## A313836.P8104328793468464377

`A313982(n)-A194225(n+1)`
-/

namespace A313836.P8104328793468464377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313982 n - A194225 (n + 1)

end

end A313836.P8104328793468464377

namespace A313836

/-- `A313982(n)-A194225(n+1)` -/
def P8104328793468464377.Spec : Prop :=
  ∀ n, P8104328793468464377.a n = A313836 n

end A313836

/-! ## A313836.P10702529640718312965

`A065033(A312289(n))+3*n`
-/

namespace A313836.P10702529640718312965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312289 n).toNat + (3 * n : ℤ)

end

end A313836.P10702529640718312965

namespace A313836

/-- `A065033(A312289(n))+3*n` -/
def P10702529640718312965.Spec : Prop :=
  ∀ n, P10702529640718312965.a n = A313836 n

end A313836

/-! ## A313836.P4611884883599062964

`A313780(n)-A238469(2*n)`
-/

namespace A313836.P4611884883599062964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313780 n - A238469 (2 * n)

end

end A313836.P4611884883599062964

namespace A313836

/-- `A313780(n)-A238469(2*n)` -/
def P4611884883599062964.Spec : Prop :=
  ∀ n, P4611884883599062964.a n = A313836 n

end A313836

/-! ## A313836.P9959557608123621034

`A315309(n)-A238470(2*n)`
-/

namespace A313836.P9959557608123621034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n - A238470 (2 * n)

end

end A313836.P9959557608123621034

namespace A313836

/-- `A315309(n)-A238470(2*n)` -/
def P9959557608123621034.Spec : Prop :=
  ∀ n, P9959557608123621034.a n = A313836 n

end A313836

/-! ## A313836.P15660254142425761021

`(A310503(2*n)+A000007(n))/2`
-/

namespace A313836.P15660254142425761021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310503 (2 * n) + A000007 n : ℚ) / 2

end

end A313836.P15660254142425761021

namespace A313836

/-- `(A310503(2*n)+A000007(n))/2` -/
def P15660254142425761021.Spec : Prop :=
  ∀ n, P15660254142425761021.a n = (A313836 n : ℚ)

end A313836

/-! ## A313836.P3878171864903396129

`(A310503(2*n)+A063524(n+1))/2`
-/

namespace A313836.P3878171864903396129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310503 (2 * n) + A063524 (n + 1) : ℚ) / 2

end

end A313836.P3878171864903396129

namespace A313836

/-- `(A310503(2*n)+A063524(n+1))/2` -/
def P3878171864903396129.Spec : Prop :=
  ∀ n, P3878171864903396129.a n = (A313836 n : ℚ)

end A313836

/-! ## A313836.P13245634106532093113

`A310503(2*n)/(A159075(n+1)+2)`
-/

namespace A313836.P13245634106532093113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310503 (2 * n) : ℚ) / (A159075 (n + 1) + 2 : ℚ)

end

end A313836.P13245634106532093113

namespace A313836

/-- `A310503(2*n)/(A159075(n+1)+2)` -/
def P13245634106532093113.Spec : Prop :=
  ∀ n, P13245634106532093113.a n = (A313836 n : ℚ)

end A313836

/-! ## A313836.P18024225405003143741

`2*n+A311914(n)-A047588(n+1)`
-/

namespace A313836.P18024225405003143741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A311914 n - A047588 (n + 1))

end

end A313836.P18024225405003143741

namespace A313836

/-- `2*n+A311914(n)-A047588(n+1)` -/
def P18024225405003143741.Spec : Prop :=
  ∀ n, P18024225405003143741.a n = A313836 n

end A313836

/-! ## A313836.P5665019544645280314

`A310503(2*n)/A020639(A310503(n))`
-/

namespace A313836.P5665019544645280314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310503 (2 * n) : ℚ) / (A020639 (A310503 n).toNat : ℚ)

end

end A313836.P5665019544645280314

namespace A313836

/-- `A310503(2*n)/A020639(A310503(n))` -/
def P5665019544645280314.Spec : Prop :=
  ∀ n, P5665019544645280314.a n = (A313836 n : ℚ)

end A313836

/-! ## A313836.P641333715101876845

`A008458(n)+A008574(n)-A313613(n)`
-/

namespace A313836.P641333715101876845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313613 n)

end

end A313836.P641333715101876845

namespace A313836

/-- `A008458(n)+A008574(n)-A313613(n)` -/
def P641333715101876845.Spec : Prop :=
  ∀ n, P641333715101876845.a n = A313836 n

end A313836

/-! ## A313836.P176883055073190232

`A191276(n+2)+A191275(A028310(2*n))`
-/

namespace A313836.P176883055073190232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191276 (n + 2) + A191275 (A028310 (2 * n)).toNat

end

end A313836.P176883055073190232

namespace A313836

/-- `A191276(n+2)+A191275(A028310(2*n))` -/
def P176883055073190232.Spec : Prop :=
  ∀ n, P176883055073190232.a n = A313836 n

end A313836

/-!
# A313837: Coordination sequence Gal.6.618.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313837, the canonical program `A313837.P17641795558428794836` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313837 has offset 0).

The definition of A313837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313837.P5691600153823838148

`A315026(n)+floor((n+1)/3)`
-/

namespace A313837.P5691600153823838148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + ⌊(n + 1 : ℚ) / 3⌋

end

end A313837.P5691600153823838148

namespace A313837

/-- `A315026(n)+floor((n+1)/3)` -/
def P5691600153823838148.Spec : Prop :=
  ∀ n, P5691600153823838148.a n = A313837 n

end A313837

/-! ## A313837.P9477498622111889569

`abs(A008592(n)-A313611(n))`
-/

namespace A313837.P9477498622111889569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313611 n|

end

end A313837.P9477498622111889569

namespace A313837

/-- `abs(A008592(n)-A313611(n))` -/
def P9477498622111889569.Spec : Prop :=
  ∀ n, P9477498622111889569.a n = A313837 n

end A313837

/-! ## A313837.P16386480483958347886

`A314847(n)+∑[A021913(n)]`
-/

namespace A313837.P16386480483958347886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313837.P16386480483958347886

namespace A313837

/-- `A314847(n)+∑[A021913(n)]` -/
def P16386480483958347886.Spec : Prop :=
  ∀ n, P16386480483958347886.a n = A313837 n

end A313837

/-! ## A313837.P1009240958466504223

`A008706(n)+Δ[A011865(n)]`
-/

namespace A313837.P1009240958466504223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313837.P1009240958466504223

namespace A313837

/-- `A008706(n)+Δ[A011865(n)]` -/
def P1009240958466504223.Spec : Prop :=
  ∀ n, P1009240958466504223.a n = A313837 n

end A313837

/-! ## A313837.P13409454917579963230

`A314847(n)+Δ[A011848(n)]`
-/

namespace A313837.P13409454917579963230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + (f1 (n + 1) - f1 n)

end

end A313837.P13409454917579963230

namespace A313837

/-- `A314847(n)+Δ[A011848(n)]` -/
def P13409454917579963230.Spec : Prop :=
  ∀ n, P13409454917579963230.a n = A313837 n

end A313837

/-! ## A313837.P970299046881749361

`2*A008706(n)-A313611(n)`
-/

namespace A313837.P970299046881749361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313611 n

end

end A313837.P970299046881749361

namespace A313837

/-- `2*A008706(n)-A313611(n)` -/
def P970299046881749361.Spec : Prop :=
  ∀ n, P970299046881749361.a n = A313837 n

end A313837

/-! ## A313837.P16938832789572847671

`A314847(n)+n-A004525(n)`
-/

namespace A313837.P16938832789572847671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + ((n : ℤ) - A004525 n)

end

end A313837.P16938832789572847671

namespace A313837

/-- `A314847(n)+n-A004525(n)` -/
def P16938832789572847671.Spec : Prop :=
  ∀ n, P16938832789572847671.a n = A313837 n

end A313837

/-! ## A313837.P17641795558428794836

`A313213(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313837

/-- `A313213(n)+A004396(A004525(n))` -/
def P17641795558428794836.Spec : Prop :=
  ∀ n, P17641795558428794836.a n = A313837 n

theorem P17641795558428794836.correct : P17641795558428794836.Spec := by
  intro n
  simp only [A313837]

end A313837

/-! ## A313837.P2714595552943130979

`A315030(n)+A004396(n-A004525(n))`
-/

namespace A313837.P2714595552943130979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315030 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313837.P2714595552943130979

namespace A313837

/-- `A315030(n)+A004396(n-A004525(n))` -/
def P2714595552943130979.Spec : Prop :=
  ∀ n, P2714595552943130979.a n = A313837 n

end A313837

/-! ## A313837.P1088964460658565232

`A008458(n)+A008574(n)-A313611(n)`
-/

namespace A313837.P1088964460658565232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313611 n)

end

end A313837.P1088964460658565232

namespace A313837

/-- `A008458(n)+A008574(n)-A313611(n)` -/
def P1088964460658565232.Spec : Prop :=
  ∀ n, P1088964460658565232.a n = A313837 n

end A313837

/-! ## A313837.P13182567734315945085

`A008486(n)+A315026(n)-A008576(n)`
-/

namespace A313837.P13182567734315945085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315026 n - A008576 n)

end

end A313837.P13182567734315945085

namespace A313837

/-- `A008486(n)+A315026(n)-A008576(n)` -/
def P13182567734315945085.Spec : Prop :=
  ∀ n, P13182567734315945085.a n = A313837 n

end A313837

/-! ## A313837.P5153132150174689712

`A004396(A004525(n))+A313891(n)-A004525(n)`
-/

namespace A313837.P5153132150174689712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313891 n - A004525 n)

end

end A313837.P5153132150174689712

namespace A313837

/-- `A004396(A004525(n))+A313891(n)-A004525(n)` -/
def P5153132150174689712.Spec : Prop :=
  ∀ n, P5153132150174689712.a n = A313837 n

end A313837

/-! ## A313837.P3447242525118432469

`round(n/3+A315322(n)-A004525(n))`
-/

namespace A313837.P3447242525118432469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 + (A315322 n - A004525 n : ℚ))

end

end A313837.P3447242525118432469

namespace A313837

/-- `round(n/3+A315322(n)-A004525(n))` -/
def P3447242525118432469.Spec : Prop :=
  ∀ n, P3447242525118432469.a n = A313837 n

end A313837

/-! ## A313837.P13286932210963780592

`A315512(n)-A004525(A004396(n))`
-/

namespace A313837.P13286932210963780592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315512 n - A004525 (A004396 n).toNat

end

end A313837.P13286932210963780592

namespace A313837

/-- `A315512(n)-A004525(A004396(n))` -/
def P13286932210963780592.Spec : Prop :=
  ∀ n, P13286932210963780592.a n = A313837 n

end A313837

/-! ## A313837.P14495761570693644386

`A005843(A008706(n))-A313611(n)`
-/

namespace A313837.P14495761570693644386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313611 n

end

end A313837.P14495761570693644386

namespace A313837

/-- `A005843(A008706(n))-A313611(n)` -/
def P14495761570693644386.Spec : Prop :=
  ∀ n, P14495761570693644386.a n = A313837 n

end A313837

/-!
# A313838: Coordination sequence Gal.6.649.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313838, there is no canonical definition to state claims against.
-/

/-! ## A313838.P7429653763156818047

`A313876(n)-A087117(A283864(n))`
-/

namespace A313838.P7429653763156818047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 n - A087117 (A283864 n).toNat

end

end A313838.P7429653763156818047

/-! ## A313838.P5843160804849355030

`A102675(A000129(n))+A008706(n)`
-/

namespace A313838.P5843160804849355030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 (A000129 n).toNat + A008706 n

end

end A313838.P5843160804849355030

/-! ## A313838.P14617721971350850392

`abs(A160974(n)-A178181(n))`
-/

namespace A313838.P14617721971350850392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160974 n - A178181 n|

end

end A313838.P14617721971350850392

/-! ## A313838.P130949431906454234

`A008706(n)+A005044(A351870(n))`
-/

namespace A313838.P130949431906454234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A005044 (A351870 n).toNat

end

end A313838.P130949431906454234

/-! ## A313838.P3079342688510598235

`A313836(n)+A083025(A289317(n))`
-/

namespace A313838.P3079342688510598235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A083025 (A289317 n).toNat

end

end A313838.P3079342688510598235

/-!
# A313839: Coordination sequence Gal.6.670.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313839, there is no canonical definition to state claims against.
-/

/-! ## A313839.P8531602892556413171

`A313836(n)+A037831(A089472(n))`
-/

namespace A313839.P8531602892556413171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A037831 (A089472 n).toNat

end

end A313839.P8531602892556413171

/-! ## A313839.P2677265009105159372

`A315064(n)+A263428(A123598(n))`
-/

namespace A313839.P2677265009105159372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315064 n + A263428 (A123598 (n + 69)).toNat

end

end A313839.P2677265009105159372

/-! ## A313839.P4297379954212385592

`A315033(n)+A103609(A004905(n+1))`
-/

namespace A313839.P4297379954212385592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A103609 (A004905 (n + 1)).toNat

end

end A313839.P4297379954212385592

/-! ## A313839.P13309674074272948131

`A333632(A001630(n))+A250120(n)`
-/

namespace A313839.P13309674074272948131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 (A001630 n).toNat + A250120 n

end

end A313839.P13309674074272948131

/-! ## A313839.P2109698244131334013

`A313833(n)+A022003(A289317(n))`
-/

namespace A313839.P2109698244131334013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n + A022003 (A289317 n).toNat

end

end A313839.P2109698244131334013

/-!
# A313840: Coordination sequence Gal.6.646.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313840, there is no canonical definition to state claims against.
-/

/-! ## A313840.P6518339078994549793

`A313847(n)+A313877(n)-A313890(n)`
-/

namespace A313840.P6518339078994549793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313847 n + (A313877 n - A313890 n)

end

end A313840.P6518339078994549793

/-! ## A313840.P14590165812704955051

`A315523(n)-A001221(A026097(n))`
-/

namespace A313840.P14590165812704955051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A001221 (A026097 n).toNat

end

end A313840.P14590165812704955051

/-! ## A313840.P15680071970694025365

`A301710(n)-A071625(A034691(n))`
-/

namespace A313840.P15680071970694025365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A071625 (A034691 n).toNat

end

end A313840.P15680071970694025365

/-! ## A313840.P17010236459486626663

`A248333(A017029(n)-A248333(n))`
-/

namespace A313840.P17010236459486626663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A017029 n - A248333 n).toNat

end

end A313840.P17010236459486626663

/-! ## A313840.P6165229555095332137

`A001614(3*n+1)-A323170(A065840(n+1))`
-/

namespace A313840.P6165229555095332137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (3 * n + 1) - A323170 (A065840 (n + 1)).toNat

end

end A313840.P6165229555095332137

/-!
# A313841: Coordination sequence Gal.5.314.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313841, there is no canonical definition to state claims against.
-/

/-! ## A313841.P5675300230641779277

`A346127(A311928(n))`
-/

namespace A313841.P5675300230641779277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A311928 n).toNat

end

end A313841.P5675300230641779277

/-! ## A313841.P8842335609086863892

`A346127(A311929(n))`
-/

namespace A313841.P8842335609086863892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A311929 n).toNat

end

end A313841.P8842335609086863892

/-! ## A313841.P15448139042191463529

`A346127(A311930(n))`
-/

namespace A313841.P15448139042191463529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A311930 n).toNat

end

end A313841.P15448139042191463529

/-! ## A313841.P6673402854031038871

`A346127(A311931(n))`
-/

namespace A313841.P6673402854031038871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A311931 n).toNat

end

end A313841.P6673402854031038871

/-! ## A313841.P17868331486902364204

`A346127(A311932(n))`
-/

namespace A313841.P17868331486902364204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A311932 n).toNat

end

end A313841.P17868331486902364204

/-!
# A313842: Coordination sequence Gal.5.289.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313842, the canonical program `A313842.P14836794253891960675` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313842 has offset 0).

The definition of A313842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313842.P14836794253891960675

`abs(A008592(n)-A313610(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A313842

/-- `abs(A008592(n)-A313610(n))` -/
def P14836794253891960675.Spec : Prop :=
  ∀ n, P14836794253891960675.a n = A313842 n

theorem P14836794253891960675.correct : P14836794253891960675.Spec := by
  intro n
  simp only [A313842]

end A313842

/-! ## A313842.P17539371055014673880

`2*A008706(n)-A313610(n)`
-/

namespace A313842.P17539371055014673880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313610 n

end

end A313842.P17539371055014673880

namespace A313842

/-- `2*A008706(n)-A313610(n)` -/
def P17539371055014673880.Spec : Prop :=
  ∀ n, P17539371055014673880.a n = A313842 n

end A313842

/-! ## A313842.P8323992220490782263

`A008458(n)+A008574(n)-A313610(n)`
-/

namespace A313842.P8323992220490782263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313610 n)

end

end A313842.P8323992220490782263

namespace A313842

/-- `A008458(n)+A008574(n)-A313610(n)` -/
def P8323992220490782263.Spec : Prop :=
  ∀ n, P8323992220490782263.a n = A313842 n

end A313842

/-! ## A313842.P6691568733763796550

`A250120(n)+A312903(n)-A008574(n)`
-/

namespace A313842.P6691568733763796550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A312903 n - A008574 n)

end

end A313842.P6691568733763796550

namespace A313842

/-- `A250120(n)+A312903(n)-A008574(n)` -/
def P6691568733763796550.Spec : Prop :=
  ∀ n, P6691568733763796550.a n = A313842 n

end A313842

/-! ## A313842.P10206246371917353764

`A040001(n)*A313873(A026741(n))`
-/

namespace A313842.P10206246371917353764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A313873 (A026741 n).toNat

end

end A313842.P10206246371917353764

namespace A313842

/-- `A040001(n)*A313873(A026741(n))` -/
def P10206246371917353764.Spec : Prop :=
  ∀ n, P10206246371917353764.a n = A313842 n

end A313842

/-! ## A313842.P16412204655432868913

`A040001(n)*A313873(n/A040001(n))`
-/

namespace A313842.P16412204655432868913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A313873 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 n : ℚ))).toNat

end

end A313842.P16412204655432868913

namespace A313842

/-- `A040001(n)*A313873(n/A040001(n))` -/
def P16412204655432868913.Spec : Prop :=
  ∀ n, P16412204655432868913.a n = A313842 n

end A313842

/-! ## A313842.P12810107282889047189

`A315508(n)-A330025(n)`
-/

namespace A313842.P12810107282889047189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315508 n - A330025 n

end

end A313842.P12810107282889047189

namespace A313842

/-- `A315508(n)-A330025(n)` -/
def P12810107282889047189.Spec : Prop :=
  ∀ n, P12810107282889047189.a n = A313842 n

end A313842

/-! ## A313842.P5447422479336519672

`A008458(n)+A250120(n)-A315536(n)`
-/

namespace A313842.P5447422479336519672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315536 n)

end

end A313842.P5447422479336519672

namespace A313842

/-- `A008458(n)+A250120(n)-A315536(n)` -/
def P5447422479336519672.Spec : Prop :=
  ∀ n, P5447422479336519672.a n = A313842 n

end A313842

/-! ## A313842.P4765258274453234283

`A314220(n)-Δ[A011858(n)]`
-/

namespace A313842.P4765258274453234283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314220 n - (f1 (n + 1) - f1 n)

end

end A313842.P4765258274453234283

namespace A313842

/-- `A314220(n)-Δ[A011858(n)]` -/
def P4765258274453234283.Spec : Prop :=
  ∀ n, P4765258274453234283.a n = A313842 n

end A313842

/-! ## A313842.P14772160466430676462

`2*A313898(n)-A313928(n)`
-/

namespace A313842.P14772160466430676462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313898 n - A313928 n

end

end A313842.P14772160466430676462

namespace A313842

/-- `2*A313898(n)-A313928(n)` -/
def P14772160466430676462.Spec : Prop :=
  ∀ n, P14772160466430676462.a n = A313842 n

end A313842

/-! ## A313842.P4634246169740435013

`A005843(A008706(n))-A313610(n)`
-/

namespace A313842.P4634246169740435013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313610 n

end

end A313842.P4634246169740435013

namespace A313842

/-- `A005843(A008706(n))-A313610(n)` -/
def P4634246169740435013.Spec : Prop :=
  ∀ n, P4634246169740435013.a n = A313842 n

end A313842

/-! ## A313842.P6980666322938693262

`A313053(n)+A059995(A016969(n))`
-/

namespace A313842.P6980666322938693262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313053 n + A059995 (A016969 n).toNat

end

end A313842.P6980666322938693262

namespace A313842

/-- `A313053(n)+A059995(A016969(n))` -/
def P6980666322938693262.Spec : Prop :=
  ∀ n, P6980666322938693262.a n = A313842 n

end A313842

/-!
# A313843: Coordination sequence Gal.5.330.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313843, there is no canonical definition to state claims against.
-/

/-! ## A313843.P4521566530426268119

`A065339(A131385(n))+A008706(n)`
-/

namespace A313843.P4521566530426268119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (A131385 n).toNat + A008706 n

end

end A313843.P4521566530426268119

/-! ## A313843.P7274449972700289731

`A314118(n)-A000035(A192212(n+1))`
-/

namespace A313843.P7274449972700289731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314118 n - A000035 (A192212 (n + 1)).toNat

end

end A313843.P7274449972700289731

/-! ## A313843.P6193899477653715104

`A314125(n)-A243148(A293376(n+1))`
-/

namespace A313843.P6193899477653715104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314125 n - A243148 (A293376 (n + 1)).toNat

end

end A313843.P6193899477653715104

/-! ## A313843.P14970424314444851108

`A351723(3*n+2)+A000007(A000108(n))`
-/

namespace A313843.P14970424314444851108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351723 (3 * n + 2) + A000007 (A000108 n).toNat

end

end A313843.P14970424314444851108

/-! ## A313843.P1865284846228672266

`A250120(n)+A056924(A001590(2*n+1))`
-/

namespace A313843.P1865284846228672266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A056924 (A001590 (2 * n + 1)).toNat

end

end A313843.P1865284846228672266

/-!
# A313844: Coordination sequence Gal.5.296.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313844, there is no canonical definition to state claims against.
-/

/-! ## A313844.P6857627120463760753

`A250120(n)+A001222(A302705(n))`
-/

namespace A313844.P6857627120463760753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A302705 n).toNat

end

end A313844.P6857627120463760753

/-! ## A313844.P4864781108531918228

`A341021(A134083(3*n+1))+A250120(n)`
-/

namespace A313844.P4864781108531918228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341021 ((A134083 (3 * n + 1)).toNat + 20) + A250120 n

end

end A313844.P4864781108531918228

/-! ## A313844.P7995533298126023167

`A231014(3*n+2)-A141285(A191828(n))`
-/

namespace A313844.P7995533298126023167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (3 * n + 2) - A141285 (A191828 n).toNat

end

end A313844.P7995533298126023167

/-! ## A313844.P4138531448365549304

`A250120(n)+A048881(A001472(n))`
-/

namespace A313844.P4138531448365549304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A048881 (A001472 n).toNat

end

end A313844.P4138531448365549304

/-! ## A313844.P11846771128240939828

`A313834(n)+A089240(A084061(n))`
-/

namespace A313844.P11846771128240939828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313834 n + A089240 (A084061 n).toNat

end

end A313844.P11846771128240939828

/-!
# A313845: Coordination sequence Gal.6.649.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313845, the canonical program `A313845.P7215698163674726813` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313845 has offset 0).

The definition of A313845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313845.P7215698163674726813

`A313874(n)+A313887(n)-A313908(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A313845

/-- `A313874(n)+A313887(n)-A313908(n)` -/
def P7215698163674726813.Spec : Prop :=
  ∀ n, P7215698163674726813.a n = A313845 n

theorem P7215698163674726813.correct : P7215698163674726813.Spec := by
  intro n
  simp only [A313845]

end A313845

/-! ## A313845.P12541895143822804736

`A037800(A087956(n))+A008706(n)`
-/

namespace A313845.P12541895143822804736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A087956 n).toNat + A008706 n

end

end A313845.P12541895143822804736

namespace A313845

/-- `A037800(A087956(n))+A008706(n)` -/
def P12541895143822804736.Spec : Prop :=
  ∀ n, P12541895143822804736.a n = A313845 n

end A313845

/-! ## A313845.P13085668002678781088

`A313704(n)+A001221(A000105(n))`
-/

namespace A313845.P13085668002678781088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313704 n + A001221 (A000105 n).toNat

end

end A313845.P13085668002678781088

namespace A313845

/-- `A313704(n)+A001221(A000105(n))` -/
def P13085668002678781088.Spec : Prop :=
  ∀ n, P13085668002678781088.a n = A313845 n

end A313845

/-! ## A313845.P2149876486209378088

`A313836(n)+A289035(A075118(n))`
-/

namespace A313845.P2149876486209378088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A289035 (A075118 n).toNat

end

end A313845.P2149876486209378088

namespace A313845

/-- `A313836(n)+A289035(A075118(n))` -/
def P2149876486209378088.Spec : Prop :=
  ∀ n, P2149876486209378088.a n = A313845 n

end A313845

/-! ## A313845.P5482038027662952486

`A313836(n)+A304096(A173271(n))`
-/

namespace A313845.P5482038027662952486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A304096 (A173271 n).toNat

end

end A313845.P5482038027662952486

namespace A313845

/-- `A313836(n)+A304096(A173271(n))` -/
def P5482038027662952486.Spec : Prop :=
  ∀ n, P5482038027662952486.a n = A313845 n

end A313845

/-!
# A313846: Coordination sequence Gal.5.308.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313846, the canonical program `A313846.P7134346169744339600` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313846 has offset 0).

The definition of A313846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313846.P7134346169744339600

`A315033(n)+∑[A022003(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313846

/-- `A315033(n)+∑[A022003(n)]` -/
def P7134346169744339600.Spec : Prop :=
  ∀ n, P7134346169744339600.a n = A313846 n

theorem P7134346169744339600.correct : P7134346169744339600.Spec := by
  intro n
  simp only [A313846]

end A313846

/-! ## A313846.P16256035397290775578

`A315033(n)+A002264(n+1)`
-/

namespace A313846.P16256035397290775578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A002264 (n + 1)

end

end A313846.P16256035397290775578

namespace A313846

/-- `A315033(n)+A002264(n+1)` -/
def P16256035397290775578.Spec : Prop :=
  ∀ n, P16256035397290775578.a n = A313846 n

end A313846

/-! ## A313846.P11572904070863825172

`A086161(n)+A315033(n)-1`
-/

namespace A313846.P11572904070863825172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + (A315033 n - 1)

end

end A313846.P11572904070863825172

namespace A313846

/-- `A086161(n)+A315033(n)-1` -/
def P11572904070863825172.Spec : Prop :=
  ∀ n, P11572904070863825172.a n = A313846 n

end A313846

/-! ## A313846.P14021757688294744303

`A315033(n)+n-A004396(n)`
-/

namespace A313846.P14021757688294744303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + ((n : ℤ) - A004396 n)

end

end A313846.P14021757688294744303

namespace A313846

/-- `A315033(n)+n-A004396(n)` -/
def P14021757688294744303.Spec : Prop :=
  ∀ n, P14021757688294744303.a n = A313846 n

end A313846

/-! ## A313846.P8536234016226353254

`A315033(n)+A008615(2*n+1)`
-/

namespace A313846.P8536234016226353254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A008615 (2 * n + 1)

end

end A313846.P8536234016226353254

namespace A313846

/-- `A315033(n)+A008615(2*n+1)` -/
def P8536234016226353254.Spec : Prop :=
  ∀ n, P8536234016226353254.a n = A313846 n

end A313846

/-! ## A313846.P6354712405708706565

`A315033(n)+A008679(A016813(n))`
-/

namespace A313846.P6354712405708706565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A008679 (A016813 n).toNat

end

end A313846.P6354712405708706565

namespace A313846

/-- `A315033(n)+A008679(A016813(n))` -/
def P6354712405708706565.Spec : Prop :=
  ∀ n, P6354712405708706565.a n = A313846 n

end A313846

/-! ## A313846.P15071026190914597082

`A314848(n)+n-A004396(A004396(n))`
-/

namespace A313846.P15071026190914597082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + ((n : ℤ) - A004396 (A004396 n).toNat)

end

end A313846.P15071026190914597082

namespace A313846

/-- `A314848(n)+n-A004396(A004396(n))` -/
def P15071026190914597082.Spec : Prop :=
  ∀ n, P15071026190914597082.a n = A313846 n

end A313846

/-! ## A313846.P17780765552911983579

`A008486(n)+A315033(n)-A008576(n)`
-/

namespace A313846.P17780765552911983579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315033 n - A008576 n)

end

end A313846.P17780765552911983579

namespace A313846

/-- `A008486(n)+A315033(n)-A008576(n)` -/
def P17780765552911983579.Spec : Prop :=
  ∀ n, P17780765552911983579.a n = A313846 n

end A313846

/-! ## A313846.P13389087348704444669

`A086161(n)+A023443(A315033(n))`
-/

namespace A313846.P13389087348704444669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 n + A023443 (A315033 n).toNat

end

end A313846.P13389087348704444669

namespace A313846

/-- `A086161(n)+A023443(A315033(n))` -/
def P13389087348704444669.Spec : Prop :=
  ∀ n, P13389087348704444669.a n = A313846 n

end A313846

/-! ## A313846.P11974118789908017381

`A315265(2*n)-5*n`
-/

namespace A313846.P11974118789908017381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 (2 * n) - (5 * n : ℤ)

end

end A313846.P11974118789908017381

namespace A313846

/-- `A315265(2*n)-5*n` -/
def P11974118789908017381.Spec : Prop :=
  ∀ n, P11974118789908017381.a n = A313846 n

end A313846

/-!
# A313847: Coordination sequence Gal.6.648.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313847, there is no canonical definition to state claims against.
-/

/-! ## A313847.P12097422460445082609

`A126281(2*n+1)-A339825(A005206(3*n+2))`
-/

namespace A313847.P12097422460445082609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126281 (2 * n + 1) - A339825 (A005206 (3 * n + 2)).toNat

end

end A313847.P12097422460445082609

/-! ## A313847.P18086450484785609728

`A301697(n)-A343222(A100790(n))`
-/

namespace A313847.P18086450484785609728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A343222 (A100790 n).toNat

end

end A313847.P18086450484785609728

/-! ## A313847.P6163464349029531233

`A301697(n)-A007949(A145546(n+1))`
-/

namespace A313847.P6163464349029531233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A007949 (A145546 (n + 1)).toNat

end

end A313847.P6163464349029531233

/-! ## A313847.P10776165937488259189

`floor(A178181(n)+cos(A180595(n)))`
-/

namespace A313847.P10776165937488259189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178181 n : ℝ) + Real.cos (A180595 n : ℝ)⌋

end

end A313847.P10776165937488259189

/-! ## A313847.P9454290955690157367

`A313846(n)+A081227(A148109(n))`
-/

namespace A313847.P9454290955690157367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313846 n + A081227 (A148109 n).toNat

end

end A313847.P9454290955690157367

/-!
# A313848: Coordination sequence Gal.6.584.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313848, there is no canonical definition to state claims against.
-/

/-! ## A313848.P6596915004889825377

`A313705(A087051(n))+A057354(n)`
-/

namespace A313848.P6596915004889825377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313705 (A087051 n).toNat + A057354 n

end

end A313848.P6596915004889825377

/-! ## A313848.P2368194523041590619

`A038548(A013989(n))+A004938(n)`
-/

namespace A313848.P2368194523041590619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A013989 n).toNat + A004938 n

end

end A313848.P2368194523041590619

/-! ## A313848.P7782132239868603574

`A250120(n)+A001221(A198891(n))`
-/

namespace A313848.P7782132239868603574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001221 (A198891 n).toNat

end

end A313848.P7782132239868603574

/-! ## A313848.P18275632606107087204

`A313847(n)+A025441(A181070(n))`
-/

namespace A313848.P18275632606107087204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313847 n + A025441 (A181070 n).toNat

end

end A313848.P18275632606107087204

/-! ## A313848.P18202084572581017394

`A364357(A084057(n))+A250120(n)`
-/

namespace A313848.P18202084572581017394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364357 (A084057 n).toNat + A250120 n

end

end A313848.P18202084572581017394

/-!
# A313849: Coordination sequence Gal.5.309.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313849, the canonical program `A313849.P16006681991081837481` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313849 has offset 0).

The definition of A313849 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313849.P16006681991081837481

`A219529(n)+A134667(A047363(2*n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313849

/-- `A219529(n)+A134667(A047363(2*n+1))` -/
def P16006681991081837481.Spec : Prop :=
  ∀ n, P16006681991081837481.a n = A313849 n

theorem P16006681991081837481.correct : P16006681991081837481.Spec := by
  intro n
  simp only [A313849]

end A313849

/-! ## A313849.P7379778397407083808

`A219529(n)-A134667(A047486(2*n+1))`
-/

namespace A313849.P7379778397407083808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n - A134667 (A047486 (2 * n + 1)).toNat

end

end A313849.P7379778397407083808

namespace A313849

/-- `A219529(n)-A134667(A047486(2*n+1))` -/
def P7379778397407083808.Spec : Prop :=
  ∀ n, P7379778397407083808.a n = A313849 n

end A313849

/-! ## A313849.P2493426176779874358

`A134667(A047363(2*n+1))+A008576(2*n)`
-/

namespace A313849.P2493426176779874358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A047363 (2 * n + 1)).toNat + A008576 (2 * n)

end

end A313849.P2493426176779874358

namespace A313849

/-- `A134667(A047363(2*n+1))+A008576(2*n)` -/
def P2493426176779874358.Spec : Prop :=
  ∀ n, P2493426176779874358.a n = A313849 n

end A313849

/-! ## A313849.P9917717761072716257

`A008576(2*n)-A134667(A047486(2*n+1))`
-/

namespace A313849.P9917717761072716257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (2 * n) - A134667 (A047486 (2 * n + 1)).toNat

end

end A313849.P9917717761072716257

namespace A313849

/-- `A008576(2*n)-A134667(A047486(2*n+1))` -/
def P9917717761072716257.Spec : Prop :=
  ∀ n, P9917717761072716257.a n = A313849 n

end A313849

/-! ## A313849.P18088914671465986430

`A004525(A314060(2*n))-A134667(A047486(2*n+1))`
-/

namespace A313849.P18088914671465986430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314060 (2 * n)).toNat - A134667 (A047486 (2 * n + 1)).toNat

end

end A313849.P18088914671465986430

namespace A313849

/-- `A004525(A314060(2*n))-A134667(A047486(2*n+1))` -/
def P18088914671465986430.Spec : Prop :=
  ∀ n, P18088914671465986430.a n = A313849 n

end A313849

/-!
# A313850: Coordination sequence Gal.6.411.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313850, there is no canonical definition to state claims against.
-/

/-! ## A313850.P6625326044142039449

`A313851(n)-A185284(A131572(n))`
-/

namespace A313850.P6625326044142039449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313851 n - A185284 (A131572 n).toNat

end

end A313850.P6625326044142039449

/-! ## A313850.P3131027852439732807

`A313851(n)-A129251(A140480(n+1))`
-/

namespace A313850.P3131027852439732807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313851 n - A129251 (A140480 (n + 1)).toNat

end

end A313850.P3131027852439732807

/-! ## A313850.P12117192040231282246

`A313851(A062399(n))-A185238(3*n+2)`
-/

namespace A313850.P12117192040231282246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313851 (A062399 n).toNat - A185238 (3 * n + 2)

end

end A313850.P12117192040231282246

/-! ## A313850.P4692001082200142196

`A313851(A087051(n))`
-/

namespace A313850.P4692001082200142196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313851 (A087051 n).toNat

end

end A313850.P4692001082200142196

/-! ## A313850.P9353624731132334651

`A313851(A241186(∑[n]))`
-/

namespace A313850.P9353624731132334651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313851 (A241186 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A313850.P9353624731132334651

/-!
# A313851: Coordination sequence Gal.6.410.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313851, there is no canonical definition to state claims against.
-/

/-! ## A313851.P9002708621027279350

`A313850(n)+A185238(A131572(n))`
-/

namespace A313851.P9002708621027279350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313850 n + A185238 (A131572 n).toNat

end

end A313851.P9002708621027279350

/-! ## A313851.P13844922868808904180

`lt[A271460(n+5)², A271513(n+4)]`
-/

namespace A313851.P13844922868808904180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271460 (n + 5) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271513 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313851.P13844922868808904180

/-! ## A313851.P14921875419458045007

`A313850(n)+A185284(A027340(n))`
-/

namespace A313851.P14921875419458045007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313850 n + A185284 (A027340 n).toNat

end

end A313851.P14921875419458045007

/-! ## A313851.P5845568877172493057

`A313850(n)+A185284(A104503(n))`
-/

namespace A313851.P5845568877172493057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313850 n + A185284 (A104503 n).toNat

end

end A313851.P5845568877172493057

/-! ## A313851.P4163698648710432158

`A313850(n)-A244895(A185238(3*n+4))`
-/

namespace A313851.P4163698648710432158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313850 n - A244895 (A185238 (3 * n + 4)).toNat

end

end A313851.P4163698648710432158

/-!
# A313852: Coordination sequence Gal.6.463.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313852, there is no canonical definition to state claims against.
-/

/-! ## A313852.P15018604284676577539

`A313225(n)+A057427(n²²)`
-/

namespace A313852.P15018604284676577539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313225 n + A057427 ((n ^ 2) ^ 2)

end

end A313852.P15018604284676577539

/-! ## A313852.P12840800174984177873

`A313225(n)+A060576(A018022(n))`
-/

namespace A313852.P12840800174984177873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313225 n + A060576 (A018022 n).toNat

end

end A313852.P12840800174984177873

/-! ## A313852.P12343758858921844115

`A313225(n)+A060576(A039300(n))`
-/

namespace A313852.P12343758858921844115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313225 n + A060576 (A039300 n).toNat

end

end A313852.P12343758858921844115

/-! ## A313852.P7008776146795583790

`A312484(n)+A001222(A026016(n+1))`
-/

namespace A313852.P7008776146795583790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A001222 (A026016 (n + 1)).toNat

end

end A313852.P7008776146795583790

/-! ## A313852.P14309949263784677455

`A313225(n)+A043545(A002838(n+1))`
-/

namespace A313852.P14309949263784677455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313225 n + A043545 (A002838 (n + 1)).toNat

end

end A313852.P14309949263784677455

/-!
# A313853: Coordination sequence Gal.6.156.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313853, the canonical program `A313853.P5161189615059206870` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313853 has offset 0).

The definition of A313853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2399 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313853.P9414322352952123455

`A314091(n)-∑[A131736(n)]`
-/

namespace A313853.P9414322352952123455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313853.P9414322352952123455

namespace A313853

/-- `A314091(n)-∑[A131736(n)]` -/
def P9414322352952123455.Spec : Prop :=
  ∀ n, P9414322352952123455.a n = A313853 n

end A313853

/-! ## A313853.P4301352942450287244

`A313680(n)+A002264(A030118(n))`
-/

namespace A313853.P4301352942450287244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A002264 (A030118 n).toNat

end

end A313853.P4301352942450287244

namespace A313853

/-- `A313680(n)+A002264(A030118(n))` -/
def P4301352942450287244.Spec : Prop :=
  ∀ n, P4301352942450287244.a n = A313853 n

end A313853

/-! ## A313853.P5161189615059206870

`A313246(n)+A128834(A004525(n))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313853

/-- `A313246(n)+A128834(A004525(n))` -/
def P5161189615059206870.Spec : Prop :=
  ∀ n, P5161189615059206870.a n = A313853 n

theorem P5161189615059206870.correct : P5161189615059206870.Spec := by
  intro n
  simp only [A313853]

end A313853

/-! ## A313853.P7570101739882363693

`A314091(n)-A128834(n-A128834(n))`
-/

namespace A313853.P7570101739882363693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314091 n - A128834 ((n : ℤ) - A128834 n).toNat

end

end A313853.P7570101739882363693

namespace A313853

/-- `A314091(n)-A128834(n-A128834(n))` -/
def P7570101739882363693.Spec : Prop :=
  ∀ n, P7570101739882363693.a n = A313853 n

end A313853

/-! ## A313853.P13442220963342964614

`A313237(n)+A046978(A004396(n))`
-/

namespace A313853.P13442220963342964614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313237 n + A046978 (A004396 n).toNat

end

end A313853.P13442220963342964614

namespace A313853

/-- `A313237(n)+A046978(A004396(n))` -/
def P13442220963342964614.Spec : Prop :=
  ∀ n, P13442220963342964614.a n = A313853 n

end A313853

/-! ## A313853.P40994390447602192

`A128834(A004525(n))+A313693(n)-A128834(n)`
-/

namespace A313853.P40994390447602192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A004525 n).toNat + (A313693 n - A128834 n)

end

end A313853.P40994390447602192

namespace A313853

/-- `A128834(A004525(n))+A313693(n)-A128834(n)` -/
def P40994390447602192.Spec : Prop :=
  ∀ n, P40994390447602192.a n = A313853 n

end A313853

/-! ## A313853.P5027161281102875374

`2*A313859(n)-A313862(n)`
-/

namespace A313853.P5027161281102875374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313859 n - A313862 n

end

end A313853.P5027161281102875374

namespace A313853

/-- `2*A313859(n)-A313862(n)` -/
def P5027161281102875374.Spec : Prop :=
  ∀ n, P5027161281102875374.a n = A313853 n

end A313853

/-! ## A313853.P15612957296700452404

`abs(A008592(n)-A313592(n))`
-/

namespace A313853.P15612957296700452404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313592 n|

end

end A313853.P15612957296700452404

namespace A313853

/-- `abs(A008592(n)-A313592(n))` -/
def P15612957296700452404.Spec : Prop :=
  ∀ n, P15612957296700452404.a n = A313853 n

end A313853

/-! ## A313853.P14845177050529816258

`2*A008706(n)-A313592(n)`
-/

namespace A313853.P14845177050529816258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313592 n

end

end A313853.P14845177050529816258

namespace A313853

/-- `2*A008706(n)-A313592(n)` -/
def P14845177050529816258.Spec : Prop :=
  ∀ n, P14845177050529816258.a n = A313853 n

end A313853

/-! ## A313853.P4921147394926214806

`A315515(n)-A004525(A004396(n))`
-/

namespace A313853.P4921147394926214806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315515 n - A004525 (A004396 n).toNat

end

end A313853.P4921147394926214806

namespace A313853

/-- `A315515(n)-A004525(A004396(n))` -/
def P4921147394926214806.Spec : Prop :=
  ∀ n, P4921147394926214806.a n = A313853 n

end A313853

/-! ## A313853.P171480006258558257

`A008458(n)+A008574(n)-A313592(n)`
-/

namespace A313853.P171480006258558257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313592 n)

end

end A313853.P171480006258558257

namespace A313853

/-- `A008458(n)+A008574(n)-A313592(n)` -/
def P171480006258558257.Spec : Prop :=
  ∀ n, P171480006258558257.a n = A313853 n

end A313853

/-! ## A313853.P15248236758453738536

`A002264(A030118(n))+A315741(n)-n`
-/

namespace A313853.P15248236758453738536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A030118 n).toNat + (A315741 n - (n : ℤ))

end

end A313853.P15248236758453738536

namespace A313853

/-- `A002264(A030118(n))+A315741(n)-n` -/
def P15248236758453738536.Spec : Prop :=
  ∀ n, P15248236758453738536.a n = A313853 n

end A313853

/-! ## A313853.P12027581388241210634

`A005843(A008706(n))-A313592(n)`
-/

namespace A313853.P12027581388241210634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313592 n

end

end A313853.P12027581388241210634

namespace A313853

/-- `A005843(A008706(n))-A313592(n)` -/
def P12027581388241210634.Spec : Prop :=
  ∀ n, P12027581388241210634.a n = A313853 n

end A313853

/-!
# A313854: Coordination sequence Gal.6.250.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313854, the canonical program `A313854.P3810550675620183463` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313854 has offset 0).

The definition of A313854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313854.P2731125927020623707

`A310491(n)+A004525(A313869(n)-A310491(n))`
-/

namespace A313854.P2731125927020623707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310491 n + A004525 (A313869 n - A310491 n).toNat

end

end A313854.P2731125927020623707

namespace A313854

/-- `A310491(n)+A004525(A313869(n)-A310491(n))` -/
def P2731125927020623707.Spec : Prop :=
  ∀ n, P2731125927020623707.a n = A313854 n

end A313854

/-! ## A313854.P7745022927757991082

`(A315725(n)+A312656(n))/2`
-/

namespace A313854.P7745022927757991082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315725 n + A312656 n : ℚ) / 2

end

end A313854.P7745022927757991082

namespace A313854

/-- `(A315725(n)+A312656(n))/2` -/
def P7745022927757991082.Spec : Prop :=
  ∀ n, P7745022927757991082.a n = (A313854 n : ℚ)

end A313854

/-! ## A313854.P9438977232631362443

`A312656(n)+A001281(A315725(n)-A312656(n))`
-/

namespace A313854.P9438977232631362443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312656 n + A001281 (A315725 n - A312656 n).toNat

end

end A313854.P9438977232631362443

namespace A313854

/-- `A312656(n)+A001281(A315725(n)-A312656(n))` -/
def P9438977232631362443.Spec : Prop :=
  ∀ n, P9438977232631362443.a n = A313854 n

end A313854

/-! ## A313854.P11741504755295233633

`A312656(n)+A004525(A315725(n)-A312656(n))`
-/

namespace A313854.P11741504755295233633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312656 n + A004525 (A315725 n - A312656 n).toNat

end

end A313854.P11741504755295233633

namespace A313854

/-- `A312656(n)+A004525(A315725(n)-A312656(n))` -/
def P11741504755295233633.Spec : Prop :=
  ∀ n, P11741504755295233633.a n = A313854 n

end A313854

/-! ## A313854.P3810550675620183463

`abs(10*n-A313591(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A313854

/-- `abs(10*n-A313591(n))` -/
def P3810550675620183463.Spec : Prop :=
  ∀ n, P3810550675620183463.a n = A313854 n

theorem P3810550675620183463.correct : P3810550675620183463.Spec := by
  intro n
  simp only [A313854]

end A313854

/-! ## A313854.P17356730289063274710

`2*A008706(n)-A313591(n)`
-/

namespace A313854.P17356730289063274710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313591 n

end

end A313854.P17356730289063274710

namespace A313854

/-- `2*A008706(n)-A313591(n)` -/
def P17356730289063274710.Spec : Prop :=
  ∀ n, P17356730289063274710.a n = A313854 n

end A313854

/-! ## A313854.P14218375003029802229

`A135042(2*n+1)-A313591(n)`
-/

namespace A313854.P14218375003029802229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313591 n

end

end A313854.P14218375003029802229

namespace A313854

/-- `A135042(2*n+1)-A313591(n)` -/
def P14218375003029802229.Spec : Prop :=
  ∀ n, P14218375003029802229.a n = A313854 n

end A313854

/-! ## A313854.P17554148621320838598

`A000038(n)+A008592(n)-A313591(n)`
-/

namespace A313854.P17554148621320838598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313591 n)

end

end A313854.P17554148621320838598

namespace A313854

/-- `A000038(n)+A008592(n)-A313591(n)` -/
def P17554148621320838598.Spec : Prop :=
  ∀ n, P17554148621320838598.a n = A313854 n

end A313854

/-! ## A313854.P16020448977186940292

`A008458(n)+A008574(n)-A313591(n)`
-/

namespace A313854.P16020448977186940292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313591 n)

end

end A313854.P16020448977186940292

namespace A313854

/-- `A008458(n)+A008574(n)-A313591(n)` -/
def P16020448977186940292.Spec : Prop :=
  ∀ n, P16020448977186940292.a n = A313854 n

end A313854

/-! ## A313854.P4396769990975749622

`gcd(A008592(n)-A313591(n), A000038(2*n))`
-/

namespace A313854.P4396769990975749622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A313591 n) (A000038 (2 * n))

end

end A313854.P4396769990975749622

namespace A313854

/-- `gcd(A008592(n)-A313591(n), A000038(2*n))` -/
def P4396769990975749622.Spec : Prop :=
  ∀ n, (P4396769990975749622.a n : ℤ) = A313854 n

end A313854

/-! ## A313854.P15972262074150481821

`A180004(A313718(n))`
-/

namespace A313854.P15972262074150481821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A313718 n).toNat

end

end A313854.P15972262074150481821

namespace A313854

/-- `A180004(A313718(n))` -/
def P15972262074150481821.Spec : Prop :=
  ∀ n, P15972262074150481821.a n = A313854 n

end A313854

/-! ## A313854.P2631508312861903937

`A005843(A008706(n))-A313591(n)`
-/

namespace A313854.P2631508312861903937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313591 n

end

end A313854.P2631508312861903937

namespace A313854

/-- `A005843(A008706(n))-A313591(n)` -/
def P2631508312861903937.Spec : Prop :=
  ∀ n, P2631508312861903937.a n = A313854 n

end A313854

/-! ## A313854.P3270026492457941388

`(A315302(n)+A310517(n))/2`
-/

namespace A313854.P3270026492457941388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315302 n + A310517 n : ℚ) / 2

end

end A313854.P3270026492457941388

namespace A313854

/-- `(A315302(n)+A310517(n))/2` -/
def P3270026492457941388.Spec : Prop :=
  ∀ n, P3270026492457941388.a n = (A313854 n : ℚ)

end A313854

/-! ## A313854.P15228723730034353956

`A004525(A313869(n)+A310491(n))`
-/

namespace A313854.P15228723730034353956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313869 n + A310491 n).toNat

end

end A313854.P15228723730034353956

namespace A313854

/-- `A004525(A313869(n)+A310491(n))` -/
def P15228723730034353956.Spec : Prop :=
  ∀ n, P15228723730034353956.a n = A313854 n

end A313854

/-! ## A313854.P10396576810807734117

`A001281(A315725(n)+A312656(n))`
-/

namespace A313854.P10396576810807734117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315725 n + A312656 n).toNat

end

end A313854.P10396576810807734117

namespace A313854

/-- `A001281(A315725(n)+A312656(n))` -/
def P10396576810807734117.Spec : Prop :=
  ∀ n, P10396576810807734117.a n = A313854 n

end A313854

/-! ## A313854.P9189564490075412711

`A004525(A315302(n)+A310517(n))`
-/

namespace A313854.P9189564490075412711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315302 n + A310517 n).toNat

end

end A313854.P9189564490075412711

namespace A313854

/-- `A004525(A315302(n)+A310517(n))` -/
def P9189564490075412711.Spec : Prop :=
  ∀ n, P9189564490075412711.a n = A313854 n

end A313854

/-! ## A313854.P18383078597934646656

`A004525(A315725(n)+A312656(n))`
-/

namespace A313854.P18383078597934646656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315725 n + A312656 n).toNat

end

end A313854.P18383078597934646656

namespace A313854

/-- `A004525(A315725(n)+A312656(n))` -/
def P18383078597934646656.Spec : Prop :=
  ∀ n, P18383078597934646656.a n = A313854 n

end A313854

/-!
# A313855: Coordination sequence Gal.5.87.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313855, the canonical program `A313855.P14947819833165197464` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313855 has offset 0).

The definition of A313855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313855.P14947819833165197464

`A313719(n)+A002266(n+2)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313855

/-- `A313719(n)+A002266(n+2)` -/
def P14947819833165197464.Spec : Prop :=
  ∀ n, P14947819833165197464.a n = A313855 n

theorem P14947819833165197464.correct : P14947819833165197464.Spec := by
  intro n
  simp only [A313855]

end A313855

/-! ## A313855.P10294942769637217520

`n-A151988(n)+A311807(n)+n`
-/

namespace A313855.P10294942769637217520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A151988 n + (A311807 n + (n : ℤ))

end

end A313855.P10294942769637217520

namespace A313855

/-- `n-A151988(n)+A311807(n)+n` -/
def P10294942769637217520.Spec : Prop :=
  ∀ n, P10294942769637217520.a n = A313855 n

end A313855

/-! ## A313855.P2440365205026501325

`A313719(n)+A008676(A016777(n))`
-/

namespace A313855.P2440365205026501325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313719 n + A008676 (A016777 n).toNat

end

end A313855.P2440365205026501325

namespace A313855

/-- `A313719(n)+A008676(A016777(n))` -/
def P2440365205026501325.Spec : Prop :=
  ∀ n, P2440365205026501325.a n = A313855 n

end A313855

/-! ## A313855.P2091321118227932884

`A008486(n)+A314827(n)-A072154(n)`
-/

namespace A313855.P2091321118227932884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A314827 n - A072154 n)

end

end A313855.P2091321118227932884

namespace A313855

/-- `A008486(n)+A314827(n)-A072154(n)` -/
def P2091321118227932884.Spec : Prop :=
  ∀ n, P2091321118227932884.a n = A313855 n

end A313855

/-! ## A313855.P10514814780215704126

`abs(A008592(n)-A313589(n))`
-/

namespace A313855.P10514814780215704126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313589 n|

end

end A313855.P10514814780215704126

namespace A313855

/-- `abs(A008592(n)-A313589(n))` -/
def P10514814780215704126.Spec : Prop :=
  ∀ n, P10514814780215704126.a n = A313855 n

end A313855

/-! ## A313855.P12243083238744711950

`floor(A010015(n)/A313589(n))`
-/

namespace A313855.P12243083238744711950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313589 n : ℚ)⌋

end

end A313855.P12243083238744711950

namespace A313855

/-- `floor(A010015(n)/A313589(n))` -/
def P12243083238744711950.Spec : Prop :=
  ∀ n, P12243083238744711950.a n = A313855 n

end A313855

/-! ## A313855.P7295306506412150512

`2*A008706(n)-A313589(n)`
-/

namespace A313855.P7295306506412150512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313589 n

end

end A313855.P7295306506412150512

namespace A313855

/-- `2*A008706(n)-A313589(n)` -/
def P7295306506412150512.Spec : Prop :=
  ∀ n, P7295306506412150512.a n = A313855 n

end A313855

/-! ## A313855.P9736999826981738240

`A008458(n)+A008574(n)-A313589(n)`
-/

namespace A313855.P9736999826981738240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313589 n)

end

end A313855.P9736999826981738240

namespace A313855

/-- `A008458(n)+A008574(n)-A313589(n)` -/
def P9736999826981738240.Spec : Prop :=
  ∀ n, P9736999826981738240.a n = A313855 n

end A313855

/-! ## A313855.P12308890707624231053

`A330025(n)+A313255(n)`
-/

namespace A313855.P12308890707624231053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313255 n

end

end A313855.P12308890707624231053

namespace A313855

/-- `A330025(n)+A313255(n)` -/
def P12308890707624231053.Spec : Prop :=
  ∀ n, P12308890707624231053.a n = A313855 n

end A313855

/-! ## A313855.P18227752534452893204

`A315412(n)-A244895(n)`
-/

namespace A313855.P18227752534452893204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315412 n - A244895 n

end

end A313855.P18227752534452893204

namespace A313855

/-- `A315412(n)-A244895(n)` -/
def P18227752534452893204.Spec : Prop :=
  ∀ n, P18227752534452893204.a n = A313855 n

end A313855

/-! ## A313855.P5901379366378453596

`A315412(n)-A330025(2*n)`
-/

namespace A313855.P5901379366378453596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315412 n - A330025 (2 * n)

end

end A313855.P5901379366378453596

namespace A313855

/-- `A315412(n)-A330025(2*n)` -/
def P5901379366378453596.Spec : Prop :=
  ∀ n, P5901379366378453596.a n = A313855 n

end A313855

/-! ## A313855.P18227040688874973406

`A250120(n)+A315412(n)%A072154(n)`
-/

namespace A313855.P18227040688874973406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + Int.tmod (A315412 n) (A072154 n)

end

end A313855.P18227040688874973406

namespace A313855

/-- `A250120(n)+A315412(n)%A072154(n)` -/
def P18227040688874973406.Spec : Prop :=
  ∀ n, P18227040688874973406.a n = A313855 n

end A313855

/-! ## A313855.P5149471803665618448

`2*A313873(n)-A313898(n)`
-/

namespace A313855.P5149471803665618448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313873 n - A313898 n

end

end A313855.P5149471803665618448

namespace A313855

/-- `2*A313873(n)-A313898(n)` -/
def P5149471803665618448.Spec : Prop :=
  ∀ n, P5149471803665618448.a n = A313855 n

end A313855

/-! ## A313855.P15693740063296439917

`A074067(A313589(n))`
-/

namespace A313855.P15693740063296439917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313589 n).toNat

end

end A313855.P15693740063296439917

namespace A313855

/-- `A074067(A313589(n))` -/
def P15693740063296439917.Spec : Prop :=
  ∀ n, P15693740063296439917.a n = A313855 n

end A313855

/-! ## A313855.P5953720748183631955

`A005843(A008706(n))-A313589(n)`
-/

namespace A313855.P5953720748183631955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313589 n

end

end A313855.P5953720748183631955

namespace A313855

/-- `A005843(A008706(n))-A313589(n)` -/
def P5953720748183631955.Spec : Prop :=
  ∀ n, P5953720748183631955.a n = A313855 n

end A313855

/-!
# A313856: Coordination sequence Gal.6.482.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313856, there is no canonical definition to state claims against.
-/

/-! ## A313856.P14013465116108746076

`A250120(A062399(n))+A072739(n)`
-/

namespace A313856.P14013465116108746076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A062399 n).toNat + A072739 n

end

end A313856.P14013465116108746076

/-! ## A313856.P529706508436003891

`A310509(n)+A134667(A056654(n+1))`
-/

namespace A313856.P529706508436003891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310509 n + A134667 (A056654 (n + 1)).toNat

end

end A313856.P529706508436003891

/-! ## A313856.P13711979741394887515

`A072739(A062399(n))+A047309(2*n+1)+A004273(n)`
-/

namespace A313856.P13711979741394887515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A062399 n).toNat + (A047309 (2 * n + 1) + A004273 n)

end

end A313856.P13711979741394887515

/-! ## A313856.P6746903819017926836

`A072739(A062399(n))+A047363(2*n+1)+A004277(n)`
-/

namespace A313856.P6746903819017926836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A062399 n).toNat + (A047363 (2 * n + 1) + A004277 n)

end

end A313856.P6746903819017926836

/-! ## A313856.P5253873131064673185

`A072739(A062399(n))+A047363(2*n+1)+A028310(2*n)`
-/

namespace A313856.P5253873131064673185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072739 (A062399 n).toNat + (A047363 (2 * n + 1) + A028310 (2 * n))

end

end A313856.P5253873131064673185

/-!
# A313857: Coordination sequence Gal.6.212.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313857, there is no canonical definition to state claims against.
-/

/-! ## A313857.P5345359170017008646

`A313858(n)-A055641(A000079(n))`
-/

namespace A313857.P5345359170017008646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313858 n - A055641 (A000079 n).toNat

end

end A313857.P5345359170017008646

/-! ## A313857.P3886212972665107486

`A313858(n)-A055641(A267266(n+1))`
-/

namespace A313857.P3886212972665107486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313858 n - A055641 (A267266 (n + 1)).toNat

end

end A313857.P3886212972665107486

/-! ## A313857.P10621530308637658360

`A313858(n)-A185284(A047412(2*n+1))`
-/

namespace A313857.P10621530308637658360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313858 n - A185284 (A047412 (2 * n + 1)).toNat

end

end A313857.P10621530308637658360

/-! ## A313857.P9230689836951327743

`A313858(n)-A185284(A027340(n))`
-/

namespace A313857.P9230689836951327743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313858 n - A185284 (A027340 n).toNat

end

end A313857.P9230689836951327743

/-! ## A313857.P10933247165786030745

`A313858(n)-A185284(A104503(n))`
-/

namespace A313857.P10933247165786030745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313858 n - A185284 (A104503 n).toNat

end

end A313857.P10933247165786030745

/-!
# A313858: Coordination sequence Gal.6.211.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313858, there is no canonical definition to state claims against.
-/

/-! ## A313858.P16447578234105580210

`A313857(n)+A055641(A000079(n))`
-/

namespace A313858.P16447578234105580210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313857 n + A055641 (A000079 n).toNat

end

end A313858.P16447578234105580210

/-! ## A313858.P9603022408684315222

`A313857(n)+A055641(A267266(n+1))`
-/

namespace A313858.P9603022408684315222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313857 n + A055641 (A267266 (n + 1)).toNat

end

end A313858.P9603022408684315222

/-! ## A313858.P18420207898556951137

`or(A185284(p?[2*n+1]), A313857(n))`
-/

namespace A313858.P18420207898556951137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) (A313857 n)

end

end A313858.P18420207898556951137

/-! ## A313858.P16990090892202762704

`A313857(n)+A185284(A027340(n))`
-/

namespace A313858.P16990090892202762704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313857 n + A185284 (A027340 n).toNat

end

end A313858.P16990090892202762704

/-! ## A313858.P17301563149076143294

`A313857(n)+A185284(A104503(n))`
-/

namespace A313858.P17301563149076143294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313857 n + A185284 (A104503 n).toNat

end

end A313858.P17301563149076143294

/-!
# A313859: Coordination sequence Gal.6.340.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313859, the canonical program `A313859.P12307385577830529968` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313859 has offset 0).

The definition of A313859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313859.P10273103460618375632

`A313023(n)+A004396(n)`
-/

namespace A313859.P10273103460618375632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + A004396 n

end

end A313859.P10273103460618375632

namespace A313859

/-- `A313023(n)+A004396(n)` -/
def P10273103460618375632.Spec : Prop :=
  ∀ n, P10273103460618375632.a n = A313859 n

end A313859

/-! ## A313859.P12307385577830529968

`A314884(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313859

/-- `A314884(n)+∑[A021913(n)]` -/
def P12307385577830529968.Spec : Prop :=
  ∀ n, P12307385577830529968.a n = A313859 n

theorem P12307385577830529968.correct : P12307385577830529968.Spec := by
  intro n
  simp only [A313859]

end A313859

/-! ## A313859.P16894840074693883016

`A314884(n)+Δ[A011848(n)]`
-/

namespace A313859.P16894840074693883016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314884 n + (f1 (n + 1) - f1 n)

end

end A313859.P16894840074693883016

namespace A313859

/-- `A314884(n)+Δ[A011848(n)]` -/
def P16894840074693883016.Spec : Prop :=
  ∀ n, P16894840074693883016.a n = A313859 n

end A313859

/-! ## A313859.P4453136731912796962

`A313023(n)+A002264(2*n+1)`
-/

namespace A313859.P4453136731912796962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313023 n + A002264 (2 * n + 1)

end

end A313859.P4453136731912796962

namespace A313859

/-- `A313023(n)+A002264(2*n+1)` -/
def P4453136731912796962.Spec : Prop :=
  ∀ n, P4453136731912796962.a n = A313859 n

end A313859

/-! ## A313859.P10893665530515938799

`A313228(n)+A004525(A004396(n))`
-/

namespace A313859.P10893665530515938799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313228 n + A004525 (A004396 n).toNat

end

end A313859.P10893665530515938799

namespace A313859

/-- `A313228(n)+A004525(A004396(n))` -/
def P10893665530515938799.Spec : Prop :=
  ∀ n, P10893665530515938799.a n = A313859 n

end A313859

/-! ## A313859.P6306062799754858457

`abs(A008592(n)-A313583(n))`
-/

namespace A313859.P6306062799754858457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313583 n|

end

end A313859.P6306062799754858457

namespace A313859

/-- `abs(A008592(n)-A313583(n))` -/
def P6306062799754858457.Spec : Prop :=
  ∀ n, P6306062799754858457.a n = A313859 n

end A313859

/-! ## A313859.P4263619013146043086

`floor(A010015(n)/A313583(n))`
-/

namespace A313859.P4263619013146043086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313583 n : ℚ)⌋

end

end A313859.P4263619013146043086

namespace A313859

/-- `floor(A010015(n)/A313583(n))` -/
def P4263619013146043086.Spec : Prop :=
  ∀ n, P4263619013146043086.a n = A313859 n

end A313859

/-! ## A313859.P4102984265508366789

`A008458(n)+A008574(n)-A313583(n)`
-/

namespace A313859.P4102984265508366789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313583 n)

end

end A313859.P4102984265508366789

namespace A313859

/-- `A008458(n)+A008574(n)-A313583(n)` -/
def P4102984265508366789.Spec : Prop :=
  ∀ n, P4102984265508366789.a n = A313859 n

end A313859

/-! ## A313859.P9942160012844335079

`∑{d}[A008592(n)-A313583(n), A000010(#)]`
-/

namespace A313859.P9942160012844335079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313859.P9942160012844335079

namespace A313859

/-- `∑{d}[A008592(n)-A313583(n), A000010(#)]` -/
def P9942160012844335079.Spec : Prop :=
  ∀ n, P9942160012844335079.a n = A313859 n

end A313859

/-! ## A313859.P16243262182824758740

`A314094(n)-∑[A131736(n)]`
-/

namespace A313859.P16243262182824758740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314094 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313859.P16243262182824758740

namespace A313859

/-- `A314094(n)-∑[A131736(n)]` -/
def P16243262182824758740.Spec : Prop :=
  ∀ n, P16243262182824758740.a n = A313859 n

end A313859

/-! ## A313859.P7200841954613407017

`A314208(n)-∑[A022003(n)]`
-/

namespace A313859.P7200841954613407017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313859.P7200841954613407017

namespace A313859

/-- `A314208(n)-∑[A022003(n)]` -/
def P7200841954613407017.Spec : Prop :=
  ∀ n, P7200841954613407017.a n = A313859 n

end A313859

/-! ## A313859.P132411660648025173

`A314208(n)-A008615(2*n+1)`
-/

namespace A313859.P132411660648025173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314208 n - A008615 (2 * n + 1)

end

end A313859.P132411660648025173

namespace A313859

/-- `A314208(n)-A008615(2*n+1)` -/
def P132411660648025173.Spec : Prop :=
  ∀ n, P132411660648025173.a n = A313859 n

end A313859

/-! ## A313859.P3539248260167200925

`A008576(n)+A314208(n)-A008486(n)`
-/

namespace A313859.P3539248260167200925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314208 n - A008486 n)

end

end A313859.P3539248260167200925

namespace A313859

/-- `A008576(n)+A314208(n)-A008486(n)` -/
def P3539248260167200925.Spec : Prop :=
  ∀ n, P3539248260167200925.a n = A313859 n

end A313859

/-! ## A313859.P7869402571603908674

`A004396(n)+A004396(A314108(n))+n`
-/

namespace A313859.P7869402571603908674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A314108 n).toNat + (n : ℤ))

end

end A313859.P7869402571603908674

namespace A313859

/-- `A004396(n)+A004396(A314108(n))+n` -/
def P7869402571603908674.Spec : Prop :=
  ∀ n, P7869402571603908674.a n = A313859 n

end A313859

/-! ## A313859.P2162614992401736085

`A074067(A313583(n))`
-/

namespace A313859.P2162614992401736085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313583 n).toNat

end

end A313859.P2162614992401736085

namespace A313859

/-- `A074067(A313583(n))` -/
def P2162614992401736085.Spec : Prop :=
  ∀ n, P2162614992401736085.a n = A313859 n

end A313859

/-!
# A313860: Coordination sequence Gal.5.132.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313860, the canonical program `A313860.P2835934445111425257` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313860 has offset 0).

The definition of A313860 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313860.P2835934445111425257

`A313026(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313860

/-- `A313026(n)+A004396(n)` -/
def P2835934445111425257.Spec : Prop :=
  ∀ n, P2835934445111425257.a n = A313860 n

theorem P2835934445111425257.correct : P2835934445111425257.Spec := by
  intro n
  simp only [A313860]

end A313860

/-! ## A313860.P8320663887870683918

`abs(A008592(n)-A313580(n))`
-/

namespace A313860.P8320663887870683918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313580 n|

end

end A313860.P8320663887870683918

namespace A313860

/-- `abs(A008592(n)-A313580(n))` -/
def P8320663887870683918.Spec : Prop :=
  ∀ n, P8320663887870683918.a n = A313860 n

end A313860

/-! ## A313860.P2340323987734465085

`A313721(n)+Δ[A011862(n)]`
-/

namespace A313860.P2340323987734465085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + (f1 (n + 1) - f1 n)

end

end A313860.P2340323987734465085

namespace A313860

/-- `A313721(n)+Δ[A011862(n)]` -/
def P2340323987734465085.Spec : Prop :=
  ∀ n, P2340323987734465085.a n = A313860 n

end A313860

/-! ## A313860.P173653494494650562

`A313026(n)+A002264(2*n+1)`
-/

namespace A313860.P173653494494650562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313026 n + A002264 (2 * n + 1)

end

end A313860.P173653494494650562

namespace A313860

/-- `A313026(n)+A002264(2*n+1)` -/
def P173653494494650562.Spec : Prop :=
  ∀ n, P173653494494650562.a n = A313860 n

end A313860

/-! ## A313860.P6165147082598982962

`A313201(n)+A004396(A004396(n))`
-/

namespace A313860.P6165147082598982962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313201 n + A004396 (A004396 n).toNat

end

end A313860.P6165147082598982962

namespace A313860

/-- `A313201(n)+A004396(A004396(n))` -/
def P6165147082598982962.Spec : Prop :=
  ∀ n, P6165147082598982962.a n = A313860 n

end A313860

/-! ## A313860.P6628219939332451472

`A312893(n)+A004396(2*A004396(n))`
-/

namespace A313860.P6628219939332451472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312893 n + A004396 (2 * A004396 n).toNat

end

end A313860.P6628219939332451472

namespace A313860

/-- `A312893(n)+A004396(2*A004396(n))` -/
def P6628219939332451472.Spec : Prop :=
  ∀ n, P6628219939332451472.a n = A313860 n

end A313860

/-! ## A313860.P13881199741427690712

`A315050(n)+A004396(n-A004396(n))`
-/

namespace A313860.P13881199741427690712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315050 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313860.P13881199741427690712

namespace A313860

/-- `A315050(n)+A004396(n-A004396(n))` -/
def P13881199741427690712.Spec : Prop :=
  ∀ n, P13881199741427690712.a n = A313860 n

end A313860

/-! ## A313860.P13407974330105262565

`A008458(n)+A008574(n)-A313580(n)`
-/

namespace A313860.P13407974330105262565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313580 n)

end

end A313860.P13407974330105262565

namespace A313860

/-- `A008458(n)+A008574(n)-A313580(n)` -/
def P13407974330105262565.Spec : Prop :=
  ∀ n, P13407974330105262565.a n = A313860 n

end A313860

/-! ## A313860.P4733943900854720441

`A004396(n)+A313721(n)-A004396(A004396(n))`
-/

namespace A313860.P4733943900854720441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313721 n - A004396 (A004396 n).toNat)

end

end A313860.P4733943900854720441

namespace A313860

/-- `A004396(n)+A313721(n)-A004396(A004396(n))` -/
def P4733943900854720441.Spec : Prop :=
  ∀ n, P4733943900854720441.a n = A313860 n

end A313860

/-! ## A313860.P5661747625459719259

`A314205(n)-A004396(n-A004396(n))`
-/

namespace A313860.P5661747625459719259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314205 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313860.P5661747625459719259

namespace A313860

/-- `A314205(n)-A004396(n-A004396(n))` -/
def P5661747625459719259.Spec : Prop :=
  ∀ n, P5661747625459719259.a n = A313860 n

end A313860

/-! ## A313860.P2644505826973198129

`A315535(n)-A004396(A004396(n))`
-/

namespace A313860.P2644505826973198129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - A004396 (A004396 n).toNat

end

end A313860.P2644505826973198129

namespace A313860

/-- `A315535(n)-A004396(A004396(n))` -/
def P2644505826973198129.Spec : Prop :=
  ∀ n, P2644505826973198129.a n = A313860 n

end A313860

/-! ## A313860.P18159514441430975487

`A314163(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313860.P18159514441430975487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314163 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313860.P18159514441430975487

namespace A313860

/-- `A314163(2*n)+A008458(n+1)-(12*n+6)` -/
def P18159514441430975487.Spec : Prop :=
  ∀ n, P18159514441430975487.a n = A313860 n

end A313860

/-!
# A313861: Coordination sequence Gal.6.486.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313861, there is no canonical definition to state claims against.
-/

/-! ## A313861.P17510768505275562125

`A315026(n)+A235644(A002061(n))`
-/

namespace A313861.P17510768505275562125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + A235644 (A002061 n).toNat

end

end A313861.P17510768505275562125

/-! ## A313861.P4414505004611628257

`A311766(n)+comp[A001896(3*n+2)]`
-/

namespace A313861.P4414505004611628257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001896 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311766 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313861.P4414505004611628257

/-! ## A313861.P37124089839829026

`A311767(n)+comp[A001896(3*n+2)]`
-/

namespace A313861.P37124089839829026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001896 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311767 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313861.P37124089839829026

/-! ## A313861.P9174749379211859329

`A311539(n)+A001222(A224415(n))`
-/

namespace A313861.P9174749379211859329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311539 n + A001222 (A224415 n).toNat

end

end A313861.P9174749379211859329

/-! ## A313861.P8064551128203478666

`A307205(n)+A287447(A091352(n))`
-/

namespace A313861.P8064551128203478666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307205 n + A287447 (A091352 n).toNat

end

end A313861.P8064551128203478666

/-!
# A313862: Coordination sequence Gal.6.354.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313862, the canonical program `A313862.P12592315473871548845` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313862 has offset 0).

The definition of A313862 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313862.P12592315473871548845

`ceil(abs(1-8*n)/3)+∑[and(2, n)!]-1+n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A313862

/-- `ceil(abs(1-8*n)/3)+∑[and(2, n)!]-1+n` -/
def P12592315473871548845.Spec : Prop :=
  ∀ n, P12592315473871548845.a n = A313862 n

theorem P12592315473871548845.correct : P12592315473871548845.Spec := by
  intro n
  simp only [A313862]

end A313862

/-! ## A313862.P1107355333266595905

`A301672(n)+n`
-/

namespace A313862.P1107355333266595905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301672 n + (n : ℤ)

end

end A313862.P1107355333266595905

namespace A313862

/-- `A301672(n)+n` -/
def P1107355333266595905.Spec : Prop :=
  ∀ n, P1107355333266595905.a n = A313862 n

end A313862

/-! ## A313862.P2095073788797809224

`A301298(n)+∑[char[or(2, n)]]`
-/

namespace A313862.P2095073788797809224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A313862.P2095073788797809224

namespace A313862

/-- `A301298(n)+∑[char[or(2, n)]]` -/
def P2095073788797809224.Spec : Prop :=
  ∀ n, P2095073788797809224.a n = A313862 n

end A313862

/-! ## A313862.P124717144546533384

`A301293(n)+A004396(n)`
-/

namespace A313862.P124717144546533384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A004396 n

end

end A313862.P124717144546533384

namespace A313862

/-- `A301293(n)+A004396(n)` -/
def P124717144546533384.Spec : Prop :=
  ∀ n, P124717144546533384.a n = A313862 n

end A313862

/-! ## A313862.P5066299618465865140

`A313193(n)+A004525(n)`
-/

namespace A313862.P5066299618465865140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313193 n + A004525 n

end

end A313862.P5066299618465865140

namespace A313862

/-- `A313193(n)+A004525(n)` -/
def P5066299618465865140.Spec : Prop :=
  ∀ n, P5066299618465865140.a n = A313862 n

end A313862

/-! ## A313862.P17291465901157711564

`A310511(n)+A134667(n)`
-/

namespace A313862.P17291465901157711564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A134667 n

end

end A313862.P17291465901157711564

namespace A313862

/-- `A310511(n)+A134667(n)` -/
def P17291465901157711564.Spec : Prop :=
  ∀ n, P17291465901157711564.a n = A313862 n

end A313862

/-! ## A313862.P17000815744172601478

`A301298(n)+A004524(n+1)`
-/

namespace A313862.P17000815744172601478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + A004524 (n + 1)

end

end A313862.P17000815744172601478

namespace A313862

/-- `A301298(n)+A004524(n+1)` -/
def P17000815744172601478.Spec : Prop :=
  ∀ n, P17000815744172601478.a n = A313862 n

end A313862

/-! ## A313862.P8167113138032428803

`2*A008706(n)-A313575(n)`
-/

namespace A313862.P8167113138032428803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313575 n

end

end A313862.P8167113138032428803

namespace A313862

/-- `2*A008706(n)-A313575(n)` -/
def P8167113138032428803.Spec : Prop :=
  ∀ n, P8167113138032428803.a n = A313862 n

end A313862

/-! ## A313862.P16618062407426094456

`A301298(n)+n-A004525(n)`
-/

namespace A313862.P16618062407426094456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ((n : ℤ) - A004525 n)

end

end A313862.P16618062407426094456

namespace A313862

/-- `A301298(n)+n-A004525(n)` -/
def P16618062407426094456.Spec : Prop :=
  ∀ n, P16618062407426094456.a n = A313862 n

end A313862

/-! ## A313862.P8782033634054286102

`A005843(n)-(n-A301672(n))`
-/

namespace A313862.P8782033634054286102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A301672 n)

end

end A313862.P8782033634054286102

namespace A313862

/-- `A005843(n)-(n-A301672(n))` -/
def P8782033634054286102.Spec : Prop :=
  ∀ n, P8782033634054286102.a n = A313862 n

end A313862

/-! ## A313862.P16184017855857765887

`A301293(n)+n-∑[A022003(n)]`
-/

namespace A313862.P16184017855857765887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313862.P16184017855857765887

namespace A313862

/-- `A301293(n)+n-∑[A022003(n)]` -/
def P16184017855857765887.Spec : Prop :=
  ∀ n, P16184017855857765887.a n = A313862 n

end A313862

/-! ## A313862.P6069183839839147557

`A301298(n)+n-Δ[A054925(n)]`
-/

namespace A313862.P6069183839839147557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301298 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313862.P6069183839839147557

namespace A313862

/-- `A301298(n)+n-Δ[A054925(n)]` -/
def P6069183839839147557.Spec : Prop :=
  ∀ n, P6069183839839147557.a n = A313862 n

end A313862

/-! ## A313862.P1047415704265299196

`A301293(n)+A002264(2*n+1)`
-/

namespace A313862.P1047415704265299196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A002264 (2 * n + 1)

end

end A313862.P1047415704265299196

namespace A313862

/-- `A301293(n)+A002264(2*n+1)` -/
def P1047415704265299196.Spec : Prop :=
  ∀ n, P1047415704265299196.a n = A313862 n

end A313862

/-! ## A313862.P3319811889676994469

`A298786(2*n)-A047229(n+1)`
-/

namespace A313862.P3319811889676994469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 (2 * n) - A047229 (n + 1)

end

end A313862.P3319811889676994469

namespace A313862

/-- `A298786(2*n)-A047229(n+1)` -/
def P3319811889676994469.Spec : Prop :=
  ∀ n, P3319811889676994469.a n = A313862 n

end A313862

/-! ## A313862.P7724211961697262165

`A047273(n+1)+A008576(n)+n`
-/

namespace A313862.P7724211961697262165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (A008576 n + (n : ℤ))

end

end A313862.P7724211961697262165

namespace A313862

/-- `A047273(n+1)+A008576(n)+n` -/
def P7724211961697262165.Spec : Prop :=
  ∀ n, P7724211961697262165.a n = A313862 n

end A313862

/-! ## A313862.P18053128741215321159

`A047622(n+1)+A301729(n)+n`
-/

namespace A313862.P18053128741215321159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047622 (n + 1) + (A301729 n + (n : ℤ))

end

end A313862.P18053128741215321159

namespace A313862

/-- `A047622(n+1)+A301729(n)+n` -/
def P18053128741215321159.Spec : Prop :=
  ∀ n, P18053128741215321159.a n = A313862 n

end A313862

/-! ## A313862.P549358822670608017

`3*n+A008576(n)-A004525(n)`
-/

namespace A313862.P549358822670608017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (A008576 n - A004525 n)

end

end A313862.P549358822670608017

namespace A313862

/-- `3*n+A008576(n)-A004525(n)` -/
def P549358822670608017.Spec : Prop :=
  ∀ n, P549358822670608017.a n = A313862 n

end A313862

/-! ## A313862.P10275173697569628662

`A008458(n)-(A004525(n)+round(n/3))`
-/

namespace A313862.P10275173697569628662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A004525 n + SequenceMachineLib.roundAway ((n : ℚ) / 3))

end

end A313862.P10275173697569628662

namespace A313862

/-- `A008458(n)-(A004525(n)+round(n/3))` -/
def P10275173697569628662.Spec : Prop :=
  ∀ n, P10275173697569628662.a n = A313862 n

end A313862

/-! ## A313862.P12689130614363248241

`A310511(n)+A128834(A128834(n)+n)`
-/

namespace A313862.P12689130614363248241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310511 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A313862.P12689130614363248241

namespace A313862

/-- `A310511(n)+A128834(A128834(n)+n)` -/
def P12689130614363248241.Spec : Prop :=
  ∀ n, P12689130614363248241.a n = A313862 n

end A313862

/-!
# A313863: Coordination sequence Gal.5.209.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313863, there is no canonical definition to state claims against.
-/

/-! ## A313863.P6116299992221227520

`A346127(A312027(n))`
-/

namespace A313863.P6116299992221227520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A312027 n).toNat

end

end A313863.P6116299992221227520

/-! ## A313863.P14404798880372983879

`A346127(A312028(n))`
-/

namespace A313863.P14404798880372983879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A312028 n).toNat

end

end A313863.P14404798880372983879

/-! ## A313863.P14258623344227028820

`A167500(n+1)+A055570(3*n)`
-/

namespace A313863.P14258623344227028820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167500 (n + 1) + A055570 (3 * n)

end

end A313863.P14258623344227028820

/-! ## A313863.P13331774233318150370

`or(A189084(A076904(n)), A313861(n))`
-/

namespace A313863.P13331774233318150370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A189084 (A076904 n).toNat) (A313861 n)

end

end A313863.P13331774233318150370

/-! ## A313863.P10545100252751362877

`or(A264620(A010049(n)), A313831(n))`
-/

namespace A313863.P10545100252751362877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A264620 (A010049 n).toNat) (A313831 n)

end

end A313863.P10545100252751362877

/-!
# A313864: Coordination sequence Gal.5.332.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313864, there is no canonical definition to state claims against.
-/

/-! ## A313864.P10180361237817158737

`A250120(n)+A124010(A152806(n))`
-/

namespace A313864.P10180361237817158737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A124010 (A152806 n).toNat

end

end A313864.P10180361237817158737

/-! ## A313864.P15630105231460999279

`A315054(n)+A022307(A032555(n+1))`
-/

namespace A313864.P15630105231460999279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315054 n + A022307 (A032555 (n + 1)).toNat

end

end A313864.P15630105231460999279

/-! ## A313864.P6427276132217990707

`A250120(n)+A001222(A145874(n+1))`
-/

namespace A313864.P6427276132217990707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A145874 (n + 1)).toNat

end

end A313864.P6427276132217990707

/-! ## A313864.P15803113048780139068

`A315054(n)+A175402(A274566(n+1))`
-/

namespace A313864.P15803113048780139068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315054 n + A175402 (A274566 (n + 1)).toNat

end

end A313864.P15803113048780139068

/-! ## A313864.P16243057090334408490

`A053735(A121426(3*n))+A047412(3*n+1)`
-/

namespace A313864.P16243057090334408490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A121426 (3 * n)).toNat + A047412 (3 * n + 1)

end

end A313864.P16243057090334408490

/-!
# A313865: Coordination sequence Gal.6.598.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313865, there is no canonical definition to state claims against.
-/

/-! ## A313865.P12891915604381618338

`A313866(n)+A178798(A000032(n))`
-/

namespace A313865.P12891915604381618338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n + A178798 (A000032 n).toNat

end

end A313865.P12891915604381618338

/-! ## A313865.P6652624546595614539

`A313866(n)-A067898(A058094(n))`
-/

namespace A313865.P6652624546595614539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n - A067898 (A058094 n).toNat

end

end A313865.P6652624546595614539

/-! ## A313865.P13159425620948622475

`A313866(n)-A124761(A002378(n))`
-/

namespace A313865.P13159425620948622475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n - A124761 (A002378 n).toNat

end

end A313865.P13159425620948622475

/-! ## A313865.P1221422203428918327

`A313866(n)-A185284(A070175(n))`
-/

namespace A313865.P1221422203428918327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n - A185284 (A070175 n).toNat

end

end A313865.P1221422203428918327

/-! ## A313865.P16084005071986042885

`A313784(n)-A014017(A295404(n))`
-/

namespace A313865.P16084005071986042885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313784 n - A014017 (A295404 n).toNat

end

end A313865.P16084005071986042885

/-!
# A313866: Coordination sequence Gal.6.578.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313866, there is no canonical definition to state claims against.
-/

/-! ## A313866.P2817536620989009293

`A313867(n)+A178798(A000124(n))`
-/

namespace A313866.P2817536620989009293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313867 n + A178798 (A000124 n).toNat

end

end A313866.P2817536620989009293

/-! ## A313866.P10153054577955378438

`A313867(n)-A316864(A212568(n))`
-/

namespace A313866.P10153054577955378438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313867 n - A316864 (A212568 n).toNat

end

end A313866.P10153054577955378438

/-! ## A313866.P6254351077099305748

`A250120(n)+A086435(A038610(n+1))`
-/

namespace A313866.P6254351077099305748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A086435 (A038610 (n + 1)).toNat

end

end A313866.P6254351077099305748

/-! ## A313866.P17706198276474434413

`A313867(n)-A001222(A309863(n))`
-/

namespace A313866.P17706198276474434413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313867 n - A001222 (A309863 n).toNat

end

end A313866.P17706198276474434413

/-! ## A313866.P6682537829684408503

`A178798(n)+A313867(n)-A049600(A309863(n))`
-/

namespace A313866.P6682537829684408503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n + (A313867 n - A049600 (A309863 n).toNat)

end

end A313866.P6682537829684408503

/-!
# A313867: Coordination sequence Gal.6.577.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313867, there is no canonical definition to state claims against.
-/

/-! ## A313867.P1544272435748176970

`A313786(n)-A014961(A014965(n+1))`
-/

namespace A313867.P1544272435748176970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313786 n - A014961 (A014965 (n + 1)).toNat

end

end A313867.P1544272435748176970

/-! ## A313867.P16755384088842479934

`A316864(A212568(n))+A313866(n)`
-/

namespace A313867.P16755384088842479934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A212568 n).toNat + A313866 n

end

end A313867.P16755384088842479934

/-! ## A313867.P3553681802389244297

`A313866(n)-A178798(A000124(n))`
-/

namespace A313867.P3553681802389244297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n - A178798 (A000124 n).toNat

end

end A313867.P3553681802389244297

/-! ## A313867.P12609913892427938683

`A313866(n)+A001222(A309863(n))`
-/

namespace A313867.P12609913892427938683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n + A001222 (A309863 n).toNat

end

end A313867.P12609913892427938683

/-! ## A313867.P17530982563305381089

`A313866(n)+A067898(A058094(n))`
-/

namespace A313867.P17530982563305381089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n + A067898 (A058094 n).toNat

end

end A313867.P17530982563305381089

/-!
# A313868: Coordination sequence Gal.4.150.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313868, there is no canonical definition to state claims against.
-/

/-! ## A313868.P8485416513831927071

`A313867(n)+A178602(A313888(n))`
-/

namespace A313868.P8485416513831927071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313867 n + A178602 (A313888 n).toNat

end

end A313868.P8485416513831927071

/-! ## A313868.P2677720918324765577

`A313889(n)-A178602(A313881(n))`
-/

namespace A313868.P2677720918324765577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313889 n - A178602 (A313881 n).toNat

end

end A313868.P2677720918324765577

/-! ## A313868.P17617265163173709069

`A313909(n)-A191261(A346771(n))`
-/

namespace A313868.P17617265163173709069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313909 n - A191261 (A346771 n).toNat

end

end A313868.P17617265163173709069

/-! ## A313868.P18415518119594527361

`or(A191261(A346771(n)), A313867(n))`
-/

namespace A313868.P18415518119594527361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191261 (A346771 n).toNat) (A313867 n)

end

end A313868.P18415518119594527361

/-! ## A313868.P9509485999041012060

`or(A313866(n), A343609(A275695(n)))`
-/

namespace A313868.P9509485999041012060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A313866 n) (A343609 (A275695 n).toNat)

end

end A313868.P9509485999041012060

/-!
# A313869: Coordination sequence Gal.6.206.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313869, the canonical program `A313869.P2714584555058698184` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313869 has offset 0).

The definition of A313869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2342 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313869.P2714584555058698184

`abs(10*n-A313572(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313869

/-- `abs(10*n-A313572(n))` -/
def P2714584555058698184.Spec : Prop :=
  ∀ n, P2714584555058698184.a n = A313869 n

theorem P2714584555058698184.correct : P2714584555058698184.Spec := by
  intro n
  simp only [A313869]

end A313869

/-! ## A313869.P4162621029457928392

`A312935(2*n)-4*n`
-/

namespace A313869.P4162621029457928392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312935 (2 * n) - (4 * n : ℤ)

end

end A313869.P4162621029457928392

namespace A313869

/-- `A312935(2*n)-4*n` -/
def P4162621029457928392.Spec : Prop :=
  ∀ n, P4162621029457928392.a n = A313869 n

end A313869

/-! ## A313869.P10019962506987817637

`A313768(n)+Δ[A011864(n)]`
-/

namespace A313869.P10019962506987817637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313768 n + (f1 (n + 1) - f1 n)

end

end A313869.P10019962506987817637

namespace A313869

/-- `A313768(n)+Δ[A011864(n)]` -/
def P10019962506987817637.Spec : Prop :=
  ∀ n, P10019962506987817637.a n = A313869 n

end A313869

/-! ## A313869.P1923441670412919130

`2*A008706(n)-A313572(n)`
-/

namespace A313869.P1923441670412919130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313572 n

end

end A313869.P1923441670412919130

namespace A313869

/-- `2*A008706(n)-A313572(n)` -/
def P1923441670412919130.Spec : Prop :=
  ∀ n, P1923441670412919130.a n = A313869 n

end A313869

/-! ## A313869.P217886970381121791

`A000038(n)+10*n-A313572(n)`
-/

namespace A313869.P217886970381121791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((10 * n : ℤ) - A313572 n)

end

end A313869.P217886970381121791

namespace A313869

/-- `A000038(n)+10*n-A313572(n)` -/
def P217886970381121791.Spec : Prop :=
  ∀ n, P217886970381121791.a n = A313869 n

end A313869

/-! ## A313869.P6195277529631478858

`A008458(n)+A008574(n)-A313572(n)`
-/

namespace A313869.P6195277529631478858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313572 n)

end

end A313869.P6195277529631478858

namespace A313869

/-- `A008458(n)+A008574(n)-A313572(n)` -/
def P6195277529631478858.Spec : Prop :=
  ∀ n, P6195277529631478858.a n = A313869 n

end A313869

/-! ## A313869.P13361210665988392267

`A313212(n)+A004525(A314234(n)-A313212(n))`
-/

namespace A313869.P13361210665988392267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313212 n + A004525 (A314234 n - A313212 n).toNat

end

end A313869.P13361210665988392267

namespace A313869

/-- `A313212(n)+A004525(A314234(n)-A313212(n))` -/
def P13361210665988392267.Spec : Prop :=
  ∀ n, P13361210665988392267.a n = A313869 n

end A313869

/-! ## A313869.P13150074402538266469

`(A315302(n)+A310526(n))/2`
-/

namespace A313869.P13150074402538266469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315302 n + A310526 n : ℚ) / 2

end

end A313869.P13150074402538266469

namespace A313869

/-- `(A315302(n)+A310526(n))/2` -/
def P13150074402538266469.Spec : Prop :=
  ∀ n, P13150074402538266469.a n = (A313869 n : ℚ)

end A313869

/-! ## A313869.P9479528372813793499

`2*A180004(A313560(n))-A313560(n)`
-/

namespace A313869.P9479528372813793499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180004 (A313560 n).toNat - A313560 n

end

end A313869.P9479528372813793499

namespace A313869

/-- `2*A180004(A313560(n))-A313560(n)` -/
def P9479528372813793499.Spec : Prop :=
  ∀ n, P9479528372813793499.a n = A313869 n

end A313869

/-! ## A313869.P17117373388218037580

`A005843(A008706(n))-A313572(n)`
-/

namespace A313869.P17117373388218037580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313572 n

end

end A313869.P17117373388218037580

namespace A313869

/-- `A005843(A008706(n))-A313572(n)` -/
def P17117373388218037580.Spec : Prop :=
  ∀ n, P17117373388218037580.a n = A313869 n

end A313869

/-! ## A313869.P5996478426702028728

`A065502(A008458(n))-A313572(n)`
-/

namespace A313869.P5996478426702028728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313572 n

end

end A313869.P5996478426702028728

namespace A313869

/-- `A065502(A008458(n))-A313572(n)` -/
def P5996478426702028728.Spec : Prop :=
  ∀ n, P5996478426702028728.a n = A313869 n

end A313869

/-! ## A313869.P2306085779924212396

`2*A008574(2*n)-A315521(2*n)`
-/

namespace A313869.P2306085779924212396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315521 (2 * n)

end

end A313869.P2306085779924212396

namespace A313869

/-- `2*A008574(2*n)-A315521(2*n)` -/
def P2306085779924212396.Spec : Prop :=
  ∀ n, P2306085779924212396.a n = A313869 n

end A313869

/-! ## A313869.P12317238077602696399

`A004525(A315302(n)+A310526(n))`
-/

namespace A313869.P12317238077602696399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315302 n + A310526 n).toNat

end

end A313869.P12317238077602696399

namespace A313869

/-- `A004525(A315302(n)+A310526(n))` -/
def P12317238077602696399.Spec : Prop :=
  ∀ n, P12317238077602696399.a n = A313869 n

end A313869

/-! ## A313869.P1474436079207158201

`A004525(A314234(n)+A313212(n))`
-/

namespace A313869.P1474436079207158201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314234 n + A313212 n).toNat

end

end A313869.P1474436079207158201

namespace A313869

/-- `A004525(A314234(n)+A313212(n))` -/
def P1474436079207158201.Spec : Prop :=
  ∀ n, P1474436079207158201.a n = A313869 n

end A313869

/-!
# A313870: Coordination sequence Gal.6.336.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313870, there is no canonical definition to state claims against.
-/

/-! ## A313870.P1220852608493850596

`A313287(n)+A046978(n)`
-/

namespace A313870.P1220852608493850596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313287 n + A046978 n

end

end A313870.P1220852608493850596

/-! ## A313870.P588621514956091956

`A330025(A001068(n))+A313287(n)`
-/

namespace A313870.P588621514956091956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A001068 n).toNat + A313287 n

end

end A313870.P588621514956091956

/-! ## A313870.P11171712169113997582

`A313287(n)+A313871(n)-A313288(n)`
-/

namespace A313870.P11171712169113997582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313287 n + (A313871 n - A313288 n)

end

end A313870.P11171712169113997582

/-! ## A313870.P17331588599837169883

`A313287(n)-A046978(n)*A057428(n)`
-/

namespace A313870.P17331588599837169883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313287 n - A046978 n * A057428 n

end

end A313870.P17331588599837169883

/-! ## A313870.P6482687470642853055

`A313871(n)-A283316(A001333(n))`
-/

namespace A313870.P6482687470642853055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313871 n - A283316 (A001333 n).toNat

end

end A313870.P6482687470642853055

/-!
# A313871: Coordination sequence Gal.6.335.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313871, there is no canonical definition to state claims against.
-/

/-! ## A313871.P10528368998544030789

`A313288(n)+A046978(n)`
-/

namespace A313871.P10528368998544030789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313288 n + A046978 n

end

end A313871.P10528368998544030789

/-! ## A313871.P14409670921882949592

`A330025(A001068(n))+A313288(n)`
-/

namespace A313871.P14409670921882949592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A001068 n).toNat + A313288 n

end

end A313871.P14409670921882949592

/-! ## A313871.P13550697445280787949

`A313288(n)+A313870(n)-A313287(n)`
-/

namespace A313871.P13550697445280787949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313288 n + (A313870 n - A313287 n)

end

end A313871.P13550697445280787949

/-! ## A313871.P12980470574672223212

`A313870(n)+A283316(A001333(n))`
-/

namespace A313871.P12980470574672223212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313870 n + A283316 (A001333 n).toNat

end

end A313871.P12980470574672223212

/-! ## A313871.P2878406677948236944

`A283316(A001333(n))+A313287(n)+A046978(n)`
-/

namespace A313871.P2878406677948236944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283316 (A001333 n).toNat + (A313287 n + A046978 n)

end

end A313871.P2878406677948236944

/-!
# A313872: Coordination sequence Gal.6.617.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313872, the canonical program `A313872.P15679373648552162511` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313872 has offset 0).

The definition of A313872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313872.P9957066670179623591

`A311801(n)+n`
-/

namespace A313872.P9957066670179623591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311801 n + (n : ℤ)

end

end A313872.P9957066670179623591

namespace A313872

/-- `A311801(n)+n` -/
def P9957066670179623591.Spec : Prop :=
  ∀ n, P9957066670179623591.a n = A313872 n

end A313872

/-! ## A313872.P10435557486268616482

`A315453(n)-A128834(n)`
-/

namespace A313872.P10435557486268616482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315453 n - A128834 n

end

end A313872.P10435557486268616482

namespace A313872

/-- `A315453(n)-A128834(n)` -/
def P10435557486268616482.Spec : Prop :=
  ∀ n, P10435557486268616482.a n = A313872 n

end A313872

/-! ## A313872.P15679373648552162511

`abs(A008592(n)-A313569(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313872

/-- `abs(A008592(n)-A313569(n))` -/
def P15679373648552162511.Spec : Prop :=
  ∀ n, P15679373648552162511.a n = A313872 n

theorem P15679373648552162511.correct : P15679373648552162511.Spec := by
  intro n
  simp only [A313872]

end A313872

/-! ## A313872.P13913715949837209322

`A314830(n)+∑[A131735(n)]`
-/

namespace A313872.P13913715949837209322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313872.P13913715949837209322

namespace A313872

/-- `A314830(n)+∑[A131735(n)]` -/
def P13913715949837209322.Spec : Prop :=
  ∀ n, P13913715949837209322.a n = A313872 n

end A313872

/-! ## A313872.P15700073488494267851

`A313769(n)+Δ[A011865(n)]`
-/

namespace A313872.P15700073488494267851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313769 n + (f1 (n + 1) - f1 n)

end

end A313872.P15700073488494267851

namespace A313872

/-- `A313769(n)+Δ[A011865(n)]` -/
def P15700073488494267851.Spec : Prop :=
  ∀ n, P15700073488494267851.a n = A313872 n

end A313872

/-! ## A313872.P7788362421933026957

`A314893(n)+A004524(n+1)`
-/

namespace A313872.P7788362421933026957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + A004524 (n + 1)

end

end A313872.P7788362421933026957

namespace A313872

/-- `A314893(n)+A004524(n+1)` -/
def P7788362421933026957.Spec : Prop :=
  ∀ n, P7788362421933026957.a n = A313872 n

end A313872

/-! ## A313872.P6882859450608100281

`A314893(n)+n-A004525(n)`
-/

namespace A313872.P6882859450608100281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + ((n : ℤ) - A004525 n)

end

end A313872.P6882859450608100281

namespace A313872

/-- `A314893(n)+n-A004525(n)` -/
def P6882859450608100281.Spec : Prop :=
  ∀ n, P6882859450608100281.a n = A313872 n

end A313872

/-! ## A313872.P8663049096076234893

`abs(A008591(n)+n-A313569(n))`
-/

namespace A313872.P8663049096076234893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A313569 n)|

end

end A313872.P8663049096076234893

namespace A313872

/-- `abs(A008591(n)+n-A313569(n))` -/
def P8663049096076234893.Spec : Prop :=
  ∀ n, P8663049096076234893.a n = A313872 n

end A313872

/-! ## A313872.P2065337299645540036

`A313246(n)+A004525(A004396(n))`
-/

namespace A313872.P2065337299645540036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004525 (A004396 n).toNat

end

end A313872.P2065337299645540036

namespace A313872

/-- `A313246(n)+A004525(A004396(n))` -/
def P2065337299645540036.Spec : Prop :=
  ∀ n, P2065337299645540036.a n = A313872 n

end A313872

/-! ## A313872.P16928590889692968930

`A312926(n)+A004525(A004396(n)+n)`
-/

namespace A313872.P16928590889692968930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312926 n + A004525 (A004396 n + (n : ℤ)).toNat

end

end A313872.P16928590889692968930

namespace A313872

/-- `A312926(n)+A004525(A004396(n)+n)` -/
def P16928590889692968930.Spec : Prop :=
  ∀ n, P16928590889692968930.a n = A313872 n

end A313872

/-! ## A313872.P1682042993926103875

`A314830(n)+n-A004525(A004396(n))`
-/

namespace A313872.P1682042993926103875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314830 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313872.P1682042993926103875

namespace A313872

/-- `A314830(n)+n-A004525(A004396(n))` -/
def P1682042993926103875.Spec : Prop :=
  ∀ n, P1682042993926103875.a n = A313872 n

end A313872

/-! ## A313872.P17226268976226544959

`A314836(n)+n-A004396(A004525(n))`
-/

namespace A313872.P17226268976226544959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313872.P17226268976226544959

namespace A313872

/-- `A314836(n)+n-A004396(A004525(n))` -/
def P17226268976226544959.Spec : Prop :=
  ∀ n, P17226268976226544959.a n = A313872 n

end A313872

/-! ## A313872.P4023881732445668524

`A315058(n)+A004525(n-A004396(n))`
-/

namespace A313872.P4023881732445668524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313872.P4023881732445668524

namespace A313872

/-- `A315058(n)+A004525(n-A004396(n))` -/
def P4023881732445668524.Spec : Prop :=
  ∀ n, P4023881732445668524.a n = A313872 n

end A313872

/-! ## A313872.P2737301735790336490

`A004396(n)+A313693(n)-A004525(A004396(n))`
-/

namespace A313872.P2737301735790336490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313693 n - A004525 (A004396 n).toNat)

end

end A313872.P2737301735790336490

namespace A313872

/-- `A004396(n)+A313693(n)-A004525(A004396(n))` -/
def P2737301735790336490.Spec : Prop :=
  ∀ n, P2737301735790336490.a n = A313872 n

end A313872

/-! ## A313872.P15180744178054672946

`A314216(n)-A002264(n+1)`
-/

namespace A313872.P15180744178054672946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - A002264 (n + 1)

end

end A313872.P15180744178054672946

namespace A313872

/-- `A314216(n)-A002264(n+1)` -/
def P15180744178054672946.Spec : Prop :=
  ∀ n, P15180744178054672946.a n = A313872 n

end A313872

/-! ## A313872.P4038110844184596493

`A314216(n)-A008615(Δ[n²])`
-/

namespace A313872.P4038110844184596493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - A008615 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A313872.P4038110844184596493

namespace A313872

/-- `A314216(n)-A008615(Δ[n²])` -/
def P4038110844184596493.Spec : Prop :=
  ∀ n, P4038110844184596493.a n = A313872 n

end A313872

/-! ## A313872.P10105439571929389527

`A314216(n)-A042965(n+1)+n`
-/

namespace A313872.P10105439571929389527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314216 n - A042965 (n + 1) + (n : ℤ)

end

end A313872.P10105439571929389527

namespace A313872

/-- `A314216(n)-A042965(n+1)+n` -/
def P10105439571929389527.Spec : Prop :=
  ∀ n, P10105439571929389527.a n = A313872 n

end A313872

/-! ## A313872.P15863239124153711567

`A008576(n)+A314216(n)-A008486(n)`
-/

namespace A313872.P15863239124153711567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A314216 n - A008486 n)

end

end A313872.P15863239124153711567

namespace A313872

/-- `A008576(n)+A314216(n)-A008486(n)` -/
def P15863239124153711567.Spec : Prop :=
  ∀ n, P15863239124153711567.a n = A313872 n

end A313872

/-! ## A313872.P14514568001480228820

`A315540(n)-A004525(n)`
-/

namespace A313872.P14514568001480228820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A004525 n

end

end A313872.P14514568001480228820

namespace A313872

/-- `A315540(n)-A004525(n)` -/
def P14514568001480228820.Spec : Prop :=
  ∀ n, P14514568001480228820.a n = A313872 n

end A313872

/-! ## A313872.P8375667208952441602

`A315540(n)-A047229(n+1)+n`
-/

namespace A313872.P8375667208952441602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A047229 (n + 1) + (n : ℤ)

end

end A313872.P8375667208952441602

namespace A313872

/-- `A315540(n)-A047229(n+1)+n` -/
def P8375667208952441602.Spec : Prop :=
  ∀ n, P8375667208952441602.a n = A313872 n

end A313872

/-!
# A313873: Coordination sequence Gal.3.21.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313873, the canonical program `A313873.P7548002507700228221` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313873 has offset 0).

The definition of A313873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313873.P3324884381078549750

`round(7/(5*acot(3*n)))+n`
-/

namespace A313873.P3324884381078549750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (7 / (5 * SequenceMachineLib.acot (3 * n : ℝ))) + (n : ℤ)

end

end A313873.P3324884381078549750

namespace A313873

/-- `round(7/(5*acot(3*n)))+n` -/
def P3324884381078549750.Spec : Prop :=
  ∀ n, P3324884381078549750.a n = A313873 n

end A313873

/-! ## A313873.P7548002507700228221

`∑[floor(a(n-5))]+n` with `a(0)=1, a(1)=3, a(2)=4, a(3)=5, a(4)=4, a(5)=4, a(6)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A313873

/-- `∑[floor(a(n-5))]+n` -/
def P7548002507700228221.Spec : Prop :=
  ∀ n, (P7548002507700228221.a n : ℤ) = A313873 n

theorem P7548002507700228221.correct : P7548002507700228221.Spec := by
  intro n
  simp only [A313873]

end A313873

/-! ## A313873.P4003175026240098673

`A311807(n)+n`
-/

namespace A313873.P4003175026240098673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + (n : ℤ)

end

end A313873.P4003175026240098673

namespace A313873

/-- `A311807(n)+n` -/
def P4003175026240098673.Spec : Prop :=
  ∀ n, P4003175026240098673.a n = A313873 n

end A313873

/-! ## A313873.P12511826734582138189

`round(A008706(n)+n/5)`
-/

namespace A313873.P12511826734582138189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008706 n : ℚ) + (n : ℚ) / 5)

end

end A313873.P12511826734582138189

namespace A313873

/-- `round(A008706(n)+n/5)` -/
def P12511826734582138189.Spec : Prop :=
  ∀ n, P12511826734582138189.a n = A313873 n

end A313873

/-! ## A313873.P5664068445846502553

`round(A250120(n)+2*n/5)`
-/

namespace A313873.P5664068445846502553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A250120 n : ℚ) + 2 * ((n : ℚ) / 5))

end

end A313873.P5664068445846502553

namespace A313873

/-- `round(A250120(n)+2*n/5)` -/
def P5664068445846502553.Spec : Prop :=
  ∀ n, P5664068445846502553.a n = A313873 n

end A313873

/-! ## A313873.P10646727603597346644

`A312948(2*n)+n-5*n`
-/

namespace A313873.P10646727603597346644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312948 (2 * n) + ((n : ℤ) - (5 * n : ℤ))

end

end A313873.P10646727603597346644

namespace A313873

/-- `A312948(2*n)+n-5*n` -/
def P10646727603597346644.Spec : Prop :=
  ∀ n, P10646727603597346644.a n = A313873 n

end A313873

/-! ## A313873.P11003682700487601468

`A312684(n)+A253262(n)`
-/

namespace A313873.P11003682700487601468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312684 n + A253262 n

end

end A313873.P11003682700487601468

namespace A313873

/-- `A312684(n)+A253262(n)` -/
def P11003682700487601468.Spec : Prop :=
  ∀ n, P11003682700487601468.a n = A313873 n

end A313873

/-! ## A313873.P10786223108985706234

`A315610(n)-A117444(n)`
-/

namespace A313873.P10786223108985706234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315610 n - A117444 n

end

end A313873.P10786223108985706234

namespace A313873

/-- `A315610(n)-A117444(n)` -/
def P10786223108985706234.Spec : Prop :=
  ∀ n, P10786223108985706234.a n = A313873 n

end A313873

/-! ## A313873.P6602086202770592013

`A315418(n)-A244895(n)`
-/

namespace A313873.P6602086202770592013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315418 n - A244895 n

end

end A313873.P6602086202770592013

namespace A313873

/-- `A315418(n)-A244895(n)` -/
def P6602086202770592013.Spec : Prop :=
  ∀ n, P6602086202770592013.a n = A313873 n

end A313873

/-! ## A313873.P14005751280860766053

`A315726(n)-A253262(n)`
-/

namespace A313873.P14005751280860766053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315726 n - A253262 n

end

end A313873.P14005751280860766053

namespace A313873

/-- `A315726(n)-A253262(n)` -/
def P14005751280860766053.Spec : Prop :=
  ∀ n, P14005751280860766053.a n = A313873 n

end A313873

/-! ## A313873.P5833366462594863699

`A008574(n)+comp[A016945(n)]`
-/

namespace A313873.P5833366462594863699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313873.P5833366462594863699

namespace A313873

/-- `A008574(n)+comp[A016945(n)]` -/
def P5833366462594863699.Spec : Prop :=
  ∀ n, P5833366462594863699.a n = A313873 n

end A313873

/-! ## A313873.P15353570248687643622

`A047299(A008486(n)+1)+n`
-/

namespace A313873.P15353570248687643622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A008486 n + 1).toNat + (n : ℤ)

end

end A313873.P15353570248687643622

namespace A313873

/-- `A047299(A008486(n)+1)+n` -/
def P15353570248687643622.Spec : Prop :=
  ∀ n, P15353570248687643622.a n = A313873 n

end A313873

/-! ## A313873.P11966307743648436885

`A047263(n+1)+A008574(n)`
-/

namespace A313873.P11966307743648436885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + A008574 n

end

end A313873.P11966307743648436885

namespace A313873

/-- `A047263(n+1)+A008574(n)` -/
def P11966307743648436885.Spec : Prop :=
  ∀ n, P11966307743648436885.a n = A313873 n

end A313873

/-! ## A313873.P9754883244037227862

`A250120(n)+A057354(n+1)`
-/

namespace A313873.P9754883244037227862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A057354 (n + 1)

end

end A313873.P9754883244037227862

namespace A313873

/-- `A250120(n)+A057354(n+1)` -/
def P9754883244037227862.Spec : Prop :=
  ∀ n, P9754883244037227862.a n = A313873 n

end A313873

/-! ## A313873.P5298313816175763797

`A008706(n)+A002266(n+2)`
-/

namespace A313873.P5298313816175763797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A002266 (n + 2)

end

end A313873.P5298313816175763797

namespace A313873

/-- `A008706(n)+A002266(n+2)` -/
def P5298313816175763797.Spec : Prop :=
  ∀ n, P5298313816175763797.a n = A313873 n

end A313873

/-! ## A313873.P5992879639686418087

`A047299(A033627(n+2))+n`
-/

namespace A313873.P5992879639686418087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047299 (A033627 (n + 2)).toNat + (n : ℤ)

end

end A313873.P5992879639686418087

namespace A313873

/-- `A047299(A033627(n+2))+n` -/
def P5992879639686418087.Spec : Prop :=
  ∀ n, P5992879639686418087.a n = A313873 n

end A313873

/-! ## A313873.P14252180765121941551

`(A312475(n)+A008458(n))/2`
-/

namespace A313873.P14252180765121941551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312475 n + A008458 n : ℚ) / 2

end

end A313873.P14252180765121941551

namespace A313873

/-- `(A312475(n)+A008458(n))/2` -/
def P14252180765121941551.Spec : Prop :=
  ∀ n, P14252180765121941551.a n = (A313873 n : ℚ)

end A313873

/-! ## A313873.P4302274977884488905

`A315610(n)+n-A277618(n)`
-/

namespace A313873.P4302274977884488905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315610 n + ((n : ℤ) - A277618 n)

end

end A313873.P4302274977884488905

namespace A313873

/-- `A315610(n)+n-A277618(n)` -/
def P4302274977884488905.Spec : Prop :=
  ∀ n, P4302274977884488905.a n = A313873 n

end A313873

/-! ## A313873.P5624753390797586012

`A005843(n)-(n-A311807(n))`
-/

namespace A313873.P5624753390797586012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311807 n)

end

end A313873.P5624753390797586012

namespace A313873

/-- `A005843(n)-(n-A311807(n))` -/
def P5624753390797586012.Spec : Prop :=
  ∀ n, P5624753390797586012.a n = A313873 n

end A313873

/-! ## A313873.P11927346678699574378

`A004277(2*n)+comp[A016945(n)]`
-/

namespace A313873.P11927346678699574378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313873.P11927346678699574378

namespace A313873

/-- `A004277(2*n)+comp[A016945(n)]` -/
def P11927346678699574378.Spec : Prop :=
  ∀ n, P11927346678699574378.a n = A313873 n

end A313873

/-!
# A313874: Coordination sequence Gal.6.649.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313874, the canonical program `A313874.P10377049350807380576` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313874 has offset 0).

The definition of A313874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313874.P10377049350807380576

`A313722(n)+A008615(A082977(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313874

/-- `A313722(n)+A008615(A082977(n+1))` -/
def P10377049350807380576.Spec : Prop :=
  ∀ n, P10377049350807380576.a n = A313874 n

theorem P10377049350807380576.correct : P10377049350807380576.Spec := by
  intro n
  simp only [A313874]

end A313874

/-! ## A313874.P11764245240257027680

`A313722(n)+A008615(A083034(n+1))`
-/

namespace A313874.P11764245240257027680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 n + A008615 (A083034 (n + 1)).toNat

end

end A313874.P11764245240257027680

namespace A313874

/-- `A313722(n)+A008615(A083034(n+1))` -/
def P11764245240257027680.Spec : Prop :=
  ∀ n, P11764245240257027680.a n = A313874 n

end A313874

/-! ## A313874.P12575748014931807008

`A313722(n)+A001221(A000105(n))`
-/

namespace A313874.P12575748014931807008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313722 n + A001221 (A000105 n).toNat

end

end A313874.P12575748014931807008

namespace A313874

/-- `A313722(n)+A001221(A000105(n))` -/
def P12575748014931807008.Spec : Prop :=
  ∀ n, P12575748014931807008.a n = A313874 n

end A313874

/-! ## A313874.P4966875769735458217

`A071625(A151397(n))+A008706(n)`
-/

namespace A313874.P4966875769735458217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A151397 n).toNat + A008706 n

end

end A313874.P4966875769735458217

namespace A313874

/-- `A071625(A151397(n))+A008706(n)` -/
def P4966875769735458217.Spec : Prop :=
  ∀ n, P4966875769735458217.a n = A313874 n

end A313874

/-! ## A313874.P89057997844856679

`A314117(n)-A088951(A000601(n))`
-/

namespace A313874.P89057997844856679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314117 n - A088951 (A000601 n).toNat

end

end A313874.P89057997844856679

namespace A313874

/-- `A314117(n)-A088951(A000601(n))` -/
def P89057997844856679.Spec : Prop :=
  ∀ n, P89057997844856679.a n = A313874 n

end A313874

/-!
# A313875: Coordination sequence Gal.4.134.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313875, the canonical program `A313875.P9058260822961243366` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313875 has offset 0).

The definition of A313875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313875.P9058260822961243366

`A311843(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313875

/-- `A311843(n)+n` -/
def P9058260822961243366.Spec : Prop :=
  ∀ n, P9058260822961243366.a n = A313875 n

theorem P9058260822961243366.correct : P9058260822961243366.Spec := by
  intro n
  simp only [A313875]

end A313875

/-! ## A313875.P13031434208703867775

`A313292(n)+A046978(n)`
-/

namespace A313875.P13031434208703867775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n + A046978 n

end

end A313875.P13031434208703867775

namespace A313875

/-- `A313292(n)+A046978(n)` -/
def P13031434208703867775.Spec : Prop :=
  ∀ n, P13031434208703867775.a n = A313875 n

end A313875

/-! ## A313875.P11186101801402006794

`A008706(n)+Δ[A011861(n)]`
-/

namespace A313875.P11186101801402006794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313875.P11186101801402006794

namespace A313875

/-- `A008706(n)+Δ[A011861(n)]` -/
def P11186101801402006794.Spec : Prop :=
  ∀ n, P11186101801402006794.a n = A313875 n

end A313875

/-! ## A313875.P4948660556794609063

`(A312506(n)+A008458(n))/2`
-/

namespace A313875.P4948660556794609063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312506 n + A008458 n : ℚ) / 2

end

end A313875.P4948660556794609063

namespace A313875

/-- `(A312506(n)+A008458(n))/2` -/
def P4948660556794609063.Spec : Prop :=
  ∀ n, P4948660556794609063.a n = (A313875 n : ℚ)

end A313875

/-! ## A313875.P18253994217735483324

`A314896(n)+n-A004525(n)`
-/

namespace A313875.P18253994217735483324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + ((n : ℤ) - A004525 n)

end

end A313875.P18253994217735483324

namespace A313875

/-- `A314896(n)+n-A004525(n)` -/
def P18253994217735483324.Spec : Prop :=
  ∀ n, P18253994217735483324.a n = A313875 n

end A313875

/-! ## A313875.P1183321892529471262

`A005843(n)-(n-A311843(n))`
-/

namespace A313875.P1183321892529471262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311843 n)

end

end A313875.P1183321892529471262

namespace A313875

/-- `A005843(n)-(n-A311843(n))` -/
def P1183321892529471262.Spec : Prop :=
  ∀ n, P1183321892529471262.a n = A313875 n

end A313875

/-! ## A313875.P10531532199634785212

`A008574(n)+Δ[A011861(n)]+n`
-/

namespace A313875.P10531532199634785212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (f1 (n + 1) - f1 n + (n : ℤ))

end

end A313875.P10531532199634785212

namespace A313875

/-- `A008574(n)+Δ[A011861(n)]+n` -/
def P10531532199634785212.Spec : Prop :=
  ∀ n, P10531532199634785212.a n = A313875 n

end A313875

/-! ## A313875.P5147470253307262462

`A008458(n)+Δ[A011861(n)]-n`
-/

namespace A313875.P5147470253307262462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (f1 (n + 1) - f1 n - (n : ℤ))

end

end A313875.P5147470253307262462

namespace A313875

/-- `A008458(n)+Δ[A011861(n)]-n` -/
def P5147470253307262462.Spec : Prop :=
  ∀ n, P5147470253307262462.a n = A313875 n

end A313875

/-! ## A313875.P18319912322457114802

`A301293(n)+A004525(A004525(n)+n)`
-/

namespace A313875.P18319912322457114802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A313875.P18319912322457114802

namespace A313875

/-- `A301293(n)+A004525(A004525(n)+n)` -/
def P18319912322457114802.Spec : Prop :=
  ∀ n, P18319912322457114802.a n = A313875 n

end A313875

/-! ## A313875.P12483199232698023851

`A314829(n)+n-A004525(A004525(n))`
-/

namespace A313875.P12483199232698023851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313875.P12483199232698023851

namespace A313875

/-- `A314829(n)+n-A004525(A004525(n))` -/
def P12483199232698023851.Spec : Prop :=
  ∀ n, P12483199232698023851.a n = A313875 n

end A313875

/-! ## A313875.P14516476237843528088

`A315061(n)+A004525(n-A004525(n))`
-/

namespace A313875.P14516476237843528088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A313875.P14516476237843528088

namespace A313875

/-- `A315061(n)+A004525(n-A004525(n))` -/
def P14516476237843528088.Spec : Prop :=
  ∀ n, P14516476237843528088.a n = A313875 n

end A313875

/-! ## A313875.P603195849118543626

`A008458(n)+A008574(n)-A313561(n)`
-/

namespace A313875.P603195849118543626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313561 n)

end

end A313875.P603195849118543626

namespace A313875

/-- `A008458(n)+A008574(n)-A313561(n)` -/
def P603195849118543626.Spec : Prop :=
  ∀ n, P603195849118543626.a n = A313875 n

end A313875

/-! ## A313875.P6303399856396000653

`A004525(n)+A313826(n)-A004525(A004525(n))`
-/

namespace A313875.P6303399856396000653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313826 n - A004525 (A004525 n).toNat)

end

end A313875.P6303399856396000653

namespace A313875

/-- `A004525(n)+A313826(n)-A004525(A004525(n))` -/
def P6303399856396000653.Spec : Prop :=
  ∀ n, P6303399856396000653.a n = A313875 n

end A313875

/-! ## A313875.P10176736651042889851

`A315469(n)-A046978(A046978(n)+n)`
-/

namespace A313875.P10176736651042889851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A046978 (A046978 n + (n : ℤ)).toNat

end

end A313875.P10176736651042889851

namespace A313875

/-- `A315469(n)-A046978(A046978(n)+n)` -/
def P10176736651042889851.Spec : Prop :=
  ∀ n, P10176736651042889851.a n = A313875 n

end A313875

/-! ## A313875.P16688956887932187750

`A314056(n)-A075553(n-A075553(n))`
-/

namespace A313875.P16688956887932187750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n - A075553 ((n : ℤ) - A075553 n).toNat

end

end A313875.P16688956887932187750

namespace A313875

/-- `A314056(n)-A075553(n-A075553(n))` -/
def P16688956887932187750.Spec : Prop :=
  ∀ n, P16688956887932187750.a n = A313875 n

end A313875

/-! ## A313875.P11594483070817637613

`(A313956(n)+A313782(n))/2`
-/

namespace A313875.P11594483070817637613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313956 n + A313782 n : ℚ) / 2

end

end A313875.P11594483070817637613

namespace A313875

/-- `(A313956(n)+A313782(n))/2` -/
def P11594483070817637613.Spec : Prop :=
  ∀ n, P11594483070817637613.a n = (A313875 n : ℚ)

end A313875

/-! ## A313875.P6272940652556186826

`(A315061(n)+A301710(n))/2`
-/

namespace A313875.P6272940652556186826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315061 n + A301710 n : ℚ) / 2

end

end A313875.P6272940652556186826

namespace A313875

/-- `(A315061(n)+A301710(n))/2` -/
def P6272940652556186826.Spec : Prop :=
  ∀ n, P6272940652556186826.a n = (A313875 n : ℚ)

end A313875

/-! ## A313875.P2257237119044367361

`A315520(n)-A004525(A004525(n))`
-/

namespace A313875.P2257237119044367361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A004525 (A004525 n).toNat

end

end A313875.P2257237119044367361

namespace A313875

/-- `A315520(n)-A004525(A004525(n))` -/
def P2257237119044367361.Spec : Prop :=
  ∀ n, P2257237119044367361.a n = A313875 n

end A313875

/-! ## A313875.P17436877717015614618

`A004525(A312140(n))+3*n`
-/

namespace A313875.P17436877717015614618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312140 n).toNat + (3 * n : ℤ)

end

end A313875.P17436877717015614618

namespace A313875

/-- `A004525(A312140(n))+3*n` -/
def P17436877717015614618.Spec : Prop :=
  ∀ n, P17436877717015614618.a n = A313875 n

end A313875

/-! ## A313875.P13377914685974676092

`A008486(n)+A201629(A301293(n))/2`
-/

namespace A313875.P13377914685974676092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 n : ℚ) + (A201629 (A301293 n).toNat : ℚ) / 2

end

end A313875.P13377914685974676092

namespace A313875

/-- `A008486(n)+A201629(A301293(n))/2` -/
def P13377914685974676092.Spec : Prop :=
  ∀ n, P13377914685974676092.a n = (A313875 n : ℚ)

end A313875

/-!
# A313876: Coordination sequence Gal.6.342.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313876, the canonical program `A313876.P7091103484459184855` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313876 has offset 0).

The definition of A313876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313876.P7091103484459184855

`abs(A008592(n)-A313560(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313876

/-- `abs(A008592(n)-A313560(n))` -/
def P7091103484459184855.Spec : Prop :=
  ∀ n, P7091103484459184855.a n = A313876 n

theorem P7091103484459184855.correct : P7091103484459184855.Spec := by
  intro n
  simp only [A313876]

end A313876

/-! ## A313876.P11043353892904039832

`A313772(n)+Δ[A011864(n)]`
-/

namespace A313876.P11043353892904039832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n + (f1 (n + 1) - f1 n)

end

end A313876.P11043353892904039832

namespace A313876

/-- `A313772(n)+Δ[A011864(n)]` -/
def P11043353892904039832.Spec : Prop :=
  ∀ n, P11043353892904039832.a n = A313876 n

end A313876

/-! ## A313876.P11047168544626664716

`(A312507(n)+A008458(n))/2`
-/

namespace A313876.P11047168544626664716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312507 n + A008458 n : ℚ) / 2

end

end A313876.P11047168544626664716

namespace A313876

/-- `(A312507(n)+A008458(n))/2` -/
def P11047168544626664716.Spec : Prop :=
  ∀ n, P11047168544626664716.a n = (A313876 n : ℚ)

end A313876

/-! ## A313876.P13129179163132304662

`2*A008706(n)-A313560(n)`
-/

namespace A313876.P13129179163132304662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313560 n

end

end A313876.P13129179163132304662

namespace A313876

/-- `2*A008706(n)-A313560(n)` -/
def P13129179163132304662.Spec : Prop :=
  ∀ n, P13129179163132304662.a n = A313876 n

end A313876

/-! ## A313876.P10995647237145532936

`A008458(n)+A008574(n)-A313560(n)`
-/

namespace A313876.P10995647237145532936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313560 n)

end

end A313876.P10995647237145532936

namespace A313876

/-- `A008458(n)+A008574(n)-A313560(n)` -/
def P10995647237145532936.Spec : Prop :=
  ∀ n, P10995647237145532936.a n = A313876 n

end A313876

/-! ## A313876.P3945557659444662681

`A005843(n)+A005843(A008574(n))-A313560(n)`
-/

namespace A313876.P3945557659444662681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313560 n)

end

end A313876.P3945557659444662681

namespace A313876

/-- `A005843(n)+A005843(A008574(n))-A313560(n)` -/
def P3945557659444662681.Spec : Prop :=
  ∀ n, P3945557659444662681.a n = A313876 n

end A313876

/-! ## A313876.P3344589185342226269

`A312507(n)+A001281(A008458(n)-A312507(n))`
-/

namespace A313876.P3344589185342226269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312507 n + A001281 (A008458 n - A312507 n).toNat

end

end A313876.P3344589185342226269

namespace A313876

/-- `A312507(n)+A001281(A008458(n)-A312507(n))` -/
def P3344589185342226269.Spec : Prop :=
  ∀ n, P3344589185342226269.a n = A313876 n

end A313876

/-! ## A313876.P17316345767229275611

`A008458(n)-A004526(A008458(n)-A312507(n))`
-/

namespace A313876.P17316345767229275611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A312507 n).toNat

end

end A313876.P17316345767229275611

namespace A313876

/-- `A008458(n)-A004526(A008458(n)-A312507(n))` -/
def P17316345767229275611.Spec : Prop :=
  ∀ n, P17316345767229275611.a n = A313876 n

end A313876

/-! ## A313876.P5546063585432436464

`A008585(n)+A004525(A312507(n))`
-/

namespace A313876.P5546063585432436464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A312507 n).toNat

end

end A313876.P5546063585432436464

namespace A313876

/-- `A008585(n)+A004525(A312507(n))` -/
def P5546063585432436464.Spec : Prop :=
  ∀ n, P5546063585432436464.a n = A313876 n

end A313876

/-! ## A313876.P15217223784030450972

`A008486(n)+A004526(A312507(n))`
-/

namespace A313876.P15217223784030450972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A312507 n).toNat

end

end A313876.P15217223784030450972

namespace A313876

/-- `A008486(n)+A004526(A312507(n))` -/
def P15217223784030450972.Spec : Prop :=
  ∀ n, P15217223784030450972.a n = A313876 n

end A313876

/-! ## A313876.P14458838322288489562

`A004396(A315052(n))+2*n`
-/

namespace A313876.P14458838322288489562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315052 n).toNat + (2 * n : ℤ)

end

end A313876.P14458838322288489562

namespace A313876

/-- `A004396(A315052(n))+2*n` -/
def P14458838322288489562.Spec : Prop :=
  ∀ n, P14458838322288489562.a n = A313876 n

end A313876

/-! ## A313876.P11325262227119484647

`A005843(n)+A004396(A315052(n))`
-/

namespace A313876.P11325262227119484647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315052 n).toNat

end

end A313876.P11325262227119484647

namespace A313876

/-- `A005843(n)+A004396(A315052(n))` -/
def P11325262227119484647.Spec : Prop :=
  ∀ n, P11325262227119484647.a n = A313876 n

end A313876

/-! ## A313876.P2466991802699938194

`A005843(A008706(n))-A313560(n)`
-/

namespace A313876.P2466991802699938194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313560 n

end

end A313876.P2466991802699938194

namespace A313876

/-- `A005843(A008706(n))-A313560(n)` -/
def P2466991802699938194.Spec : Prop :=
  ∀ n, P2466991802699938194.a n = A313876 n

end A313876

/-! ## A313876.P14325488902349993604

`A005843(A008574(n)+n)-A313560(n)`
-/

namespace A313876.P14325488902349993604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313560 n

end

end A313876.P14325488902349993604

namespace A313876

/-- `A005843(A008574(n)+n)-A313560(n)` -/
def P14325488902349993604.Spec : Prop :=
  ∀ n, P14325488902349993604.a n = A313876 n

end A313876

/-! ## A313876.P12814067587706321888

`2*A008574(n)-A004525(A315650(n))`
-/

namespace A313876.P12814067587706321888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A315650 n).toNat

end

end A313876.P12814067587706321888

namespace A313876

/-- `2*A008574(n)-A004525(A315650(n))` -/
def P12814067587706321888.Spec : Prop :=
  ∀ n, P12814067587706321888.a n = A313876 n

end A313876

/-! ## A313876.P8321609477054880985

`A004525(A312507(n)+A008574(n))+n`
-/

namespace A313876.P8321609477054880985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312507 n + A008574 n).toNat + (n : ℤ)

end

end A313876.P8321609477054880985

namespace A313876

/-- `A004525(A312507(n)+A008574(n))+n` -/
def P8321609477054880985.Spec : Prop :=
  ∀ n, P8321609477054880985.a n = A313876 n

end A313876

/-! ## A313876.P15455499989728972068

`A315526(2*n)+n-7*n`
-/

namespace A313876.P15455499989728972068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315526 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A313876.P15455499989728972068

namespace A313876

/-- `A315526(2*n)+n-7*n` -/
def P15455499989728972068.Spec : Prop :=
  ∀ n, P15455499989728972068.a n = A313876 n

end A313876

/-! ## A313876.P9000037754072239136

`A004525(A315312(2*n))`
-/

namespace A313876.P9000037754072239136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315312 (2 * n)).toNat

end

end A313876.P9000037754072239136

namespace A313876

/-- `A004525(A315312(2*n))` -/
def P9000037754072239136.Spec : Prop :=
  ∀ n, P9000037754072239136.a n = A313876 n

end A313876

/-! ## A313876.P5667241376522863651

`A004525(A315454(2*n))`
-/

namespace A313876.P5667241376522863651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315454 (2 * n)).toNat

end

end A313876.P5667241376522863651

namespace A313876

/-- `A004525(A315454(2*n))` -/
def P5667241376522863651.Spec : Prop :=
  ∀ n, P5667241376522863651.a n = A313876 n

end A313876

/-! ## A313876.P18177591950566033040

`A004526(A315312(2*n)+1)`
-/

namespace A313876.P18177591950566033040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315312 (2 * n) + 1).toNat

end

end A313876.P18177591950566033040

namespace A313876

/-- `A004526(A315312(2*n)+1)` -/
def P18177591950566033040.Spec : Prop :=
  ∀ n, P18177591950566033040.a n = A313876 n

end A313876

/-!
# A313877: Coordination sequence Gal.6.646.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313877, there is no canonical definition to state claims against.
-/

/-! ## A313877.P1288563738784938947

`A137735(29*n²)`
-/

namespace A313877.P1288563738784938947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 (29 * n ^ 2)

end

end A313877.P1288563738784938947

/-! ## A313877.P12348672390879576835

`A000196(29*n²+1)`
-/

namespace A313877.P12348672390879576835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (29 * n ^ 2 + 1)

end

end A313877.P12348672390879576835

/-! ## A313877.P7987706414367970312

`floor(sqrt(A304491(29*n²+1)))`
-/

namespace A313877.P7987706414367970312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A304491 (29 * n ^ 2 + 1))

end

end A313877.P7987706414367970312

/-! ## A313877.P15055279240716654296

`A118759(floor(sqrt(A010019(n))))`
-/

namespace A313877.P15055279240716654296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.sqrt (A010019 n)).toNat

end

end A313877.P15055279240716654296

/-! ## A313877.P7011657104953621133

`∑{d}[A000196(A010019(n)), A000010(#)]`
-/

namespace A313877.P7011657104953621133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A010019 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313877.P7011657104953621133

/-!
# A313878: Coordination sequence Gal.6.647.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313878, the canonical program `A313878.P13457127066712427819` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313878 has offset 0).

The definition of A313878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313878.P17645705911901404352

`A314115(n)+A056594(A029579(n))`
-/

namespace A313878.P17645705911901404352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314115 n + A056594 (A029579 n).toNat

end

end A313878.P17645705911901404352

namespace A313878

/-- `A314115(n)+A056594(A029579(n))` -/
def P17645705911901404352.Spec : Prop :=
  ∀ n, P17645705911901404352.a n = A313878 n

end A313878

/-! ## A313878.P2412120922405325422

`A314115(n)-A046978(A201629(n))`
-/

namespace A313878.P2412120922405325422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314115 n - A046978 (A201629 n).toNat

end

end A313878.P2412120922405325422

namespace A313878

/-- `A314115(n)-A046978(A201629(n))` -/
def P2412120922405325422.Spec : Prop :=
  ∀ n, P2412120922405325422.a n = A313878 n

end A313878

/-! ## A313878.P14791792350048148848

`A314115(n)-A046978(A237420(n))`
-/

namespace A313878.P14791792350048148848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314115 n - A046978 (A237420 n).toNat

end

end A313878.P14791792350048148848

namespace A313878

/-- `A314115(n)-A046978(A237420(n))` -/
def P14791792350048148848.Spec : Prop :=
  ∀ n, P14791792350048148848.a n = A313878 n

end A313878

/-! ## A313878.P8961073340179742848

`A314115(n)-A056594(A029579(n))*A056594(n)`
-/

namespace A313878.P8961073340179742848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314115 n - A056594 (A029579 n).toNat * A056594 n

end

end A313878.P8961073340179742848

namespace A313878

/-- `A314115(n)-A056594(A029579(n))*A056594(n)` -/
def P8961073340179742848.Spec : Prop :=
  ∀ n, P8961073340179742848.a n = A313878 n

end A313878

/-! ## A313878.P13457127066712427819

`A313873(n)+A313898(n)-A313889(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A313878

/-- `A313873(n)+A313898(n)-A313889(n)` -/
def P13457127066712427819.Spec : Prop :=
  ∀ n, P13457127066712427819.a n = A313878 n

theorem P13457127066712427819.correct : P13457127066712427819.Spec := by
  intro n
  simp only [A313878]

end A313878

/-! ## A313878.P8390566351313778877

`A313928(n)+A314090(n)-A314116(n)`
-/

namespace A313878.P8390566351313778877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n + (A314090 n - A314116 n)

end

end A313878.P8390566351313778877

namespace A313878

/-- `A313928(n)+A314090(n)-A314116(n)` -/
def P8390566351313778877.Spec : Prop :=
  ∀ n, P8390566351313778877.a n = A313878 n

end A313878

/-!
# A313879: Coordination sequence Gal.6.343.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313879, the canonical program `A313879.P8717891439709458694` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313879 has offset 0).

The definition of A313879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313879.P6598611510064567038

`A311861(n)+n`
-/

namespace A313879.P6598611510064567038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311861 n + (n : ℤ)

end

end A313879.P6598611510064567038

namespace A313879

/-- `A311861(n)+n` -/
def P6598611510064567038.Spec : Prop :=
  ∀ n, P6598611510064567038.a n = A313879 n

end A313879

/-! ## A313879.P6534902421422767865

`A313057(n)+A004396(n)`
-/

namespace A313879.P6534902421422767865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A004396 n

end

end A313879.P6534902421422767865

namespace A313879

/-- `A313057(n)+A004396(n)` -/
def P6534902421422767865.Spec : Prop :=
  ∀ n, P6534902421422767865.a n = A313879 n

end A313879

/-! ## A313879.P11464810646965255833

`A315053(n)+A002264(n+1)`
-/

namespace A313879.P11464810646965255833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n + A002264 (n + 1)

end

end A313879.P11464810646965255833

namespace A313879

/-- `A315053(n)+A002264(n+1)` -/
def P11464810646965255833.Spec : Prop :=
  ∀ n, P11464810646965255833.a n = A313879 n

end A313879

/-! ## A313879.P7964019391223236624

`A311687(n)+A047588(n+1)`
-/

namespace A313879.P7964019391223236624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311687 n + A047588 (n + 1)

end

end A313879.P7964019391223236624

namespace A313879

/-- `A311687(n)+A047588(n+1)` -/
def P7964019391223236624.Spec : Prop :=
  ∀ n, P7964019391223236624.a n = A313879 n

end A313879

/-! ## A313879.P7076640470780674486

`A314899(n)+n-A004525(n)`
-/

namespace A313879.P7076640470780674486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + ((n : ℤ) - A004525 n)

end

end A313879.P7076640470780674486

namespace A313879

/-- `A314899(n)+n-A004525(n)` -/
def P7076640470780674486.Spec : Prop :=
  ∀ n, P7076640470780674486.a n = A313879 n

end A313879

/-! ## A313879.P7752753231961815734

`A315053(n)+n-A004396(n)`
-/

namespace A313879.P7752753231961815734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315053 n + ((n : ℤ) - A004396 n)

end

end A313879.P7752753231961815734

namespace A313879

/-- `A315053(n)+n-A004396(n)` -/
def P7752753231961815734.Spec : Prop :=
  ∀ n, P7752753231961815734.a n = A313879 n

end A313879

/-! ## A313879.P7973448417573334220

`A313057(n)+A002264(2*n+1)`
-/

namespace A313879.P7973448417573334220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313057 n + A002264 (2 * n + 1)

end

end A313879.P7973448417573334220

namespace A313879

/-- `A313057(n)+A002264(2*n+1)` -/
def P7973448417573334220.Spec : Prop :=
  ∀ n, P7973448417573334220.a n = A313879 n

end A313879

/-! ## A313879.P8717891439709458694

`A312933(n)+A004525(A004396(n)+n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313879

/-- `A312933(n)+A004525(A004396(n)+n)` -/
def P8717891439709458694.Spec : Prop :=
  ∀ n, P8717891439709458694.a n = A313879 n

theorem P8717891439709458694.correct : P8717891439709458694.Spec := by
  intro n
  simp only [A313879]

end A313879

/-! ## A313879.P5646002417531524377

`A314841(n)+n-A004396(A004525(n))`
-/

namespace A313879.P5646002417531524377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313879.P5646002417531524377

namespace A313879

/-- `A314841(n)+n-A004396(A004525(n))` -/
def P5646002417531524377.Spec : Prop :=
  ∀ n, P5646002417531524377.a n = A313879 n

end A313879

/-! ## A313879.P15236761596209244228

`A315058(n)+A004396(n-A004525(n))`
-/

namespace A313879.P15236761596209244228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n + A004396 ((n : ℤ) - A004525 n).toNat

end

end A313879.P15236761596209244228

namespace A313879

/-- `A315058(n)+A004396(n-A004525(n))` -/
def P15236761596209244228.Spec : Prop :=
  ∀ n, P15236761596209244228.a n = A313879 n

end A313879

/-! ## A313879.P9838006585711922868

`A008458(n)+A008574(n)-A313556(n)`
-/

namespace A313879.P9838006585711922868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313556 n)

end

end A313879.P9838006585711922868

namespace A313879

/-- `A008458(n)+A008574(n)-A313556(n)` -/
def P9838006585711922868.Spec : Prop :=
  ∀ n, P9838006585711922868.a n = A313879 n

end A313879

/-! ## A313879.P3262352829547558458

`A008486(n)+A315053(n)-A008576(n)`
-/

namespace A313879.P3262352829547558458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315053 n - A008576 n)

end

end A313879.P3262352829547558458

namespace A313879

/-- `A008486(n)+A315053(n)-A008576(n)` -/
def P3262352829547558458.Spec : Prop :=
  ∀ n, P3262352829547558458.a n = A313879 n

end A313879

/-! ## A313879.P13037825850396340936

`A004525(n)+A313833(n)-A004396(A004525(n))`
-/

namespace A313879.P13037825850396340936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313833 n - A004396 (A004525 n).toNat)

end

end A313879.P13037825850396340936

namespace A313879

/-- `A004525(n)+A313833(n)-A004396(A004525(n))` -/
def P13037825850396340936.Spec : Prop :=
  ∀ n, P13037825850396340936.a n = A313879 n

end A313879

/-! ## A313879.P3234008846574934296

`A313924(n)+A004525(A004396(n))-A004525(n)`
-/

namespace A313879.P3234008846574934296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + (A004525 (A004396 n).toNat - A004525 n)

end

end A313879.P3234008846574934296

namespace A313879

/-- `A313924(n)+A004525(A004396(n))-A004525(n)` -/
def P3234008846574934296.Spec : Prop :=
  ∀ n, P3234008846574934296.a n = A313879 n

end A313879

/-! ## A313879.P12870161538466606552

`A314222(n)-A002264(n+1)`
-/

namespace A313879.P12870161538466606552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A002264 (n + 1)

end

end A313879.P12870161538466606552

namespace A313879

/-- `A314222(n)-A002264(n+1)` -/
def P12870161538466606552.Spec : Prop :=
  ∀ n, P12870161538466606552.a n = A313879 n

end A313879

/-! ## A313879.P2460169453057302869

`A004396(n)+A314222(n)-n`
-/

namespace A313879.P2460169453057302869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A314222 n - (n : ℤ))

end

end A313879.P2460169453057302869

namespace A313879

/-- `A004396(n)+A314222(n)-n` -/
def P2460169453057302869.Spec : Prop :=
  ∀ n, P2460169453057302869.a n = A313879 n

end A313879

/-! ## A313879.P7554398056898934734

`A314222(n)-A042965(n+1)+n`
-/

namespace A313879.P7554398056898934734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314222 n - A042965 (n + 1) + (n : ℤ)

end

end A313879.P7554398056898934734

namespace A313879

/-- `A314222(n)-A042965(n+1)+n` -/
def P7554398056898934734.Spec : Prop :=
  ∀ n, P7554398056898934734.a n = A313879 n

end A313879

/-! ## A313879.P12056391396763464911

`A315549(n)-A004525(n)`
-/

namespace A313879.P12056391396763464911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A004525 n

end

end A313879.P12056391396763464911

namespace A313879

/-- `A315549(n)-A004525(n)` -/
def P12056391396763464911.Spec : Prop :=
  ∀ n, P12056391396763464911.a n = A313879 n

end A313879

/-! ## A313879.P7117192600737982665

`A047588(A313057(n)+1)`
-/

namespace A313879.P7117192600737982665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A313057 n + 1).toNat

end

end A313879.P7117192600737982665

namespace A313879

/-- `A047588(A313057(n)+1)` -/
def P7117192600737982665.Spec : Prop :=
  ∀ n, P7117192600737982665.a n = A313879 n

end A313879

/-!
# A313880: Coordination sequence Gal.5.296.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313880, there is no canonical definition to state claims against.
-/

/-! ## A313880.P11255680918407438257

`record[A313969(n)-A091232(abs(1-n))]`
-/

namespace A313880.P11255680918407438257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313969 n - A091232 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313880.P11255680918407438257

/-! ## A313880.P17610257405187851810

`A301712(n)-A283304(A283314(n))`
-/

namespace A313880.P17610257405187851810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n - A283304 (A283314 n).toNat

end

end A313880.P17610257405187851810

/-! ## A313880.P3551912135569206580

`A313568(n)+A063725(A268093(n+1))`
-/

namespace A313880.P3551912135569206580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313568 n + A063725 (A268093 (n + 1)).toNat

end

end A313880.P3551912135569206580

/-! ## A313880.P5158419876280499068

`A320107(A108054(3*n+2))+A047229(3*n+1)`
-/

namespace A313880.P5158419876280499068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (A108054 (3 * n + 2)).toNat + A047229 (3 * n + 1)

end

end A313880.P5158419876280499068

/-! ## A313880.P3090454844784812641

`A315061(n)+A057354(n+1)-A235051(A187618(n))`
-/

namespace A313880.P3090454844784812641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315061 n + A057354 (n + 1) - A235051 (A187618 n).toNat

end

end A313880.P3090454844784812641

/-!
# A313881: Coordination sequence Gal.3.56.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313881, there is no canonical definition to state claims against.
-/

/-! ## A313881.P8988202711877588127

`A250120(n)+A048881(A148247(n))`
-/

namespace A313881.P8988202711877588127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A048881 (A148247 n).toNat

end

end A313881.P8988202711877588127

/-! ## A313881.P7121725474789691276

`A307319(A208950(n))+A250120(n)`
-/

namespace A313881.P7121725474789691276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307319 (A208950 n).toNat + A250120 n

end

end A313881.P7121725474789691276

/-! ## A313881.P1147168646019711910

`A313867(n)+A178602(A317543(n))`
-/

namespace A313881.P1147168646019711910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313867 n + A178602 (A317543 n).toNat

end

end A313881.P1147168646019711910

/-! ## A313881.P6779055814950723028

`A312561(A087051(n))+A001222(A008486(n))`
-/

namespace A313881.P6779055814950723028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312561 (A087051 n).toNat + A001222 (A008486 n).toNat

end

end A313881.P6779055814950723028

/-! ## A313881.P1849957430549831314

`A250120(n)+A081603(A001047(n))`
-/

namespace A313881.P1849957430549831314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A081603 (A001047 n).toNat

end

end A313881.P1849957430549831314

/-!
# A313882: Coordination sequence Gal.5.331.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313882, there is no canonical definition to state claims against.
-/

/-! ## A313882.P13559960797074231763

`A314126(n)-A294936(A116835(n+1))`
-/

namespace A313882.P13559960797074231763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314126 n - A294936 (A116835 (n + 1)).toNat

end

end A313882.P13559960797074231763

/-! ## A313882.P5039358079508550184

`xor(A313875(n), A340998(n²+9))`
-/

namespace A313882.P5039358079508550184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313875 n) (A340998 (n ^ 2 + 9 + 140))

end

end A313882.P5039358079508550184

/-! ## A313882.P347105460737562504

`A285097(A039300(n))+A008706(n)`
-/

namespace A313882.P347105460737562504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285097 (A039300 n).toNat + A008706 n

end

end A313882.P347105460737562504

/-! ## A313882.P14617374048590465400

`A341541(A094967(n))+A250120(n)`
-/

namespace A313882.P14617374048590465400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341541 (A094967 n).toNat + A250120 n

end

end A313882.P14617374048590465400

/-! ## A313882.P15022446667500330508

`A341999(A055580(n))+A313749(n)`
-/

namespace A313882.P15022446667500330508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341999 (A055580 n).toNat + A313749 n

end

end A313882.P15022446667500330508

/-!
# A313883: Coordination sequence Gal.6.490.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313883, there is no canonical definition to state claims against.
-/

/-! ## A313883.P11790683046547303243

`A346127(A312083(n))`
-/

namespace A313883.P11790683046547303243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A312083 n).toNat

end

end A313883.P11790683046547303243

/-! ## A313883.P10756609558630699826

`A346127(A312084(n))`
-/

namespace A313883.P10756609558630699826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346127 (A312084 n).toNat

end

end A313883.P10756609558630699826

/-! ## A313883.P12595960539548142888

`A133501(A000782(n+1))+A008706(n)`
-/

namespace A313883.P12595960539548142888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 (A000782 (n + 1)).toNat + A008706 n

end

end A313883.P12595960539548142888

/-! ## A313883.P15046653320869752359

`A312963(n)+A001222(A121220(n+1))`
-/

namespace A313883.P15046653320869752359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312963 n + A001222 (A121220 (n + 1)).toNat

end

end A313883.P15046653320869752359

/-!
# A313884: Coordination sequence Gal.6.347.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313884, the canonical program `A313884.P6047903024451911562` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313884 has offset 0).

The definition of A313884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313884.P6047903024451911562

`abs(A008592(n)-A313546(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313884

/-- `abs(A008592(n)-A313546(n))` -/
def P6047903024451911562.Spec : Prop :=
  ∀ n, P6047903024451911562.a n = A313884 n

theorem P6047903024451911562.correct : P6047903024451911562.Spec := by
  intro n
  simp only [A313884]

end A313884

/-! ## A313884.P1489534275570804721

`A314836(n)+∑[A131735(n)]`
-/

namespace A313884.P1489534275570804721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313884.P1489534275570804721

namespace A313884

/-- `A314836(n)+∑[A131735(n)]` -/
def P1489534275570804721.Spec : Prop :=
  ∀ n, P1489534275570804721.a n = A313884 n

end A313884

/-! ## A313884.P14255222835632357445

`A313778(n)+Δ[A011865(n)]`
-/

namespace A313884.P14255222835632357445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + (f1 (n + 1) - f1 n)

end

end A313884.P14255222835632357445

namespace A313884

/-- `A313778(n)+Δ[A011865(n)]` -/
def P14255222835632357445.Spec : Prop :=
  ∀ n, P14255222835632357445.a n = A313884 n

end A313884

/-! ## A313884.P431088627646635090

`2*A008706(n)-A313546(n)`
-/

namespace A313884.P431088627646635090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313546 n

end

end A313884.P431088627646635090

namespace A313884

/-- `2*A008706(n)-A313546(n)` -/
def P431088627646635090.Spec : Prop :=
  ∀ n, P431088627646635090.a n = A313884 n

end A313884

/-! ## A313884.P6229658825346914826

`A313246(n)+A004396(A004525(n))`
-/

namespace A313884.P6229658825346914826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004396 (A004525 n).toNat

end

end A313884.P6229658825346914826

namespace A313884

/-- `A313246(n)+A004396(A004525(n))` -/
def P6229658825346914826.Spec : Prop :=
  ∀ n, P6229658825346914826.a n = A313884 n

end A313884

/-! ## A313884.P12584082182497307009

`A313702(n)+A002264(A030118(n))`
-/

namespace A313884.P12584082182497307009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313702 n + A002264 (A030118 n).toNat

end

end A313884.P12584082182497307009

namespace A313884

/-- `A313702(n)+A002264(A030118(n))` -/
def P12584082182497307009.Spec : Prop :=
  ∀ n, P12584082182497307009.a n = A313884 n

end A313884

/-! ## A313884.P9485588332359402782

`A314836(n)+n-A004525(A004396(n))`
-/

namespace A313884.P9485588332359402782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314836 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313884.P9485588332359402782

namespace A313884

/-- `A314836(n)+n-A004525(A004396(n))` -/
def P9485588332359402782.Spec : Prop :=
  ∀ n, P9485588332359402782.a n = A313884 n

end A313884

/-! ## A313884.P538218781641932330

`A315067(n)+A004525(n-A004396(n))`
-/

namespace A313884.P538218781641932330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315067 n + A004525 ((n : ℤ) - A004396 n).toNat

end

end A313884.P538218781641932330

namespace A313884

/-- `A315067(n)+A004525(n-A004396(n))` -/
def P538218781641932330.Spec : Prop :=
  ∀ n, P538218781641932330.a n = A313884 n

end A313884

/-! ## A313884.P9799239317381238311

`A008458(n)+A008574(n)-A313546(n)`
-/

namespace A313884.P9799239317381238311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313546 n)

end

end A313884.P9799239317381238311

namespace A313884

/-- `A008458(n)+A008574(n)-A313546(n)` -/
def P9799239317381238311.Spec : Prop :=
  ∀ n, P9799239317381238311.a n = A313884 n

end A313884

/-! ## A313884.P8997869402720223910

`A313546(n)+A005843(A008706(n)-A313546(n))`
-/

namespace A313884.P8997869402720223910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n + A005843 (A008706 n - A313546 n).toNat

end

end A313884.P8997869402720223910

namespace A313884

/-- `A313546(n)+A005843(A008706(n)-A313546(n))` -/
def P8997869402720223910.Spec : Prop :=
  ∀ n, P8997869402720223910.a n = A313884 n

end A313884

/-! ## A313884.P83430775502279062

`A315318(n)-A134667(n)`
-/

namespace A313884.P83430775502279062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315318 n - A134667 n

end

end A313884.P83430775502279062

namespace A313884

/-- `A315318(n)-A134667(n)` -/
def P83430775502279062.Spec : Prop :=
  ∀ n, P83430775502279062.a n = A313884 n

end A313884

/-! ## A313884.P12868791349979002704

`∑[A131735(n)]+A315522(n)-n`
-/

namespace A313884.P12868791349979002704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A315522 n - (n : ℤ))

end

end A313884.P12868791349979002704

namespace A313884

/-- `∑[A131735(n)]+A315522(n)-n` -/
def P12868791349979002704.Spec : Prop :=
  ∀ n, P12868791349979002704.a n = A313884 n

end A313884

/-! ## A313884.P7707034592228266696

`A315522(n)-A004525(A004396(n))`
-/

namespace A313884.P7707034592228266696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315522 n - A004525 (A004396 n).toNat

end

end A313884.P7707034592228266696

namespace A313884

/-- `A315522(n)-A004525(A004396(n))` -/
def P7707034592228266696.Spec : Prop :=
  ∀ n, P7707034592228266696.a n = A313884 n

end A313884

/-! ## A313884.P4606615645925190435

`A005843(A008706(n))-A313546(n)`
-/

namespace A313884.P4606615645925190435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313546 n

end

end A313884.P4606615645925190435

namespace A313884

/-- `A005843(A008706(n))-A313546(n)` -/
def P4606615645925190435.Spec : Prop :=
  ∀ n, P4606615645925190435.a n = A313884 n

end A313884

/-! ## A313884.P26052789628497471

`A314247(n)-∑[A021913(A314247(n))]`
-/

namespace A313884.P26052789628497471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A314247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313884.P26052789628497471

namespace A313884

/-- `A314247(n)-∑[A021913(A314247(n))]` -/
def P26052789628497471.Spec : Prop :=
  ∀ n, P26052789628497471.a n = A313884 n

end A313884

/-!
# A313885: Coordination sequence Gal.5.308.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313885, the canonical program `A313885.P9087473460656170900` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313885 has offset 0).

The definition of A313885 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313885.P9087473460656170900

`A047513(n+1)+A313703(n)-n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313885

/-- `A047513(n+1)+A313703(n)-n` -/
def P9087473460656170900.Spec : Prop :=
  ∀ n, P9087473460656170900.a n = A313885 n

theorem P9087473460656170900.correct : P9087473460656170900.Spec := by
  intro n
  simp only [A313885]

end A313885

/-! ## A313885.P4889197572658935807

`A312065(n)+A004396(record[A283971(n)])`
-/

namespace A313885.P4889197572658935807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A004396 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A313885.P4889197572658935807

namespace A313885

/-- `A312065(n)+A004396(record[A283971(n)])` -/
def P4889197572658935807.Spec : Prop :=
  ∀ n, P4889197572658935807.a n = A313885 n

end A313885

/-! ## A313885.P1975020664286164721

`A312065(n)+A004396(A004396(2*n))`
-/

namespace A313885.P1975020664286164721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + A004396 (A004396 (2 * n)).toNat

end

end A313885.P1975020664286164721

namespace A313885

/-- `A312065(n)+A004396(A004396(2*n))` -/
def P1975020664286164721.Spec : Prop :=
  ∀ n, P1975020664286164721.a n = A313885 n

end A313885

/-! ## A313885.P7945190158959390292

`A312065(n)+A313703(n)-A008574(n)`
-/

namespace A313885.P7945190158959390292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 n + (A313703 n - A008574 n)

end

end A313885.P7945190158959390292

namespace A313885

/-- `A312065(n)+A313703(n)-A008574(n)` -/
def P7945190158959390292.Spec : Prop :=
  ∀ n, P7945190158959390292.a n = A313885 n

end A313885

/-! ## A313885.P14276180798733558988

`A301697(n)-A002264(A008612(2*(n+2)))`
-/

namespace A313885.P14276180798733558988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A002264 (A008612 (2 * (n + 2))).toNat

end

end A313885.P14276180798733558988

namespace A313885

/-- `A301697(n)-A002264(A008612(2*(n+2)))` -/
def P14276180798733558988.Spec : Prop :=
  ∀ n, P14276180798733558988.a n = A313885 n

end A313885

/-! ## A313885.P16690054595497158836

`A315523(n)-A004525(A004396(n))`
-/

namespace A313885.P16690054595497158836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A004525 (A004396 n).toNat

end

end A313885.P16690054595497158836

namespace A313885

/-- `A315523(n)-A004525(A004396(n))` -/
def P16690054595497158836.Spec : Prop :=
  ∀ n, P16690054595497158836.a n = A313885 n

end A313885

/-! ## A313885.P1301932157755182340

`A315523(n)-A004525(A274616(n))`
-/

namespace A313885.P1301932157755182340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A004525 (A274616 n).toNat

end

end A313885.P1301932157755182340

namespace A313885

/-- `A315523(n)-A004525(A274616(n))` -/
def P1301932157755182340.Spec : Prop :=
  ∀ n, P1301932157755182340.a n = A313885 n

end A313885

/-! ## A313885.P5081374206093287995

`A314247(n)+1-A086161(A042965(n+1))`
-/

namespace A313885.P5081374206093287995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n + (1 - A086161 (A042965 (n + 1)).toNat)

end

end A313885.P5081374206093287995

namespace A313885

/-- `A314247(n)+1-A086161(A042965(n+1))` -/
def P5081374206093287995.Spec : Prop :=
  ∀ n, P5081374206093287995.a n = A313885 n

end A313885

/-! ## A313885.P16567915680322155000

`A004525(A311312(2*n))+A004396(A004396(2*n))`
-/

namespace A313885.P16567915680322155000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A311312 (2 * n)).toNat + A004396 (A004396 (2 * n)).toNat

end

end A313885.P16567915680322155000

namespace A313885

/-- `A004525(A311312(2*n))+A004396(A004396(2*n))` -/
def P16567915680322155000.Spec : Prop :=
  ∀ n, P16567915680322155000.a n = A313885 n

end A313885

/-!
# A313886: Coordination sequence Gal.4.143.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313886, the canonical program `A313886.P7964654084848802356` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313886 has offset 0).

The definition of A313886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313886.P7964654084848802356

`A314065(n)+A238468(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313886

/-- `A314065(n)+A238468(n)` -/
def P7964654084848802356.Spec : Prop :=
  ∀ n, P7964654084848802356.a n = A313886 n

theorem P7964654084848802356.correct : P7964654084848802356.Spec := by
  intro n
  simp only [A313886]

end A313886

/-! ## A313886.P8266058207497971930

`A315032(n)+Δ[A011858(n)]`
-/

namespace A313886.P8266058207497971930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + (f1 (n + 1) - f1 n)

end

end A313886.P8266058207497971930

namespace A313886

/-- `A315032(n)+Δ[A011858(n)]` -/
def P8266058207497971930.Spec : Prop :=
  ∀ n, P8266058207497971930.a n = A313886 n

end A313886

/-! ## A313886.P1505237590457626864

`A315032(n)+A057354(n+1)`
-/

namespace A313886.P1505237590457626864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + A057354 (n + 1)

end

end A313886.P1505237590457626864

namespace A313886

/-- `A315032(n)+A057354(n+1)` -/
def P1505237590457626864.Spec : Prop :=
  ∀ n, P1505237590457626864.a n = A313886 n

end A313886

/-! ## A313886.P11218042232275649950

`A047263(2*n+1)+A315032(n)-2*n`
-/

namespace A313886.P11218042232275649950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (2 * n + 1) + (A315032 n - (2 * n : ℤ))

end

end A313886.P11218042232275649950

namespace A313886

/-- `A047263(2*n+1)+A315032(n)-2*n` -/
def P11218042232275649950.Spec : Prop :=
  ∀ n, P11218042232275649950.a n = A313886 n

end A313886

/-! ## A313886.P2035188887364257135

`A315032(n)+A110654(A090223(n))`
-/

namespace A313886.P2035188887364257135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + A110654 (A090223 n).toNat

end

end A313886.P2035188887364257135

namespace A313886

/-- `A315032(n)+A110654(A090223(n))` -/
def P2035188887364257135.Spec : Prop :=
  ∀ n, P2035188887364257135.a n = A313886 n

end A313886

/-! ## A313886.P1155953590856274602

`A315032(n)+A002264(A047263(n+2))`
-/

namespace A313886.P1155953590856274602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315032 n + A002264 (A047263 (n + 2)).toNat

end

end A313886.P1155953590856274602

namespace A313886

/-- `A315032(n)+A002264(A047263(n+2))` -/
def P1155953590856274602.Spec : Prop :=
  ∀ n, P1155953590856274602.a n = A313886 n

end A313886

/-! ## A313886.P1822461021161773624

`A047486(n+1)+A315032(n)-A047263(n+1)`
-/

namespace A313886.P1822461021161773624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A315032 n - A047263 (n + 1))

end

end A313886.P1822461021161773624

namespace A313886

/-- `A047486(n+1)+A315032(n)-A047263(n+1)` -/
def P1822461021161773624.Spec : Prop :=
  ∀ n, P1822461021161773624.a n = A313886 n

end A313886

/-!
# A313887: Coordination sequence Gal.6.331.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313887, the canonical program `A313887.P5397836189599980398` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313887 has offset 0).

The definition of A313887 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2185 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313887.P5397836189599980398

`abs(A008592(n)-A313543(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313887

/-- `abs(A008592(n)-A313543(n))` -/
def P5397836189599980398.Spec : Prop :=
  ∀ n, P5397836189599980398.a n = A313887 n

theorem P5397836189599980398.correct : P5397836189599980398.Spec := by
  intro n
  simp only [A313887]

end A313887

/-! ## A313887.P12832288401644988390

`A313779(n)+Δ[A011864(n)]`
-/

namespace A313887.P12832288401644988390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313779 n + (f1 (n + 1) - f1 n)

end

end A313887.P12832288401644988390

namespace A313887

/-- `A313779(n)+Δ[A011864(n)]` -/
def P12832288401644988390.Spec : Prop :=
  ∀ n, P12832288401644988390.a n = A313887 n

end A313887

/-! ## A313887.P6192992045894908419

`2*A008706(n)-A313543(n)`
-/

namespace A313887.P6192992045894908419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313543 n

end

end A313887.P6192992045894908419

namespace A313887

/-- `2*A008706(n)-A313543(n)` -/
def P6192992045894908419.Spec : Prop :=
  ∀ n, P6192992045894908419.a n = A313887 n

end A313887

/-! ## A313887.P4678488523162889160

`A008458(n)+A008574(n)-A313543(n)`
-/

namespace A313887.P4678488523162889160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313543 n)

end

end A313887.P4678488523162889160

namespace A313887

/-- `A008458(n)+A008574(n)-A313543(n)` -/
def P4678488523162889160.Spec : Prop :=
  ∀ n, P4678488523162889160.a n = A313887 n

end A313887

/-! ## A313887.P15884770507105514097

`A008458(n)-A004525(A008458(n)-A312606(n))`
-/

namespace A313887.P15884770507105514097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004525 (A008458 n - A312606 n).toNat

end

end A313887.P15884770507105514097

namespace A313887

/-- `A008458(n)-A004525(A008458(n)-A312606(n))` -/
def P15884770507105514097.Spec : Prop :=
  ∀ n, P15884770507105514097.a n = A313887 n

end A313887

/-! ## A313887.P16691503367733898216

`2*n+A004396(A313247(n))`
-/

namespace A313887.P16691503367733898216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A313247 n).toNat

end

end A313887.P16691503367733898216

namespace A313887

/-- `2*n+A004396(A313247(n))` -/
def P16691503367733898216.Spec : Prop :=
  ∀ n, P16691503367733898216.a n = A313887 n

end A313887

/-! ## A313887.P8592768061980004052

`A004396(A315034(n))+2*n`
-/

namespace A313887.P8592768061980004052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315034 n).toNat + (2 * n : ℤ)

end

end A313887.P8592768061980004052

namespace A313887

/-- `A004396(A315034(n))+2*n` -/
def P8592768061980004052.Spec : Prop :=
  ∀ n, P8592768061980004052.a n = A313887 n

end A313887

/-! ## A313887.P13840811970586326775

`A004396(A315056(n))+2*n`
-/

namespace A313887.P13840811970586326775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315056 n).toNat + (2 * n : ℤ)

end

end A313887.P13840811970586326775

namespace A313887

/-- `A004396(A315056(n))+2*n` -/
def P13840811970586326775.Spec : Prop :=
  ∀ n, P13840811970586326775.a n = A313887 n

end A313887

/-! ## A313887.P1827550824924675663

`A005843(n)+A004396(A315034(n))`
-/

namespace A313887.P1827550824924675663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315034 n).toNat

end

end A313887.P1827550824924675663

namespace A313887

/-- `A005843(n)+A004396(A315034(n))` -/
def P1827550824924675663.Spec : Prop :=
  ∀ n, P1827550824924675663.a n = A313887 n

end A313887

/-! ## A313887.P14263511776119079014

`A005843(n)+A004396(A315056(n))`
-/

namespace A313887.P14263511776119079014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315056 n).toNat

end

end A313887.P14263511776119079014

namespace A313887

/-- `A005843(n)+A004396(A315056(n))` -/
def P14263511776119079014.Spec : Prop :=
  ∀ n, P14263511776119079014.a n = A313887 n

end A313887

/-! ## A313887.P18218430510520289498

`A008585(n)-(n-A004396(A313247(n)))`
-/

namespace A313887.P18218430510520289498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A313247 n).toNat)

end

end A313887.P18218430510520289498

namespace A313887

/-- `A008585(n)-(n-A004396(A313247(n)))` -/
def P18218430510520289498.Spec : Prop :=
  ∀ n, P18218430510520289498.a n = A313887 n

end A313887

/-! ## A313887.P17844378275752256520

`A311686(2*n)-4*n+n`
-/

namespace A313887.P17844378275752256520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311686 (2 * n) - (4 * n : ℤ) + (n : ℤ)

end

end A313887.P17844378275752256520

namespace A313887

/-- `A311686(2*n)-4*n+n` -/
def P17844378275752256520.Spec : Prop :=
  ∀ n, P17844378275752256520.a n = A313887 n

end A313887

/-! ## A313887.P9928959295961191987

`A004396(A313247(n)+A008486(n))`
-/

namespace A313887.P9928959295961191987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313247 n + A008486 n).toNat

end

end A313887.P9928959295961191987

namespace A313887

/-- `A004396(A313247(n)+A008486(n))` -/
def P9928959295961191987.Spec : Prop :=
  ∀ n, P9928959295961191987.a n = A313887 n

end A313887

/-! ## A313887.P4452951418301322156

`A004396(A313247(n)+A008585(n))`
-/

namespace A313887.P4452951418301322156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313247 n + A008585 n).toNat

end

end A313887.P4452951418301322156

namespace A313887

/-- `A004396(A313247(n)+A008585(n))` -/
def P4452951418301322156.Spec : Prop :=
  ∀ n, P4452951418301322156.a n = A313887 n

end A313887

/-! ## A313887.P7066389231456928538

`lcm(2, A310505(2*n))/2`
-/

namespace A313887.P7066389231456928538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A310505 (2 * n)) : ℚ) / 2

end

end A313887.P7066389231456928538

namespace A313887

/-- `lcm(2, A310505(2*n))/2` -/
def P7066389231456928538.Spec : Prop :=
  ∀ n, P7066389231456928538.a n = (A313887 n : ℚ)

end A313887

/-! ## A313887.P2593198230545547808

`A314221(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313887.P2593198230545547808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314221 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313887.P2593198230545547808

namespace A313887

/-- `A314221(2*n)+A008458(n+1)-(12*n+6)` -/
def P2593198230545547808.Spec : Prop :=
  ∀ n, P2593198230545547808.a n = A313887 n

end A313887

/-! ## A313887.P15900035729603042511

`A004525(A310465(2*n))`
-/

namespace A313887.P15900035729603042511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310465 (2 * n)).toNat

end

end A313887.P15900035729603042511

namespace A313887

/-- `A004525(A310465(2*n))` -/
def P15900035729603042511.Spec : Prop :=
  ∀ n, P15900035729603042511.a n = A313887 n

end A313887

/-! ## A313887.P17076135120640482393

`A004525(A310505(2*n))`
-/

namespace A313887.P17076135120640482393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310505 (2 * n)).toNat

end

end A313887.P17076135120640482393

namespace A313887

/-- `A004525(A310505(2*n))` -/
def P17076135120640482393.Spec : Prop :=
  ∀ n, P17076135120640482393.a n = A313887 n

end A313887

/-! ## A313887.P7621460086321155856

`A004525(A313753(2*n))`
-/

namespace A313887.P7621460086321155856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313753 (2 * n)).toNat

end

end A313887.P7621460086321155856

namespace A313887

/-- `A004525(A313753(2*n))` -/
def P7621460086321155856.Spec : Prop :=
  ∀ n, P7621460086321155856.a n = A313887 n

end A313887

/-! ## A313887.P1111267458265854653

`A004526(A310505(2*n)+1)`
-/

namespace A313887.P1111267458265854653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A310505 (2 * n) + 1).toNat

end

end A313887.P1111267458265854653

namespace A313887

/-- `A004526(A310505(2*n)+1)` -/
def P1111267458265854653.Spec : Prop :=
  ∀ n, P1111267458265854653.a n = A313887 n

end A313887

/-!
# A313888: Coordination sequence Gal.5.311.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313888, the canonical program `A313888.P2302443241268542950` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313888 has offset 0).

The definition of A313888 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 938 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313888.P6360652858594644765

`2*A008574(2*n)-A314075(2*n)`
-/

namespace A313888.P6360652858594644765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314075 (2 * n)

end

end A313888.P6360652858594644765

namespace A313888

/-- `2*A008574(2*n)-A314075(2*n)` -/
def P6360652858594644765.Spec : Prop :=
  ∀ n, P6360652858594644765.a n = A313888 n

end A313888

/-! ## A313888.P7599012116549134325

`2*A022144(n)-A314075(A005843(n))`
-/

namespace A313888.P7599012116549134325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022144 n - A314075 (A005843 n).toNat

end

end A313888.P7599012116549134325

namespace A313888

/-- `2*A022144(n)-A314075(A005843(n))` -/
def P7599012116549134325.Spec : Prop :=
  ∀ n, P7599012116549134325.a n = A313888 n

end A313888

/-! ## A313888.P5820879504016607794

`A005843(A022144(n))-A314075(A005843(n))`
-/

namespace A313888.P5820879504016607794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A022144 n).toNat - A314075 (A005843 n).toNat

end

end A313888.P5820879504016607794

namespace A313888

/-- `A005843(A022144(n))-A314075(A005843(n))` -/
def P5820879504016607794.Spec : Prop :=
  ∀ n, P5820879504016607794.a n = A313888 n

end A313888

/-! ## A313888.P2302443241268542950

`A004525(A313907(n)+A313892(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A313888

/-- `A004525(A313907(n)+A313892(n))` -/
def P2302443241268542950.Spec : Prop :=
  ∀ n, P2302443241268542950.a n = A313888 n

theorem P2302443241268542950.correct : P2302443241268542950.Spec := by
  intro n
  simp only [A313888]

end A313888

/-! ## A313888.P5679645513875276743

`A004525(A314128(2*n)-A244895(n))`
-/

namespace A313888.P5679645513875276743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314128 (2 * n) - A244895 n).toNat

end

end A313888.P5679645513875276743

namespace A313888

/-- `A004525(A314128(2*n)-A244895(n))` -/
def P5679645513875276743.Spec : Prop :=
  ∀ n, P5679645513875276743.a n = A313888 n

end A313888

/-! ## A313888.P12616200630889167258

`A004525(A314128(2*n)-A330025(2*n))`
-/

namespace A313888.P12616200630889167258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314128 (2 * n) - A330025 (2 * n)).toNat

end

end A313888.P12616200630889167258

namespace A313888

/-- `A004525(A314128(2*n)-A330025(2*n))` -/
def P12616200630889167258.Spec : Prop :=
  ∀ n, P12616200630889167258.a n = A313888 n

end A313888

/-!
# A313889: Coordination sequence Gal.6.652.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313889, the canonical program `A313889.P12222202445446498340` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313889 has offset 0).

The definition of A313889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313889.P4844438048429116985

`A250120(n)+∑[A021913(A028242(n))]`
-/

namespace A313889.P4844438048429116985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313889.P4844438048429116985

namespace A313889

/-- `A250120(n)+∑[A021913(A028242(n))]` -/
def P4844438048429116985.Spec : Prop :=
  ∀ n, P4844438048429116985.a n = A313889 n

end A313889

/-! ## A313889.P17452251556819955614

`A250120(n)+∑[A021913(A032766(n))]`
-/

namespace A313889.P17452251556819955614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313889.P17452251556819955614

namespace A313889

/-- `A250120(n)+∑[A021913(A032766(n))]` -/
def P17452251556819955614.Spec : Prop :=
  ∀ n, P17452251556819955614.a n = A313889 n

end A313889

/-! ## A313889.P1846572550234940137

`A250120(n)+∑[A021913(A071045(n))]`
-/

namespace A313889.P1846572550234940137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A071045 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313889.P1846572550234940137

namespace A313889

/-- `A250120(n)+∑[A021913(A071045(n))]` -/
def P1846572550234940137.Spec : Prop :=
  ∀ n, P1846572550234940137.a n = A313889 n

end A313889

/-! ## A313889.P12222202445446498340

`A312943(n)+A004396(A047263(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313889

/-- `A312943(n)+A004396(A047263(n+1))` -/
def P12222202445446498340.Spec : Prop :=
  ∀ n, P12222202445446498340.a n = A313889 n

theorem P12222202445446498340.correct : P12222202445446498340.Spec := by
  intro n
  simp only [A313889]

end A313889

/-! ## A313889.P14938949218802056806

`A312943(n)+A004525(A047486(n+1))`
-/

namespace A313889.P14938949218802056806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + A004525 (A047486 (n + 1)).toNat

end

end A313889.P14938949218802056806

namespace A313889

/-- `A312943(n)+A004525(A047486(n+1))` -/
def P14938949218802056806.Spec : Prop :=
  ∀ n, P14938949218802056806.a n = A313889 n

end A313889

/-! ## A313889.P15211673790358448384

`A250120(n)+A312943(n)-A008574(n)`
-/

namespace A313889.P15211673790358448384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A312943 n - A008574 n)

end

end A313889.P15211673790358448384

namespace A313889

/-- `A250120(n)+A312943(n)-A008574(n)` -/
def P15211673790358448384.Spec : Prop :=
  ∀ n, P15211673790358448384.a n = A313889 n

end A313889

/-! ## A313889.P14215934419587795643

`A008458(n)+A250120(n)-A315520(n)`
-/

namespace A313889.P14215934419587795643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315520 n)

end

end A313889.P14215934419587795643

namespace A313889

/-- `A008458(n)+A250120(n)-A315520(n)` -/
def P14215934419587795643.Spec : Prop :=
  ∀ n, P14215934419587795643.a n = A313889 n

end A313889

/-! ## A313889.P4591795068896210030

`A250120(n)+∑[A021913(A301710(n))]`
-/

namespace A313889.P4591795068896210030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A301710 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313889.P4591795068896210030

namespace A313889

/-- `A250120(n)+∑[A021913(A301710(n))]` -/
def P4591795068896210030.Spec : Prop :=
  ∀ n, P4591795068896210030.a n = A313889 n

end A313889

/-! ## A313889.P12901683914096656663

`A250120(n)+∑[A000035(A054925(n))]`
-/

namespace A313889.P12901683914096656663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A054925 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313889.P12901683914096656663

namespace A313889

/-- `A250120(n)+∑[A000035(A054925(n))]` -/
def P12901683914096656663.Spec : Prop :=
  ∀ n, P12901683914096656663.a n = A313889 n

end A313889

/-! ## A313889.P7413089453063857354

`A250120(n)+Δ[A004524(A161680(n))]`
-/

namespace A313889.P7413089453063857354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A161680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (f1 (n + 1) - f1 n)

end

end A313889.P7413089453063857354

namespace A313889

/-- `A250120(n)+Δ[A004524(A161680(n))]` -/
def P7413089453063857354.Spec : Prop :=
  ∀ n, P7413089453063857354.a n = A313889 n

end A313889

/-!
# A313890: Coordination sequence Gal.6.648.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313890, the canonical program `A313890.P2997046397026414357` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313890 has offset 0).

The definition of A313890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2265 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313890.P17831761236916223486

`∪[A313896(2*n+1), A313877(2*n)]`
-/

namespace A313890.P17831761236916223486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313896 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313877 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A313890.P17831761236916223486

namespace A313890

/-- `∪[A313896(2*n+1), A313877(2*n)]` -/
def P17831761236916223486.Spec : Prop :=
  ∀ n, (P17831761236916223486.a n : ℤ) = A313890 n

end A313890

/-! ## A313890.P2997046397026414357

`∪[A313891(2*n+1), A313894(2*n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A313890

/-- `∪[A313891(2*n+1), A313894(2*n)]` -/
def P2997046397026414357.Spec : Prop :=
  ∀ n, (P2997046397026414357.a n : ℤ) = A313890 n

theorem P2997046397026414357.correct : P2997046397026414357.Spec := by
  intro n
  simp only [A313890]

end A313890

/-! ## A313890.P17436508166695293670

`A004525(A313894(n)+A313877(n))`
-/

namespace A313890.P17436508166695293670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313894 n + A313877 n).toNat

end

end A313890.P17436508166695293670

namespace A313890

/-- `A004525(A313894(n)+A313877(n))` -/
def P17436508166695293670.Spec : Prop :=
  ∀ n, P17436508166695293670.a n = A313890 n

end A313890

/-! ## A313890.P11295773831127949110

`A004525(A313914(n)+A313896(n))`
-/

namespace A313890.P11295773831127949110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313914 n + A313896 n).toNat

end

end A313890.P11295773831127949110

namespace A313890

/-- `A004525(A313914(n)+A313896(n))` -/
def P11295773831127949110.Spec : Prop :=
  ∀ n, P11295773831127949110.a n = A313890 n

end A313890

/-! ## A313890.P14150816412332556035

`A000196(A117450(12*n))`
-/

namespace A313890.P14150816412332556035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A117450 (12 * n)).toNat

end

end A313890.P14150816412332556035

namespace A313890

/-- `A000196(A117450(12*n))` -/
def P14150816412332556035.Spec : Prop :=
  ∀ n, P14150816412332556035.a n = A313890 n

end A313890

/-!
# A313891: Coordination sequence Gal.4.142.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313891, the canonical program `A313891.P9038549751761829655` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313891 has offset 0).

The definition of A313891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313891.P9189721022443460030

`A311924(n)+n`
-/

namespace A313891.P9189721022443460030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311924 n + (n : ℤ)

end

end A313891.P9189721022443460030

namespace A313891

/-- `A311924(n)+n` -/
def P9189721022443460030.Spec : Prop :=
  ∀ n, P9189721022443460030.a n = A313891 n

end A313891

/-! ## A313891.P9038549751761829655

`A313213(n)+A004525(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313891

/-- `A313213(n)+A004525(n)` -/
def P9038549751761829655.Spec : Prop :=
  ∀ n, P9038549751761829655.a n = A313891 n

theorem P9038549751761829655.correct : P9038549751761829655.Spec := by
  intro n
  simp only [A313891]

end A313891

/-! ## A313891.P10698907272464076840

`abs(A008592(n)-A313540(n))`
-/

namespace A313891.P10698907272464076840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313540 n|

end

end A313891.P10698907272464076840

namespace A313891

/-- `abs(A008592(n)-A313540(n))` -/
def P10698907272464076840.Spec : Prop :=
  ∀ n, P10698907272464076840.a n = A313891 n

end A313891

/-! ## A313891.P936061456016677352

`A314912(n)+n-A004525(n)`
-/

namespace A313891.P936061456016677352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n + ((n : ℤ) - A004525 n)

end

end A313891.P936061456016677352

namespace A313891

/-- `A314912(n)+n-A004525(n)` -/
def P936061456016677352.Spec : Prop :=
  ∀ n, P936061456016677352.a n = A313891 n

end A313891

/-! ## A313891.P18361682465969674030

`A315058(n)+n-A004396(n)`
-/

namespace A313891.P18361682465969674030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315058 n + ((n : ℤ) - A004396 n)

end

end A313891.P18361682465969674030

namespace A313891

/-- `A315058(n)+n-A004396(n)` -/
def P18361682465969674030.Spec : Prop :=
  ∀ n, P18361682465969674030.a n = A313891 n

end A313891

/-! ## A313891.P7547299923593539021

`A005843(n)-(n-A311924(n))`
-/

namespace A313891.P7547299923593539021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311924 n)

end

end A313891.P7547299923593539021

namespace A313891

/-- `A005843(n)-(n-A311924(n))` -/
def P7547299923593539021.Spec : Prop :=
  ∀ n, P7547299923593539021.a n = A313891 n

end A313891

/-! ## A313891.P9543540716870172207

`A313246(n)+A004525(A128834(n)+n)`
-/

namespace A313891.P9543540716870172207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A004525 (A128834 n + (n : ℤ)).toNat

end

end A313891.P9543540716870172207

namespace A313891

/-- `A313246(n)+A004525(A128834(n)+n)` -/
def P9543540716870172207.Spec : Prop :=
  ∀ n, P9543540716870172207.a n = A313891 n

end A313891

/-! ## A313891.P7784846788883129945

`A314841(n)+n-A004525(A004396(n))`
-/

namespace A313891.P7784846788883129945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314841 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313891.P7784846788883129945

namespace A313891

/-- `A314841(n)+n-A004525(A004396(n))` -/
def P7784846788883129945.Spec : Prop :=
  ∀ n, P7784846788883129945.a n = A313891 n

end A313891

/-! ## A313891.P10611704711202515476

`A314847(n)+n-A004396(A004525(n))`
-/

namespace A313891.P10611704711202515476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314847 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313891.P10611704711202515476

namespace A313891

/-- `A314847(n)+n-A004396(A004525(n))` -/
def P10611704711202515476.Spec : Prop :=
  ∀ n, P10611704711202515476.a n = A313891 n

end A313891

/-! ## A313891.P831743762927041363

`A008458(n)+A008574(n)-A313540(n)`
-/

namespace A313891.P831743762927041363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313540 n)

end

end A313891.P831743762927041363

namespace A313891

/-- `A008458(n)+A008574(n)-A313540(n)` -/
def P831743762927041363.Spec : Prop :=
  ∀ n, P831743762927041363.a n = A313891 n

end A313891

/-! ## A313891.P17486499220797864063

`A008486(n)+A315058(n)-A008576(n)`
-/

namespace A313891.P17486499220797864063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315058 n - A008576 n)

end

end A313891.P17486499220797864063

namespace A313891

/-- `A008486(n)+A315058(n)-A008576(n)` -/
def P17486499220797864063.Spec : Prop :=
  ∀ n, P17486499220797864063.a n = A313891 n

end A313891

/-! ## A313891.P5400864453243858974

`A004396(n)+A313707(n)-A004525(A004396(n))`
-/

namespace A313891.P5400864453243858974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313707 n - A004525 (A004396 n).toNat)

end

end A313891.P5400864453243858974

namespace A313891

/-- `A004396(n)+A313707(n)-A004525(A004396(n))` -/
def P5400864453243858974.Spec : Prop :=
  ∀ n, P5400864453243858974.a n = A313891 n

end A313891

/-! ## A313891.P17985871705247929325

`A004525(n)+A313833(n)-A004525(A004396(n))`
-/

namespace A313891.P17985871705247929325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313833 n - A004525 (A004396 n).toNat)

end

end A313891.P17985871705247929325

namespace A313891

/-- `A004525(n)+A313833(n)-A004525(A004396(n))` -/
def P17985871705247929325.Spec : Prop :=
  ∀ n, P17985871705247929325.a n = A313891 n

end A313891

/-! ## A313891.P918347498944997350

`A315455(n)-A128834(n)`
-/

namespace A313891.P918347498944997350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315455 n - A128834 n

end

end A313891.P918347498944997350

namespace A313891

/-- `A315455(n)-A128834(n)` -/
def P918347498944997350.Spec : Prop :=
  ∀ n, P918347498944997350.a n = A313891 n

end A313891

/-! ## A313891.P4458709529354639963

`abs(A008593(n)-A315700(n))`
-/

namespace A313891.P4458709529354639963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315700 n|

end

end A313891.P4458709529354639963

namespace A313891

/-- `abs(A008593(n)-A315700(n))` -/
def P4458709529354639963.Spec : Prop :=
  ∀ n, P4458709529354639963.a n = A313891 n

end A313891

/-! ## A313891.P6775813001775218137

`A315527(n)-A047424(n+1)+n`
-/

namespace A313891.P6775813001775218137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315527 n - A047424 (n + 1) + (n : ℤ)

end

end A313891.P6775813001775218137

namespace A313891

/-- `A315527(n)-A047424(n+1)+n` -/
def P6775813001775218137.Spec : Prop :=
  ∀ n, P6775813001775218137.a n = A313891 n

end A313891

/-! ## A313891.P4244213220405551695

`A004396(A313251(n))+2*n`
-/

namespace A313891.P4244213220405551695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313251 n).toNat + (2 * n : ℤ)

end

end A313891.P4244213220405551695

namespace A313891

/-- `A004396(A313251(n))+2*n` -/
def P4244213220405551695.Spec : Prop :=
  ∀ n, P4244213220405551695.a n = A313891 n

end A313891

/-! ## A313891.P16933714146635322000

`A004396(A315067(n))+2*n`
-/

namespace A313891.P16933714146635322000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315067 n).toNat + (2 * n : ℤ)

end

end A313891.P16933714146635322000

namespace A313891

/-- `A004396(A315067(n))+2*n` -/
def P16933714146635322000.Spec : Prop :=
  ∀ n, P16933714146635322000.a n = A313891 n

end A313891

/-! ## A313891.P11394722337904103913

`A004396(A313924(n)+n)+n`
-/

namespace A313891.P11394722337904103913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313924 n + (n : ℤ)).toNat + (n : ℤ)

end

end A313891.P11394722337904103913

namespace A313891

/-- `A004396(A313924(n)+n)+n` -/
def P11394722337904103913.Spec : Prop :=
  ∀ n, P11394722337904103913.a n = A313891 n

end A313891

/-! ## A313891.P11158515761227625806

`A004396(2*A311924(n)-A004396(n))`
-/

namespace A313891.P11158515761227625806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A311924 n - A004396 n).toNat

end

end A313891.P11158515761227625806

namespace A313891

/-- `A004396(2*A311924(n)-A004396(n))` -/
def P11158515761227625806.Spec : Prop :=
  ∀ n, P11158515761227625806.a n = A313891 n

end A313891

/-!
# A313892: Coordination sequence Gal.5.309.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313892, the canonical program `A313892.P4540167751234149793` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313892 has offset 0).

The definition of A313892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313892.P8147397437916573488

`A004396(A022144(n)-A316569(n))`
-/

namespace A313892.P8147397437916573488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A022144 n - A316569 n).toNat

end

end A313892.P8147397437916573488

namespace A313892

/-- `A004396(A022144(n)-A316569(n))` -/
def P8147397437916573488.Spec : Prop :=
  ∀ n, P8147397437916573488.a n = A313892 n

end A313892

/-! ## A313892.P4540167751234149793

`A004396(A008574(2*n)-A316569(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313892

/-- `A004396(A008574(2*n)-A316569(n))` -/
def P4540167751234149793.Spec : Prop :=
  ∀ n, P4540167751234149793.a n = A313892 n

theorem P4540167751234149793.correct : P4540167751234149793.Spec := by
  intro n
  simp only [A313892]

end A313892

/-! ## A313892.P10518646198484090402

`A004396(A008574(n)+A008574(n)-A316569(n))`
-/

namespace A313892.P10518646198484090402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 n + (A008574 n - A316569 n)).toNat

end

end A313892.P10518646198484090402

namespace A313892

/-- `A004396(A008574(n)+A008574(n)-A316569(n))` -/
def P10518646198484090402.Spec : Prop :=
  ∀ n, P10518646198484090402.a n = A313892 n

end A313892

/-! ## A313892.P17446844730464407953

`A004396(A008574(n)-(A316569(n)-A008574(n)))`
-/

namespace A313892.P17446844730464407953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008574 n - (A316569 n - A008574 n)).toNat

end

end A313892.P17446844730464407953

namespace A313892

/-- `A004396(A008574(n)-(A316569(n)-A008574(n)))` -/
def P17446844730464407953.Spec : Prop :=
  ∀ n, P17446844730464407953.a n = A313892 n

end A313892

/-! ## A313892.P4343134066457539616

`A010784(A007067(3*n+1)%A377057(3*(n+1)))`
-/

namespace A313892.P4343134066457539616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010784 (Int.tmod (A007067 (3 * n + 1)) (A377057 (3 * (n + 1)))).toNat

end

end A313892.P4343134066457539616

namespace A313892

/-- `A010784(A007067(3*n+1)%A377057(3*(n+1)))` -/
def P4343134066457539616.Spec : Prop :=
  ∀ n, P4343134066457539616.a n = A313892 n

end A313892

/-!
# A313893: Coordination sequence Gal.5.310.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313893, the canonical program `A313893.P866188297290375688` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313893 has offset 0).

The definition of A313893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313893.P1590751878067563165

`A314123(n)-A238470(n)`
-/

namespace A313893.P1590751878067563165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314123 n - A238470 n

end

end A313893.P1590751878067563165

namespace A313893

/-- `A314123(n)-A238470(n)` -/
def P1590751878067563165.Spec : Prop :=
  ∀ n, P1590751878067563165.a n = A313893 n

end A313893

/-! ## A313893.P866188297290375688

`A314838(n)+n-A004525(A004525(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A313893

/-- `A314838(n)+n-A004525(A004525(n))` -/
def P866188297290375688.Spec : Prop :=
  ∀ n, P866188297290375688.a n = A313893 n

theorem P866188297290375688.correct : P866188297290375688.Spec := by
  intro n
  simp only [A313893]

end A313893

/-! ## A313893.P3011676222284264339

`A313115(n)+A314838(n)-A008574(n)`
-/

namespace A313893.P3011676222284264339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + (A314838 n - A008574 n)

end

end A313893.P3011676222284264339

namespace A313893

/-- `A313115(n)+A314838(n)-A008574(n)` -/
def P3011676222284264339.Spec : Prop :=
  ∀ n, P3011676222284264339.a n = A313893 n

end A313893

/-! ## A313893.P2594886990111619945

`A314250(n)-A057357(n+1)`
-/

namespace A313893.P2594886990111619945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A057357 (n + 1)

end

end A313893.P2594886990111619945

namespace A313893

/-- `A314250(n)-A057357(n+1)` -/
def P2594886990111619945.Spec : Prop :=
  ∀ n, P2594886990111619945.a n = A313893 n

end A313893

/-! ## A313893.P12378315789430822595

`A314250(n)-A002264(A074232(n+1))`
-/

namespace A313893.P12378315789430822595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314250 n - A002264 (A074232 (n + 1)).toNat

end

end A313893.P12378315789430822595

namespace A313893

/-- `A314250(n)-A002264(A074232(n+1))` -/
def P12378315789430822595.Spec : Prop :=
  ∀ n, P12378315789430822595.a n = A313893 n

end A313893

/-!
# A313894: Coordination sequence Gal.5.133.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313894, the canonical program `A313894.P14764167295564530616` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313894 has offset 0).

The definition of A313894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313894.P14764167295564530616

`abs(A008592(n)-A313538(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313894

/-- `abs(A008592(n)-A313538(n))` -/
def P14764167295564530616.Spec : Prop :=
  ∀ n, P14764167295564530616.a n = A313894 n

theorem P14764167295564530616.correct : P14764167295564530616.Spec := by
  intro n
  simp only [A313894]

end A313894

/-! ## A313894.P9525195408496981067

`A311710(n)+A047588(n+1)`
-/

namespace A313894.P9525195408496981067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311710 n + A047588 (n + 1)

end

end A313894.P9525195408496981067

namespace A313894

/-- `A311710(n)+A047588(n+1)` -/
def P9525195408496981067.Spec : Prop :=
  ∀ n, P9525195408496981067.a n = A313894 n

end A313894

/-! ## A313894.P5522633022944612780

`(A312555(n)+A008458(n))/2`
-/

namespace A313894.P5522633022944612780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312555 n + A008458 n : ℚ) / 2

end

end A313894.P5522633022944612780

namespace A313894

/-- `(A312555(n)+A008458(n))/2` -/
def P5522633022944612780.Spec : Prop :=
  ∀ n, P5522633022944612780.a n = (A313894 n : ℚ)

end A313894

/-! ## A313894.P16776919305015355078

`2*A008706(n)-A313538(n)`
-/

namespace A313894.P16776919305015355078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313538 n

end

end A313894.P16776919305015355078

namespace A313894

/-- `2*A008706(n)-A313538(n)` -/
def P16776919305015355078.Spec : Prop :=
  ∀ n, P16776919305015355078.a n = A313894 n

end A313894

/-! ## A313894.P9990636039640894527

`A313580(n)+Δ[2*A011862(n)]`
-/

namespace A313894.P9990636039640894527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + (f1 (n + 1) - f1 n)

end

end A313894.P9990636039640894527

namespace A313894

/-- `A313580(n)+Δ[2*A011862(n)]` -/
def P9990636039640894527.Spec : Prop :=
  ∀ n, P9990636039640894527.a n = A313894 n

end A313894

/-! ## A313894.P12927004323152562697

`A312100(n)+A004396(A004396(2*n))`
-/

namespace A313894.P12927004323152562697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312100 n + A004396 (A004396 (2 * n)).toNat

end

end A313894.P12927004323152562697

namespace A313894

/-- `A312100(n)+A004396(A004396(2*n))` -/
def P12927004323152562697.Spec : Prop :=
  ∀ n, P12927004323152562697.a n = A313894 n

end A313894

/-! ## A313894.P15024386226519108725

`A312908(n)+A004396(2*A004396(n))`
-/

namespace A313894.P15024386226519108725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + A004396 (2 * A004396 n).toNat

end

end A313894.P15024386226519108725

namespace A313894

/-- `A312908(n)+A004396(2*A004396(n))` -/
def P15024386226519108725.Spec : Prop :=
  ∀ n, P15024386226519108725.a n = A313894 n

end A313894

/-! ## A313894.P12105970755445180617

`A315068(n)+A004396(n-A004396(n))`
-/

namespace A313894.P12105970755445180617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315068 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313894.P12105970755445180617

namespace A313894

/-- `A315068(n)+A004396(n-A004396(n))` -/
def P12105970755445180617.Spec : Prop :=
  ∀ n, P12105970755445180617.a n = A313894 n

end A313894

/-! ## A313894.P360664830441274538

`A008458(n)+A008574(n)-A313538(n)`
-/

namespace A313894.P360664830441274538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313538 n)

end

end A313894.P360664830441274538

namespace A313894

/-- `A008458(n)+A008574(n)-A313538(n)` -/
def P360664830441274538.Spec : Prop :=
  ∀ n, P360664830441274538.a n = A313894 n

end A313894

/-! ## A313894.P4833441111240311899

`A005843(n)+A005843(A008574(n))-A313538(n)`
-/

namespace A313894.P4833441111240311899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313538 n)

end

end A313894.P4833441111240311899

namespace A313894

/-- `A005843(n)+A005843(A008574(n))-A313538(n)` -/
def P4833441111240311899.Spec : Prop :=
  ∀ n, P4833441111240311899.a n = A313894 n

end A313894

/-! ## A313894.P9959313492977501861

`A312555(n)+A001281(A008458(n)-A312555(n))`
-/

namespace A313894.P9959313492977501861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n + A001281 (A008458 n - A312555 n).toNat

end

end A313894.P9959313492977501861

namespace A313894

/-- `A312555(n)+A001281(A008458(n)-A312555(n))` -/
def P9959313492977501861.Spec : Prop :=
  ∀ n, P9959313492977501861.a n = A313894 n

end A313894

/-! ## A313894.P4981178015092673167

`A312555(n)+A004525(A008458(n)-A312555(n))`
-/

namespace A313894.P4981178015092673167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312555 n + A004525 (A008458 n - A312555 n).toNat

end

end A313894.P4981178015092673167

namespace A313894

/-- `A312555(n)+A004525(A008458(n)-A312555(n))` -/
def P4981178015092673167.Spec : Prop :=
  ∀ n, P4981178015092673167.a n = A313894 n

end A313894

/-! ## A313894.P17273953759356874858

`A314218(n)-A004396(n-A004396(n))`
-/

namespace A313894.P17273953759356874858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314218 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313894.P17273953759356874858

namespace A313894

/-- `A314218(n)-A004396(n-A004396(n))` -/
def P17273953759356874858.Spec : Prop :=
  ∀ n, P17273953759356874858.a n = A313894 n

end A313894

/-! ## A313894.P11258795231802088052

`A313979(n)-Δ[A011862(n)]`
-/

namespace A313894.P11258795231802088052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313979 n - (f1 (n + 1) - f1 n)

end

end A313894.P11258795231802088052

namespace A313894

/-- `A313979(n)-Δ[A011862(n)]` -/
def P11258795231802088052.Spec : Prop :=
  ∀ n, P11258795231802088052.a n = A313894 n

end A313894

/-! ## A313894.P15438520865401444579

`A313979(n)-A004525(A313979(n)-A313835(n))`
-/

namespace A313894.P15438520865401444579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313979 n - A004525 (A313979 n - A313835 n).toNat

end

end A313894.P15438520865401444579

namespace A313894

/-- `A313979(n)-A004525(A313979(n)-A313835(n))` -/
def P15438520865401444579.Spec : Prop :=
  ∀ n, P15438520865401444579.a n = A313894 n

end A313894

/-! ## A313894.P9749698632356286967

`A313746(n)+Δ[A011862(n)]`
-/

namespace A313894.P9749698632356286967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + (f1 (n + 1) - f1 n)

end

end A313894.P9749698632356286967

namespace A313894

/-- `A313746(n)+Δ[A011862(n)]` -/
def P9749698632356286967.Spec : Prop :=
  ∀ n, P9749698632356286967.a n = A313894 n

end A313894

/-! ## A313894.P7576847922361308846

`A004396(n)+A313746(n)-A004396(A004396(n))`
-/

namespace A313894.P7576847922361308846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313746 n - A004396 (A004396 n).toNat)

end

end A313894.P7576847922361308846

namespace A313894

/-- `A004396(n)+A313746(n)-A004396(A004396(n))` -/
def P7576847922361308846.Spec : Prop :=
  ∀ n, P7576847922361308846.a n = A313894 n

end A313894

/-! ## A313894.P4777815398288235720

`A315546(n)-A004396(A004396(n))`
-/

namespace A313894.P4777815398288235720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - A004396 (A004396 n).toNat

end

end A313894.P4777815398288235720

namespace A313894

/-- `A315546(n)-A004396(A004396(n))` -/
def P4777815398288235720.Spec : Prop :=
  ∀ n, P4777815398288235720.a n = A313894 n

end A313894

/-! ## A313894.P5904443091004197924

`A005843(A008706(n))-A313538(n)`
-/

namespace A313894.P5904443091004197924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313538 n

end

end A313894.P5904443091004197924

namespace A313894

/-- `A005843(A008706(n))-A313538(n)` -/
def P5904443091004197924.Spec : Prop :=
  ∀ n, P5904443091004197924.a n = A313894 n

end A313894

/-! ## A313894.P6100356492687469205

`A005843(A008574(n)+n)-A313538(n)`
-/

namespace A313894.P6100356492687469205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313538 n

end

end A313894.P6100356492687469205

namespace A313894

/-- `A005843(A008574(n)+n)-A313538(n)` -/
def P6100356492687469205.Spec : Prop :=
  ∀ n, P6100356492687469205.a n = A313894 n

end A313894

/-!
# A313895: Coordination sequence Gal.6.647.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313895, the canonical program `A313895.P8605907711539961465` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313895 has offset 0).

The definition of A313895 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313895.P8605907711539961465

`A313873(n)+A313926(n)-A313916(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A313895

/-- `A313873(n)+A313926(n)-A313916(n)` -/
def P8605907711539961465.Spec : Prop :=
  ∀ n, P8605907711539961465.a n = A313895 n

theorem P8605907711539961465.correct : P8605907711539961465.Spec := by
  intro n
  simp only [A313895]

end A313895

/-! ## A313895.P15364772426387818263

`A313916(n)+A313926(n)-A313938(n)`
-/

namespace A313895.P15364772426387818263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n + (A313926 n - A313938 n)

end

end A313895.P15364772426387818263

namespace A313895

/-- `A313916(n)+A313926(n)-A313938(n)` -/
def P15364772426387818263.Spec : Prop :=
  ∀ n, P15364772426387818263.a n = A313895 n

end A313895

/-! ## A313895.P5318661867525211109

`A313898(n)+A313915(n)-A313916(n)`
-/

namespace A313895.P5318661867525211109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n + (A313915 n - A313916 n)

end

end A313895.P5318661867525211109

namespace A313895

/-- `A313898(n)+A313915(n)-A313916(n)` -/
def P5318661867525211109.Spec : Prop :=
  ∀ n, P5318661867525211109.a n = A313895 n

end A313895

/-! ## A313895.P2671321095380938695

`A313898(n)+A313926(n)-A313928(n)`
-/

namespace A313895.P2671321095380938695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313898 n + (A313926 n - A313928 n)

end

end A313895.P2671321095380938695

namespace A313895

/-- `A313898(n)+A313926(n)-A313928(n)` -/
def P2671321095380938695.Spec : Prop :=
  ∀ n, P2671321095380938695.a n = A313895 n

end A313895

/-! ## A313895.P7697156688187495053

`A313915(n)+A313928(n)-A313938(n)`
-/

namespace A313895.P7697156688187495053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313915 n + (A313928 n - A313938 n)

end

end A313895.P7697156688187495053

namespace A313895

/-- `A313915(n)+A313928(n)-A313938(n)` -/
def P7697156688187495053.Spec : Prop :=
  ∀ n, P7697156688187495053.a n = A313895 n

end A313895

/-!
# A313896: Coordination sequence Gal.6.364.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313896, there is no canonical definition to state claims against.
-/

/-! ## A313896.P8553522592567782462

`or(A000035(A101060(n+1)), A310513(n))`
-/

namespace A313896.P8553522592567782462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A101060 (n + 1)).toNat) (A310513 n)

end

end A313896.P8553522592567782462

/-! ## A313896.P2417311858844371004

`A313923(n)-A285495(A024727(n+4)+1)`
-/

namespace A313896.P2417311858844371004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313923 n - A285495 (A024727 (n + 4) + 1).toNat

end

end A313896.P2417311858844371004

/-! ## A313896.P11328561491540310382

`xor(A219529(n), A269244(A007716(n)))`
-/

namespace A313896.P11328561491540310382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A219529 n) (A269244 (A007716 n).toNat)

end

end A313896.P11328561491540310382

/-! ## A313896.P2462643895371097753

`A172334(n)+A030315(A001678(2*n))`
-/

namespace A313896.P2462643895371097753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172334 n + A030315 (A001678 (2 * n)).toNat

end

end A313896.P2462643895371097753

/-! ## A313896.P3938062088955511765

`A252474(A301708(n))-A000931(n+4)`
-/

namespace A313896.P3938062088955511765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (A301708 n).toNat - A000931 (n + 4)

end

end A313896.P3938062088955511765

/-!
# A313897: Coordination sequence Gal.4.104.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313897, there is no canonical definition to state claims against.
-/

/-! ## A313897.P4294179784959177422

`A326822(floor(C(n, 2)/6)!)+A313892(n)`
-/

namespace A313897.P4294179784959177422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326822 (Nat.factorial ⌊(Nat.choose n 2 : ℚ) / 6⌋.toNat) + A313892 n

end

end A313897.P4294179784959177422

/-! ## A313897.P9642338385241339851

`A301680(n)+A196563(A048487(n))`
-/

namespace A313897.P9642338385241339851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301680 n + A196563 (A048487 n).toNat

end

end A313897.P9642338385241339851

/-! ## A313897.P15020132238324831254

`xor(A000931(A003269(n)), A178181(n))`
-/

namespace A313897.P15020132238324831254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000931 (A003269 n).toNat) (A178181 n)

end

end A313897.P15020132238324831254

/-! ## A313897.P8655662055603076370

`A313875(n)+A014081(A025527(n+1))`
-/

namespace A313897.P8655662055603076370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n + A014081 (A025527 (n + 1)).toNat

end

end A313897.P8655662055603076370

/-! ## A313897.P5961941360405717112

`A313876(n)+A143536(A083631(n+1))`
-/

namespace A313897.P5961941360405717112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313876 n + A143536 (A083631 (n + 1)).toNat

end

end A313897.P5961941360405717112

/-!
# A313898: Coordination sequence Gal.5.291.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313898, the canonical program `A313898.P2205925592400124822` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313898 has offset 0).

The definition of A313898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2236 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313898.P3941861218940837824

`A311958(n)+n`
-/

namespace A313898.P3941861218940837824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311958 n + (n : ℤ)

end

end A313898.P3941861218940837824

namespace A313898

/-- `A311958(n)+n` -/
def P3941861218940837824.Spec : Prop :=
  ∀ n, P3941861218940837824.a n = A313898 n

end A313898

/-! ## A313898.P10645154150680265255

`A311807(n)+A151988(n)`
-/

namespace A313898.P10645154150680265255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A151988 n

end

end A313898.P10645154150680265255

namespace A313898

/-- `A311807(n)+A151988(n)` -/
def P10645154150680265255.Spec : Prop :=
  ∀ n, P10645154150680265255.a n = A313898 n

end A313898

/-! ## A313898.P2205925592400124822

`A315518(n)-A330025(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A313898

/-- `A315518(n)-A330025(n)` -/
def P2205925592400124822.Spec : Prop :=
  ∀ n, P2205925592400124822.a n = A313898 n

theorem P2205925592400124822.correct : P2205925592400124822.Spec := by
  intro n
  simp only [A313898]

end A313898

/-! ## A313898.P9723209427714815743

`abs(A008592(n)-A313537(n))`
-/

namespace A313898.P9723209427714815743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313537 n|

end

end A313898.P9723209427714815743

namespace A313898

/-- `abs(A008592(n)-A313537(n))` -/
def P9723209427714815743.Spec : Prop :=
  ∀ n, P9723209427714815743.a n = A313898 n

end A313898

/-! ## A313898.P8171217514025960616

`A310238(n)+A047363(n+1)`
-/

namespace A313898.P8171217514025960616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310238 n + A047363 (n + 1)

end

end A313898.P8171217514025960616

namespace A313898

/-- `A310238(n)+A047363(n+1)` -/
def P8171217514025960616.Spec : Prop :=
  ∀ n, P8171217514025960616.a n = A313898 n

end A313898

/-! ## A313898.P13671187090968605432

`A311289(n)+A047263(n+1)`
-/

namespace A313898.P13671187090968605432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A047263 (n + 1)

end

end A313898.P13671187090968605432

namespace A313898

/-- `A311289(n)+A047263(n+1)` -/
def P13671187090968605432.Spec : Prop :=
  ∀ n, P13671187090968605432.a n = A313898 n

end A313898

/-! ## A313898.P4180797760608266774

`A313752(n)+A002266(n+2)`
-/

namespace A313898.P4180797760608266774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n + A002266 (n + 2)

end

end A313898.P4180797760608266774

namespace A313898

/-- `A313752(n)+A002266(n+2)` -/
def P4180797760608266774.Spec : Prop :=
  ∀ n, P4180797760608266774.a n = A313898 n

end A313898

/-! ## A313898.P11780146037266342709

`(A312561(n)+A008458(n))/2`
-/

namespace A313898.P11780146037266342709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312561 n + A008458 n : ℚ) / 2

end

end A313898.P11780146037266342709

namespace A313898

/-- `(A312561(n)+A008458(n))/2` -/
def P11780146037266342709.Spec : Prop :=
  ∀ n, P11780146037266342709.a n = (A313898 n : ℚ)

end A313898

/-! ## A313898.P1087614815927224996

`2*A008706(n)-A313537(n)`
-/

namespace A313898.P1087614815927224996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313537 n

end

end A313898.P1087614815927224996

namespace A313898

/-- `2*A008706(n)-A313537(n)` -/
def P1087614815927224996.Spec : Prop :=
  ∀ n, P1087614815927224996.a n = A313898 n

end A313898

/-! ## A313898.P4035701172765924818

`A314827(n)+n-A330025(n)`
-/

namespace A313898.P4035701172765924818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314827 n + ((n : ℤ) - A330025 n)

end

end A313898.P4035701172765924818

namespace A313898

/-- `A314827(n)+n-A330025(n)` -/
def P4035701172765924818.Spec : Prop :=
  ∀ n, P4035701172765924818.a n = A313898 n

end A313898

/-! ## A313898.P4638658547013440150

`A005843(n)-(n-A311958(n))`
-/

namespace A313898.P4638658547013440150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311958 n)

end

end A313898.P4638658547013440150

namespace A313898

/-- `A005843(n)-(n-A311958(n))` -/
def P4638658547013440150.Spec : Prop :=
  ∀ n, P4638658547013440150.a n = A313898 n

end A313898

/-! ## A313898.P5167048867462013823

`A311289(n)+A057354(A005408(n)+n)`
-/

namespace A313898.P5167048867462013823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + A057354 (A005408 n + (n : ℤ)).toNat

end

end A313898.P5167048867462013823

namespace A313898

/-- `A311289(n)+A057354(A005408(n)+n)` -/
def P5167048867462013823.Spec : Prop :=
  ∀ n, P5167048867462013823.a n = A313898 n

end A313898

/-! ## A313898.P7273191805997448514

`A008458(n)+A008574(n)-A313537(n)`
-/

namespace A313898.P7273191805997448514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313537 n)

end

end A313898.P7273191805997448514

namespace A313898

/-- `A008458(n)+A008574(n)-A313537(n)` -/
def P7273191805997448514.Spec : Prop :=
  ∀ n, P7273191805997448514.a n = A313898 n

end A313898

/-! ## A313898.P14149041038964971199

`A250120(n)+A312948(n)-A008574(n)`
-/

namespace A313898.P14149041038964971199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A312948 n - A008574 n)

end

end A313898.P14149041038964971199

namespace A313898

/-- `A250120(n)+A312948(n)-A008574(n)` -/
def P14149041038964971199.Spec : Prop :=
  ∀ n, P14149041038964971199.a n = A313898 n

end A313898

/-! ## A313898.P1519806215975401363

`A008458(n)+A250120(n)-A315518(n)`
-/

namespace A313898.P1519806215975401363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315518 n)

end

end A313898.P1519806215975401363

namespace A313898

/-- `A008458(n)+A250120(n)-A315518(n)` -/
def P1519806215975401363.Spec : Prop :=
  ∀ n, P1519806215975401363.a n = A313898 n

end A313898

/-! ## A313898.P12638966155416041686

`∑{d}[A008592(n)-A313537(n), A000010(#)]`
-/

namespace A313898.P12638966155416041686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313898.P12638966155416041686

namespace A313898

/-- `∑{d}[A008592(n)-A313537(n), A000010(#)]` -/
def P12638966155416041686.Spec : Prop :=
  ∀ n, P12638966155416041686.a n = A313898 n

end A313898

/-! ## A313898.P6982384778109678623

`A047263(n+1)+A151988(n)+A008486(n)`
-/

namespace A313898.P6982384778109678623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A151988 n + A008486 n)

end

end A313898.P6982384778109678623

namespace A313898

/-- `A047263(n+1)+A151988(n)+A008486(n)` -/
def P6982384778109678623.Spec : Prop :=
  ∀ n, P6982384778109678623.a n = A313898 n

end A313898

/-! ## A313898.P9656937796045696970

`A314252(n)-Δ[A011858(n)]`
-/

namespace A313898.P9656937796045696970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - (f1 (n + 1) - f1 n)

end

end A313898.P9656937796045696970

namespace A313898

/-- `A314252(n)-Δ[A011858(n)]` -/
def P9656937796045696970.Spec : Prop :=
  ∀ n, P9656937796045696970.a n = A313898 n

end A313898

/-! ## A313898.P1046396112296059220

`A314252(n)-A057354(n+1)`
-/

namespace A313898.P1046396112296059220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A057354 (n + 1)

end

end A313898.P1046396112296059220

namespace A313898

/-- `A314252(n)-A057354(n+1)` -/
def P1046396112296059220.Spec : Prop :=
  ∀ n, P1046396112296059220.a n = A313898 n

end A313898

/-! ## A313898.P12490451063293739126

`A314252(n)-A047299(n+1)+n`
-/

namespace A313898.P12490451063293739126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314252 n - A047299 (n + 1) + (n : ℤ)

end

end A313898.P12490451063293739126

namespace A313898

/-- `A314252(n)-A047299(n+1)+n` -/
def P12490451063293739126.Spec : Prop :=
  ∀ n, P12490451063293739126.a n = A313898 n

end A313898

/-!
# A313899: Coordination sequence Gal.6.620.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313899, the canonical program `A313899.P8562321666356515905` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313899 has offset 0).

The definition of A313899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313899.P1436656202183513131

`abs(A008592(n)-A313534(n))`
-/

namespace A313899.P1436656202183513131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313534 n|

end

end A313899.P1436656202183513131

namespace A313899

/-- `abs(A008592(n)-A313534(n))` -/
def P1436656202183513131.Spec : Prop :=
  ∀ n, P1436656202183513131.a n = A313899 n

end A313899

/-! ## A313899.P8562321666356515905

`A313788(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A313899

/-- `A313788(n)+Δ[A011864(n)]` -/
def P8562321666356515905.Spec : Prop :=
  ∀ n, P8562321666356515905.a n = A313899 n

theorem P8562321666356515905.correct : P8562321666356515905.Spec := by
  intro n
  simp only [A313899]

end A313899

/-! ## A313899.P5263818257071393633

`(A312562(n)+A008458(n))/2`
-/

namespace A313899.P5263818257071393633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312562 n + A008458 n : ℚ) / 2

end

end A313899.P5263818257071393633

namespace A313899

/-- `(A312562(n)+A008458(n))/2` -/
def P5263818257071393633.Spec : Prop :=
  ∀ n, P5263818257071393633.a n = (A313899 n : ℚ)

end A313899

/-! ## A313899.P14454874243143390008

`A000038(n)+A008592(n)-A313534(n)`
-/

namespace A313899.P14454874243143390008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313534 n)

end

end A313899.P14454874243143390008

namespace A313899

/-- `A000038(n)+A008592(n)-A313534(n)` -/
def P14454874243143390008.Spec : Prop :=
  ∀ n, P14454874243143390008.a n = A313899 n

end A313899

/-! ## A313899.P13923638266927112634

`A008458(n)+A008574(n)-A313534(n)`
-/

namespace A313899.P13923638266927112634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313534 n)

end

end A313899.P13923638266927112634

namespace A313899

/-- `A008458(n)+A008574(n)-A313534(n)` -/
def P13923638266927112634.Spec : Prop :=
  ∀ n, P13923638266927112634.a n = A313899 n

end A313899

/-! ## A313899.P10446482325536771069

`gcd(A008592(n)-A313534(n), A000038(2*n))`
-/

namespace A313899.P10446482325536771069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A313534 n) (A000038 (2 * n))

end

end A313899.P10446482325536771069

namespace A313899

/-- `gcd(A008592(n)-A313534(n), A000038(2*n))` -/
def P10446482325536771069.Spec : Prop :=
  ∀ n, (P10446482325536771069.a n : ℤ) = A313899 n

end A313899

/-! ## A313899.P1648858008833142275

`A005843(n)+A005843(A008574(n))-A313534(n)`
-/

namespace A313899.P1648858008833142275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313534 n)

end

end A313899.P1648858008833142275

namespace A313899

/-- `A005843(n)+A005843(A008574(n))-A313534(n)` -/
def P1648858008833142275.Spec : Prop :=
  ∀ n, P1648858008833142275.a n = A313899 n

end A313899

/-! ## A313899.P13650857345686022243

`A312562(n)+A001281(A008458(n)-A312562(n))`
-/

namespace A313899.P13650857345686022243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312562 n + A001281 (A008458 n - A312562 n).toNat

end

end A313899.P13650857345686022243

namespace A313899

/-- `A312562(n)+A001281(A008458(n)-A312562(n))` -/
def P13650857345686022243.Spec : Prop :=
  ∀ n, P13650857345686022243.a n = A313899 n

end A313899

/-! ## A313899.P11133941783011677905

`A312163(n)+A004525(A008458(n)-A312163(n))`
-/

namespace A313899.P11133941783011677905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312163 n + A004525 (A008458 n - A312163 n).toNat

end

end A313899.P11133941783011677905

namespace A313899

/-- `A312163(n)+A004525(A008458(n)-A312163(n))` -/
def P11133941783011677905.Spec : Prop :=
  ∀ n, P11133941783011677905.a n = A313899 n

end A313899

/-! ## A313899.P11576690576072528868

`A312562(n)+A004525(A008458(n)-A312562(n))`
-/

namespace A313899.P11576690576072528868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312562 n + A004525 (A008458 n - A312562 n).toNat

end

end A313899.P11576690576072528868

namespace A313899

/-- `A312562(n)+A004525(A008458(n)-A312562(n))` -/
def P11576690576072528868.Spec : Prop :=
  ∀ n, P11576690576072528868.a n = A313899 n

end A313899

/-! ## A313899.P665889434248829597

`A008458(n)-A004526(A008458(n)-A312562(n))`
-/

namespace A313899.P665889434248829597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A312562 n).toNat

end

end A313899.P665889434248829597

namespace A313899

/-- `A008458(n)-A004526(A008458(n)-A312562(n))` -/
def P665889434248829597.Spec : Prop :=
  ∀ n, P665889434248829597.a n = A313899 n

end A313899

/-! ## A313899.P1559767851600132896

`A008486(n)+A004526(A312562(n))`
-/

namespace A313899.P1559767851600132896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A312562 n).toNat

end

end A313899.P1559767851600132896

namespace A313899

/-- `A008486(n)+A004526(A312562(n))` -/
def P1559767851600132896.Spec : Prop :=
  ∀ n, P1559767851600132896.a n = A313899 n

end A313899

/-! ## A313899.P9600631175484684310

`A008585(n)+A004525(A312562(n))`
-/

namespace A313899.P9600631175484684310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A312562 n).toNat

end

end A313899.P9600631175484684310

namespace A313899

/-- `A008585(n)+A004525(A312562(n))` -/
def P9600631175484684310.Spec : Prop :=
  ∀ n, P9600631175484684310.a n = A313899 n

end A313899

/-! ## A313899.P17013503280041930002

`A005843(A008574(n)+n)-A313534(n)`
-/

namespace A313899.P17013503280041930002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313534 n

end

end A313899.P17013503280041930002

namespace A313899

/-- `A005843(A008574(n)+n)-A313534(n)` -/
def P17013503280041930002.Spec : Prop :=
  ∀ n, P17013503280041930002.a n = A313899 n

end A313899

/-! ## A313899.P3412730310643357882

`A008574(2*n)-A004526(A315643(n))`
-/

namespace A313899.P3412730310643357882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A004526 (A315643 n).toNat

end

end A313899.P3412730310643357882

namespace A313899

/-- `A008574(2*n)-A004526(A315643(n))` -/
def P3412730310643357882.Spec : Prop :=
  ∀ n, P3412730310643357882.a n = A313899 n

end A313899

/-! ## A313899.P1982711900784154717

`2*A008574(n)-A004525(A315643(n))`
-/

namespace A313899.P1982711900784154717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A315643 n).toNat

end

end A313899.P1982711900784154717

namespace A313899

/-- `2*A008574(n)-A004525(A315643(n))` -/
def P1982711900784154717.Spec : Prop :=
  ∀ n, P1982711900784154717.a n = A313899 n

end A313899

/-! ## A313899.P8574360166968117353

`A032742(A312562(n)+6*n)`
-/

namespace A313899.P8574360166968117353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A312562 n + (6 * n : ℤ)).toNat

end

end A313899.P8574360166968117353

namespace A313899

/-- `A032742(A312562(n)+6*n)` -/
def P8574360166968117353.Spec : Prop :=
  ∀ n, P8574360166968117353.a n = A313899 n

end A313899

/-! ## A313899.P7541293884020477623

`A065033(A312562(n)+6*n)`
-/

namespace A313899.P7541293884020477623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A312562 n + (6 * n : ℤ)).toNat

end

end A313899.P7541293884020477623

namespace A313899

/-- `A065033(A312562(n)+6*n)` -/
def P7541293884020477623.Spec : Prop :=
  ∀ n, P7541293884020477623.a n = A313899 n

end A313899

/-! ## A313899.P582646277241740733

`A001281(A312562(n)+A008458(n))`
-/

namespace A313899.P582646277241740733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312562 n + A008458 n).toNat

end

end A313899.P582646277241740733

namespace A313899

/-- `A001281(A312562(n)+A008458(n))` -/
def P582646277241740733.Spec : Prop :=
  ∀ n, P582646277241740733.a n = A313899 n

end A313899

/-! ## A313899.P10055496831930589252

`A004525(A312562(n)+A008458(n))`
-/

namespace A313899.P10055496831930589252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312562 n + A008458 n).toNat

end

end A313899.P10055496831930589252

namespace A313899

/-- `A004525(A312562(n)+A008458(n))` -/
def P10055496831930589252.Spec : Prop :=
  ∀ n, P10055496831930589252.a n = A313899 n

end A313899

