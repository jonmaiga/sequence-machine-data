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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A313900: Coordination sequence Gal.6.621.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313900, the canonical program `A313900.P9201979316879398087` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313900 has offset 0).

The definition of A313900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313900.P9201979316879398087

`2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=10, a(3)=16, a(4)=21, a(5)=27, a(6)=33, a(7)=39, a(8)=45`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A313900

/-- `2*a(n-1)-a(n-2)-a(n-6)+2*a(n-7)-a(n-8)` -/
def P9201979316879398087.Spec : Prop :=
  ∀ n, P9201979316879398087.a n = A313900 n

theorem P9201979316879398087.correct : P9201979316879398087.Spec := by
  intro n
  simp only [A313900]

end A313900

/-! ## A313900.P4573417393829650791

`A311964(n)+n`
-/

namespace A313900.P4573417393829650791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311964 n + (n : ℤ)

end

end A313900.P4573417393829650791

namespace A313900

/-- `A311964(n)+n` -/
def P4573417393829650791.Spec : Prop :=
  ∀ n, P4573417393829650791.a n = A313900 n

end A313900

/-! ## A313900.P4767382696318620842

`abs(11*n-(A313533(n)+n))`
-/

namespace A313900.P4767382696318620842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 * n : ℤ) - (A313533 n + (n : ℤ))|

end

end A313900.P4767382696318620842

namespace A313900

/-- `abs(11*n-(A313533(n)+n))` -/
def P4767382696318620842.Spec : Prop :=
  ∀ n, P4767382696318620842.a n = A313900 n

end A313900

/-! ## A313900.P17363080194447975311

`A313076(n)+A004396(n)`
-/

namespace A313900.P17363080194447975311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313076 n + A004396 n

end

end A313900.P17363080194447975311

namespace A313900

/-- `A313076(n)+A004396(n)` -/
def P17363080194447975311.Spec : Prop :=
  ∀ n, P17363080194447975311.a n = A313900 n

end A313900

/-! ## A313900.P1499986400112897888

`abs(A008592(n)-A313533(n))`
-/

namespace A313900.P1499986400112897888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313533 n|

end

end A313900.P1499986400112897888

namespace A313900

/-- `abs(A008592(n)-A313533(n))` -/
def P1499986400112897888.Spec : Prop :=
  ∀ n, P1499986400112897888.a n = A313900 n

end A313900

/-! ## A313900.P11127824842354519157

`abs(A008593(n)-A315697(n))`
-/

namespace A313900.P11127824842354519157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315697 n|

end

end A313900.P11127824842354519157

namespace A313900

/-- `abs(A008593(n)-A315697(n))` -/
def P11127824842354519157.Spec : Prop :=
  ∀ n, P11127824842354519157.a n = A313900 n

end A313900

/-! ## A313900.P12180302011062907163

`A313789(n)+Δ[A011865(n)]`
-/

namespace A313900.P12180302011062907163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + (f1 (n + 1) - f1 n)

end

end A313900.P12180302011062907163

namespace A313900

/-- `A313789(n)+Δ[A011865(n)]` -/
def P12180302011062907163.Spec : Prop :=
  ∀ n, P12180302011062907163.a n = A313900 n

end A313900

/-! ## A313900.P1068229453643009090

`A315064(n)+A002264(n+1)`
-/

namespace A313900.P1068229453643009090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315064 n + A002264 (n + 1)

end

end A313900.P1068229453643009090

namespace A313900

/-- `A315064(n)+A002264(n+1)` -/
def P1068229453643009090.Spec : Prop :=
  ∀ n, P1068229453643009090.a n = A313900 n

end A313900

/-! ## A313900.P16634536027145387865

`A315064(n)+n-A004396(n)`
-/

namespace A313900.P16634536027145387865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315064 n + ((n : ℤ) - A004396 n)

end

end A313900.P16634536027145387865

namespace A313900

/-- `A315064(n)+n-A004396(n)` -/
def P16634536027145387865.Spec : Prop :=
  ∀ n, P16634536027145387865.a n = A313900 n

end A313900

/-! ## A313900.P6532451249846608582

`A005843(n)-(n-A311964(n))`
-/

namespace A313900.P6532451249846608582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A311964 n)

end

end A313900.P6532451249846608582

namespace A313900

/-- `A005843(n)-(n-A311964(n))` -/
def P6532451249846608582.Spec : Prop :=
  ∀ n, P6532451249846608582.a n = A313900 n

end A313900

/-! ## A313900.P13520768703852700999

`A313076(n)+A002264(2*n+1)`
-/

namespace A313900.P13520768703852700999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313076 n + A002264 (2 * n + 1)

end

end A313900.P13520768703852700999

namespace A313900

/-- `A313076(n)+A002264(2*n+1)` -/
def P13520768703852700999.Spec : Prop :=
  ∀ n, P13520768703852700999.a n = A313900 n

end A313900

/-! ## A313900.P18036214527729227219

`A008458(n)+A008574(n)-A313533(n)`
-/

namespace A313900.P18036214527729227219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313533 n)

end

end A313900.P18036214527729227219

namespace A313900

/-- `A008458(n)+A008574(n)-A313533(n)` -/
def P18036214527729227219.Spec : Prop :=
  ∀ n, P18036214527729227219.a n = A313900 n

end A313900

/-! ## A313900.P6868422974350474747

`A008486(n)+A315064(n)-A008576(n)`
-/

namespace A313900.P6868422974350474747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315064 n - A008576 n)

end

end A313900.P6868422974350474747

namespace A313900

/-- `A008486(n)+A315064(n)-A008576(n)` -/
def P6868422974350474747.Spec : Prop :=
  ∀ n, P6868422974350474747.a n = A313900 n

end A313900

/-! ## A313900.P7781935444825842237

`A004396(A004525(n))+A313930(n)-A004525(n)`
-/

namespace A313900.P7781935444825842237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A313930 n - A004525 n)

end

end A313900.P7781935444825842237

namespace A313900

/-- `A004396(A004525(n))+A313930(n)-A004525(n)` -/
def P7781935444825842237.Spec : Prop :=
  ∀ n, P7781935444825842237.a n = A313900 n

end A313900

/-!
# A313901: Coordination sequence Gal.6.362.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313901, there is no canonical definition to state claims against.
-/

/-! ## A313901.P12437104930748550153

`A313834(n)+A175402(n²)`
-/

namespace A313901.P12437104930748550153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313834 n + A175402 (n ^ 2)

end

end A313901.P12437104930748550153

/-! ## A313901.P13373550535594283310

`A313152(n)+A001221(A240558(n))`
-/

namespace A313901.P13373550535594283310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + A001221 (A240558 n).toNat

end

end A313901.P13373550535594283310

/-! ## A313901.P7695423766417941116

`A244759(A280781(n))+A008706(n)`
-/

namespace A313901.P7695423766417941116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244759 (A280781 n).toNat + A008706 n

end

end A313901.P7695423766417941116

/-! ## A313901.P1967132186816505122

`A313746(n)+A001222(A012782(n))`
-/

namespace A313901.P1967132186816505122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A001222 (A012782 n).toNat

end

end A313901.P1967132186816505122

/-! ## A313901.P9531462988458115431

`A313152(n)+A001221(A151134(n))`
-/

namespace A313901.P9531462988458115431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313152 n + A001221 (A151134 n).toNat

end

end A313901.P9531462988458115431

/-!
# A313902: Coordination sequence Gal.5.144.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313902, there is no canonical definition to state claims against.
-/

/-! ## A313902.P17340887458077383781

`A008706(n)+A057354(n)+A005091(A120588(n))`
-/

namespace A313902.P17340887458077383781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (A057354 n + A005091 (A120588 n).toNat)

end

end A313902.P17340887458077383781

/-! ## A313902.P15566367004600390077

`A057354(n)+A313895(n)-A038189(A003418(n))`
-/

namespace A313902.P15566367004600390077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + (A313895 n - A038189 (A003418 n).toNat)

end

end A313902.P15566367004600390077

/-! ## A313902.P7289729376902097479

`A057354(n)+A008706(n)+A001222(A147163(n+2))`
-/

namespace A313902.P7289729376902097479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 n + (A008706 n + A001222 (A147163 (n + 2)).toNat)

end

end A313902.P7289729376902097479

/-! ## A313902.P12588041074873459639

`A250120(n)+A087175(A363207(n+1))`
-/

namespace A313902.P12588041074873459639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A087175 (A363207 (n + 1)).toNat

end

end A313902.P12588041074873459639

/-!
# A313903: Coordination sequence Gal.5.274.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313903, there is no canonical definition to state claims against.
-/

/-! ## A313903.P14220946654450928376

`A313851(n)+A079978(A148354(n))`
-/

namespace A313903.P14220946654450928376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313851 n + A079978 (A148354 n).toNat

end

end A313903.P14220946654450928376

/-! ## A313903.P15915939656710620945

`A301697(n)-A230427(A362192(n+1))`
-/

namespace A313903.P15915939656710620945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A230427 (A362192 (n + 1)).toNat

end

end A313903.P15915939656710620945

/-! ## A313903.P5132267196218677156

`A314232(n)-A001222(A181546(n))`
-/

namespace A313903.P5132267196218677156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314232 n - A001222 (A181546 n).toNat

end

end A313903.P5132267196218677156

/-! ## A313903.P6996926322198121860

`A250120(n)+A031235(A033486(n+2))`
-/

namespace A313903.P6996926322198121860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A031235 (A033486 (n + 2)).toNat

end

end A313903.P6996926322198121860

/-! ## A313903.P10912285045786650979

`A314144(n)-A321609(A000204(n+1))`
-/

namespace A313903.P10912285045786650979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314144 n - A321609 (A000204 (n + 1)).toNat

end

end A313903.P10912285045786650979

/-!
# A313904: Coordination sequence Gal.5.323.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313904, there is no canonical definition to state claims against.
-/

/-! ## A313904.P3537686970268761910

`A313985(n)-A001221(A336012(n))`
-/

namespace A313904.P3537686970268761910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313985 n - A001221 (A336012 n).toNat

end

end A313904.P3537686970268761910

/-! ## A313904.P3112874514625280717

`A313865(n)+A080343(A047136(n))`
-/

namespace A313904.P3112874514625280717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313865 n + A080343 (A047136 n).toNat

end

end A313904.P3112874514625280717

/-! ## A313904.P10126034154474341191

`A313866(n)+A080343(A047136(n))`
-/

namespace A313904.P10126034154474341191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313866 n + A080343 (A047136 n).toNat

end

end A313904.P10126034154474341191

/-! ## A313904.P10197530970623348153

`A294901(A001003(n))+A250120(n)`
-/

namespace A313904.P10197530970623348153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (A001003 n).toNat + A250120 n

end

end A313904.P10197530970623348153

/-! ## A313904.P159484647014941993

`A315075(n)+A294883(A001003(n))`
-/

namespace A313904.P159484647014941993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + A294883 (A001003 n).toNat

end

end A313904.P159484647014941993

/-!
# A313905: Coordination sequence Gal.6.352.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313905, the canonical program `A313905.P339684935486502025` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313905 has offset 0).

The definition of A313905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2317 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313905.P339684935486502025

`abs(A008592(n)-A313525(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313905

/-- `abs(A008592(n)-A313525(n))` -/
def P339684935486502025.Spec : Prop :=
  ∀ n, P339684935486502025.a n = A313905 n

theorem P339684935486502025.correct : P339684935486502025.Spec := by
  intro n
  simp only [A313905]

end A313905

/-! ## A313905.P16686089216870909489

`2*A008706(n)-A313525(n)`
-/

namespace A313905.P16686089216870909489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313525 n

end

end A313905.P16686089216870909489

namespace A313905

/-- `2*A008706(n)-A313525(n)` -/
def P16686089216870909489.Spec : Prop :=
  ∀ n, P16686089216870909489.a n = A313905 n

end A313905

/-! ## A313905.P9336332466796719342

`2*A313719(n)-A313476(n)`
-/

namespace A313905.P9336332466796719342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313719 n - A313476 n

end

end A313905.P9336332466796719342

namespace A313905

/-- `2*A313719(n)-A313476(n)` -/
def P9336332466796719342.Spec : Prop :=
  ∀ n, P9336332466796719342.a n = A313905 n

end A313905

/-! ## A313905.P5091366068807397328

`A047486(n+1)+A314886(n)-n`
-/

namespace A313905.P5091366068807397328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A314886 n - (n : ℤ))

end

end A313905.P5091366068807397328

namespace A313905

/-- `A047486(n+1)+A314886(n)-n` -/
def P5091366068807397328.Spec : Prop :=
  ∀ n, P5091366068807397328.a n = A313905 n

end A313905

/-! ## A313905.P10566212728251775398

`A000038(n)+A008592(n)-A313525(n)`
-/

namespace A313905.P10566212728251775398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313525 n)

end

end A313905.P10566212728251775398

namespace A313905

/-- `A000038(n)+A008592(n)-A313525(n)` -/
def P10566212728251775398.Spec : Prop :=
  ∀ n, P10566212728251775398.a n = A313905 n

end A313905

/-! ## A313905.P6510119187526655382

`A008458(n)+A008574(n)-A313525(n)`
-/

namespace A313905.P6510119187526655382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313525 n)

end

end A313905.P6510119187526655382

namespace A313905

/-- `A008458(n)+A008574(n)-A313525(n)` -/
def P6510119187526655382.Spec : Prop :=
  ∀ n, P6510119187526655382.a n = A313905 n

end A313905

/-! ## A313905.P13704217530196898228

`A313752(n)+A253262(n-A253262(n))`
-/

namespace A313905.P13704217530196898228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313752 n + A253262 ((n : ℤ) - A253262 n).toNat

end

end A313905.P13704217530196898228

namespace A313905

/-- `A313752(n)+A253262(n-A253262(n))` -/
def P13704217530196898228.Spec : Prop :=
  ∀ n, P13704217530196898228.a n = A313905 n

end A313905

/-! ## A313905.P17377657343037823007

`A313525(n)+A005843(A008706(n)-A313525(n))`
-/

namespace A313905.P17377657343037823007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313525 n + A005843 (A008706 n - A313525 n).toNat

end

end A313905.P17377657343037823007

namespace A313905

/-- `A313525(n)+A005843(A008706(n)-A313525(n))` -/
def P17377657343037823007.Spec : Prop :=
  ∀ n, P17377657343037823007.a n = A313905 n

end A313905

/-! ## A313905.P14602353061741742702

`A313476(n)+A005843(A313719(n)-A313476(n))`
-/

namespace A313905.P14602353061741742702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313476 n + A005843 (A313719 n - A313476 n).toNat

end

end A313905.P14602353061741742702

namespace A313905

/-- `A313476(n)+A005843(A313719(n)-A313476(n))` -/
def P14602353061741742702.Spec : Prop :=
  ∀ n, P14602353061741742702.a n = A313905 n

end A313905

/-! ## A313905.P14864185747537761611

`A330025(n)+A313284(n)`
-/

namespace A313905.P14864185747537761611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313284 n

end

end A313905.P14864185747537761611

namespace A313905

/-- `A330025(n)+A313284(n)` -/
def P14864185747537761611.Spec : Prop :=
  ∀ n, P14864185747537761611.a n = A313905 n

end A313905

/-! ## A313905.P12251324800889934906

`(A315755(n)+A312658(n))/2`
-/

namespace A313905.P12251324800889934906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315755 n + A312658 n : ℚ) / 2

end

end A313905.P12251324800889934906

namespace A313905

/-- `(A315755(n)+A312658(n))/2` -/
def P12251324800889934906.Spec : Prop :=
  ∀ n, P12251324800889934906.a n = (A313905 n : ℚ)

end A313905

/-! ## A313905.P13470543668598692126

`A312658(n)+A004525(A315755(n)-A312658(n))`
-/

namespace A313905.P13470543668598692126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312658 n + A004525 (A315755 n - A312658 n).toNat

end

end A313905.P13470543668598692126

namespace A313905

/-- `A312658(n)+A004525(A315755(n)-A312658(n))` -/
def P13470543668598692126.Spec : Prop :=
  ∀ n, P13470543668598692126.a n = A313905 n

end A313905

/-! ## A313905.P12323854438203626851

`2*A313916(n)-A313928(n)`
-/

namespace A313905.P12323854438203626851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313916 n - A313928 n

end

end A313905.P12323854438203626851

namespace A313905

/-- `2*A313916(n)-A313928(n)` -/
def P12323854438203626851.Spec : Prop :=
  ∀ n, P12323854438203626851.a n = A313905 n

theorem P12323854438203626851.correct : P12323854438203626851.Spec := by
  intro n
  simp only [A313905, Nat.add_sub_cancel, A313905.P12323854438203626851.a, A313905.P339684935486502025.a, A008592, A008592.P4981059802862696142.a, A313525, A313525.P8743535936701336269.a, A313916, A313916.P11453756357199401341.a, A313928, A313928.P15528941747193858582.a, A312077, A312077.P5583150468324327588.a, A313476, A313476.P1237108097731061015.a, A313506, A313506.P8115017678468763868.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A008591, A008591.P8937864482545511630.a, A081599, A081599.P12036139868710074620.a, A312903, A312903.P5186887365123370171.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A311384, A311384.P2354907441128154650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313905

/-! ## A313905.P9090826847417677513

`A005843(A313719(n))-A313476(n)`
-/

namespace A313905.P9090826847417677513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313719 n).toNat - A313476 n

end

end A313905.P9090826847417677513

namespace A313905

/-- `A005843(A313719(n))-A313476(n)` -/
def P9090826847417677513.Spec : Prop :=
  ∀ n, P9090826847417677513.a n = A313905 n

end A313905

/-! ## A313905.P14592198408838183485

`A005843(A008706(n))-A313525(n)`
-/

namespace A313905.P14592198408838183485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313525 n

end

end A313905.P14592198408838183485

namespace A313905

/-- `A005843(A008706(n))-A313525(n)` -/
def P14592198408838183485.Spec : Prop :=
  ∀ n, P14592198408838183485.a n = A313905 n

end A313905

/-! ## A313905.P3812607647641647693

`A004525(A315755(n)+A312658(n))`
-/

namespace A313905.P3812607647641647693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315755 n + A312658 n).toNat

end

end A313905.P3812607647641647693

namespace A313905

/-- `A004525(A315755(n)+A312658(n))` -/
def P3812607647641647693.Spec : Prop :=
  ∀ n, P3812607647641647693.a n = A313905 n

end A313905

/-! ## A313905.P13098499787295719454

`A233583(A017281(n))-A313525(n)`
-/

namespace A313905.P13098499787295719454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313525 n

end

end A313905.P13098499787295719454

namespace A313905

/-- `A233583(A017281(n))-A313525(n)` -/
def P13098499787295719454.Spec : Prop :=
  ∀ n, P13098499787295719454.a n = A313905 n

end A313905

/-!
# A313906: Coordination sequence Gal.5.308.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313906, the canonical program `A313906.P16146185276320745133` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313906 has offset 0).

The definition of A313906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313906.P16146185276320745133

`A313721(n)+A002264(A030118(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313906

/-- `A313721(n)+A002264(A030118(n))` -/
def P16146185276320745133.Spec : Prop :=
  ∀ n, P16146185276320745133.a n = A313906 n

theorem P16146185276320745133.correct : P16146185276320745133.Spec := by
  intro n
  simp only [A313906]

end A313906

/-! ## A313906.P15640879034020980083

`A301697(n)-A002264(A086161(n))`
-/

namespace A313906.P15640879034020980083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A002264 (A086161 n).toNat

end

end A313906.P15640879034020980083

namespace A313906

/-- `A301697(n)-A002264(A086161(n))` -/
def P15640879034020980083.Spec : Prop :=
  ∀ n, P15640879034020980083.a n = A313906 n

end A313906

/-! ## A313906.P3872600180483577533

`A315075(n)+A004396(∑[A022003(n)])`
-/

namespace A313906.P3872600180483577533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + A004396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A313906.P3872600180483577533

namespace A313906

/-- `A315075(n)+A004396(∑[A022003(n)])` -/
def P3872600180483577533.Spec : Prop :=
  ∀ n, P3872600180483577533.a n = A313906 n

end A313906

/-! ## A313906.P18336729329683339738

`A301697(n)-A002264(A002264(n+4))`
-/

namespace A313906.P18336729329683339738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A002264 (A002264 (n + 4)).toNat

end

end A313906.P18336729329683339738

namespace A313906

/-- `A301697(n)-A002264(A002264(n+4))` -/
def P18336729329683339738.Spec : Prop :=
  ∀ n, P18336729329683339738.a n = A313906 n

end A313906

/-! ## A313906.P6326635544645560629

`A315075(n)+A004396(n-A004396(n))`
-/

namespace A313906.P6326635544645560629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A313906.P6326635544645560629

namespace A313906

/-- `A315075(n)+A004396(n-A004396(n))` -/
def P6326635544645560629.Spec : Prop :=
  ∀ n, P6326635544645560629.a n = A313906 n

end A313906

/-! ## A313906.P10216445915683808624

`A313721(n)+A004524(A008620(2*n+1))`
-/

namespace A313906.P10216445915683808624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A004524 (A008620 (2 * n + 1)).toNat

end

end A313906.P10216445915683808624

namespace A313906

/-- `A313721(n)+A004524(A008620(2*n+1))` -/
def P10216445915683808624.Spec : Prop :=
  ∀ n, P10216445915683808624.a n = A313906 n

end A313906

/-! ## A313906.P12798787636157494046

`A315535(n)-A004525(A004396(n))`
-/

namespace A313906.P12798787636157494046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - A004525 (A004396 n).toNat

end

end A313906.P12798787636157494046

namespace A313906

/-- `A315535(n)-A004525(A004396(n))` -/
def P12798787636157494046.Spec : Prop :=
  ∀ n, P12798787636157494046.a n = A313906 n

end A313906

/-! ## A313906.P6679583169098314260

`A315535(n)-A004525(A274616(n))`
-/

namespace A313906.P6679583169098314260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315535 n - A004525 (A274616 n).toNat

end

end A313906.P6679583169098314260

namespace A313906

/-- `A315535(n)-A004525(A274616(n))` -/
def P6679583169098314260.Spec : Prop :=
  ∀ n, P6679583169098314260.a n = A313906 n

end A313906

/-! ## A313906.P16020255078690986296

`A314247(n)-A042965(A086161(n))`
-/

namespace A313906.P16020255078690986296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A042965 (A086161 n).toNat

end

end A313906.P16020255078690986296

namespace A313906

/-- `A314247(n)-A042965(A086161(n))` -/
def P16020255078690986296.Spec : Prop :=
  ∀ n, P16020255078690986296.a n = A313906 n

end A313906

/-!
# A313907: Coordination sequence Gal.5.315.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313907, the canonical program `A313907.P17726981698790331686` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313907 has offset 0).

The definition of A313907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313907.P10575717516911761400

`A047263(n+1)+A314934(n)-A004396(n)`
-/

namespace A313907.P10575717516911761400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A314934 n - A004396 n)

end

end A313907.P10575717516911761400

namespace A313907

/-- `A047263(n+1)+A314934(n)-A004396(n)` -/
def P10575717516911761400.Spec : Prop :=
  ∀ n, P10575717516911761400.a n = A313907 n

theorem P10575717516911761400.correct : P10575717516911761400.Spec := by
  intro n
  simp only [A313907, Nat.add_sub_cancel, A313907.P10575717516911761400.a, A313907.P17726981698790331686.a, A004396, A004396.P17032557045289780609.a, A047263, A047263.P10177617567604490545.a, A057354, A057354.P3759514669842217521.a, A130823, A130823.P3363031834676237035.a, A301718, A301718.P12470946639720229977.f1, A301718.P12470946639720229977.a, A314934, A314934.P10745395469202390610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313907

/-! ## A313907.P17726981698790331686

`A301718(n)-A057354(A130823(n+2))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313907

/-- `A301718(n)-A057354(A130823(n+2))` -/
def P17726981698790331686.Spec : Prop :=
  ∀ n, P17726981698790331686.a n = A313907 n

theorem P17726981698790331686.correct : P17726981698790331686.Spec := by
  intro n
  simp only [A313907]

end A313907

/-! ## A313907.P694201373509478160

`A301718(n)-A134119(A131380(2*n))`
-/

namespace A313907.P694201373509478160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A134119 (A131380 (2 * n)).toNat

end

end A313907.P694201373509478160

namespace A313907

/-- `A301718(n)-A134119(A131380(2*n))` -/
def P694201373509478160.Spec : Prop :=
  ∀ n, P694201373509478160.a n = A313907 n

end A313907

/-! ## A313907.P10947076055472505247

`A301718(n)-A186444(A077168(n))`
-/

namespace A313907.P10947076055472505247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A186444 (A077168 n).toNat

end

end A313907.P10947076055472505247

namespace A313907

/-- `A301718(n)-A186444(A077168(n))` -/
def P10947076055472505247.Spec : Prop :=
  ∀ n, P10947076055472505247.a n = A313907 n

end A313907

/-! ## A313907.P3169517955299984326

`A176693(3*n+1)+A125238(A053427(3*n+1))`
-/

namespace A313907.P3169517955299984326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (3 * n + 1) + A125238 (A053427 (3 * n + 1)).toNat

end

end A313907.P3169517955299984326

namespace A313907

/-- `A176693(3*n+1)+A125238(A053427(3*n+1))` -/
def P3169517955299984326.Spec : Prop :=
  ∀ n, P3169517955299984326.a n = A313907 n

end A313907

/-!
# A313908: Coordination sequence Gal.6.639.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313908, the canonical program `A313908.P15756257840792461538` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313908 has offset 0).

The definition of A313908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313908.P15756257840792461538

`abs(A008592(n)-A313519(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313908

/-- `abs(A008592(n)-A313519(n))` -/
def P15756257840792461538.Spec : Prop :=
  ∀ n, P15756257840792461538.a n = A313908 n

theorem P15756257840792461538.correct : P15756257840792461538.Spec := by
  intro n
  simp only [A313908]

end A313908

/-! ## A313908.P16424503422007714274

`2*A008706(n)-A313519(n)`
-/

namespace A313908.P16424503422007714274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313519 n

end

end A313908.P16424503422007714274

namespace A313908

/-- `2*A008706(n)-A313519(n)` -/
def P16424503422007714274.Spec : Prop :=
  ∀ n, P16424503422007714274.a n = A313908 n

end A313908

/-! ## A313908.P7937488977632320213

`A135042(2*n+1)-A313519(n)`
-/

namespace A313908.P7937488977632320213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313519 n

end

end A313908.P7937488977632320213

namespace A313908

/-- `A135042(2*n+1)-A313519(n)` -/
def P7937488977632320213.Spec : Prop :=
  ∀ n, P7937488977632320213.a n = A313908 n

end A313908

/-! ## A313908.P13728618061196865957

`A184418(A008574(n))-A313519(n)`
-/

namespace A313908.P13728618061196865957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313519 n

end

end A313908.P13728618061196865957

namespace A313908

/-- `A184418(A008574(n))-A313519(n)` -/
def P13728618061196865957.Spec : Prop :=
  ∀ n, P13728618061196865957.a n = A313908 n

end A313908

/-! ## A313908.P18402913575277812813

`A008458(n)+A008574(n)-A313519(n)`
-/

namespace A313908.P18402913575277812813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313519 n)

end

end A313908.P18402913575277812813

namespace A313908

/-- `A008458(n)+A008574(n)-A313519(n)` -/
def P18402913575277812813.Spec : Prop :=
  ∀ n, P18402913575277812813.a n = A313908 n

end A313908

/-! ## A313908.P14479356823617196340

`A312606(n)+A004525(A008458(n)-A312606(n))`
-/

namespace A313908.P14479356823617196340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312606 n + A004525 (A008458 n - A312606 n).toNat

end

end A313908.P14479356823617196340

namespace A313908

/-- `A312606(n)+A004525(A008458(n)-A312606(n))` -/
def P14479356823617196340.Spec : Prop :=
  ∀ n, P14479356823617196340.a n = A313908 n

end A313908

/-! ## A313908.P7116955319164096819

`A313519(n)+A005843(A008706(n)-A313519(n))`
-/

namespace A313908.P7116955319164096819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313519 n + A005843 (A008706 n - A313519 n).toNat

end

end A313908.P7116955319164096819

namespace A313908

/-- `A313519(n)+A005843(A008706(n)-A313519(n))` -/
def P7116955319164096819.Spec : Prop :=
  ∀ n, P7116955319164096819.a n = A313908 n

end A313908

/-! ## A313908.P9734603031664042757

`(A315329(n)+A310520(n))/2`
-/

namespace A313908.P9734603031664042757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315329 n + A310520 n : ℚ) / 2

end

end A313908.P9734603031664042757

namespace A313908

/-- `(A315329(n)+A310520(n))/2` -/
def P9734603031664042757.Spec : Prop :=
  ∀ n, P9734603031664042757.a n = (A313908 n : ℚ)

end A313908

/-! ## A313908.P7324090611323458110

`(A315756(n)+A312668(n))/2`
-/

namespace A313908.P7324090611323458110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315756 n + A312668 n : ℚ) / 2

end

end A313908.P7324090611323458110

namespace A313908

/-- `(A315756(n)+A312668(n))/2` -/
def P7324090611323458110.Spec : Prop :=
  ∀ n, P7324090611323458110.a n = (A313908 n : ℚ)

end A313908

/-! ## A313908.P17951821146697096765

`A005843(A008706(n))-A313519(n)`
-/

namespace A313908.P17951821146697096765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313519 n

end

end A313908.P17951821146697096765

namespace A313908

/-- `A005843(A008706(n))-A313519(n)` -/
def P17951821146697096765.Spec : Prop :=
  ∀ n, P17951821146697096765.a n = A313908 n

end A313908

/-! ## A313908.P12254530939072600974

`A065502(A008458(n))-A313519(n)`
-/

namespace A313908.P12254530939072600974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313519 n

end

end A313908.P12254530939072600974

namespace A313908

/-- `A065502(A008458(n))-A313519(n)` -/
def P12254530939072600974.Spec : Prop :=
  ∀ n, P12254530939072600974.a n = A313908 n

end A313908

/-! ## A313908.P11419508634345482674

`A271324(A022144(n))-A313519(n)`
-/

namespace A313908.P11419508634345482674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271324 (A022144 n).toNat - A313519 n

end

end A313908.P11419508634345482674

namespace A313908

/-- `A271324(A022144(n))-A313519(n)` -/
def P11419508634345482674.Spec : Prop :=
  ∀ n, P11419508634345482674.a n = A313908 n

end A313908

/-! ## A313908.P15325485139841306033

`round(A315216(2*n)/2)`
-/

namespace A313908.P15325485139841306033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315216 (2 * n) : ℚ) / 2)

end

end A313908.P15325485139841306033

namespace A313908

/-- `round(A315216(2*n)/2)` -/
def P15325485139841306033.Spec : Prop :=
  ∀ n, P15325485139841306033.a n = A313908 n

end A313908

/-! ## A313908.P6430981838822688503

`A315216(2*n)/A020639(A315216(n))`
-/

namespace A313908.P6430981838822688503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315216 (2 * n) : ℚ) / (A020639 (A315216 n).toNat : ℚ)

end

end A313908.P6430981838822688503

namespace A313908

/-- `A315216(2*n)/A020639(A315216(n))` -/
def P6430981838822688503.Spec : Prop :=
  ∀ n, P6430981838822688503.a n = (A313908 n : ℚ)

end A313908

/-! ## A313908.P5733863470459875397

`A315498(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A313908.P5733863470459875397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315498 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A313908.P5733863470459875397

namespace A313908

/-- `A315498(2*n)+A008458(n+1)-(12*n+6)` -/
def P5733863470459875397.Spec : Prop :=
  ∀ n, P5733863470459875397.a n = A313908 n

end A313908

/-! ## A313908.P13129974850634568052

`A004525(A315216(2*n))`
-/

namespace A313908.P13129974850634568052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315216 (2 * n)).toNat

end

end A313908.P13129974850634568052

namespace A313908

/-- `A004525(A315216(2*n))` -/
def P13129974850634568052.Spec : Prop :=
  ∀ n, P13129974850634568052.a n = A313908 n

end A313908

/-! ## A313908.P7626089885001023400

`A004526(A315216(2*n)+1)`
-/

namespace A313908.P7626089885001023400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315216 (2 * n) + 1).toNat

end

end A313908.P7626089885001023400

namespace A313908

/-- `A004526(A315216(2*n)+1)` -/
def P7626089885001023400.Spec : Prop :=
  ∀ n, P7626089885001023400.a n = A313908 n

end A313908

/-! ## A313908.P149572679306374835

`A233583(A017281(n))-A313519(n)`
-/

namespace A313908.P149572679306374835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313519 n

end

end A313908.P149572679306374835

namespace A313908

/-- `A233583(A017281(n))-A313519(n)` -/
def P149572679306374835.Spec : Prop :=
  ∀ n, P149572679306374835.a n = A313908 n

end A313908

/-!
# A313909: Coordination sequence Gal.6.648.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313909, the canonical program `A313909.P6555194053940030791` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313909 has offset 0).

The definition of A313909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313909.P6555194053940030791

`A313100(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313909

/-- `A313100(n)+A004396(n)` -/
def P6555194053940030791.Spec : Prop :=
  ∀ n, P6555194053940030791.a n = A313909 n

theorem P6555194053940030791.correct : P6555194053940030791.Spec := by
  intro n
  simp only [A313909]

end A313909

/-! ## A313909.P12137463368738965167

`A313773(n)+Δ[A011862(n)]`
-/

namespace A313909.P12137463368738965167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313773 n + (f1 (n + 1) - f1 n)

end

end A313909.P12137463368738965167

namespace A313909

/-- `A313773(n)+Δ[A011862(n)]` -/
def P12137463368738965167.Spec : Prop :=
  ∀ n, P12137463368738965167.a n = A313909 n

end A313909

/-! ## A313909.P17169040079261021050

`A313100(n)+A002264(2*n+1)`
-/

namespace A313909.P17169040079261021050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A002264 (2 * n + 1)

end

end A313909.P17169040079261021050

namespace A313909

/-- `A313100(n)+A002264(2*n+1)` -/
def P17169040079261021050.Spec : Prop :=
  ∀ n, P17169040079261021050.a n = A313909 n

theorem P17169040079261021050.correct : P17169040079261021050.Spec := by
  intro n
  simp only [A313909, Nat.add_sub_cancel, A313909.P17169040079261021050.a, A313909.P6555194053940030791.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A313100, A313100.P9368663845500705119.f1, A313100.P9368663845500705119.a, A011862, A011862.P9485299441699197278.a, A312932, A312932.P265636690513476108.a, A008574, A008574.P1300280032690682112.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313909

/-! ## A313909.P11716426633079706185

`A313241(n)+A004396(A004396(n))`
-/

namespace A313909.P11716426633079706185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n + A004396 (A004396 n).toNat

end

end A313909.P11716426633079706185

namespace A313909

/-- `A313241(n)+A004396(A004396(n))` -/
def P11716426633079706185.Spec : Prop :=
  ∀ n, P11716426633079706185.a n = A313909 n

end A313909

/-! ## A313909.P15070649382204874225

`A313100(n)+A004525(A004773(n))`
-/

namespace A313909.P15070649382204874225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313100 n + A004525 (A004773 n).toNat

end

end A313909.P15070649382204874225

namespace A313909

/-- `A313100(n)+A004525(A004773(n))` -/
def P15070649382204874225.Spec : Prop :=
  ∀ n, P15070649382204874225.a n = A313909 n

end A313909

/-! ## A313909.P13365497541894703248

`A312932(n)+A004396(2*A004396(n))`
-/

namespace A313909.P13365497541894703248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312932 n + A004396 (2 * A004396 n).toNat

end

end A313909.P13365497541894703248

namespace A313909

/-- `A312932(n)+A004396(2*A004396(n))` -/
def P13365497541894703248.Spec : Prop :=
  ∀ n, P13365497541894703248.a n = A313909 n

end A313909

/-! ## A313909.P3693719358818944515

`A311816(n)+A004396(A004396(n)+n)`
-/

namespace A313909.P3693719358818944515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311816 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A313909.P3693719358818944515

namespace A313909

/-- `A311816(n)+A004396(A004396(n)+n)` -/
def P3693719358818944515.Spec : Prop :=
  ∀ n, P3693719358818944515.a n = A313909 n

end A313909

/-! ## A313909.P16144441257508371219

`A004396(n)+A313773(n)-A004396(A004396(n))`
-/

namespace A313909.P16144441257508371219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313773 n - A004396 (A004396 n).toNat)

end

end A313909.P16144441257508371219

namespace A313909

/-- `A004396(n)+A313773(n)-A004396(A004396(n))` -/
def P16144441257508371219.Spec : Prop :=
  ∀ n, P16144441257508371219.a n = A313909 n

end A313909

/-! ## A313909.P17319021911852595976

`A047263(A312100(n)+1)`
-/

namespace A313909.P17319021911852595976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A312100 n + 1).toNat

