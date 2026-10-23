import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B010.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A034500: Multiplicity of highest weight (or singular) vectors associated with character chi_112 of Monster module.

The programs for A034500, there is no canonical definition to state claims against.
-/

/-! ## A034500.P5222246770465922746

`and(A034499(n+1), A265529(A034499(n+1)))`
-/

namespace A034500.P5222246770465922746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034499 (n + 1)) (A265529 (A034499 (n + 1)).toNat)

end

end A034500.P5222246770465922746

/-! ## A034500.P1577402132535164855

`A111660(A034499(n+1))+Δ[A034505(n+1)]`
-/

namespace A034500.P1577402132535164855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A034499 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A034500.P1577402132535164855

/-! ## A034500.P13454021583473127487

`A034499(n+1)-Δ[A131469(A034521(n+1))]`
-/

namespace A034500.P13454021583473127487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A034521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034499 (n + 1) - (f1 (n + 1) - f1 n)

end

end A034500.P13454021583473127487

/-!
# A034501: Multiplicity of highest weight (or singular) vectors associated with character chi_113 of Monster module.

The programs for A034501, there is no canonical definition to state claims against.
-/

/-! ## A034501.P11123580789487113993

`A233761(A034477(n+2))`
-/

namespace A034501.P11123580789487113993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233761 (A034477 (n + 2)).toNat

end

end A034501.P11123580789487113993

/-! ## A034501.P10351826823421588763

`A014586(A076303(n+5))*A014586(n)`
-/

namespace A034501.P10351826823421588763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014586 (A076303 (n + 5)).toNat * A014586 n

end

end A034501.P10351826823421588763

/-! ## A034501.P7941669619822518746

`A009933(n)%A270073(A034574(n+1))`
-/

namespace A034501.P7941669619822518746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A009933 n) (A270073 (A034574 (n + 1)).toNat)

end

end A034501.P7941669619822518746

/-! ## A034501.P4678831631577377939

`A213725(C(n, 34))`
-/

namespace A034501.P4678831631577377939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213725 (Nat.choose n 34)

end

end A034501.P4678831631577377939

/-! ## A034501.P776171073400388152

`∑{e}[floor(C(A026799(n), n+1)/11), #]`
-/

namespace A034501.P776171073400388152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (A026799 n).toNat (n + 1) : ℚ) / 11⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A034501.P776171073400388152

/-!
# A034502: Multiplicity of highest weight (or singular) vectors associated with character chi_114 of Monster module.

The programs for A034502, there is no canonical definition to state claims against.
-/

/-! ## A034502.P10938816659088883539

`A329579(A034541(n+1))`
-/

namespace A034502.P10938816659088883539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329579 (A034541 (n + 1)).toNat

end

end A034502.P10938816659088883539

/-! ## A034502.P5318087805768760791

`Δ[A028782(A291168(n)!)]`
-/

namespace A034502.P5318087805768760791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028782 (Nat.factorial (A291168 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034502.P5318087805768760791

/-! ## A034502.P14951526327735077379

`Δ[A028782(∏[A291168(n)])]`
-/

namespace A034502.P14951526327735077379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028782 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034502.P14951526327735077379

/-! ## A034502.P1280812899578292863

`A010888(C(xor(n, floor(n/2)), 47))`
-/

namespace A034502.P1280812899578292863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (Nat.choose (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat 47)

end

end A034502.P1280812899578292863

/-! ## A034502.P1895141267283073674

`A180593(C(and(n, Δ[-n²]), 30))`
-/

namespace A034502.P1895141267283073674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180593 (Nat.choose (Int.land (n : ℤ) (f1 (n + 1) - f1 n)).toNat 30)

end

end A034502.P1895141267283073674

/-!
# A034503: Multiplicity of highest weight (or singular) vectors associated with character chi_115 of Monster module.

The programs for A034503, there is no canonical definition to state claims against.
-/

/-! ## A034503.P4330723854745797163

`A282513(A000120(∑[C(n+1, 32)]))`
-/

namespace A034503.P4330723854745797163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282513 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A034503.P4330723854745797163

/-! ## A034503.P12461324195995247084

`A055570(A034561(n+1))`
-/

namespace A034503.P12461324195995247084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A034561 (n + 1)).toNat

end

end A034503.P12461324195995247084

/-! ## A034503.P10943131761173170962

`A258055(A034525(n+1))`
-/

namespace A034503.P10943131761173170962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258055 (A034525 (n + 1)).toNat

end

end A034503.P10943131761173170962

/-! ## A034503.P10054948971845179689

`A329143(A034576(n+1))`
-/

namespace A034503.P10054948971845179689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329143 (A034576 (n + 1)).toNat

end

end A034503.P10054948971845179689

/-! ## A034503.P5762569128078163998

`A377131(A390306(n+1))`
-/

namespace A034503.P5762569128078163998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377131 (A390306 (n + 1)).toNat

end

end A034503.P5762569128078163998

/-!
# A034504: Multiplicity of highest weight (or singular) vectors associated with character chi_116 of Monster module.

The programs for A034504, there is no canonical definition to state claims against.
-/

/-! ## A034504.P10455685688853169618

`A034506(n+1)-A108611(A034508(n+1))`
-/

namespace A034504.P10455685688853169618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034506 (n + 1) - A108611 (A034508 (n + 1)).toNat

end

end A034504.P10455685688853169618

/-! ## A034504.P12446748699304666272

`A131469(A034505(n+1))+A085269(A034505(n+1))`
-/

namespace A034504.P12446748699304666272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A034505 (n + 1)).toNat + A085269 (A034505 (n + 1)).toNat

end

end A034504.P12446748699304666272

/-! ## A034504.P902988050767923405

`A131469(A034522(n+2))`
-/

namespace A034504.P902988050767923405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A034522 (n + 2)).toNat

end

end A034504.P902988050767923405

/-! ## A034504.P7773964788640764745

`floor(A129286(n)/A242511(n+3))`
-/

namespace A034504.P7773964788640764745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129286 n : ℚ) / (A242511 (n + 3) : ℚ)⌋

end

end A034504.P7773964788640764745

/-! ## A034504.P12801603707485239405

`and(A034505(n+1), A091677(n+1))`
-/

namespace A034504.P12801603707485239405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034505 (n + 1)) (A091677 (n + 1))

end

end A034504.P12801603707485239405

/-!
# A034505: Multiplicity of highest weight (or singular) vectors associated with character chi_117 of Monster module.

The programs for A034505, there is no canonical definition to state claims against.
-/

/-! ## A034505.P9163223525029190146

`A034506(n+1)-A147968(A034530(n+1))`
-/

namespace A034505.P9163223525029190146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034506 (n + 1) - A147968 (A034530 (n + 1)).toNat

end

end A034505.P9163223525029190146

/-! ## A034505.P9931548733142646169

`A109401(A034508(n+1)+1)`
-/

namespace A034505.P9931548733142646169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A034508 (n + 1) + 1).toNat

end

end A034505.P9931548733142646169

/-! ## A034505.P17941191945317334566

`A000194(∑[A034504(n+1)²])`
-/

namespace A034505.P17941191945317334566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034504 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034505.P17941191945317334566

/-! ## A034505.P12314989113669503439

`A034508(n+1)-A131469(A034521(n+1))`
-/

namespace A034505.P12314989113669503439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034508 (n + 1) - A131469 (A034521 (n + 1)).toNat

end

end A034505.P12314989113669503439

/-! ## A034505.P9051422708116746882

`A097873(A034528(n+2))`
-/

namespace A034505.P9051422708116746882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097873 (A034528 (n + 2)).toNat

end

end A034505.P9051422708116746882

/-!
# A034506: Multiplicity of highest weight (or singular) vectors associated with character chi_118 of Monster module.

The programs for A034506, there is no canonical definition to state claims against.
-/

/-! ## A034506.P1719406383509205457

`A147968(A034530(n+1))+A034505(n+1)`
-/

namespace A034506.P1719406383509205457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A034530 (n + 1)).toNat + A034505 (n + 1)

end

end A034506.P1719406383509205457

/-! ## A034506.P1040897472086439577

`A108611(A034508(n+1))+A034504(n+1)`
-/

namespace A034506.P1040897472086439577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A034508 (n + 1)).toNat + A034504 (n + 1)

end

end A034506.P1040897472086439577

/-! ## A034506.P9427701831528482893

`A000194(A034505(n+1)*A034508(n+1))`
-/

namespace A034506.P9427701831528482893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A034505 (n + 1) * A034508 (n + 1)).toNat

end

end A034506.P9427701831528482893

/-! ## A034506.P2693306392753634736

`∑[A034505(n+1)-A111660(A034522(n+1))]`
-/

namespace A034506.P2693306392753634736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034505 (n + 1) - A111660 (A034522 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034506.P2693306392753634736

/-! ## A034506.P4578062809237277375

`A262882(A034521(n+1))+A131469(A034505(n+1))`
-/

namespace A034506.P4578062809237277375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A034521 (n + 1)).toNat + A131469 (A034505 (n + 1)).toNat

end

end A034506.P4578062809237277375

/-!
# A034507: Multiplicity of highest weight (or singular) vectors associated with character chi_119 of Monster module.

The programs for A034507, there is no canonical definition to state claims against.
-/

/-! ## A034507.P12328172450726527077

`A034510(n+1)+Δ[A177895(A034510(n+1))]`
-/

namespace A034507.P12328172450726527077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177895 (A034510 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034510 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034507.P12328172450726527077

/-! ## A034507.P11339917441837049623

`floor(A048197(n+1)/97)`
-/

namespace A034507.P11339917441837049623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048197 (n + 1) : ℚ) / 97⌋

end

end A034507.P11339917441837049623

/-! ## A034507.P11953040462884447717

`floor(16/A145536(3*n+2))`
-/

namespace A034507.P11953040462884447717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊16 / (A145536 (3 * n + 2) : ℚ)⌋

end

end A034507.P11953040462884447717

/-! ## A034507.P8129457065317711522

`∑[A185284(∑[floor(n/13)]+1)]`
-/

namespace A034507.P8129457065317711522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 13⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034507.P8129457065317711522

/-! ## A034507.P2739309999136768378

`A007149(A034526(n+1))`
-/

namespace A034507.P2739309999136768378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A034526 (n + 1)).toNat

end

end A034507.P2739309999136768378

/-!
# A034508: Multiplicity of highest weight (or singular) vectors associated with character chi_120 of Monster module.

The programs for A034508, there is no canonical definition to state claims against.
-/

/-! ## A034508.P13850601055686280286

`A131469(A034521(n+1))+A034505(n+1)`
-/

namespace A034508.P13850601055686280286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A034521 (n + 1)).toNat + A034505 (n + 1)

end

end A034508.P13850601055686280286

/-! ## A034508.P15625361168007321437

`A111660(Δ[A034506(n+1)])+A034521(n+1)`
-/

namespace A034508.P15625361168007321437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (f1 (n + 1) - f1 n).toNat + A034521 (n + 1)

end

end A034508.P15625361168007321437

/-! ## A034508.P5904907869966380170

`A171970(A034506(n+1)+1)+A131469(A034521(n+1))`
-/

namespace A034508.P5904907869966380170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171970 (A034506 (n + 1) + 1).toNat + A131469 (A034521 (n + 1)).toNat

end

end A034508.P5904907869966380170

/-!
# A034509: Multiplicity of highest weight (or singular) vectors associated with character chi_121 of Monster module.

The programs for A034509, there is no canonical definition to state claims against.
-/

/-! ## A034509.P3840732683618722852

`A072088(A034521(n+2))`
-/

namespace A034509.P3840732683618722852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A034521 (n + 2)).toNat

end

end A034509.P3840732683618722852

/-! ## A034509.P13479779734209555659

`A135551(A017907(n)!²)`
-/

namespace A034509.P13479779734209555659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (Nat.factorial (A017907 n).toNat ^ 2)

end

end A034509.P13479779734209555659

/-! ## A034509.P14659119745089152184

`A034521(n+2)%A034820(n)`
-/

namespace A034509.P14659119745089152184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034521 (n + 2)) (A034820 n)

end

end A034509.P14659119745089152184

/-! ## A034509.P876485008938944820

`A135551(A280865(n+1)!²)`
-/

namespace A034509.P876485008938944820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (Nat.factorial (A280865 (n + 1)).toNat ^ 2)

end

end A034509.P876485008938944820

/-! ## A034509.P13774271815486065929

`filter[A034521(n+2), A010056(#)]`
-/

namespace A034509.P13774271815486065929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010056 (f1 j).toNat = 1) n)

end

end A034509.P13774271815486065929

/-!
# A034510: Multiplicity of highest weight (or singular) vectors associated with character chi_122 of Monster module.

The programs for A034510, there is no canonical definition to state claims against.
-/

/-! ## A034510.P11247010932757166792

`A114539(A034507(n+1))`
-/

namespace A034510.P11247010932757166792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114539 (A034507 (n + 1)).toNat

end

end A034510.P11247010932757166792

/-! ## A034510.P4431373613245027409

`∑[A209859(∑[A034520(n+1)])]`
-/

namespace A034510.P4431373613245027409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034510.P4431373613245027409

/-! ## A034510.P16901065268925268633

`∑[A329200(A034540(n+1)-A034538(n+1))]`
-/

namespace A034510.P16901065268925268633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A034540 (n + 1) - A034538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034510.P16901065268925268633

/-! ## A034510.P5852676723983329575

`A091951(C(n, 35))`
-/

namespace A034510.P5852676723983329575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091951 (Nat.choose n 35)

end

end A034510.P5852676723983329575

/-! ## A034510.P3875887579214624981

`A072137(C(comp[∑[n]], 44))`
-/

namespace A034510.P3875887579214624981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072137 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 44)

end

end A034510.P3875887579214624981

/-!
# A034511: Multiplicity of highest weight (or singular) vectors associated with character chi_123 of Monster module.

The programs for A034511, there is no canonical definition to state claims against.
-/

/-! ## A034511.P17748999031757705130

`∑{d}[A326687(A326684(n)), A326661(#)]`
-/

namespace A034511.P17748999031757705130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 (A326684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326661 d

end

end A034511.P17748999031757705130

/-! ## A034511.P5296720481381858033

`∑{d}[A326687(A326684(n)), A326662(#)]`
-/

namespace A034511.P5296720481381858033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326687 (A326684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326662 d

end

end A034511.P5296720481381858033

/-! ## A034511.P5794214459787015696

`A065718(∑[∑{digits}[n, val(#+4, 7)]]!)`
-/

namespace A034511.P5794214459787015696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => SequenceMachineLib.valuation (x + 4) 7).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A034511.P5794214459787015696

/-! ## A034511.P2623637450725696655

`A153112(A034529(n+1))`
-/

namespace A034511.P2623637450725696655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 (A034529 (n + 1)).toNat

end

end A034511.P2623637450725696655

/-! ## A034511.P8801237493329321241

`A240862(∑[C(A035462(n), 7)])`
-/

namespace A034511.P8801237493329321241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A035462 n).toNat 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240862 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034511.P8801237493329321241

/-!
# A034512: Multiplicity of highest weight (or singular) vectors associated with character chi_124 of Monster module.

The programs for A034512, there is no canonical definition to state claims against.
-/

/-! ## A034512.P5970086981484270427

`A065718(C(comp[∑[n-1]], 45))`
-/

namespace A034512.P5970086981484270427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 45)

end

end A034512.P5970086981484270427

/-! ## A034512.P12641076733738253473

`A086428(A034516(n+1))`
-/

namespace A034512.P12641076733738253473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086428 (A034516 (n + 1)).toNat

end

end A034512.P12641076733738253473

/-! ## A034512.P7137050203348503424

`A317544(A034490(n+2))`
-/

namespace A034512.P7137050203348503424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317544 (A034490 (n + 2)).toNat

end

end A034512.P7137050203348503424

/-! ## A034512.P5861337685125168843

`A004159(C(A326292(n), 10))`
-/

namespace A034512.P5861337685125168843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (Nat.choose (A326292 n).toNat 10)

end

end A034512.P5861337685125168843

/-! ## A034512.P6235299892725674525

`A026800(n)%A348948(A099927(n))`
-/

namespace A034512.P6235299892725674525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026800 n) (A348948 (A099927 n).toNat)

end

end A034512.P6235299892725674525

/-!
# A034513: a(n) = 1^n + 3^n + 9^n.

The programs for A034513, the canonical program `A034513.P6025037193785273412` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034513 has offset 0).

The definition of A034513 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1^n+3^n+9^n` (program `A034513.P6025037193785273412`, by `A034513.P6025037193785273412.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034513.P15215699128484912420

`1+3^n+9^n`
-/

namespace A034513.P15215699128484912420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 3 ^ n + 9 ^ n

end

end A034513.P15215699128484912420

namespace A034513

/-- `1+3^n+9^n` -/
def P15215699128484912420.Spec : Prop :=
  ∀ n, (P15215699128484912420.a n : ℤ) = A034513 n

theorem P15215699128484912420.correct : P15215699128484912420.Spec := by
  intro n
  simp only [A034513, Nat.add_sub_cancel, A034513.P15215699128484912420.a, A034513.P6025037193785273412.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A034513

/-! ## A034513.P6025037193785273412

`1^n+3^n+9^n`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034513

/-- `1^n+3^n+9^n` -/
def P6025037193785273412.Spec : Prop :=
  ∀ n, (P6025037193785273412.a n : ℤ) = A034513 n

theorem P6025037193785273412.correct : P6025037193785273412.Spec := by
  intro n
  simp only [A034513]

end A034513

/-! ## A034513.P8724381246128082823

`∑{d}[-a(n-1), #^n]` with `a(0)=9`
-/

namespace A034513.P8724381246128082823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034513.P8724381246128082823

namespace A034513

/-- `∑{d}[-a(n-1), #^n]` -/
def P8724381246128082823.Spec : Prop :=
  ∀ n, (P8724381246128082823.a n : ℤ) = A034513 n

end A034513

/-! ## A034513.P5592224905577718530

`or(1, A074610(n))`
-/

namespace A034513.P5592224905577718530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A074610 n)

end

end A034513.P5592224905577718530

namespace A034513

/-- `or(1, A074610(n))` -/
def P5592224905577718530.Spec : Prop :=
  ∀ n, P5592224905577718530.a n = A034513 n

end A034513

/-! ## A034513.P16345416914793381145

`or(1, A155607(n)+1)`
-/

namespace A034513.P16345416914793381145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A155607 n + 1)

end

end A034513.P16345416914793381145

namespace A034513

/-- `or(1, A155607(n)+1)` -/
def P16345416914793381145.Spec : Prop :=
  ∀ n, P16345416914793381145.a n = A034513 n

end A034513

/-! ## A034513.P981201990853733605

`or(1, 2*A025551(n))`
-/

namespace A034513.P981201990853733605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A025551 n)

end

end A034513.P981201990853733605

namespace A034513

/-- `or(1, 2*A025551(n))` -/
def P981201990853733605.Spec : Prop :=
  ∀ n, P981201990853733605.a n = A034513 n

end A034513

/-! ## A034513.P8078834914845173522

`ceil(A169724(n+1)/4)`
-/

namespace A034513.P8078834914845173522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169724 (n + 1) : ℚ) / 4⌉

end

end A034513.P8078834914845173522

namespace A034513

/-- `ceil(A169724(n+1)/4)` -/
def P8078834914845173522.Spec : Prop :=
  ∀ n, P8078834914845173522.a n = A034513 n

end A034513

/-! ## A034513.P5014633143617022391

`(A198410(n+2)+2)/3`
-/

namespace A034513.P5014633143617022391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198410 (n + 2) + 2 : ℚ) / 3

end

end A034513.P5014633143617022391

namespace A034513

/-- `(A198410(n+2)+2)/3` -/
def P5014633143617022391.Spec : Prop :=
  ∀ n, P5014633143617022391.a n = (A034513 n : ℚ)

end A034513

/-! ## A034513.P11239188615971739283

`or(1, A032124(2*n+1))`
-/

namespace A034513.P11239188615971739283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A032124 (2 * n + 1))

end

end A034513.P11239188615971739283

namespace A034513

/-- `or(1, A032124(2*n+1))` -/
def P11239188615971739283.Spec : Prop :=
  ∀ n, P11239188615971739283.a n = A034513 n

end A034513

/-! ## A034513.P14607697864099043488

`or(1, A001019(n)+3^n)`
-/

namespace A034513.P14607697864099043488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001019 n + (3 ^ n : ℤ))

end

end A034513.P14607697864099043488

namespace A034513

/-- `or(1, A001019(n)+3^n)` -/
def P14607697864099043488.Spec : Prop :=
  ∀ n, P14607697864099043488.a n = A034513 n

end A034513

/-! ## A034513.P4046145469293548991

`ceil((A062547(2*n+1)/2)²)`
-/

namespace A034513.P4046145469293548991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A062547 (2 * n + 1) : ℚ) / 2) ^ 2⌉

end

end A034513.P4046145469293548991

namespace A034513

/-- `ceil((A062547(2*n+1)/2)²)` -/
def P4046145469293548991.Spec : Prop :=
  ∀ n, P4046145469293548991.a n = A034513 n

end A034513

/-! ## A034513.P2565139464305379362

`ceil(ceil((Δ[A000244(n)]+1)²/2)/2)`
-/

namespace A034513.P2565139464305379362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈((f1 (n + 1) - f1 n + 1) ^ 2 : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A034513.P2565139464305379362

namespace A034513

/-- `ceil(ceil((Δ[A000244(n)]+1)²/2)/2)` -/
def P2565139464305379362.Spec : Prop :=
  ∀ n, P2565139464305379362.a n = A034513 n

end A034513

/-! ## A034513.P12701593433262031665

`floor(A062396(n)+sqrt(A062396(n)))`
-/

namespace A034513.P12701593433262031665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062396 n : ℝ) + Real.sqrt (A062396 n : ℝ)⌋

end

end A034513.P12701593433262031665

namespace A034513

/-- `floor(A062396(n)+sqrt(A062396(n)))` -/
def P12701593433262031665.Spec : Prop :=
  ∀ n, P12701593433262031665.a n = A034513 n

end A034513

/-! ## A034513.P1368542390642613876

`record[A055235(n)+A175840(n)²]`
-/

namespace A034513.P1368542390642613876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055235 n + A175840 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034513.P1368542390642613876

namespace A034513

/-- `record[A055235(n)+A175840(n)²]` -/
def P1368542390642613876.Spec : Prop :=
  ∀ n, P1368542390642613876.a n = A034513 n

end A034513

/-! ## A034513.P11831473141680897605

`(A074610(n)+1)*A214062(3*n+4)`
-/

namespace A034513.P11831473141680897605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + 1) * A214062 (3 * n + 4)

end

end A034513.P11831473141680897605

namespace A034513

/-- `(A074610(n)+1)*A214062(3*n+4)` -/
def P11831473141680897605.Spec : Prop :=
  ∀ n, P11831473141680897605.a n = A034513 n

end A034513

/-! ## A034513.P7608589744717700749

`(A074610(n)+1)*A007318(C(3, A287197(n+1)))²`
-/

namespace A034513.P7608589744717700749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074610 n + 1) * A007318 (Nat.choose 3 (A287197 (n + 1)).toNat) ^ 2

end

end A034513.P7608589744717700749

namespace A034513

/-- `(A074610(n)+1)*A007318(C(3, A287197(n+1)))²` -/
def P7608589744717700749.Spec : Prop :=
  ∀ n, P7608589744717700749.a n = A034513 n

end A034513

/-!
# A034514: Multiplicity of highest weight (or singular) vectors associated with character chi_126 of Monster module.

The programs for A034514, there is no canonical definition to state claims against.
-/

/-! ## A034514.P9582166792747219533

`A155487(ceil((A000079(n)/A155508(n+1))²/π))`
-/

namespace A034514.P9582166792747219533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155487 ⌈(((A000079 n : ℚ) / (A155508 (n + 1) : ℚ)) ^ 2 : ℝ) / Real.pi⌉.toNat

end

end A034514.P9582166792747219533

/-! ## A034514.P3506005081762347860

`∑{e}[A034507(n+1)²², #]`
-/

namespace A034514.P3506005081762347860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034507 (n + 1) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A034514.P3506005081762347860

/-! ## A034514.P16753550572635512772

`A195152(A034526(n+1))`
-/

namespace A034514.P16753550572635512772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195152 (A034526 (n + 1)).toNat

end

end A034514.P16753550572635512772

/-! ## A034514.P6762779080851177894

`A007149(A034510(n+2))`
-/

namespace A034514.P6762779080851177894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A034510 (n + 2)).toNat

end

end A034514.P6762779080851177894

/-! ## A034514.P2396778032512330124

`and(A034544(n+1), A213710(n))`
-/

namespace A034514.P2396778032512330124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034544 (n + 1)) (A213710 n)

end

end A034514.P2396778032512330124

/-!
# A034515: Multiplicity of highest weight (or singular) vectors associated with character chi_127 of Monster module.

The programs for A034515, there is no canonical definition to state claims against.
-/

/-! ## A034515.P18134019260197539110

`A003056(A034479(n+1)*A034530(n+1))`
-/

namespace A034515.P18134019260197539110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A034479 (n + 1) * A034530 (n + 1)).toNat

end

end A034515.P18134019260197539110

/-! ## A034515.P15445199540124806013

`A131308(A034537(n+2))`
-/

namespace A034515.P15445199540124806013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 (A034537 (n + 2)).toNat

end

end A034515.P15445199540124806013

/-! ## A034515.P6651155617808753249

`Δ[A140202(A034576(n+1))]`
-/

namespace A034515.P6651155617808753249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A034576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034515.P6651155617808753249

/-! ## A034515.P4960881582666239325

`∑[A056559(∑[A034529(n+1)²])]`
-/

namespace A034515.P4960881582666239325
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034529 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034515.P4960881582666239325

/-! ## A034515.P4913735680153003935

`A049581(A185255(n))`
-/

namespace A034515.P4913735680153003935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A185255 n).toNat

end

end A034515.P4913735680153003935

/-!
# A034516: Multiplicity of highest weight (or singular) vectors associated with character chi_128 of Monster module.

The programs for A034516, there is no canonical definition to state claims against.
-/

/-! ## A034516.P1735347268305972714

`A353174(C(n, 36))`
-/

namespace A034516.P1735347268305972714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353174 (Nat.choose n 36)

end

end A034516.P1735347268305972714

/-! ## A034516.P15302524953652295860

`A086427(A034512(n+1))`
-/

namespace A034516.P15302524953652295860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086427 (A034512 (n + 1)).toNat

end

end A034516.P15302524953652295860

/-! ## A034516.P12897859885296838217

`A355761(A034490(n+2))`
-/

namespace A034516.P12897859885296838217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355761 (A034490 (n + 2)).toNat

end

end A034516.P12897859885296838217

/-! ## A034516.P8725342886364934084

`A000196(C(A114994(n), 72))`
-/

namespace A034516.P8725342886364934084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (A114994 n).toNat 72)

end

end A034516.P8725342886364934084

/-! ## A034516.P10530301564645141841

`Δ[A000394(7^A185245(n))]`
-/

namespace A034516.P10530301564645141841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000394 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A185245 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034516.P10530301564645141841

/-!
# A034517: Sum of n-th powers of divisors of 10.

The programs for A034517, the canonical program `A034517.P4555784559519111850` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034517 has offset 0).

The definition of A034517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034517.P4555784559519111850

`∑{d}[-a(n-1), #^n]` with `a(0)=10`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034517

/-- `∑{d}[-a(n-1), #^n]` -/
def P4555784559519111850.Spec : Prop :=
  ∀ n, (P4555784559519111850.a n : ℤ) = A034517 n

theorem P4555784559519111850.correct : P4555784559519111850.Spec := by
  intro n
  simp only [A034517]

end A034517

/-! ## A034517.P7829217550533683630

`(5^n+1)*(2^n+1)`
-/

namespace A034517.P7829217550533683630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 1) * (2 ^ n + 1)

end

end A034517.P7829217550533683630

namespace A034517

/-- `(5^n+1)*(2^n+1)` -/
def P7829217550533683630.Spec : Prop :=
  ∀ n, (P7829217550533683630.a n : ℤ) = A034517 n

end A034517

/-! ## A034517.P1222104738195700640

`A074501(n)+10^n`
-/

namespace A034517.P1222104738195700640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074501 n + (10 ^ n : ℤ)

end

end A034517.P1222104738195700640

namespace A034517

/-- `A074501(n)+10^n` -/
def P1222104738195700640.Spec : Prop :=
  ∀ n, P1222104738195700640.a n = A034517 n

end A034517

/-! ## A034517.P11778455803961510398

`5^n+A050621(n+1)+1`
-/

namespace A034517.P11778455803961510398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 ^ n : ℤ) + (A050621 (n + 1) + 1)

end

end A034517.P11778455803961510398

namespace A034517

/-- `5^n+A050621(n+1)+1` -/
def P11778455803961510398.Spec : Prop :=
  ∀ n, P11778455803961510398.a n = A034517 n

end A034517

/-! ## A034517.P17243161732143095275

`A074600(n)+A062397(n)`
-/

namespace A034517.P17243161732143095275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 n + A062397 n

end

end A034517.P17243161732143095275

namespace A034517

/-- `A074600(n)+A062397(n)` -/
def P17243161732143095275.Spec : Prop :=
  ∀ n, P17243161732143095275.a n = A034517 n

end A034517

/-! ## A034517.P15926110089135906253

`A050621(n+1)+A034474(n)`
-/

namespace A034517.P15926110089135906253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050621 (n + 1) + A034474 n

end

end A034517.P15926110089135906253

namespace A034517

/-- `A050621(n+1)+A034474(n)` -/
def P15926110089135906253.Spec : Prop :=
  ∀ n, P15926110089135906253.a n = A034517 n

end A034517

/-! ## A034517.P4388776767689121135

`A050621(n+1)+A000351(n)+1`
-/

namespace A034517.P4388776767689121135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050621 (n + 1) + (A000351 n + 1)

end

end A034517.P4388776767689121135

namespace A034517

/-- `A050621(n+1)+A000351(n)+1` -/
def P4388776767689121135.Spec : Prop :=
  ∀ n, P4388776767689121135.a n = A034517 n

end A034517

/-! ## A034517.P12075519034901498978

`A050621(n+1)+2*A034478(n)`
-/

namespace A034517.P12075519034901498978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050621 (n + 1) + 2 * A034478 n

end

end A034517.P12075519034901498978

namespace A034517

/-- `A050621(n+1)+2*A034478(n)` -/
def P12075519034901498978.Spec : Prop :=
  ∀ n, P12075519034901498978.a n = A034517 n

end A034517

/-! ## A034517.P5893201178410118596

`A000051(n)+A011557(n)+A000351(n)`
-/

namespace A034517.P5893201178410118596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A011557 n + A000351 n)

end

end A034517.P5893201178410118596

namespace A034517

/-- `A000051(n)+A011557(n)+A000351(n)` -/
def P5893201178410118596.Spec : Prop :=
  ∀ n, P5893201178410118596.a n = A034517 n

end A034517

/-! ## A034517.P7200579025088370743

`A034474(n)+A000079(n)*A034474(n)`
-/

namespace A034517.P7200579025088370743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n + A000079 n * A034474 n

end

end A034517.P7200579025088370743

namespace A034517

/-- `A034474(n)+A000079(n)*A034474(n)` -/
def P7200579025088370743.Spec : Prop :=
  ∀ n, P7200579025088370743.a n = A034517 n

end A034517

/-! ## A034517.P530636943910475750

`A034474(n)*A052548(n)-A034474(n)`
-/

namespace A034517.P530636943910475750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034474 n * A052548 n - A034474 n

end

end A034517.P530636943910475750

namespace A034517

/-- `A034474(n)*A052548(n)-A034474(n)` -/
def P530636943910475750.Spec : Prop :=
  ∀ n, P530636943910475750.a n = A034517 n

end A034517

/-! ## A034517.P16247886706750140706

`A050621(n+1)+A050621(n+1)/Δ[A000225(n)]`
-/

namespace A034517.P16247886706750140706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050621 (n + 1) : ℚ) + (A050621 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A034517.P16247886706750140706

namespace A034517

/-- `A050621(n+1)+A050621(n+1)/Δ[A000225(n)]` -/
def P16247886706750140706.Spec : Prop :=
  ∀ n, P16247886706750140706.a n = (A034517 n : ℚ)

end A034517

/-!
# A034518: Multiplicity of highest weight (or singular) vectors associated with character chi_130 of Monster module.

The programs for A034518, there is no canonical definition to state claims against.
-/

/-! ## A034518.P16454988472271772196

`A329129(Δ[A034550(n+1)]²)`
-/

namespace A034518.P16454988472271772196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034550 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A034518.P16454988472271772196

/-! ## A034518.P5698306278938441102

`floor(A213291(n)/∑[A213300(n)])`
-/

namespace A034518.P5698306278938441102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213291 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌋

end

end A034518.P5698306278938441102

/-! ## A034518.P5782836765843003225

`floor(A218552(n)/A329538(n+1))`
-/

namespace A034518.P5782836765843003225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A218552 n : ℚ) / (A329538 (n + 1) : ℚ)⌋

end

end A034518.P5782836765843003225

/-! ## A034518.P2443888771280177211

`round(A036647(n)/A262729(n+1))`
-/

namespace A034518.P2443888771280177211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A036647 n : ℚ) / (A262729 (n + 1) : ℚ))

end

end A034518.P2443888771280177211

/-! ## A034518.P6043221364029210916

`A108611(A034521(n+1))`
-/

namespace A034518.P6043221364029210916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A034521 (n + 1)).toNat

end

end A034518.P6043221364029210916

/-!
# A034519: Multiplicity of highest weight (or singular) vectors associated with character chi_131 of Monster module.

The programs for A034519, there is no canonical definition to state claims against.
-/

/-! ## A034519.P3905795434962744204

`A035517(C(A204591(n), 13))`
-/

namespace A034519.P3905795434962744204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (Nat.choose (A204591 n).toNat 13)