end

end A313909.P17319021911852595976

namespace A313909

/-- `A047263(A312100(n)+1)` -/
def P17319021911852595976.Spec : Prop :=
  ∀ n, P17319021911852595976.a n = A313909 n

end A313909

/-! ## A313909.P16602800248305645944

`A314231(n)-A004396(n-A004396(n))`
-/

namespace A313909.P16602800248305645944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314231 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313909.P16602800248305645944

namespace A313909

/-- `A314231(n)-A004396(n-A004396(n))` -/
def P16602800248305645944.Spec : Prop :=
  ∀ n, P16602800248305645944.a n = A313909 n

end A313909

/-! ## A313909.P9302087385882908661

`A004396(A004396(n)+A310521(n)+A005843(n))`
-/

namespace A313909.P9302087385882908661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A310521 n + A005843 n)).toNat

end

end A313909.P9302087385882908661

namespace A313909

/-- `A004396(A004396(n)+A310521(n)+A005843(n))` -/
def P9302087385882908661.Spec : Prop :=
  ∀ n, P9302087385882908661.a n = A313909 n

end A313909

/-! ## A313909.P7272273063849411008

`A004396(A312555(2*n)-A004396(2*n))`
-/

namespace A313909.P7272273063849411008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312555 (2 * n) - A004396 (2 * n)).toNat

end

end A313909.P7272273063849411008

namespace A313909

/-- `A004396(A312555(2*n)-A004396(2*n))` -/
def P7272273063849411008.Spec : Prop :=
  ∀ n, P7272273063849411008.a n = A313909 n

end A313909

/-! ## A313909.P11251942349422778318

`A004396(A314736(2*n))-A004396(A004396(2*n))`
-/

namespace A313909.P11251942349422778318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314736 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A313909.P11251942349422778318

namespace A313909

/-- `A004396(A314736(2*n))-A004396(A004396(2*n))` -/
def P11251942349422778318.Spec : Prop :=
  ∀ n, P11251942349422778318.a n = A313909 n

end A313909

/-! ## A313909.P1796125268548179607

`A004396(A314848(2*n))-A004396(A004396(2*n))`
-/

namespace A313909.P1796125268548179607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314848 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A313909.P1796125268548179607

namespace A313909

/-- `A004396(A314848(2*n))-A004396(A004396(2*n))` -/
def P1796125268548179607.Spec : Prop :=
  ∀ n, P1796125268548179607.a n = A313909 n

end A313909

/-!
# A313910: Coordination sequence Gal.5.278.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313910, there is no canonical definition to state claims against.
-/

/-! ## A313910.P12234332068245318151

`A313911(n)-A055641(A307632(n+1))`
-/

namespace A313910.P12234332068245318151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313911 n - A055641 (A307632 (n + 1)).toNat

end

end A313910.P12234332068245318151

/-! ## A313910.P5467653649500716376

`A250120(n)+A165073(A002529(n))`
-/

namespace A313910.P5467653649500716376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A165073 (A002529 n).toNat

end

end A313910.P5467653649500716376

/-! ## A313910.P17052585349705147414

`A305079(A148951(n))+A250120(n)`
-/

namespace A313910.P17052585349705147414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A148951 n).toNat + A250120 n

end

end A313910.P17052585349705147414

/-! ## A313910.P8231365006942976988

`A315762(n)-A001222(A155866(n))`
-/

namespace A313910.P8231365006942976988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315762 n - A001222 (A155866 n).toNat

end

end A313910.P8231365006942976988

/-! ## A313910.P13538553373905264043

`A301697(n)-A350386(A000228(n+1))`
-/

namespace A313910.P13538553373905264043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A350386 (A000228 (n + 1)).toNat

end

end A313910.P13538553373905264043

/-!
# A313911: Coordination sequence Gal.5.277.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313911, there is no canonical definition to state claims against.
-/

/-! ## A313911.P17475207751863671021

`A220845(A310807(n)+A016933(n))`
-/

namespace A313911.P17475207751863671021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A310807 n + A016933 n).toNat

end

end A313911.P17475207751863671021

/-! ## A313911.P11369937462090062811

`A220845(A310809(n)+A016933(n))`
-/

namespace A313911.P11369937462090062811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A310809 n + A016933 n).toNat

end

end A313911.P11369937462090062811

/-! ## A313911.P15739625040446890178

`A313910(n)+A107846(A275679(n))`
-/

namespace A313911.P15739625040446890178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313910 n + A107846 (A275679 n).toNat

end

end A313911.P15739625040446890178

/-! ## A313911.P4632779130717402558

`A313910(n)+A055641(A307632(n+1))`
-/

namespace A313911.P4632779130717402558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313910 n + A055641 (A307632 (n + 1)).toNat

end

end A313911.P4632779130717402558

/-! ## A313911.P15625376686137394544

`A220845(A016933(n)-(1-A310807(n)))`
-/

namespace A313911.P15625376686137394544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220845 (A016933 n - (1 - A310807 n)).toNat

end

end A313911.P15625376686137394544

/-!
# A313912: Coordination sequence Gal.6.207.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313912, the canonical program `A313912.P13734627626942033207` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313912 has offset 0).

The definition of A313912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2320 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313912.P4376250524703949074

`A313228(n)+A004525(n)`
-/

namespace A313912.P4376250524703949074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313228 n + A004525 n

end

end A313912.P4376250524703949074

namespace A313912

/-- `A313228(n)+A004525(n)` -/
def P4376250524703949074.Spec : Prop :=
  ∀ n, P4376250524703949074.a n = A313912 n

end A313912

/-! ## A313912.P13734627626942033207

`abs(A008592(n)-A313515(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313912

/-- `abs(A008592(n)-A313515(n))` -/
def P13734627626942033207.Spec : Prop :=
  ∀ n, P13734627626942033207.a n = A313912 n

theorem P13734627626942033207.correct : P13734627626942033207.Spec := by
  intro n
  simp only [A313912]

end A313912

/-! ## A313912.P16247500071197791535

`A314668(n)+∑[A021823(n)]`
-/

namespace A313912.P16247500071197791535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313912.P16247500071197791535

namespace A313912

/-- `A314668(n)+∑[A021823(n)]` -/
def P16247500071197791535.Spec : Prop :=
  ∀ n, P16247500071197791535.a n = A313912 n

end A313912

/-! ## A313912.P14514110367326310818

`A313228(n)+Δ[A054925(n)]`
-/

namespace A313912.P14514110367326310818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313228 n + (f1 (n + 1) - f1 n)

end

end A313912.P14514110367326310818

namespace A313912

/-- `A313228(n)+Δ[A054925(n)]` -/
def P14514110367326310818.Spec : Prop :=
  ∀ n, P14514110367326310818.a n = A313912 n

end A313912

/-! ## A313912.P17103389539409296413

`2*A008706(n)-A313515(n)`
-/

namespace A313912.P17103389539409296413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313515 n

end

end A313912.P17103389539409296413

namespace A313912

/-- `2*A008706(n)-A313515(n)` -/
def P17103389539409296413.Spec : Prop :=
  ∀ n, P17103389539409296413.a n = A313912 n

end A313912

/-! ## A313912.P3091016226858212379

`A008458(n)+A008574(n)-A313515(n)`
-/

namespace A313912.P3091016226858212379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313515 n)

end

end A313912.P3091016226858212379

namespace A313912

/-- `A008458(n)+A008574(n)-A313515(n)` -/
def P3091016226858212379.Spec : Prop :=
  ∀ n, P3091016226858212379.a n = A313912 n

end A313912

/-! ## A313912.P14114557340557894816

`∑{d}[A008592(n)-A313515(n), A000010(#)]`
-/

namespace A313912.P14114557340557894816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313515 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313912.P14114557340557894816

namespace A313912

/-- `∑{d}[A008592(n)-A313515(n), A000010(#)]` -/
def P14114557340557894816.Spec : Prop :=
  ∀ n, P14114557340557894816.a n = A313912 n

end A313912

/-! ## A313912.P4874749006056123221

`A004525(n)+A313859(n)-A004525(A004396(n))`
-/

namespace A313912.P4874749006056123221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313859 n - A004525 (A004396 n).toNat)

end

end A313912.P4874749006056123221

namespace A313912

/-- `A004525(n)+A313859(n)-A004525(A004396(n))` -/
def P4874749006056123221.Spec : Prop :=
  ∀ n, P4874749006056123221.a n = A313912 n

end A313912

/-! ## A313912.P11839994713422021091

`A315467(n)-A128834(n)`
-/

namespace A313912.P11839994713422021091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n - A128834 n

end

end A313912.P11839994713422021091

namespace A313912

/-- `A315467(n)-A128834(n)` -/
def P11839994713422021091.Spec : Prop :=
  ∀ n, P11839994713422021091.a n = A313912 n

end A313912

/-! ## A313912.P10188315052595361873

`A315467(n)+A010892(n+2)`
-/

namespace A313912.P10188315052595361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315467 n + A010892 (n + 2)

end

end A313912.P10188315052595361873

namespace A313912

/-- `A315467(n)+A010892(n+2)` -/
def P10188315052595361873.Spec : Prop :=
  ∀ n, P10188315052595361873.a n = A313912 n

end A313912

/-!
# A313913: Coordination sequence Gal.6.331.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313913, the canonical program `A313913.P10677154805685807120` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313913 has offset 0).

The definition of A313913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313913.P8588494978445670358

`abs(A008592(n)-A313514(n))`
-/

namespace A313913.P8588494978445670358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313514 n|

end

end A313913.P8588494978445670358

namespace A313913

/-- `abs(A008592(n)-A313514(n))` -/
def P8588494978445670358.Spec : Prop :=
  ∀ n, P8588494978445670358.a n = A313913 n

end A313913

/-! ## A313913.P2438174848303321708

`2*A008706(n)-A313514(n)`
-/

namespace A313913.P2438174848303321708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313514 n

end

end A313913.P2438174848303321708

namespace A313913

/-- `2*A008706(n)-A313514(n)` -/
def P2438174848303321708.Spec : Prop :=
  ∀ n, P2438174848303321708.a n = A313913 n

end A313913

/-! ## A313913.P10361316710351440501

`(A315754(n)+A312681(n))/2`
-/

namespace A313913.P10361316710351440501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 n + A312681 n : ℚ) / 2

end

end A313913.P10361316710351440501

namespace A313913

/-- `(A315754(n)+A312681(n))/2` -/
def P10361316710351440501.Spec : Prop :=
  ∀ n, P10361316710351440501.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P6145950125311794878

`A008458(n)+A008574(n)-A313514(n)`
-/

namespace A313913.P6145950125311794878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313514 n)

end

end A313913.P6145950125311794878

namespace A313913

/-- `A008458(n)+A008574(n)-A313514(n)` -/
def P6145950125311794878.Spec : Prop :=
  ∀ n, P6145950125311794878.a n = A313913 n

end A313913

/-! ## A313913.P4597786000792989943

`A313514(n)+A005843(A008706(n)-A313514(n))`
-/

namespace A313913.P4597786000792989943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313514 n + A005843 (A008706 n - A313514 n).toNat

end

end A313913.P4597786000792989943

namespace A313913

/-- `A313514(n)+A005843(A008706(n)-A313514(n))` -/
def P4597786000792989943.Spec : Prop :=
  ∀ n, P4597786000792989943.a n = A313913 n

end A313913

/-! ## A313913.P10677154805685807120

`A004396(A313276(n))+2*n`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A313913

/-- `A004396(A313276(n))+2*n` -/
def P10677154805685807120.Spec : Prop :=
  ∀ n, P10677154805685807120.a n = A313913 n

theorem P10677154805685807120.correct : P10677154805685807120.Spec := by
  intro n
  simp only [A313913]

end A313913

/-! ## A313913.P5214532207964904318

`A005843(n)+A004396(A313276(n))`
-/

namespace A313913.P5214532207964904318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313276 n).toNat

end

end A313913.P5214532207964904318

namespace A313913

/-- `A005843(n)+A004396(A313276(n))` -/
def P5214532207964904318.Spec : Prop :=
  ∀ n, P5214532207964904318.a n = A313913 n

theorem P5214532207964904318.correct : P5214532207964904318.Spec := by
  intro n
  simp only [A313913, Nat.add_sub_cancel, A313913.P5214532207964904318.a, A313913.P10677154805685807120.a, A004396, A004396.P17032557045289780609.a, A005843, A005843.P3167286115683555970.a, A313276, A313276.P18153507226389362215.a, A180004, A180004.P5243041503214767891.f1, A180004.P5243041503214767891.f2, A180004.P5243041503214767891.a, A313137, A313137.P995898945456089684.a, A311523, A311523.P10353843342915218177.a, A008592, A008592.P4981059802862696142.a, A315743, A315743.P14010390675010090140.f1, A315743.P14010390675010090140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313913

/-! ## A313913.P15257598947067364510

`A005843(A008706(n))-A313514(n)`
-/

namespace A313913.P15257598947067364510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313514 n

end

end A313913.P15257598947067364510

namespace A313913

/-- `A005843(A008706(n))-A313514(n)` -/
def P15257598947067364510.Spec : Prop :=
  ∀ n, P15257598947067364510.a n = A313913 n

end A313913

/-! ## A313913.P9008770602558466246

`A004396(A313276(n)+A008486(n))`
-/

namespace A313913.P9008770602558466246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313276 n + A008486 n).toNat

end

end A313913.P9008770602558466246

namespace A313913

/-- `A004396(A313276(n)+A008486(n))` -/
def P9008770602558466246.Spec : Prop :=
  ∀ n, P9008770602558466246.a n = A313913 n

end A313913

/-! ## A313913.P18308508602306319734

`A310423(2*n)/A020639(A310382(n))`
-/

namespace A313913.P18308508602306319734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310382 n).toNat : ℚ)

end

end A313913.P18308508602306319734

namespace A313913

/-- `A310423(2*n)/A020639(A310382(n))` -/
def P18308508602306319734.Spec : Prop :=
  ∀ n, P18308508602306319734.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P6358505718635705575

`A310423(2*n)/A020639(A310384(n))`
-/

namespace A313913.P6358505718635705575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310384 n).toNat : ℚ)

end

end A313913.P6358505718635705575

namespace A313913

/-- `A310423(2*n)/A020639(A310384(n))` -/
def P6358505718635705575.Spec : Prop :=
  ∀ n, P6358505718635705575.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P13448970098429868917

`A310423(2*n)/A020639(A310385(n))`
-/

namespace A313913.P13448970098429868917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310385 n).toNat : ℚ)

end

end A313913.P13448970098429868917

namespace A313913

/-- `A310423(2*n)/A020639(A310385(n))` -/
def P13448970098429868917.Spec : Prop :=
  ∀ n, P13448970098429868917.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P368762201640841574

`A310423(2*n)/A020639(A310386(n))`
-/

namespace A313913.P368762201640841574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310386 n).toNat : ℚ)

end

end A313913.P368762201640841574

namespace A313913

/-- `A310423(2*n)/A020639(A310386(n))` -/
def P368762201640841574.Spec : Prop :=
  ∀ n, P368762201640841574.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P9869309895437258081

`A310423(2*n)/A020639(A310387(n))`
-/

namespace A313913.P9869309895437258081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310387 n).toNat : ℚ)

end

end A313913.P9869309895437258081

namespace A313913

/-- `A310423(2*n)/A020639(A310387(n))` -/
def P9869309895437258081.Spec : Prop :=
  ∀ n, P9869309895437258081.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P8066227985473219176

`A310423(2*n)/A020639(A310388(n))`
-/

namespace A313913.P8066227985473219176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310388 n).toNat : ℚ)

end

end A313913.P8066227985473219176

namespace A313913

/-- `A310423(2*n)/A020639(A310388(n))` -/
def P8066227985473219176.Spec : Prop :=
  ∀ n, P8066227985473219176.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P17523455405298722386

`A310423(2*n)/A020639(A310389(n))`
-/

namespace A313913.P17523455405298722386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310389 n).toNat : ℚ)

end

end A313913.P17523455405298722386

namespace A313913

/-- `A310423(2*n)/A020639(A310389(n))` -/
def P17523455405298722386.Spec : Prop :=
  ∀ n, P17523455405298722386.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P2269200482488842328

`A310423(2*n)/A020639(A310390(n))`
-/

namespace A313913.P2269200482488842328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310390 n).toNat : ℚ)

end

end A313913.P2269200482488842328

namespace A313913

/-- `A310423(2*n)/A020639(A310390(n))` -/
def P2269200482488842328.Spec : Prop :=
  ∀ n, P2269200482488842328.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P4138496026774580817

`A310423(2*n)/A020639(A310391(n))`
-/

namespace A313913.P4138496026774580817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310391 n).toNat : ℚ)

end

end A313913.P4138496026774580817

namespace A313913

/-- `A310423(2*n)/A020639(A310391(n))` -/
def P4138496026774580817.Spec : Prop :=
  ∀ n, P4138496026774580817.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P1755003910450647255

`A310423(2*n)/A020639(A310423(n))`
-/

namespace A313913.P1755003910450647255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310423 (2 * n) : ℚ) / (A020639 (A310423 n).toNat : ℚ)

end

end A313913.P1755003910450647255

namespace A313913

/-- `A310423(2*n)/A020639(A310423(n))` -/
def P1755003910450647255.Spec : Prop :=
  ∀ n, P1755003910450647255.a n = (A313913 n : ℚ)

end A313913

/-! ## A313913.P5378918102168198086

`A314165(2*n)+n-7*n`
-/

namespace A313913.P5378918102168198086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314165 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A313913.P5378918102168198086

namespace A313913

/-- `A314165(2*n)+n-7*n` -/
def P5378918102168198086.Spec : Prop :=
  ∀ n, P5378918102168198086.a n = A313913 n

end A313913

/-!
# A313914: Coordination sequence Gal.6.364.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313914, there is no canonical definition to state claims against.
-/

/-! ## A313914.P14760399822320889155

`A315492(n)-A021913(A282913(n))`
-/

namespace A313914.P14760399822320889155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315492 n - A021913 (A282913 n).toNat

end

end A313914.P14760399822320889155

/-! ## A313914.P14859873843800377680

`A315521(n)-A230093(A279879(n))`
-/

namespace A313914.P14859873843800377680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315521 n - A230093 (A279879 n).toNat

end

end A313914.P14859873843800377680

/-! ## A313914.P8164115076379570433

`A313905(n)+A005089(A049972(n+1))`
-/

namespace A313914.P8164115076379570433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n + A005089 (A049972 (n + 1)).toNat

end

end A313914.P8164115076379570433

/-! ## A313914.P9042419552944060855

`A313913(n)+A005089(A022174(n))`
-/

namespace A313914.P9042419552944060855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313913 n + A005089 (A022174 n).toNat

end

end A313914.P9042419552944060855

/-! ## A313914.P11166110178677958384

`A250120(n)+A023416(A004096(n))`
-/

namespace A313914.P11166110178677958384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A023416 (A004096 n).toNat

end

end A313914.P11166110178677958384

/-!
# A313915: Coordination sequence Gal.6.647.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313915, the canonical program `A313915.P8871065517544398615` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313915 has offset 0).

The definition of A313915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313915.P7775667362396277019

`A008458(n)+A312140(n)-A313752(n)`
-/

namespace A313915.P7775667362396277019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A312140 n - A313752 n)

end

end A313915.P7775667362396277019

namespace A313915

/-- `A008458(n)+A312140(n)-A313752(n)` -/
def P7775667362396277019.Spec : Prop :=
  ∀ n, P7775667362396277019.a n = A313915 n

end A313915

/-! ## A313915.P8871065517544398615

`A008486(2*n)+A312140(n)-A313752(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313915

/-- `A008486(2*n)+A312140(n)-A313752(n)` -/
def P8871065517544398615.Spec : Prop :=
  ∀ n, P8871065517544398615.a n = A313915 n

theorem P8871065517544398615.correct : P8871065517544398615.Spec := by
  intro n
  simp only [A313915]

end A313915

/-! ## A313915.P7384282923348431842

`5*n+gcd(n, A066393(n))+A312140(n)-A313752(n)`
-/

namespace A313915.P7384282923348431842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + ((Int.gcd (n : ℤ) (A066393 n) : ℤ) + (A312140 n - A313752 n))

end

end A313915.P7384282923348431842

namespace A313915

/-- `5*n+gcd(n, A066393(n))+A312140(n)-A313752(n)` -/
def P7384282923348431842.Spec : Prop :=
  ∀ n, P7384282923348431842.a n = A313915 n

end A313915

/-! ## A313915.P7571525610831750549

`A313905(n)+A313926(n)-A313916(n)`
-/

namespace A313915.P7571525610831750549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313905 n + (A313926 n - A313916 n)

end

end A313915.P7571525610831750549

namespace A313915

/-- `A313905(n)+A313926(n)-A313916(n)` -/
def P7571525610831750549.Spec : Prop :=
  ∀ n, P7571525610831750549.a n = A313915 n

end A313915

/-! ## A313915.P16890446773884047640

`A313895(n)+A313916(n)-A313898(n)`
-/

namespace A313915.P16890446773884047640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313895 n + (A313916 n - A313898 n)

end

end A313915.P16890446773884047640

namespace A313915

/-- `A313895(n)+A313916(n)-A313898(n)` -/
def P16890446773884047640.Spec : Prop :=
  ∀ n, P16890446773884047640.a n = A313915 n

end A313915

/-! ## A313915.P308882580876001614

`A313916(n)+A313926(n)-A313928(n)`
-/

namespace A313915.P308882580876001614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313916 n + (A313926 n - A313928 n)

end

end A313915.P308882580876001614

namespace A313915

/-- `A313916(n)+A313926(n)-A313928(n)` -/
def P308882580876001614.Spec : Prop :=
  ∀ n, P308882580876001614.a n = A313915 n

end A313915

/-!
# A313916: Coordination sequence Gal.5.293.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313916, the canonical program `A313916.P11453756357199401341` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313916 has offset 0).

The definition of A313916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2279 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313916.P11453756357199401341

`A312077(n)+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313916

/-- `A312077(n)+n` -/
def P11453756357199401341.Spec : Prop :=
  ∀ n, P11453756357199401341.a n = A313916 n

theorem P11453756357199401341.correct : P11453756357199401341.Spec := by
  intro n
  simp only [A313916]

end A313916

/-! ## A313916.P10627338077209258818

`round(A313782(n)+n/5)`
-/

namespace A313916.P10627338077209258818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A313782 n : ℚ) + (n : ℚ) / 5)

end

end A313916.P10627338077209258818

namespace A313916

/-- `round(A313782(n)+n/5)` -/
def P10627338077209258818.Spec : Prop :=
  ∀ n, P10627338077209258818.a n = A313916 n

end A313916

/-! ## A313916.P4976749737354146859

`A074232(A311440(n))`
-/

namespace A313916.P4976749737354146859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A311440 n).toNat

end

end A313916.P4976749737354146859

namespace A313916

/-- `A074232(A311440(n))` -/
def P4976749737354146859.Spec : Prop :=
  ∀ n, P4976749737354146859.a n = A313916 n

end A313916

/-! ## A313916.P17901237354006844971

`A330025(n)+A313295(n)`
-/

namespace A313916.P17901237354006844971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313295 n

end

end A313916.P17901237354006844971

namespace A313916

/-- `A330025(n)+A313295(n)` -/
def P17901237354006844971.Spec : Prop :=
  ∀ n, P17901237354006844971.a n = A313916 n

end A313916

/-! ## A313916.P501281125704817029

`abs(A008592(n)-A313506(n))`
-/

namespace A313916.P501281125704817029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313506 n|

end

end A313916.P501281125704817029

namespace A313916

/-- `abs(A008592(n)-A313506(n))` -/
def P501281125704817029.Spec : Prop :=
  ∀ n, P501281125704817029.a n = A313916 n

end A313916

/-! ## A313916.P8526992187825402262

`A311440(n)+A047263(n+1)`
-/

namespace A313916.P8526992187825402262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A047263 (n + 1)

end

end A313916.P8526992187825402262

namespace A313916

/-- `A311440(n)+A047263(n+1)` -/
def P8526992187825402262.Spec : Prop :=
  ∀ n, P8526992187825402262.a n = A313916 n

end A313916

/-! ## A313916.P12464179981675921668

`(A312658(n)+A008458(n))/2`
-/

namespace A313916.P12464179981675921668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312658 n + A008458 n : ℚ) / 2

end

end A313916.P12464179981675921668

namespace A313916

/-- `(A312658(n)+A008458(n))/2` -/
def P12464179981675921668.Spec : Prop :=
  ∀ n, P12464179981675921668.a n = (A313916 n : ℚ)

end A313916

/-! ## A313916.P10977773860174803258

`2*A008706(n)-A313506(n)`
-/

namespace A313916.P10977773860174803258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313506 n

end

end A313916.P10977773860174803258

namespace A313916

/-- `2*A008706(n)-A313506(n)` -/
def P10977773860174803258.Spec : Prop :=
  ∀ n, P10977773860174803258.a n = A313916 n

end A313916

/-! ## A313916.P16607485013264017205

`A005843(n)-(n-A312077(n))`
-/

namespace A313916.P16607485013264017205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312077 n)

end

end A313916.P16607485013264017205

namespace A313916

/-- `A005843(n)-(n-A312077(n))` -/
def P16607485013264017205.Spec : Prop :=
  ∀ n, P16607485013264017205.a n = A313916 n

theorem P16607485013264017205.correct : P16607485013264017205.Spec := by
  intro n
  simp only [A313916, Nat.add_sub_cancel, A313916.P16607485013264017205.a, A313916.P11453756357199401341.a, A005843, A005843.P3167286115683555970.a, A312077, A312077.P5583150468324327588.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313916

/-! ## A313916.P10202272005452976633

`abs(A008591(n)+n-A313506(n))`
-/

namespace A313916.P10202272005452976633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A313506 n)|

end

end A313916.P10202272005452976633

namespace A313916

/-- `abs(A008591(n)+n-A313506(n))` -/
def P10202272005452976633.Spec : Prop :=
  ∀ n, P10202272005452976633.a n = A313916 n

end A313916

/-! ## A313916.P10589730606977241142

`abs(A008592(n)+n-A315691(n))`
-/

namespace A313916.P10589730606977241142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315691 n)|

end

end A313916.P10589730606977241142

namespace A313916

/-- `abs(A008592(n)+n-A315691(n))` -/
def P10589730606977241142.Spec : Prop :=
  ∀ n, P10589730606977241142.a n = A313916 n

end A313916

/-! ## A313916.P6889029584205725053

`A008574(n)+A004524(A081599(n))+n`
-/

namespace A313916.P6889029584205725053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A004524 (A081599 n).toNat + (n : ℤ))

end

end A313916.P6889029584205725053

namespace A313916

/-- `A008574(n)+A004524(A081599(n))+n` -/
def P6889029584205725053.Spec : Prop :=
  ∀ n, P6889029584205725053.a n = A313916 n

theorem P6889029584205725053.correct : P6889029584205725053.Spec := by
  intro n
  simp only [A313916, Nat.add_sub_cancel, A313916.P6889029584205725053.a, A313916.P11453756357199401341.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, A312077, A312077.P5583150468324327588.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313916

/-! ## A313916.P14683673131279456048

`A008458(n)+A004524(A081599(n))-n`
-/

namespace A313916.P14683673131279456048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A004524 (A081599 n).toNat - (n : ℤ))

end

end A313916.P14683673131279456048

namespace A313916

/-- `A008458(n)+A004524(A081599(n))-n` -/
def P14683673131279456048.Spec : Prop :=
  ∀ n, P14683673131279456048.a n = A313916 n

end A313916

/-! ## A313916.P14978130120255023333

`∑{d}[A008592(n)-A313506(n), A000010(#)]`
-/

namespace A313916.P14978130120255023333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A313916.P14978130120255023333

namespace A313916

/-- `∑{d}[A008592(n)-A313506(n), A000010(#)]` -/
def P14978130120255023333.Spec : Prop :=
  ∀ n, P14978130120255023333.a n = A313916 n

end A313916

/-! ## A313916.P280222244695430376

`A005843(n)-(A313506(n)-A005843(A008574(n)))`
-/

namespace A313916.P280222244695430376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - (A313506 n - A005843 (A008574 n).toNat)

end

end A313916.P280222244695430376

namespace A313916

/-- `A005843(n)-(A313506(n)-A005843(A008574(n)))` -/
def P280222244695430376.Spec : Prop :=
  ∀ n, P280222244695430376.a n = A313916 n

end A313916

/-! ## A313916.P12902781738048794601

`A315737(n)-A253262(n)`
-/

namespace A313916.P12902781738048794601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - A253262 n

end

end A313916.P12902781738048794601

namespace A313916

/-- `A315737(n)-A253262(n)` -/
def P12902781738048794601.Spec : Prop :=
  ∀ n, P12902781738048794601.a n = A313916 n

theorem P12902781738048794601.correct : P12902781738048794601.Spec := by
  intro n
  simp only [A313916, Nat.add_sub_cancel, A313916.P12902781738048794601.a, A313916.P11453756357199401341.a, A253262, A253262.P6184646248567078382.a, A312077, A312077.P5583150468324327588.a, A315737, A315737.P10781297996396530912.a, A004524, A004524.P8943215836771390324.a, A008574, A008574.P1300280032690682112.a, A081599, A081599.P12036139868710074620.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313916

/-! ## A313916.P1986777196849413732

`A315518(n)-A330025(A330025(n)+n)`
-/

namespace A313916.P1986777196849413732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313916.P1986777196849413732

namespace A313916

/-- `A315518(n)-A330025(A330025(n)+n)` -/
def P1986777196849413732.Spec : Prop :=
  ∀ n, P1986777196849413732.a n = A313916 n

end A313916

/-! ## A313916.P18329551593683800771

`A301718(n)-A004525(A057354(n+1))`
-/

namespace A313916.P18329551593683800771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A004525 (A057354 (n + 1)).toNat

end

end A313916.P18329551593683800771

namespace A313916

/-- `A301718(n)-A004525(A057354(n+1))` -/
def P18329551593683800771.Spec : Prop :=
  ∀ n, P18329551593683800771.a n = A313916 n

end A313916

/-! ## A313916.P8941870191030955428

`A315547(n)-A047363(n+1)+n`
-/

namespace A313916.P8941870191030955428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A047363 (n + 1) + (n : ℤ)

end

end A313916.P8941870191030955428

namespace A313916

/-- `A315547(n)-A047363(n+1)+n` -/
def P8941870191030955428.Spec : Prop :=
  ∀ n, P8941870191030955428.a n = A313916 n

end A313916

/-! ## A313916.P3785765867427615094

`A313928(n)+n-A151988(n)`
-/

namespace A313916.P3785765867427615094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313928 n + ((n : ℤ) - A151988 n)

end

end A313916.P3785765867427615094

namespace A313916

/-- `A313928(n)+n-A151988(n)` -/
def P3785765867427615094.Spec : Prop :=
  ∀ n, P3785765867427615094.a n = A313916 n

end A313916

/-!
# A313917: Coordination sequence Gal.5.145.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313917, there is no canonical definition to state claims against.
-/

/-! ## A313917.P2764754103129344002

`xor(A011702(A277974(n)), A301697(n))`
-/

namespace A313917.P2764754103129344002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011702 (A277974 n).toNat) (A301697 n)

end

end A313917.P2764754103129344002

/-! ## A313917.P8573604105001754041

`A008706(n)+A001221(A297204(n))`
-/

namespace A313917.P8573604105001754041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A001221 (A297204 n).toNat

end

end A313917.P8573604105001754041

/-! ## A313917.P441181512924993791

`A250120(n)+A182850(A041637(n))`
-/

namespace A313917.P441181512924993791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A182850 (A041637 n).toNat

end

end A313917.P441181512924993791

/-! ## A313917.P4884670718243048511

`A312065(A087051(n))+A233279(n)`
-/

namespace A313917.P4884670718243048511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312065 (A087051 n).toNat + A233279 n

end

end A313917.P4884670718243048511

/-! ## A313917.P12744956314461707652

`A342383(A002998(n))+A312065(n)`
-/

namespace A313917.P12744956314461707652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A002998 n).toNat + A312065 n

end

end A313917.P12744956314461707652

/-!
# A313918: Coordination sequence Gal.6.332.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313918, the canonical program `A313918.P15568199343954860452` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313918 has offset 0).

The definition of A313918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313918.P11606903041368564748

`abs(10*n-A313498(n))`
-/

namespace A313918.P11606903041368564748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313498 n|

end

end A313918.P11606903041368564748

namespace A313918

/-- `abs(10*n-A313498(n))` -/
def P11606903041368564748.Spec : Prop :=
  ∀ n, P11606903041368564748.a n = A313918 n

end A313918

/-! ## A313918.P11418667639228190457

`(A312668(n)+A008458(n))/2`
-/

namespace A313918.P11418667639228190457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312668 n + A008458 n : ℚ) / 2

end

end A313918.P11418667639228190457

namespace A313918