end

end A034519.P3905795434962744204

/-! ## A034519.P12990659804738263283

`Δ[A034561(n+4)]^A206497(n+1)`
-/

namespace A034519.P12990659804738263283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034561 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A206497 (n + 1) : ℤ)

end

end A034519.P12990659804738263283

/-! ## A034519.P4811748803711406881

`Δ[A034561(n+4)]^A046621(n+2)`
-/

namespace A034519.P4811748803711406881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034561 (n + 4)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A046621 (n + 2) : ℤ)

end

end A034519.P4811748803711406881

/-! ## A034519.P11187645973236113693

`Δ[A034561(n+4)%A095326(n+2)]`
-/

namespace A034519.P11187645973236113693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034561 (n + 4)) (A095326 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034519.P11187645973236113693

/-! ## A034519.P3203833471338839308

`A034504(n+1)-A097873(A034504(n+1))`
-/

namespace A034519.P3203833471338839308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034504 (n + 1) - A097873 (A034504 (n + 1)).toNat

end

end A034519.P3203833471338839308

/-!
# A034520: Multiplicity of highest weight (or singular) vectors associated with character chi_132 of Monster module.

The programs for A034520, there is no canonical definition to state claims against.
-/

/-! ## A034520.P12352416947404048386

`A394331(A034526(n+1))`
-/

namespace A034520.P12352416947404048386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394331 (A034526 (n + 1)).toNat

end

end A034520.P12352416947404048386

/-! ## A034520.P17885137213601528950

`A075169(A034523(n+2))`
-/

namespace A034520.P17885137213601528950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075169 (A034523 (n + 2)).toNat

end

end A034520.P17885137213601528950

/-! ## A034520.P5412769801489408695

`A241825(A034510(n+2))`
-/

namespace A034520.P5412769801489408695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (A034510 (n + 2)).toNat

end

end A034520.P5412769801489408695

/-! ## A034520.P6090348494432822175

`A387371(A034501(n+2))`
-/

namespace A034520.P6090348494432822175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387371 (A034501 (n + 2)).toNat

end

end A034520.P6090348494432822175

/-! ## A034520.P16259970930230231694

`floor(A108037(n)/A161409(n))`
-/

namespace A034520.P16259970930230231694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A108037 n : ℚ) / (A161409 n : ℚ)⌋

end

end A034520.P16259970930230231694

/-!
# A034521: Multiplicity of highest weight (or singular) vectors associated with character chi_133 of Monster module.

The programs for A034521, there is no canonical definition to state claims against.
-/

/-! ## A034521.P71287450767077719

`A135551(A280865(n)!²)`
-/

namespace A034521.P71287450767077719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (Nat.factorial (A280865 n).toNat ^ 2)

end

end A034521.P71287450767077719

/-! ## A034521.P12114120194906943265

`A135551(∏[A280865(n)²])`
-/

namespace A034521.P12114120194906943265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280865 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034521.P12114120194906943265

/-! ## A034521.P15380442143532254876

`A034509(A028310(n))%A219112(n+1)`
-/

namespace A034521.P15380442143532254876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034509 (A028310 n).toNat) (A219112 (n + 1))

end

end A034521.P15380442143532254876

/-! ## A034521.P8375298957994886573

`A034549(n+4)-A194441(A034562(n+5))`
-/

namespace A034521.P8375298957994886573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034549 (n + 4) - A194441 (A034562 (n + 5)).toNat

end

end A034521.P8375298957994886573

/-! ## A034521.P18349899716236257973

`A356859(A034499(n+1))`
-/

namespace A034521.P18349899716236257973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356859 (A034499 (n + 1)).toNat

end

end A034521.P18349899716236257973

/-!
# A034522: Multiplicity of highest weight (or singular) vectors associated with character chi_134 of Monster module.

The programs for A034522, there is no canonical definition to state claims against.
-/

/-! ## A034522.P4530373051519474105

`A182659(A034528(n+1))`
-/

namespace A034522.P4530373051519474105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182659 (A034528 (n + 1)).toNat

end

end A034522.P4530373051519474105

/-! ## A034522.P13559059332698837118

`A251629(A034533(n+2))`
-/

namespace A034522.P13559059332698837118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251629 (A034533 (n + 2)).toNat

end

end A034522.P13559059332698837118

/-! ## A034522.P16821522359721166766

`A211595(n+1)%A028310(A034504(n+1))`
-/

namespace A034522.P16821522359721166766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211595 (n + 1)) (A028310 (A034504 (n + 1)).toNat)

end

end A034522.P16821522359721166766

/-! ## A034522.P12360342667628113373

`A328037(A239481(n+1))`
-/

namespace A034522.P12360342667628113373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328037 (A239481 (n + 1)).toNat

end

end A034522.P12360342667628113373

/-! ## A034522.P6787132225446485624

`A131469(A034531(n+2))`
-/

namespace A034522.P6787132225446485624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A034531 (n + 2)).toNat

end

end A034522.P6787132225446485624

/-!
# A034523: Multiplicity of highest weight (or singular) vectors associated with character chi_135 of Monster module.

The programs for A034523, there is no canonical definition to state claims against.
-/

/-! ## A034523.P18252125902407859690

`A326775(C(comp[∑[n]], 45))`
-/

namespace A034523.P18252125902407859690
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326775 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 45)

end

end A034523.P18252125902407859690

/-! ## A034523.P12047235561168812334

`A371172(A034510(n+1))`
-/

namespace A034523.P12047235561168812334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371172 (A034510 (n + 1)).toNat

end

end A034523.P12047235561168812334

/-! ## A034523.P6191344733086028512

`A098760(A034512(n+2))`
-/

namespace A034523.P6191344733086028512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098760 (A034512 (n + 2)).toNat

end

end A034523.P6191344733086028512

/-! ## A034523.P9325270775094397368

`A056654(A034501(n+1)+1)`
-/

namespace A034523.P9325270775094397368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056654 (A034501 (n + 1) + 1).toNat

end

end A034523.P9325270775094397368

/-! ## A034523.P1874003588591609555

`∑{p}[A371395(A034495(n+4)), #]`
-/

namespace A034523.P1874003588591609555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371395 (A034495 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A034523.P1874003588591609555

/-!
# A034524: a(n) = 11^n + 1.

The programs for A034524, the canonical program `A034524.P14152157889491239874` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034524 has offset 0).

The definition of A034524 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n+1` (program `A034524.P14152157889491239874`, by `A034524.P14152157889491239874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034524.P14152157889491239874

`11^n+1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034524

/-- `11^n+1` -/
def P14152157889491239874.Spec : Prop :=
  ∀ n, (P14152157889491239874.a n : ℤ) = A034524 n

theorem P14152157889491239874.correct : P14152157889491239874.Spec := by
  intro n
  simp only [A034524]

end A034524

/-!
# A034525: Multiplicity of highest weight (or singular) vectors associated with character chi_137 of Monster module.

The programs for A034525, there is no canonical definition to state claims against.
-/

/-! ## A034525.P6859550774203015070

`A304683(A034515(n+1)+1)`
-/

namespace A034525.P6859550774203015070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304683 (A034515 (n + 1) + 1).toNat

end

end A034525.P6859550774203015070

/-! ## A034525.P7607388454118247707

`∑{d}[A034555(n+1), A157477(A000010(#))]`
-/

namespace A034525.P7607388454118247707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034555 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A157477 (A000010 d).toNat

end

end A034525.P7607388454118247707

/-! ## A034525.P2427921855396634839

`A089870(A034539(n+1)-A034538(n+1))`
-/

namespace A034525.P2427921855396634839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A034539 (n + 1) - A034538 (n + 1)).toNat

end

end A034525.P2427921855396634839

/-! ## A034525.P5591920706165471507

`A089870(A034539(n+1)-A034540(n+1))`
-/

namespace A034525.P5591920706165471507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A034539 (n + 1) - A034540 (n + 1)).toNat

end

end A034525.P5591920706165471507

/-! ## A034525.P9906496771098388755

`A329129(A034550(n+1)²)-A329129(A034550(n+1))`
-/

namespace A034525.P9906496771098388755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329129 (A034550 (n + 1) ^ 2).toNat - A329129 (A034550 (n + 1)).toNat

end

end A034525.P9906496771098388755

/-!
# A034526: Multiplicity of highest weight (or singular) vectors associated with character chi_138 of Monster module.

The programs for A034526, there is no canonical definition to state claims against.
-/

/-! ## A034526.P12599168329386374210

`and(n*(and(1, n)+1), A038573(C(n, 33)+1))`
-/

namespace A034526.P12599168329386374210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n * (Nat.land 1 n + 1) : ℤ) (A038573 (Nat.choose n 33 + 1))

end

end A034526.P12599168329386374210

/-! ## A034526.P17785973751463642590

`∑[A079071(A185238(n))]`
-/

namespace A034526.P17785973751463642590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079071 (A185238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034526.P17785973751463642590

/-! ## A034526.P11956651964024876481

`A236831(A185238(n)+3)`
-/

namespace A034526.P11956651964024876481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236831 (A185238 n + 3).toNat

end

end A034526.P11956651964024876481

/-! ## A034526.P12701118574203048225

`A051127(5^A291168(n))`
-/

namespace A034526.P12701118574203048225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051127 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A291168 n : ℤ))).toNat

end

end A034526.P12701118574203048225

/-! ## A034526.P10110935204727288340

`A038698(or(1, A185238(n)))`
-/

namespace A034526.P10110935204727288340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (Int.lor 1 (A185238 n)).toNat

end

end A034526.P10110935204727288340

/-!
# A034527: Multiplicity of highest weight (or singular) vectors associated with character chi_139 of Monster module.

The programs for A034527, there is no canonical definition to state claims against.
-/

/-! ## A034527.P15930319033136605010

`A162339(or(1, A034550(n+1)))`
-/

namespace A034527.P15930319033136605010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162339 (Int.lor 1 (A034550 (n + 1))).toNat

end

end A034527.P15930319033136605010

/-! ## A034527.P11873626416587420441

`A217684(C(n, 29))`
-/

namespace A034527.P11873626416587420441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217684 (Nat.choose n 29)

end

end A034527.P11873626416587420441

/-! ## A034527.P9062800829709746667

`∑[A185246(2*n+3)%7]`
-/

namespace A034527.P9062800829709746667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185246 (2 * n + 3)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034527.P9062800829709746667

/-! ## A034527.P11421089391259626556

`A103696(C(comp[2*(n+2)], 55))`
-/

namespace A034527.P11421089391259626556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103696 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 55)

end

end A034527.P11421089391259626556

/-! ## A034527.P9137471836727899204

`∑{e}[C(A008728(n), 2*n+1), #]`
-/

namespace A034527.P9137471836727899204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008728 n).toNat (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A034527.P9137471836727899204

/-!
# A034528: Multiplicity of highest weight (or singular) vectors associated with character chi_140 of Monster module.

The programs for A034528, there is no canonical definition to state claims against.
-/

/-! ## A034528.P13535531690125763799

`A220527(A034521(n+1))`
-/

namespace A034528.P13535531690125763799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220527 (A034521 (n + 1)).toNat

end

end A034528.P13535531690125763799

/-! ## A034528.P4475972457317116350

`A182839(A034530(n+2))`
-/

namespace A034528.P4475972457317116350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A034530 (n + 2)).toNat

end

end A034528.P4475972457317116350

/-! ## A034528.P15366613347483029810

`A251631(A034531(n+2))`
-/

namespace A034528.P15366613347483029810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251631 (A034531 (n + 2)).toNat

end

end A034528.P15366613347483029810

/-! ## A034528.P4218153389049832607

`A209315(A034555(n+4)²+1)`
-/

namespace A034528.P4218153389049832607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209315 (A034555 (n + 4) ^ 2 + 1).toNat

end

end A034528.P4218153389049832607

/-! ## A034528.P1044266101942568313

`floor(A358373(2*n+1)/A235394(3*n+2))`
-/

namespace A034528.P1044266101942568313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A358373 (2 * n + 1) : ℚ) / (A235394 (3 * n + 2) : ℚ)⌋

end

end A034528.P1044266101942568313

/-!
# A034529: Multiplicity of highest weight (or singular) vectors associated with character chi_141 of Monster module.

The programs for A034529, there is no canonical definition to state claims against.
-/

/-! ## A034529.P1580424017700057174

`A380408(A034515(n+1))`
-/

namespace A034529.P1580424017700057174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380408 (A034515 (n + 1)).toNat

end

end A034529.P1580424017700057174

/-! ## A034529.P13623155924745256422

`A284975(A180174(n))`
-/

namespace A034529.P13623155924745256422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284975 (A180174 n).toNat

end

end A034529.P13623155924745256422

/-! ## A034529.P1129992917430449691

`Δ[A140202(A034537(n+1)+7)]`
-/

namespace A034529.P1129992917430449691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A034537 (n + 1) + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034529.P1129992917430449691

/-! ## A034529.P16935363874515284766

`∑{e}[A185255(n), #+2]`
-/

namespace A034529.P16935363874515284766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 2)

end

end A034529.P16935363874515284766

/-! ## A034529.P16328008239377294455

`A261283(A185255(n))`
-/

namespace A034529.P16328008239377294455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261283 (A185255 n).toNat

end

end A034529.P16328008239377294455

/-!
# A034530: Multiplicity of highest weight (or singular) vectors associated with character chi_142 of Monster module.

The programs for A034530, there is no canonical definition to state claims against.
-/

/-! ## A034530.P12344993320770440049

`Δ[A347624(A034518(n+1))]`
-/

namespace A034530.P12344993320770440049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347624 (A034518 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034530.P12344993320770440049

/-! ## A034530.P9420638429114339122

`A277727(A034543(n+2)+1)`
-/

namespace A034530.P9420638429114339122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277727 (A034543 (n + 2) + 1).toNat

end

end A034530.P9420638429114339122

/-! ## A034530.P1206053728296973329

`round(sqrt(A272322(n+1)/A272307(n+3)))`
-/

namespace A034530.P1206053728296973329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A272322 (n + 1) : ℚ) / (A272307 (n + 3) : ℚ) : ℝ))

end

end A034530.P1206053728296973329

/-! ## A034530.P2287388825076433512

`A233795(A034522(n+1))`
-/

namespace A034530.P2287388825076433512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A034522 (n + 1)).toNat

end

end A034530.P2287388825076433512

/-! ## A034530.P3372100550889821928

`A233795(A034528(n+1))`
-/

namespace A034530.P3372100550889821928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233795 (A034528 (n + 1)).toNat

end

end A034530.P3372100550889821928

/-!
# A034531: Multiplicity of highest weight (or singular) vectors associated with character chi_143 of Monster module.

The programs for A034531, there is no canonical definition to state claims against.
-/

/-! ## A034531.P9079208195289962714

`A147968(A034530(n+1))+A034533(n+1)`
-/

namespace A034531.P9079208195289962714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A034530 (n + 1)).toNat + A034533 (n + 1)

end

end A034531.P9079208195289962714

/-! ## A034531.P3576745119635691766

`A111660(∑[A034521(n+1)])`
-/

namespace A034531.P3576745119635691766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034531.P3576745119635691766

/-! ## A034531.P3013837699895438283

`A123580(∑[A034550(n+2)])`
-/

namespace A034531.P3013837699895438283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034531.P3013837699895438283

/-! ## A034531.P11001657570768649271

`A109401(or(1, A034521(n+1)))`
-/

namespace A034531.P11001657570768649271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (Int.lor 1 (A034521 (n + 1))).toNat

end

end A034531.P11001657570768649271

/-! ## A034531.P12211239189511920579

`A051344(A283100(n+1))`
-/

namespace A034531.P12211239189511920579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051344 (A283100 (n + 1)).toNat

end

end A034531.P12211239189511920579

/-!
# A034532: Multiplicity of highest weight (or singular) vectors associated with character chi_144 of Monster module.

The programs for A034532, there is no canonical definition to state claims against.
-/

/-! ## A034532.P9531353086588094020

`A140202(Δ[A034535(n+1)])`
-/

namespace A034532.P9531353086588094020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (f1 (n + 1) - f1 n).toNat

end

end A034532.P9531353086588094020

/-! ## A034532.P6348157440260869792

`and(A034548(n+1), A090890(n+1))`
-/

namespace A034532.P6348157440260869792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034548 (n + 1)) (A090890 (n + 1))

end

end A034532.P6348157440260869792

/-! ## A034532.P16426509590931146609

`and(A034551(n+1), A090890(n+1))`
-/

namespace A034532.P16426509590931146609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034551 (n + 1)) (A090890 (n + 1))

end

end A034532.P16426509590931146609

/-! ## A034532.P3701729910046576858

`and(A034551(n+1), A111242(n+1))`
-/

namespace A034532.P3701729910046576858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034551 (n + 1)) (A111242 (n + 1))

end

end A034532.P3701729910046576858

/-! ## A034532.P23872158151492518

`and(A034551(n+1), A128528(n+1))`
-/

namespace A034532.P23872158151492518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034551 (n + 1)) (A128528 (n + 1))

end

end A034532.P23872158151492518