/-- `(A312668(n)+A008458(n))/2` -/
def P11418667639228190457.Spec : Prop :=
  ∀ n, P11418667639228190457.a n = (A313918 n : ℚ)

theorem P11418667639228190457.correct : P11418667639228190457.Spec := by
  intro n
  simp only [A313918, Nat.add_sub_cancel, A313918.P11418667639228190457.a, A313918.P15568199343954860452.a, A008458, A008458.P10936398443463225625.a, A312668, A312668.P1763801044699896301.a, A314849, A314849.P12102171247342340479.f1, A314849.P12102171247342340479.a, A011864, A011864.P3547417513882699266.a, A314720, A314720.P2366857365604543786.a, A008592, A008592.P4981059802862696142.a, A314210, A314210.P1704120020659904217.a, A310496, A310496.P10218133312535367939.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313918

/-! ## A313918.P9285610380875565300

`2*A008706(n)-A313498(n)`
-/

namespace A313918.P9285610380875565300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313498 n

end

end A313918.P9285610380875565300

namespace A313918

/-- `2*A008706(n)-A313498(n)` -/
def P9285610380875565300.Spec : Prop :=
  ∀ n, P9285610380875565300.a n = A313918 n

end A313918

/-! ## A313918.P4290383640697819284

`A008458(n)+A008574(n)-A313498(n)`
-/

namespace A313918.P4290383640697819284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313498 n)

end

end A313918.P4290383640697819284

namespace A313918

/-- `A008458(n)+A008574(n)-A313498(n)` -/
def P4290383640697819284.Spec : Prop :=
  ∀ n, P4290383640697819284.a n = A313918 n

end A313918

/-! ## A313918.P1294345847755333659

`A005843(n)+A005843(A008574(n))-A313498(n)`
-/

namespace A313918.P1294345847755333659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313498 n)

end

end A313918.P1294345847755333659

namespace A313918

/-- `A005843(n)+A005843(A008574(n))-A313498(n)` -/
def P1294345847755333659.Spec : Prop :=
  ∀ n, P1294345847755333659.a n = A313918 n

end A313918

/-! ## A313918.P3111796507502765463

`A312668(n)+A001281(A008458(n)-A312668(n))`
-/

namespace A313918.P3111796507502765463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312668 n + A001281 (A008458 n - A312668 n).toNat

end

end A313918.P3111796507502765463

namespace A313918

/-- `A312668(n)+A001281(A008458(n)-A312668(n))` -/
def P3111796507502765463.Spec : Prop :=
  ∀ n, P3111796507502765463.a n = A313918 n

end A313918

/-! ## A313918.P11554188421632416183

`A008458(n)-A004526(A008458(n)-A312668(n))`
-/

namespace A313918.P11554188421632416183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A312668 n).toNat

end

end A313918.P11554188421632416183

namespace A313918

/-- `A008458(n)-A004526(A008458(n)-A312668(n))` -/
def P11554188421632416183.Spec : Prop :=
  ∀ n, P11554188421632416183.a n = A313918 n

end A313918

/-! ## A313918.P17310958247139152533

`(A313929(n)+A313908(n))/2`
-/

namespace A313918.P17310958247139152533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313929 n + A313908 n : ℚ) / 2

end

end A313918.P17310958247139152533

namespace A313918

/-- `(A313929(n)+A313908(n))/2` -/
def P17310958247139152533.Spec : Prop :=
  ∀ n, P17310958247139152533.a n = (A313918 n : ℚ)

end A313918

/-! ## A313918.P16526704782521388729

`gcd(A008592(n)-A313498(n), A008683(7*7*(n+1)))`
-/

namespace A313918.P16526704782521388729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A313498 n) (A008683 (7 * (7 * (n + 1))))

end

end A313918.P16526704782521388729

namespace A313918

/-- `gcd(A008592(n)-A313498(n), A008683(7*7*(n+1)))` -/
def P16526704782521388729.Spec : Prop :=
  ∀ n, (P16526704782521388729.a n : ℤ) = A313918 n

end A313918

/-! ## A313918.P14559725930135827100

`A008486(n)+A004526(A312668(n))`
-/

namespace A313918.P14559725930135827100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A312668 n).toNat

end

end A313918.P14559725930135827100

namespace A313918

/-- `A008486(n)+A004526(A312668(n))` -/
def P14559725930135827100.Spec : Prop :=
  ∀ n, P14559725930135827100.a n = A313918 n

end A313918

/-! ## A313918.P16162011929416112609

`A008585(n)+A004525(A312668(n))`
-/

namespace A313918.P16162011929416112609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A312668 n).toNat

end

end A313918.P16162011929416112609

namespace A313918

/-- `A008585(n)+A004525(A312668(n))` -/
def P16162011929416112609.Spec : Prop :=
  ∀ n, P16162011929416112609.a n = A313918 n

end A313918

/-! ## A313918.P18100595808079189006

`A005843(A008706(n))-A313498(n)`
-/

namespace A313918.P18100595808079189006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313498 n

end

end A313918.P18100595808079189006

namespace A313918

/-- `A005843(A008706(n))-A313498(n)` -/
def P18100595808079189006.Spec : Prop :=
  ∀ n, P18100595808079189006.a n = A313918 n

end A313918

/-! ## A313918.P15030045109380336421

`A005843(A008574(n)+n)-A313498(n)`
-/

namespace A313918.P15030045109380336421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313498 n

end

end A313918.P15030045109380336421

namespace A313918

/-- `A005843(A008574(n)+n)-A313498(n)` -/
def P15030045109380336421.Spec : Prop :=
  ∀ n, P15030045109380336421.a n = A313918 n

end A313918

/-! ## A313918.P2370350336414446306

`A008590(n)+A001057(A315636(n))`
-/

namespace A313918.P2370350336414446306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A001057 (A315636 n).toNat

end

end A313918.P2370350336414446306

namespace A313918

/-- `A008590(n)+A001057(A315636(n))` -/
def P2370350336414446306.Spec : Prop :=
  ∀ n, P2370350336414446306.a n = A313918 n

end A313918

/-! ## A313918.P3285223750804633238

`A008574(2*n)-A004526(A315636(n))`
-/

namespace A313918.P3285223750804633238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A004526 (A315636 n).toNat

end

end A313918.P3285223750804633238

namespace A313918

/-- `A008574(2*n)-A004526(A315636(n))` -/
def P3285223750804633238.Spec : Prop :=
  ∀ n, P3285223750804633238.a n = A313918 n

end A313918

/-! ## A313918.P135987886376167712

`2*A008574(n)-A004525(A315636(n))`
-/

namespace A313918.P135987886376167712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A315636 n).toNat

end

end A313918.P135987886376167712

namespace A313918

/-- `2*A008574(n)-A004525(A315636(n))` -/
def P135987886376167712.Spec : Prop :=
  ∀ n, P135987886376167712.a n = A313918 n

end A313918

/-! ## A313918.P15568199343954860452

`A314849(2*n)-4*n`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A313918

/-- `A314849(2*n)-4*n` -/
def P15568199343954860452.Spec : Prop :=
  ∀ n, P15568199343954860452.a n = A313918 n

theorem P15568199343954860452.correct : P15568199343954860452.Spec := by
  intro n
  simp only [A313918]

end A313918

/-! ## A313918.P12357104337532688468

`2*A008574(2*n)-A314140(2*n)`
-/

namespace A313918.P12357104337532688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A314140 (2 * n)

end

end A313918.P12357104337532688468

namespace A313918

/-- `2*A008574(2*n)-A314140(2*n)` -/
def P12357104337532688468.Spec : Prop :=
  ∀ n, P12357104337532688468.a n = A313918 n

end A313918

/-! ## A313918.P13212266047126506450

`A242062(A313831(2*n))+A008586(n)`
-/

namespace A313918.P13212266047126506450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (A313831 (2 * n)).toNat + A008586 n

end

end A313918.P13212266047126506450

namespace A313918

/-- `A242062(A313831(2*n))+A008586(n)` -/
def P13212266047126506450.Spec : Prop :=
  ∀ n, P13212266047126506450.a n = A313918 n

end A313918

/-! ## A313918.P12684737120091876437

`A001281(A312668(n)+A008458(n))`
-/

namespace A313918.P12684737120091876437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312668 n + A008458 n).toNat

end

end A313918.P12684737120091876437

namespace A313918

/-- `A001281(A312668(n)+A008458(n))` -/
def P12684737120091876437.Spec : Prop :=
  ∀ n, P12684737120091876437.a n = A313918 n

end A313918

/-!
# A313919: Coordination sequence Gal.6.630.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313919, there is no canonical definition to state claims against.
-/

/-! ## A313919.P9931688989452046790

`A008458(n)-A139351(A050488(n))`
-/

namespace A313919.P9931688989452046790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A139351 (A050488 n).toNat

end

end A313919.P9931688989452046790

/-! ## A313919.P6572530746385814450

`A008458(n)-A001221(A068904(n+1))`
-/

namespace A313919.P6572530746385814450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A068904 (n + 1)).toNat

end

end A313919.P6572530746385814450

/-! ## A313919.P9125263986845241860

`A311881(A087051(n))+floor(5*n/4)`
-/

namespace A313919.P9125263986845241860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311881 (A087051 n).toNat + ⌊5 * ((n : ℚ) / 4)⌋

end

end A313919.P9125263986845241860

/-! ## A313919.P7852983138271304075

`A313877(n)+A124768(A368094(n))`
-/

namespace A313919.P7852983138271304075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313877 n + A124768 (A368094 n).toNat

end

end A313919.P7852983138271304075

/-! ## A313919.P4724583388461983201

`A301712(n)+A067898(A001429(n+3))`
-/

namespace A313919.P4724583388461983201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n + A067898 (A001429 (n + 3)).toNat

end

end A313919.P4724583388461983201

/-!
# A313920: Coordination sequence Gal.6.656.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313920, there is no canonical definition to state claims against.
-/

/-! ## A313920.P2502569323622770406

`ceil(A313950(2*n)/2)`
-/

namespace A313920.P2502569323622770406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A313950 (2 * n) : ℚ) / 2⌉

end

end A313920.P2502569323622770406

/-! ## A313920.P17645681964724672595

`A313950(A005843(n))/2*A014963(4*n+2)`
-/

namespace A313920.P17645681964724672595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A313950 (A005843 n).toNat : ℚ) / 2 * (A014963 (4 * n + 2) : ℚ)

end

end A313920.P17645681964724672595

/-! ## A313920.P6318081172737907841

`record[A032742(A313950(n))]`
-/

namespace A313920.P6318081172737907841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A313950 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313920.P6318081172737907841

/-! ## A313920.P12685305097088097285

`A004525(A313950(2*n))`
-/

namespace A313920.P12685305097088097285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313950 (2 * n)).toNat

end

end A313920.P12685305097088097285

/-! ## A313920.P7181908417628907402

`record[A025480(A313950(n+1))]`
-/

namespace A313920.P7181908417628907402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A313950 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313920.P7181908417628907402

/-!
# A313921: Coordination sequence Gal.5.313.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313921, the canonical program `A313921.P4862049586297840855` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313921 has offset 0).

The definition of A313921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313921.P3523800066234493380

`A310532(n)+A134667(n)`
-/

namespace A313921.P3523800066234493380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n + A134667 n

end

end A313921.P3523800066234493380

namespace A313921

/-- `A310532(n)+A134667(n)` -/
def P3523800066234493380.Spec : Prop :=
  ∀ n, P3523800066234493380.a n = A313921 n

end A313921

/-! ## A313921.P17821216143654981017

`A310532(n)+n%2*A084091(n)`
-/

namespace A313921.P17821216143654981017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n + ((n % 2 : ℕ) : ℤ) * A084091 n

end

end A313921.P17821216143654981017

namespace A313921

/-- `A310532(n)+n%2*A084091(n)` -/
def P17821216143654981017.Spec : Prop :=
  ∀ n, P17821216143654981017.a n = A313921 n

end A313921

/-! ## A313921.P4862049586297840855

`A134667(n)+A301718(n)-A330025(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313921

/-- `A134667(n)+A301718(n)-A330025(n)` -/
def P4862049586297840855.Spec : Prop :=
  ∀ n, P4862049586297840855.a n = A313921 n

theorem P4862049586297840855.correct : P4862049586297840855.Spec := by
  intro n
  simp only [A313921]

end A313921

/-! ## A313921.P16230790051259884850

`A301718(n)+A311384(n)-A312907(n)`
-/

namespace A313921.P16230790051259884850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A311384 n - A312907 n)

end

end A313921.P16230790051259884850

namespace A313921

/-- `A301718(n)+A311384(n)-A312907(n)` -/
def P16230790051259884850.Spec : Prop :=
  ∀ n, P16230790051259884850.a n = A313921 n

end A313921

/-! ## A313921.P6230489375628731728

`2*A313928(n)-A313932(n)`
-/

namespace A313921.P6230489375628731728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313928 n - A313932 n

end

end A313921.P6230489375628731728

namespace A313921

/-- `2*A313928(n)-A313932(n)` -/
def P6230489375628731728.Spec : Prop :=
  ∀ n, P6230489375628731728.a n = A313921 n

end A313921

/-! ## A313921.P8931928780924409058

`A005843(A313928(n))-A313932(n)`
-/

namespace A313921.P8931928780924409058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313928 n).toNat - A313932 n

end

end A313921.P8931928780924409058

namespace A313921

/-- `A005843(A313928(n))-A313932(n)` -/
def P8931928780924409058.Spec : Prop :=
  ∀ n, P8931928780924409058.a n = A313921 n

end A313921

/-!
# A313922: Coordination sequence Gal.6.356.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313922, the canonical program `A313922.P17676570645266848054` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313922 has offset 0).

The definition of A313922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313922.P17676570645266848054

`A313246(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313922

/-- `A313246(n)+A004525(n)` -/
def P17676570645266848054.Spec : Prop :=
  ∀ n, P17676570645266848054.a n = A313922 n

theorem P17676570645266848054.correct : P17676570645266848054.Spec := by
  intro n
  simp only [A313922]

end A313922

/-! ## A313922.P10000371552413636851

`abs(A008592(n)-A313494(n))`
-/

namespace A313922.P10000371552413636851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313494 n|

end

end A313922.P10000371552413636851

namespace A313922

/-- `abs(A008592(n)-A313494(n))` -/
def P10000371552413636851.Spec : Prop :=
  ∀ n, P10000371552413636851.a n = A313922 n

end A313922

/-! ## A313922.P11296462240282439541

`A313246(n)+Δ[A054925(n)]`
-/

namespace A313922.P11296462240282439541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + (f1 (n + 1) - f1 n)

end

end A313922.P11296462240282439541

namespace A313922

/-- `A313246(n)+Δ[A054925(n)]` -/
def P11296462240282439541.Spec : Prop :=
  ∀ n, P11296462240282439541.a n = A313922 n

end A313922

/-! ## A313922.P9565211436954310276

`2*A008706(n)-A313494(n)`
-/

namespace A313922.P9565211436954310276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313494 n

end

end A313922.P9565211436954310276

namespace A313922

/-- `2*A008706(n)-A313494(n)` -/
def P9565211436954310276.Spec : Prop :=
  ∀ n, P9565211436954310276.a n = A313922 n

end A313922

/-! ## A313922.P977080736999231573

`A313280(n)+A004396(A004525(n))`
-/

namespace A313922.P977080736999231573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313280 n + A004396 (A004525 n).toNat

end

end A313922.P977080736999231573

namespace A313922

/-- `A313280(n)+A004396(A004525(n))` -/
def P977080736999231573.Spec : Prop :=
  ∀ n, P977080736999231573.a n = A313922 n

end A313922

/-! ## A313922.P17375553226231162240

`A314893(n)+n-A004525(A004396(n))`
-/

namespace A313922.P17375553226231162240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314893 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313922.P17375553226231162240

namespace A313922

/-- `A314893(n)+n-A004525(A004396(n))` -/
def P17375553226231162240.Spec : Prop :=
  ∀ n, P17375553226231162240.a n = A313922 n

end A313922

/-! ## A313922.P4361396097608086851

`A008458(n)+A008574(n)-A313494(n)`
-/

namespace A313922.P4361396097608086851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313494 n)

end

end A313922.P4361396097608086851

namespace A313922

/-- `A008458(n)+A008574(n)-A313494(n)` -/
def P4361396097608086851.Spec : Prop :=
  ∀ n, P4361396097608086851.a n = A313922 n

end A313922

/-! ## A313922.P9290196282919538130

`A004525(n)+A313693(n)-A128834(n)`
-/

namespace A313922.P9290196282919538130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313693 n - A128834 n)

end

end A313922.P9290196282919538130

namespace A313922

/-- `A004525(n)+A313693(n)-A128834(n)` -/
def P9290196282919538130.Spec : Prop :=
  ∀ n, P9290196282919538130.a n = A313922 n

end A313922

/-! ## A313922.P7716203948044810519

`A004525(n)+A313872(n)-A004525(A004396(n))`
-/

namespace A313922.P7716203948044810519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313872 n - A004525 (A004396 n).toNat)

end

end A313922.P7716203948044810519

namespace A313922

/-- `A004525(n)+A313872(n)-A004525(A004396(n))` -/
def P7716203948044810519.Spec : Prop :=
  ∀ n, P7716203948044810519.a n = A313922 n

end A313922

/-! ## A313922.P7533545632989625357

`A004525(n)+A313884(n)-A004396(A004525(n))`
-/

namespace A313922.P7533545632989625357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313884 n - A004396 (A004525 n).toNat)

end

end A313922.P7533545632989625357

namespace A313922

/-- `A004525(n)+A313884(n)-A004396(A004525(n))` -/
def P7533545632989625357.Spec : Prop :=
  ∀ n, P7533545632989625357.a n = A313922 n

end A313922

/-! ## A313922.P15362733348636875095

`A315476(n)-A128834(n)`
-/

namespace A313922.P15362733348636875095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n - A128834 n

end

end A313922.P15362733348636875095

namespace A313922

/-- `A315476(n)-A128834(n)` -/
def P15362733348636875095.Spec : Prop :=
  ∀ n, P15362733348636875095.a n = A313922 n

end A313922

/-! ## A313922.P5589711529439886537

`A315476(n)+A010892(n+2)`
-/

namespace A313922.P5589711529439886537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n + A010892 (n + 2)

end

end A313922.P5589711529439886537

namespace A313922

/-- `A315476(n)+A010892(n+2)` -/
def P5589711529439886537.Spec : Prop :=
  ∀ n, P5589711529439886537.a n = A313922 n

end A313922

/-! ## A313922.P1713840611201002823

`A314247(n)-A004396(n-A004525(n))`
-/

namespace A313922.P1713840611201002823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A313922.P1713840611201002823

namespace A313922

/-- `A314247(n)-A004396(n-A004525(n))` -/
def P1713840611201002823.Spec : Prop :=
  ∀ n, P1713840611201002823.a n = A313922 n

end A313922

/-! ## A313922.P16582972981337369801

`A315540(n)-A004525(A004396(n))`
-/

namespace A313922.P16582972981337369801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A004525 (A004396 n).toNat

end

end A313922.P16582972981337369801

namespace A313922

/-- `A315540(n)-A004525(A004396(n))` -/
def P16582972981337369801.Spec : Prop :=
  ∀ n, P16582972981337369801.a n = A313922 n

end A313922

/-! ## A313922.P1932978598263544704

`A004525(A312152(2*n))+A004525(n)`
-/

namespace A313922.P1932978598263544704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312152 (2 * n)).toNat + A004525 n

end

end A313922.P1932978598263544704

namespace A313922

/-- `A004525(A312152(2*n))+A004525(n)` -/
def P1932978598263544704.Spec : Prop :=
  ∀ n, P1932978598263544704.a n = A313922 n

end A313922

/-!
# A313923: Coordination sequence Gal.4.139.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313923, the canonical program `A313923.P4927546755448951901` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313923 has offset 0).

The definition of A313923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313923.P4927546755448951901

`A310529(n)+A238469(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313923

/-- `A310529(n)+A238469(n)` -/
def P4927546755448951901.Spec : Prop :=
  ∀ n, P4927546755448951901.a n = A313923 n

theorem P4927546755448951901.correct : P4927546755448951901.Spec := by
  intro n
  simp only [A313923]

end A313923

/-! ## A313923.P12905235048577351138

`A314148(n)-A238470(n)`
-/

namespace A313923.P12905235048577351138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n - A238470 n

end

end A313923.P12905235048577351138

namespace A313923

/-- `A314148(n)-A238470(n)` -/
def P12905235048577351138.Spec : Prop :=
  ∀ n, P12905235048577351138.a n = A313923 n

end A313923

/-! ## A313923.P1404050883264519450

`A315339(n)-A238469(n)`
-/

namespace A313923.P1404050883264519450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 n - A238469 n

end

end A313923.P1404050883264519450

namespace A313923

/-- `A315339(n)-A238469(n)` -/
def P1404050883264519450.Spec : Prop :=
  ∀ n, P1404050883264519450.a n = A313923 n

end A313923

/-! ## A313923.P9807945797887563672

`abs(A008592(n)-A313487(n))`
-/

namespace A313923.P9807945797887563672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313487 n|

end

end A313923.P9807945797887563672

namespace A313923

/-- `abs(A008592(n)-A313487(n))` -/
def P9807945797887563672.Spec : Prop :=
  ∀ n, P9807945797887563672.a n = A313923 n

end A313923

/-! ## A313923.P5377710038099654825

`A194225(n+1)+A008706(n)`
-/

namespace A313923.P5377710038099654825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194225 (n + 1) + A008706 n

end

end A313923.P5377710038099654825

namespace A313923

/-- `A194225(n+1)+A008706(n)` -/
def P5377710038099654825.Spec : Prop :=
  ∀ n, P5377710038099654825.a n = A313923 n

end A313923

/-! ## A313923.P7420302399508788221

`A311914(n)+A047588(n+1)`
-/

namespace A313923.P7420302399508788221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311914 n + A047588 (n + 1)

end

end A313923.P7420302399508788221

namespace A313923

/-- `A311914(n)+A047588(n+1)` -/
def P7420302399508788221.Spec : Prop :=
  ∀ n, P7420302399508788221.a n = A313923 n

end A313923

/-! ## A313923.P11630765468181383152

`A242062(3*n)+A008706(n)`
-/

namespace A313923.P11630765468181383152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (3 * n) + A008706 n

end

end A313923.P11630765468181383152

namespace A313923

/-- `A242062(3*n)+A008706(n)` -/
def P11630765468181383152.Spec : Prop :=
  ∀ n, P11630765468181383152.a n = A313923 n

end A313923

/-! ## A313923.P16622810137914897742

`(A312680(n)+A008458(n))/2`
-/

namespace A313923.P16622810137914897742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312680 n + A008458 n : ℚ) / 2

end

end A313923.P16622810137914897742

namespace A313923

/-- `(A312680(n)+A008458(n))/2` -/
def P16622810137914897742.Spec : Prop :=
  ∀ n, P16622810137914897742.a n = (A313923 n : ℚ)

end A313923

/-! ## A313923.P2739439519200045219

`2*A008706(n)-A313487(n)`
-/

namespace A313923.P2739439519200045219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313487 n

end

end A313923.P2739439519200045219

namespace A313923

/-- `2*A008706(n)-A313487(n)` -/
def P2739439519200045219.Spec : Prop :=
  ∀ n, P2739439519200045219.a n = A313923 n

end A313923

/-! ## A313923.P13198736849453543373

`A315339(n)-A238470(2*n)`
-/

namespace A313923.P13198736849453543373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 n - A238470 (2 * n)

end

end A313923.P13198736849453543373

namespace A313923

/-- `A315339(n)-A238470(2*n)` -/
def P13198736849453543373.Spec : Prop :=
  ∀ n, P13198736849453543373.a n = A313923 n

end A313923

/-! ## A313923.P17896899953127707072

`A008458(n)-A242062(4*n)`
-/

namespace A313923.P17896899953127707072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A242062 (4 * n)

end

end A313923.P17896899953127707072

namespace A313923

/-- `A008458(n)-A242062(4*n)` -/
def P17896899953127707072.Spec : Prop :=
  ∀ n, P17896899953127707072.a n = A313923 n

end A313923

/-! ## A313923.P17184030581834934216

`A008458(n)+A008574(n)-A313487(n)`
-/

namespace A313923.P17184030581834934216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313487 n)

end

end A313923.P17184030581834934216

namespace A313923

/-- `A008458(n)+A008574(n)-A313487(n)` -/
def P17184030581834934216.Spec : Prop :=
  ∀ n, P17184030581834934216.a n = A313923 n

end A313923

/-! ## A313923.P15565137679798712731

`A314193(n)-A175629(n-A175629(n))`
-/

namespace A313923.P15565137679798712731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314193 n - A175629 ((n : ℤ) - A175629 n).toNat

end

end A313923.P15565137679798712731

namespace A313923

/-- `A314193(n)-A175629(n-A175629(n))` -/
def P15565137679798712731.Spec : Prop :=
  ∀ n, P15565137679798712731.a n = A313923 n

end A313923

/-! ## A313923.P9028455948749147312

`A005843(n)+A005843(A008574(n))-A313487(n)`
-/

namespace A313923.P9028455948749147312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313487 n)

end

end A313923.P9028455948749147312

namespace A313923

/-- `A005843(n)+A005843(A008574(n))-A313487(n)` -/
def P9028455948749147312.Spec : Prop :=
  ∀ n, P9028455948749147312.a n = A313923 n

end A313923

/-! ## A313923.P9488975063179303786

`A005843(A008574(n)+n)-A313487(n)`
-/

namespace A313923.P9488975063179303786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313487 n

end

end A313923.P9488975063179303786

namespace A313923

/-- `A005843(A008574(n)+n)-A313487(n)` -/
def P9488975063179303786.Spec : Prop :=
  ∀ n, P9488975063179303786.a n = A313923 n

end A313923

/-! ## A313923.P9084725253347665666

`A004396(A313289(n))+2*n`
-/

namespace A313923.P9084725253347665666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313289 n).toNat + (2 * n : ℤ)

end

end A313923.P9084725253347665666

namespace A313923

/-- `A004396(A313289(n))+2*n` -/
def P9084725253347665666.Spec : Prop :=
  ∀ n, P9084725253347665666.a n = A313923 n

end A313923

/-! ## A313923.P17094005190333677858

`A028310(A315511(2*n)-A315490(n))`
-/

namespace A313923.P17094005190333677858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A315511 (2 * n) - A315490 n).toNat

end

end A313923.P17094005190333677858

namespace A313923

/-- `A028310(A315511(2*n)-A315490(n))` -/
def P17094005190333677858.Spec : Prop :=
  ∀ n, P17094005190333677858.a n = A313923 n

end A313923

/-! ## A313923.P124947888659707425

`A315511(2*n)+A315490(n+1)-A315511(2*n+1)`
-/

namespace A313923.P124947888659707425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 (2 * n) + (A315490 (n + 1) - A315511 (2 * n + 1))

end

end A313923.P124947888659707425

namespace A313923

/-- `A315511(2*n)+A315490(n+1)-A315511(2*n+1)` -/
def P124947888659707425.Spec : Prop :=
  ∀ n, P124947888659707425.a n = A313923 n

end A313923

/-! ## A313923.P2886631853141457769

`A242062(10*n)+A008574(n)`
-/

namespace A313923.P2886631853141457769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (10 * n) + A008574 n

end

end A313923.P2886631853141457769

namespace A313923

/-- `A242062(10*n)+A008574(n)` -/
def P2886631853141457769.Spec : Prop :=
  ∀ n, P2886631853141457769.a n = A313923 n

end A313923

/-! ## A313923.P2579562139696163188

`A008574(2*n)-A242062(A008591(2*n))`
-/

namespace A313923.P2579562139696163188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A242062 (A008591 (2 * n)).toNat

end

end A313923.P2579562139696163188

namespace A313923

/-- `A008574(2*n)-A242062(A008591(2*n))` -/
def P2579562139696163188.Spec : Prop :=
  ∀ n, P2579562139696163188.a n = A313923 n

end A313923

/-!
# A313924: Coordination sequence Gal.6.626.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313924, the canonical program `A313924.P10563583441028807303` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313924 has offset 0).

The definition of A313924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2244 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313924.P5644904354022233244

`A312123(n)+n`
-/

namespace A313924.P5644904354022233244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312123 n + (n : ℤ)

end

end A313924.P5644904354022233244

namespace A313924

/-- `A312123(n)+n` -/
def P5644904354022233244.Spec : Prop :=
  ∀ n, P5644904354022233244.a n = A313924 n

end A313924

/-! ## A313924.P10563583441028807303

`A313251(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313924

/-- `A313251(n)+A004525(n)` -/
def P10563583441028807303.Spec : Prop :=
  ∀ n, P10563583441028807303.a n = A313924 n

theorem P10563583441028807303.correct : P10563583441028807303.Spec := by
  intro n
  simp only [A313924]

end A313924

/-! ## A313924.P14796737113931793452

`A315479(n)-A128834(n)`
-/

namespace A313924.P14796737113931793452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315479 n - A128834 n

end

end A313924.P14796737113931793452

namespace A313924

/-- `A315479(n)-A128834(n)` -/
def P14796737113931793452.Spec : Prop :=
  ∀ n, P14796737113931793452.a n = A313924 n

theorem P14796737113931793452.correct : P14796737113931793452.Spec := by
  intro n
  simp only [A313924, Nat.add_sub_cancel, A313924.P14796737113931793452.a, A313924.P10563583441028807303.a, A004525, A004525.P4158271949796742323.a, A128834, A128834.P16779687439637953687.a, A313251, A313251.P8215173569806842908.a, A315479, A315479.P4180751109111946087.a, A004396, A004396.P17032557045289780609.a, A010892, A010892.P14408744864468695543.a, A312620, A312620.P764241885793850481.a, A313698, A313698.P13755199689401812010.a, A312526, A312526.P17098405118883711689.f1, A312526.P17098405118883711689.a, A011865, A011865.P18048699183673763300.a, A312065, A312065.P12266081500591104946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313924

/-! ## A313924.P4752554293439195791

`A315335(n)-A134667(n)`
-/

namespace A313924.P4752554293439195791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315335 n - A134667 n

end

end A313924.P4752554293439195791

namespace A313924

/-- `A315335(n)-A134667(n)` -/
def P4752554293439195791.Spec : Prop :=
  ∀ n, P4752554293439195791.a n = A313924 n

end A313924

/-! ## A313924.P14931860498530823370

`A314899(n)+∑[A131735(n)]`
-/

namespace A313924.P14931860498530823370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313924.P14931860498530823370

namespace A313924

/-- `A314899(n)+∑[A131735(n)]` -/
def P14931860498530823370.Spec : Prop :=
  ∀ n, P14931860498530823370.a n = A313924 n

end A313924

/-! ## A313924.P13723254742314504172

`A311257(n)+A047513(n+1)`
-/

namespace A313924.P13723254742314504172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A047513 (n + 1)

end

end A313924.P13723254742314504172

namespace A313924

/-- `A311257(n)+A047513(n+1)` -/
def P13723254742314504172.Spec : Prop :=
  ∀ n, P13723254742314504172.a n = A313924 n

end A313924

/-! ## A313924.P2670166032612850743

`A314688(n)+n-A128834(n)`
-/

namespace A313924.P2670166032612850743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + ((n : ℤ) - A128834 n)

end

end A313924.P2670166032612850743

namespace A313924

/-- `A314688(n)+n-A128834(n)` -/
def P2670166032612850743.Spec : Prop :=
  ∀ n, P2670166032612850743.a n = A313924 n

end A313924

/-! ## A313924.P2954913894836891846

`A005843(n)-(n-A312123(n))`
-/

namespace A313924.P2954913894836891846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312123 n)

end

end A313924.P2954913894836891846

namespace A313924

/-- `A005843(n)-(n-A312123(n))` -/
def P2954913894836891846.Spec : Prop :=
  ∀ n, P2954913894836891846.a n = A313924 n

end A313924

/-! ## A313924.P4353867427660187848

`abs(A008592(n)+n-A315687(n))`
-/

namespace A313924.P4353867427660187848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n + ((n : ℤ) - A315687 n)|

end

end A313924.P4353867427660187848

namespace A313924

/-- `abs(A008592(n)+n-A315687(n))` -/
def P4353867427660187848.Spec : Prop :=
  ∀ n, P4353867427660187848.a n = A313924 n

end A313924

/-! ## A313924.P11999039178685713019

`A313251(n)+n-∑[A021913(n)]`
-/

namespace A313924.P11999039178685713019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313924.P11999039178685713019

namespace A313924

/-- `A313251(n)+n-∑[A021913(n)]` -/
def P11999039178685713019.Spec : Prop :=
  ∀ n, P11999039178685713019.a n = A313924 n

end A313924

/-! ## A313924.P17733635786990439959

`A313251(n)+n-Δ[A011848(n)]`
-/

namespace A313924.P17733635786990439959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313924.P17733635786990439959

namespace A313924

/-- `A313251(n)+n-Δ[A011848(n)]` -/
def P17733635786990439959.Spec : Prop :=
  ∀ n, P17733635786990439959.a n = A313924 n

end A313924

/-! ## A313924.P645172665265591488

`A005408(n)-1-(n-A312123(n))`
-/

namespace A313924.P645172665265591488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - 1 - ((n : ℤ) - A312123 n)

end

end A313924.P645172665265591488

namespace A313924

/-- `A005408(n)-1-(n-A312123(n))` -/
def P645172665265591488.Spec : Prop :=
  ∀ n, P645172665265591488.a n = A313924 n

end A313924

/-! ## A313924.P2810763463213321279

`A000027(2*n-(n-A312123(n)))`
-/

namespace A313924.P2810763463213321279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n : ℤ) - ((n : ℤ) - A312123 n)).toNat

end

end A313924.P2810763463213321279

namespace A313924

/-- `A000027(2*n-(n-A312123(n)))` -/
def P2810763463213321279.Spec : Prop :=
  ∀ n, P2810763463213321279.a n = A313924 n

end A313924

/-! ## A313924.P5772165125510503406

`A004525(4*n)-(n-A312123(n))`
-/

namespace A313924.P5772165125510503406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (4 * n) - ((n : ℤ) - A312123 n)

end

end A313924.P5772165125510503406

namespace A313924

/-- `A004525(4*n)-(n-A312123(n))` -/
def P5772165125510503406.Spec : Prop :=
  ∀ n, P5772165125510503406.a n = A313924 n

end A313924

/-! ## A313924.P11588824806359242

`A313213(n)+A004396(2*A004525(n))`
-/

namespace A313924.P11588824806359242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313213 n + A004396 (2 * A004525 n).toNat

end

end A313924.P11588824806359242

namespace A313924

/-- `A313213(n)+A004396(2*A004525(n))` -/
def P11588824806359242.Spec : Prop :=
  ∀ n, P11588824806359242.a n = A313924 n

end A313924

/-! ## A313924.P8535473327486476765

`A314899(n)+n-A004525(A004396(n))`
-/