/-!
# A034533: Multiplicity of highest weight (or singular) vectors associated with character chi_145 of Monster module.

The programs for A034533, there is no canonical definition to state claims against.
-/

/-! ## A034533.P1217147102898833766

`A034531(n+1)-A147968(A034530(n+1))`
-/

namespace A034533.P1217147102898833766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034531 (n + 1) - A147968 (A034530 (n + 1)).toNat

end

end A034533.P1217147102898833766

/-! ## A034533.P15730414384540809339

`A005375(A034531(n+1)^A010783(n+1))`
-/

namespace A034533.P15730414384540809339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (SequenceMachineLib.roundAway ((A034531 (n + 1) : ℚ) ^ (A010783 (n + 1) : ℤ))).toNat

end

end A034533.P15730414384540809339

/-! ## A034533.P1502087778249271928

`and(A026166(A303513(n+1)), A034546(n+2))`
-/

namespace A034533.P1502087778249271928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026166 (A303513 (n + 1)).toNat) (A034546 (n + 2))

end

end A034533.P1502087778249271928

/-! ## A034533.P7916373276507488225

`A005375(A034531(n+1)%A240295(3*(n+1)))`
-/

namespace A034533.P7916373276507488225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005375 (Int.tmod (A034531 (n + 1)) (A240295 (3 * (n + 1)))).toNat

end

end A034533.P7916373276507488225

/-! ## A034533.P7326704105785774592

`A147968(A034550(n+2))`
-/

namespace A034533.P7326704105785774592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A034550 (n + 2)).toNat

end

end A034533.P7326704105785774592

/-!
# A034534: Multiplicity of highest weight (or singular) vectors associated with character chi_146 of Monster module.

The programs for A034534, there is no canonical definition to state claims against.
-/

/-! ## A034534.P16696259046884011503

`A178913(A034543(n+1)+2)`
-/

namespace A034534.P16696259046884011503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178913 (A034543 (n + 1) + 2).toNat

end

end A034534.P16696259046884011503

/-! ## A034534.P6673966250053131270

`Δ[A003056(Δ[A034561(n+1)²])]`
-/

namespace A034534.P6673966250053131270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034561 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034534.P6673966250053131270

/-! ## A034534.P1711893940173961622

`and(A034543(n+1), A309034(n+1))`
-/

namespace A034534.P1711893940173961622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034543 (n + 1)) (A309034 (n + 1))

end

end A034534.P1711893940173961622

/-! ## A034534.P6562174305200682026

`floor(11/A090579(n+5))`
-/

namespace A034534.P6562174305200682026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 / (A090579 (n + 5) : ℚ)⌋

end

end A034534.P6562174305200682026

/-! ## A034534.P9225558659216273786

`A185245(A005555(n+1))`
-/

namespace A034534.P9225558659216273786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 (A005555 (n + 1)).toNat

end

end A034534.P9225558659216273786

/-!
# A034535: Multiplicity of highest weight (or singular) vectors associated with character chi_147 of Monster module.

The programs for A034535, there is no canonical definition to state claims against.
-/

/-! ## A034535.P12796341546934513353

`A277328(C(n, 31))`
-/

namespace A034535.P12796341546934513353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277328 (Nat.choose n 31)

end

end A034535.P12796341546934513353

/-! ## A034535.P14875662610338736816

`A053186(C(comp[∑[n-1]], 40))`
-/

namespace A034535.P14875662610338736816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 40)

end

end A034535.P14875662610338736816

/-! ## A034535.P522932552900686987

`A055087(C(comp[∑[n-1]], 40))`
-/

namespace A034535.P522932552900686987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 40)

end

end A034535.P522932552900686987

/-! ## A034535.P8294028470385090047

`A249871(A034532(n+1))`
-/

namespace A034535.P8294028470385090047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249871 (A034532 (n + 1)).toNat

end

end A034535.P8294028470385090047

/-! ## A034535.P3291180733913145282

`A331462(A034561(n+1))`
-/

namespace A034535.P3291180733913145282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331462 (A034561 (n + 1)).toNat

end

end A034535.P3291180733913145282

/-!
# A034536: Multiplicity of highest weight (or singular) vectors associated with character chi_148 of Monster module.

The programs for A034536, there is no canonical definition to state claims against.
-/

/-! ## A034536.P555029706129627656

`∑[n+6]%Δ[A031285(n)]`
-/

namespace A034536.P555029706129627656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (f2 (n + 1) - f2 n)

end

end A034536.P555029706129627656

/-! ## A034536.P6497854249963268335

`A347767(A034558(n+1))`
-/

namespace A034536.P6497854249963268335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347767 (A034558 (n + 1)).toNat

end

end A034536.P6497854249963268335

/-! ## A034536.P3485008248173443591

`A153448(A090109(2*(n+1)))%(n+1)`
-/

namespace A034536.P3485008248173443591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153448 (A090109 (2 * (n + 1))).toNat) (n + 1 : ℤ)

end

end A034536.P3485008248173443591

/-!
# A034537: Multiplicity of highest weight (or singular) vectors associated with character chi_149 of Monster module.

The programs for A034537, there is no canonical definition to state claims against.
-/

/-! ## A034537.P113689267264681097

`A140202(A034553(n+1))`
-/

namespace A034537.P113689267264681097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A034553 (n + 1)).toNat

end

end A034537.P113689267264681097

/-! ## A034537.P17586831973937657699

`5*A122201(C(n, 31))`
-/

namespace A034537.P17586831973937657699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A122201 (Nat.choose n 31)

end

end A034537.P17586831973937657699

/-! ## A034537.P4224705546125258382

`A334291(A034539(n+1))`
-/

namespace A034537.P4224705546125258382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334291 (A034539 (n + 1)).toNat

end

end A034537.P4224705546125258382

/-! ## A034537.P8355846370319975848

`A292547(A290273(n+1))`
-/

namespace A034537.P8355846370319975848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 (A290273 (n + 1)).toNat

end

end A034537.P8355846370319975848

/-! ## A034537.P9881553628810159156

`A072088(A034548(n+2))`
-/

namespace A034537.P9881553628810159156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A034548 (n + 2)).toNat

end

end A034537.P9881553628810159156

/-!
# A034538: Multiplicity of highest weight (or singular) vectors associated with character chi_150 of Monster module.

The programs for A034538, there is no canonical definition to state claims against.
-/

/-! ## A034538.P12125254346207959526

`A034540(n+1)-A244158(A153151(C(n, 35)))`
-/

namespace A034538.P12125254346207959526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034540 (n + 1) - A244158 (A153151 (Nat.choose n 35)).toNat

end

end A034538.P12125254346207959526

/-! ## A034538.P13507617088095812562

`A034540(n+1)-A329200(A072647(C(n, 35)))`
-/

namespace A034538.P13507617088095812562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034540 (n + 1) - A329200 (A072647 (Nat.choose n 35)).toNat

end

end A034538.P13507617088095812562

/-! ## A034538.P10940459065422284981

`A034540(n+1)-A329200(A091951(C(n, 35)))`
-/

namespace A034538.P10940459065422284981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034540 (n + 1) - A329200 (A091951 (Nat.choose n 35)).toNat

end

end A034538.P10940459065422284981

/-! ## A034538.P17413995388384892320

`A034540(n+1)-A025469(A052331(n+1))`
-/

namespace A034538.P17413995388384892320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034540 (n + 1) - A025469 (A052331 (n + 1)).toNat

end

end A034538.P17413995388384892320

/-! ## A034538.P8997052052111064270

`filter[A034540(n+1), A071034(#)]`
-/

namespace A034538.P8997052052111064270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071034 (f1 j).toNat = 1) n)

end

end A034538.P8997052052111064270

/-!
# A034539: Multiplicity of highest weight (or singular) vectors associated with character chi_151 of Monster module.

The programs for A034539, there is no canonical definition to state claims against.
-/

/-! ## A034539.P8477371383728384989

`A089867(A034525(n+1))+A034538(n+1)`
-/

namespace A034539.P8477371383728384989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A034525 (n + 1)).toNat + A034538 (n + 1)

end

end A034539.P8477371383728384989

/-! ## A034539.P14379286241101863261

`A089870(A034525(n+1))+A034540(n+1)`
-/

namespace A034539.P14379286241101863261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089870 (A034525 (n + 1)).toNat + A034540 (n + 1)

end

end A034539.P14379286241101863261

/-! ## A034539.P6789081125299833959

`A304683(A034515(n+1)+1)+A034538(n+1)`
-/

namespace A034539.P6789081125299833959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304683 (A034515 (n + 1) + 1).toNat + A034538 (n + 1)

end

end A034539.P6789081125299833959

/-! ## A034539.P1291736310419453882

`A304683(A034515(n+1)+1)+A034540(n+1)`
-/

namespace A034539.P1291736310419453882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304683 (A034515 (n + 1) + 1).toNat + A034540 (n + 1)

end

end A034539.P1291736310419453882

/-! ## A034539.P1679567593115743582

`A140202(A034537(n+1)+A034515(n+1))`
-/

namespace A034539.P1679567593115743582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A034537 (n + 1) + A034515 (n + 1)).toNat

end

end A034539.P1679567593115743582

/-!
# A034540: Multiplicity of highest weight (or singular) vectors associated with character chi_152 of Monster module.

The programs for A034540, there is no canonical definition to state claims against.
-/

/-! ## A034540.P15351623932842754119

`A244158(A153151(C(n, 35)))+A034538(n+1)`
-/

namespace A034540.P15351623932842754119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (A153151 (Nat.choose n 35)).toNat + A034538 (n + 1)

end

end A034540.P15351623932842754119

/-! ## A034540.P1265683310250731735

`A111660(∑[A034520(n+1)])+A034538(n+1)`
-/

namespace A034540.P1265683310250731735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A034538 (n + 1)

end

end A034540.P1265683310250731735

/-! ## A034540.P17224896766674567528

`A034538(n+1)+A025469(A052331(n+1))`
-/

namespace A034540.P17224896766674567528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034538 (n + 1) + A025469 (A052331 (n + 1)).toNat

end

end A034540.P17224896766674567528

/-! ## A034540.P9189620507974190036

`A034538(n+1)+A025469(A111660(2*(n+2)))`
-/

namespace A034540.P9189620507974190036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034538 (n + 1) + A025469 (A111660 (2 * (n + 2))).toNat

end

end A034540.P9189620507974190036

/-!
# A034541: Multiplicity of highest weight (or singular) vectors associated with character chi_153 of Monster module.

The programs for A034541, there is no canonical definition to state claims against.
-/

/-! ## A034541.P2406927952466729724

`A131209(A034568(n+1))`
-/

namespace A034541.P2406927952466729724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A034568 (n + 1)).toNat

end

end A034541.P2406927952466729724

/-! ## A034541.P17115238324183577375

`A091245(A034542(n+1)+2)`
-/

namespace A034541.P17115238324183577375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A034542 (n + 1) + 2).toNat

end

end A034541.P17115238324183577375

/-! ## A034541.P7815366154701327138

`A091246(A034542(n+1)+2)`
-/

namespace A034541.P7815366154701327138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091246 (A034542 (n + 1) + 2).toNat

end

end A034541.P7815366154701327138

/-! ## A034541.P16520318990257172238

`∑[A144623(A034581(n+1)²)]`
-/

namespace A034541.P16520318990257172238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144623 (A034581 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034541.P16520318990257172238

/-! ## A034541.P9266879606863823994

`A144623(∑[A034581(n+1)]*A034581(n+1))`
-/

namespace A034541.P9266879606863823994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144623 ((∑ j ∈ Finset.range (n + 1), f1 j) * A034581 (n + 1)).toNat

end

end A034541.P9266879606863823994

/-!
# A034542: Multiplicity of highest weight (or singular) vectors associated with character chi_154 of Monster module.

The programs for A034542, there is no canonical definition to state claims against.
-/

/-! ## A034542.P4648000980774797779

`A278336(∏{p}[A034541(n+1), #])`
-/

namespace A034542.P4648000980774797779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278336 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A034542.P4648000980774797779

/-! ## A034542.P12448754099856011901

`A005206(A003056(A034548(n+1)²))`
-/

namespace A034542.P12448754099856011901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A003056 (A034548 (n + 1) ^ 2).toNat).toNat

end

end A034542.P12448754099856011901

/-! ## A034542.P18307023384166889328

`A305615(A034551(n+1))²-char[A000045(n+9)]`
-/

namespace A034542.P18307023384166889328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 (A034551 (n + 1)).toNat ^ 2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A034542.P18307023384166889328

/-! ## A034542.P10684608021483817295

`A070263(A034548(n+1))`
-/

namespace A034542.P10684608021483817295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070263 (A034548 (n + 1)).toNat

end

end A034542.P10684608021483817295

/-! ## A034542.P4391647420165452931

`A081880(A034541(n+1))`
-/

namespace A034542.P4391647420165452931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081880 (A034541 (n + 1)).toNat

end

end A034542.P4391647420165452931

/-!
# A034543: Multiplicity of highest weight (or singular) vectors associated with character chi_155 of Monster module.

The programs for A034543, there is no canonical definition to state claims against.
-/

/-! ## A034543.P3422632585207167152

`floor(A105695(n)/A213300(n))`
-/

namespace A034543.P3422632585207167152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A105695 n : ℚ) / (A213300 n : ℚ)⌋

end

end A034543.P3422632585207167152

/-! ## A034543.P9393663888493489725

`floor((A103422(n+1)/A165218(n+1))²/2)`
-/

namespace A034543.P9393663888493489725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A103422 (n + 1) : ℚ) / (A165218 (n + 1) : ℚ)) ^ 2 / 2⌋

end

end A034543.P9393663888493489725

/-! ## A034543.P9786751709597922531

`A086520(A000096(Δ[A034567(n+1)]))`
-/

namespace A034543.P9786751709597922531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A000096 (f1 (n + 1) - f1 n).toNat).toNat

end

end A034543.P9786751709597922531

/-! ## A034543.P7662312213683826477

`A152459(A034530(n+1))`
-/

namespace A034543.P7662312213683826477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152459 (A034530 (n + 1)).toNat

end

end A034543.P7662312213683826477

/-! ## A034543.P8995181845183958377

`A056558(A185264(n)+1)`
-/

namespace A034543.P8995181845183958377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (A185264 n + 1).toNat

end

end A034543.P8995181845183958377

/-!
# A034544: Multiplicity of highest weight (or singular) vectors associated with character chi_156 of Monster module.

The programs for A034544, there is no canonical definition to state claims against.
-/

/-! ## A034544.P2615991385136163474

`∑[(2*n+3)%A038573(C(n, 33)+1)]`
-/

namespace A034544.P2615991385136163474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 3 : ℤ) (A038573 (Nat.choose n 33 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034544.P2615991385136163474

/-! ## A034544.P2217150672808648886

`A222573(n+1)%A222600(A034545(n+1))`
-/

namespace A034544.P2217150672808648886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222573 (n + 1)) (A222600 (A034545 (n + 1)).toNat)

end

end A034544.P2217150672808648886

/-! ## A034544.P10858739689237795318

`A017805(A309332(n+1))%A038573(C(n, 33)+1)`
-/

namespace A034544.P10858739689237795318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017805 (A309332 (n + 1)).toNat) (A038573 (Nat.choose n 33 + 1))

end

end A034544.P10858739689237795318

/-! ## A034544.P4378149460082397041

`A003056(A185238(n))-A207328(A185238(n))`
-/

namespace A034544.P4378149460082397041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A185238 n).toNat - A207328 (A185238 n).toNat

end

end A034544.P4378149460082397041

/-! ## A034544.P1417887877717012016

`A025459(C(n, 32))`
-/

namespace A034544.P1417887877717012016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (Nat.choose n 32)

end

end A034544.P1417887877717012016

/-!
# A034545: Multiplicity of highest weight (or singular) vectors associated with character chi_157 of Monster module.

The programs for A034545, there is no canonical definition to state claims against.
-/

/-! ## A034545.P9855437961319679715

`A153883(A034514(n+2))`
-/

namespace A034545.P9855437961319679715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A034514 (n + 2)).toNat

end

end A034545.P9855437961319679715

/-! ## A034545.P145348298817742005

`lcm(6, ∑[A025459(C(n, 32))])`
-/

namespace A034545.P145348298817742005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (Nat.choose n 32)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 6 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034545.P145348298817742005

/-! ## A034545.P15897577502245587589

`A000196(C(comp[floor(42*n/8)], 42))`
-/

namespace A034545.P15897577502245587589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊42 * ((n : ℚ) / 8)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 42)

end

end A034545.P15897577502245587589

/-! ## A034545.P3376927194696366610

`A173068(A210632(n))`
-/

namespace A034545.P3376927194696366610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173068 (A210632 n).toNat

end

end A034545.P3376927194696366610

/-! ## A034545.P8543081824581762132

`A171178(A034552(n+1))`
-/

namespace A034545.P8543081824581762132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171178 (A034552 (n + 1)).toNat

end

end A034545.P8543081824581762132

/-!
# A034546: Multiplicity of highest weight (or singular) vectors associated with character chi_158 of Monster module.

The programs for A034546, there is no canonical definition to state claims against.
-/

/-! ## A034546.P7823284773016148430

`A147968(A034564(n+2))`
-/

namespace A034546.P7823284773016148430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (A034564 (n + 2)).toNat

end

end A034546.P7823284773016148430

/-! ## A034546.P11963651312237400076

`A160558(A034529(n+2))`
-/

namespace A034546.P11963651312237400076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160558 (A034529 (n + 2)).toNat

end

end A034546.P11963651312237400076

/-! ## A034546.P14669859464302047093

`A180101(A034541(n+4))`
-/

namespace A034546.P14669859464302047093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A034541 (n + 4)).toNat

end

end A034546.P14669859464302047093

/-! ## A034546.P17649067164936763405

`A147968(∑[∑[A034550(n+1)]])`
-/

namespace A034546.P17649067164936763405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147968 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034546.P17649067164936763405

/-! ## A034546.P8223429645808814288

`A094382(A176388(n))`
-/

namespace A034546.P8223429645808814288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094382 (A176388 n).toNat

end

end A034546.P8223429645808814288

/-!
# A034547: Multiplicity of highest weight (or singular) vectors associated with character chi_159 of Monster module.

The programs for A034547, there is no canonical definition to state claims against.
-/

/-! ## A034547.P17111221637386047759

`A322261(A034541(n+1))`
-/

namespace A034547.P17111221637386047759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322261 (A034541 (n + 1)).toNat

end

end A034547.P17111221637386047759

/-! ## A034547.P5958366670149871029

`A353853(A034571(n+1))`
-/

namespace A034547.P5958366670149871029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353853 (A034571 (n + 1)).toNat

end

end A034547.P5958366670149871029

/-! ## A034547.P17187956189838055232

`∑[A125186(A034566(n+1))]`
-/

namespace A034547.P17187956189838055232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A034566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034547.P17187956189838055232

/-! ## A034547.P3366185996504397607

`A291811(A034568(n+1)+1)`
-/

namespace A034547.P3366185996504397607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A034568 (n + 1) + 1).toNat

end

end A034547.P3366185996504397607

/-! ## A034547.P7173855879722743874

`and(A034560(n+1), A193415(n+1))`
-/

namespace A034547.P7173855879722743874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034560 (n + 1)) (A193415 (n + 1))

end

end A034547.P7173855879722743874

/-!
# A034548: Multiplicity of highest weight (or singular) vectors associated with character chi_160 of Monster module.

The programs for A034548, there is no canonical definition to state claims against.
-/

/-! ## A034548.P12417830620922002741

`∑{d}[A034532(n+1), A121701(#)]`
-/

namespace A034548.P12417830620922002741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A121701 d

end

end A034548.P12417830620922002741

/-! ## A034548.P13510910243810549562

`A345280((A034580(n+1)+1)²)`
-/

namespace A034548.P13510910243810549562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345280 ((A034580 (n + 1) + 1) ^ 2).toNat

end

end A034548.P13510910243810549562

/-! ## A034548.P8643852520992020177

`A000196(lcm(n+3, ∑[A034582(n+1)]))`
-/

namespace A034548.P8643852520992020177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (n + 3 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A034548.P8643852520992020177

/-! ## A034548.P4080773626538141448

`xor(A034551(n+1), A185217(A185238(n)))`
-/

namespace A034548.P4080773626538141448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034551 (n + 1)) (A185217 (A185238 n).toNat)

end

end A034548.P4080773626538141448

/-! ## A034548.P5666421483184785768

`A180101(A034541(n+1))+A034541(n+1)`
-/

namespace A034548.P5666421483184785768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A034541 (n + 1)).toNat + A034541 (n + 1)

end

end A034548.P5666421483184785768

/-!
# A034549: Multiplicity of highest weight (or singular) vectors associated with character chi_161 of Monster module.

The programs for A034549, there is no canonical definition to state claims against.
-/

/-! ## A034549.P15508884884632726153

`A273190(A034555(n+1)²)`
-/

namespace A034549.P15508884884632726153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A034555 (n + 1) ^ 2).toNat

end

end A034549.P15508884884632726153

/-! ## A034549.P6867565652101089715

`A097873(A034563(n+1))`
-/

namespace A034549.P6867565652101089715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097873 (A034563 (n + 1)).toNat

end

end A034549.P6867565652101089715

/-! ## A034549.P2708443754533041149

`A111660(A034534(n+1))`
-/

namespace A034549.P2708443754533041149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A034534 (n + 1)).toNat

end

end A034549.P2708443754533041149

/-! ## A034549.P6592321520915243571

`A123342(A034538(n+1))`
-/

namespace A034549.P6592321520915243571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123342 (A034538 (n + 1)).toNat

end

end A034549.P6592321520915243571

/-! ## A034549.P2261965257515602779

`A123342(A034540(n+1))`
-/

namespace A034549.P2261965257515602779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123342 (A034540 (n + 1)).toNat

end

end A034549.P2261965257515602779

/-!
# A034550: Multiplicity of highest weight (or singular) vectors associated with character chi_162 of Monster module.

The programs for A034550, there is no canonical definition to state claims against.
-/

/-! ## A034550.P10028166728458439223

`A329200(A034538(n+2))`
-/

namespace A034550.P10028166728458439223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A034538 (n + 2)).toNat

end

end A034550.P10028166728458439223

/-! ## A034550.P4850450467361562387

`A329200(A034540(n+2))`
-/

namespace A034550.P4850450467361562387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329200 (A034540 (n + 2)).toNat

end

end A034550.P4850450467361562387

/-! ## A034550.P2705820671376998773

`A111660(2*A034538(n+2))`
-/

namespace A034550.P2705820671376998773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A034538 (n + 2)).toNat

end

end A034550.P2705820671376998773

/-! ## A034550.P4569360491086940757

`A099999(or(A008679(3*n+4), A163351(n)))`
-/

namespace A034550.P4569360491086940757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099999 (Int.lor (A008679 (3 * n + 4)) (A163351 n)).toNat

end

end A034550.P4569360491086940757

/-! ## A034550.P17500804006122129941

`3*∑[A185246(2*n+3)%3]`
-/

namespace A034550.P17500804006122129941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185246 (2 * n + 3)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034550.P17500804006122129941

/-!
# A034551: Multiplicity of highest weight (or singular) vectors associated with character chi_163 of Monster module.

The programs for A034551, there is no canonical definition to state claims against.
-/

/-! ## A034551.P15161557959600077060

`A260037(round(2^n/A260083(n+4)))`
-/

namespace A034551.P15161557959600077060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260037 (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / (A260083 (n + 4) : ℚ))).toNat

end

end A034551.P15161557959600077060

/-! ## A034551.P662813447189810138

`xor(A034548(n+1), A185217(A185238(n)))`
-/

namespace A034551.P662813447189810138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A034548 (n + 1)) (A185217 (A185238 n).toNat)

end

end A034551.P662813447189810138

/-! ## A034551.P13241400071133722804

`∑{d}[A034541(n+1), A005496(A000010(#))]`
-/

namespace A034551.P13241400071133722804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A005496 (A000010 d).toNat

end

end A034551.P13241400071133722804

/-! ## A034551.P8512247420223872007

`A049502(C(∏{p}[n+1, #], 31))`
-/

namespace A034551.P8512247420223872007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) 31)

end

end A034551.P8512247420223872007

/-! ## A034551.P6530516178325644932

`A113218(A034548(n+1))`
-/

namespace A034551.P6530516178325644932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113218 (A034548 (n + 1)).toNat

end

end A034551.P6530516178325644932

/-!
# A034552: Multiplicity of highest weight (or singular) vectors associated with character chi_164 of Monster module.

The programs for A034552, there is no canonical definition to state claims against.
-/

/-! ## A034552.P2179256063913449243

`A086431(A034526(n+1))+A034544(n+1)`
-/

namespace A034552.P2179256063913449243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A034526 (n + 1)).toNat + A034544 (n + 1)

end

end A034552.P2179256063913449243

/-! ## A034552.P16287471623663726900

`A324467(C(Δ[n²], 69))`
-/

namespace A034552.P16287471623663726900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 69)

end

end A034552.P16287471623663726900

/-! ## A034552.P5070948456584586796

`(3*n²)%Δ[A031285(n)]`
-/

namespace A034552.P5070948456584586796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * n ^ 2 : ℤ) (f1 (n + 1) - f1 n)

end

end A034552.P5070948456584586796

/-! ## A034552.P10599396380730364547

`A073719(A034545(n+1))`
-/

namespace A034552.P10599396380730364547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073719 (A034545 (n + 1)).toNat

end

end A034552.P10599396380730364547

/-! ## A034552.P11859846018123008383

`A131138(A034569(n+1))`
-/

namespace A034552.P11859846018123008383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A034569 (n + 1)).toNat

end

end A034552.P11859846018123008383

/-!
# A034553: Multiplicity of highest weight (or singular) vectors associated with character chi_165 of Monster module.

The programs for A034553, there is no canonical definition to state claims against.
-/

/-! ## A034553.P9329394372131812764

`A201997(A034576(n+1))`
-/

namespace A034553.P9329394372131812764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 (A034576 (n + 1)).toNat

end

end A034553.P9329394372131812764

/-! ## A034553.P16485379429980009460

`A295752(A034561(n+1))`
-/

namespace A034553.P16485379429980009460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295752 (A034561 (n + 1)).toNat

end

end A034553.P16485379429980009460

/-! ## A034553.P5977665783694571828

`A295752(floor(A034576(n+1)/A163994(n+1)))`
-/

namespace A034553.P5977665783694571828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295752 ⌊(A034576 (n + 1) : ℚ) / (A163994 (n + 1) : ℚ)⌋.toNat

end

end A034553.P5977665783694571828

/-! ## A034553.P233978845101860679

`A034537(n+1)-∑[A339601(A034537(n+1))]`
-/

namespace A034553.P233978845101860679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339601 (A034537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034537 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034553.P233978845101860679

/-! ## A034553.P1565932757547554173

`A220523(A034537(n+1))`
-/

namespace A034553.P1565932757547554173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220523 (A034537 (n + 1)).toNat

end

end A034553.P1565932757547554173

/-!
# A034554: Multiplicity of highest weight (or singular) vectors associated with character chi_166 of Monster module.

The programs for A034554, there is no canonical definition to state claims against.
-/

/-! ## A034554.P7278156952375265006

`A006784(n+1)%A013598(A034560(n+1))`
-/

namespace A034554.P7278156952375265006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006784 (n + 1)) (A013598 (A034560 (n + 1)).toNat)

end

end A034554.P7278156952375265006

/-! ## A034554.P4258753683584194427

`A072088(A034562(n+1))`
-/

namespace A034554.P4258753683584194427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A034562 (n + 1)).toNat

end

end A034554.P4258753683584194427

/-! ## A034554.P10123151460306144097

`A338333(A034479(n+1))`
-/

namespace A034554.P10123151460306144097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338333 (A034479 (n + 1)).toNat

end

end A034554.P10123151460306144097

/-! ## A034554.P15317923048285471462

`A065361(C(A043093(n), 37))`
-/

namespace A034554.P15317923048285471462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (Nat.choose (A043093 n).toNat 37)

end

end A034554.P15317923048285471462

/-! ## A034554.P794392256064684671

`A034562(∑[A185284(n)!])`
-/

namespace A034554.P794392256064684671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185284 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034562 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034554.P794392256064684671

/-!
# A034555: Multiplicity of highest weight (or singular) vectors associated with character chi_167 of Monster module.

The programs for A034555, there is no canonical definition to state claims against.
-/

/-! ## A034555.P5054923860611282183

`round(n/A053305(2*n))`
-/

namespace A034555.P5054923860611282183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A053305 (2 * n) : ℚ))

end

end A034555.P5054923860611282183

/-! ## A034555.P2807758241156754534

`A122331(A034564(n+1))`
-/

namespace A034555.P2807758241156754534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122331 (A034564 (n + 1)).toNat

end

end A034555.P2807758241156754534

/-! ## A034555.P2293883251306617047

`A222303(A034539(n+1))`
-/

namespace A034555.P2293883251306617047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222303 (A034539 (n + 1)).toNat

end

end A034555.P2293883251306617047

/-! ## A034555.P9145870233611515167

`A357449(A034565(n+2))`
-/

namespace A034555.P9145870233611515167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357449 (A034565 (n + 2)).toNat

end

end A034555.P9145870233611515167

/-! ## A034555.P4776859819806340252

`and(A034564(n+1), A091082(n+1))`
-/

namespace A034555.P4776859819806340252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034564 (n + 1)) (A091082 (n + 1))

end

end A034555.P4776859819806340252

/-!
# A034556: Multiplicity of highest weight (or singular) vectors associated with character chi_168 of Monster module.

The programs for A034556, there is no canonical definition to state claims against.
-/

/-! ## A034556.P2387585322784540330

`A061579(A059252(A034577(n+1)²))`
-/

namespace A034556.P2387585322784540330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A059252 (A034577 (n + 1) ^ 2).toNat).toNat

end

end A034556.P2387585322784540330

/-! ## A034556.P7897632195907278929

`A123578(A034548(n+1)*A034559(n+1))`
-/

namespace A034556.P7897632195907278929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A034548 (n + 1) * A034559 (n + 1)).toNat

end

end A034556.P7897632195907278929

/-! ## A034556.P9670347731669630704

`A123578(lcm(A034548(n+1), A034559(n+1)))`
-/

namespace A034556.P9670347731669630704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (Int.lcm (A034548 (n + 1)) (A034559 (n + 1)))

end

end A034556.P9670347731669630704

/-! ## A034556.P6226703232692476646

`A173999(A034551(n+1))`
-/

namespace A034556.P6226703232692476646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173999 (A034551 (n + 1)).toNat

end

end A034556.P6226703232692476646

/-! ## A034556.P8041704780713123395

`A192515(A034548(n+1))`
-/

namespace A034556.P8041704780713123395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192515 (A034548 (n + 1)).toNat

end

end A034556.P8041704780713123395

/-!
# A034557: Multiplicity of highest weight (or singular) vectors associated with character chi_169 of Monster module.

The programs for A034557, there is no canonical definition to state claims against.
-/

/-! ## A034557.P13440166017961304421

`(∑[n+3]-A141214(n))²`
-/

namespace A034557.P13440166017961304421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A141214 n) ^ 2

end

end A034557.P13440166017961304421

/-! ## A034557.P5382353952855669295

`A055907(A034579(n+1))`
-/

namespace A034557.P5382353952855669295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (A034579 (n + 1)).toNat

end

end A034557.P5382353952855669295

/-! ## A034557.P1067827525464455493

`A048152(A141214(n)+3)`
-/

namespace A034557.P1067827525464455493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A141214 n + 3).toNat

end

end A034557.P1067827525464455493

/-! ## A034557.P16959950620865180568

`A068063(A034575(n+1))²`
-/

namespace A034557.P16959950620865180568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A034575 (n + 1)).toNat ^ 2

end

end A034557.P16959950620865180568

/-! ## A034557.P12546778245654075709

`A259361(A034547(n+1)²)`
-/

namespace A034557.P12546778245654075709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A034547 (n + 1) ^ 2).toNat

end

end A034557.P12546778245654075709

/-!
# A034558: Multiplicity of highest weight (or singular) vectors associated with character chi_170 of Monster module.

The programs for A034558, there is no canonical definition to state claims against.
-/

/-! ## A034558.P10957707075535206917

`A222226(C(comp[∑[n]], 43))`
-/

namespace A034558.P10957707075535206917
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222226 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 43)

end

end A034558.P10957707075535206917

/-! ## A034558.P1311183328742279170

`Δ[A255934(A185238(n))]`
-/

namespace A034558.P1311183328742279170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255934 (A185238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034558.P1311183328742279170

/-! ## A034558.P9531231693623385020

`A266728(A034545(n+1))`
-/

namespace A034558.P9531231693623385020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266728 (A034545 (n + 1)).toNat

end

end A034558.P9531231693623385020

/-!
# A034559: Multiplicity of highest weight (or singular) vectors associated with character chi_171 of Monster module.

The programs for A034559, there is no canonical definition to state claims against.
-/

/-! ## A034559.P5228111320449795406

`A034560(n+1)-A178487(A034554(n+1)²)`
-/

namespace A034559.P5228111320449795406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034560 (n + 1) - A178487 (A034554 (n + 1) ^ 2).toNat

end

end A034559.P5228111320449795406

/-! ## A034559.P11294848839023203196

`A320472(A034542(n+1))-1`
-/

namespace A034559.P11294848839023203196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320472 (A034542 (n + 1)).toNat - 1

end

end A034559.P11294848839023203196

/-! ## A034559.P15337092164694348053

`A122312(A034557(n+1))+A034532(n+1)`
-/

namespace A034559.P15337092164694348053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122312 (A034557 (n + 1)).toNat + A034532 (n + 1)

end

end A034559.P15337092164694348053

/-! ## A034559.P11267873082328514223

`A034560(n+1)-A005136(A034535(n+1))`
-/

namespace A034559.P11267873082328514223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034560 (n + 1) - A005136 (A034535 (n + 1)).toNat

end

end A034559.P11267873082328514223

/-! ## A034559.P10881815434114717500

`A034560(n+1)-A005136(A034554(n+1))`
-/

namespace A034559.P10881815434114717500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034560 (n + 1) - A005136 (A034554 (n + 1)).toNat

end

end A034559.P10881815434114717500

/-!
# A034560: Multiplicity of highest weight (or singular) vectors associated with character chi_172 of Monster module.

The programs for A034560, there is no canonical definition to state claims against.
-/

/-! ## A034560.P3600444378611830527

`A178487(A034554(n+1)²)+A034559(n+1)`
-/

namespace A034560.P3600444378611830527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A034554 (n + 1) ^ 2).toNat + A034559 (n + 1)