namespace A313924.P8535473327486476765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313924.P8535473327486476765

namespace A313924

/-- `A314899(n)+n-A004525(A004396(n))` -/
def P8535473327486476765.Spec : Prop :=
  ∀ n, P8535473327486476765.a n = A313924 n

end A313924

/-! ## A313924.P14817732053136210980

`A314912(n)+n-A004396(A004525(n))`
-/

namespace A313924.P14817732053136210980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314912 n + ((n : ℤ) - A004396 (A004525 n).toNat)

end

end A313924.P14817732053136210980

namespace A313924

/-- `A314912(n)+n-A004396(A004525(n))` -/
def P14817732053136210980.Spec : Prop :=
  ∀ n, P14817732053136210980.a n = A313924 n

end A313924

/-! ## A313924.P16384301816894536966

`A008458(n)+A008574(n)-A313485(n)`
-/

namespace A313924.P16384301816894536966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313485 n)

end

end A313924.P16384301816894536966

namespace A313924

/-- `A008458(n)+A008574(n)-A313485(n)` -/
def P16384301816894536966.Spec : Prop :=
  ∀ n, P16384301816894536966.a n = A313924 n

end A313924

/-! ## A313924.P5934969568984281857

`A004525(n)+A313879(n)-A004525(A004396(n))`
-/

namespace A313924.P5934969568984281857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313879 n - A004525 (A004396 n).toNat)

end

end A313924.P5934969568984281857

namespace A313924

/-- `A004525(n)+A313879(n)-A004525(A004396(n))` -/
def P5934969568984281857.Spec : Prop :=
  ∀ n, P5934969568984281857.a n = A313924 n

end A313924

/-! ## A313924.P13677714938739410221

`A314247(n)-A004525(n-A004396(n))`
-/

namespace A313924.P13677714938739410221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314247 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A313924.P13677714938739410221

namespace A313924

/-- `A314247(n)-A004525(n-A004396(n))` -/
def P13677714938739410221.Spec : Prop :=
  ∀ n, P13677714938739410221.a n = A313924 n

end A313924

/-!
# A313925: Coordination sequence Gal.6.630.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313925, there is no canonical definition to state claims against.
-/

/-! ## A313925.P13408108010570283879

`A008706(n)+A008481(A215399(n+1))`
-/

namespace A313925.P13408108010570283879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A008481 (A215399 (n + 1)).toNat

end

end A313925.P13408108010570283879

/-! ## A313925.P5128481344456902782

`A299910(n)-A289112(A194635(n+1))`
-/

namespace A313925.P5128481344456902782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299910 n - A289112 (A194635 (n + 1)).toNat

end

end A313925.P5128481344456902782

/-! ## A313925.P6086280031004414705

`A313845(n)+A024363(A000111(n))`
-/

namespace A313925.P6086280031004414705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313845 n + A024363 (A000111 n).toNat

end

end A313925.P6086280031004414705

/-! ## A313925.P11175936608851878589

`A336922(A294298(n))+A250120(n)`
-/

namespace A313925.P11175936608851878589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336922 (A294298 n).toNat + A250120 n

end

end A313925.P11175936608851878589

/-! ## A313925.P15095585378143214774

`A313979(n)-A025426(A041403(n))`
-/

namespace A313925.P15095585378143214774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313979 n - A025426 (A041403 n).toNat

end

end A313925.P15095585378143214774

/-!
# A313926: Coordination sequence Gal.4.140.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313926, the canonical program `A313926.P12630121113150282533` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313926 has offset 0).

The definition of A313926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313926.P12630121113150282533

`A312140(n)+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313926

/-- `A312140(n)+n` -/
def P12630121113150282533.Spec : Prop :=
  ∀ n, P12630121113150282533.a n = A313926 n

theorem P12630121113150282533.correct : P12630121113150282533.Spec := by
  intro n
  simp only [A313926]

end A313926

/-! ## A313926.P17246227863076369784

`A313258(n)+A004525(n)`
-/

namespace A313926.P17246227863076369784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313258 n + A004525 n

end

end A313926.P17246227863076369784

namespace A313926

/-- `A313258(n)+A004525(n)` -/
def P17246227863076369784.Spec : Prop :=
  ∀ n, P17246227863076369784.a n = A313926 n

end A313926

/-! ## A313926.P17822825126369421916

`A313793(n)+Δ[A011861(n)]`
-/

namespace A313926.P17822825126369421916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + (f1 (n + 1) - f1 n)

end

end A313926.P17822825126369421916

namespace A313926

/-- `A313793(n)+Δ[A011861(n)]` -/
def P17822825126369421916.Spec : Prop :=
  ∀ n, P17822825126369421916.a n = A313926 n

end A313926

/-! ## A313926.P4715694458021195913

`A311285(n)+A047513(n+1)`
-/

namespace A313926.P4715694458021195913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311285 n + A047513 (n + 1)

end

end A313926.P4715694458021195913

namespace A313926

/-- `A311285(n)+A047513(n+1)` -/
def P4715694458021195913.Spec : Prop :=
  ∀ n, P4715694458021195913.a n = A313926 n

theorem P4715694458021195913.correct : P4715694458021195913.Spec := by
  intro n
  simp only [A313926, Nat.add_sub_cancel, A313926.P4715694458021195913.a, A313926.P12630121113150282533.a, A047513, A047513.P16955071387491425171.f1, A047513.P16955071387491425171.a, A311285, A311285.P17835252962128537387.a, A312140, A312140.P16557486338365459525.a, A004525, A004525.P4158271949796742323.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313926

/-! ## A313926.P7933356898117466083

`(A312682(n)+A008458(n))/2`
-/

namespace A313926.P7933356898117466083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312682 n + A008458 n : ℚ) / 2

end

end A313926.P7933356898117466083

namespace A313926

/-- `(A312682(n)+A008458(n))/2` -/
def P7933356898117466083.Spec : Prop :=
  ∀ n, P7933356898117466083.a n = (A313926 n : ℚ)

end A313926

/-! ## A313926.P13230183460305936055

`2*A008706(n)-A313480(n)`
-/

namespace A313926.P13230183460305936055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313480 n

end

end A313926.P13230183460305936055

namespace A313926

/-- `2*A008706(n)-A313480(n)` -/
def P13230183460305936055.Spec : Prop :=
  ∀ n, P13230183460305936055.a n = A313926 n

end A313926

/-! ## A313926.P829591773640391876

`A314969(n)+n-A004525(n)`
-/

namespace A313926.P829591773640391876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314969 n + ((n : ℤ) - A004525 n)

end

end A313926.P829591773640391876

namespace A313926

/-- `A314969(n)+n-A004525(n)` -/
def P829591773640391876.Spec : Prop :=
  ∀ n, P829591773640391876.a n = A313926 n

theorem P829591773640391876.correct : P829591773640391876.Spec := by
  intro n
  simp only [A313926, Nat.add_sub_cancel, A313926.P829591773640391876.a, A313926.P12630121113150282533.a, A004525, A004525.P4158271949796742323.a, A312140, A312140.P16557486338365459525.a, A314969, A314969.P17921854442604734378.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313926

/-! ## A313926.P1087238091937194271

`A314829(n)+n-A046978(n)`
-/

namespace A313926.P1087238091937194271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ((n : ℤ) - A046978 n)

end

end A313926.P1087238091937194271

namespace A313926

/-- `A314829(n)+n-A046978(n)` -/
def P1087238091937194271.Spec : Prop :=
  ∀ n, P1087238091937194271.a n = A313926 n

end A313926

/-! ## A313926.P9459257222144869705

`A005843(n)-(n-A312140(n))`
-/

namespace A313926.P9459257222144869705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312140 n)

end

end A313926.P9459257222144869705

namespace A313926

/-- `A005843(n)-(n-A312140(n))` -/
def P9459257222144869705.Spec : Prop :=
  ∀ n, P9459257222144869705.a n = A313926 n

theorem P9459257222144869705.correct : P9459257222144869705.Spec := by
  intro n
  simp only [A313926, Nat.add_sub_cancel, A313926.P9459257222144869705.a, A313926.P12630121113150282533.a, A005843, A005843.P3167286115683555970.a, A312140, A312140.P16557486338365459525.a, A004525, A004525.P4158271949796742323.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313926

/-! ## A313926.P3677797736106762475

`A313115(n)+A004525(A004525(n)+n)`
-/

namespace A313926.P3677797736106762475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A313926.P3677797736106762475

namespace A313926

/-- `A313115(n)+A004525(A004525(n)+n)` -/
def P3677797736106762475.Spec : Prop :=
  ∀ n, P3677797736106762475.a n = A313926 n

end A313926

/-! ## A313926.P721486514970058197

`A314896(n)+n-A004525(A004525(n))`
-/

namespace A313926.P721486514970058197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314896 n + ((n : ℤ) - A004525 (A004525 n).toNat)

end

end A313926.P721486514970058197

namespace A313926

/-- `A314896(n)+n-A004525(A004525(n))` -/
def P721486514970058197.Spec : Prop :=
  ∀ n, P721486514970058197.a n = A313926 n

theorem P721486514970058197.correct : P721486514970058197.Spec := by
  intro n
  simp only [A313926, Nat.add_sub_cancel, A313926.P721486514970058197.a, A313926.P12630121113150282533.a, A004525, A004525.P4158271949796742323.a, A312140, A312140.P16557486338365459525.a, A314896, A314896.P16109661729483114242.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313926

/-! ## A313926.P14520061653327197996

`A008458(n)+A008574(n)-A313480(n)`
-/

namespace A313926.P14520061653327197996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313480 n)

end

end A313926.P14520061653327197996

namespace A313926

/-- `A008458(n)+A008574(n)-A313480(n)` -/
def P14520061653327197996.Spec : Prop :=
  ∀ n, P14520061653327197996.a n = A313926 n

end A313926

/-! ## A313926.P9432800703906379096

`A004525(n)+A313875(n)-A004525(A004525(n))`
-/

namespace A313926.P9432800703906379096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313875 n - A004525 (A004525 n).toNat)

end

end A313926.P9432800703906379096

namespace A313926

/-- `A004525(n)+A313875(n)-A004525(A004525(n))` -/
def P9432800703906379096.Spec : Prop :=
  ∀ n, P9432800703906379096.a n = A313926 n

theorem P9432800703906379096.correct : P9432800703906379096.Spec := by
  intro n
  simp only [A313926, Nat.add_sub_cancel, A313926.P9432800703906379096.a, A313926.P12630121113150282533.a, A004525, A004525.P4158271949796742323.a, A312140, A312140.P16557486338365459525.a, A313875, A313875.P9058260822961243366.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313926

/-! ## A313926.P18028246294461814219

`A301710(n)-A046978(n-A046978(n))`
-/

namespace A313926.P18028246294461814219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A313926.P18028246294461814219

namespace A313926

/-- `A301710(n)-A046978(n-A046978(n))` -/
def P18028246294461814219.Spec : Prop :=
  ∀ n, P18028246294461814219.a n = A313926 n

end A313926

/-! ## A313926.P10310552842194438015

`A315520(n)-A046978(n)`
-/

namespace A313926.P10310552842194438015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315520 n - A046978 n

end

end A313926.P10310552842194438015

namespace A313926

/-- `A315520(n)-A046978(n)` -/
def P10310552842194438015.Spec : Prop :=
  ∀ n, P10310552842194438015.a n = A313926 n

end A313926

/-! ## A313926.P18288074499479176898

`A315543(n)-A004525(A004525(n))`
-/

namespace A313926.P18288074499479176898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315543 n - A004525 (A004525 n).toNat

end

end A313926.P18288074499479176898

namespace A313926

/-- `A315543(n)-A004525(A004525(n))` -/
def P18288074499479176898.Spec : Prop :=
  ∀ n, P18288074499479176898.a n = A313926 n

theorem P18288074499479176898.correct : P18288074499479176898.Spec := by
  intro n
  simp only [A313926, Nat.add_sub_cancel, A313926.P18288074499479176898.a, A313926.P12630121113150282533.a, A004525, A004525.P4158271949796742323.a, A312140, A312140.P16557486338365459525.a, A315543, A315543.P9834102323510964404.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A314896, A314896.P16109661729483114242.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313926

/-! ## A313926.P15542128817133515222

`A004396(A313292(n))+2*n`
-/

namespace A313926.P15542128817133515222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313292 n).toNat + (2 * n : ℤ)

end

end A313926.P15542128817133515222

namespace A313926

/-- `A004396(A313292(n))+2*n` -/
def P15542128817133515222.Spec : Prop :=
  ∀ n, P15542128817133515222.a n = A313926 n

end A313926

/-!
# A313927: Coordination sequence Gal.5.135.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313927, the canonical program `A313927.P15646847580110018084` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313927 has offset 0).

The definition of A313927 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313927.P15646847580110018084

`A313125(n)+A004396(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313927

/-- `A313125(n)+A004396(n)` -/
def P15646847580110018084.Spec : Prop :=
  ∀ n, P15646847580110018084.a n = A313927 n

theorem P15646847580110018084.correct : P15646847580110018084.Spec := by
  intro n
  simp only [A313927]

end A313927

/-! ## A313927.P16406795946431839574

`abs(A008592(n)-A313477(n))`
-/

namespace A313927.P16406795946431839574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313477 n|

end

end A313927.P16406795946431839574

namespace A313927

/-- `abs(A008592(n)-A313477(n))` -/
def P16406795946431839574.Spec : Prop :=
  ∀ n, P16406795946431839574.a n = A313927 n

end A313927

/-! ## A313927.P11525213811724377197

`A313799(n)+Δ[A011862(n)]`
-/

namespace A313927.P11525213811724377197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + (f1 (n + 1) - f1 n)

end

end A313927.P11525213811724377197

namespace A313927

/-- `A313799(n)+Δ[A011862(n)]` -/
def P11525213811724377197.Spec : Prop :=
  ∀ n, P11525213811724377197.a n = A313927 n

end A313927

/-! ## A313927.P12063240036390674527

`(A312683(n)+A008458(n))/2`
-/

namespace A313927.P12063240036390674527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312683 n + A008458 n : ℚ) / 2

end

end A313927.P12063240036390674527

namespace A313927

/-- `(A312683(n)+A008458(n))/2` -/
def P12063240036390674527.Spec : Prop :=
  ∀ n, P12063240036390674527.a n = (A313927 n : ℚ)

end A313927

/-! ## A313927.P5656542162003595159

`A313125(n)+A002264(2*n+1)`
-/

namespace A313927.P5656542162003595159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A002264 (2 * n + 1)

end

end A313927.P5656542162003595159

namespace A313927

/-- `A313125(n)+A002264(2*n+1)` -/
def P5656542162003595159.Spec : Prop :=
  ∀ n, P5656542162003595159.a n = A313927 n

theorem P5656542162003595159.correct : P5656542162003595159.Spec := by
  intro n
  simp only [A313927, Nat.add_sub_cancel, A313927.P5656542162003595159.a, A313927.P15646847580110018084.a, A002264, A002264.P5647656940077635922.a, A004396, A004396.P17032557045289780609.a, A313125, A313125.P8596607718569848778.a, A008592, A008592.P4981059802862696142.a, A315463, A315463.P16900864329988193490.a, A315256, A315256.P12326446692328451720.a, A314828, A314828.P12558538320936083635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313927

/-! ## A313927.P344405881609662949

`A313125(n)+A004525(A004773(n))`
-/

namespace A313927.P344405881609662949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A004525 (A004773 n).toNat

end

end A313927.P344405881609662949

namespace A313927

/-- `A313125(n)+A004525(A004773(n))` -/
def P344405881609662949.Spec : Prop :=
  ∀ n, P344405881609662949.a n = A313927 n

end A313927

/-! ## A313927.P11251585220646920211

`A311993(n)+A004396(A004396(n)+n)`
-/

namespace A313927.P11251585220646920211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311993 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A313927.P11251585220646920211

namespace A313927

/-- `A311993(n)+A004396(A004396(n)+n)` -/
def P11251585220646920211.Spec : Prop :=
  ∀ n, P11251585220646920211.a n = A313927 n

end A313927

/-! ## A313927.P2769752498671354210

`A008458(n)+A008574(n)-A313477(n)`
-/

namespace A313927.P2769752498671354210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313477 n)

end

end A313927.P2769752498671354210

namespace A313927

/-- `A008458(n)+A008574(n)-A313477(n)` -/
def P2769752498671354210.Spec : Prop :=
  ∀ n, P2769752498671354210.a n = A313927 n

end A313927

/-! ## A313927.P8783475027343054902

`A004396(n)+A313799(n)-A004396(A004396(n))`
-/

namespace A313927.P8783475027343054902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313799 n - A004396 (A004396 n).toNat)

end

end A313927.P8783475027343054902

namespace A313927

/-- `A004396(n)+A313799(n)-A004396(A004396(n))` -/
def P8783475027343054902.Spec : Prop :=
  ∀ n, P8783475027343054902.a n = A313927 n

end A313927

/-! ## A313927.P1448272295308136425

`A005843(n)+A005843(A008574(n))-A313477(n)`
-/

namespace A313927.P1448272295308136425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313477 n)

end

end A313927.P1448272295308136425

namespace A313927

/-- `A005843(n)+A005843(A008574(n))-A313477(n)` -/
def P1448272295308136425.Spec : Prop :=
  ∀ n, P1448272295308136425.a n = A313927 n

end A313927

/-! ## A313927.P16153154442214245630

`A312683(n)+A004525(A008458(n)-A312683(n))`
-/

namespace A313927.P16153154442214245630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312683 n + A004525 (A008458 n - A312683 n).toNat

end

end A313927.P16153154442214245630

namespace A313927

/-- `A312683(n)+A004525(A008458(n)-A312683(n))` -/
def P16153154442214245630.Spec : Prop :=
  ∀ n, P16153154442214245630.a n = A313927 n

end A313927

/-! ## A313927.P8189969554950440686

`A314251(n)-A004396(n-A004396(n))`
-/

namespace A313927.P8189969554950440686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314251 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A313927.P8189969554950440686

namespace A313927

/-- `A314251(n)-A004396(n-A004396(n))` -/
def P8189969554950440686.Spec : Prop :=
  ∀ n, P8189969554950440686.a n = A313927 n

end A313927

/-! ## A313927.P3937437992387323551

`A005843(A008574(n)+n)-A313477(n)`
-/

namespace A313927.P3937437992387323551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313477 n

end

end A313927.P3937437992387323551

namespace A313927

/-- `A005843(A008574(n)+n)-A313477(n)` -/
def P3937437992387323551.Spec : Prop :=
  ∀ n, P3937437992387323551.a n = A313927 n

end A313927

/-! ## A313927.P8815645844733653608

`A004396(A313293(n))+2*n`
-/

namespace A313927.P8815645844733653608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313293 n).toNat + (2 * n : ℤ)

end

end A313927.P8815645844733653608

namespace A313927

/-- `A004396(A313293(n))+2*n` -/
def P8815645844733653608.Spec : Prop :=
  ∀ n, P8815645844733653608.a n = A313927 n

end A313927

/-! ## A313927.P11796266180647591910

`A005843(n)+A004396(A313293(n))`
-/

namespace A313927.P11796266180647591910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313293 n).toNat

end

end A313927.P11796266180647591910

namespace A313927

/-- `A005843(n)+A004396(A313293(n))` -/
def P11796266180647591910.Spec : Prop :=
  ∀ n, P11796266180647591910.a n = A313927 n

end A313927

/-! ## A313927.P4271013930944481974

`A005843(n)+A004396(A312160(n)+A004396(n))`
-/

namespace A313927.P4271013930944481974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A312160 n + A004396 n).toNat

end

end A313927.P4271013930944481974

namespace A313927

/-- `A005843(n)+A004396(A312160(n)+A004396(n))` -/
def P4271013930944481974.Spec : Prop :=
  ∀ n, P4271013930944481974.a n = A313927 n

end A313927

/-! ## A313927.P11051561791759448978

`A004396(A004396(n)+A312160(n)+A008486(n))`
-/

namespace A313927.P11051561791759448978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A312160 n + A008486 n)).toNat

end

end A313927.P11051561791759448978

namespace A313927

/-- `A004396(A004396(n)+A312160(n)+A008486(n))` -/
def P11051561791759448978.Spec : Prop :=
  ∀ n, P11051561791759448978.a n = A313927 n

end A313927

/-! ## A313927.P11966239210371990674

`A004396(A004396(n)+A312160(n)+A008585(n))`
-/

namespace A313927.P11966239210371990674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n + (A312160 n + A008585 n)).toNat

end

end A313927.P11966239210371990674

namespace A313927

/-- `A004396(A004396(n)+A312160(n)+A008585(n))` -/
def P11966239210371990674.Spec : Prop :=
  ∀ n, P11966239210371990674.a n = A313927 n

end A313927

/-! ## A313927.P14785010392574863716

`A004525(A312683(n)+A008458(n))`
-/

namespace A313927.P14785010392574863716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312683 n + A008458 n).toNat

end

end A313927.P14785010392574863716

namespace A313927

/-- `A004525(A312683(n)+A008458(n))` -/
def P14785010392574863716.Spec : Prop :=
  ∀ n, P14785010392574863716.a n = A313927 n

end A313927

/-!
# A313928: Coordination sequence Gal.5.302.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313928, the canonical program `A313928.P15528941747193858582` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313928 has offset 0).

The definition of A313928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2184 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313928.P2472385306681457206

`A312143(n)+n`
-/

namespace A313928.P2472385306681457206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312143 n + (n : ℤ)

end

end A313928.P2472385306681457206

namespace A313928

/-- `A312143(n)+n` -/
def P2472385306681457206.Spec : Prop :=
  ∀ n, P2472385306681457206.a n = A313928 n

end A313928

/-! ## A313928.P7280490636285278421

`A312077(n)+A151988(n)`
-/

namespace A313928.P7280490636285278421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312077 n + A151988 n

end

end A313928.P7280490636285278421

namespace A313928

/-- `A312077(n)+A151988(n)` -/
def P7280490636285278421.Spec : Prop :=
  ∀ n, P7280490636285278421.a n = A313928 n

end A313928

/-! ## A313928.P17209681934511546363

`A315742(n)-A253262(n)`
-/

namespace A313928.P17209681934511546363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - A253262 n

end

end A313928.P17209681934511546363

namespace A313928

/-- `A315742(n)-A253262(n)` -/
def P17209681934511546363.Spec : Prop :=
  ∀ n, P17209681934511546363.a n = A313928 n

end A313928

/-! ## A313928.P14513536531347999819

`A315536(n)-A330025(n)`
-/

namespace A313928.P14513536531347999819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - A330025 n

end

end A313928.P14513536531347999819

namespace A313928

/-- `A315536(n)-A330025(n)` -/
def P14513536531347999819.Spec : Prop :=
  ∀ n, P14513536531347999819.a n = A313928 n

end A313928

/-! ## A313928.P9774736298239568000

`A311535(n)+A047263(n+1)`
-/

namespace A313928.P9774736298239568000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + A047263 (n + 1)

end

end A313928.P9774736298239568000

namespace A313928

/-- `A311535(n)+A047263(n+1)` -/
def P9774736298239568000.Spec : Prop :=
  ∀ n, P9774736298239568000.a n = A313928 n

end A313928

/-! ## A313928.P14772314381800140839

`(A312684(n)+A008458(n))/2`
-/

namespace A313928.P14772314381800140839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312684 n + A008458 n : ℚ) / 2

end

end A313928.P14772314381800140839

namespace A313928

/-- `(A312684(n)+A008458(n))/2` -/
def P14772314381800140839.Spec : Prop :=
  ∀ n, P14772314381800140839.a n = (A313928 n : ℚ)

end A313928

/-! ## A313928.P1071421565894734833

`2*A008706(n)-A313476(n)`
-/

namespace A313928.P1071421565894734833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313476 n

end

end A313928.P1071421565894734833

namespace A313928

/-- `2*A008706(n)-A313476(n)` -/
def P1071421565894734833.Spec : Prop :=
  ∀ n, P1071421565894734833.a n = A313928 n

end A313928

/-! ## A313928.P15528941747193858582

`2*A313916(n)-A313905(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A313928

/-- `2*A313916(n)-A313905(n)` -/
def P15528941747193858582.Spec : Prop :=
  ∀ n, P15528941747193858582.a n = A313928 n

theorem P15528941747193858582.correct : P15528941747193858582.Spec := by
  intro n
  simp only [A313928]

end A313928

/-! ## A313928.P3781462331409595791

`A313682(n)+n-A253262(n)`
-/

namespace A313928.P3781462331409595791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313682 n + ((n : ℤ) - A253262 n)

end

end A313928.P3781462331409595791

namespace A313928

/-- `A313682(n)+n-A253262(n)` -/
def P3781462331409595791.Spec : Prop :=
  ∀ n, P3781462331409595791.a n = A313928 n

end A313928

/-! ## A313928.P12349873113514137269

`A314886(n)+n-A330025(n)`
-/

namespace A313928.P12349873113514137269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314886 n + ((n : ℤ) - A330025 n)

end

end A313928.P12349873113514137269

namespace A313928

/-- `A314886(n)+n-A330025(n)` -/
def P12349873113514137269.Spec : Prop :=
  ∀ n, P12349873113514137269.a n = A313928 n

end A313928

/-! ## A313928.P2796830469955949197

`A005843(n)-(n-A312143(n))`
-/

namespace A313928.P2796830469955949197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312143 n)

end

end A313928.P2796830469955949197

namespace A313928

/-- `A005843(n)-(n-A312143(n))` -/
def P2796830469955949197.Spec : Prop :=
  ∀ n, P2796830469955949197.a n = A313928 n

end A313928

/-! ## A313928.P17213413384702830809

`A311535(n)+A057354(3*n+1)`
-/

namespace A313928.P17213413384702830809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + A057354 (3 * n + 1)

end

end A313928.P17213413384702830809

namespace A313928

/-- `A311535(n)+A057354(3*n+1)` -/
def P17213413384702830809.Spec : Prop :=
  ∀ n, P17213413384702830809.a n = A313928 n

end A313928

/-! ## A313928.P2511260554698956526

`(A312684(n)+A008574(n))/2+n`
-/

namespace A313928.P2511260554698956526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312684 n + A008574 n : ℚ) / 2 + (n : ℚ)

end

end A313928.P2511260554698956526

namespace A313928

/-- `(A312684(n)+A008574(n))/2+n` -/
def P2511260554698956526.Spec : Prop :=
  ∀ n, P2511260554698956526.a n = (A313928 n : ℚ)

end A313928

/-! ## A313928.P7680424446380942191

`A008458(n)+A008574(n)-A313476(n)`
-/

namespace A313928.P7680424446380942191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313476 n)

end

end A313928.P7680424446380942191

namespace A313928

/-- `A008458(n)+A008574(n)-A313476(n)` -/
def P7680424446380942191.Spec : Prop :=
  ∀ n, P7680424446380942191.a n = A313928 n

end A313928

/-! ## A313928.P10828058164878124992

`A250120(n)+A312979(n)-A008574(n)`
-/

namespace A313928.P10828058164878124992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A312979 n - A008574 n)

end

end A313928.P10828058164878124992

namespace A313928

/-- `A250120(n)+A312979(n)-A008574(n)` -/
def P10828058164878124992.Spec : Prop :=
  ∀ n, P10828058164878124992.a n = A313928 n

end A313928

/-! ## A313928.P130433040551467286

`A008458(n)+A250120(n)-A315508(n)`
-/

namespace A313928.P130433040551467286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A250120 n - A315508 n)

end

end A313928.P130433040551467286

namespace A313928

/-- `A008458(n)+A250120(n)-A315508(n)` -/
def P130433040551467286.Spec : Prop :=
  ∀ n, P130433040551467286.a n = A313928 n

end A313928

/-! ## A313928.P14670716871439958969

`A301718(n)-A330025(n-A330025(n))`
-/

namespace A313928.P14670716871439958969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A313928.P14670716871439958969

namespace A313928

/-- `A301718(n)-A330025(n-A330025(n))` -/
def P14670716871439958969.Spec : Prop :=
  ∀ n, P14670716871439958969.a n = A313928 n

end A313928

/-! ## A313928.P11686280447951495117

`A005843(n)+A005843(A008574(n))-A313476(n)`
-/

namespace A313928.P11686280447951495117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313476 n)

end

end A313928.P11686280447951495117

namespace A313928

/-- `A005843(n)+A005843(A008574(n))-A313476(n)` -/
def P11686280447951495117.Spec : Prop :=
  ∀ n, P11686280447951495117.a n = A313928 n

end A313928

/-! ## A313928.P7307063826638176837

`A005843(A008574(n)+n)-A313476(n)`
-/

namespace A313928.P7307063826638176837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313476 n

end

end A313928.P7307063826638176837

namespace A313928

/-- `A005843(A008574(n)+n)-A313476(n)` -/
def P7307063826638176837.Spec : Prop :=
  ∀ n, P7307063826638176837.a n = A313928 n

end A313928

/-! ## A313928.P8221992590917015695

`A004396(A313295(n))+2*n`
-/

namespace A313928.P8221992590917015695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313295 n).toNat + (2 * n : ℤ)

end

end A313928.P8221992590917015695

namespace A313928

/-- `A004396(A313295(n))+2*n` -/
def P8221992590917015695.Spec : Prop :=
  ∀ n, P8221992590917015695.a n = A313928 n

end A313928

/-!
# A313929: Coordination sequence Gal.6.334.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313929, the canonical program `A313929.P15374622491825537121` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313929 has offset 0).

The definition of A313929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313929.P18076281309052990422

`abs(A008592(n)-A313475(n))`
-/

namespace A313929.P18076281309052990422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313475 n|

end

end A313929.P18076281309052990422

namespace A313929

/-- `abs(A008592(n)-A313475(n))` -/
def P18076281309052990422.Spec : Prop :=
  ∀ n, P18076281309052990422.a n = A313929 n

end A313929

/-! ## A313929.P15374622491825537121

`A313814(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A313929

/-- `A313814(n)+Δ[A011864(n)]` -/
def P15374622491825537121.Spec : Prop :=
  ∀ n, P15374622491825537121.a n = A313929 n

theorem P15374622491825537121.correct : P15374622491825537121.Spec := by
  intro n
  simp only [A313929]

end A313929

/-! ## A313929.P18336658631129007761

`(A312685(n)+A008458(n))/2`
-/

namespace A313929.P18336658631129007761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A312685 n + A008458 n : ℚ) / 2

end

end A313929.P18336658631129007761

namespace A313929

/-- `(A312685(n)+A008458(n))/2` -/
def P18336658631129007761.Spec : Prop :=
  ∀ n, P18336658631129007761.a n = (A313929 n : ℚ)

theorem P18336658631129007761.correct : P18336658631129007761.Spec := by
  intro n
  simp only [A313929, Nat.add_sub_cancel, A313929.P18336658631129007761.a, A313929.P15374622491825537121.f1, A313929.P15374622491825537121.a, A008458, A008458.P10936398443463225625.a, A011864, A011864.P3547417513882699266.a, A312685, A312685.P14371545505777199944.a, A313814, A313814.P16685413866964249119.a, A313738, A313738.P18419223100438122022.a, A313788, A313788.P6713366544553221303.a, A008574, A008574.P1300280032690682112.a, A008596, A008596.P5483684624845691048.a, A313696, A313696.P9738400648610204729.f1, A313696.P9738400648610204729.a, A313543, A313543.P17775607979476667023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313929

/-! ## A313929.P16933390830117366878

`A008590(n)+A001057(A315629(n))`
-/

namespace A313929.P16933390830117366878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n + A001057 (A315629 n).toNat

end

end A313929.P16933390830117366878

namespace A313929

/-- `A008590(n)+A001057(A315629(n))` -/
def P16933390830117366878.Spec : Prop :=
  ∀ n, P16933390830117366878.a n = A313929 n

end A313929

/-! ## A313929.P4285495858138818125

`A008458(n)+A008574(n)-A313475(n)`
-/

namespace A313929.P4285495858138818125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313475 n)

end

end A313929.P4285495858138818125

namespace A313929

/-- `A008458(n)+A008574(n)-A313475(n)` -/
def P4285495858138818125.Spec : Prop :=
  ∀ n, P4285495858138818125.a n = A313929 n

end A313929

/-! ## A313929.P16976416216037560284

`A005843(n)+A005843(A008574(n))-A313475(n)`
-/

namespace A313929.P16976416216037560284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313475 n)

end

end A313929.P16976416216037560284

namespace A313929

/-- `A005843(n)+A005843(A008574(n))-A313475(n)` -/
def P16976416216037560284.Spec : Prop :=
  ∀ n, P16976416216037560284.a n = A313929 n

end A313929

/-! ## A313929.P7500457982626447849

`A312685(n)+A001281(A008458(n)-A312685(n))`
-/

namespace A313929.P7500457982626447849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312685 n + A001281 (A008458 n - A312685 n).toNat

end

end A313929.P7500457982626447849

namespace A313929

/-- `A312685(n)+A001281(A008458(n)-A312685(n))` -/
def P7500457982626447849.Spec : Prop :=
  ∀ n, P7500457982626447849.a n = A313929 n

end A313929

/-! ## A313929.P9453282794536589650

`A312685(n)+A004525(A008458(n)-A312685(n))`
-/

namespace A313929.P9453282794536589650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312685 n + A004525 (A008458 n - A312685 n).toNat

end

end A313929.P9453282794536589650

namespace A313929

/-- `A312685(n)+A004525(A008458(n)-A312685(n))` -/
def P9453282794536589650.Spec : Prop :=
  ∀ n, P9453282794536589650.a n = A313929 n

end A313929

/-! ## A313929.P12907279302049305972

`A008458(n)-A004526(A008458(n)-A312685(n))`
-/

namespace A313929.P12907279302049305972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A312685 n).toNat

end

end A313929.P12907279302049305972

namespace A313929

/-- `A008458(n)-A004526(A008458(n)-A312685(n))` -/
def P12907279302049305972.Spec : Prop :=
  ∀ n, P12907279302049305972.a n = A313929 n

end A313929

/-! ## A313929.P9777933767339775041

`A005843(A008574(n)+n)-A313475(n)`
-/

namespace A313929.P9777933767339775041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313475 n

end

end A313929.P9777933767339775041

namespace A313929

/-- `A005843(A008574(n)+n)-A313475(n)` -/
def P9777933767339775041.Spec : Prop :=
  ∀ n, P9777933767339775041.a n = A313929 n

end A313929

/-! ## A313929.P12576169368986093688

`A008486(n)+A004526(A312685(n))`
-/

namespace A313929.P12576169368986093688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A312685 n).toNat

end

end A313929.P12576169368986093688

namespace A313929

/-- `A008486(n)+A004526(A312685(n))` -/
def P12576169368986093688.Spec : Prop :=
  ∀ n, P12576169368986093688.a n = A313929 n

end A313929

/-! ## A313929.P11693286358847128653

`A004396(A313296(n))+2*n`
-/

namespace A313929.P11693286358847128653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313296 n).toNat + (2 * n : ℤ)

end

end A313929.P11693286358847128653

namespace A313929

/-- `A004396(A313296(n))+2*n` -/
def P11693286358847128653.Spec : Prop :=
  ∀ n, P11693286358847128653.a n = A313929 n

end A313929

/-! ## A313929.P2265388232858002362

`A005843(n)+A004396(A313296(n))`
-/

namespace A313929.P2265388232858002362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A313296 n).toNat

end

end A313929.P2265388232858002362

namespace A313929

/-- `A005843(n)+A004396(A313296(n))` -/
def P2265388232858002362.Spec : Prop :=
  ∀ n, P2265388232858002362.a n = A313929 n

end A313929

/-! ## A313929.P10742724089499378446

`A004525(A312685(n)+A008458(n))`
-/

namespace A313929.P10742724089499378446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312685 n + A008458 n).toNat

end

end A313929.P10742724089499378446

namespace A313929

/-- `A004525(A312685(n)+A008458(n))` -/
def P10742724089499378446.Spec : Prop :=
  ∀ n, P10742724089499378446.a n = A313929 n

end A313929

/-! ## A313929.P2595641090426453322

`A001281(A312685(n)+A008458(n))`
-/

namespace A313929.P2595641090426453322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A312685 n + A008458 n).toNat

end

end A313929.P2595641090426453322

namespace A313929

/-- `A001281(A312685(n)+A008458(n))` -/
def P2595641090426453322.Spec : Prop :=
  ∀ n, P2595641090426453322.a n = A313929 n

end A313929

/-! ## A313929.P16490887255543490367

`A004526(A312685(n)+A008458(n))`
-/

namespace A313929.P16490887255543490367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A312685 n + A008458 n).toNat

end

end A313929.P16490887255543490367

namespace A313929

/-- `A004526(A312685(n)+A008458(n))` -/
def P16490887255543490367.Spec : Prop :=
  ∀ n, P16490887255543490367.a n = A313929 n

end A313929

/-!
# A313930: Coordination sequence Gal.6.638.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313930, the canonical program `A313930.P828336190909050308` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313930 has offset 0).

The definition of A313930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313930.P13175312130940304714

`A312144(n)+n`
-/

namespace A313930.P13175312130940304714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312144 n + (n : ℤ)

end

end A313930.P13175312130940304714

namespace A313930

/-- `A312144(n)+n` -/
def P13175312130940304714.Spec : Prop :=
  ∀ n, P13175312130940304714.a n = A313930 n

end A313930

/-! ## A313930.P18422854449576691499

`A311312(n)+comp[or(5, n)-2]`
-/

namespace A313930.P18422854449576691499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 5 n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A313930.P18422854449576691499

namespace A313930

/-- `A311312(n)+comp[or(5, n)-2]` -/
def P18422854449576691499.Spec : Prop :=
  ∀ n, P18422854449576691499.a n = A313930 n

end A313930

/-! ## A313930.P828336190909050308

`A313126(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313930

/-- `A313126(n)+A004396(n)` -/
def P828336190909050308.Spec : Prop :=
  ∀ n, P828336190909050308.a n = A313930 n

theorem P828336190909050308.correct : P828336190909050308.Spec := by
  intro n
  simp only [A313930]

end A313930

/-! ## A313930.P6666170331046179317

`A313262(n)+A004525(n)`
-/

namespace A313930.P6666170331046179317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313262 n + A004525 n

end

end A313930.P6666170331046179317

namespace A313930

/-- `A313262(n)+A004525(n)` -/
def P6666170331046179317.Spec : Prop :=
  ∀ n, P6666170331046179317.a n = A313930 n

end A313930

/-! ## A313930.P5959695854783957322

`abs(A008592(n)-A313474(n))`
-/

namespace A313930.P5959695854783957322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313474 n|

end

end A313930.P5959695854783957322

namespace A313930

/-- `abs(A008592(n)-A313474(n))` -/
def P5959695854783957322.Spec : Prop :=
  ∀ n, P5959695854783957322.a n = A313930 n

end A313930

/-! ## A313930.P16958511859185526963

`abs(A008593(n)-A315683(n))`
-/

namespace A313930.P16958511859185526963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315683 n|

end

end A313930.P16958511859185526963

namespace A313930

/-- `abs(A008593(n)-A315683(n))` -/
def P16958511859185526963.Spec : Prop :=
  ∀ n, P16958511859185526963.a n = A313930 n

end A313930

/-! ## A313930.P8072073641319305524

`A314970(n)+Δ[A011848(n)]`
-/

namespace A313930.P8072073641319305524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n + (f1 (n + 1) - f1 n)

end

end A313930.P8072073641319305524

namespace A313930

/-- `A314970(n)+Δ[A011848(n)]` -/
def P8072073641319305524.Spec : Prop :=
  ∀ n, P8072073641319305524.a n = A313930 n

end A313930

/-! ## A313930.P11149993977223364669

`A311312(n)+A047513(n+1)`
-/

namespace A313930.P11149993977223364669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311312 n + A047513 (n + 1)

end

end A313930.P11149993977223364669

namespace A313930

/-- `A311312(n)+A047513(n+1)` -/
def P11149993977223364669.Spec : Prop :=
  ∀ n, P11149993977223364669.a n = A313930 n

end A313930

/-! ## A313930.P3805872984181697161

`A314970(n)+n-A004525(n)`
-/

namespace A313930.P3805872984181697161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314970 n + ((n : ℤ) - A004525 n)

end

end A313930.P3805872984181697161

namespace A313930

/-- `A314970(n)+n-A004525(n)` -/
def P3805872984181697161.Spec : Prop :=
  ∀ n, P3805872984181697161.a n = A313930 n

end A313930

/-! ## A313930.P11401027785664967233

`A314691(n)+n-A128834(n)`
-/

namespace A313930.P11401027785664967233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314691 n + ((n : ℤ) - A128834 n)

end

end A313930.P11401027785664967233

namespace A313930

/-- `A314691(n)+n-A128834(n)` -/
def P11401027785664967233.Spec : Prop :=
  ∀ n, P11401027785664967233.a n = A313930 n

end A313930

/-! ## A313930.P16269673612660480676

`A314903(n)+n-A004525(A004396(n))`
-/

namespace A313930.P16269673612660480676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314903 n + ((n : ℤ) - A004525 (A004396 n).toNat)

end

end A313930.P16269673612660480676

namespace A313930

/-- `A314903(n)+n-A004525(A004396(n))` -/
def P16269673612660480676.Spec : Prop :=
  ∀ n, P16269673612660480676.a n = A313930 n

end A313930

/-! ## A313930.P18396548182920812818

`A008458(n)+A008574(n)-A313474(n)`
-/

namespace A313930.P18396548182920812818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313474 n)

end

end A313930.P18396548182920812818

namespace A313930

/-- `A008458(n)+A008574(n)-A313474(n)` -/
def P18396548182920812818.Spec : Prop :=
  ∀ n, P18396548182920812818.a n = A313930 n

end A313930

/-! ## A313930.P2778106072087176176

`A008458(n)+A008574(n)-A315683(n)+n`
-/

namespace A313930.P2778106072087176176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A315683 n) + (n : ℤ)

end

end A313930.P2778106072087176176

namespace A313930

/-- `A008458(n)+A008574(n)-A315683(n)+n` -/
def P2778106072087176176.Spec : Prop :=
  ∀ n, P2778106072087176176.a n = A313930 n

end A313930

/-! ## A313930.P5577325798890939042

`A314254(n)-A004525(round(n/3))`
-/

namespace A313930.P5577325798890939042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314254 n - A004525 (SequenceMachineLib.roundAway ((n : ℚ) / 3)).toNat

end

end A313930.P5577325798890939042

namespace A313930

/-- `A314254(n)-A004525(round(n/3))` -/
def P5577325798890939042.Spec : Prop :=
  ∀ n, P5577325798890939042.a n = A313930 n

end A313930

/-! ## A313930.P5902072604267764320

`A004396(A313297(n))+2*n`
-/

namespace A313930.P5902072604267764320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313297 n).toNat + (2 * n : ℤ)

end

end A313930.P5902072604267764320

namespace A313930

/-- `A004396(A313297(n))+2*n` -/
def P5902072604267764320.Spec : Prop :=
  ∀ n, P5902072604267764320.a n = A313930 n

end A313930

/-!
# A313931: Coordination sequence Gal.6.629.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313931, there is no canonical definition to state claims against.
-/

/-! ## A313931.P2090171084418692514

`A008458(n)-A001221(A150133(n))`
-/

namespace A313931.P2090171084418692514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A150133 n).toNat

end

end A313931.P2090171084418692514

/-! ## A313931.P12628270622383753374

`or(A284271(A127697(n)), A310530(n))`
-/

namespace A313931.P12628270622383753374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284271 (A127697 n).toNat) (A310530 n)

end

end A313931.P12628270622383753374

/-! ## A313931.P7013179618711989106

`or(A284271(A127697(n)), A310531(n))`
-/

namespace A313931.P7013179618711989106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284271 (A127697 n).toNat) (A310531 n)

end

end A313931.P7013179618711989106

/-! ## A313931.P14497660868377456256

`A008458(n)-A001221(A183950(n+1))`
-/

namespace A313931.P14497660868377456256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A183950 (n + 1)).toNat

end

end A313931.P14497660868377456256

/-! ## A313931.P2336901775655898170

`A035263(A000142(n))+A004275(3*n)`
-/

namespace A313931.P2336901775655898170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (A000142 n).toNat + A004275 (3 * n)

end

end A313931.P2336901775655898170

/-!
# A313932: Coordination sequence Gal.6.370.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313932, the canonical program `A313932.P4222521981908948703` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313932 has offset 0).

The definition of A313932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313932.P4222521981908948703

`A315344(n)-A134667(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313932

/-- `A315344(n)-A134667(n)` -/
def P4222521981908948703.Spec : Prop :=
  ∀ n, P4222521981908948703.a n = A313932 n

theorem P4222521981908948703.correct : P4222521981908948703.Spec := by
  intro n
  simp only [A313932]

end A313932

/-! ## A313932.P16236120104631448404

`A313933(n)-A332671(A063983(n))`
-/

namespace A313932.P16236120104631448404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313933 n - A332671 (A063983 n).toNat

end

end A313932.P16236120104631448404

namespace A313932

/-- `A313933(n)-A332671(A063983(n))` -/
def P16236120104631448404.Spec : Prop :=
  ∀ n, P16236120104631448404.a n = A313932 n

end A313932

/-! ## A313932.P9045740947584553522

`eq[0, A188038(n+1)]-A067029(A096617(n+1))`
-/

namespace A313932.P9045740947584553522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A067029 (A096617 (n + 1)).toNat

end

end A313932.P9045740947584553522

namespace A313932

/-- `eq[0, A188038(n+1)]-A067029(A096617(n+1))` -/
def P9045740947584553522.Spec : Prop :=
  ∀ n, P9045740947584553522.a n = A313932 n

end A313932

/-! ## A313932.P6175412323390897821

`eq[0, A188318(2*(n+1))]-A067029(A096617(n+1))`
-/

namespace A313932.P6175412323390897821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A067029 (A096617 (n + 1)).toNat

end

end A313932.P6175412323390897821

namespace A313932

/-- `eq[0, A188318(2*(n+1))]-A067029(A096617(n+1))` -/
def P6175412323390897821.Spec : Prop :=
  ∀ n, P6175412323390897821.a n = A313932 n

end A313932

/-!
# A313933: Coordination sequence Gal.6.658.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313933, the canonical program `A313933.P2526088647999018062` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313933 has offset 0).

The definition of A313933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313933.P2526088647999018062

`A315345(n)-A134667(n)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A313933

/-- `A315345(n)-A134667(n)` -/
def P2526088647999018062.Spec : Prop :=
  ∀ n, P2526088647999018062.a n = A313933 n

theorem P2526088647999018062.correct : P2526088647999018062.Spec := by
  intro n
  simp only [A313933]

end A313933

/-! ## A313933.P14568036299909812901

`A008458(n)-A349258(A094969(n))`
-/

namespace A313933.P14568036299909812901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A349258 (A094969 n).toNat

end

end A313933.P14568036299909812901

namespace A313933

/-- `A008458(n)-A349258(A094969(n))` -/
def P14568036299909812901.Spec : Prop :=
  ∀ n, P14568036299909812901.a n = A313933 n

end A313933

/-! ## A313933.P8066789703537550815

`A134667(A000045(2*n))+A301718(n)-A330025(n)`
-/

namespace A313933.P8066789703537550815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A000045 (2 * n)).toNat + (A301718 n - A330025 n)

end

end A313933.P8066789703537550815

namespace A313933

/-- `A134667(A000045(2*n))+A301718(n)-A330025(n)` -/
def P8066789703537550815.Spec : Prop :=
  ∀ n, P8066789703537550815.a n = A313933 n

end A313933

/-! ## A313933.P6462131312994482696

`A326016(A325780(n+1))+A313932(n)`
-/

namespace A313933.P6462131312994482696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326016 (A325780 (n + 1)).toNat + A313932 n

end

end A313933.P6462131312994482696

namespace A313933

/-- `A326016(A325780(n+1))+A313932(n)` -/
def P6462131312994482696.Spec : Prop :=
  ∀ n, P6462131312994482696.a n = A313933 n

end A313933

/-!
# A313934: Coordination sequence Gal.5.307.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313934, there is no canonical definition to state claims against.
-/

/-! ## A313934.P9922663302387596870

`A354099(A009291(n))+A301712(n)`
-/

namespace A313934.P9922663302387596870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354099 (A009291 n).toNat + A301712 n

end

end A313934.P9922663302387596870

/-! ## A313934.P16636777013020709894

`A314170(n)-A010051(A000142(n))`
-/

namespace A313934.P16636777013020709894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314170 n - A010051 (A000142 n).toNat

end

end A313934.P16636777013020709894

/-! ## A313934.P16943651174796345238

`A290334(2*(n+1))-(A348610(A008965(n+1))-A364731(n))`
-/

namespace A313934.P16943651174796345238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290334 (2 * (n + 1)) - (A348610 (A008965 (n + 1)).toNat - A364731 n)

end

end A313934.P16943651174796345238

/-!
# A313935: Coordination sequence Gal.6.651.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313935, the canonical program `A313935.P10691927420047468944` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313935 has offset 0).

The definition of A313935 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313935.P10691927420047468944

`A313772(n)+A002264(A030118(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A313935

/-- `A313772(n)+A002264(A030118(n))` -/
def P10691927420047468944.Spec : Prop :=
  ∀ n, P10691927420047468944.a n = A313935 n

theorem P10691927420047468944.correct : P10691927420047468944.Spec := by
  intro n
  simp only [A313935]

end A313935

/-! ## A313935.P10280890166910568344

`A313772(n)+∑[A022003(A110654(n))]`
-/

namespace A313935.P10280890166910568344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313935.P10280890166910568344

namespace A313935

/-- `A313772(n)+∑[A022003(A110654(n))]` -/
def P10280890166910568344.Spec : Prop :=
  ∀ n, P10280890166910568344.a n = A313935 n

end A313935

/-! ## A313935.P12601751082990222596

`A313772(n)--A002264(A030118(n))%A000041(n)`
-/

namespace A313935.P12601751082990222596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313772 n - Int.tmod (-A002264 (A030118 n).toNat) (A000041 n)

end

end A313935.P12601751082990222596

namespace A313935

/-- `A313772(n)--A002264(A030118(n))%A000041(n)` -/
def P12601751082990222596.Spec : Prop :=
  ∀ n, P12601751082990222596.a n = A313935 n

end A313935

/-! ## A313935.P3909771508141058883

`A065502(A008706(n))-A004525(A315709(n))`
-/

namespace A313935.P3909771508141058883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008706 n).toNat - A004525 (A315709 n).toNat

end

end A313935.P3909771508141058883

namespace A313935

/-- `A065502(A008706(n))-A004525(A315709(n))` -/
def P3909771508141058883.Spec : Prop :=
  ∀ n, P3909771508141058883.a n = A313935 n

end A313935

/-! ## A313935.P2338182744239248166

`or(A031346(A003418(n)), A301697(n))`
-/

namespace A313935.P2338182744239248166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031346 (A003418 n).toNat) (A301697 n)

end

end A313935.P2338182744239248166

namespace A313935

/-- `or(A031346(A003418(n)), A301697(n))` -/
def P2338182744239248166.Spec : Prop :=
  ∀ n, P2338182744239248166.a n = A313935 n

end A313935

/-!
# A313936: Coordination sequence Gal.6.668.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313936, there is no canonical definition to state claims against.
-/

/-! ## A313936.P383784127708833815

`A301722(n)+A024360(A054718(n))`
-/

namespace A313936.P383784127708833815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A024360 (A054718 n).toNat

end

end A313936.P383784127708833815

/-! ## A313936.P13615475305700322351

`A313277(n)+A001221(A151301(n))`
-/

namespace A313936.P13615475305700322351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313277 n + A001221 (A151301 n).toNat

end

end A313936.P13615475305700322351

/-! ## A313936.P17816940170478561150

`A301722(n)+A104974(A283314(n))`
-/

namespace A313936.P17816940170478561150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A104974 (A283314 n).toNat

end

end A313936.P17816940170478561150

/-! ## A313936.P5821987915491996155

`A301722(n)+A288633(A161634(n))`
-/

namespace A313936.P5821987915491996155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301722 n + A288633 (A161634 n).toNat

end

end A313936.P5821987915491996155

/-! ## A313936.P2362163845108733356

`A328979(A149512(n))+A301722(n)`
-/

namespace A313936.P2362163845108733356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (A149512 n).toNat + A301722 n

end

end A313936.P2362163845108733356

/-!
# A313937: Coordination sequence Gal.6.650.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313937, the canonical program `A313937.P16991793084136127565` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313937 has offset 0).

The definition of A313937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2257 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313937.P12394950154249325319

`A311807(n)+sqrt(A117676(n))`
-/

namespace A313937.P12394950154249325319
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A311807 n : ℝ) + Real.sqrt (A117676 n : ℝ)

end

end A313937.P12394950154249325319

namespace A313937

/-- `A311807(n)+sqrt(A117676(n))` -/
def P12394950154249325319.Spec : Prop :=
  ∀ n, P12394950154249325319.a n = (A313937 n : ℝ)

end A313937

/-! ## A313937.P16991793084136127565

`A311586(n)+A047263(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313937

/-- `A311586(n)+A047263(n+1)` -/
def P16991793084136127565.Spec : Prop :=
  ∀ n, P16991793084136127565.a n = A313937 n

theorem P16991793084136127565.correct : P16991793084136127565.Spec := by
  intro n
  simp only [A313937]

end A313937

/-! ## A313937.P6971863645872426634

`A311807(n)+A060464(n+1)`
-/

namespace A313937.P6971863645872426634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A060464 (n + 1)

end

end A313937.P6971863645872426634

namespace A313937

/-- `A311807(n)+A060464(n+1)` -/
def P6971863645872426634.Spec : Prop :=
  ∀ n, P6971863645872426634.a n = A313937 n

end A313937

/-! ## A313937.P15155614860741469441

`A311586(n)+A057354(3*n+1)`
-/

namespace A313937.P15155614860741469441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + A057354 (3 * n + 1)

end

end A313937.P15155614860741469441

namespace A313937

/-- `A311586(n)+A057354(3*n+1)` -/
def P15155614860741469441.Spec : Prop :=
  ∀ n, P15155614860741469441.a n = A313937 n

end A313937

/-! ## A313937.P7908119035567256020

`A311586(n)+A004396(A265227(n+1))`
-/

namespace A313937.P7908119035567256020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + A004396 (A265227 (n + 1)).toNat

end

end A313937.P7908119035567256020

namespace A313937

/-- `A311586(n)+A004396(A265227(n+1))` -/
def P7908119035567256020.Spec : Prop :=
  ∀ n, P7908119035567256020.a n = A313937 n

end A313937

/-! ## A313937.P5747194921707734366

`A311586(n)+A311807(n)-A008486(n)`
-/

namespace A313937.P5747194921707734366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + (A311807 n - A008486 n)

end

end A313937.P5747194921707734366

namespace A313937

/-- `A311586(n)+A311807(n)-A008486(n)` -/
def P5747194921707734366.Spec : Prop :=
  ∀ n, P5747194921707734366.a n = A313937 n

end A313937

/-! ## A313937.P102612480175467267

`A315432(n)-A244895(n)`
-/

namespace A313937.P102612480175467267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315432 n - A244895 n

end

end A313937.P102612480175467267

namespace A313937

/-- `A315432(n)-A244895(n)` -/
def P102612480175467267.Spec : Prop :=
  ∀ n, P102612480175467267.a n = A313937 n

end A313937

/-! ## A313937.P1524280735162512217

`A250120(n)+A315432(n)%A072154(n)`
-/

namespace A313937.P1524280735162512217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + Int.tmod (A315432 n) (A072154 n)

end

end A313937.P1524280735162512217

namespace A313937

/-- `A250120(n)+A315432(n)%A072154(n)` -/
def P1524280735162512217.Spec : Prop :=
  ∀ n, P1524280735162512217.a n = A313937 n

end A313937

/-!
# A313938: Coordination sequence Gal.6.662.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313938, the canonical program `A313938.P107415662170278768` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313938 has offset 0).

The definition of A313938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2241 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313938.P5605140018297037432

`A315755(n)-A253262(n)`
-/

namespace A313938.P5605140018297037432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315755 n - A253262 n

end

end A313938.P5605140018297037432

namespace A313938

/-- `A315755(n)-A253262(n)` -/
def P5605140018297037432.Spec : Prop :=
  ∀ n, P5605140018297037432.a n = A313938 n

end A313938

/-! ## A313938.P14695938375992108952

`A311601(n)+A047263(n+1)`
-/

namespace A313938.P14695938375992108952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A047263 (n + 1)

end

end A313938.P14695938375992108952

namespace A313938

/-- `A311601(n)+A047263(n+1)` -/
def P14695938375992108952.Spec : Prop :=
  ∀ n, P14695938375992108952.a n = A313938 n

end A313938

/-! ## A313938.P107415662170278768

`2*A313916(n)-A313873(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A313938

/-- `2*A313916(n)-A313873(n)` -/
def P107415662170278768.Spec : Prop :=
  ∀ n, P107415662170278768.a n = A313938 n

theorem P107415662170278768.correct : P107415662170278768.Spec := by
  intro n
  simp only [A313938]

end A313938

/-! ## A313938.P17789134538312822730

`A310532(n)+A253262(n)%2`
-/

namespace A313938.P17789134538312822730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n + Int.tmod (A253262 n) 2

end

end A313938.P17789134538312822730

namespace A313938

/-- `A310532(n)+A253262(n)%2` -/
def P17789134538312822730.Spec : Prop :=
  ∀ n, P17789134538312822730.a n = A313938 n

end A313938

/-! ## A313938.P11873800893223149843

`A312658(n)+A057354(2*n+1)`
-/

namespace A313938.P11873800893223149843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312658 n + A057354 (2 * n + 1)

end

end A313938.P11873800893223149843

namespace A313938

/-- `A312658(n)+A057354(2*n+1)` -/
def P11873800893223149843.Spec : Prop :=
  ∀ n, P11873800893223149843.a n = A313938 n

end A313938

/-! ## A313938.P15596298249017983039

`A311601(n)+A057354(A016777(n))`
-/

namespace A313938.P15596298249017983039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A057354 (A016777 n).toNat

end

end A313938.P15596298249017983039

namespace A313938

/-- `A311601(n)+A057354(A016777(n))` -/
def P15596298249017983039.Spec : Prop :=
  ∀ n, P15596298249017983039.a n = A313938 n

end A313938

/-! ## A313938.P5058651952444649412

`A315536(n)-A330025(A330025(n)+n)`
-/

namespace A313938.P5058651952444649412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - A330025 (A330025 n + (n : ℤ)).toNat

end

end A313938.P5058651952444649412

namespace A313938

/-- `A315536(n)-A330025(A330025(n)+n)` -/
def P5058651952444649412.Spec : Prop :=
  ∀ n, P5058651952444649412.a n = A313938 n

end A313938

/-! ## A313938.P16923805478371366219

`A301718(n)+A014019(n+3)`
-/

namespace A313938.P16923805478371366219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + A014019 (n + 3)

end

end A313938.P16923805478371366219

namespace A313938

/-- `A301718(n)+A014019(n+3)` -/
def P16923805478371366219.Spec : Prop :=
  ∀ n, P16923805478371366219.a n = A313938 n

end A313938

/-! ## A313938.P17991695723451224390

`A311601(n)+A134119(A008458(n))`
-/

namespace A313938.P17991695723451224390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311601 n + A134119 (A008458 n).toNat

end

end A313938.P17991695723451224390

namespace A313938

/-- `A311601(n)+A134119(A008458(n))` -/
def P17991695723451224390.Spec : Prop :=
  ∀ n, P17991695723451224390.a n = A313938 n

end A313938

/-!
# A313939: Coordination sequence Gal.6.659.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313939, the canonical program `A313939.P1821970513572052391` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313939 has offset 0).

The definition of A313939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2216 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313939.P1821970513572052391

`A008576(n)+A313799(n)-A072154(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313939

/-- `A008576(n)+A313799(n)-A072154(n)` -/
def P1821970513572052391.Spec : Prop :=
  ∀ n, P1821970513572052391.a n = A313939 n

theorem P1821970513572052391.correct : P1821970513572052391.Spec := by
  intro n
  simp only [A313939]

end A313939

/-! ## A313939.P14406646696678806265

`A301718(n)+A313799(n)-A219529(n)`
-/

namespace A313939.P14406646696678806265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A313799 n - A219529 n)

end

end A313939.P14406646696678806265

namespace A313939

/-- `A301718(n)+A313799(n)-A219529(n)` -/
def P14406646696678806265.Spec : Prop :=
  ∀ n, P14406646696678806265.a n = A313939 n

end A313939

/-! ## A313939.P15041842257388483357

`A301718(n)+A312932(n)-A310369(n)`
-/

namespace A313939.P15041842257388483357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A312932 n - A310369 n)

end

end A313939.P15041842257388483357

namespace A313939

/-- `A301718(n)+A312932(n)-A310369(n)` -/
def P15041842257388483357.Spec : Prop :=
  ∀ n, P15041842257388483357.a n = A313939 n

end A313939

/-! ## A313939.P2252841956236995711

`A301718(n)+A311458(n)-A312893(n)`
-/

namespace A313939.P2252841956236995711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A311458 n - A312893 n)

end

end A313939.P2252841956236995711

namespace A313939

/-- `A301718(n)+A311458(n)-A312893(n)` -/
def P2252841956236995711.Spec : Prop :=
  ∀ n, P2252841956236995711.a n = A313939 n

end A313939

/-! ## A313939.P9351152586442371729

`A301718(n)+A312100(n)-A313026(n)`
-/

namespace A313939.P9351152586442371729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A312100 n - A313026 n)

end

end A313939.P9351152586442371729

namespace A313939

/-- `A301718(n)+A312100(n)-A313026(n)` -/
def P9351152586442371729.Spec : Prop :=
  ∀ n, P9351152586442371729.a n = A313939 n

end A313939

/-! ## A313939.P10523395245807359867

`A301718(n)+A312207(n)-A313125(n)`
-/

namespace A313939.P10523395245807359867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A312207 n - A313125 n)

end

end A313939.P10523395245807359867

namespace A313939

/-- `A301718(n)+A312207(n)-A313125(n)` -/
def P10523395245807359867.Spec : Prop :=
  ∀ n, P10523395245807359867.a n = A313939 n

end A313939

/-! ## A313939.P14384539803688910882

`A301718(n)+A314710(n)-A313477(n)`
-/

namespace A313939.P14384539803688910882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A314710 n - A313477 n)

end

end A313939.P14384539803688910882

namespace A313939

/-- `A301718(n)+A314710(n)-A313477(n)` -/
def P14384539803688910882.Spec : Prop :=
  ∀ n, P14384539803688910882.a n = A313939 n

end A313939

/-! ## A313939.P13955032843911143878

`A301718(n)+A315256(n)-A315446(n)`
-/

namespace A313939.P13955032843911143878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n + (A315256 n - A315446 n)

end

end A313939.P13955032843911143878

namespace A313939

/-- `A301718(n)+A315256(n)-A315446(n)` -/
def P13955032843911143878.Spec : Prop :=
  ∀ n, P13955032843911143878.a n = A313939 n

end A313939

/-! ## A313939.P16516397812683827352

`A047486(n+1)+A313799(n)-A042965(n+1)`
-/

namespace A313939.P16516397812683827352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A313799 n - A042965 (n + 1))

end

end A313939.P16516397812683827352

namespace A313939

/-- `A047486(n+1)+A313799(n)-A042965(n+1)` -/
def P16516397812683827352.Spec : Prop :=
  ∀ n, P16516397812683827352.a n = A313939 n

end A313939

/-!
# A313940: Coordination sequence Gal.4.138.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313940, there is no canonical definition to state claims against.
-/

/-! ## A313940.P17884374845901578328

`A311420(A087051(n))+A047412(n+1)`
-/

namespace A313940.P17884374845901578328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 (A087051 n).toNat + A047412 (n + 1)

end

end A313940.P17884374845901578328

/-! ## A313940.P4216567411340355338

`A311420(A227549(n+1))+A047412(n+1)`
-/

namespace A313940.P4216567411340355338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 (A227549 (n + 1)).toNat + A047412 (n + 1)

end

end A313940.P4216567411340355338

/-! ## A313940.P3834674110341609447

`A313151(n)+A001221(A047009(n))`
-/

namespace A313940.P3834674110341609447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313151 n + A001221 (A047009 n).toNat

end

end A313940.P3834674110341609447

/-! ## A313940.P16491182309215047768

`A311420(n)+A047412(A227549(n+2))`
-/

namespace A313940.P16491182309215047768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311420 n + A047412 (A227549 (n + 2)).toNat

end

end A313940.P16491182309215047768

/-! ## A313940.P12305112037720321916

`A074993(n)+A033999(A087909(3*(n+1)))`
-/

namespace A313940.P12305112037720321916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074993 n + A033999 (A087909 (3 * (n + 1))).toNat

end

end A313940.P12305112037720321916

/-!
# A313941: Coordination sequence Gal.4.151.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313941, there is no canonical definition to state claims against.
-/

/-! ## A313941.P17458162465099156248

`A313957(n)-A007706(A034943(n))`
-/

namespace A313941.P17458162465099156248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n - A007706 (A034943 n).toNat

end

end A313941.P17458162465099156248

/-! ## A313941.P2894600521497531470

`record[A313942(n)-A008881(n)]`
-/

namespace A313941.P2894600521497531470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313942 n - A008881 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313941.P2894600521497531470

/-! ## A313941.P14160255311440323108

`A315052(n)-A079635(A081057(n))`
-/

namespace A313941.P14160255311440323108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315052 n - A079635 (A081057 n).toNat

end

end A313941.P14160255311440323108

/-! ## A313941.P9319834175796420037

`A313321(n)+A029165(A032555(n+1))`
-/

namespace A313941.P9319834175796420037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313321 n + A029165 (A032555 (n + 1)).toNat

end

end A313941.P9319834175796420037

/-!
# A313944: Coordination sequence Gal.4.150.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313944, there is no canonical definition to state claims against.
-/

/-! ## A313944.P965833295060626948

`or(A297237(A321483(n)), A310501(n))`
-/

namespace A313944.P965833295060626948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A297237 (A321483 n).toNat) (A310501 n)

end

end A313944.P965833295060626948

/-! ## A313944.P17168463664021171006

`or(A297237(A321483(n)), A313836(n))`
-/

namespace A313944.P17168463664021171006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A297237 (A321483 n).toNat) (A313836 n)

end

end A313944.P17168463664021171006

/-! ## A313944.P1922697048044424310

`or(A240086(A051953(n+1)!), A313836(n))`
-/

namespace A313944.P1922697048044424310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A240086 (Nat.factorial (A051953 (n + 1)).toNat)) (A313836 n)

end

end A313944.P1922697048044424310

/-! ## A313944.P944463466699889823

`A313833(n)+A191261(A213824(n+1))`
-/

namespace A313944.P944463466699889823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313833 n + A191261 (A213824 (n + 1)).toNat

end

end A313944.P944463466699889823

/-! ## A313944.P1994941010214454873

`A301710(n)-A196563(A054405(3*n))`
-/

namespace A313944.P1994941010214454873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n - A196563 (A054405 (3 * n)).toNat

end

end A313944.P1994941010214454873

/-!
# A313945: Coordination sequence Gal.5.329.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313945, there is no canonical definition to state claims against.
-/

/-! ## A313945.P18019600138531569938

`∏{e}[4^n, A000404(#)]`
-/

namespace A313945.P18019600138531569938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000404 (Nat.factorization (f1 n) p)

end

end A313945.P18019600138531569938

/-! ## A313945.P15326773548987425236

`∏{e}[A285475(2*n), A024509(#)]`
-/

namespace A313945.P15326773548987425236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285475 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A024509 (Nat.factorization (f1 n).natAbs p)

end

end A313945.P15326773548987425236

/-! ## A313945.P4307566619499570216

`A297826(2*n)-A001222(A003688(n+1))`
-/

namespace A313945.P4307566619499570216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297826 (2 * n) - A001222 (A003688 (n + 1)).toNat

end

end A313945.P4307566619499570216

/-! ## A313945.P294884640888411469

`record[A025284(n+1)-A279721(n)]`
-/

namespace A313945.P294884640888411469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025284 (n + 1) - A279721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A313945.P294884640888411469

/-! ## A313945.P1001259920709811543

`A250120(n)+A001221(A117106(n))`
-/

namespace A313945.P1001259920709811543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001221 (A117106 n).toNat

end

end A313945.P1001259920709811543

/-!
# A313946: Coordination sequence Gal.5.283.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313946, there is no canonical definition to state claims against.
-/

/-! ## A313946.P3349622167924173088

`A008458(n)-A001222(A264236(n))`
-/

namespace A313946.P3349622167924173088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001222 (A264236 n).toNat

end

end A313946.P3349622167924173088

/-! ## A313946.P15413912244784335660

`or(A001222(A264236(n)), A312801(n))`
-/

namespace A313946.P15413912244784335660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A264236 n).toNat) (A312801 n)

end

end A313946.P15413912244784335660

/-! ## A313946.P8029324965332213992

`xor(A313855(n), A334862(A000142(n)))`
-/

namespace A313946.P8029324965332213992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A313855 n) (A334862 (A000142 n).toNat)

end

end A313946.P8029324965332213992

/-! ## A313946.P15843793944083770197

`A313759(n)+A008441(A109563(n+1))`
-/

namespace A313946.P15843793944083770197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313759 n + A008441 (A109563 (n + 1)).toNat

end

end A313946.P15843793944083770197

/-! ## A313946.P6775338266188963471

`A008458(n)-A351752(A032555(n+1))`
-/

namespace A313946.P6775338266188963471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A351752 (A032555 (n + 1)).toNat