end

end A034560.P3600444378611830527

/-! ## A034560.P11720413566483731610

`∑{d}[A034541(n+1), A138509(#)]`
-/

namespace A034560.P11720413566483731610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A138509 d

end

end A034560.P11720413566483731610

/-! ## A034560.P872913467077782196

`∑[A003056(Δ[A034535(n+1)]²)]`
-/

namespace A034560.P872913467077782196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034535 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034560.P872913467077782196

/-! ## A034560.P2312285348730902722

`A235200(A141214(n)%A226040(n))`
-/

namespace A034560.P2312285348730902722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (Int.tmod (A141214 n) (A226040 n)).toNat

end

end A034560.P2312285348730902722

/-! ## A034560.P5821807955120366925

`A091245(A034576(n+1))`
-/

namespace A034560.P5821807955120366925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A034576 (n + 1)).toNat

end

end A034560.P5821807955120366925

/-!
# A034561: Multiplicity of highest weight (or singular) vectors associated with character chi_173 of Monster module.

The programs for A034561, there is no canonical definition to state claims against.
-/

/-! ## A034561.P4987807655918193966

`A273859(A034503(n+1)+1)`
-/

namespace A034561.P4987807655918193966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273859 (A034503 (n + 1) + 1).toNat

end

end A034561.P4987807655918193966

/-! ## A034561.P7791018471716547033

`floor(A097569(n+1)/A046436(n+1))`
-/

namespace A034561.P7791018471716547033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097569 (n + 1) : ℚ) / (A046436 (n + 1) : ℚ)⌋

end

end A034561.P7791018471716547033

/-! ## A034561.P9046049880018946383

`floor(A097569(n+1)/A129295(n+1))`
-/

namespace A034561.P9046049880018946383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097569 (n + 1) : ℚ) / (A129295 (n + 1) : ℚ)⌋

end

end A034561.P9046049880018946383

/-! ## A034561.P8999437252539449695

`floor(A097569(n+1)/A133123(n+1))`
-/

namespace A034561.P8999437252539449695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097569 (n + 1) : ℚ) / (A133123 (n + 1) : ℚ)⌋

end

end A034561.P8999437252539449695

/-! ## A034561.P6588915913127780454

`floor(A097569(n+1)/A185359(3*n+1))`
-/

namespace A034561.P6588915913127780454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A097569 (n + 1) : ℚ) / (A185359 (3 * n + 1) : ℚ)⌋

end

end A034561.P6588915913127780454

/-!
# A034563: Multiplicity of highest weight (or singular) vectors associated with character chi_175 of Monster module.

The programs for A034563, there is no canonical definition to state claims against.
-/

/-! ## A034563.P16086011592637776312

`A153112(A034511(n+1))+A034537(n+1)`
-/

namespace A034563.P16086011592637776312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153112 (A034511 (n + 1)).toNat + A034537 (n + 1)

end

end A034563.P16086011592637776312

/-! ## A034563.P501660425565364507

`A108611(A034537(n+1))+∑[A034549(n+1)]`
-/

namespace A034563.P501660425565364507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A034537 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034563.P501660425565364507

/-! ## A034563.P16500913061554565394

`A111660(A034576(n+1))+A073849(A034549(n+1))`
-/

namespace A034563.P16500913061554565394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A034576 (n + 1)).toNat + A073849 (A034549 (n + 1)).toNat

end

end A034563.P16500913061554565394

/-! ## A034563.P2524096210995805120

`A335599(A034534(n+1))`
-/

namespace A034563.P2524096210995805120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335599 (A034534 (n + 1)).toNat

end

end A034563.P2524096210995805120

/-! ## A034563.P8106050223285794048

`A123576(A034511(n+2))`
-/

namespace A034563.P8106050223285794048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A034511 (n + 2)).toNat

end

end A034563.P8106050223285794048

/-!
# A034564: Multiplicity of highest weight (or singular) vectors associated with character chi_176 of Monster module.

The programs for A034564, there is no canonical definition to state claims against.
-/

/-! ## A034564.P10303436996118010188

`A319514(C(n, 29))`
-/

namespace A034564.P10303436996118010188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (Nat.choose n 29)

end

end A034564.P10303436996118010188

/-! ## A034564.P548362768473243256

`A122332(A034555(n+1))`
-/

namespace A034564.P548362768473243256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122332 (A034555 (n + 1)).toNat

end

end A034564.P548362768473243256

/-! ## A034564.P680315536822290558

`A003056(A034576(n+2)²)`
-/

namespace A034564.P680315536822290558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A034576 (n + 2) ^ 2).toNat

end

end A034564.P680315536822290558

/-! ## A034564.P15621785921623040745

`A116939(A034576(n+2)²)`
-/

namespace A034564.P15621785921623040745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116939 (A034576 (n + 2) ^ 2).toNat

end

end A034564.P15621785921623040745

/-! ## A034564.P13603496705345452745

`A024936(A185255(n))`
-/

namespace A034564.P13603496705345452745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024936 (A185255 n).toNat

end

end A034564.P13603496705345452745

/-!
# A034565: Multiplicity of highest weight (or singular) vectors associated with character chi_177 of Monster module.

The programs for A034565, there is no canonical definition to state claims against.
-/

/-! ## A034565.P11154811212130815819

`A092106(A034541(n+2))`
-/

namespace A034565.P11154811212130815819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092106 (A034541 (n + 2)).toNat

end

end A034565.P11154811212130815819

/-! ## A034565.P11881419819276292765

`A319611(A034532(n+2))`
-/

namespace A034565.P11881419819276292765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319611 (A034532 (n + 2)).toNat

end

end A034565.P11881419819276292765

/-! ## A034565.P12462266182128957231

`A282530(2^A017909(n))`
-/

namespace A034565.P12462266182128957231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282530 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A017909 n : ℤ))).toNat

end

end A034565.P12462266182128957231

/-! ## A034565.P9342837601397626916

`A093682(A034553(n+1))-1`
-/

namespace A034565.P9342837601397626916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093682 (A034553 (n + 1)).toNat - 1

end

end A034565.P9342837601397626916

/-! ## A034565.P16463837525688179088

`2*A122201(C(n, 31))`
-/

namespace A034565.P16463837525688179088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A122201 (Nat.choose n 31)

end

end A034565.P16463837525688179088

/-!
# A034566: Multiplicity of highest weight (or singular) vectors associated with character chi_178 of Monster module.

The programs for A034566, there is no canonical definition to state claims against.
-/

/-! ## A034566.P14411864743257443203

`A219254(C(n, 31))`
-/

namespace A034566.P14411864743257443203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219254 (Nat.choose n 31)

end

end A034566.P14411864743257443203

/-! ## A034566.P1434476370034699526

`A131209(A034579(n+1))`
-/

namespace A034566.P1434476370034699526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 (A034579 (n + 1)).toNat

end

end A034566.P1434476370034699526

/-! ## A034566.P12929853173957307099

`A364885(A034574(n+1))`
-/

namespace A034566.P12929853173957307099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364885 (A034574 (n + 1)).toNat

end

end A034566.P12929853173957307099

/-! ## A034566.P8860999215997048076

`A089175(A034571(n+1)+1)`
-/

namespace A034566.P8860999215997048076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089175 (A034571 (n + 1) + 1).toNat

end

end A034566.P8860999215997048076

/-! ## A034566.P11672031206247801132

`A034584(A034577(n+1))`
-/

namespace A034566.P11672031206247801132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034584 (A034577 (n + 1)).toNat

end

end A034566.P11672031206247801132

/-!
# A034567: Multiplicity of highest weight (or singular) vectors associated with character chi_179 of Monster module.

The programs for A034567, there is no canonical definition to state claims against.
-/

/-! ## A034567.P13546354210518176120

`A274641(A034563(n+1)²)`
-/

namespace A034567.P13546354210518176120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A034563 (n + 1) ^ 2).toNat

end

end A034567.P13546354210518176120

/-! ## A034567.P16813295518162540602

`A055570(A034561(n+1))+∑[A034561(n+2)]`
-/

namespace A034567.P16813295518162540602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034561 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A034561 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034567.P16813295518162540602

/-! ## A034567.P17409970958334625618

`A048766(C(round((11/10)^n), 17))`
-/

namespace A034567.P17409970958334625618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Nat.choose (SequenceMachineLib.roundAway (((11 : ℚ) / 10) ^ n)).toNat 17)

end

end A034567.P17409970958334625618

/-! ## A034567.P2462779882667134989

`A233763(A034563(n+1))`
-/

namespace A034567.P2462779882667134989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233763 (A034563 (n + 1)).toNat

end

end A034567.P2462779882667134989

/-! ## A034567.P7338730085737470728

`A327036(A034543(n+1))`
-/

namespace A034567.P7338730085737470728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A034543 (n + 1)).toNat

end

end A034567.P7338730085737470728

/-!
# A034568: Multiplicity of highest weight (or singular) vectors associated with character chi_180 of Monster module.

The programs for A034568, there is no canonical definition to state claims against.
-/

/-! ## A034568.P5838264679908559330

`A034574(n+1)-A285189(A034569(n+1))`
-/

namespace A034568.P5838264679908559330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034574 (n + 1) - A285189 (A034569 (n + 1)).toNat

end

end A034568.P5838264679908559330

/-! ## A034568.P662225835098350198

`A358129(A034574(n+1))`
-/

namespace A034568.P662225835098350198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358129 (A034574 (n + 1)).toNat

end

end A034568.P662225835098350198

/-! ## A034568.P2910906977087847455

`A259361(A034541(n+1)²)`
-/

namespace A034568.P2910906977087847455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A034541 (n + 1) ^ 2).toNat

end

end A034568.P2910906977087847455

/-! ## A034568.P3853539571093755366

`A337108(A034541(n+1)²)`
-/

namespace A034568.P3853539571093755366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337108 (A034541 (n + 1) ^ 2).toNat

end

end A034568.P3853539571093755366

/-! ## A034568.P10500384248649106787

`A091245(A034542(n+1)+1)`
-/

namespace A034568.P10500384248649106787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A034542 (n + 1) + 1).toNat

end

end A034568.P10500384248649106787

/-!
# A034569: Multiplicity of highest weight (or singular) vectors associated with character chi_181 of Monster module.

The programs for A034569, there is no canonical definition to state claims against.
-/

/-! ## A034569.P15442226328777795181

`and(36, abs(Δ[A031285(n)]))`
-/

namespace A034569.P15442226328777795181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 36 |f1 (n + 1) - f1 n|

end

end A034569.P15442226328777795181

/-! ## A034569.P8370465986482569730

`A007149(A034570(n+1))`
-/

namespace A034569.P8370465986482569730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007149 (A034570 (n + 1)).toNat

end

end A034569.P8370465986482569730

/-! ## A034569.P11716629161864664642

`A151906(A034552(n+1))`
-/

namespace A034569.P11716629161864664642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151906 (A034552 (n + 1)).toNat

end

end A034569.P11716629161864664642

/-! ## A034569.P9779911739981826787

`A159268(A034558(n+1))`
-/

namespace A034569.P9779911739981826787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159268 (A034558 (n + 1)).toNat

end

end A034569.P9779911739981826787

/-! ## A034569.P18122271555616480142

`A233473(A034544(n+1))`
-/

namespace A034569.P18122271555616480142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233473 (A034544 (n + 1)).toNat

end

end A034569.P18122271555616480142

/-!
# A034570: Multiplicity of highest weight (or singular) vectors associated with character chi_182 of Monster module.

The programs for A034570, there is no canonical definition to state claims against.
-/

/-! ## A034570.P5493696520856697061

`A265560(A034554(n+1))`
-/

namespace A034570.P5493696520856697061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265560 (A034554 (n + 1)).toNat

end

end A034570.P5493696520856697061

/-! ## A034570.P9593842377594143828

`A265560(A034562(n+1))`
-/

namespace A034570.P9593842377594143828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265560 (A034562 (n + 1)).toNat

end

end A034570.P9593842377594143828

/-! ## A034570.P7946056769764552448

`A099379(or(n%2, A185238(n)))`
-/

namespace A034570.P7946056769764552448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (Int.lor ((n % 2 : ℕ) : ℤ) (A185238 n)).toNat

end

end A034570.P7946056769764552448

/-! ## A034570.P16159581190275774553

`A185283(∑[∑[A034562(n+1)²]])`
-/

namespace A034570.P16159581190275774553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034562 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034570.P16159581190275774553

/-! ## A034570.P1188790426592359481

`A099379(A185238(n)+A025465(n))`
-/

namespace A034570.P1188790426592359481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099379 (A185238 n + A025465 n).toNat

end

end A034570.P1188790426592359481

/-!
# A034571: Multiplicity of highest weight (or singular) vectors associated with character chi_183 of Monster module.

The programs for A034571, there is no canonical definition to state claims against.
-/

/-! ## A034571.P2861962040542605149

`A034580(n+1)-A329455(A034554(n+1))`
-/

namespace A034571.P2861962040542605149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034580 (n + 1) - A329455 (A034554 (n + 1)).toNat

end

end A034571.P2861962040542605149

/-! ## A034571.P9265455325753438895

`A034580(n+1)-A329455(A034562(n+1))`
-/

namespace A034571.P9265455325753438895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034580 (n + 1) - A329455 (A034562 (n + 1)).toNat

end

end A034571.P9265455325753438895

/-! ## A034571.P16369020007771147237

`A047412(n+4)%Δ[A031285(n+1)]`
-/

namespace A034571.P16369020007771147237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047412 (n + 4)) (f1 (n + 1) - f1 n)

end

end A034571.P16369020007771147237

/-! ## A034571.P14003879793094617463

`A034580(n+1)-A231923(A034573(n+1))`
-/

namespace A034571.P14003879793094617463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034580 (n + 1) - A231923 (A034573 (n + 1)).toNat

end

end A034571.P14003879793094617463

/-! ## A034571.P7671399170441392277

`A285007(A322058(n))`
-/

namespace A034571.P7671399170441392277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A322058 n).toNat

end

end A034571.P7671399170441392277

/-!
# A034572: Multiplicity of highest weight (or singular) vectors associated with character chi_184 of Monster module.

The programs for A034572, there is no canonical definition to state claims against.
-/

/-! ## A034572.P12480700973843109772

`∑[A049581(A034535(n+1)²)]`
-/

namespace A034572.P12480700973843109772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A034535 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034572.P12480700973843109772

/-! ## A034572.P5027890187106810365

`Δ[A308892(A034526(n+1)+5)]`
-/

namespace A034572.P5027890187106810365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308892 (A034526 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034572.P5027890187106810365

/-! ## A034572.P13045206280643774945

`val(A034575(n+1)!, 4)`
-/

namespace A034572.P13045206280643774945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A034575 (n + 1)).toNat) 4

end

end A034572.P13045206280643774945

/-! ## A034572.P16098484323959632235

`A327188(C(ceil(3*n/2), 49))`
-/

namespace A034572.P16098484323959632235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327188 (Nat.choose ⌈3 * ((n : ℚ) / 2)⌉.toNat 49)

end

end A034572.P16098484323959632235

/-! ## A034572.P15470287445070208212

`A089843(A034573(n+1))`
-/

namespace A034572.P15470287445070208212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089843 (A034573 (n + 1)).toNat

end

end A034572.P15470287445070208212

/-!
# A034573: Multiplicity of highest weight (or singular) vectors associated with character chi_185 of Monster module.

The programs for A034573, there is no canonical definition to state claims against.
-/

/-! ## A034573.P11416748309215533106

`A265560(A034554(n+1)+2)-2`
-/

namespace A034573.P11416748309215533106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265560 (A034554 (n + 1) + 2).toNat - 2

end

end A034573.P11416748309215533106

/-! ## A034573.P2090291319799134878

`A265560(A034562(n+1)+2)-2`
-/

namespace A034573.P2090291319799134878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265560 (A034562 (n + 1) + 2).toNat - 2

end

end A034573.P2090291319799134878

/-! ## A034573.P13650555157102844220

`(2*(n+4))%A311385(A185238(n))`
-/

namespace A034573.P13650555157102844220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (n + 4) : ℤ) (A311385 (A185238 n).toNat)

end

end A034573.P13650555157102844220

/-! ## A034573.P7230044398618248915

`A004524(A010196(n)*A185238(n))`
-/

namespace A034573.P7230044398618248915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A010196 n * A185238 n).toNat

end

end A034573.P7230044398618248915

/-! ## A034573.P7648468910036395194

`A053188(∑[A002378(A034572(n+1))])`
-/