end

end A313946.P6775338266188963471

/-!
# A313947: Coordination sequence Gal.5.284.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313947, there is no canonical definition to state claims against.
-/

/-! ## A313947.P10196530256987325919

`A313828(n)+A186038(A279920(n+1))`
-/

namespace A313947.P10196530256987325919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313828 n + A186038 (A279920 (n + 1)).toNat

end

end A313947.P10196530256987325919

/-! ## A313947.P17938781620855892299

`xor(A141728(A094216(n+1)), A313962(n))`
-/

namespace A313947.P17938781620855892299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141728 (A094216 (n + 1)).toNat) (A313962 n)

end

end A313947.P17938781620855892299

/-! ## A313947.P14843816400120242564

`A312281(n)+eq[A312274(n), A312282(n)]`
-/

namespace A313947.P14843816400120242564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312281 n + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A313947.P14843816400120242564

/-! ## A313947.P6400841662327064225

`A319000(A313634(2*n+1))+A313640(n)`
-/

namespace A313947.P6400841662327064225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (A313634 (2 * n + 1)).toNat + A313640 n

end

end A313947.P6400841662327064225

/-!
# A313948: Coordination sequence Gal.5.326.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313948, there is no canonical definition to state claims against.
-/

/-! ## A313948.P3581163235664550416

`A315033(n)+A001222(A000088(n))`
-/

namespace A313948.P3581163235664550416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315033 n + A001222 (A000088 n).toNat

end

end A313948.P3581163235664550416

/-! ## A313948.P10519705085607042788

`A318306(A001764(n))+A315011(n)`
-/

namespace A313948.P10519705085607042788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A001764 n).toNat + A315011 n

end

end A313948.P10519705085607042788

/-! ## A313948.P17254675997777844568

`A343632(A000326(n))+A301726(n)`
-/

namespace A313948.P17254675997777844568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A000326 n).toNat + A301726 n

end

end A313948.P17254675997777844568

/-! ## A313948.P2695862126233256101

`A318306(A047749(2*n))+A315011(n)`
-/

namespace A313948.P2695862126233256101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (A047749 (2 * n)).toNat + A315011 n

end

end A313948.P2695862126233256101

/-! ## A313948.P5235338774347727097

`A318306(A065942(2*n)/(2*n+1))+A315011(n)`
-/

namespace A313948.P5235338774347727097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318306 (SequenceMachineLib.roundAway ((A065942 (2 * n) : ℚ) / (2 * n + 1 : ℚ))).toNat + A315011 n

end

end A313948.P5235338774347727097

/-!
# A313949: Coordination sequence Gal.6.490.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313949, there is no canonical definition to state claims against.
-/

/-! ## A313949.P5832087969082326082

`A097369(A312304(n)+A311981(n))`
-/

namespace A313949.P5832087969082326082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097369 (A312304 n + A311981 n).toNat

end

end A313949.P5832087969082326082

/-! ## A313949.P332263300721060668

`A250120(n)+A023416(A005470(n))`
-/

namespace A313949.P332263300721060668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A023416 (A005470 n).toNat

end

end A313949.P332263300721060668

/-! ## A313949.P2402208799987639424

`A250120(n)+A212182(A232983(n))`
-/

namespace A313949.P2402208799987639424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A212182 (A232983 n).toNat

end

end A313949.P2402208799987639424

/-! ## A313949.P2777808291137075117

`A172336(n)+A035232(A006173(n+1))`
-/

namespace A313949.P2777808291137075117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172336 n + A035232 (A006173 (n + 1)).toNat

end

end A313949.P2777808291137075117

/-!
# A313950: Coordination sequence Gal.6.656.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313950, there is no canonical definition to state claims against.
-/

/-! ## A313950.P2495673021770280186

`A175427(A312271(n)+n)+1`
-/

namespace A313950.P2495673021770280186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A312271 n + (n : ℤ)).toNat + 1

end

end A313950.P2495673021770280186

/-! ## A313950.P6168585578525320142

`and(A312555(n)+n, A133705(A314726(n)))`
-/

namespace A313950.P6168585578525320142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A312555 n + (n : ℤ)) (A133705 (A314726 n).toNat)

end

end A313950.P6168585578525320142

/-! ## A313950.P1548110760915961970

`A310505(n)+A163540(A154638(n))`
-/

namespace A313950.P1548110760915961970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310505 n + A163540 (A154638 n).toNat

end

end A313950.P1548110760915961970

/-! ## A313950.P2518059440859043370

`A075338(n+1)+A073267(A344191(n))`
-/

namespace A313950.P2518059440859043370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075338 (n + 1) + A073267 (A344191 n).toNat

end

end A313950.P2518059440859043370

/-! ## A313950.P6743784672359865221

`A067774(n+1)-A121041(A221882(n+2))`
-/

namespace A313950.P6743784672359865221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - A121041 (A221882 (n + 2)).toNat

end

end A313950.P6743784672359865221

/-!
# A313951: Coordination sequence Gal.6.654.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313951, there is no canonical definition to state claims against.
-/

/-! ## A313951.P12795868481169645276

`2*A314218(n)-A314287(n)`
-/

namespace A313951.P12795868481169645276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A314218 n - A314287 n

end

end A313951.P12795868481169645276

/-! ## A313951.P12770439113422340699

`A005843(A314218(n))-A314287(n)`
-/

namespace A313951.P12770439113422340699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314218 n).toNat - A314287 n

end

end A313951.P12770439113422340699

/-! ## A313951.P9349812733154602147

`A005843(A314218(n))-(2*A314283(n)-A314275(n))`
-/

namespace A313951.P9349812733154602147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A314218 n).toNat - (2 * A314283 n - A314275 n)

end

end A313951.P9349812733154602147

/-! ## A313951.P4137443909468978409

`A175427(A016873(n)-A165471(n))`
-/

namespace A313951.P4137443909468978409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A016873 n - A165471 n).toNat

end

end A313951.P4137443909468978409

/-! ## A313951.P8328776229373110657

`A244040(A055589(n))+A016777(n)`
-/

namespace A313951.P8328776229373110657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244040 (A055589 n).toNat + A016777 n

end

end A313951.P8328776229373110657

/-!
# A313952: Coordination sequence Gal.4.143.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313952, the canonical program `A313952.P3220437394578326099` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313952 has offset 0).

The definition of A313952 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313952.P3220437394578326099

`A312245(n)+A047588(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313952

/-- `A312245(n)+A047588(n+1)` -/
def P3220437394578326099.Spec : Prop :=
  ∀ n, P3220437394578326099.a n = A313952 n

theorem P3220437394578326099.correct : P3220437394578326099.Spec := by
  intro n
  simp only [A313952]

end A313952

/-! ## A313952.P7206545894897350556

`A312475(n)+A057357(Δ[n²])`
-/

namespace A313952.P7206545894897350556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312475 n + A057357 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A313952.P7206545894897350556

namespace A313952

/-- `A312475(n)+A057357(Δ[n²])` -/
def P7206545894897350556.Spec : Prop :=
  ∀ n, P7206545894897350556.a n = A313952 n

end A313952

/-! ## A313952.P7990529207161004385

`A004396(A312895(n))+2*A047263(n+1)`
-/

namespace A313952.P7990529207161004385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A312895 n).toNat + 2 * A047263 (n + 1)

end

end A313952.P7990529207161004385

namespace A313952

/-- `A004396(A312895(n))+2*A047263(n+1)` -/
def P7990529207161004385.Spec : Prop :=
  ∀ n, P7990529207161004385.a n = A313952 n

end A313952

/-! ## A313952.P3807248781818521403

`A004396(A314674(n))+2*A047263(n+1)`
-/

namespace A313952.P3807248781818521403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314674 n).toNat + 2 * A047263 (n + 1)

end

end A313952.P3807248781818521403

namespace A313952

/-- `A004396(A314674(n))+2*A047263(n+1)` -/
def P3807248781818521403.Spec : Prop :=
  ∀ n, P3807248781818521403.a n = A313952 n

end A313952

/-! ## A313952.P7659004432631587452

`A047486(n+1)+A250120(n)-A047588(n+1)`
-/

namespace A313952.P7659004432631587452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A250120 n - A047588 (n + 1))

end

end A313952.P7659004432631587452

namespace A313952

/-- `A047486(n+1)+A250120(n)-A047588(n+1)` -/
def P7659004432631587452.Spec : Prop :=
  ∀ n, P7659004432631587452.a n = A313952 n

end A313952

/-! ## A313952.P1795479943434897879

`A005843(A047263(n+1))+A004396(A312895(n))`
-/

namespace A313952.P1795479943434897879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047263 (n + 1)).toNat + A004396 (A312895 n).toNat

end

end A313952.P1795479943434897879

namespace A313952

/-- `A005843(A047263(n+1))+A004396(A312895(n))` -/
def P1795479943434897879.Spec : Prop :=
  ∀ n, P1795479943434897879.a n = A313952 n

end A313952

/-! ## A313952.P9637363178868641067

`A005843(A047263(n+1))+A004396(A314674(n))`
-/

namespace A313952.P9637363178868641067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047263 (n + 1)).toNat + A004396 (A314674 n).toNat

end

end A313952.P9637363178868641067

namespace A313952

/-- `A005843(A047263(n+1))+A004396(A314674(n))` -/
def P9637363178868641067.Spec : Prop :=
  ∀ n, P9637363178868641067.a n = A313952 n

end A313952

/-! ## A313952.P11971201342416538307

`2*A313873(n)-A313780(n)`
-/

namespace A313952.P11971201342416538307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313873 n - A313780 n

end

end A313952.P11971201342416538307

namespace A313952

/-- `2*A313873(n)-A313780(n)` -/
def P11971201342416538307.Spec : Prop :=
  ∀ n, P11971201342416538307.a n = A313952 n

end A313952

/-! ## A313952.P16412020169537360042

`A313780(n)+A005843(A313873(n)-A313780(n))`
-/

namespace A313952.P16412020169537360042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313780 n + A005843 (A313873 n - A313780 n).toNat

end

end A313952.P16412020169537360042

namespace A313952

/-- `A313780(n)+A005843(A313873(n)-A313780(n))` -/
def P16412020169537360042.Spec : Prop :=
  ∀ n, P16412020169537360042.a n = A313952 n

end A313952

/-! ## A313952.P15023729835607538393

`A313975(n)-A047588(n+1)+n`
-/

namespace A313952.P15023729835607538393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A047588 (n + 1) + (n : ℤ)

end

end A313952.P15023729835607538393

namespace A313952

/-- `A313975(n)-A047588(n+1)+n` -/
def P15023729835607538393.Spec : Prop :=
  ∀ n, P15023729835607538393.a n = A313952 n

end A313952

/-! ## A313952.P16752579863908424643

`A313975(n)-A110654(A057356(n))`
-/

namespace A313952.P16752579863908424643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A110654 (A057356 n).toNat

end

end A313952.P16752579863908424643

namespace A313952

/-- `A313975(n)-A110654(A057356(n))` -/
def P16752579863908424643.Spec : Prop :=
  ∀ n, P16752579863908424643.a n = A313952 n

end A313952

/-! ## A313952.P10081842349717800792

`A313975(n)-A004525(A060464(n+1)-n)`
-/

namespace A313952.P10081842349717800792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n - A004525 (A060464 (n + 1) - (n : ℤ)).toNat

end

end A313952.P10081842349717800792

namespace A313952

/-- `A313975(n)-A004525(A060464(n+1)-n)` -/
def P10081842349717800792.Spec : Prop :=
  ∀ n, P10081842349717800792.a n = A313952 n

end A313952

/-! ## A313952.P15336357165875105732

`A005843(A313873(n))-A313780(n)`
-/

namespace A313952.P15336357165875105732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313873 n).toNat - A313780 n

end

end A313952.P15336357165875105732

namespace A313952

/-- `A005843(A313873(n))-A313780(n)` -/
def P15336357165875105732.Spec : Prop :=
  ∀ n, P15336357165875105732.a n = A313952 n

end A313952

/-!
# A313953: Coordination sequence Gal.6.486.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313953, there is no canonical definition to state claims against.
-/

/-! ## A313953.P3512901313741650129

`A301697(n)-A057078(A093040(2*n))`
-/

namespace A313953.P3512901313741650129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n - A057078 (A093040 (2 * n)).toNat

end

end A313953.P3512901313741650129

/-! ## A313953.P13607069841836533344

`or(A091453(A094282(n+1)), A313952(n))`
-/

namespace A313953.P13607069841836533344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091453 (A094282 (n + 1)).toNat) (A313952 n)

end

end A313953.P13607069841836533344

/-! ## A313953.P7762907322054073309

`lt[A135329(n)², A135333(2*n)]`
-/

namespace A313953.P7762907322054073309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135329 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135333 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A313953.P7762907322054073309

/-! ## A313953.P8434000556989126663

`or(A011738(A006924(n)), A313952(n))`
-/

namespace A313953.P8434000556989126663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011738 (A006924 n).toNat) (A313952 n)

end

end A313953.P8434000556989126663

/-! ## A313953.P13816409500012945489

`or(A029271(n), A313840(A087051(n)))`
-/

namespace A313953.P13816409500012945489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029271 n) (A313840 (A087051 n).toNat)

end

end A313953.P13816409500012945489

/-!
# A313954: Coordination sequence Gal.3.55.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313954, the canonical program `A313954.P7479337481479020677` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313954 has offset 0).

The definition of A313954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313954.P13165591607339526604

`A250120(n)+∑[char[or(2, n)]]`
-/

namespace A313954.P13165591607339526604
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A313954.P13165591607339526604

namespace A313954

/-- `A250120(n)+∑[char[or(2, n)]]` -/
def P13165591607339526604.Spec : Prop :=
  ∀ n, P13165591607339526604.a n = A313954 n

end A313954

/-! ## A313954.P15729760821952196475

`A072154(2*n)+∑[and(2, n)/2]`
-/

namespace A313954.P15729760821952196475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072154 (2 * n) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313954.P15729760821952196475

namespace A313954

/-- `A072154(2*n)+∑[and(2, n)/2]` -/
def P15729760821952196475.Spec : Prop :=
  ∀ n, P15729760821952196475.a n = (A313954 n : ℚ)

end A313954

/-! ## A313954.P11055386983752744185

`A250120(n)+∑[A021913(n)]`
-/

namespace A313954.P11055386983752744185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313954.P11055386983752744185

namespace A313954

/-- `A250120(n)+∑[A021913(n)]` -/
def P11055386983752744185.Spec : Prop :=
  ∀ n, P11055386983752744185.a n = A313954 n

end A313954

/-! ## A313954.P46728230141794443

`A250120(n)+Δ[A011848(n)]`
-/

namespace A313954.P46728230141794443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (f1 (n + 1) - f1 n)

end

end A313954.P46728230141794443

namespace A313954

/-- `A250120(n)+Δ[A011848(n)]` -/
def P46728230141794443.Spec : Prop :=
  ∀ n, P46728230141794443.a n = A313954 n

end A313954

/-! ## A313954.P2374862648921492509

`A250120(n)+A004524(n+1)`
-/

namespace A313954.P2374862648921492509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A004524 (n + 1)

end

end A313954.P2374862648921492509

namespace A313954

/-- `A250120(n)+A004524(n+1)` -/
def P2374862648921492509.Spec : Prop :=
  ∀ n, P2374862648921492509.a n = A313954 n

end A313954

/-! ## A313954.P6599706229855168606

`A250120(n)+n-A004525(n)`
-/

namespace A313954.P6599706229855168606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + ((n : ℤ) - A004525 n)

end

end A313954.P6599706229855168606

namespace A313954

/-- `A250120(n)+n-A004525(n)` -/
def P6599706229855168606.Spec : Prop :=
  ∀ n, P6599706229855168606.a n = A313954 n

end A313954

/-! ## A313954.P7479337481479020677

`A072154(2*n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313954

/-- `A072154(2*n)+∑[A021913(n)]` -/
def P7479337481479020677.Spec : Prop :=
  ∀ n, P7479337481479020677.a n = A313954 n

theorem P7479337481479020677.correct : P7479337481479020677.Spec := by
  intro n
  simp only [A313954]

end A313954

/-! ## A313954.P17169254402706876510

`A072154(2*n)+Δ[A011848(n)]`
-/

namespace A313954.P17169254402706876510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + (f1 (n + 1) - f1 n)

end

end A313954.P17169254402706876510

namespace A313954

/-- `A072154(2*n)+Δ[A011848(n)]` -/
def P17169254402706876510.Spec : Prop :=
  ∀ n, P17169254402706876510.a n = A313954 n

end A313954

/-! ## A313954.P4066365909176721936

`A072154(2*n)+A004524(n+1)`
-/

namespace A313954.P4066365909176721936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A004524 (n + 1)

end

end A313954.P4066365909176721936

namespace A313954

/-- `A072154(2*n)+A004524(n+1)` -/
def P4066365909176721936.Spec : Prop :=
  ∀ n, P4066365909176721936.a n = A313954 n

end A313954

/-! ## A313954.P13697423503361394188

`A072154(2*n)+n-A004525(n)`
-/

namespace A313954.P13697423503361394188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + ((n : ℤ) - A004525 n)

end

end A313954.P13697423503361394188

namespace A313954

/-- `A072154(2*n)+n-A004525(n)` -/
def P13697423503361394188.Spec : Prop :=
  ∀ n, P13697423503361394188.a n = A313954 n

end A313954

/-! ## A313954.P7813785258046592819

`A250120(n)+A002265(A003485(n))`
-/

namespace A313954.P7813785258046592819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A002265 (A003485 n).toNat

end

end A313954.P7813785258046592819

namespace A313954

/-- `A250120(n)+A002265(A003485(n))` -/
def P7813785258046592819.Spec : Prop :=
  ∀ n, P7813785258046592819.a n = A313954 n

end A313954

/-! ## A313954.P10055903802067113685

`A250120(n)+A004523(A037915(n))`
-/

namespace A313954.P10055903802067113685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A004523 (A037915 n).toNat

end

end A313954.P10055903802067113685

namespace A313954

/-- `A250120(n)+A004523(A037915(n))` -/
def P10055903802067113685.Spec : Prop :=
  ∀ n, P10055903802067113685.a n = A313954 n

end A313954

/-! ## A313954.P3744322379505776468

`A072154(2*n)+A004525(A201629(n))`
-/

namespace A313954.P3744322379505776468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A004525 (A201629 n).toNat

end

end A313954.P3744322379505776468

namespace A313954

/-- `A072154(2*n)+A004525(A201629(n))` -/
def P3744322379505776468.Spec : Prop :=
  ∀ n, P3744322379505776468.a n = A313954 n

end A313954

/-! ## A313954.P11807100538534220611

`A250120(n)+A004523(n-A002265(n))`
-/

namespace A313954.P11807100538534220611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A004523 ((n : ℤ) - A002265 n).toNat

end

end A313954.P11807100538534220611

namespace A313954

/-- `A250120(n)+A004523(n-A002265(n))` -/
def P11807100538534220611.Spec : Prop :=
  ∀ n, P11807100538534220611.a n = A313954 n

end A313954

/-! ## A313954.P10166579567183842914

`A250120(n)+A301293(n)-A008574(n)`
-/

namespace A313954.P10166579567183842914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (A301293 n - A008574 n)

end

end A313954.P10166579567183842914

namespace A313954

/-- `A250120(n)+A301293(n)-A008574(n)` -/
def P10166579567183842914.Spec : Prop :=
  ∀ n, P10166579567183842914.a n = A313954 n

end A313954

/-! ## A313954.P14638887029349039503

`A187322(n)+A250120(n)-A187321(n)`
-/

namespace A313954.P14638887029349039503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187322 n + (A250120 n - A187321 n)

end

end A313954.P14638887029349039503

namespace A313954

/-- `A187322(n)+A250120(n)-A187321(n)` -/
def P14638887029349039503.Spec : Prop :=
  ∀ n, P14638887029349039503.a n = A313954 n

end A313954

/-! ## A313954.P16490645112190258716

`A250120(n)+A004523(A002265(3*n)+1)`
-/

namespace A313954.P16490645112190258716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A004523 (A002265 (3 * n) + 1).toNat

end

end A313954.P16490645112190258716

namespace A313954

/-- `A250120(n)+A004523(A002265(3*n)+1)` -/
def P16490645112190258716.Spec : Prop :=
  ∀ n, P16490645112190258716.a n = A313954 n

end A313954

/-! ## A313954.P13792835207456875401

`A072154(2*n)+A004523(A002265(3*n)+1)`
-/

namespace A313954.P13792835207456875401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A004523 (A002265 (3 * n) + 1).toNat

end

end A313954.P13792835207456875401

namespace A313954

/-- `A072154(2*n)+A004523(A002265(3*n)+1)` -/
def P13792835207456875401.Spec : Prop :=
  ∀ n, P13792835207456875401.a n = A313954 n

end A313954

/-! ## A313954.P16678126906343300208

`A250120(n)+A103822(A080476(n+1))`
-/

namespace A313954.P16678126906343300208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A103822 (A080476 (n + 1)).toNat

end

end A313954.P16678126906343300208

namespace A313954

/-- `A250120(n)+A103822(A080476(n+1))` -/
def P16678126906343300208.Spec : Prop :=
  ∀ n, P16678126906343300208.a n = A313954 n

end A313954

/-!
# A313955: Coordination sequence Gal.4.144.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313955, the canonical program `A313955.P18254009820693885045` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313955 has offset 0).

The definition of A313955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313955.P15702911597833478727

`A315322(n)-A101455(n)`
-/

namespace A313955.P15702911597833478727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n - A101455 n

end

end A313955.P15702911597833478727

namespace A313955

/-- `A315322(n)-A101455(n)` -/
def P15702911597833478727.Spec : Prop :=
  ∀ n, P15702911597833478727.a n = A313955 n

end A313955

/-! ## A313955.P2049363166635046092

`A315026(n)+∑[A021913(n)]`
-/

namespace A313955.P2049363166635046092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313955.P2049363166635046092

namespace A313955

/-- `A315026(n)+∑[A021913(n)]` -/
def P2049363166635046092.Spec : Prop :=
  ∀ n, P2049363166635046092.a n = A313955 n

end A313955

/-! ## A313955.P18254009820693885045

`A313862(n)+Δ[A011865(n)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313955

/-- `A313862(n)+Δ[A011865(n)]` -/
def P18254009820693885045.Spec : Prop :=
  ∀ n, P18254009820693885045.a n = A313955 n

theorem P18254009820693885045.correct : P18254009820693885045.Spec := by
  intro n
  simp only [A313955]

end A313955

/-! ## A313955.P14818118775408399223

`A315026(n)+Δ[A011848(n)]`
-/

namespace A313955.P14818118775408399223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + (f1 (n + 1) - f1 n)

end

end A313955.P14818118775408399223

namespace A313955

/-- `A315026(n)+Δ[A011848(n)]` -/
def P14818118775408399223.Spec : Prop :=
  ∀ n, P14818118775408399223.a n = A313955 n

end A313955

/-! ## A313955.P2542017407216358920

`A315026(n)+A004524(n+1)`
-/

namespace A313955.P2542017407216358920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + A004524 (n + 1)

end

end A313955.P2542017407216358920

namespace A313955

/-- `A315026(n)+A004524(n+1)` -/
def P2542017407216358920.Spec : Prop :=
  ∀ n, P2542017407216358920.a n = A313955 n

end A313955

/-! ## A313955.P17447508635267613342

`A315322(n)+A056594(n+1)`
-/

namespace A313955.P17447508635267613342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315322 n + A056594 (n + 1)

end

end A313955.P17447508635267613342

namespace A313955

/-- `A315322(n)+A056594(n+1)` -/
def P17447508635267613342.Spec : Prop :=
  ∀ n, P17447508635267613342.a n = A313955 n

end A313955

/-! ## A313955.P16398900277889514681

`A315026(n)+n-A004525(n)`
-/

namespace A313955.P16398900277889514681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + ((n : ℤ) - A004525 n)

end

end A313955.P16398900277889514681

namespace A313955

/-- `A315026(n)+n-A004525(n)` -/
def P16398900277889514681.Spec : Prop :=
  ∀ n, P16398900277889514681.a n = A313955 n

end A313955

/-! ## A313955.P12913335955095399512

`A315026(n)+n-Δ[A054925(n)]`
-/

namespace A313955.P12913335955095399512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315026 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A313955.P12913335955095399512

namespace A313955

/-- `A315026(n)+n-Δ[A054925(n)]` -/
def P12913335955095399512.Spec : Prop :=
  ∀ n, P12913335955095399512.a n = A313955 n

end A313955

/-! ## A313955.P17845978537831243242

`A004396(n)+A313837(n)-A004525(n)`
-/

namespace A313955.P17845978537831243242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313837 n - A004525 n)

end

end A313955.P17845978537831243242

namespace A313955

/-- `A004396(n)+A313837(n)-A004525(n)` -/
def P17845978537831243242.Spec : Prop :=
  ∀ n, P17845978537831243242.a n = A313955 n

end A313955

/-! ## A313955.P18061449136433136412

`2*A313879(n)-A313789(n)`
-/

namespace A313955.P18061449136433136412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313879 n - A313789 n

end

end A313955.P18061449136433136412

namespace A313955

/-- `2*A313879(n)-A313789(n)` -/
def P18061449136433136412.Spec : Prop :=
  ∀ n, P18061449136433136412.a n = A313955 n

end A313955

/-! ## A313955.P4147991288463968382

`A005843(A313879(n))-A313789(n)`
-/

namespace A313955.P4147991288463968382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313879 n).toNat - A313789 n

end

end A313955.P4147991288463968382

namespace A313955

/-- `A005843(A313879(n))-A313789(n)` -/
def P4147991288463968382.Spec : Prop :=
  ∀ n, P4147991288463968382.a n = A313955 n

end A313955

/-!
# A313956: Coordination sequence Gal.6.652.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313956, the canonical program `A313956.P5999280833725996003` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313956 has offset 0).

The definition of A313956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313956.P5999280833725996003

`2*A313875(n)-A313782(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A313956

/-- `2*A313875(n)-A313782(n)` -/
def P5999280833725996003.Spec : Prop :=
  ∀ n, P5999280833725996003.a n = A313956 n

theorem P5999280833725996003.correct : P5999280833725996003.Spec := by
  intro n
  simp only [A313956]

end A313956

/-! ## A313956.P4599851254558267393

`A311843(n)+n-(A313782(n)-A313875(n))`
-/

namespace A313956.P4599851254558267393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311843 n + (n : ℤ) - (A313782 n - A313875 n)

end

end A313956.P4599851254558267393

namespace A313956

/-- `A311843(n)+n-(A313782(n)-A313875(n))` -/
def P4599851254558267393.Spec : Prop :=
  ∀ n, P4599851254558267393.a n = A313956 n

theorem P4599851254558267393.correct : P4599851254558267393.Spec := by
  intro n
  simp only [A313956, Nat.add_sub_cancel, A313956.P4599851254558267393.a, A313956.P5999280833725996003.a, A311843, A311843.P4745182286114243014.f1, A311843.P4745182286114243014.a, A313782, A313782.P12193786850322098717.a, A313875, A313875.P9058260822961243366.a, A008574, A008574.P1300280032690682112.a, A011861, A011861.P4500963193198654930.a, A313154, A313154.P7910125893097236437.f1, A313154.P7910125893097236437.a, A330025, A330025.P16976327817596103196.a, A011558, A011558.P14291727921269463220.a, A011858, A011858.P16234308487928340219.a, A312162, A312162.P8460047677510331873.a, A047263, A047263.P10177617567604490545.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A313956

/-! ## A313956.P6344782032985560500

`A313782(n)+A005843(A313875(n)-A313782(n))`
-/

namespace A313956.P6344782032985560500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313782 n + A005843 (A313875 n - A313782 n).toNat

end

end A313956.P6344782032985560500

namespace A313956

/-- `A313782(n)+A005843(A313875(n)-A313782(n))` -/
def P6344782032985560500.Spec : Prop :=
  ∀ n, P6344782032985560500.a n = A313956 n

end A313956

/-! ## A313956.P2380868521709682159

`A313292(n)+A046978(n)-(A313782(n)-A313875(n))`
-/

namespace A313956.P2380868521709682159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313292 n + A046978 n - (A313782 n - A313875 n)

end

end A313956.P2380868521709682159

namespace A313956

/-- `A313292(n)+A046978(n)-(A313782(n)-A313875(n))` -/
def P2380868521709682159.Spec : Prop :=
  ∀ n, P2380868521709682159.a n = A313956 n

end A313956

/-! ## A313956.P13340191177207516334

`A301710(n)+A315061(n)-A313782(n)`
-/

namespace A313956.P13340191177207516334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301710 n + (A315061 n - A313782 n)

end

end A313956.P13340191177207516334

namespace A313956

/-- `A301710(n)+A315061(n)-A313782(n)` -/
def P13340191177207516334.Spec : Prop :=
  ∀ n, P13340191177207516334.a n = A313956 n

end A313956

/-! ## A313956.P13263017444980561520

`A005843(A313875(n))-A313782(n)`
-/

namespace A313956.P13263017444980561520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313875 n).toNat - A313782 n

end

end A313956.P13263017444980561520

namespace A313956

/-- `A005843(A313875(n))-A313782(n)` -/
def P13263017444980561520.Spec : Prop :=
  ∀ n, P13263017444980561520.a n = A313956 n

end A313956

/-!
# A313957: Coordination sequence Gal.5.312.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313957, the canonical program `A313957.P3646171935266098749` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313957 has offset 0).

The definition of A313957 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313957.P3646171935266098749

`A315020(n)+A004523(A145569(n))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313957

/-- `A315020(n)+A004523(A145569(n))` -/
def P3646171935266098749.Spec : Prop :=
  ∀ n, P3646171935266098749.a n = A313957 n

theorem P3646171935266098749.correct : P3646171935266098749.Spec := by
  intro n
  simp only [A313957]

end A313957

/-! ## A313957.P15459912140368778319

`A313966(n)+A314123(n)-A314129(n)`
-/

namespace A313957.P15459912140368778319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314123 n - A314129 n)

end

end A313957.P15459912140368778319

namespace A313957

/-- `A313966(n)+A314123(n)-A314129(n)` -/
def P15459912140368778319.Spec : Prop :=
  ∀ n, P15459912140368778319.a n = A313957 n

theorem P15459912140368778319.correct : P15459912140368778319.Spec := by
  intro n
  simp only [A313957, Nat.add_sub_cancel, A313957.P15459912140368778319.a, A313957.P3646171935266098749.a, A004523, A004523.P10612776629676351712.a, A145569, A145569.P12552234012801179723.a, A313966, A313966.P14662508330527286566.a, A314123, A314123.P17491408075998672522.a, A314129, A314129.P3295900941499139215.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A008586, A008586.P15642444062404201100.a, A011861, A011861.P4500963193198654930.a, A028310, A028310.P18130301328277559831.a, A242062, A242062.P1082147046428175291.a, A313115, A313115.P1984220492497243584.a, A314829, A314829.P8333159363270422796.a, A004525, A004525.P4158271949796742323.a, A311501, A311501.P3617403906977629789.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313957

/-! ## A313957.P3949334736544722882

`A313966(n)+A314125(n)-A314130(n)`
-/

namespace A313957.P3949334736544722882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313966 n + (A314125 n - A314130 n)

end

end A313957.P3949334736544722882

namespace A313957

/-- `A313966(n)+A314125(n)-A314130(n)` -/
def P3949334736544722882.Spec : Prop :=
  ∀ n, P3949334736544722882.a n = A313957 n

theorem P3949334736544722882.correct : P3949334736544722882.Spec := by
  intro n
  simp only [A313957, Nat.add_sub_cancel, A313957.P3949334736544722882.a, A313957.P3646171935266098749.a, A004523, A004523.P10612776629676351712.a, A145569, A145569.P12552234012801179723.a, A313966, A313966.P14662508330527286566.a, A314125, A314125.P17964618951199002530.a, A314130, A314130.P11569106488579326638.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A004525, A004525.P4158271949796742323.a, A011861, A011861.P4500963193198654930.a, A028310, A028310.P18130301328277559831.a, A310372, A310372.P13571883006595967654.a, A314123, A314123.P17491408075998672522.a, A314829, A314829.P8333159363270422796.a, A004275, A004275.P5432371984586133349.a, A004776, A004776.P12492855655341303098.a, A008586, A008586.P15642444062404201100.a, A242062, A242062.P1082147046428175291.a, A313115, A313115.P1984220492497243584.a, A311501, A311501.P3617403906977629789.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313957

/-! ## A313957.P7646065810609481880

`xor(A100821(A137200(n)), A219529(n))`
-/

namespace A313957.P7646065810609481880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A100821 (A137200 n).toNat) (A219529 n)

end

end A313957.P7646065810609481880

namespace A313957

/-- `xor(A100821(A137200(n)), A219529(n))` -/
def P7646065810609481880.Spec : Prop :=
  ∀ n, P7646065810609481880.a n = A313957 n

end A313957

/-! ## A313957.P1624146827401826604

`or(A038219(A102659(n+2)), A047618(2*n+1))`
-/

namespace A313957.P1624146827401826604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038219 (A102659 (n + 2)).toNat) (A047618 (2 * n + 1))

end

end A313957.P1624146827401826604

namespace A313957

/-- `or(A038219(A102659(n+2)), A047618(2*n+1))` -/
def P1624146827401826604.Spec : Prop :=
  ∀ n, P1624146827401826604.a n = A313957 n

end A313957

/-!
# A313958: Coordination sequence Gal.6.657.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313958, there is no canonical definition to state claims against.
-/

/-! ## A313958.P4786969314943829200

`A313957(n)+A185284(A030513(n+1))`
-/

namespace A313958.P4786969314943829200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + A185284 (A030513 (n + 1)).toNat

end

end A313958.P4786969314943829200

/-! ## A313958.P2168032266067091542

`A313957(n)+A185284(A133265(3*(n+1)))`
-/

namespace A313958.P2168032266067091542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + A185284 (A133265 (3 * (n + 1))).toNat

end

end A313958.P2168032266067091542

/-! ## A313958.P8302098594246499393

`xor(A185238(floor(n²/3)), A313957(n))`
-/

namespace A313958.P8302098594246499393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185238 ⌊(n ^ 2 : ℚ) / 3⌋.toNat) (A313957 n)

end

end A313958.P8302098594246499393

/-! ## A313958.P642001073106577551

`A313957(n)+A036632(A036640(n))`
-/

namespace A313958.P642001073106577551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + A036632 (A036640 n).toNat

end

end A313958.P642001073106577551

/-! ## A313958.P10545525382359401466

`A313957(n)+A185284(A036632(n))`
-/

namespace A313958.P10545525382359401466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + A185284 (A036632 n).toNat

end

end A313958.P10545525382359401466

/-!
# A313959: Coordination sequence Gal.5.311.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313959, there is no canonical definition to state claims against.
-/

/-! ## A313959.P3984895564784549651

`A314058(A250120(n))-A311344(A250120(n))`
-/

namespace A313959.P3984895564784549651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314058 (A250120 n).toNat - A311344 (A250120 n).toNat

end

end A313959.P3984895564784549651

/-! ## A313959.P11940897148856858322

`A314126(n)-A155726(A161680(n))`
-/

namespace A313959.P11940897148856858322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314126 n - A155726 (A161680 n).toNat

end

end A313959.P11940897148856858322

/-! ## A313959.P6263393997518842749

`xor(A010051(A056272(n)), A314126(n))`
-/

namespace A313959.P6263393997518842749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (A056272 n).toNat) (A314126 n)

end

end A313959.P6263393997518842749

/-! ## A313959.P7795963206563112228

`A314898(n)+A001222(A109655(n))`
-/

namespace A313959.P7795963206563112228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + A001222 (A109655 n).toNat

end

end A313959.P7795963206563112228

/-! ## A313959.P4112550866869196523

`A284257(A179215(n))+A250120(n)`
-/

namespace A313959.P4112550866869196523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284257 (A179215 n).toNat + A250120 n

end

end A313959.P4112550866869196523

/-!
# A313960: Coordination sequence Gal.6.660.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313960, there is no canonical definition to state claims against.
-/

/-! ## A313960.P5716073067947608938

`A313826(n)+A001221(A120588(n))`
-/

namespace A313960.P5716073067947608938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n + A001221 (A120588 n).toNat

end

end A313960.P5716073067947608938

/-! ## A313960.P4802784935758968826

`A310505(n)+A096270(A351870(n))`
-/

namespace A313960.P4802784935758968826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310505 n + A096270 (A351870 n).toNat

end

end A313960.P4802784935758968826

/-! ## A313960.P7685827097320307449

`or(A096270(n), A310505(A351870(n)))`
-/

namespace A313960.P7685827097320307449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096270 n) (A310505 (A351870 n).toNat)

end

end A313960.P7685827097320307449

/-! ## A313960.P5803530806277470233

`xor(A178181(n), A266588(A000081(n)))`
-/

namespace A313960.P5803530806277470233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A178181 n) (A266588 (A000081 n).toNat)

end

end A313960.P5803530806277470233

/-! ## A313960.P4725198763029156855

`xor(A008683(A312484(n)), A178181(n))`
-/

namespace A313960.P4725198763029156855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008683 (A312484 n).toNat) (A178181 n)

end

end A313960.P4725198763029156855

/-!
# A313962: Coordination sequence Gal.3.53.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313962, the canonical program `A313962.P258668997932417056` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313962 has offset 0).

The definition of A313962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2266 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313962.P258668997932417056

`A313835(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313962

/-- `A313835(n)+Δ[A011862(n)]` -/
def P258668997932417056.Spec : Prop :=
  ∀ n, P258668997932417056.a n = A313962 n

theorem P258668997932417056.correct : P258668997932417056.Spec := by
  intro n
  simp only [A313962]

end A313962

/-! ## A313962.P8725484757098346159

`2*A313835(n)-A313703(n)`
-/

namespace A313962.P8725484757098346159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313835 n - A313703 n

end

end A313962.P8725484757098346159

namespace A313962

/-- `2*A313835(n)-A313703(n)` -/
def P8725484757098346159.Spec : Prop :=
  ∀ n, P8725484757098346159.a n = A313962 n

end A313962

/-! ## A313962.P5924195357963164506

`2*A313894(n)-A313799(n)`
-/

namespace A313962.P5924195357963164506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313894 n - A313799 n

end

end A313962.P5924195357963164506

namespace A313962

/-- `2*A313894(n)-A313799(n)` -/
def P5924195357963164506.Spec : Prop :=
  ∀ n, P5924195357963164506.a n = A313962 n

end A313962

/-! ## A313962.P9793673063238405788

`A313703(n)+Δ[2*A011862(n)]`
-/

namespace A313962.P9793673063238405788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + (f1 (n + 1) - f1 n)

end

end A313962.P9793673063238405788

namespace A313962

/-- `A313703(n)+Δ[2*A011862(n)]` -/
def P9793673063238405788.Spec : Prop :=
  ∀ n, P9793673063238405788.a n = A313962 n

end A313962

/-! ## A313962.P18346671926112234378

`A310521(n)+A128834(A006369(n))`
-/

namespace A313962.P18346671926112234378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + A128834 (A006369 n).toNat

end

end A313962.P18346671926112234378

namespace A313962

/-- `A310521(n)+A128834(A006369(n))` -/
def P18346671926112234378.Spec : Prop :=
  ∀ n, P18346671926112234378.a n = A313962 n

end A313962

/-! ## A313962.P4163042765990504406

`A310538(n)+A134667(A006369(n))`
-/

namespace A313962.P4163042765990504406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310538 n + A134667 (A006369 n).toNat

end

end A313962.P4163042765990504406

namespace A313962

/-- `A310538(n)+A134667(A006369(n))` -/
def P4163042765990504406.Spec : Prop :=
  ∀ n, P4163042765990504406.a n = A313962 n

end A313962

/-! ## A313962.P18195649279230336267

`A314848(n)+A093390(A062545(n))`
-/

namespace A313962.P18195649279230336267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314848 n + A093390 (A062545 n).toNat

end

end A313962.P18195649279230336267

namespace A313962

/-- `A314848(n)+A093390(A062545(n))` -/
def P18195649279230336267.Spec : Prop :=
  ∀ n, P18195649279230336267.a n = A313962 n

end A313962

/-! ## A313962.P9325749321487424580

`A315475(n)-A102283(A004396(n))`
-/

namespace A313962.P9325749321487424580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - A102283 (A004396 n).toNat

end

end A313962.P9325749321487424580

namespace A313962

/-- `A315475(n)-A102283(A004396(n))` -/
def P9325749321487424580.Spec : Prop :=
  ∀ n, P9325749321487424580.a n = A313962 n

end A313962

/-! ## A313962.P16631249194599613356

`A312484(n)+A004396(A004396(2*n))`
-/

namespace A313962.P16631249194599613356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A004396 (A004396 (2 * n)).toNat

end

end A313962.P16631249194599613356

namespace A313962

/-- `A312484(n)+A004396(A004396(2*n))` -/
def P16631249194599613356.Spec : Prop :=
  ∀ n, P16631249194599613356.a n = A313962 n

end A313962

/-! ## A313962.P4306541260022552783

`A310521(n)+A102283(A004396(2*n))`
-/

namespace A313962.P4306541260022552783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n + A102283 (A004396 (2 * n)).toNat

end

end A313962.P4306541260022552783

namespace A313962

/-- `A310521(n)+A102283(A004396(2*n))` -/
def P4306541260022552783.Spec : Prop :=
  ∀ n, P4306541260022552783.a n = A313962 n

end A313962

/-! ## A313962.P17607654164009572335

`A315475(n)+A102283(2*A004396(n))`
-/

namespace A313962.P17607654164009572335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A102283 (2 * A004396 n).toNat

end

end A313962.P17607654164009572335

namespace A313962

/-- `A315475(n)+A102283(2*A004396(n))` -/
def P17607654164009572335.Spec : Prop :=
  ∀ n, P17607654164009572335.a n = A313962 n

end A313962

/-! ## A313962.P15308813446247441223

`A310521(n)-A102283(A004396(n)+n)`
-/

namespace A313962.P15308813446247441223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310521 n - A102283 (A004396 n + (n : ℤ)).toNat

end

end A313962.P15308813446247441223

namespace A313962

/-- `A310521(n)-A102283(A004396(n)+n)` -/
def P15308813446247441223.Spec : Prop :=
  ∀ n, P15308813446247441223.a n = A313962 n

end A313962

/-! ## A313962.P8520097752675049530

`A313703(n)+A005843(A313835(n)-A313703(n))`
-/

namespace A313962.P8520097752675049530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + A005843 (A313835 n - A313703 n).toNat

end

end A313962.P8520097752675049530

namespace A313962

/-- `A313703(n)+A005843(A313835(n)-A313703(n))` -/
def P8520097752675049530.Spec : Prop :=
  ∀ n, P8520097752675049530.a n = A313962 n

end A313962

/-! ## A313962.P10192503949859513521

`A310502(n)+A004525(A313979(n)-A310502(n))`
-/

namespace A313962.P10192503949859513521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310502 n + A004525 (A313979 n - A310502 n).toNat

end

end A313962.P10192503949859513521

namespace A313962

/-- `A310502(n)+A004525(A313979(n)-A310502(n))` -/
def P10192503949859513521.Spec : Prop :=
  ∀ n, P10192503949859513521.a n = A313962 n

end A313962

/-! ## A313962.P5828437668690150288

`A313835(n)+A004525(A313979(n)-A313835(n))`
-/

namespace A313962.P5828437668690150288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 n + A004525 (A313979 n - A313835 n).toNat

end

end A313962.P5828437668690150288

namespace A313962

/-- `A313835(n)+A004525(A313979(n)-A313835(n))` -/
def P5828437668690150288.Spec : Prop :=
  ∀ n, P5828437668690150288.a n = A313962 n

end A313962

/-! ## A313962.P12326640976017896617

`A005843(A313835(n))-A313703(n)`
-/

namespace A313962.P12326640976017896617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313835 n).toNat - A313703 n

end

end A313962.P12326640976017896617

namespace A313962

/-- `A005843(A313835(n))-A313703(n)` -/
def P12326640976017896617.Spec : Prop :=
  ∀ n, P12326640976017896617.a n = A313962 n

end A313962

/-! ## A313962.P6434072401952367785

`A313835(n)+A033183(A004771(n))`
-/

namespace A313962.P6434072401952367785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313835 n + A033183 (A004771 n).toNat

end

end A313962.P6434072401952367785

namespace A313962

/-- `A313835(n)+A033183(A004771(n))` -/
def P6434072401952367785.Spec : Prop :=
  ∀ n, P6434072401952367785.a n = A313962 n

end A313962

/-! ## A313962.P4110824095779897720

`A314736(2*n)-4*n`
-/

namespace A313962.P4110824095779897720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314736 (2 * n) - (4 * n : ℤ)

end

end A313962.P4110824095779897720

namespace A313962

/-- `A314736(2*n)-4*n` -/
def P4110824095779897720.Spec : Prop :=
  ∀ n, P4110824095779897720.a n = A313962 n

end A313962

/-! ## A313962.P3017005502475207194

`A004525(A315267(2*n))`
-/

namespace A313962.P3017005502475207194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315267 (2 * n)).toNat

end

end A313962.P3017005502475207194

namespace A313962

/-- `A004525(A315267(2*n))` -/
def P3017005502475207194.Spec : Prop :=
  ∀ n, P3017005502475207194.a n = A313962 n

end A313962

/-! ## A313962.P1797539905975519059

`A315510(n)-A134667(A004396(n))`
-/

namespace A313962.P1797539905975519059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315510 n - A134667 (A004396 n).toNat

end

end A313962.P1797539905975519059

namespace A313962

/-- `A315510(n)-A134667(A004396(n))` -/
def P1797539905975519059.Spec : Prop :=
  ∀ n, P1797539905975519059.a n = A313962 n

end A313962

/-!
# A313963: Coordination sequence Gal.3.56.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313963, there is no canonical definition to state claims against.
-/

/-! ## A313963.P11611481351719108188

`or(A174875(A174883(n+1)), A313962(n))`
-/

namespace A313963.P11611481351719108188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A174875 (A174883 (n + 1)).toNat) (A313962 n)

end

end A313963.P11611481351719108188

/-! ## A313963.P3499301469820709297

`A313888(n)+A188037(A026938(n))`
-/

namespace A313963.P3499301469820709297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313888 n + A188037 (A026938 n).toNat

end

end A313963.P3499301469820709297

/-! ## A313963.P15313459122512971562

`A313849(n)+A010051(A318099(n))`
-/

namespace A313963.P15313459122512971562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313849 n + A010051 (A318099 n).toNat

end

end A313963.P15313459122512971562

/-! ## A313963.P1256466709701105801

`A005843(A313888(n))-A160755(A314156(n))`
-/

namespace A313963.P1256466709701105801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313888 n).toNat - A160755 (A314156 n).toNat

end

end A313963.P1256466709701105801

/-!
# A313964: Coordination sequence Gal.6.672.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313964, there is no canonical definition to state claims against.
-/

/-! ## A313964.P13206077550829781048

`A285099(A120567(n+1))+A008706(n)`
-/

namespace A313964.P13206077550829781048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285099 (A120567 (n + 1)).toNat + A008706 n

end

end A313964.P13206077550829781048

/-! ## A313964.P3480509924886295971

`A042970(n+1)+A187715(n+1)-A141702(A037278(n+1))`
-/

namespace A313964.P3480509924886295971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (n + 1) + (A187715 (n + 1) - A141702 (A037278 (n + 1)).toNat)

end

end A313964.P3480509924886295971

/-!
# A313965: Coordination sequence Gal.5.284.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313965, there is no canonical definition to state claims against.
-/

/-! ## A313965.P9188410683590846889

`A294893(A072856(n))+A250120(n)`
-/

namespace A313965.P9188410683590846889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294893 (A072856 n).toNat + A250120 n

end

end A313965.P9188410683590846889

/-! ## A313965.P3006182462060497142

`A313976(n)-A169671(A002212(n))`
-/

namespace A313965.P3006182462060497142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313976 n - A169671 (A002212 n).toNat

end

end A313965.P3006182462060497142

/-! ## A313965.P15225140906163666388

`A250120(n)+A001222(A261518(n+1))`
-/

namespace A313965.P15225140906163666388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A261518 (n + 1)).toNat

end

end A313965.P15225140906163666388

/-! ## A313965.P1455531658094876826

`A313976(n)-A294937(A000045(2*(n+2)))`
-/

namespace A313965.P1455531658094876826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313976 n - A294937 (A000045 (2 * (n + 2))).toNat

end

end A313965.P1455531658094876826

/-! ## A313965.P15501203213963260947

`A310020(2*n)-A249856(A084600(3*n+2))`
-/

namespace A313965.P15501203213963260947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310020 (2 * n) - A249856 (A084600 (3 * n + 2)).toNat

end

end A313965.P15501203213963260947

/-!
# A313966: Coordination sequence Gal.5.310.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313966, the canonical program `A313966.P14662508330527286566` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313966 has offset 0).

The definition of A313966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313966.P15498620505621526803

`A313957(n)+A314129(n)-A314123(n)`
-/

namespace A313966.P15498620505621526803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + (A314129 n - A314123 n)

end

end A313966.P15498620505621526803

namespace A313966

/-- `A313957(n)+A314129(n)-A314123(n)` -/
def P15498620505621526803.Spec : Prop :=
  ∀ n, P15498620505621526803.a n = A313966 n

theorem P15498620505621526803.correct : P15498620505621526803.Spec := by
  intro n
  simp only [A313966, Nat.add_sub_cancel, A313966.P15498620505621526803.a, A313966.P14662508330527286566.a, A028310, A028310.P18130301328277559831.a, A313957, A313957.P3646171935266098749.a, A314123, A314123.P17491408075998672522.a, A314129, A314129.P3295900941499139215.a, A004523, A004523.P10612776629676351712.a, A008586, A008586.P15642444062404201100.a, A145569, A145569.P12552234012801179723.a, A242062, A242062.P1082147046428175291.a, A313115, A313115.P1984220492497243584.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A004525, A004525.P4158271949796742323.a, A011861, A011861.P4500963193198654930.a, A311501, A311501.P3617403906977629789.a, A314829, A314829.P8333159363270422796.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313966

/-! ## A313966.P15400509308143447995

`A313957(n)+A314130(n)-A314125(n)`
-/

namespace A313966.P15400509308143447995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313957 n + (A314130 n - A314125 n)

end

end A313966.P15400509308143447995

namespace A313966

/-- `A313957(n)+A314130(n)-A314125(n)` -/
def P15400509308143447995.Spec : Prop :=
  ∀ n, P15400509308143447995.a n = A313966 n

theorem P15400509308143447995.correct : P15400509308143447995.Spec := by
  intro n
  simp only [A313966, Nat.add_sub_cancel, A313966.P15400509308143447995.a, A313966.P14662508330527286566.a, A028310, A028310.P18130301328277559831.a, A313957, A313957.P3646171935266098749.a, A314123, A314123.P17491408075998672522.a, A314125, A314125.P17964618951199002530.a, A314130, A314130.P11569106488579326638.a, A004523, A004523.P10612776629676351712.a, A004525, A004525.P4158271949796742323.a, A008586, A008586.P15642444062404201100.a, A145569, A145569.P12552234012801179723.a, A242062, A242062.P1082147046428175291.a, A310372, A310372.P13571883006595967654.a, A313115, A313115.P1984220492497243584.a, A315020, A315020.P9897744658843174856.f1, A315020.P9897744658843174856.a, A004275, A004275.P5432371984586133349.a, A004776, A004776.P12492855655341303098.a, A011861, A011861.P4500963193198654930.a, A311501, A311501.P3617403906977629789.a, A314829, A314829.P8333159363270422796.a, A301291, A301291.P14013868135471218190.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313966

/-! ## A313966.P14662508330527286566

`A028310(A313957(2*n)-A314123(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313966

/-- `A028310(A313957(2*n)-A314123(n))` -/
def P14662508330527286566.Spec : Prop :=
  ∀ n, P14662508330527286566.a n = A313966 n

theorem P14662508330527286566.correct : P14662508330527286566.Spec := by
  intro n
  simp only [A313966]

end A313966

/-! ## A313966.P3822979368731303509

`or(A284620(A100155(n+1)), A313875(n))`
-/

namespace A313966.P3822979368731303509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284620 (A100155 (n + 1)).toNat) (A313875 n)

end

end A313966.P3822979368731303509

namespace A313966

/-- `or(A284620(A100155(n+1)), A313875(n))` -/
def P3822979368731303509.Spec : Prop :=
  ∀ n, P3822979368731303509.a n = A313966 n

end A313966

/-! ## A313966.P7471254438397072718

`A349258(A022916(n))+A250120(n)`
-/

namespace A313966.P7471254438397072718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349258 (A022916 n).toNat + A250120 n

end

end A313966.P7471254438397072718

namespace A313966

/-- `A349258(A022916(n))+A250120(n)` -/
def P7471254438397072718.Spec : Prop :=
  ∀ n, P7471254438397072718.a n = A313966 n

end A313966

/-!
# A313967: Coordination sequence Gal.5.315.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313967, the canonical program `A313967.P4638487005320637361` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313967 has offset 0).

The definition of A313967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313967.P18382952745445744243

`A250120(n)+A057354(∑[(n%3)!])`
-/

namespace A313967.P18382952745445744243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A057354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A313967.P18382952745445744243

namespace A313967

/-- `A250120(n)+A057354(∑[(n%3)!])` -/
def P18382952745445744243.Spec : Prop :=
  ∀ n, P18382952745445744243.a n = A313967 n

end A313967

/-! ## A313967.P12655140388460520236

`A250120(n)+A057354(A004773(n+1))`
-/

namespace A313967.P12655140388460520236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A057354 (A004773 (n + 1)).toNat

end

end A313967.P12655140388460520236

namespace A313967

/-- `A250120(n)+A057354(A004773(n+1))` -/
def P12655140388460520236.Spec : Prop :=
  ∀ n, P12655140388460520236.a n = A313967 n

end A313967

/-! ## A313967.P7092449470774939095

`A250120(n)+A002264(A047412(n+2))`
-/

namespace A313967.P7092449470774939095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A002264 (A047412 (n + 2)).toNat

end

end A313967.P7092449470774939095

namespace A313967

/-- `A250120(n)+A002264(A047412(n+2))` -/
def P7092449470774939095.Spec : Prop :=
  ∀ n, P7092449470774939095.a n = A313967 n

end A313967

/-! ## A313967.P16723206777806032736

`A250120(n)+A002266(A047464(n+2))`
-/

namespace A313967.P16723206777806032736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A002266 (A047464 (n + 2)).toNat

end

end A313967.P16723206777806032736

namespace A313967

/-- `A250120(n)+A002266(A047464(n+2))` -/
def P16723206777806032736.Spec : Prop :=
  ∀ n, P16723206777806032736.a n = A313967 n

end A313967

/-! ## A313967.P497805825375460801

`A151988(2*n)+A004396(A314685(n))`
-/

namespace A313967.P497805825375460801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A004396 (A314685 n).toNat

end

end A313967.P497805825375460801

namespace A313967

/-- `A151988(2*n)+A004396(A314685(n))` -/
def P497805825375460801.Spec : Prop :=
  ∀ n, P497805825375460801.a n = A313967 n

end A313967

/-! ## A313967.P4638487005320637361

`A072154(2*n)+A057354(A004773(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313967

/-- `A072154(2*n)+A057354(A004773(n+1))` -/
def P4638487005320637361.Spec : Prop :=
  ∀ n, P4638487005320637361.a n = A313967 n

theorem P4638487005320637361.correct : P4638487005320637361.Spec := by
  intro n
  simp only [A313967]

end A313967

/-! ## A313967.P18257013233269337921

`A072154(2*n)+A002264(A047412(n+2))`
-/

namespace A313967.P18257013233269337921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (2 * n) + A002264 (A047412 (n + 2)).toNat

end

end A313967.P18257013233269337921

namespace A313967

/-- `A072154(2*n)+A002264(A047412(n+2))` -/
def P18257013233269337921.Spec : Prop :=
  ∀ n, P18257013233269337921.a n = A313967 n

end A313967

/-! ## A313967.P4514834396996038331

`A004396(A250120(n)+A004396(A250120(n)))`
-/

namespace A313967.P4514834396996038331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A250120 n + A004396 (A250120 n).toNat).toNat

end

end A313967.P4514834396996038331

namespace A313967

/-- `A004396(A250120(n)+A004396(A250120(n)))` -/
def P4514834396996038331.Spec : Prop :=
  ∀ n, P4514834396996038331.a n = A313967 n

end A313967

/-! ## A313967.P1015136777340481873

`A002264(A016813(A313873(n))-A310409(n))`
-/

namespace A313967.P1015136777340481873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A016813 (A313873 n).toNat - A310409 n).toNat

end

end A313967.P1015136777340481873

namespace A313967

/-- `A002264(A016813(A313873(n))-A310409(n))` -/
def P1015136777340481873.Spec : Prop :=
  ∀ n, P1015136777340481873.a n = A313967 n

end A313967

/-! ## A313967.P9776443682645867658

`A301718(n)-Δ[A004396(A011858(n))]`
-/

namespace A313967.P9776443682645867658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A011858 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - (f1 (n + 1) - f1 n)

end

end A313967.P9776443682645867658

namespace A313967

/-- `A301718(n)-Δ[A004396(A011858(n))]` -/
def P9776443682645867658.Spec : Prop :=
  ∀ n, P9776443682645867658.a n = A313967 n

end A313967

/-!
# A313968: Coordination sequence Gal.5.283.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313968, there is no canonical definition to state claims against.
-/

/-! ## A313968.P4749851591846416105

`A313848(n)+A105700(A000111(n))`
-/

namespace A313968.P4749851591846416105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313848 n + A105700 (A000111 n).toNat

end

end A313968.P4749851591846416105

/-! ## A313968.P9616968747063956991

`A283982(A041103(n))+A250120(n)`
-/

namespace A313968.P9616968747063956991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 (A041103 n).toNat + A250120 n

end

end A313968.P9616968747063956991

/-! ## A313968.P1615336323816938089

`A250120(n)+A001222(A369614(n))`
-/

namespace A313968.P1615336323816938089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A369614 n).toNat

end

end A313968.P1615336323816938089

/-! ## A313968.P4685406254439373024

`A250120(n)+A095407(A279561(n))`
-/

namespace A313968.P4685406254439373024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A095407 (A279561 n).toNat

end

end A313968.P4685406254439373024

/-! ## A313968.P10990648090032874691

`A336387(A001700(n))+A313255(n)`
-/

namespace A313968.P10990648090032874691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336387 (A001700 n).toNat + A313255 n

end

end A313968.P10990648090032874691

/-!
# A313969: Coordination sequence Gal.6.489.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313969, there is no canonical definition to state claims against.
-/

/-! ## A313969.P7154319729129534313

`A305501(A003480(n))+A301680(n)`
-/

namespace A313969.P7154319729129534313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A003480 n).toNat + A301680 n

end

end A313969.P7154319729129534313

/-! ## A313969.P13347606353732853256

`A315352(n)-A316864(A080923(n))`
-/

namespace A313969.P13347606353732853256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315352 n - A316864 (A080923 n).toNat

end

end A313969.P13347606353732853256

/-! ## A313969.P11429771301957643990

`A313264(n)+A001222(Δ[A001076(n)])`
-/

namespace A313969.P11429771301957643990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313264 n + A001222 (f1 (n + 1) - f1 n).toNat

end

end A313969.P11429771301957643990

/-! ## A313969.P17078151521311320051

`A250120(n)+A023416(A033472(n+1))`
-/

namespace A313969.P17078151521311320051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A023416 (A033472 (n + 1)).toNat

end

end A313969.P17078151521311320051

/-! ## A313969.P13501774298153725399

`A268833(A040014(n+4))+A075326(n)`
-/

namespace A313969.P13501774298153725399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268833 (A040014 (n + 4)).toNat + A075326 n

end

end A313969.P13501774298153725399

/-!
# A313970: Coordination sequence Gal.5.318.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313970, there is no canonical definition to state claims against.
-/

/-! ## A313970.P14562517884419178563

`A316441(A041954(n))+A314133(n)`
-/

namespace A313970.P14562517884419178563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A041954 n).toNat + A314133 n

end

end A313970.P14562517884419178563

/-! ## A313970.P342914993478616681

`A314899(n)+A196058(A007721(n+1))`
-/

namespace A313970.P342914993478616681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314899 n + A196058 (A007721 (n + 1)).toNat

end

end A313970.P342914993478616681

/-! ## A313970.P7001980583125964536

`A141515(n+1)-A001221(A005493(n))`
-/

namespace A313970.P7001980583125964536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1) - A001221 (A005493 n).toNat

end

end A313970.P7001980583125964536

/-! ## A313970.P17389090604505773459

`A067774(n+1)-A257993(record[A126869(n)])`
-/

namespace A313970.P17389090604505773459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1) - A257993 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A313970.P17389090604505773459

/-! ## A313970.P10572760880074404996

`A060308(3*n+1)-A286574(A244360(3*(n+1)))`
-/

namespace A313970.P10572760880074404996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (3 * n + 1) - A286574 (A244360 (3 * (n + 1))).toNat

end

end A313970.P10572760880074404996

/-!
# A313971: Coordination sequence Gal.6.663.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313971, there is no canonical definition to state claims against.
-/

/-! ## A313971.P15317203008178983217

`A026508(3*n+2)-A026490(A026523(n+3))`
-/

namespace A313971.P15317203008178983217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026508 (3 * n + 2) - A026490 (A026523 (n + 3)).toNat

end

end A313971.P15317203008178983217

/-! ## A313971.P1588184064516198742

`A379721(3*n+1)-A083891(A001608(3*(n+1)))`
-/

namespace A313971.P1588184064516198742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379721 (3 * n + 1) - A083891 (A001608 (3 * (n + 1))).toNat

end

end A313971.P1588184064516198742

/-! ## A313971.P798510500303271088

`A008458(n)-A008342(A008324(n))`
-/

namespace A313971.P798510500303271088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A008342 (A008324 n).toNat

end

end A313971.P798510500303271088

/-! ## A313971.P12901095752109195874

`A313982(n)-A020987(A149148(n))`
-/

namespace A313971.P12901095752109195874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313982 n - A020987 (A149148 n).toNat

end

end A313971.P12901095752109195874

/-!
# A313972: Coordination sequence Gal.6.664.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313972, there is no canonical definition to state claims against.
-/

/-! ## A313972.P7244428418538237368

`A250120(n)+A046645(A088218(n))`
-/

namespace A313972.P7244428418538237368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A046645 (A088218 n).toNat

end

end A313972.P7244428418538237368

/-! ## A313972.P7324134386045020967

`A313971(n)+A010894(A313924(n))`
-/

namespace A313972.P7324134386045020967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313971 n + A010894 ((A313924 n).toNat + 21)

end

end A313972.P7324134386045020967

/-! ## A313972.P10471588258710672713

`A313971(n)+A010894(A313926(n))`
-/

namespace A313972.P10471588258710672713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313971 n + A010894 ((A313926 n).toNat + 21)

end

end A313972.P10471588258710672713

/-! ## A313972.P15386578648358813555

`A313971(n)+A010894(A313936(n))`
-/

namespace A313972.P15386578648358813555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313971 n + A010894 ((A313936 n).toNat + 21)

end

end A313972.P15386578648358813555

/-! ## A313972.P2121622494892337143

`A336921(A084869(n))+A250120(n)`
-/

namespace A313972.P2121622494892337143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336921 (A084869 n).toNat + A250120 n

end

end A313972.P2121622494892337143

/-!
# A313973: Coordination sequence Gal.6.671.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313973, there is no canonical definition to state claims against.
-/

/-! ## A313973.P17596129537129410812

`A047263(n+1)-n+A313866(n)+A067898(A058094(n))`
-/

namespace A313973.P17596129537129410812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) - (n : ℤ) + (A313866 n + A067898 (A058094 n).toNat)

end

end A313973.P17596129537129410812

/-! ## A313973.P8454986807304379536

`∪[A010417(2*n+1), A010429(2*n+3)]+1`
-/

namespace A313973.P8454986807304379536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010417 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010429 (2 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A313973.P8454986807304379536

/-! ## A313973.P11019247136947123410

`xor(A257992(A350009(n+1)), A313975(n))`
-/

namespace A313973.P11019247136947123410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A257992 (A350009 (n + 1)).toNat) (A313975 n)

end

end A313973.P11019247136947123410

/-!
# A313974: Coordination sequence Gal.6.370.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313974, there is no canonical definition to state claims against.
-/

/-! ## A313974.P12236553346939934763

`A008458(n)-A051903(A187995(n+1))`
-/

namespace A313974.P12236553346939934763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A051903 (A187995 (n + 1)).toNat

end

end A313974.P12236553346939934763

/-! ## A313974.P6585205312960883764

`A328873(n+1)+5*n`
-/

namespace A313974.P6585205312960883764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328873 (n + 1) + (5 * n : ℤ)

end

end A313974.P6585205312960883764

/-! ## A313974.P2199115727827252591

`A026351(floor(log2(A242810(n+1))))`
-/

namespace A313974.P2199115727827252591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (Nat.log 2 (A242810 (n + 1)).toNat)

end

end A313974.P2199115727827252591

/-! ## A313974.P17461832776589518159

`A302796(A153670(n+1))+3*n-2*floor(n/2)`
-/