namespace A034573.P7648468910036395194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A034572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034573.P7648468910036395194

/-!
# A034574: Multiplicity of highest weight (or singular) vectors associated with character chi_186 of Monster module.

The programs for A034574, there is no canonical definition to state claims against.
-/

/-! ## A034574.P3184322979110141715

`A285189(A034569(n+1))+A034568(n+1)`
-/

namespace A034574.P3184322979110141715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A034569 (n + 1)).toNat + A034568 (n + 1)

end

end A034574.P3184322979110141715

/-! ## A034574.P1361279473422966814

`A171175(C(n%∑[char[n!]]!, 8))`
-/

namespace A034574.P1361279473422966814
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171175 (Nat.choose (n % Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j)) 8)

end

end A034574.P1361279473422966814

/-! ## A034574.P12625872933471829485

`A305820(A034571(n+1))`
-/

namespace A034574.P12625872933471829485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A034571 (n + 1)).toNat

end

end A034574.P12625872933471829485

/-! ## A034574.P11898542516087806050

`A357047(A034580(n+1))`
-/

namespace A034574.P11898542516087806050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357047 (A034580 (n + 1)).toNat

end

end A034574.P11898542516087806050

/-!
# A034575: Multiplicity of highest weight (or singular) vectors associated with character chi_187 of Monster module.

The programs for A034575, there is no canonical definition to state claims against.
-/

/-! ## A034575.P10239778522312823514

`A003986(C(comp[∑[n-1]], 40))`
-/

namespace A034575.P10239778522312823514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 40)

end

end A034575.P10239778522312823514

/-! ## A034575.P10872917200862950109

`A147795(A034574(n+1))`
-/

namespace A034575.P10872917200862950109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147795 (A034574 (n + 1)).toNat

end

end A034575.P10872917200862950109

/-! ## A034575.P13251928120568238379

`A327036(A034571(n+1))`
-/

namespace A034575.P13251928120568238379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327036 (A034571 (n + 1)).toNat

end

end A034575.P13251928120568238379

/-! ## A034575.P7197740924274138900

`A180101(A034570(n+2))`
-/

namespace A034575.P7197740924274138900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A034570 (n + 2)).toNat

end

end A034575.P7197740924274138900

/-! ## A034575.P4161704352438476219

`A180101(A034573(n+2))`
-/

namespace A034575.P4161704352438476219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180101 (A034573 (n + 2)).toNat

end

end A034575.P4161704352438476219

/-!
# A034576: Multiplicity of highest weight (or singular) vectors associated with character chi_188 of Monster module.

The programs for A034576, there is no canonical definition to state claims against.
-/

/-! ## A034576.P585683469659646170

`A111660(A034563(n+1))`
-/

namespace A034576.P585683469659646170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A034563 (n + 1)).toNat

end

end A034576.P585683469659646170

/-! ## A034576.P15632137164078991636

`A320847(A034549(n+1))`
-/

namespace A034576.P15632137164078991636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320847 (A034549 (n + 1)).toNat

end

end A034576.P15632137164078991636

/-! ## A034576.P740187238283803689

`A162343(3*A034561(n+1))`
-/

namespace A034576.P740187238283803689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162343 (3 * A034561 (n + 1)).toNat

end

end A034576.P740187238283803689

/-! ## A034576.P18174727263012526363

`A319514(C(A034563(n+1), 2))`
-/

namespace A034576.P18174727263012526363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319514 (Nat.choose (A034563 (n + 1)).toNat 2)

end

end A034576.P18174727263012526363

/-! ## A034576.P8121993828085066768

`Δ[A308629(A034571(n+1)+1)]`
-/

namespace A034576.P8121993828085066768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308629 (A034571 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034576.P8121993828085066768

/-!
# A034577: Multiplicity of highest weight (or singular) vectors associated with character chi_189 of Monster module.

The programs for A034577, there is no canonical definition to state claims against.
-/

/-! ## A034577.P14743928870384032776

`A330558(A004396(n)*A034574(n+1))`
-/

namespace A034577.P14743928870384032776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A004396 n * A034574 (n + 1)).toNat

end

end A034577.P14743928870384032776

/-! ## A034577.P6401823870473087714

`A172310(A034502(n+1))%∑[xor(n, n+2)]`
-/

namespace A034577.P6401823870473087714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172310 (A034502 (n + 1)).toNat) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A034577.P6401823870473087714

/-! ## A034577.P12345059800158112859

`A055998(∑[A305615(A034551(n+1))])`
-/

namespace A034577.P12345059800158112859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 (A034551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034577.P12345059800158112859

/-! ## A034577.P17835606694832496837

`A172310(A034502(n+1))%A046974(n)`
-/

namespace A034577.P17835606694832496837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172310 (A034502 (n + 1)).toNat) (A046974 n)

end

end A034577.P17835606694832496837

/-! ## A034577.P91746671816506803

`A087066(A034560(n+1))`
-/

namespace A034577.P91746671816506803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087066 (A034560 (n + 1)).toNat

end

end A034577.P91746671816506803

/-!
# A034578: Multiplicity of highest weight (or singular) vectors associated with character chi_190 of Monster module.

The programs for A034578, there is no canonical definition to state claims against.
-/

/-! ## A034578.P17879714310532186906

`A331535(A052905(A034554(n+1)))`
-/

namespace A034578.P17879714310532186906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331535 (A052905 (A034554 (n + 1)).toNat).toNat

end

end A034578.P17879714310532186906

/-! ## A034578.P16466690207815453320

`∑{digits}[n^4, #]%A185238(n)!`
-/

namespace A034578.P16466690207815453320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % Nat.factorial (A185238 n).toNat

end

end A034578.P16466690207815453320

/-! ## A034578.P12331175601794415896

`A202308(C(comp[xor(1, 3*n-1)], 49))`
-/

namespace A034578.P12331175601794415896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((3 * n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 49)

end

end A034578.P12331175601794415896

/-! ## A034578.P11566681693281228579

`A330558(A185238(n)²)`
-/

namespace A034578.P11566681693281228579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330558 (A185238 n ^ 2).toNat

end

end A034578.P11566681693281228579

/-! ## A034578.P2527485659436465570

`A173999(A034573(n+1))`
-/

namespace A034578.P2527485659436465570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173999 (A034573 (n + 1)).toNat

end

end A034578.P2527485659436465570

/-!
# A034579: Multiplicity of highest weight (or singular) vectors associated with character chi_191 of Monster module.

The programs for A034579, there is no canonical definition to state claims against.
-/

/-! ## A034579.P17653650260971240137

`A034581(n+1)-A086431(A034558(n+1))`
-/

namespace A034579.P17653650260971240137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034581 (n + 1) - A086431 (A034558 (n + 1)).toNat

end

end A034579.P17653650260971240137

/-! ## A034579.P1944262973158013750

`A140202(A034571(n+1))`
-/

namespace A034579.P1944262973158013750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140202 (A034571 (n + 1)).toNat

end

end A034579.P1944262973158013750

/-! ## A034579.P7823220902968696965

`A305820(A034535(n+2))`
-/

namespace A034579.P7823220902968696965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305820 (A034535 (n + 2)).toNat

end

end A034579.P7823220902968696965

/-! ## A034579.P7929056109695258970

`A259361(A034566(n+1)²)`
-/

namespace A034579.P7929056109695258970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A034566 (n + 1) ^ 2).toNat

end

end A034579.P7929056109695258970

/-! ## A034579.P9046844921611527902

`and(A034559(n+1), A134562(n+1))`
-/

namespace A034579.P9046844921611527902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034559 (n + 1)) (A134562 (n + 1))

end

end A034579.P9046844921611527902

/-!
# A034580: Multiplicity of highest weight (or singular) vectors associated with character chi_192 of Monster module.

The programs for A034580, there is no canonical definition to state claims against.
-/

/-! ## A034580.P7642024915509770373

`A329455(A034554(n+1))+A034571(n+1)`
-/

namespace A034580.P7642024915509770373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329455 (A034554 (n + 1)).toNat + A034571 (n + 1)

end

end A034580.P7642024915509770373

/-! ## A034580.P15404475581312823875

`A329455(A034562(n+1))+A034571(n+1)`
-/

namespace A034580.P15404475581312823875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329455 (A034562 (n + 1)).toNat + A034571 (n + 1)

end

end A034580.P15404475581312823875

/-! ## A034580.P3898210006728340216

`A086431(A034579(n+1))`
-/

namespace A034580.P3898210006728340216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A034579 (n + 1)).toNat

end

end A034580.P3898210006728340216

/-! ## A034580.P18055651259846596786

`A351491(A034557(n+1))`
-/

namespace A034580.P18055651259846596786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351491 (A034557 (n + 1)).toNat

end

end A034580.P18055651259846596786

/-! ## A034580.P1646038549501051916

`A114526(A034554(n+2))`
-/

namespace A034580.P1646038549501051916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114526 (A034554 (n + 2)).toNat

end

end A034580.P1646038549501051916

/-!
# A034581: Multiplicity of highest weight (or singular) vectors associated with character chi_193 of Monster module.

The programs for A034581, there is no canonical definition to state claims against.
-/

/-! ## A034581.P789415330075551646

`A086431(A034558(n+1))+A034579(n+1)`
-/

namespace A034581.P789415330075551646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086431 (A034558 (n + 1)).toNat + A034579 (n + 1)

end

end A034581.P789415330075551646

/-! ## A034581.P4106949530851187553

`A123493(A034579(n+1))`
-/

namespace A034581.P4106949530851187553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123493 (A034579 (n + 1)).toNat

end

end A034581.P4106949530851187553

/-! ## A034581.P7455211201930674587

`A283303(A314992(C(n, 32)))`
-/

namespace A034581.P7455211201930674587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283303 (A314992 (Nat.choose n 32)).toNat

end

end A034581.P7455211201930674587

/-!
# A034582: Multiplicity of highest weight (or singular) vectors associated with character chi_194 of Monster module.

The programs for A034582, there is no canonical definition to state claims against.
-/

/-! ## A034582.P14341215222050809769

`A262689(A034559(n+1)*A034577(n+1))`
-/

namespace A034582.P14341215222050809769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A034559 (n + 1) * A034577 (n + 1)).toNat

end

end A034582.P14341215222050809769

/-! ## A034582.P7175632433109398343

`A262689(lcm(A034559(n+1), A034577(n+1)))`
-/

namespace A034582.P7175632433109398343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (Int.lcm (A034559 (n + 1)) (A034577 (n + 1)))

end

end A034582.P7175632433109398343

/-! ## A034582.P7133613013190200973

`A147666(A034580(n+1))-∑{digits}[n^4, #]%A185238(n)!`
-/

namespace A034582.P7133613013190200973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147666 (A034580 (n + 1)).toNat - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % Nat.factorial (A185238 n).toNat : ℕ) : ℤ)

end

end A034582.P7133613013190200973

/-! ## A034582.P15878674634142376299

`A086433(A034548(n+1))`
-/

namespace A034582.P15878674634142376299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086433 (A034548 (n + 1)).toNat

end

end A034582.P15878674634142376299

/-! ## A034582.P9021755211273420982

`A105109(A034556(n+1))`
-/

namespace A034582.P9021755211273420982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105109 (A034556 (n + 1)).toNat

end

end A034582.P9021755211273420982

/-!
# A034583: Dimension of an irreducible R-module for Clifford algebra Cl_n.

The programs for A034583, the canonical program `A034583.P7605703185313025077` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034583 has offset 0).

The definition of A034583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034583.P2666763698922888720

`2^A034584(n)`
-/

namespace A034583.P2666763698922888720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034584 n : ℤ)

end

end A034583.P2666763698922888720

namespace A034583

/-- `2^A034584(n)` -/
def P2666763698922888720.Spec : Prop :=
  ∀ n, P2666763698922888720.a n = (A034583 n : ℚ)

end A034583

/-! ## A034583.P15380580355735304189

`2^∑[char[A003485(n)]]`
-/

namespace A034583.P15380580355735304189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034583.P15380580355735304189

namespace A034583

/-- `2^∑[char[A003485(n)]]` -/
def P15380580355735304189.Spec : Prop :=
  ∀ n, (P15380580355735304189.a n : ℤ) = A034583 n

end A034583

/-! ## A034583.P14968580589339933474

`2^(n-A140427(n+1))`
-/

namespace A034583.P14968580589339933474
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - A140427 (n + 1) : ℤ)

end

end A034583.P14968580589339933474

namespace A034583

/-- `2^(n-A140427(n+1))` -/
def P14968580589339933474.Spec : Prop :=
  ∀ n, P14968580589339933474.a n = (A034583 n : ℚ)

end A034583

/-! ## A034583.P17976721074253352608

`2^(n+2-A236916(n+3))`
-/

namespace A034583.P17976721074253352608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n + 2 : ℤ) - A236916 (n + 3) : ℤ)

end

end A034583.P17976721074253352608

namespace A034583

/-- `2^(n+2-A236916(n+3))` -/
def P17976721074253352608.Spec : Prop :=
  ∀ n, P17976721074253352608.a n = (A034583 n : ℚ)

end A034583

/-! ## A034583.P10685607908531029585

`gcd(2, A211520(n))*a(n-1)` with `a(0)=1`
-/

namespace A034583.P10685607908531029585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd 2 (A211520 n) * a (n - 1)

end

end A034583.P10685607908531029585

namespace A034583

/-- `gcd(2, A211520(n))*a(n-1)` -/
def P10685607908531029585.Spec : Prop :=
  ∀ n, (P10685607908531029585.a n : ℤ) = A034583 n

end A034583

/-! ## A034583.P16652974481720616462

`(char[A047466(n+1)]+1)*a(n-1)` with `a(0)=1`
-/

namespace A034583.P16652974481720616462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) * a (n - 1)

end

end A034583.P16652974481720616462

namespace A034583

/-- `(char[A047466(n+1)]+1)*a(n-1)` -/
def P16652974481720616462.Spec : Prop :=
  ∀ n, (P16652974481720616462.a n : ℤ) = A034583 n

end A034583

/-! ## A034583.P7605703185313025077