namespace A313974.P17461832776589518159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302796 (A153670 (n + 1)).toNat + ((3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋)

end

end A313974.P17461832776589518159

/-!
# A313975: Coordination sequence Gal.4.145.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313975, the canonical program `A313975.P16343226415888646231` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313975 has offset 0).

The definition of A313975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2247 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313975.P16343226415888646231

`A312475(n)+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A313975

/-- `A312475(n)+n` -/
def P16343226415888646231.Spec : Prop :=
  ∀ n, P16343226415888646231.a n = A313975 n

theorem P16343226415888646231.correct : P16343226415888646231.Spec := by
  intro n
  simp only [A313975]

end A313975

/-! ## A313975.P538355667984257924

`A310504(2*n)-5*n`
-/

namespace A313975.P538355667984257924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310504 (2 * n) - (5 * n : ℤ)

end

end A313975.P538355667984257924

namespace A313975

/-- `A310504(2*n)-5*n` -/
def P538355667984257924.Spec : Prop :=
  ∀ n, P538355667984257924.a n = A313975 n

end A313975

/-! ## A313975.P7013517859980443841

`A250120(n)+comp[or(2, n)+n]-n`
-/

namespace A313975.P7013517859980443841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A313975.P7013517859980443841

namespace A313975

/-- `A250120(n)+comp[or(2, n)+n]-n` -/
def P7013517859980443841.Spec : Prop :=
  ∀ n, P7013517859980443841.a n = A313975 n

end A313975

/-! ## A313975.P2508330991281295155

`A074232(A311807(n))`
-/

namespace A313975.P2508330991281295155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A311807 n).toNat

end

end A313975.P2508330991281295155

namespace A313975

/-- `A074232(A311807(n))` -/
def P2508330991281295155.Spec : Prop :=
  ∀ n, P2508330991281295155.a n = A313975 n

end A313975

/-! ## A313975.P7974435258158750174

`A315337(n)-A101455(n)`
-/

namespace A313975.P7974435258158750174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315337 n - A101455 n

end

end A313975.P7974435258158750174

namespace A313975

/-- `A315337(n)-A101455(n)` -/
def P7974435258158750174.Spec : Prop :=
  ∀ n, P7974435258158750174.a n = A313975 n

end A313975

/-! ## A313975.P400135931223002344

`A315477(n)-A244895(n)`
-/

namespace A313975.P400135931223002344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n - A244895 n

end

end A313975.P400135931223002344

namespace A313975

/-- `A315477(n)-A244895(n)` -/
def P400135931223002344.Spec : Prop :=
  ∀ n, P400135931223002344.a n = A313975 n

end A313975

/-! ## A313975.P16377158049042705954

`A047326(n+1)+A008574(n)`
-/

namespace A313975.P16377158049042705954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (n + 1) + A008574 n

end

end A313975.P16377158049042705954

namespace A313975

/-- `A047326(n+1)+A008574(n)` -/
def P16377158049042705954.Spec : Prop :=
  ∀ n, P16377158049042705954.a n = A313975 n

end A313975

/-! ## A313975.P715316472584545363

`A311807(n)+A047263(n+1)`
-/

namespace A313975.P715316472584545363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311807 n + A047263 (n + 1)

end

end A313975.P715316472584545363

namespace A313975

/-- `A311807(n)+A047263(n+1)` -/
def P715316472584545363.Spec : Prop :=
  ∀ n, P715316472584545363.a n = A313975 n

end A313975

/-! ## A313975.P18072021469471892101

`A312245(n)+A060464(n+1)`
-/

namespace A313975.P18072021469471892101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312245 n + A060464 (n + 1)

end

end A313975.P18072021469471892101

namespace A313975

/-- `A312245(n)+A060464(n+1)` -/
def P18072021469471892101.Spec : Prop :=
  ∀ n, P18072021469471892101.a n = A313975 n

end A313975

/-! ## A313975.P14898275388193013741

`A151988(2*n)+A008486(n)`
-/

namespace A313975.P14898275388193013741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (2 * n) + A008486 n

end

end A313975.P14898275388193013741

namespace A313975

/-- `A151988(2*n)+A008486(n)` -/
def P14898275388193013741.Spec : Prop :=
  ∀ n, P14898275388193013741.a n = A313975 n

end A313975

/-! ## A313975.P10617420281601592244

`A314347(n)+n-A102283(n)`
-/

namespace A313975.P10617420281601592244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314347 n + ((n : ℤ) - A102283 n)

end

end A313975.P10617420281601592244

namespace A313975

/-- `A314347(n)+n-A102283(n)` -/
def P10617420281601592244.Spec : Prop :=
  ∀ n, P10617420281601592244.a n = A313975 n

end A313975

/-! ## A313975.P12611906956037891340

`A005843(n)-(n-A312475(n))`
-/

namespace A313975.P12611906956037891340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312475 n)

end

end A313975.P12611906956037891340

namespace A313975

/-- `A005843(n)-(n-A312475(n))` -/
def P12611906956037891340.Spec : Prop :=
  ∀ n, P12611906956037891340.a n = A313975 n

theorem P12611906956037891340.correct : P12611906956037891340.Spec := by
  intro n
  simp only [A313975, Nat.add_sub_cancel, A313975.P12611906956037891340.a, A313975.P16343226415888646231.a, A005843, A005843.P3167286115683555970.a, A312475, A312475.P17325744144907721022.a, A004275, A004275.P5432371984586133349.a, A017449, A017449.P2551254521878161710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313975

/-! ## A313975.P13445962300723442427

`A004277(comp[A016945(n)]+n)+n`
-/

namespace A313975.P13445962300723442427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016945 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n) + (n : ℤ)

end

end A313975.P13445962300723442427

namespace A313975

/-- `A004277(comp[A016945(n)]+n)+n` -/
def P13445962300723442427.Spec : Prop :=
  ∀ n, P13445962300723442427.a n = A313975 n

end A313975

/-! ## A313975.P17030584974734100034

`A008486(n)+2*A047263(n+1)`
-/

namespace A313975.P17030584974734100034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + 2 * A047263 (n + 1)

end

end A313975.P17030584974734100034

namespace A313975

/-- `A008486(n)+2*A047263(n+1)` -/
def P17030584974734100034.Spec : Prop :=
  ∀ n, P17030584974734100034.a n = A313975 n

end A313975

/-! ## A313975.P14189302683686233683

`A004275(A047516(2*n+1))-n`
-/

namespace A313975.P14189302683686233683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047516 (2 * n + 1)).toNat - (n : ℤ)

end

end A313975.P14189302683686233683

namespace A313975

/-- `A004275(A047516(2*n+1))-n` -/
def P14189302683686233683.Spec : Prop :=
  ∀ n, P14189302683686233683.a n = A313975 n

end A313975

/-! ## A313975.P9479997383845761933

`A004277(A047263(n+1)+n)+n`
-/

namespace A313975.P9479997383845761933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A047263 (n + 1) + (n : ℤ)).toNat + (n : ℤ)

end

end A313975.P9479997383845761933

namespace A313975

/-- `A004277(A047263(n+1)+n)+n` -/
def P9479997383845761933.Spec : Prop :=
  ∀ n, P9479997383845761933.a n = A313975 n

end A313975

/-! ## A313975.P7210643499274734788

`A047326(n+1)+A008486(n)+n`
-/

namespace A313975.P7210643499274734788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047326 (n + 1) + (A008486 n + (n : ℤ))

end

end A313975.P7210643499274734788

namespace A313975

/-- `A047326(n+1)+A008486(n)+n` -/
def P7210643499274734788.Spec : Prop :=
  ∀ n, P7210643499274734788.a n = A313975 n

end A313975

/-! ## A313975.P17239453815419379768

`A047486(n+1)+A250120(n)-n`
-/

namespace A313975.P17239453815419379768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + (A250120 n - (n : ℤ))

end

end A313975.P17239453815419379768

namespace A313975

/-- `A047486(n+1)+A250120(n)-n` -/
def P17239453815419379768.Spec : Prop :=
  ∀ n, P17239453815419379768.a n = A313975 n

end A313975

/-! ## A313975.P16745734082282238131

`A250120(n)+(3*n)%A072154(n)`
-/

namespace A313975.P16745734082282238131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + Int.tmod (3 * n : ℤ) (A072154 n)

end

end A313975.P16745734082282238131

namespace A313975

/-- `A250120(n)+(3*n)%A072154(n)` -/
def P16745734082282238131.Spec : Prop :=
  ∀ n, P16745734082282238131.a n = A313975 n

end A313975

/-! ## A313975.P7365850215053423733

`A004277(comp[A168329(n+1)]+n)+n`
-/

namespace A313975.P7365850215053423733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n) + (n : ℤ)

end

end A313975.P7365850215053423733

namespace A313975

/-- `A004277(comp[A168329(n+1)]+n)+n` -/
def P7365850215053423733.Spec : Prop :=
  ∀ n, P7365850215053423733.a n = A313975 n

end A313975

/-!
# A313976: Coordination sequence Gal.6.663.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313976, there is no canonical definition to state claims against.
-/

/-! ## A313976.P3866028853146802681

`A313975(n)+A018843(A074323(n))`
-/

namespace A313976.P3866028853146802681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n + A018843 (A074323 n).toNat

end

end A313976.P3866028853146802681

/-! ## A313976.P3102173921043824596

`or(A010894(A086298(n+1)), A313975(n))`
-/

namespace A313976.P3102173921043824596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010894 ((A086298 (n + 1)).toNat + 21)) (A313975 n)

end

end A313976.P3102173921043824596

/-! ## A313976.P2899986910133249700

`xor(A179392(A056525(n+1)), A314231(n))`
-/

namespace A313976.P2899986910133249700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A179392 (A056525 (n + 1)).toNat) (A314231 n)

end

end A313976.P2899986910133249700

/-!
# A313977: Coordination sequence Gal.5.328.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313977, there is no canonical definition to state claims against.
-/

/-! ## A313977.P18126089784726389594

`A178181(n)+A000586(A004396(n))`
-/

namespace A313977.P18126089784726389594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178181 n + A000586 (A004396 n).toNat

end

end A313977.P18126089784726389594

/-! ## A313977.P2974413327084130062

`A312556(n)+A001222(A189940(n+1))`
-/

namespace A313977.P2974413327084130062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312556 n + A001222 (A189940 (n + 1)).toNat

end

end A313977.P2974413327084130062

/-! ## A313977.P14014387078353705252

`A001222(abs(1-n)+2)+A312076(A087051(n))+n-1`
-/

namespace A313977.P14014387078353705252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - (n : ℤ)| + 2).toNat + (A312076 (A087051 n).toNat + ((n : ℤ) - 1))

end

end A313977.P14014387078353705252

/-! ## A313977.P6863529869346946379

`A250120(n)+A109129(A108480(n))`
-/

namespace A313977.P6863529869346946379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A109129 (A108480 n).toNat

end

end A313977.P6863529869346946379

/-! ## A313977.P5919400064873876753

`A357633(A001405(n))+A250120(n)`
-/

namespace A313977.P5919400064873876753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357633 (A001405 n).toNat + A250120 n

end

end A313977.P5919400064873876753

/-!
# A313978: Coordination sequence Gal.6.653.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313978, the canonical program `A313978.P4030524710208457101` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313978 has offset 0).

The definition of A313978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313978.P4030524710208457101

`A313836(n)+A315490(n)-A315413(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313978

/-- `A313836(n)+A315490(n)-A315413(n)` -/
def P4030524710208457101.Spec : Prop :=
  ∀ n, P4030524710208457101.a n = A313978 n

theorem P4030524710208457101.correct : P4030524710208457101.Spec := by
  intro n
  simp only [A313978]

end A313978

/-! ## A313978.P4948822553613945017

`A313251(n)+A130259(A010049(n))`
-/

namespace A313978.P4948822553613945017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313251 n + A130259 (A010049 n).toNat

end

end A313978.P4948822553613945017

namespace A313978

/-- `A313251(n)+A130259(A010049(n))` -/
def P4948822553613945017.Spec : Prop :=
  ∀ n, P4948822553613945017.a n = A313978 n

end A313978

/-! ## A313978.P1488517228685450503

`A297030(A134964(n))+A250120(n)`
-/

namespace A313978.P1488517228685450503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297030 (A134964 n).toNat + A250120 n

end

end A313978.P1488517228685450503

namespace A313978

/-- `A297030(A134964(n))+A250120(n)` -/
def P1488517228685450503.Spec : Prop :=
  ∀ n, P1488517228685450503.a n = A313978 n

end A313978

/-! ## A313978.P5704077854414212681

`∑[A076558(A076571(3*n))+3]-2`
-/

namespace A313978.P5704077854414212681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076558 (A076571 (3 * n)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A313978.P5704077854414212681

namespace A313978

/-- `∑[A076558(A076571(3*n))+3]-2` -/
def P5704077854414212681.Spec : Prop :=
  ∀ n, P5704077854414212681.a n = A313978 n

end A313978

/-! ## A313978.P5793334772851861375

`A301718(n)-A051731(A371993(n+1))`
-/

namespace A313978.P5793334772851861375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301718 n - A051731 (A371993 (n + 1)).toNat

end

end A313978.P5793334772851861375

namespace A313978

/-- `A301718(n)-A051731(A371993(n+1))` -/
def P5793334772851861375.Spec : Prop :=
  ∀ n, P5793334772851861375.a n = A313978 n

end A313978

/-!
# A313979: Coordination sequence Gal.6.654.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313979, the canonical program `A313979.P9481199202513523421` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313979 has offset 0).

The definition of A313979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313979.P9481199202513523421

`A313894(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A313979

/-- `A313894(n)+Δ[A011862(n)]` -/
def P9481199202513523421.Spec : Prop :=
  ∀ n, P9481199202513523421.a n = A313979 n

theorem P9481199202513523421.correct : P9481199202513523421.Spec := by
  intro n
  simp only [A313979]

end A313979

/-! ## A313979.P90881435579319130

`A315495(n)-A102283(A004396(n))`
-/

namespace A313979.P90881435579319130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A102283 (A004396 n).toNat

end

end A313979.P90881435579319130

namespace A313979

/-- `A315495(n)-A102283(A004396(n))` -/
def P90881435579319130.Spec : Prop :=
  ∀ n, P90881435579319130.a n = A313979 n

end A313979

/-! ## A313979.P9306705415056810414

`A315523(n)-A134667(A004396(n))`
-/

namespace A313979.P9306705415056810414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - A134667 (A004396 n).toNat

end

end A313979.P9306705415056810414

namespace A313979

/-- `A315523(n)-A134667(A004396(n))` -/
def P9306705415056810414.Spec : Prop :=
  ∀ n, P9306705415056810414.a n = A313979 n

end A313979

/-! ## A313979.P2018933581459955023

`A315495(n)+A102283(2*A004396(n))`
-/

namespace A313979.P2018933581459955023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n + A102283 (2 * A004396 n).toNat

end

end A313979.P2018933581459955023

namespace A313979

/-- `A315495(n)+A102283(2*A004396(n))` -/
def P2018933581459955023.Spec : Prop :=
  ∀ n, P2018933581459955023.a n = A313979 n

end A313979

/-! ## A313979.P17919503140693220455

`A004396(n)+A313894(n)-A004396(A004396(n))`
-/

namespace A313979.P17919503140693220455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A313894 n - A004396 (A004396 n).toNat)

end

end A313979.P17919503140693220455

namespace A313979

/-- `A004396(n)+A313894(n)-A004396(A004396(n))` -/
def P17919503140693220455.Spec : Prop :=
  ∀ n, P17919503140693220455.a n = A313979 n

end A313979

/-! ## A313979.P15256315020835418464

`2*A313894(n)-A313746(n)`
-/

namespace A313979.P15256315020835418464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313894 n - A313746 n

end

end A313979.P15256315020835418464

namespace A313979

/-- `2*A313894(n)-A313746(n)` -/
def P15256315020835418464.Spec : Prop :=
  ∀ n, P15256315020835418464.a n = A313979 n

end A313979

/-! ## A313979.P592438548488719779

`A313746(n)+Δ[2*A011862(n)]`
-/

namespace A313979.P592438548488719779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + (f1 (n + 1) - f1 n)

end

end A313979.P592438548488719779

namespace A313979

/-- `A313746(n)+Δ[2*A011862(n)]` -/
def P592438548488719779.Spec : Prop :=
  ∀ n, P592438548488719779.a n = A313979 n

end A313979

/-! ## A313979.P18231660854064736647

`A313746(n)+A005843(Δ[A011862(n)])`
-/

namespace A313979.P18231660854064736647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A005843 (f1 (n + 1) - f1 n).toNat

end

end A313979.P18231660854064736647

namespace A313979

/-- `A313746(n)+A005843(Δ[A011862(n)])` -/
def P18231660854064736647.Spec : Prop :=
  ∀ n, P18231660854064736647.a n = A313979 n

end A313979

/-! ## A313979.P3685887383446688142

`A313746(n)+A005843(A313894(n)-A313746(n))`
-/

namespace A313979.P3685887383446688142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A005843 (A313894 n - A313746 n).toNat

end

end A313979.P3685887383446688142

namespace A313979

/-- `A313746(n)+A005843(A313894(n)-A313746(n))` -/
def P3685887383446688142.Spec : Prop :=
  ∀ n, P3685887383446688142.a n = A313979 n

end A313979

/-! ## A313979.P13983958458407638266

`A315495(n)+A131736(A298024(n))`
-/

namespace A313979.P13983958458407638266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n + A131736 (A298024 n).toNat

end

end A313979.P13983958458407638266

namespace A313979

/-- `A315495(n)+A131736(A298024(n))` -/
def P13983958458407638266.Spec : Prop :=
  ∀ n, P13983958458407638266.a n = A313979 n

end A313979

/-! ## A313979.P13078790791467318886

`A005843(A313894(n))-A313746(n)`
-/

namespace A313979.P13078790791467318886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313894 n).toNat - A313746 n

end

end A313979.P13078790791467318886

namespace A313979

/-- `A005843(A313894(n))-A313746(n)` -/
def P13078790791467318886.Spec : Prop :=
  ∀ n, P13078790791467318886.a n = A313979 n

end A313979

/-! ## A313979.P8237434372049368161

`A010761(A312555(n)+A005408(n))`
-/

namespace A313979.P8237434372049368161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010761 (A312555 n + A005408 n).toNat

end

end A313979.P8237434372049368161

namespace A313979

/-- `A010761(A312555(n)+A005408(n))` -/
def P8237434372049368161.Spec : Prop :=
  ∀ n, P8237434372049368161.a n = A313979 n

end A313979

/-! ## A313979.P6878879667928679968

`A313894(n)+A033183(A004771(n))`
-/

namespace A313979.P6878879667928679968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A033183 (A004771 n).toNat

end

end A313979.P6878879667928679968

namespace A313979

/-- `A313894(n)+A033183(A004771(n))` -/
def P6878879667928679968.Spec : Prop :=
  ∀ n, P6878879667928679968.a n = A313979 n

end A313979

/-! ## A313979.P6785410262216140083

`A312484(n)+A002264(A297464(n))`
-/

namespace A313979.P6785410262216140083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312484 n + A002264 (A297464 n).toNat

end

end A313979.P6785410262216140083

namespace A313979

/-- `A312484(n)+A002264(A297464(n))` -/
def P6785410262216140083.Spec : Prop :=
  ∀ n, P6785410262216140083.a n = A313979 n

end A313979

/-!
# A313980: Coordination sequence Gal.6.655.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313980, there is no canonical definition to state claims against.
-/

/-! ## A313980.P13658090037273036742

`A310526(n)+A000035(n²²)`
-/

namespace A313980.P13658090037273036742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310526 n + A000035 ((n ^ 2) ^ 2)

end

end A313980.P13658090037273036742

/-! ## A313980.P17648373468743523211

`A310526(n)+A134452(A015518(n))`
-/

namespace A313980.P17648373468743523211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310526 n + A134452 (A015518 n).toNat

end

end A313980.P17648373468743523211

/-! ## A313980.P7265285615519672420

`A310526(n)-A057078(A039300(n))`
-/

namespace A313980.P7265285615519672420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310526 n - A057078 (A039300 n).toNat

end

end A313980.P7265285615519672420

/-! ## A313980.P5642394679839514161

`or(A000035(A000583(n)), A310526(n))`
-/

namespace A313980.P5642394679839514161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A000583 n).toNat) (A310526 n)

end

end A313980.P5642394679839514161

/-! ## A313980.P1517964993147979374

`or(A238877(A124302(n)), A310526(n))`
-/

namespace A313980.P1517964993147979374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238877 (A124302 n).toNat) (A310526 n)

end

end A313980.P1517964993147979374

/-!
# A313981: Coordination sequence Gal.5.319.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313981, there is no canonical definition to state claims against.
-/

/-! ## A313981.P12923746542355515836

`A295919(n)+A187243(A295752(n))`
-/

namespace A313981.P12923746542355515836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295919 n + A187243 (A295752 n).toNat

end

end A313981.P12923746542355515836

/-! ## A313981.P8767419739057199526

`A301697(n)+A106493(A296974(2*(n+1)))`
-/

namespace A313981.P8767419739057199526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A106493 (A296974 (2 * (n + 1))).toNat

end

end A313981.P8767419739057199526

/-! ## A313981.P7971164777408191985

`A313975(n)+2*A257992(A350009(n+1))`
-/

namespace A313981.P7971164777408191985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n + 2 * A257992 (A350009 (n + 1)).toNat

end

end A313981.P7971164777408191985

/-!
# A313982: Coordination sequence Gal.3.57.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313982, the canonical program `A313982.P4456833723093480440` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A313982 has offset 0).

The definition of A313982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2224 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A313982.P4456833723093480440

`A312549(n)+n`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A313982

/-- `A312549(n)+n` -/
def P4456833723093480440.Spec : Prop :=
  ∀ n, P4456833723093480440.a n = A313982 n

theorem P4456833723093480440.correct : P4456833723093480440.Spec := by
  intro n
  simp only [A313982]

end A313982

/-! ## A313982.P15726642520222386494

`A312289(n)+sqrt(A117676(n))`
-/

namespace A313982.P15726642520222386494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A312289 n : ℝ) + Real.sqrt (A117676 n : ℝ)

end

end A313982.P15726642520222386494

namespace A313982

/-- `A312289(n)+sqrt(A117676(n))` -/
def P15726642520222386494.Spec : Prop :=
  ∀ n, P15726642520222386494.a n = (A313982 n : ℝ)

end A313982

/-! ## A313982.P9708944643887318962

`A312289(n)+A060464(n+1)`
-/

namespace A313982.P9708944643887318962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 n + A060464 (n + 1)

end

end A313982.P9708944643887318962

namespace A313982

/-- `A312289(n)+A060464(n+1)` -/
def P9708944643887318962.Spec : Prop :=
  ∀ n, P9708944643887318962.a n = A313982 n

end A313982

/-! ## A313982.P18416197554681683650

`2*A311914(n)-A008486(n)`
-/

namespace A313982.P18416197554681683650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A311914 n - A008486 n

end

end A313982.P18416197554681683650

namespace A313982

/-- `2*A311914(n)-A008486(n)` -/
def P18416197554681683650.Spec : Prop :=
  ∀ n, P18416197554681683650.a n = A313982 n

end A313982

/-! ## A313982.P5333470468761366779

`A238468(n)+A312974(n)+n`
-/

namespace A313982.P5333470468761366779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238468 n + (A312974 n + (n : ℤ))

end

end A313982.P5333470468761366779

namespace A313982

/-- `A238468(n)+A312974(n)+n` -/
def P5333470468761366779.Spec : Prop :=
  ∀ n, P5333470468761366779.a n = A313982 n

theorem P5333470468761366779.correct : P5333470468761366779.Spec := by
  intro n
  simp only [A313982, Nat.add_sub_cancel, A313982.P5333470468761366779.a, A313982.P4456833723093480440.a, A238468, A238468.P4933202717561499868.f1, A238468.P4933202717561499868.a, A312549, A312549.P10297096336863811963.a, A312974, A312974.P7421975159170050839.a, A234044, A234044.P13328901318595551424.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313982

/-! ## A313982.P12464637740745715175

`A314753(n)+n-A175629(n)`
-/

namespace A313982.P12464637740745715175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314753 n + ((n : ℤ) - A175629 n)

end

end A313982.P12464637740745715175

namespace A313982

/-- `A314753(n)+n-A175629(n)` -/
def P12464637740745715175.Spec : Prop :=
  ∀ n, P12464637740745715175.a n = A313982 n

end A313982

/-! ## A313982.P10639974231405745803

`A313051(n)+n-A238470(n)`
-/

namespace A313982.P10639974231405745803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313051 n + ((n : ℤ) - A238470 n)

end

end A313982.P10639974231405745803

namespace A313982

/-- `A313051(n)+n-A238470(n)` -/
def P10639974231405745803.Spec : Prop :=
  ∀ n, P10639974231405745803.a n = A313982 n

theorem P10639974231405745803.correct : P10639974231405745803.Spec := by
  intro n
  simp only [A313982, Nat.add_sub_cancel, A313982.P10639974231405745803.a, A313982.P4456833723093480440.a, A238470, A238470.P1028853406756724010.a, A312549, A312549.P10297096336863811963.a, A313051, A313051.P5280053628599878746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313982

/-! ## A313982.P3722821361660945400

`A005843(n)-(n-A312549(n))`
-/

namespace A313982.P3722821361660945400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A312549 n)

end

end A313982.P3722821361660945400

namespace A313982

/-- `A005843(n)-(n-A312549(n))` -/
def P3722821361660945400.Spec : Prop :=
  ∀ n, P3722821361660945400.a n = A313982 n

theorem P3722821361660945400.correct : P3722821361660945400.Spec := by
  intro n
  simp only [A313982, Nat.add_sub_cancel, A313982.P3722821361660945400.a, A313982.P4456833723093480440.a, A005843, A005843.P3167286115683555970.a, A312549, A312549.P10297096336863811963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313982

/-! ## A313982.P14197405172001744614

`A008706(n)+Δ[2*A011860(n)]`
-/

namespace A313982.P14197405172001744614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + (f1 (n + 1) - f1 n)

end

end A313982.P14197405172001744614

namespace A313982

/-- `A008706(n)+Δ[2*A011860(n)]` -/
def P14197405172001744614.Spec : Prop :=
  ∀ n, P14197405172001744614.a n = A313982 n

end A313982

/-! ## A313982.P4498320902531197857

`A008585(n)-(2*n-A312549(n))`
-/

namespace A313982.P4498320902531197857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((2 * n : ℤ) - A312549 n)

end

end A313982.P4498320902531197857

namespace A313982

/-- `A008585(n)-(2*n-A312549(n))` -/
def P4498320902531197857.Spec : Prop :=
  ∀ n, P4498320902531197857.a n = A313982 n

theorem P4498320902531197857.correct : P4498320902531197857.Spec := by
  intro n
  simp only [A313982, Nat.add_sub_cancel, A313982.P4498320902531197857.a, A313982.P4456833723093480440.a, A008585, A008585.P13732812384316341435.a, A312549, A312549.P10297096336863811963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A313982

/-! ## A313982.P650546959237166081

`A313836(n)+A194225(n+1)`
-/

namespace A313982.P650546959237166081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A194225 (n + 1)

end

end A313982.P650546959237166081

namespace A313982

/-- `A313836(n)+A194225(n+1)` -/
def P650546959237166081.Spec : Prop :=
  ∀ n, P650546959237166081.a n = A313982 n

end A313982

/-! ## A313982.P17743772825268648828

`abs(A008593(n)-A315647(n))`
-/

namespace A313982.P17743772825268648828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A315647 n|

end

end A313982.P17743772825268648828

namespace A313982

/-- `abs(A008593(n)-A315647(n))` -/
def P17743772825268648828.Spec : Prop :=
  ∀ n, P17743772825268648828.a n = A313982 n

end A313982

/-! ## A313982.P5559824270159057735

`A312289(2*n)-4*n+n`
-/

namespace A313982.P5559824270159057735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312289 (2 * n) - (4 * n : ℤ) + (n : ℤ)

end

end A313982.P5559824270159057735

namespace A313982

/-- `A312289(2*n)-4*n+n` -/
def P5559824270159057735.Spec : Prop :=
  ∀ n, P5559824270159057735.a n = A313982 n

end A313982

/-!
# A313983: Coordination sequence Gal.5.280.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313983, there is no canonical definition to state claims against.
-/

/-! ## A313983.P15078142822510375046

`xor(A069283(A034742(n+1)), A313975(n))`
-/

namespace A313983.P15078142822510375046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A069283 (A034742 (n + 1)).toNat) (A313975 n)

end

end A313983.P15078142822510375046

/-! ## A313983.P12165697735491926436

`A313984(n)-A347312(A365667(2*(n+2)))`
-/

namespace A313983.P12165697735491926436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313984 n - A347312 (A365667 (2 * (n + 2) + 25)).toNat

end

end A313983.P12165697735491926436

/-! ## A313983.P11920342955290180126

`A313904(n)+A080343(A047148(n))`
-/

namespace A313983.P11920342955290180126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313904 n + A080343 (A047148 n).toNat

end

end A313983.P11920342955290180126

/-! ## A313983.P5936753166716639779

`A250120(n)+A001222(A367242(n))`
-/

namespace A313983.P5936753166716639779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A367242 n).toNat

end

end A313983.P5936753166716639779

/-!
# A313984: Coordination sequence Gal.5.279.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313984, there is no canonical definition to state claims against.
-/

/-! ## A313984.P7961310311724736735

`xor(A175801(A000032(n)), A313975(n))`
-/

namespace A313984.P7961310311724736735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A175801 (A000032 n).toNat) (A313975 n)

end

end A313984.P7961310311724736735

/-! ## A313984.P9249744666133880436

`A376885(A120899(n))+A313226(n)`
-/

namespace A313984.P9249744666133880436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376885 (A120899 n).toNat + A313226 n

end

end A313984.P9249744666133880436

/-! ## A313984.P9286790887139185722

`A277013(A328442(n))+A250120(n)`
-/

namespace A313984.P9286790887139185722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277013 (A328442 n).toNat + A250120 n

end

end A313984.P9286790887139185722

/-! ## A313984.P15579415574937547897

`A048793(A287648(n+1))+A008587(n)`
-/

namespace A313984.P15579415574937547897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (A287648 (n + 1)).toNat + A008587 n

end

end A313984.P15579415574937547897

/-! ## A313984.P3864540830515939505

`A250120(n)+A001222(A135106(n+1))`
-/

namespace A313984.P3864540830515939505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A001222 (A135106 (n + 1)).toNat

end

end A313984.P3864540830515939505

/-!
# A313985: Coordination sequence Gal.6.655.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313985, there is no canonical definition to state claims against.
-/

/-! ## A313985.P10790337713174604422

`A313904(n)+A001221(A336012(n))`
-/

namespace A313985.P10790337713174604422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313904 n + A001221 (A336012 n).toNat

end

end A313985.P10790337713174604422

/-! ## A313985.P3204824445205561503

`A301712(n)+A131379(A025530(n+1))`
-/

namespace A313985.P3204824445205561503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n + A131379 (A025530 (n + 1)).toNat

end

end A313985.P3204824445205561503

/-! ## A313985.P16330706294868330751

`A301712(n)+A294936(A185423(3*n+1))`
-/

namespace A313985.P16330706294868330751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n + A294936 (A185423 (3 * n + 1)).toNat

end

end A313985.P16330706294868330751

/-! ## A313985.P7170179705568678415

`A301712(n)+A083025(A343167(n+1))`
-/

namespace A313985.P7170179705568678415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301712 n + A083025 (A343167 (n + 1)).toNat

end

end A313985.P7170179705568678415

/-!
# A313987: Coordination sequence Gal.6.593.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313987, there is no canonical definition to state claims against.
-/

/-! ## A313987.P15617767230706797038

`xor(A001221(A077365(n)), A314161(n))`
-/

namespace A313987.P15617767230706797038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A077365 n).toNat) (A314161 n)

end

end A313987.P15617767230706797038

/-!
# A313989: Coordination sequence Gal.5.331.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313989, there is no canonical definition to state claims against.
-/

/-! ## A313989.P5365824679788799286

`A367095(A338673(n))+A250120(n)`
-/

namespace A313989.P5365824679788799286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367095 (A338673 n).toNat + A250120 n

end

end A313989.P5365824679788799286

/-!
# A313991: Coordination sequence Gal.6.671.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313991, there is no canonical definition to state claims against.
-/

/-! ## A313991.P5314367546302476254

`∑[dr(A286060(A037127(n)))]`
-/

namespace A313991.P5314367546302476254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A286060 (A037127 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313991.P5314367546302476254

/-! ## A313991.P18037763203561721944

`A315041(n)+A001222(A001764(n))`
-/

namespace A313991.P18037763203561721944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315041 n + A001222 (A001764 n).toNat

end

end A313991.P18037763203561721944

/-!
# A313993: Coordination sequence Gal.5.219.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313993, there is no canonical definition to state claims against.
-/

/-! ## A313993.P11875402015336501450

`A313524(n)+∑[A131736(n)]`
-/

namespace A313993.P11875402015336501450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313524 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313993.P11875402015336501450

/-! ## A313993.P1572242327100820413

`A313524(n)-A134667(n+3)`
-/

namespace A313993.P1572242327100820413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313524 n - A134667 (n + 3)

end

end A313993.P1572242327100820413

/-! ## A313993.P27887781441406422

`A313524(n)+A131736(A237420(n))`
-/

namespace A313993.P27887781441406422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313524 n + A131736 (A237420 n).toNat

end

end A313993.P27887781441406422

/-! ## A313993.P16741178594484213664

`A313524(n)-A131736(2*A237420(n))`
-/

namespace A313993.P16741178594484213664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313524 n - A131736 (2 * A237420 n).toNat

end

end A313993.P16741178594484213664

/-! ## A313993.P17330256306933797702

`A315187(n)+A102283(A025178(n+1))`
-/

namespace A313993.P17330256306933797702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + A102283 (A025178 (n + 1)).toNat

end

end A313993.P17330256306933797702

/-!
# A313994: Coordination sequence Gal.6.557.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313994, there is no canonical definition to state claims against.
-/

/-! ## A313994.P7354415550562306985

`or(A020639(A000142(n)), A314833(n))`
-/

namespace A313994.P7354415550562306985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A000142 n).toNat) (A314833 n)

end

end A313994.P7354415550562306985

/-! ## A313994.P18141917768397701653

`or(A020639(A295370(n)), A314833(n))`
-/

namespace A313994.P18141917768397701653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020639 (A295370 n).toNat) (A314833 n)

end

end A313994.P18141917768397701653

/-! ## A313994.P6014814743240451673

`or(A314833(n), A321090(A001790(n)))`
-/

namespace A313994.P6014814743240451673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314833 n) (A321090 (A001790 n).toNat)

end

end A313994.P6014814743240451673

/-!
# A313995: Coordination sequence Gal.6.470.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313995, there is no canonical definition to state claims against.
-/

/-! ## A313995.P791910553759341821

`∑[dr(A171463(A026119(n)))]`
-/

namespace A313995.P791910553759341821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A171463 (A026119 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A313995.P791910553759341821

/-!
# A313996: Coordination sequence Gal.5.198.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313996, there is no canonical definition to state claims against.
-/

/-! ## A313996.P16602094463351508702

`A315187(n)-A244895(A006190(n))`
-/

namespace A313996.P16602094463351508702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A244895 (A006190 n).toNat

end

end A313996.P16602094463351508702

/-! ## A313996.P17431080335255565525

`or(A238337(A238314(n)), A313110(n))`
-/

namespace A313996.P17431080335255565525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A238337 (A238314 n).toNat) (A313110 n)

end

end A313996.P17431080335255565525

/-! ## A313996.P3909033665895784591

`A315187(n)-A244895(A069306(n+2))`
-/

namespace A313996.P3909033665895784591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n - A244895 (A069306 (n + 2)).toNat

end

end A313996.P3909033665895784591

/-! ## A313996.P6969346533574942498

`A215247(n+1)-A061704(A135197(n+1))`
-/

namespace A313996.P6969346533574942498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215247 (n + 1) - A061704 (A135197 (n + 1)).toNat

end

end A313996.P6969346533574942498

/-! ## A313996.P15183503337491212554

`A005117(3*n+2)-A121361(A143555(n))`
-/

namespace A313996.P15183503337491212554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (3 * n + 2) - A121361 (A143555 n).toNat

end

end A313996.P15183503337491212554

/-!
# A313997: Coordination sequence Gal.5.220.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313997, there is no canonical definition to state claims against.
-/

/-! ## A313997.P13336779417457056197

`A312862(n)+A001221(A176756(n))`
-/

namespace A313997.P13336779417457056197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312862 n + A001221 (A176756 n).toNat

end

end A313997.P13336779417457056197

/-! ## A313997.P18199709385100090003

`or(A314849(n), A322871(A056001(n)))`
-/

namespace A313997.P18199709385100090003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A314849 n) (A322871 (A056001 n).toNat)

end

end A313997.P18199709385100090003

/-! ## A313997.P6859899527959927438

`or(A292504(A109081(n+1)), A298024(n))`
-/

namespace A313997.P6859899527959927438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A292504 (A109081 (n + 1)).toNat) (A298024 n)

end

end A313997.P6859899527959927438

/-! ## A313997.P1901470404785431497

`xor(A240672(A083675(n+1)), A250120(n))`
-/

namespace A313997.P1901470404785431497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A240672 (A083675 (n + 1)).toNat) (A250120 n)

end

end A313997.P1901470404785431497

/-! ## A313997.P15034712193018128416

`A010423(A005117(2*n+3))-A005117(n+1)`
-/

namespace A313997.P15034712193018128416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010423 (A005117 (2 * n + 3)).toNat - A005117 (n + 1)

end

end A313997.P15034712193018128416

/-!
# A313998: Coordination sequence Gal.6.75.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313998, there is no canonical definition to state claims against.
-/

/-! ## A313998.P14848320165875639853

`or(A000035(A004146(n)), A313599(n))`
-/

namespace A313998.P14848320165875639853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A004146 n).toNat) (A313599 n)

end

end A313998.P14848320165875639853

/-! ## A313998.P607959685208187120

`or(A059841(A005200(n+1)), A313599(n))`
-/

namespace A313998.P607959685208187120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A005200 (n + 1)).toNat) (A313599 n)

end

end A313998.P607959685208187120

/-! ## A313998.P12534343302009595373

`A315693(n)-A001222(A150647(n))`
-/

namespace A313998.P12534343302009595373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A001222 (A150647 n).toNat

end

end A313998.P12534343302009595373

/-!
# A313999: Coordination sequence Gal.5.274.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A313999, there is no canonical definition to state claims against.
-/

/-! ## A313999.P13840155542367357135

`xor(A023416(A000110(n)), A313718(n))`
-/

namespace A313999.P13840155542367357135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A023416 (A000110 n).toNat) (A313718 n)

end

end A313999.P13840155542367357135

/-! ## A313999.P762582280629795037

`or(A001221(A069772(n)!), A313642(n))`
-/

namespace A313999.P762582280629795037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (Nat.factorial (A069772 n).toNat)) (A313642 n)

end

end A313999.P762582280629795037