`A034008(A034586(n+5))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034583

/-- `A034008(A034586(n+5))` -/
def P7605703185313025077.Spec : Prop :=
  ∀ n, P7605703185313025077.a n = A034583 n

theorem P7605703185313025077.correct : P7605703185313025077.Spec := by
  intro n
  simp only [A034583]

end A034583

/-! ## A034583.P14139040682925157530

`A000079(∑[char[A003485(n)]])`
-/

namespace A034583.P14139040682925157530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034583.P14139040682925157530

namespace A034583

/-- `A000079(∑[char[A003485(n)]])` -/
def P14139040682925157530.Spec : Prop :=
  ∀ n, P14139040682925157530.a n = A034583 n

end A034583

/-! ## A034583.P5411043856336584824

`A016116(n+1-A046978(n+3))`
-/

namespace A034583.P5411043856336584824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 ((n + 1 : ℤ) - A046978 (n + 3)).toNat

end

end A034583.P5411043856336584824

namespace A034583

/-- `A016116(n+1-A046978(n+3))` -/
def P5411043856336584824.Spec : Prop :=
  ∀ n, P5411043856336584824.a n = A034583 n

end A034583

/-! ## A034583.P7122181107480348511

`A158780(n+3-A046978(n+3))`
-/

namespace A034583.P7122181107480348511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 ((n + 3 : ℤ) - A046978 (n + 3)).toNat

end

end A034583.P7122181107480348511

namespace A034583

/-- `A158780(n+3-A046978(n+3))` -/
def P7122181107480348511.Spec : Prop :=
  ∀ n, P7122181107480348511.a n = A034583 n

end A034583

/-! ## A034583.P11488264706233922215

`A016116(A010163(n+1)%3+n)`
-/

namespace A034583.P11488264706233922215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (Int.tmod (A010163 (n + 1)) 3 + (n : ℤ)).toNat

end

end A034583.P11488264706233922215

namespace A034583

/-- `A016116(A010163(n+1)%3+n)` -/
def P11488264706233922215.Spec : Prop :=
  ∀ n, P11488264706233922215.a n = A034583 n

end A034583

/-!
# A034584: Radon-Hurwitz numbers: log_2 of dimension of an irreducible R-module for Clifford algebra Cl_n.

The programs for A034584, there is no canonical definition to state claims against.
-/

/-! ## A034584.P7045195705109103780

`round(n-∑[and(6, n)/6])`
-/

namespace A034584.P7045195705109103780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 6 n : ℚ) / 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034584.P7045195705109103780

/-! ## A034584.P13976070604676097716

`∑[char[∑[floor(ϕ^(n%4))]]]`
-/

namespace A034584.P13976070604676097716
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio ^ (n % 4)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P13976070604676097716

/-! ## A034584.P6895351515861259692

`∑[char[∑[C(and(3, n), 2)+1]]]`
-/

namespace A034584.P6895351515861259692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 3 n) 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P6895351515861259692

/-! ## A034584.P62133675756199417

`n-∑[ceil(sin((n+4)%8))]`
-/

namespace A034584.P62133675756199417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (((n + 4) % 8 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P62133675756199417

/-! ## A034584.P12729869320592973347

`∑[char[and(n, xor(3, n)+3)+1]]`
-/

namespace A034584.P12729869320592973347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor 3 n + 3) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P12729869320592973347

/-! ## A034584.P18278722158102002890

`∑[char[a(n-4)+8]]` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A034584.P18278722158102002890
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n f2 =>
  f2 (n - 4) + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P18278722158102002890

/-! ## A034584.P1332310468844512073

`∑[char[n+1-and(6, and(n, n+1))]]`
-/

namespace A034584.P1332310468844512073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.land 6 (Nat.land n (n + 1)) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P1332310468844512073

/-! ## A034584.P3108055962226573389

`n-∑[(a(n-2)^a(n-1)-a(n-3))²]` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A034584.P3108055962226573389
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 0, 0] fun n f1 =>
  (f1 (n - 2) ^ (f1 (n - 1)) - f1 (n - 3)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P3108055962226573389

/-! ## A034584.P17826196303673059775

`log2(A034583(n))`
-/

namespace A034584.P17826196303673059775
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034583 n : ℝ)

end

end A034584.P17826196303673059775

/-! ## A034584.P15297763535349669089

`∑[char[A003485(n)]]`
-/

namespace A034584.P15297763535349669089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003485 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034584.P15297763535349669089

/-!
# A034585: Dimension of an irreducible Z_2 graded H-module for Clifford algebra Cl_n.

The programs for A034585, the canonical program `A034585.P5034366313642579959` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034585 has offset 1).

The definition of A034585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034585.P5034366313642579959

`16*a(n-8)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=4, a(5)=8, a(6)=16, a(7)=16`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A034585

/-- `16*a(n-8)` -/
def P5034366313642579959.Spec : Prop :=
  ∀ n, (P5034366313642579959.a n : ℤ) = A034585 (n + 1)

theorem P5034366313642579959.correct : P5034366313642579959.Spec := by
  intro n
  simp only [A034585, Nat.add_sub_cancel]

end A034585

/-! ## A034585.P12738705660535310328

`∏[ceil(cos(n%8+1))+1]`
-/

namespace A034585.P12738705660535310328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((n % 8 + 1 : ℕ) : ℝ)⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034585.P12738705660535310328

namespace A034585

/-- `∏[ceil(cos(n%8+1))+1]` -/
def P12738705660535310328.Spec : Prop :=
  ∀ n, P12738705660535310328.a n = A034585 (n + 1)

end A034585

/-! ## A034585.P14575431679006692236

`2^∑[ceil(cos(and(7, n)+1))]`
-/

namespace A034585.P14575431679006692236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Nat.land 7 n + 1 : ℝ)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A034585.P14575431679006692236

namespace A034585

/-- `2^∑[ceil(cos(and(7, n)+1))]` -/
def P14575431679006692236.Spec : Prop :=
  ∀ n, P14575431679006692236.a n = (A034585 (n + 1) : ℚ)

end A034585

/-! ## A034585.P16715941016798169174

`∏[floor(cos(and(7, -n)))²+1]`
-/

namespace A034585.P16715941016798169174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Int.land 7 (-(n : ℤ)) : ℝ)⌋ ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034585.P16715941016798169174

namespace A034585

/-- `∏[floor(cos(and(7, -n)))²+1]` -/
def P16715941016798169174.Spec : Prop :=
  ∀ n, P16715941016798169174.a n = A034585 (n + 1)

end A034585

/-! ## A034585.P676980103764201022

`2^∑[floor(cos(and(7, -n)))²]`
-/

namespace A034585.P676980103764201022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Int.land 7 (-(n : ℤ)) : ℝ)⌋ ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A034585.P676980103764201022

namespace A034585

/-- `2^∑[floor(cos(and(7, -n)))²]` -/
def P676980103764201022.Spec : Prop :=
  ∀ n, P676980103764201022.a n = (A034585 (n + 1) : ℚ)

end A034585

/-! ## A034585.P12251265621270701252

`2^∑[(a(n-1)^a(n-2)-a(n-3))²]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A034585.P12251265621270701252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  (f1 (n - 1) ^ (f1 (n - 2)) - f1 (n - 3)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034585.P12251265621270701252

namespace A034585

/-- `2^∑[(a(n-1)^a(n-2)-a(n-3))²]` -/
def P12251265621270701252.Spec : Prop :=
  ∀ n, P12251265621270701252.a n = (A034585 (n + 1) : ℝ)

end A034585

/-! ## A034585.P16004237640061696310

`2^A034586(n+1)`
-/

namespace A034585.P16004237640061696310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034586 (n + 1) : ℤ)

end

end A034585.P16004237640061696310

namespace A034585

/-- `2^A034586(n+1)` -/
def P16004237640061696310.Spec : Prop :=
  ∀ n, P16004237640061696310.a n = (A034585 (n + 1) : ℚ)

end A034585

/-! ## A034585.P1314674364295578332

`∏[gcd(2, A112027(n+2))]`
-/

namespace A034585.P1314674364295578332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A112027 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A034585.P1314674364295578332

namespace A034585

/-- `∏[gcd(2, A112027(n+2))]` -/
def P1314674364295578332.Spec : Prop :=
  ∀ n, (P1314674364295578332.a n : ℤ) = A034585 (n + 1)

end A034585

/-! ## A034585.P14415299923167066777

`2^∑[A223772(n+1)%2]`
-/

namespace A034585.P14415299923167066777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223772 (n + 1)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A034585.P14415299923167066777

namespace A034585

/-- `2^∑[A223772(n+1)%2]` -/
def P14415299923167066777.Spec : Prop :=
  ∀ n, P14415299923167066777.a n = (A034585 (n + 1) : ℚ)

end A034585

/-! ## A034585.P13147333897165598267

`A000079(A034586(n+1))`
-/

namespace A034585.P13147333897165598267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034586 (n + 1)).toNat

end

end A034585.P13147333897165598267

namespace A034585

/-- `A000079(A034586(n+1))` -/
def P13147333897165598267.Spec : Prop :=
  ∀ n, P13147333897165598267.a n = A034585 (n + 1)

end A034585

/-! ## A034585.P3561843971750161730

`A034008(A034586(n+1)+2)`
-/

namespace A034585.P3561843971750161730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A034586 (n + 1) + 2).toNat

end

end A034585.P3561843971750161730

namespace A034585

/-- `A034008(A034586(n+1)+2)` -/
def P3561843971750161730.Spec : Prop :=
  ∀ n, P3561843971750161730.a n = A034585 (n + 1)

end A034585

/-! ## A034585.P12433460942022157338

`A016116(A046978(n+3)+n+1)`
-/

namespace A034585.P12433460942022157338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A046978 (n + 3) + (n + 1 : ℤ)).toNat

end

end A034585.P12433460942022157338

namespace A034585

/-- `A016116(A046978(n+3)+n+1)` -/
def P12433460942022157338.Spec : Prop :=
  ∀ n, P12433460942022157338.a n = A034585 (n + 1)

end A034585

/-! ## A034585.P3375480486912395781

`A158780(A046978(n+3)+n+3)`
-/

namespace A034585.P3375480486912395781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (A046978 (n + 3) + (n + 3 : ℤ)).toNat

end

end A034585.P3375480486912395781

namespace A034585

/-- `A158780(A046978(n+3)+n+3)` -/
def P3375480486912395781.Spec : Prop :=
  ∀ n, P3375480486912395781.a n = A034585 (n + 1)

end A034585

/-! ## A034585.P12788973679727935290

`A034583(n+4)/4`
-/

namespace A034585.P12788973679727935290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034583 (n + 4) : ℚ) / 4

end

end A034585.P12788973679727935290

namespace A034585

/-- `A034583(n+4)/4` -/
def P12788973679727935290.Spec : Prop :=
  ∀ n, P12788973679727935290.a n = (A034585 (n + 1) : ℚ)

end A034585

/-!
# A034586: Log_2 of dimension of an irreducible Z_2 graded H-module for Clifford algebra Cl_n.

The programs for A034586, the canonical program `A034586.P15851041090830579209` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034586 has offset 1).

The definition of A034586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034586.P15851041090830579209

`log2(A034585(n+1))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A034586

/-- `log2(A034585(n+1))` -/
def P15851041090830579209.Spec : Prop :=
  ∀ n, P15851041090830579209.a n = (A034586 (n + 1) : ℝ)

end A034586

/-! ## A034586.P4288134934728168801

`∑[ceil(cos(n%8+1))]`
-/

namespace A034586.P4288134934728168801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos ((n % 8 + 1 : ℕ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P4288134934728168801

namespace A034586

/-- `∑[ceil(cos(n%8+1))]` -/
def P4288134934728168801.Spec : Prop :=
  ∀ n, P4288134934728168801.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P6977545994386593022

`∑[ceil(cos(and(7, n)+1))]`
-/

namespace A034586.P6977545994386593022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (Nat.land 7 n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P6977545994386593022

namespace A034586

/-- `∑[ceil(cos(and(7, n)+1))]` -/
def P6977545994386593022.Spec : Prop :=
  ∀ n, P6977545994386593022.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P6974866709720384734

`∑[floor(cos(and(7, -n)))²]`
-/

namespace A034586.P6974866709720384734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Int.land 7 (-(n : ℤ)) : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P6974866709720384734

namespace A034586

/-- `∑[floor(cos(and(7, -n)))²]` -/
def P6974866709720384734.Spec : Prop :=
  ∀ n, P6974866709720384734.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P14909779527467278436

`∑[record[xor(21, 3*n)]%2]`
-/

namespace A034586.P14909779527467278436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 21 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P14909779527467278436

namespace A034586

/-- `∑[record[xor(21, 3*n)]%2]` -/
def P14909779527467278436.Spec : Prop :=
  ∀ n, (P14909779527467278436.a n : ℤ) = A034586 (n + 1)

end A034586

/-! ## A034586.P11426945130393001754

`∑[and(1, record[xor(21, 3*n)])]`
-/

namespace A034586.P11426945130393001754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 21 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P11426945130393001754

namespace A034586

/-- `∑[and(1, record[xor(21, 3*n)])]` -/
def P11426945130393001754.Spec : Prop :=
  ∀ n, (P11426945130393001754.a n : ℤ) = A034586 (n + 1)

end A034586

/-! ## A034586.P962646534574679929

`∑[ceil(sqrt((n+1)%8))%2]`
-/

namespace A034586.P962646534574679929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (((n + 1) % 8 : ℕ) : ℝ)⌉ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P962646534574679929

namespace A034586

/-- `∑[ceil(sqrt((n+1)%8))%2]` -/
def P962646534574679929.Spec : Prop :=
  ∀ n, P962646534574679929.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P15411256861993368548

`∑[char[a(n-4)+8]]` with `a(0)=0, a(1)=4, a(2)=5, a(3)=6`
-/

namespace A034586.P15411256861993368548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 5, 6] fun n f2 =>
  f2 (n - 4) + 8

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P15411256861993368548

namespace A034586

/-- `∑[char[a(n-4)+8]]` -/
def P15411256861993368548.Spec : Prop :=
  ∀ n, (P15411256861993368548.a n : ℤ) = A034586 (n + 1)

end A034586

/-! ## A034586.P10787754347288300705

`∑[(a(n-1)^a(n-2)-a(n-3))²]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A034586.P10787754347288300705
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  (f1 (n - 1) ^ (f1 (n - 2)) - f1 (n - 3)) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P10787754347288300705

namespace A034586

/-- `∑[(a(n-1)^a(n-2)-a(n-3))²]` -/
def P10787754347288300705.Spec : Prop :=
  ∀ n, P10787754347288300705.a n = (A034586 (n + 1) : ℝ)

end A034586

/-! ## A034586.P9231323048340314903

`∑[char[A047430(n+1)]]`
-/

namespace A034586.P9231323048340314903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047430 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P9231323048340314903

namespace A034586

/-- `∑[char[A047430(n+1)]]` -/
def P9231323048340314903.Spec : Prop :=
  ∀ n, (P9231323048340314903.a n : ℤ) = A034586 (n + 1)

end A034586

/-! ## A034586.P6895624304056608599

`∑[A223772(n+1)%2]`
-/

namespace A034586.P6895624304056608599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223772 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P6895624304056608599

namespace A034586

/-- `∑[A223772(n+1)%2]` -/
def P6895624304056608599.Spec : Prop :=
  ∀ n, P6895624304056608599.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P4610613276267047051

`∑[(xor(C(A000217(n), 3)+3, n+1)%2-1)²]`
-/

namespace A034586.P4610613276267047051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((Nat.xor (Nat.choose (A000217 n).toNat 3 + 3) (n + 1) % 2 : ℕ) : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P4610613276267047051

namespace A034586

/-- `∑[(xor(C(A000217(n), 3)+3, n+1)%2-1)²]` -/
def P4610613276267047051.Spec : Prop :=
  ∀ n, P4610613276267047051.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P1041877287024659772

`A184112(n+1)-A008726(n)`
-/

namespace A034586.P1041877287024659772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184112 (n + 1) - A008726 n

end

end A034586.P1041877287024659772

namespace A034586

/-- `A184112(n+1)-A008726(n)` -/
def P1041877287024659772.Spec : Prop :=
  ∀ n, P1041877287024659772.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P4258169445771435942

`A008621(n)+A004524(n-A004524(n))`
-/

namespace A034586.P4258169445771435942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + A004524 ((n : ℤ) - A004524 n).toNat

end

end A034586.P4258169445771435942

namespace A034586

/-- `A008621(n)+A004524(n-A004524(n))` -/
def P4258169445771435942.Spec : Prop :=
  ∀ n, P4258169445771435942.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P10956282735922786625

`A008621(n)+A004524(A004524(n+2))`
-/

namespace A034586.P10956282735922786625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n + A004524 (A004524 (n + 2)).toNat

end

end A034586.P10956282735922786625

namespace A034586

/-- `A008621(n)+A004524(A004524(n+2))` -/
def P10956282735922786625.Spec : Prop :=
  ∀ n, P10956282735922786625.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P15905909854646370591

`∑[(1-A189996(n+3))²]`
-/

namespace A034586.P15905909854646370591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A189996 (n + 3)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P15905909854646370591

namespace A034586

/-- `∑[(1-A189996(n+3))²]` -/
def P15905909854646370591.Spec : Prop :=
  ∀ n, P15905909854646370591.a n = A034586 (n + 1)

end A034586

/-! ## A034586.P1204500718763374368

`∑[floor((A047439(A002265(2*n)+1)+1)/(n+1))]`
-/

namespace A034586.P1204500718763374368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A047439 (A002265 (2 * n) + 1).toNat + 1 : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034586.P1204500718763374368

namespace A034586

/-- `∑[floor((A047439(A002265(2*n)+1)+1)/(n+1))]` -/
def P1204500718763374368.Spec : Prop :=
  ∀ n, P1204500718763374368.a n = A034586 (n + 1)

end A034586

/-!
# A034588: Primes p such that the Fibonacci iterations starting with (1, p) lead to a "nine digits anagram".

The programs for A034588, there is no canonical definition to state claims against.
-/

/-! ## A034588.P13246807053259036127

`p?[A034587(n+1)]`
-/

namespace A034588.P13246807053259036127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034588.P13246807053259036127

/-! ## A034588.P2312329151363029606

`p?[record[A034587(A117910(n))]]`
-/

namespace A034588.P2312329151363029606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034587 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034588.P2312329151363029606

/-! ## A034588.P3703064622582073203

`p?[record[A034587(A133310(n))]]`
-/

namespace A034588.P3703064622582073203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034587 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034588.P3703064622582073203

/-! ## A034588.P17707280961026848431

`p?[record[A034587(A291769(n))]]`
-/

namespace A034588.P17707280961026848431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034587 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034588.P17707280961026848431

/-! ## A034588.P14098379844556387058

`p?[record[A034587(A328396(n))]]`
-/

namespace A034588.P14098379844556387058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034587 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034588.P14098379844556387058

/-!
# A034591: Numbers whose concatenation with the next prime yields a prime.

The programs for A034591, there is no canonical definition to state claims against.
-/

/-! ## A034591.P15978607216292125825

`eq[1, A001221(A049852(abs(1-n)+1))]`
-/

namespace A034591.P15978607216292125825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A049852 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A034591.P15978607216292125825

/-! ## A034591.P12375500885073041458

`record[(n+1)*A010051(A049852(n+1))]`
-/

namespace A034591.P12375500885073041458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010051 (A049852 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034591.P12375500885073041458

/-! ## A034591.P11933223095188314417

`record[(A001222(A049852(n+1))+n)%(n+2)]-A000007(n)`
-/

namespace A034591.P11933223095188314417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A049852 (n + 1)).toNat + (n : ℤ)) (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000007 n

end

end A034591.P11933223095188314417

/-!
# A034595: Concatenation of 'nextprime(a(n)) and a(n)' and 'a(n) and nextprime(a(n))' are both prime.

The programs for A034595, there is no canonical definition to state claims against.
-/

/-! ## A034595.P17677468757465785742

`∩[A034591(n+1), A034594(n+1)]`
-/

namespace A034595.P17677468757465785742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034595.P17677468757465785742

