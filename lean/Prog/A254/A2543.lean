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
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A254300: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254300, there is no canonical definition to state claims against.
-/

/-! ## A254300.P6149899685648224121

`A254306(∑[n+1]+2)`
-/

namespace A254300.P6149899685648224121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254300.P6149899685648224121

/-! ## A254300.P11770483594956788361

`record[gcd(A002262(n), A254306(n+2))]`
-/

namespace A254300.P11770483594956788361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254306 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254300.P11770483594956788361

/-! ## A254300.P667161630068324103

`A254306(C(n+2, 2)+2)%A254264(n+1)`
-/

namespace A254300.P667161630068324103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254306 (Nat.choose (n + 2) 2 + 2)) (A254264 (n + 1))

end

end A254300.P667161630068324103

/-! ## A254300.P14944497520236136437

`A254306(A000096(n+1))+A000035(2*n)`
-/

namespace A254300.P14944497520236136437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A254300.P14944497520236136437

/-! ## A254300.P18137771488589929820

`A254306(A000096(n+1))+char[A000518(n+1)]`
-/

namespace A254300.P18137771488589929820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000518 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254300.P18137771488589929820

/-!
# A254301: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254301, there is no canonical definition to state claims against.
-/

/-! ## A254301.P8009416839560497798

`A254306(A167614(n+1))`
-/

namespace A254301.P8009416839560497798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A167614 (n + 1)).toNat

end

end A254301.P8009416839560497798

/-! ## A254301.P7463477774178907259

`A254306(A167499(n)+n)`
-/

namespace A254301.P7463477774178907259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A167499 n + (n : ℤ)).toNat

end

end A254301.P7463477774178907259

/-! ## A254301.P15923338065572600300

`A254306(A000217(n+2)+3)`
-/

namespace A254301.P15923338065572600300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A000217 (n + 2) + 3).toNat

end

end A254301.P15923338065572600300

/-! ## A254301.P12832355026579008256

`A254306(A034856(n+1)+5)`
-/

namespace A254301.P12832355026579008256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A034856 (n + 1) + 5).toNat

end

end A254301.P12832355026579008256

/-! ## A254301.P9363216637953683629

`A254306(eq[2, A131818(n+1)-2])`
-/

namespace A254301.P9363216637953683629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254301.P9363216637953683629

/-!
# A254302: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254302, there is no canonical definition to state claims against.
-/

/-! ## A254302.P14285005152645256300

`A254306(A055999(n)+10)`
-/

namespace A254302.P14285005152645256300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A055999 n + 10).toNat

end

end A254302.P14285005152645256300

/-! ## A254302.P10121016747059928048

`A254306(A167614(n+2)+1)`
-/

namespace A254302.P10121016747059928048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A167614 (n + 2) + 1).toNat

end

end A254302.P10121016747059928048

/-! ## A254302.P7126054944188086330

`A254306(A166136(n+2)-2)`
-/

namespace A254302.P7126054944188086330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A166136 (n + 2) - 2).toNat

end

end A254302.P7126054944188086330

/-! ## A254302.P2775398922684641497

`A254306(Δ[A264443(n)-n²])`
-/

namespace A254302.P2775398922684641497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (f1 (n + 1) - f1 n).toNat

end

end A254302.P2775398922684641497

/-! ## A254302.P660405040932768058

`A254306(A166136(n+1)+1+n)`
-/

namespace A254302.P660405040932768058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A254302.P660405040932768058

/-!
# A254303: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254303, there is no canonical definition to state claims against.
-/

/-! ## A254303.P12423368214765095653

`A254306(A167499(n+3))`
-/

namespace A254303.P12423368214765095653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A167499 (n + 3)).toNat

end

end A254303.P12423368214765095653

/-! ## A254303.P14521449945159373415

`A254306(A155212(n)+13)`
-/

namespace A254303.P14521449945159373415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A155212 n + 13).toNat

end

end A254303.P14521449945159373415

/-! ## A254303.P10857453783864244731

`A254306(A056000(n)+15)`
-/

namespace A254303.P10857453783864244731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A056000 n + 15).toNat

end

end A254303.P10857453783864244731

/-! ## A254303.P8799221640285089410

`A254306(Δ[A264443(n)])`
-/

namespace A254303.P8799221640285089410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (f1 (n + 1) - f1 n).toNat

end

end A254303.P8799221640285089410

/-! ## A254303.P16382671211658459595

`A254306(A374005(n+1))`
-/

namespace A254303.P16382671211658459595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A374005 (n + 1)).toNat

end

end A254303.P16382671211658459595

/-!
# A254304: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254304, there is no canonical definition to state claims against.
-/

/-! ## A254304.P4099479523838176144

`A254306(A166136(n+4))`
-/

namespace A254304.P4099479523838176144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A166136 (n + 4)).toNat

end

end A254304.P4099479523838176144

/-! ## A254304.P16101026647062230148

`A254306(A374007(n+1))`
-/

namespace A254304.P16101026647062230148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A374007 (n + 1)).toNat

end

end A254304.P16101026647062230148

/-! ## A254304.P18041486698908339698

`A254306(A052905(n+3))`
-/

namespace A254304.P18041486698908339698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A052905 (n + 3)).toNat

end

end A254304.P18041486698908339698

/-! ## A254304.P8062719113082233563

`A254306(eq[3, A219347(n)])`
-/

namespace A254304.P8062719113082233563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254304.P8062719113082233563

/-! ## A254304.P883885988791547400

`A254306(eq[5, A193592(n)])`
-/

namespace A254304.P883885988791547400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254304.P883885988791547400

/-!
# A254305: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two maximums of the diagonal and antidiagonal minus the sum of the minimums of the central row and column nondecreasing horizontally and vertically.

The programs for A254305, there is no canonical definition to state claims against.
-/

/-! ## A254305.P4363413663223443938

`A254306(A000217(n+6)+7)`
-/

namespace A254305.P4363413663223443938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A000217 (n + 6) + 7).toNat

end

end A254305.P4363413663223443938

/-! ## A254305.P7116064960594592663

`A254306(A155212(n+2)+15)`
-/

namespace A254305.P7116064960594592663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (A155212 (n + 2) + 15).toNat

end

end A254305.P7116064960594592663

/-! ## A254305.P11144599197819474986

`A254306(eq[8, A131818(n+1)])`
-/

namespace A254305.P11144599197819474986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254305.P11144599197819474986

/-! ## A254305.P4217261475199073698

`A254306(∑[n+7]+15)`
-/

namespace A254305.P4217261475199073698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254306 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A254305.P4217261475199073698

/-!
# A254307: Least k such that there are n positive integers, all less than or equal to k, such that the sum of the reciprocals of their squares equals 1.

The programs for A254307, there is no canonical definition to state claims against.
-/

/-! ## A254307.P6734388460198545348

`A031131(A227349(p?[A087195(n+1)]))`
-/

namespace A254307.P6734388460198545348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (A227349 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A254307.P6734388460198545348

/-! ## A254307.P9342397563402179419

`A158233(gcd(A001611(n), A023416(n)))`
-/

namespace A254307.P9342397563402179419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158233 (Int.gcd (A001611 n) (A023416 n))

end

end A254307.P9342397563402179419

/-! ## A254307.P13539944278228669056

`A083946(A270419(2*(n+1))+A005899(2*n+1))`
-/

namespace A254307.P13539944278228669056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083946 (A270419 (2 * (n + 1)) + A005899 (2 * n + 1)).toNat

end

end A254307.P13539944278228669056

/-! ## A254307.P12021409225308237404

`A217515(A061275(n+1)+A000217(n))`
-/

namespace A254307.P12021409225308237404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217515 (A061275 (n + 1) + A000217 n).toNat

end

end A254307.P12021409225308237404

/-! ## A254307.P3209998031768451134

`A217515(A217515(n+2)+A061275(n+1))`
-/

namespace A254307.P3209998031768451134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217515 (A217515 (n + 2) + A061275 (n + 1)).toNat

end

end A254307.P3209998031768451134

/-!
# A254308: a(n) = a(n-1) + (if a(n-1) is odd a(n-2) else a(n-3)) with a(0) = 0, a(1) = 1.

The programs for A254308, the canonical program `A254308.P9357114009033182781` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254308 has offset 0).

The definition of A254308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 527 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254308.P9357114009033182781

`a(n-1)+a(n-(gcd(2, a(n-1))+1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254308

/-- `a(n-1)+a(n-(gcd(2, a(n-1))+1))` -/
def P9357114009033182781.Spec : Prop :=
  ∀ n, (P9357114009033182781.a n : ℤ) = A254308 n

theorem P9357114009033182781.correct : P9357114009033182781.Spec := by
  intro n
  simp only [A254308]

end A254308

/-! ## A254308.P4566222436157372328

`(A249578(n+2)+A249578(n))/2`
-/

namespace A254308.P4566222436157372328
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249578 (n + 2) + A249578 n : ℚ) / 2

end

end A254308.P4566222436157372328

namespace A254308

/-- `(A249578(n+2)+A249578(n))/2` -/
def P4566222436157372328.Spec : Prop :=
  ∀ n, P4566222436157372328.a n = (A254308 n : ℚ)

end A254308

/-! ## A254308.P2975389981895219670

`A143642(n+1)-A140827(n)`
-/

namespace A254308.P2975389981895219670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143642 (n + 1) - A140827 n

end

end A254308.P2975389981895219670

namespace A254308

/-- `A143642(n+1)-A140827(n)` -/
def P2975389981895219670.Spec : Prop :=
  ∀ n, P2975389981895219670.a n = A254308 n

end A254308

/-! ## A254308.P13073882122501616645

`A295515(A294627(n+1))`
-/

namespace A254308.P13073882122501616645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A294627 (n + 1)).toNat

end

end A254308.P13073882122501616645

namespace A254308

/-- `A295515(A294627(n+1))` -/
def P13073882122501616645.Spec : Prop :=
  ∀ n, P13073882122501616645.a n = A254308 n

end A254308

/-! ## A254308.P6304150735145493704

`xor(floor(C(n, 2)/16), A004694(n))`
-/

namespace A254308.P6304150735145493704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(Nat.choose n 2 : ℚ) / 16⌋ (A004694 n)

end

end A254308.P6304150735145493704

namespace A254308

/-- `xor(floor(C(n, 2)/16), A004694(n))` -/
def P6304150735145493704.Spec : Prop :=
  ∀ n, P6304150735145493704.a n = A254308 n

end A254308

/-!
# A254311: Set of all natural numbers m such that m < S(m), where the function S is as defined in A257480.

The programs for A254311, there is no canonical definition to state claims against.
-/

/-! ## A254311.P12232137468365767915

`lt[4*n+3, A254070(n+1)]+1`
-/

namespace A254311.P12232137468365767915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A254311.P12232137468365767915

/-! ## A254311.P5191322035900995869

`eq[A286471(n+1), A376132(n+1)]`
-/

namespace A254311.P5191322035900995869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254311.P5191322035900995869

/-! ## A254311.P8644267628784925080

`lt[A236922(n), A342441(n+1)]`
-/

namespace A254311.P8644267628784925080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236922 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342441 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254311.P8644267628784925080

/-! ## A254311.P14664931315647838720

`lt[A271832(3*n+2), A333766(A357134(n+3))]`
-/

namespace A254311.P14664931315647838720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271832 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A357134 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254311.P14664931315647838720

/-! ## A254311.P14275069712045558409

`lt[n+1, A257480(n+1)]+1`
-/

namespace A254311.P14275069712045558409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A254311.P14275069712045558409

/-!
# A254313: Smallest number k such that no n-digit triangular number begins with k.

The programs for A254313, there is no canonical definition to state claims against.
-/

/-! ## A254313.P12835956029115915911

`xor(4, A308611(A038754(n)))`
-/

namespace A254313.P12835956029115915911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 4 (A308611 (A038754 n).toNat)

end

end A254313.P12835956029115915911

/-!
# A254314: Hankel transform of a(n) is A006720(n). Hankel transform of a(n+1) is A006720(n+2).

The programs for A254314, there is no canonical definition to state claims against.
-/

/-! ## A254314.P12251513667208726954

`or(A025461(A028945(n)), A155888(n))`
-/

namespace A254314.P12251513667208726954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025461 (A028945 n).toNat) (A155888 n)

end

end A254314.P12251513667208726954

/-! ## A254314.P8079082953261160520

`or(A025461(A103620(n)), A155888(n))`
-/

namespace A254314.P8079082953261160520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025461 (A103620 n).toNat) (A155888 n)

end

end A254314.P8079082953261160520

/-! ## A254314.P14056581806141685026

`or(A028303(A309861(n)), A155888(n))`
-/

namespace A254314.P14056581806141685026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028303 (A309861 n).toNat) (A155888 n)

end

end A254314.P14056581806141685026

/-! ## A254314.P3486189175029746316

`A269381(or(n, A109085(n)))`
-/

namespace A254314.P3486189175029746316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (Int.lor (n : ℤ) (A109085 n)).toNat

end

end A254314.P3486189175029746316

/-!
# A254315: Number of distinct digits in the prime factorization of n (counting terms of the form p^1 as p).

The programs for A254315, there is no canonical definition to state claims against.
-/

/-! ## A254315.P11862125946060261128

`A043537(A080670(n+2))`
-/

namespace A254315.P11862125946060261128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A080670 (n + 2)).toNat

end

end A254315.P11862125946060261128

/-! ## A254315.P12896411219829400888

`A043537(Δ[A287881(n+1)])`
-/

namespace A254315.P12896411219829400888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (f1 (n + 1) - f1 n).toNat

end

end A254315.P12896411219829400888

/-!
# A254316: Hankel transform of a(n) is A006720(n+1). Hankel transform of a(n+1) is A006720(n+3).

The programs for A254316, there is no canonical definition to state claims against.
-/

/-! ## A254316.P8136021762467204766

`∑[abs(Δ[A254314(n)]-A254314(n))]`
-/

namespace A254316.P8136021762467204766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n - A254314 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254316.P8136021762467204766

/-! ## A254316.P1186787304014615973

`A377441(∑[n+2]-1)`
-/

namespace A254316.P1186787304014615973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377441 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A254316.P1186787304014615973

/-! ## A254316.P4737988046190686156

`A377441(A034856(n+1))%A015447(n+3)`
-/

namespace A254316.P4737988046190686156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A377441 (A034856 (n + 1)).toNat) (A015447 (n + 3))

end

end A254316.P4737988046190686156

/-! ## A254316.P4009612724312435956

`A000026(A109033(n)-A128737(n))`
-/

namespace A254316.P4009612724312435956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A109033 n - A128737 n).toNat

end

end A254316.P4009612724312435956

/-! ## A254316.P10497831253282647890

`A028310(A109033(n)-A128737(n))`
-/

namespace A254316.P10497831253282647890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A109033 n - A128737 n).toNat

end

end A254316.P10497831253282647890

/-!
# A254317: a(n) is the least number k such that the number of distinct digits in the prime factorization of k is n (counting terms of the form p^1 as p).

The programs for A254317, there is no canonical definition to state claims against.
-/

/-! ## A254317.P6618665955500446720

`A145894(A215973(n))+A048251(n)`
-/

namespace A254317.P6618665955500446720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A215973 n).toNat + A048251 n

end

end A254317.P6618665955500446720

/-! ## A254317.P8280010565530833607

`A145894(A322852(n))+A048251(n)`
-/

namespace A254317.P8280010565530833607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (A322852 n).toNat + A048251 n

end

end A254317.P8280010565530833607

/-!
# A254318: Hyper equidigital numbers.

The programs for A254318, there is no canonical definition to state claims against.
-/

/-! ## A254318.P2657944278863554964

`eq[A043537(n+2), A254315(n+2)]+2`
-/

namespace A254318.P2657944278863554964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254315 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A254318.P2657944278863554964

/-!
# A254320: Numbers k such that the reversal of phi(k) is sigma(k)-k.

The programs for A254320, there is no canonical definition to state claims against.
-/

/-! ## A254320.P17699532913008935395

`A038371(n)*A161409(A338322(n))`
-/

namespace A254320.P17699532913008935395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038371 n * A161409 (A338322 n).toNat

end

end A254320.P17699532913008935395

/-!
# A254321: Hyper Wasteful numbers.

The programs for A254321, there is no canonical definition to state claims against.
-/

/-! ## A254321.P1162068058660450744

`lt[A043537(n+2), A254315(n+2)]+2`
-/

namespace A254321.P1162068058660450744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254315 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A254321.P1162068058660450744

/-! ## A254321.P16462495907444386522

`lt[A227041(n+2), A227071(A227089(n+1))]`
-/

namespace A254321.P16462495907444386522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227041 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227071 (A227089 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A254321.P16462495907444386522

/-!
# A254322: Expansion of e.g.f.: (1-11*x)^(-10/11).

The programs for A254322, the canonical program `A254322.P7245812801922796889` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254322 has offset 0).

The definition of A254322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254322.P7245812801922796889

`(11*n-1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254322

/-- `(11*n-1)*a(n-1)` -/
def P7245812801922796889.Spec : Prop :=
  ∀ n, P7245812801922796889.a n = A254322 n

theorem P7245812801922796889.correct : P7245812801922796889.Spec := by
  intro n
  simp only [A254322]

end A254322

/-! ## A254322.P3015570117944841710

`∏[abs(1-11*n)]`
-/

namespace A254322.P3015570117944841710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (11 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254322.P3015570117944841710

namespace A254322

/-- `∏[abs(1-11*n)]` -/
def P3015570117944841710.Spec : Prop :=
  ∀ n, P3015570117944841710.a n = A254322 n

end A254322

/-! ## A254322.P9397964171268907559

`abs(∏[a(n-1)+11])` with `a(0)=1, a(1)=10`
-/

namespace A254322.P9397964171268907559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254322.P9397964171268907559

namespace A254322

/-- `abs(∏[a(n-1)+11])` -/
def P9397964171268907559.Spec : Prop :=
  ∀ n, (P9397964171268907559.a n : ℤ) = A254322 n

end A254322

/-! ## A254322.P956354749187034255

`floor(∏[a(n-1)+11])` with `a(0)=1, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A254322.P956354749187034255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254322.P956354749187034255

namespace A254322

/-- `floor(∏[a(n-1)+11])` -/
def P956354749187034255.Spec : Prop :=
  ∀ n, (P956354749187034255.a n : ℤ) = A254322 n

end A254322

/-! ## A254322.P17570631481744909564

`ceil(∏[a(n-1)+11])` with `a(0)=1, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A254322.P17570631481744909564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A254322.P17570631481744909564

namespace A254322

/-- `ceil(∏[a(n-1)+11])` -/
def P17570631481744909564.Spec : Prop :=
  ∀ n, (P17570631481744909564.a n : ℤ) = A254322 n

end A254322

/-!
# A254323: Remove in decimal representation of A254143(n) all repeated digits.

The programs for A254323, there is no canonical definition to state claims against.
-/

/-! ## A254323.P6335586394456284622

`A137564(A254143(n+1))`
-/

namespace A254323.P6335586394456284622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (A254143 (n + 1)).toNat

end

end A254323.P6335586394456284622

/-! ## A254323.P16500470417320512198

`A337864(A254143(2*n+1-n))`
-/

namespace A254323.P16500470417320512198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (A254143 (2 * n + 1 - n)).toNat

end

end A254323.P16500470417320512198

/-! ## A254323.P9015467198414298570

`A337864(A254143(n+1)%A020714(n))`
-/

namespace A254323.P9015467198414298570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (Int.tmod (A254143 (n + 1)) (A020714 n)).toNat

end

end A254323.P9015467198414298570

/-! ## A254323.P17514672321644661667

`A337864(A254143(n+1))%A086113(n+1)`
-/

namespace A254323.P17514672321644661667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337864 (A254143 (n + 1)).toNat) (A086113 (n + 1))

end

end A254323.P17514672321644661667

/-! ## A254323.P16786282229972464013

`A337864(∪[A254143(n+1), A254143(n+4)])`
-/

namespace A254323.P16786282229972464013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254143 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337864 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A254323.P16786282229972464013

/-!
# A254324: Least Y such that X^3 + Y^3 = A020898(n)*Z^3 for some X <= Y and some Z.

The programs for A254324, there is no canonical definition to state claims against.
-/

/-! ## A254324.P11313079292358330287

`A308229(n+1)+A190356(n+1)`
-/

namespace A254324.P11313079292358330287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308229 (n + 1) + A190356 (n + 1)

end

end A254324.P11313079292358330287

/-! ## A254324.P4618304655346732356

`A308254(n+1)+A190356(n+1)`
-/

namespace A254324.P4618304655346732356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308254 (n + 1) + A190356 (n + 1)

end

end A254324.P4618304655346732356

/-! ## A254324.P17825986526924536100

`A308275(n+1)+A190356(n+1)`
-/

namespace A254324.P17825986526924536100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308275 (n + 1) + A190356 (n + 1)

end

end A254324.P17825986526924536100

/-!
# A254325: Sequence of semiprimes with all cumulating sums being semiprime.

The programs for A254325, there is no canonical definition to state claims against.
-/

/-! ## A254325.P18023970314715667978

`A325270(or(floor(n/2), A183558(2*n+1)))`
-/

namespace A254325.P18023970314715667978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325270 (Int.lor ⌊(n : ℚ) / 2⌋ (A183558 (2 * n + 1))).toNat

end

end A254325.P18023970314715667978

/-! ## A254325.P7361913935395744764

`A161205(A181565(2*n))+A067742(n+4)`
-/

namespace A254325.P7361913935395744764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (A181565 (2 * n)).toNat + A067742 (n + 4)

end

end A254325.P7361913935395744764

/-!
# A254326: X value for the "least" solution (X,Y,Z) to X^3 + Y^3 = A020898(n)*Z^3, X <= Y.

The programs for A254326, there is no canonical definition to state claims against.
-/

/-! ## A254326.P15489133496130963827

`lcm(A053231(n+1), A190580(n+1))`
-/

namespace A254326.P15489133496130963827
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053231 (n + 1)) (A190580 (n + 1))

end

end A254326.P15489133496130963827

/-! ## A254326.P13972112593584098896

`lcm(A059815(A000079(n)), A190580(n+1))`
-/

namespace A254326.P13972112593584098896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059815 (A000079 n).toNat) (A190580 (n + 1))

end

end A254326.P13972112593584098896

/-! ## A254326.P3108734728286001278

`A198954(A368207(n+3))+A190580(n+1)`
-/

namespace A254326.P3108734728286001278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A368207 (n + 3)).toNat + A190580 (n + 1)

end

end A254326.P3108734728286001278

/-!
# A254329: Numbers n such that all x^2 mod n are prime powers (including 0 and 1).

The programs for A254329, there is no canonical definition to state claims against.
-/

/-! ## A254329.P365677868665966555

`record[A141150(n+1)+1+n]`
-/

namespace A254329.P365677868665966555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141150 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254329.P365677868665966555

/-! ## A254329.P1115259364703862667

`comp[floor((n+2)^A025443(n+1)/3)]`
-/

namespace A254329.P1115259364703862667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) ^ (A025443 (n + 1) : ℤ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A254329.P1115259364703862667

/-! ## A254329.P589873642401922366

`lt[(lcm(4, n)/4)², A217441(∏{e}[n+1, #+1])]`
-/

namespace A254329.P589873642401922366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 4 n : ℚ) / 4) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217441 (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A254329.P589873642401922366

/-! ## A254329.P5155212514509868036

`lt[A260443(n), ∑{p}[n+1, #]*∏{e}[n+1, 3*2^#]]`
-/

namespace A254329.P5155212514509868036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f3 n), p) * (∏ p ∈ Nat.primeFactors (f4 n), 3 * 2 ^ Nat.factorization (f4 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A254329.P5155212514509868036

/-! ## A254329.P9468171072750929034

`∑[A025453(A071949(n))]`
-/

namespace A254329.P9468171072750929034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025453 (A071949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254329.P9468171072750929034

/-!
# A254332: Indices of centered pentagonal numbers (A005891) which are also squares (A000290).

The programs for A254332, the canonical program `A254332.P8855001665865996786` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254332 has offset 1).

The definition of A254332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254332.P8855001665865996786

`a(n-1)+38*a(n-2)-38*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=22, a(3)=96, a(4)=817`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254332

/-- `a(n-1)+38*a(n-2)-38*a(n-3)-a(n-4)+a(n-5)` -/
def P8855001665865996786.Spec : Prop :=
  ∀ n, P8855001665865996786.a n = A254332 (n + 1)

theorem P8855001665865996786.correct : P8855001665865996786.Spec := by
  intro n
  simp only [A254332, Nat.add_sub_cancel]

end A254332

/-! ## A254332.P10871733382737222220

`A129556(n+1)+1`
-/

namespace A254332.P10871733382737222220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129556 (n + 1) + 1

end

end A254332.P10871733382737222220

namespace A254332

/-- `A129556(n+1)+1` -/
def P10871733382737222220.Spec : Prop :=
  ∀ n, P10871733382737222220.a n = A254332 (n + 1)

end A254332

/-! ## A254332.P1120526628727893989

`ceil(A221874(n+1)/2)`
-/

namespace A254332.P1120526628727893989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A221874 (n + 1) : ℚ) / 2⌉

end

end A254332.P1120526628727893989

namespace A254332

/-- `ceil(A221874(n+1)/2)` -/
def P1120526628727893989.Spec : Prop :=
  ∀ n, P1120526628727893989.a n = A254332 (n + 1)

end A254332

/-! ## A254332.P7735870438131195402

`ceil(A031150(A047346(n+1))/2)`
-/

namespace A254332.P7735870438131195402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031150 (A047346 (n + 1)).toNat : ℚ) / 2⌉

end

end A254332.P7735870438131195402

namespace A254332

/-- `ceil(A031150(A047346(n+1))/2)` -/
def P7735870438131195402.Spec : Prop :=
  ∀ n, P7735870438131195402.a n = A254332 (n + 1)

end A254332

/-! ## A254332.P9962008172266539869

`ceil(A295334(A047241(n+1))/2)`
-/

namespace A254332.P9962008172266539869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A295334 (A047241 (n + 1)).toNat : ℚ) / 2⌉

end

end A254332.P9962008172266539869

namespace A254332

/-- `ceil(A295334(A047241(n+1))/2)` -/
def P9962008172266539869.Spec : Prop :=
  ∀ n, P9962008172266539869.a n = A254332 (n + 1)

end A254332

/-! ## A254332.P11437149531096176771

`A005668(n+1)-A222390(n+1)`
-/

namespace A254332.P11437149531096176771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 1) - A222390 (n + 1)

end

end A254332.P11437149531096176771

namespace A254332

/-- `A005668(n+1)-A222390(n+1)` -/
def P11437149531096176771.Spec : Prop :=
  ∀ n, P11437149531096176771.a n = A254332 (n + 1)

end A254332

/-! ## A254332.P14306544042079567497

`∑[gcd(A132593(n)+1, A084070(n))]`
-/

namespace A254332.P14306544042079567497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132593 n + 1) (A084070 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254332.P14306544042079567497

namespace A254332

/-- `∑[gcd(A132593(n)+1, A084070(n))]` -/
def P14306544042079567497.Spec : Prop :=
  ∀ n, (P14306544042079567497.a n : ℤ) = A254332 (n + 1)

end A254332

/-!
# A254333: Squares (A000290) which are also centered pentagonal numbers (A005891).

The programs for A254333, there is no canonical definition to state claims against.
-/

/-! ## A254333.P5687988173090261171

`A129557(n+1)²`
-/

namespace A254333.P5687988173090261171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129557 (n + 1) ^ 2

end

end A254333.P5687988173090261171

/-! ## A254333.P10920774437815034369

`record[A129557(A344180(n))²]`
-/

namespace A254333.P10920774437815034369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129557 (A344180 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254333.P10920774437815034369

/-! ## A254333.P17344992378914668232

`(A116559(A092259(n+1))/2)²`
-/

namespace A254333.P17344992378914668232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A116559 (A092259 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A254333.P17344992378914668232

/-! ## A254333.P6326602405025022111

`(5*A129556(n+1)²+5*A129556(n+1)+2)/2`
-/

namespace A254333.P6326602405025022111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A129556 (n + 1) ^ 2 + 5 * A129556 (n + 1) + 2 : ℚ) / 2

end

end A254333.P6326602405025022111

/-! ## A254333.P770442112400743210

`A129557(n+1)^A020639(A058320(n))`
-/

namespace A254333.P770442112400743210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129557 (n + 1) : ℚ) ^ (A020639 (A058320 n).toNat : ℤ)

end

end A254333.P770442112400743210

/-! ## A254333.P18200066105864727884

`A129557(n+1)^A020639(A103517(n))`
-/

namespace A254333.P18200066105864727884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129557 (n + 1) : ℚ) ^ (A020639 (A103517 n).toNat : ℤ)

end

end A254333.P18200066105864727884

/-! ## A254333.P12488034817975185521

`A129557(n+1)^A020639(A315729(n))`
-/

namespace A254333.P12488034817975185521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129557 (n + 1) : ℚ) ^ (A020639 (A315729 n).toNat : ℤ)

end

end A254333.P12488034817975185521

/-! ## A254333.P16387966867442320613

`record[A129557(A344180(n))]*A129557(n+1)`
-/

namespace A254333.P16387966867442320613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129557 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A129557 (n + 1)

end

end A254333.P16387966867442320613

/-! ## A254333.P4336294048209717745

`A129557(n+1)^A000005(A027746(n+1))`
-/

namespace A254333.P4336294048209717745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129557 (n + 1) : ℚ) ^ (A000005 (A027746 (n + 1)).toNat : ℤ)

end

end A254333.P4336294048209717745

/-! ## A254333.P8420839074007686117

`A129557(n+1)^A000005(A129563(n+1))`
-/

namespace A254333.P8420839074007686117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129557 (n + 1) : ℚ) ^ (A000005 (A129563 (n + 1)).toNat : ℤ)

end

end A254333.P8420839074007686117

/-!
# A254334: Powers of 3 in base 60, concatenating the decimal values of the sexagesimal digits.

The programs for A254334, there is no canonical definition to state claims against.
-/

/-! ## A254334.P9122597980510179377

`A055643(A000244(n))`
-/

namespace A254334.P9122597980510179377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A000244 n).toNat

end

end A254334.P9122597980510179377

/-! ## A254334.P6361444638755163999

`A250089(A188426(n))`
-/

namespace A254334.P6361444638755163999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250089 (A188426 n).toNat

end

end A254334.P6361444638755163999

/-! ## A254334.P14510780708689678683

`A055643(3^n)`
-/

namespace A254334.P14510780708689678683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (3 ^ n)

end

end A254334.P14510780708689678683

/-! ## A254334.P5113585524403297763

`record[A055643(A048883(n))]`
-/

namespace A254334.P5113585524403297763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254334.P5113585524403297763

/-! ## A254334.P10986144523902540874

`record[A055643(A106516(n))]`
-/

namespace A254334.P10986144523902540874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A106516 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254334.P10986144523902540874

/-!
# A254335: Powers of 5 in base 60, concatenating the decimal values of the sexagesimal digits.

The programs for A254335, there is no canonical definition to state claims against.
-/

/-! ## A254335.P15217557454462894018

`A055643(A000351(n))`
-/

namespace A254335.P15217557454462894018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A000351 n).toNat

end

end A254335.P15217557454462894018

/-! ## A254335.P6184838166632410946

`A250089(A188427(n))`
-/

namespace A254335.P6184838166632410946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250089 (A188427 n).toNat

end

end A254335.P6184838166632410946

/-!
# A254336: Powers of 10 in base 60, concatenating the decimal values of the sexagesimal digits.

The programs for A254336, there is no canonical definition to state claims against.
-/

/-! ## A254336.P9226782678137858878

`A055643(A011557(n))`
-/

namespace A254336.P9226782678137858878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055643 (A011557 n).toNat

end

end A254336.P9226782678137858878

/-! ## A254336.P10598726485728231536

`A250089(A106598(n))`
-/

namespace A254336.P10598726485728231536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250089 (A106598 n).toNat

end

end A254336.P10598726485728231536

/-!
# A254338: Initial digits of A254143 in decimal representation.

The programs for A254338, there is no canonical definition to state claims against.
-/

/-! ## A254338.P17733709779167328997

`A004086(A254323(n+1))%10`
-/

namespace A254338.P17733709779167328997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A254323 (n + 1)).toNat) 10

end

end A254338.P17733709779167328997

/-! ## A254338.P3826639302977269244

`A004086(A254143(n+1))%10`
-/

namespace A254338.P3826639302977269244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A254143 (n + 1)).toNat) 10

end

end A254338.P3826639302977269244

/-! ## A254338.P18022691845963267995

`A000030(A254323(n+1))`
-/

namespace A254338.P18022691845963267995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (A254323 (n + 1)).toNat

end

end A254338.P18022691845963267995

/-! ## A254338.P689995977625283895

`A254339(n+1)-A037904(A254323(n+1))`
-/

namespace A254338.P689995977625283895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254339 (n + 1) - A037904 (A254323 (n + 1)).toNat

end

end A254338.P689995977625283895

/-! ## A254338.P8374388039449880049

`A254143(n+1)%10-A037904(A254323(n+1))`
-/

namespace A254338.P8374388039449880049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254143 (n + 1)) 10 - A037904 (A254323 (n + 1)).toNat

end

end A254338.P8374388039449880049

/-!
# A254339: Final digits of A254143 in decimal representation.

The programs for A254339, there is no canonical definition to state claims against.
-/

/-! ## A254339.P3935563027884356731

`A254143(n+1)%10`
-/

namespace A254339.P3935563027884356731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254143 (n + 1)) 10

end

end A254339.P3935563027884356731

/-! ## A254339.P7802172683586033483

`A254323(n+1)%10`
-/

namespace A254339.P7802172683586033483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254323 (n + 1)) 10

end

end A254339.P7802172683586033483

/-! ## A254339.P1960654800966964106

`A010879(A254323(n+1))`
-/

namespace A254339.P1960654800966964106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A254323 (n + 1)).toNat

end

end A254339.P1960654800966964106

/-! ## A254339.P17429505623392786918

`A010889(A254323(n+1)-1)`
-/

namespace A254339.P17429505623392786918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A254323 (n + 1) - 1).toNat

end

end A254339.P17429505623392786918

/-! ## A254339.P17830328264862620243

`A054055(A254323(n+1)+10)`
-/

namespace A254339.P17830328264862620243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A254323 (n + 1) + 10).toNat

end

end A254339.P17830328264862620243

/-!
# A254340: Sum of the distinct prime factors of n plus n+1: a(n) = A008472(n) + n + 1.

The programs for A254340, the canonical program `A254340.P17394909543363864002` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254340 has offset 1).

The definition of A254340 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A254340.P9540291601562186238

`A075653(n+1)+1`
-/

namespace A254340.P9540291601562186238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075653 (n + 1) + 1

end

end A254340.P9540291601562186238

namespace A254340

/-- `A075653(n+1)+1` -/
def P9540291601562186238.Spec : Prop :=
  ∀ n, P9540291601562186238.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P6264095880439005930

`A074372(n+1)+n+1`
-/

namespace A254340.P6264095880439005930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1) + (n + 1 : ℤ)

end

end A254340.P6264095880439005930

namespace A254340

/-- `A074372(n+1)+n+1` -/
def P6264095880439005930.Spec : Prop :=
  ∀ n, P6264095880439005930.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P17394909543363864002

`A008472(n+1)+n+1+1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254340

/-- `A008472(n+1)+n+1+1` -/
def P17394909543363864002.Spec : Prop :=
  ∀ n, P17394909543363864002.a n = A254340 (n + 1)

theorem P17394909543363864002.correct : P17394909543363864002.Spec := by
  intro n
  simp only [A254340, Nat.add_sub_cancel]

end A254340

/-! ## A254340.P8036224480909715851

`∑{p}[n+1, #]+2+n`
-/

namespace A254340.P8036224480909715851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p + 2 + n

end

end A254340.P8036224480909715851

namespace A254340

/-- `∑{p}[n+1, #]+2+n` -/
def P8036224480909715851.Spec : Prop :=
  ∀ n, (P8036224480909715851.a n : ℤ) = A254340 (n + 1)

end A254340

/-! ## A254340.P9830935058074921845

`Δ[A024924(n)]+2+n`
-/

namespace A254340.P9830935058074921845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 + (n : ℤ)

end

end A254340.P9830935058074921845

namespace A254340

/-- `Δ[A024924(n)]+2+n` -/
def P9830935058074921845.Spec : Prop :=
  ∀ n, P9830935058074921845.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P7808180140188692568

`A008472(n+1)+n+2`
-/

namespace A254340.P7808180140188692568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (n + 2 : ℤ)

end

end A254340.P7808180140188692568

namespace A254340

/-- `A008472(n+1)+n+2` -/
def P7808180140188692568.Spec : Prop :=
  ∀ n, P7808180140188692568.a n = A254340 (n + 1)

theorem P7808180140188692568.correct : P7808180140188692568.Spec := by
  intro n
  simp only [A254340, Nat.add_sub_cancel, A254340.P7808180140188692568.a, A254340.P17394909543363864002.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A254340

/-! ## A254340.P5081182897928903321

`sqrt(A235323(n+1))+2+n`
-/

namespace A254340.P5081182897928903321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A235323 (n + 1) : ℝ) + 2 + (n : ℝ)

end

end A254340.P5081182897928903321

namespace A254340

/-- `sqrt(A235323(n+1))+2+n` -/
def P5081182897928903321.Spec : Prop :=
  ∀ n, P5081182897928903321.a n = (A254340 (n + 1) : ℝ)

end A254340

/-! ## A254340.P7677664566873864666

`2*n+3-A076694(n+1)`
-/

namespace A254340.P7677664566873864666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A076694 (n + 1)

end

end A254340.P7677664566873864666

namespace A254340

/-- `2*n+3-A076694(n+1)` -/
def P7677664566873864666.Spec : Prop :=
  ∀ n, P7677664566873864666.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P341491853156123190

`n+2+∑{d}[n+1, A061397(#)]`
-/

namespace A254340.P341491853156123190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) + ∑ d ∈ Nat.divisors (f1 n), A061397 d

end

end A254340.P341491853156123190

namespace A254340

/-- `n+2+∑{d}[n+1, A061397(#)]` -/
def P341491853156123190.Spec : Prop :=
  ∀ n, P341491853156123190.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P5518699263964004344

`A001414(∏{p}[n+1, #])+n+2`
-/

namespace A254340.P5518699263964004344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 2 : ℤ)

end

end A254340.P5518699263964004344

namespace A254340

/-- `A001414(∏{p}[n+1, #])+n+2` -/
def P5518699263964004344.Spec : Prop :=
  ∀ n, P5518699263964004344.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P12645097335961341223

`A008475(∏{p}[n+1, #])+n+2`
-/

namespace A254340.P12645097335961341223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 2 : ℤ)

end

end A254340.P12645097335961341223

namespace A254340

/-- `A008475(∏{p}[n+1, #])+n+2` -/
def P12645097335961341223.Spec : Prop :=
  ∀ n, P12645097335961341223.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P12061537196966861377

`A023889(∏{p}[n+1, #])+n+2`
-/

namespace A254340.P12061537196966861377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023889 (∏ p ∈ Nat.primeFactors (f1 n), p) + (n + 2 : ℤ)

end

end A254340.P12061537196966861377

namespace A254340

/-- `A023889(∏{p}[n+1, #])+n+2` -/
def P12061537196966861377.Spec : Prop :=
  ∀ n, P12061537196966861377.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P2481484396247106120

`∑{d}[n+1, #%A014963(#)²]+n+2`
-/

namespace A254340.P2481484396247106120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (d : ℤ) (A014963 d ^ 2) + (n + 2 : ℤ)

end

end A254340.P2481484396247106120

namespace A254340

/-- `∑{d}[n+1, #%A014963(#)²]+n+2` -/
def P2481484396247106120.Spec : Prop :=
  ∀ n, P2481484396247106120.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P15228176175498210593

`Δ[A024924(n)+A000096(n)]`
-/

namespace A254340.P15228176175498210593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024924 n + A000096 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A254340.P15228176175498210593

namespace A254340

/-- `Δ[A024924(n)+A000096(n)]` -/
def P15228176175498210593.Spec : Prop :=
  ∀ n, P15228176175498210593.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P1680502975828038511

`A023888(A007947(n+1))+1+n`
-/

namespace A254340.P1680502975828038511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A007947 (n + 1)).toNat + 1 + (n : ℤ)

end

end A254340.P1680502975828038511

namespace A254340

/-- `A023888(A007947(n+1))+1+n` -/
def P1680502975828038511.Spec : Prop :=
  ∀ n, P1680502975828038511.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P14688016400384277411

`A159076(n+1)+A075795(n+1)`
-/

namespace A254340.P14688016400384277411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1) + A075795 (n + 1)

end

end A254340.P14688016400384277411

namespace A254340

/-- `A159076(n+1)+A075795(n+1)` -/
def P14688016400384277411.Spec : Prop :=
  ∀ n, P14688016400384277411.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P4226584857955395976

`A155085(n+1)-A023891(n+1)`
-/

namespace A254340.P4226584857955395976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A023891 (n + 1)

end

end A254340.P4226584857955395976

namespace A254340

/-- `A155085(n+1)-A023891(n+1)` -/
def P4226584857955395976.Spec : Prop :=
  ∀ n, P4226584857955395976.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P18129850843580530034

`A100030(n+1)+1-A114285(n)`
-/

namespace A254340.P18129850843580530034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100030 (n + 1) + (1 - A114285 n)

end

end A254340.P18129850843580530034

namespace A254340

/-- `A100030(n+1)+1-A114285(n)` -/
def P18129850843580530034.Spec : Prop :=
  ∀ n, P18129850843580530034.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P453759958466771083

`A008474(n+1)+A069345(n+1)+1`
-/

namespace A254340.P453759958466771083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) + (A069345 (n + 1) + 1)

end

end A254340.P453759958466771083

namespace A254340

/-- `A008474(n+1)+A069345(n+1)+1` -/
def P453759958466771083.Spec : Prop :=
  ∀ n, P453759958466771083.a n = A254340 (n + 1)

end A254340

/-! ## A254340.P13154598308188588565

`A001221(n+1)+A332775(n+1)+1`
-/

namespace A254340.P13154598308188588565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A332775 (n + 1) + 1)

end

end A254340.P13154598308188588565

namespace A254340

/-- `A001221(n+1)+A332775(n+1)+1` -/
def P13154598308188588565.Spec : Prop :=
  ∀ n, P13154598308188588565.a n = A254340 (n + 1)

end A254340

/-!
# A254343: a(0) = 1; a(n+1) is the smallest number not in the sequence such that a(n+1) - Sum_{i=1..n} a(i) divides a(n+1) - Product_{i=1..n} a(i).

The programs for A254343, there is no canonical definition to state claims against.
-/

/-! ## A254343.P10840388163478638412

`∑[A301957(A149790(n))]`
-/

namespace A254343.P10840388163478638412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (A149790 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254343.P10840388163478638412

/-! ## A254343.P9353389849085141320

`∑[A320163(A001222(n!))]`
-/

namespace A254343.P9353389849085141320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320163 (A001222 (Nat.factorial n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254343.P9353389849085141320

/-! ## A254343.P10117064816960515539

`record[A045841(∑[A313869(n)])]`
-/

namespace A254343.P10117064816960515539
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313869 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045841 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254343.P10117064816960515539

/-! ## A254343.P4277050168320132253

`A002202(record[Δ[A329161(n+1)]])`
-/

namespace A254343.P4277050168320132253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329161 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A254343.P4277050168320132253

/-! ## A254343.P11780931835964186156

`eq[A000120(n), A112340(A000001(n+2))]`
-/

namespace A254343.P11780931835964186156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112340 (A000001 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A254343.P11780931835964186156

/-!
# A254346: Expansion of f(x, x^5) * f(-x^6) / f(x)^2 in powers of x where f() is a Ramanujan theta function.

The programs for A254346, there is no canonical definition to state claims against.
-/

/-! ## A254346.P1343526572808856626

`(-1)^n*A132302(n)`
-/

namespace A254346.P1343526572808856626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132302 n

end

end A254346.P1343526572808856626

/-! ## A254346.P16759247841695916167

`A033999(n)*A132975(2*n+1)`
-/

namespace A254346.P16759247841695916167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A132975 (2 * n + 1)

end

end A254346.P16759247841695916167

/-! ## A254346.P6590628942074818824

`A062157(n+1)*A132975(2*n+1)`
-/

namespace A254346.P6590628942074818824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A132975 (2 * n + 1)

end

end A254346.P6590628942074818824

/-! ## A254346.P3317129195477298270

`A254372(Δ[n²])/2`
-/

namespace A254346.P3317129195477298270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254372 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A254346.P3317129195477298270

/-! ## A254346.P12675751894860111657

`A033999(n)*A124243(2*n+1)`
-/

namespace A254346.P12675751894860111657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A124243 (2 * n + 1)

end

end A254346.P12675751894860111657

/-! ## A254346.P4460610181725469803

`A033999(n)*A213267(2*n+1)`
-/

namespace A254346.P4460610181725469803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A213267 (2 * n + 1)

end

end A254346.P4460610181725469803

/-! ## A254346.P6233391760033434636

`A033999(n+1)*A145977(2*n+1)`
-/

namespace A254346.P6233391760033434636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A145977 (2 * n + 1)

end

end A254346.P6233391760033434636

/-! ## A254346.P10785793685294509496

`(2-A010684(n))*A132180(2*n+1)`
-/

namespace A254346.P10785793685294509496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A010684 n) * A132180 (2 * n + 1)

end

end A254346.P10785793685294509496

/-! ## A254346.P15708904647956640835

`(2-A153284(n+2))*A132180(2*n+1)`
-/

namespace A254346.P15708904647956640835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153284 (n + 2)) * A132180 (2 * n + 1)

end

end A254346.P15708904647956640835

/-! ## A254346.P12584666584179302024

`(2-A153284(n+2))*A213267(2*n+1)`
-/

namespace A254346.P12584666584179302024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A153284 (n + 2)) * A213267 (2 * n + 1)

end

end A254346.P12584666584179302024

/-! ## A254346.P4091513078356071663

`A141094(2*n+1)/A141094(n+1)*A213267(n+1)`
-/

namespace A254346.P4091513078356071663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141094 (2 * n + 1) : ℚ) / (A141094 (n + 1) : ℚ) * (A213267 (n + 1) : ℚ)

end

end A254346.P4091513078356071663

/-! ## A254346.P1562077300702297522

`A020985(2*n+1)*A124243(2*n+1)*A020985(n)`
-/

namespace A254346.P1562077300702297522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (2 * n + 1) * A124243 (2 * n + 1) * A020985 n

end

end A254346.P1562077300702297522

/-! ## A254346.P7758192630619804175

`A145977(2*n+1)/A124243(n+2)*A132975(n+2)`
-/

namespace A254346.P7758192630619804175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145977 (2 * n + 1) : ℚ) / (A124243 (n + 2) : ℚ) * (A132975 (n + 2) : ℚ)

end

end A254346.P7758192630619804175

/-! ## A254346.P11957177875081633741

`A132302(n)/A033999(n)`
-/

namespace A254346.P11957177875081633741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132302 n : ℚ) / (A033999 n : ℚ)

end

end A254346.P11957177875081633741

/-! ## A254346.P12494439744406170439

`A132302(n)/A145977(n)*A213267(n)`
-/

namespace A254346.P12494439744406170439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132302 n : ℚ) / (A145977 n : ℚ) * (A213267 n : ℚ)

end

end A254346.P12494439744406170439

/-! ## A254346.P9617365367783134018

`A124243(n+1)*A132302(n)/A132975(n+1)`
-/

namespace A254346.P9617365367783134018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124243 (n + 1) * A132302 n : ℚ) / (A132975 (n + 1) : ℚ)

end

end A254346.P9617365367783134018

/-!
# A254353: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254353, there is no canonical definition to state claims against.
-/

/-! ## A254353.P2555551860646512295

`A254361(∑[4*n]+1)`
-/

namespace A254353.P2555551860646512295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254353.P2555551860646512295

/-! ## A254353.P10550597595441678727

`A279948(n)+A254361(A001844(n))`
-/

namespace A254353.P10550597595441678727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279948 n + A254361 (A001844 n).toNat

end

end A254353.P10550597595441678727

/-! ## A254353.P7561159209902781262

`A254361(A001844(n))+A085978(n+1)`
-/

namespace A254353.P7561159209902781262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A001844 n).toNat + A085978 (n + 1)

end

end A254353.P7561159209902781262

/-! ## A254353.P4859371609132105815

`A018252(gcd(n, n+1))*A254361(A001844(n))`
-/

namespace A254353.P4859371609132105815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Nat.gcd n (n + 1)) * A254361 (A001844 n).toNat

end

end A254353.P4859371609132105815

/-! ## A254353.P11135557677071768487

`A007318(A161680(n))*A254361(A001844(n))`
-/

namespace A254353.P11135557677071768487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A161680 n).toNat * A254361 (A001844 n).toNat

end

end A254353.P11135557677071768487

/-!
# A254354: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254354, there is no canonical definition to state claims against.
-/

/-! ## A254354.P15514667526263257596

`A254586(∑[n]+1)`
-/

namespace A254354.P15514667526263257596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254354.P15514667526263257596

/-! ## A254354.P16981794450948262313

`record[A254586(n+1)/A022166(n)]`
-/

namespace A254354.P16981794450948262313
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254586 (n + 1) : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254354.P16981794450948262313

/-! ## A254354.P4510604040835679272

`record[A254586(n+1)/A022167(n)]`
-/

namespace A254354.P4510604040835679272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254586 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254354.P4510604040835679272

/-! ## A254354.P10239769234536263948

`record[A254586(n+1)/A225434(n)]`
-/

namespace A254354.P10239769234536263948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254586 (n + 1) : ℚ) / (A225434 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254354.P10239769234536263948

/-! ## A254354.P14840445474517383970

`record[gcd(A004197(n), A254586(n+1))]`
-/

namespace A254354.P14840445474517383970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004197 n) (A254586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254354.P14840445474517383970

/-!
# A254355: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254355, there is no canonical definition to state claims against.
-/

/-! ## A254355.P5491287266686123083

`A254361(∑[n+1]+2)`
-/

namespace A254355.P5491287266686123083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254355.P5491287266686123083

/-! ## A254355.P6009905615137713378

`record[gcd(A229001(n), A254361(n+2))]`
-/

namespace A254355.P6009905615137713378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229001 n) (A254361 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254355.P6009905615137713378

/-! ## A254355.P15190434283321420627

`A318657(2*(n+1))+A254361(A133263(n+1))`
-/

namespace A254355.P15190434283321420627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318657 (2 * (n + 1)) + A254361 (A133263 (n + 1)).toNat

end

end A254355.P15190434283321420627

/-! ## A254355.P1669521019401905600

`record[A254361(abs(A201163(n)))]`
-/

namespace A254355.P1669521019401905600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254355.P1669521019401905600

/-! ## A254355.P8696643823451210482

`lcm(A033999(n), A254361(A055998(n)+2))`
-/

namespace A254355.P8696643823451210482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254361 (A055998 n + 2).toNat)

end

end A254355.P8696643823451210482

/-!
# A254356: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254356, there is no canonical definition to state claims against.
-/

/-! ## A254356.P12022723770833086470

`A254361(∑[n+2]+4)`
-/

namespace A254356.P12022723770833086470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254356.P12022723770833086470

/-! ## A254356.P15485678880586247682

`lcm(A057077(n), A254361(A167614(n+1)))`
-/

namespace A254356.P15485678880586247682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A254361 (A167614 (n + 1)).toNat)

end

end A254356.P15485678880586247682

/-! ## A254356.P8302816214702934766

`or(A000007(n), A254361(A167614(n+1)))`
-/

namespace A254356.P8302816214702934766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A254361 (A167614 (n + 1)).toNat)

end

end A254356.P8302816214702934766

/-! ## A254356.P9350614016855886759

`A254361(A167614(n+1))+A070202(n+1)`
-/

namespace A254356.P9350614016855886759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A167614 (n + 1)).toNat + A070202 (n + 1)

end

end A254356.P9350614016855886759

/-! ## A254356.P13547092716129819046

`or(A070109(n+1), A254361(A167614(n+1)))`
-/

namespace A254356.P13547092716129819046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A070109 (n + 1)) (A254361 (A167614 (n + 1)).toNat)

end

end A254356.P13547092716129819046

/-!
# A254357: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254357, there is no canonical definition to state claims against.
-/

/-! ## A254357.P17991840267026709460

`A254361(∑[n+3]+7)`
-/

namespace A254357.P17991840267026709460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254357.P17991840267026709460

/-! ## A254357.P9379105428797823588

`lcm(A033999(n), A254361(A055998(n+2)))`
-/

namespace A254357.P9379105428797823588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A254361 (A055998 (n + 2)).toNat)

end

end A254357.P9379105428797823588

/-! ## A254357.P15290624180647450478

`A007318(C(2, n))*A254361(A055998(n+2))`
-/

namespace A254357.P15290624180647450478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A254361 (A055998 (n + 2)).toNat

end

end A254357.P15290624180647450478

/-! ## A254357.P2005288094851634117

`A014963(6*(n+1))*A254361(A055998(n+2))`
-/

namespace A254357.P2005288094851634117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A254361 (A055998 (n + 2)).toNat

end

end A254357.P2005288094851634117

/-! ## A254357.P11000328966311528066

`A254361(A055998(n+2))/A014963(A008889(n))`
-/

namespace A254357.P11000328966311528066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254361 (A055998 (n + 2)).toNat : ℚ) / (A014963 (A008889 n).toNat : ℚ)

end

end A254357.P11000328966311528066

/-!
# A254358: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254358, there is no canonical definition to state claims against.
-/

/-! ## A254358.P14961160462473551218

`A254361(A374005(n+1))`
-/

namespace A254358.P14961160462473551218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A374005 (n + 1)).toNat

end

end A254358.P14961160462473551218

/-! ## A254358.P3945029438441768666

`A254361(A056000(n)+15)`
-/

namespace A254358.P3945029438441768666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A056000 n + 15).toNat

end

end A254358.P3945029438441768666

/-! ## A254358.P18327979846364963900

`A254361(eq[7, A066657(n)])`
-/

namespace A254358.P18327979846364963900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254358.P18327979846364963900

/-! ## A254358.P16657938546858475763

`A254361(eq[6, A131818(n+1)])`
-/

namespace A254358.P16657938546858475763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254358.P16657938546858475763

/-! ## A254358.P6732690279445128474

`A254361(comp[2*n]+∑[n+3]+7)`
-/

namespace A254358.P6732690279445128474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (∑ j ∈ Finset.range (n + 1), f2 j + 7))

end

end A254358.P6732690279445128474

/-!
# A254359: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254359, there is no canonical definition to state claims against.
-/

/-! ## A254359.P13024921369746019285

`A254361(A374007(n+1))`
-/

namespace A254359.P13024921369746019285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A374007 (n + 1)).toNat

end

end A254359.P13024921369746019285

/-! ## A254359.P1209710845326235958

`A254361(A056115(n)+21)`
-/

namespace A254359.P1209710845326235958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A056115 n + 21).toNat

end

end A254359.P1209710845326235958

/-! ## A254359.P17672830697800161665

`A254361(A052905(n+2)+11)`
-/

namespace A254359.P17672830697800161665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A052905 (n + 2) + 11).toNat

end

end A254359.P17672830697800161665

/-! ## A254359.P3099673949353818746

`A254361(eq[7, A131818(n+1)])`
-/

namespace A254359.P3099673949353818746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254359.P3099673949353818746

/-! ## A254359.P7449681830294379619

`A254361(eq[3, A219347(n)])`
-/

namespace A254359.P7449681830294379619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254359.P7449681830294379619

/-!
# A254360: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two medians of the central row and the central column and the two maximums of the diagonal and antidiagonal nondecreasing horizontally and vertically.

The programs for A254360, there is no canonical definition to state claims against.
-/

/-! ## A254360.P11210172622122403372

`A254361(A374008(n+1))`
-/

namespace A254360.P11210172622122403372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A374008 (n + 1)).toNat

end

end A254360.P11210172622122403372

/-! ## A254360.P2242847127051319261

`A254361(A056119(n)+28)`
-/

namespace A254360.P2242847127051319261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A056119 n + 28).toNat

end

end A254360.P2242847127051319261

/-! ## A254360.P5144270666902636195

`A254361(eq[11, A066657(n)])`
-/

namespace A254360.P5144270666902636195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254360.P5144270666902636195

/-! ## A254360.P10635154267201720209

`A254361(eq[8, A131818(n+1)])`
-/

namespace A254360.P10635154267201720209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254360.P10635154267201720209

/-! ## A254360.P2800711501706089778

`A254361(A134869(n+8)-8-comp[2*n])`
-/

namespace A254360.P2800711501706089778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254361 (A134869 (n + 8) - 8 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A254360.P2800711501706089778

/-!
# A254362: a(n) = 3*2^n + 3^n + 6.

The programs for A254362, the canonical program `A254362.P6743988378768268642` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254362 has offset 0).

The definition of A254362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+3^n+6` (program `A254362.P6743988378768268642`, by `A254362.P6743988378768268642.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254362.P6743988378768268642

`3*2^n+3^n+6`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254362

/-- `3*2^n+3^n+6` -/
def P6743988378768268642.Spec : Prop :=
  ∀ n, (P6743988378768268642.a n : ℤ) = A254362 n

theorem P6743988378768268642.correct : P6743988378768268642.Spec := by
  intro n
  simp only [A254362]

end A254362

/-! ## A254362.P894442007336155703

`abs(A140504(n)-A254365(n))`
-/

namespace A254362.P894442007336155703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140504 n - A254365 n|

end

end A254362.P894442007336155703

namespace A254362

/-- `abs(A140504(n)-A254365(n))` -/
def P894442007336155703.Spec : Prop :=
  ∀ n, P894442007336155703.a n = A254362 n

end A254362

/-! ## A254362.P11387093279119645299

`abs(A254030(n)-A254363(n))`
-/

namespace A254362.P11387093279119645299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254030 n - A254363 n|

end

end A254362.P11387093279119645299

namespace A254362

/-- `abs(A254030(n)-A254363(n))` -/
def P11387093279119645299.Spec : Prop :=
  ∀ n, P11387093279119645299.a n = A254362 n

end A254362

/-! ## A254362.P6782914964895770482

`(A254365(n)-A140504(n))%A254366(n)`
-/

namespace A254362.P6782914964895770482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254365 n - A140504 n) (A254366 n)

end

end A254362.P6782914964895770482

namespace A254362

/-- `(A254365(n)-A140504(n))%A254366(n)` -/
def P6782914964895770482.Spec : Prop :=
  ∀ n, P6782914964895770482.a n = A254362 n

end A254362

/-! ## A254362.P16283886833607021584

`abs(2*(A173657(n)+A007582(n))-A254363(n))`
-/

namespace A254362.P16283886833607021584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (A173657 n + A007582 n) - A254363 n|

end

end A254362.P16283886833607021584

namespace A254362

/-- `abs(2*(A173657(n)+A007582(n))-A254363(n))` -/
def P16283886833607021584.Spec : Prop :=
  ∀ n, P16283886833607021584.a n = A254362 n

end A254362

/-! ## A254362.P11147372575938140327

`(A153893(n)+3^n+7)%A026907(A195605(n))`
-/

namespace A254362.P11147372575938140327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153893 n + (3 ^ n : ℤ) + 7) (A026907 (A195605 n).toNat)

end

end A254362.P11147372575938140327

namespace A254362

/-- `(A153893(n)+3^n+7)%A026907(A195605(n))` -/
def P11147372575938140327.Spec : Prop :=
  ∀ n, P11147372575938140327.a n = A254362 n

end A254362

/-!
# A254363: a(n) = 4^n + 6*2^n + 3^(n+1) + 10.

The programs for A254363, the canonical program `A254363.P5759172668620963066` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254363 has offset 0).

The definition of A254363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+6*2^n+3^(n+1)+10` (program `A254363.P5759172668620963066`, by `A254363.P5759172668620963066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254363.P5759172668620963066

`4^n+6*2^n+3^(n+1)+10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254363

/-- `4^n+6*2^n+3^(n+1)+10` -/
def P5759172668620963066.Spec : Prop :=
  ∀ n, (P5759172668620963066.a n : ℤ) = A254363 n

theorem P5759172668620963066.correct : P5759172668620963066.Spec := by
  intro n
  simp only [A254363]

end A254363

/-! ## A254363.P6863348150320052114

`abs(A254365(n)-A254366(n))`
-/

namespace A254363.P6863348150320052114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254365 n - A254366 n|

end

end A254363.P6863348150320052114

namespace A254363

/-- `abs(A254365(n)-A254366(n))` -/
def P6863348150320052114.Spec : Prop :=
  ∀ n, P6863348150320052114.a n = A254363 n

end A254363

/-! ## A254363.P15274358862101781595

`lcm(A254365(n)-A254366(n), A008836(n+1))`
-/

namespace A254363.P15274358862101781595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254365 n - A254366 n) (A008836 (n + 1))

end

end A254363.P15274358862101781595

namespace A254363

/-- `lcm(A254365(n)-A254366(n), A008836(n+1))` -/
def P15274358862101781595.Spec : Prop :=
  ∀ n, (P15274358862101781595.a n : ℤ) = A254363 n

end A254363

/-! ## A254363.P9001719900745370371

`(A000045(gcd(n, n+1))-2)*(A254365(n)-A254366(n))`
-/

namespace A254363.P9001719900745370371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (Nat.gcd n (n + 1)) - 2) * (A254365 n - A254366 n)

end

end A254363.P9001719900745370371

namespace A254363

/-- `(A000045(gcd(n, n+1))-2)*(A254365(n)-A254366(n))` -/
def P9001719900745370371.Spec : Prop :=
  ∀ n, P9001719900745370371.a n = A254363 n

end A254363

/-! ## A254363.P676329902904041262

`abs(A254031(n)-A254364(n))`
-/

namespace A254363.P676329902904041262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254031 n - A254364 n|

end

end A254363.P676329902904041262

namespace A254363

/-- `abs(A254031(n)-A254364(n))` -/
def P676329902904041262.Spec : Prop :=
  ∀ n, P676329902904041262.a n = A254363 n

end A254363

/-! ## A254363.P5233050212704420838

`(A254362(n)+A254030(n))%A254367(n)`
-/

namespace A254363.P5233050212704420838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254362 n + A254030 n) (A254367 n)

end

end A254363.P5233050212704420838

namespace A254363

/-- `(A254362(n)+A254030(n))%A254367(n)` -/
def P5233050212704420838.Spec : Prop :=
  ∀ n, P5233050212704420838.a n = A254363 n

end A254363

/-! ## A254363.P4813285717815626370

`(A254365(n)-A254366(n))*A008683(A078334(n+2))`
-/

namespace A254363.P4813285717815626370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254365 n - A254366 n) * A008683 (A078334 (n + 2)).toNat

end

end A254363.P4813285717815626370

namespace A254363

/-- `(A254365(n)-A254366(n))*A008683(A078334(n+2))` -/
def P4813285717815626370.Spec : Prop :=
  ∀ n, P4813285717815626370.a n = A254363 n

end A254363

/-!
# A254364: a(n) = 3*4^n + 10*2^n + 6*3^n + 5^n + 15.

The programs for A254364, the canonical program `A254364.P14624624773670493864` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254364 has offset 0).

The definition of A254364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*4^n+10*2^n+6*3^n+5^n+15` (program `A254364.P14624624773670493864`, by `A254364.P14624624773670493864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254364.P14624624773670493864

`3*4^n+10*2^n+6*3^n+5^n+15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254364

/-- `3*4^n+10*2^n+6*3^n+5^n+15` -/
def P14624624773670493864.Spec : Prop :=
  ∀ n, (P14624624773670493864.a n : ℤ) = A254364 n

theorem P14624624773670493864.correct : P14624624773670493864.Spec := by
  intro n
  simp only [A254364]

end A254364

/-! ## A254364.P4299994711861695707

`abs(A254366(n)-A254367(n))`
-/

namespace A254364.P4299994711861695707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254366 n - A254367 n|

end

end A254364.P4299994711861695707

namespace A254364

/-- `abs(A254366(n)-A254367(n))` -/
def P4299994711861695707.Spec : Prop :=
  ∀ n, P4299994711861695707.a n = A254364 n

end A254364

/-! ## A254364.P16652529198999411647

`lcm(A254366(n)-A254367(n), A033999(n))`
-/

namespace A254364.P16652529198999411647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254366 n - A254367 n) (A033999 n)

end

end A254364.P16652529198999411647

namespace A254364

/-- `lcm(A254366(n)-A254367(n), A033999(n))` -/
def P16652529198999411647.Spec : Prop :=
  ∀ n, (P16652529198999411647.a n : ℤ) = A254364 n

end A254364

/-! ## A254364.P5919475693593036948

`gcd(A254366(n)-A254367(n), A134746(2*(n+1)))`
-/

namespace A254364.P5919475693593036948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254366 n - A254367 n) (A134746 (2 * (n + 1)))

end

end A254364.P5919475693593036948

namespace A254364

/-- `gcd(A254366(n)-A254367(n), A134746(2*(n+1)))` -/
def P5919475693593036948.Spec : Prop :=
  ∀ n, (P5919475693593036948.a n : ℤ) = A254364 n

end A254364

/-! ## A254364.P12190349787896738068

`(A254366(n)-A254367(n))*A107393(A000040(n+1))`
-/

namespace A254364.P12190349787896738068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254366 n - A254367 n) * A107393 (A000040 (n + 1)).toNat

end

end A254364.P12190349787896738068

namespace A254364

/-- `(A254366(n)-A254367(n))*A107393(A000040(n+1))` -/
def P12190349787896738068.Spec : Prop :=
  ∀ n, P12190349787896738068.a n = A254364 n

end A254364

/-! ## A254364.P6259940687779115230

`(A254366(n)-A254367(n))/A107393(A000040(n+2))`
-/

namespace A254364.P6259940687779115230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254366 n - A254367 n : ℚ) / (A107393 (A000040 (n + 2)).toNat : ℚ)

end

end A254364.P6259940687779115230

namespace A254364

/-- `(A254366(n)-A254367(n))/A107393(A000040(n+2))` -/
def P6259940687779115230.Spec : Prop :=
  ∀ n, P6259940687779115230.a n = (A254364 n : ℚ)

end A254364

/-! ## A254364.P15662213141673587602

`abs(A254144(n)-A254463(n))`
-/

namespace A254364.P15662213141673587602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254144 n - A254463 n|

end

end A254364.P15662213141673587602

namespace A254364

/-- `abs(A254144(n)-A254463(n))` -/
def P15662213141673587602.Spec : Prop :=
  ∀ n, P15662213141673587602.a n = A254364 n

end A254364

/-! ## A254364.P1058378147191953349

`gcd(A254144(n)-A254463(n), A089002(8*(n+4)))`
-/

namespace A254364.P1058378147191953349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254144 n - A254463 n) (A089002 (8 * (n + 4)))

end

end A254364.P1058378147191953349

namespace A254364

/-- `gcd(A254144(n)-A254463(n), A089002(8*(n+4)))` -/
def P1058378147191953349.Spec : Prop :=
  ∀ n, (P1058378147191953349.a n : ℤ) = A254364 n

end A254364

/-!
# A254365: a(n) = 2^(n+2) + 3^n + 10.

The programs for A254365, the canonical program `A254365.P7837094668166220393` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254365 has offset 0).

The definition of A254365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)+3^n+10` (program `A254365.P7837094668166220393`, by `A254365.P7837094668166220393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254365.P7837094668166220393

`2^(n+2)+3^n+10`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254365

/-- `2^(n+2)+3^n+10` -/
def P7837094668166220393.Spec : Prop :=
  ∀ n, (P7837094668166220393.a n : ℤ) = A254365 n

theorem P7837094668166220393.correct : P7837094668166220393.Spec := by
  intro n
  simp only [A254365]

end A254365

/-! ## A254365.P2891628800594557841

`or(1, A271743(n+4)+5)`
-/

namespace A254365.P2891628800594557841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A271743 (n + 4) + 5)

end

end A254365.P2891628800594557841

namespace A254365

/-- `or(1, A271743(n+4)+5)` -/
def P2891628800594557841.Spec : Prop :=
  ∀ n, P2891628800594557841.a n = A254365 n

end A254365

/-! ## A254365.P1891182432155694536

`abs(A168614(n)-A254368(n))`
-/

namespace A254365.P1891182432155694536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168614 n - A254368 n|

end

end A254365.P1891182432155694536

namespace A254365

/-- `abs(A168614(n)-A254368(n))` -/
def P1891182432155694536.Spec : Prop :=
  ∀ n, P1891182432155694536.a n = A254365 n

end A254365

/-! ## A254365.P18078401289649115374

`-((A168614(n)-A254368(n))*A007318(A014963(3*(n+1))))`
-/

namespace A254365.P18078401289649115374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A168614 n - A254368 n) * A007318 (A014963 (3 * (n + 1))).toNat)

end

end A254365.P18078401289649115374

namespace A254365

/-- `-((A168614(n)-A254368(n))*A007318(A014963(3*(n+1))))` -/
def P18078401289649115374.Spec : Prop :=
  ∀ n, P18078401289649115374.a n = A254365 n

end A254365

/-! ## A254365.P10798064406879837513

`A254366(n)%A254363(n)`
-/

namespace A254365.P10798064406879837513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254366 n) (A254363 n)

end

end A254365.P10798064406879837513

namespace A254365

/-- `A254366(n)%A254363(n)` -/
def P10798064406879837513.Spec : Prop :=
  ∀ n, P10798064406879837513.a n = A254365 n

end A254365

/-!
# A254366: a(n) = 4^n + 10*2^n + 4*3^n + 20.

The programs for A254366, the canonical program `A254366.P15725643886190934981` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254366 has offset 0).

The definition of A254366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^n+10*2^n+4*3^n+20` (program `A254366.P15725643886190934981`, by `A254366.P15725643886190934981.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254366.P15725643886190934981

`4^n+10*2^n+4*3^n+20`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254366

/-- `4^n+10*2^n+4*3^n+20` -/
def P15725643886190934981.Spec : Prop :=
  ∀ n, (P15725643886190934981.a n : ℤ) = A254366 n

theorem P15725643886190934981.correct : P15725643886190934981.Spec := by
  intro n
  simp only [A254366]

end A254366

/-! ## A254366.P15851062467280887474

`abs(A254368(n)-A254369(n))`
-/

namespace A254366.P15851062467280887474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254368 n - A254369 n|

end

end A254366.P15851062467280887474

namespace A254366

/-- `abs(A254368(n)-A254369(n))` -/
def P15851062467280887474.Spec : Prop :=
  ∀ n, P15851062467280887474.a n = A254366 n

end A254366

/-! ## A254366.P8620140980462896646

`lcm(A254368(n)-A254369(n), A033999(n))`
-/

namespace A254366.P8620140980462896646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254368 n - A254369 n) (A033999 n)

end

end A254366.P8620140980462896646

namespace A254366

/-- `lcm(A254368(n)-A254369(n), A033999(n))` -/
def P8620140980462896646.Spec : Prop :=
  ∀ n, (P8620140980462896646.a n : ℤ) = A254366 n

end A254366

/-! ## A254366.P4358323703178400637

`or(A254365(n)+A254363(n), A000007(n))`
-/

namespace A254366.P4358323703178400637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A254365 n + A254363 n) (A000007 n)

end

end A254366.P4358323703178400637

namespace A254366

/-- `or(A254365(n)+A254363(n), A000007(n))` -/
def P4358323703178400637.Spec : Prop :=
  ∀ n, P4358323703178400637.a n = A254366 n

end A254366

/-! ## A254366.P1822508312468725713

`or(A254365(n)+A254363(n), A000038(n))`
-/

namespace A254366.P1822508312468725713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A254365 n + A254363 n) (A000038 n)

end

end A254366.P1822508312468725713

namespace A254366

/-- `or(A254365(n)+A254363(n), A000038(n))` -/
def P1822508312468725713.Spec : Prop :=
  ∀ n, P1822508312468725713.a n = A254366 n

end A254366

/-! ## A254366.P16124338537369380703

`gcd(A254368(n)-A254369(n), A000038(n+1))`
-/

namespace A254366.P16124338537369380703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254368 n - A254369 n) (A000038 (n + 1))

end

end A254366.P16124338537369380703

namespace A254366

/-- `gcd(A254368(n)-A254369(n), A000038(n+1))` -/
def P16124338537369380703.Spec : Prop :=
  ∀ n, (P16124338537369380703.a n : ℤ) = A254366 n

end A254366

/-! ## A254366.P2068610570236620866

`(A254369(n)-A254368(n))*A118438(ceil(1/(n+1)))²`
-/

namespace A254366.P2068610570236620866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254369 n - A254368 n) * A118438 ⌈1 / (n + 1 : ℚ)⌉.toNat ^ 2

end

end A254366.P2068610570236620866

namespace A254366

/-- `(A254369(n)-A254368(n))*A118438(ceil(1/(n+1)))²` -/
def P2068610570236620866.Spec : Prop :=
  ∀ n, P2068610570236620866.a n = A254366 n

end A254366

/-! ## A254366.P14264719584772818759

`(A254368(n)-A254369(n))*A008683(A003627(n+1))`
-/

namespace A254366.P14264719584772818759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254368 n - A254369 n) * A008683 (A003627 (n + 1)).toNat

end

end A254366.P14264719584772818759

namespace A254366

/-- `(A254368(n)-A254369(n))*A008683(A003627(n+1))` -/
def P14264719584772818759.Spec : Prop :=
  ∀ n, P14264719584772818759.a n = A254366 n

end A254366

/-! ## A254366.P2970839061450158735

`(A254365(n)+A254363(n))*A038548(A000040(n+2))`
-/

namespace A254366.P2970839061450158735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254365 n + A254363 n) * A038548 (A000040 (n + 2)).toNat

end

end A254366.P2970839061450158735

namespace A254366

/-- `(A254365(n)+A254363(n))*A038548(A000040(n+2))` -/
def P2970839061450158735.Spec : Prop :=
  ∀ n, P2970839061450158735.a n = A254366 n

end A254366

/-! ## A254366.P18345463538817230293

`(A254368(n)-A254369(n))*A008683(A106904(n+1))`
-/

namespace A254366.P18345463538817230293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254368 n - A254369 n) * A008683 (A106904 (n + 1)).toNat

end

end A254366.P18345463538817230293

namespace A254366

/-- `(A254368(n)-A254369(n))*A008683(A106904(n+1))` -/
def P18345463538817230293.Spec : Prop :=
  ∀ n, P18345463538817230293.a n = A254366 n

end A254366

/-! ## A254366.P567588992530506315

`abs(A254364(n)-A254367(n))`
-/

namespace A254366.P567588992530506315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254364 n - A254367 n|

end

end A254366.P567588992530506315

namespace A254366

/-- `abs(A254364(n)-A254367(n))` -/
def P567588992530506315.Spec : Prop :=
  ∀ n, P567588992530506315.a n = A254366 n

end A254366

/-! ## A254366.P3661374194137170891

`-(A001222(((-1)^n)²)+A254364(n)-A254367(n))`
-/

namespace A254366.P3661374194137170891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A001222 (((-1) ^ n) ^ 2).toNat + (A254364 n - A254367 n))

end

end A254366.P3661374194137170891

namespace A254366

/-- `-(A001222(((-1)^n)²)+A254364(n)-A254367(n))` -/
def P3661374194137170891.Spec : Prop :=
  ∀ n, P3661374194137170891.a n = A254366 n

end A254366

/-! ## A254366.P1675075201535590543

`(A254365(n)+A254363(n))*A007318(∑[n+2])`
-/

namespace A254366.P1675075201535590543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254365 n + A254363 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254366.P1675075201535590543

namespace A254366

/-- `(A254365(n)+A254363(n))*A007318(∑[n+2])` -/
def P1675075201535590543.Spec : Prop :=
  ∀ n, P1675075201535590543.a n = A254366 n

end A254366

/-! ## A254366.P14760587593890736602

`(A254367(n)-A254364(n))%A254355(n+1)`
-/

namespace A254366.P14760587593890736602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254367 n - A254364 n) (A254355 (n + 1))

end

end A254366.P14760587593890736602

namespace A254366

/-- `(A254367(n)-A254364(n))%A254355(n+1)` -/
def P14760587593890736602.Spec : Prop :=
  ∀ n, P14760587593890736602.a n = A254366 n

end A254366

/-!
# A254367: a(n) = 5*2^(n+2) + 2^(2n+2) + 10*3^n + 5^n + 35.

The programs for A254367, the canonical program `A254367.P7182986081127060876` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254367 has offset 0).

The definition of A254367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^(n+2)+2^(2*n+2)+10*3^n+5^n+35` (program `A254367.P7182986081127060876`, by `A254367.P7182986081127060876.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254367.P7182986081127060876

`5*2^(n+2)+2^(2*n+2)+10*3^n+5^n+35`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254367

/-- `5*2^(n+2)+2^(2*n+2)+10*3^n+5^n+35` -/
def P7182986081127060876.Spec : Prop :=
  ∀ n, (P7182986081127060876.a n : ℤ) = A254367 n

theorem P7182986081127060876.correct : P7182986081127060876.Spec := by
  intro n
  simp only [A254367]

end A254367

/-! ## A254367.P14133472608943665126

`A000027(A254370(n)-A254369(n))`
-/

namespace A254367.P14133472608943665126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A254370 n - A254369 n).toNat

end

end A254367.P14133472608943665126

namespace A254367

/-- `A000027(A254370(n)-A254369(n))` -/
def P14133472608943665126.Spec : Prop :=
  ∀ n, P14133472608943665126.a n = A254367 n

end A254367

/-!
# A254368: a(n) = 5*2^n + 3^n + 15.

The programs for A254368, the canonical program `A254368.P6325190178616235355` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254368 has offset 0).

The definition of A254368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*2^n+3^n+15` (program `A254368.P6325190178616235355`, by `A254368.P6325190178616235355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254368.P6325190178616235355

`5*2^n+3^n+15`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254368

/-- `5*2^n+3^n+15` -/
def P6325190178616235355.Spec : Prop :=
  ∀ n, (P6325190178616235355.a n : ℤ) = A254368 n

theorem P6325190178616235355.correct : P6325190178616235355.Spec := by
  intro n
  simp only [A254368]

end A254368

/-! ## A254368.P1519269305732137653

`A254369(n)%A254366(n)`
-/

namespace A254368.P1519269305732137653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254369 n) (A254366 n)

end

end A254368.P1519269305732137653

namespace A254368

/-- `A254369(n)%A254366(n)` -/
def P1519269305732137653.Spec : Prop :=
  ∀ n, P1519269305732137653.a n = A254368 n

end A254368

/-! ## A254368.P16192452293664506772

`lcm(A254366(n)-A254369(n), A033999(n))`
-/

namespace A254368.P16192452293664506772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A254366 n - A254369 n) (A033999 n)

end

end A254368.P16192452293664506772

namespace A254368

/-- `lcm(A254366(n)-A254369(n), A033999(n))` -/
def P16192452293664506772.Spec : Prop :=
  ∀ n, (P16192452293664506772.a n : ℤ) = A254368 n

end A254368

/-! ## A254368.P1912885327949026131

`(A254366(n)-A254369(n))*A309873(A016825(n))`
-/

namespace A254368.P1912885327949026131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254366 n - A254369 n) * A309873 (A016825 n).toNat

end

end A254368.P1912885327949026131

namespace A254368

/-- `(A254366(n)-A254369(n))*A309873(A016825(n))` -/
def P1912885327949026131.Spec : Prop :=
  ∀ n, P1912885327949026131.a n = A254368 n

end A254368

/-! ## A254368.P12365975360382445165

`(A254369(n)+A254364(n))%A254367(n)`
-/

namespace A254368.P12365975360382445165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254369 n + A254364 n) (A254367 n)

end

end A254368.P12365975360382445165

namespace A254368

/-- `(A254369(n)+A254364(n))%A254367(n)` -/
def P12365975360382445165.Spec : Prop :=
  ∀ n, P12365975360382445165.a n = A254368 n

end A254368

/-! ## A254368.P3054696389695044873

`A254370(n)%(A254367(n)+A254366(n))`
-/

namespace A254368.P3054696389695044873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254370 n) (A254367 n + A254366 n)

end

end A254368.P3054696389695044873

namespace A254368

/-- `A254370(n)%(A254367(n)+A254366(n))` -/
def P3054696389695044873.Spec : Prop :=
  ∀ n, P3054696389695044873.a n = A254368 n

end A254368

/-! ## A254368.P12124683014353507833

`(A254370(n)-A254364(n))%A254366(n)`
-/

namespace A254368.P12124683014353507833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254370 n - A254364 n) (A254366 n)

end

end A254368.P12124683014353507833

namespace A254368

/-- `(A254370(n)-A254364(n))%A254366(n)` -/
def P12124683014353507833.Spec : Prop :=
  ∀ n, P12124683014353507833.a n = A254368 n

end A254368

/-! ## A254368.P7342427104841066668

`(A254370(n)+A254364(n))%A254367(n)`
-/

namespace A254368.P7342427104841066668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254370 n + A254364 n) (A254367 n)

end

end A254368.P7342427104841066668

namespace A254368

/-- `(A254370(n)+A254364(n))%A254367(n)` -/
def P7342427104841066668.Spec : Prop :=
  ∀ n, P7342427104841066668.a n = A254368 n

end A254368

/-! ## A254368.P328757355914763878

`floor(A334947(n+1)/8-(A254366(n)-A254369(n)))`
-/

namespace A254368.P328757355914763878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334947 (n + 1) : ℚ) / 8 - (A254366 n - A254369 n : ℚ)⌋

end

end A254368.P328757355914763878

namespace A254368

/-- `floor(A334947(n+1)/8-(A254366(n)-A254369(n)))` -/
def P328757355914763878.Spec : Prop :=
  ∀ n, P328757355914763878.a n = A254368 n

end A254368

/-!
# A254369: a(n) = 15*2^n + 4^n + 5*3^n + 35.

The programs for A254369, the canonical program `A254369.P12678770326872148856` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254369 has offset 0).

The definition of A254369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `15*2^n+4^n+5*3^n+35` (program `A254369.P12678770326872148856`, by `A254369.P12678770326872148856.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254369.P12678770326872148856

`15*2^n+4^n+5*3^n+35`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254369

/-- `15*2^n+4^n+5*3^n+35` -/
def P12678770326872148856.Spec : Prop :=
  ∀ n, (P12678770326872148856.a n : ℤ) = A254369 n

theorem P12678770326872148856.correct : P12678770326872148856.Spec := by
  intro n
  simp only [A254369]

end A254369

/-! ## A254369.P7650341018528101825

`(A254368(n)+A254366(n))*char[A001057(n)]`
-/

namespace A254369.P7650341018528101825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254368 n + A254366 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254369.P7650341018528101825

namespace A254369

/-- `(A254368(n)+A254366(n))*char[A001057(n)]` -/
def P7650341018528101825.Spec : Prop :=
  ∀ n, P7650341018528101825.a n = A254369 n

end A254369

/-! ## A254369.P11889760677810819218

`(A254368(n)+A254366(n))*char[A006368(n)]`
-/

namespace A254369.P11889760677810819218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254368 n + A254366 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254369.P11889760677810819218

namespace A254369

/-- `(A254368(n)+A254366(n))*char[A006368(n)]` -/
def P11889760677810819218.Spec : Prop :=
  ∀ n, P11889760677810819218.a n = A254369 n

end A254369

/-! ## A254369.P1526845047679641352

`(A254368(n)+A254366(n))*char[A006577(n+1)]`
-/

namespace A254369.P1526845047679641352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254368 n + A254366 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254369.P1526845047679641352

namespace A254369

/-- `(A254368(n)+A254366(n))*char[A006577(n+1)]` -/
def P1526845047679641352.Spec : Prop :=
  ∀ n, P1526845047679641352.a n = A254369 n

end A254369

/-! ## A254369.P1407634417412172226

`A254370(n)%A254367(n%A005893(n))`
-/

namespace A254369.P1407634417412172226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254370 n) (A254367 (Int.tmod (n : ℤ) (A005893 n)).toNat)

end

end A254369.P1407634417412172226

namespace A254369

/-- `A254370(n)%A254367(n%A005893(n))` -/
def P1407634417412172226.Spec : Prop :=
  ∀ n, P1407634417412172226.a n = A254369 n

end A254369

/-!
# A254370: a(n) = 35*2^n + 5*4^n + 15*3^n + 5^n + 70.

The programs for A254370, the canonical program `A254370.P3940876685834326084` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254370 has offset 0).

The definition of A254370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `35*2^n+5*4^n+15*3^n+5^n+70` (program `A254370.P3940876685834326084`, by `A254370.P3940876685834326084.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A254370.P3940876685834326084

`35*2^n+5*4^n+15*3^n+5^n+70`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254370

/-- `35*2^n+5*4^n+15*3^n+5^n+70` -/
def P3940876685834326084.Spec : Prop :=
  ∀ n, (P3940876685834326084.a n : ℤ) = A254370 n

theorem P3940876685834326084.correct : P3940876685834326084.Spec := by
  intro n
  simp only [A254370]

end A254370

/-! ## A254370.P16623861252420185742

`lcm(2, A254369(n)+A254367(n))`
-/

namespace A254370.P16623861252420185742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254369 n + A254367 n)

end

end A254370.P16623861252420185742

namespace A254370

/-- `lcm(2, A254369(n)+A254367(n))` -/
def P16623861252420185742.Spec : Prop :=
  ∀ n, (P16623861252420185742.a n : ℤ) = A254370 n

end A254370

/-! ## A254370.P3573227321741161652

`(A254369(n)+A254367(n))*A094507(∑[n])`
-/

namespace A254370.P3573227321741161652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254369 n + A254367 n) * A094507 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254370.P3573227321741161652

namespace A254370

/-- `(A254369(n)+A254367(n))*A094507(∑[n])` -/
def P3573227321741161652.Spec : Prop :=
  ∀ n, P3573227321741161652.a n = A254370 n

end A254370

/-! ## A254370.P7142329906638905339

`(A254369(n)+A254367(n))*char[A026741(n)]`
-/

namespace A254370.P7142329906638905339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254369 n + A254367 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254370.P7142329906638905339

namespace A254370

/-- `(A254369(n)+A254367(n))*char[A026741(n)]` -/
def P7142329906638905339.Spec : Prop :=
  ∀ n, P7142329906638905339.a n = A254370 n

end A254370

/-! ## A254370.P649305113034116838

`(A254369(n)+A254367(n))*char[A074680(n)]`
-/

namespace A254370.P649305113034116838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074680 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254369 n + A254367 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254370.P649305113034116838

namespace A254370

/-- `(A254369(n)+A254367(n))*char[A074680(n)]` -/
def P649305113034116838.Spec : Prop :=
  ∀ n, P649305113034116838.a n = A254370 n

end A254370

/-! ## A254370.P6496154069775968990

`(A254369(n)+A254367(n))*A007318(∑[n+1])`
-/

namespace A254370.P6496154069775968990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254369 n + A254367 n) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254370.P6496154069775968990

namespace A254370

/-- `(A254369(n)+A254367(n))*A007318(∑[n+1])` -/
def P6496154069775968990.Spec : Prop :=
  ∀ n, P6496154069775968990.a n = A254370 n

end A254370

/-! ## A254370.P7956753287128003995

`(A254369(n)+A254367(n))%A254355(n+1)`
-/

namespace A254370.P7956753287128003995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254369 n + A254367 n) (A254355 (n + 1))

end

end A254370.P7956753287128003995

namespace A254370

/-- `(A254369(n)+A254367(n))%A254355(n+1)` -/
def P7956753287128003995.Spec : Prop :=
  ∀ n, P7956753287128003995.a n = A254370 n

end A254370

/-! ## A254370.P1554510080446645268

`abs(A254465(n)-A254467(n))`
-/

namespace A254370.P1554510080446645268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A254465 n - A254467 n|

end

end A254370.P1554510080446645268

namespace A254370

/-- `abs(A254465(n)-A254467(n))` -/
def P1554510080446645268.Spec : Prop :=
  ∀ n, P1554510080446645268.a n = A254370 n

end A254370

/-! ## A254370.P1433856192075009919

`A254468(n)%(A254466(n)+A254465(n))`
-/

namespace A254370.P1433856192075009919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254468 n) (A254466 n + A254465 n)

end

end A254370.P1433856192075009919

namespace A254370

/-- `A254468(n)%(A254466(n)+A254465(n))` -/
def P1433856192075009919.Spec : Prop :=
  ∀ n, P1433856192075009919.a n = A254370 n

end A254370

/-! ## A254370.P954332455509900244

`(A254369(n)+A254367(n))*A001511(A054569(n+1))`
-/

namespace A254370.P954332455509900244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A254369 n + A254367 n) * A001511 (A054569 (n + 1)).toNat

end

end A254370.P954332455509900244

namespace A254370

/-- `(A254369(n)+A254367(n))*A001511(A054569(n+1))` -/
def P954332455509900244.Spec : Prop :=
  ∀ n, P954332455509900244.a n = A254370 n

end A254370

/-!
# A254371: Sum of cubes of the first n even numbers (A016743).

The programs for A254371, the canonical program `A254371.P14441672750536308122` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254371 has offset 0).

The definition of A254371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254371.P14441672750536308122

`2*(n*(n+1))²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254371

/-- `2*(n*(n+1))²` -/
def P14441672750536308122.Spec : Prop :=
  ∀ n, (P14441672750536308122.a n : ℤ) = A254371 n

theorem P14441672750536308122.correct : P14441672750536308122.Spec := by
  intro n
  simp only [A254371]

end A254371

/-! ## A254371.P3725010155897836650

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=8, a(2)=72, a(3)=288, a(4)=800`
-/

namespace A254371.P3725010155897836650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 72, 288, 800] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A254371.P3725010155897836650

namespace A254371

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3725010155897836650.Spec : Prop :=
  ∀ n, P3725010155897836650.a n = A254371 n

theorem P3725010155897836650.correct : P3725010155897836650.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A254371, Nat.add_sub_cancel, A254371.P3725010155897836650.a, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A254371, Nat.add_sub_cancel, A254371.P3725010155897836650.a, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A254371

/-! ## A254371.P18049819359603276216

`A060300(n)/2`
-/

namespace A254371.P18049819359603276216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060300 n : ℚ) / 2

end

end A254371.P18049819359603276216

namespace A254371

/-- `A060300(n)/2` -/
def P18049819359603276216.Spec : Prop :=
  ∀ n, P18049819359603276216.a n = (A254371 n : ℚ)

end A254371

/-! ## A254371.P11419397997373132086

`∑[comp[or(1, n)]^3]`
-/

namespace A254371.P11419397997373132086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P11419397997373132086

namespace A254371

/-- `∑[comp[or(1, n)]^3]` -/
def P11419397997373132086.Spec : Prop :=
  ∀ n, (P11419397997373132086.a n : ℤ) = A254371 n

end A254371

/-! ## A254371.P11662887148255703228

`∑[lcm(2, (2*n)^3)]`
-/

namespace A254371.P11662887148255703228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 ((2 * n) ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P11662887148255703228

namespace A254371

/-- `∑[lcm(2, (2*n)^3)]` -/
def P11662887148255703228.Spec : Prop :=
  ∀ n, (P11662887148255703228.a n : ℤ) = A254371 n

end A254371

/-! ## A254371.P7391520432776479920

`∑[and(2*n, -2)^3]`
-/

namespace A254371.P7391520432776479920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P7391520432776479920

namespace A254371

/-- `∑[and(2*n, -2)^3]` -/
def P7391520432776479920.Spec : Prop :=
  ∀ n, P7391520432776479920.a n = A254371 n

end A254371

/-! ## A254371.P4225354228635266101

`∑[xor(1, 2*n+1)^3]`
-/

namespace A254371.P4225354228635266101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P4225354228635266101

namespace A254371

/-- `∑[xor(1, 2*n+1)^3]` -/
def P4225354228635266101.Spec : Prop :=
  ∀ n, (P4225354228635266101.a n : ℤ) = A254371 n

end A254371

/-! ## A254371.P10596288460325090614

`∑[or(1, (2*n)^3)-1]`
-/

namespace A254371.P10596288460325090614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 ((2 * n) ^ 3) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P10596288460325090614

namespace A254371

/-- `∑[or(1, (2*n)^3)-1]` -/
def P10596288460325090614.Spec : Prop :=
  ∀ n, P10596288460325090614.a n = A254371 n

end A254371

/-! ## A254371.P2879809979822638162

`∑[xor(1, (2*n)^3)-1]`
-/

namespace A254371.P2879809979822638162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 ((2 * n) ^ 3) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P2879809979822638162

namespace A254371

/-- `∑[xor(1, (2*n)^3)-1]` -/
def P2879809979822638162.Spec : Prop :=
  ∀ n, P2879809979822638162.a n = A254371 n

end A254371

/-! ## A254371.P9528479626885049204

`sqrt(4*lcm(n, n+1)^4)`
-/

namespace A254371.P9528479626885049204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (4 * Nat.lcm n (n + 1) ^ 4 : ℝ)

end

end A254371.P9528479626885049204

namespace A254371

/-- `sqrt(4*lcm(n, n+1)^4)` -/
def P9528479626885049204.Spec : Prop :=
  ∀ n, P9528479626885049204.a n = (A254371 n : ℝ)

end A254371

/-! ## A254371.P4301997932646781763

`∑[(2*gcd(n, 2*n))^3]`
-/

namespace A254371.P4301997932646781763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.gcd n (2 * n)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P4301997932646781763

namespace A254371

/-- `∑[(2*gcd(n, 2*n))^3]` -/
def P4301997932646781763.Spec : Prop :=
  ∀ n, (P4301997932646781763.a n : ℤ) = A254371 n

end A254371

/-! ## A254371.P10576777606712458485

`∑[∪[2*n, 4*n]^3]`
-/

namespace A254371.P10576777606712458485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P10576777606712458485

namespace A254371

/-- `∑[∪[2*n, 4*n]^3]` -/
def P10576777606712458485.Spec : Prop :=
  ∀ n, (P10576777606712458485.a n : ℤ) = A254371 n

end A254371

/-! ## A254371.P4127522127088164192

`∑[∩[(2*n)^3, n^3]]`
-/

namespace A254371.P4127522127088164192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∧ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254371.P4127522127088164192

namespace A254371

/-- `∑[∩[(2*n)^3, n^3]]` -/
def P4127522127088164192.Spec : Prop :=
  ∀ n, (P4127522127088164192.a n : ℤ) = A254371 n

end A254371

/-! ## A254371.P1537470659842630118

`(C(Δ[n²], 2)+n)²/2`
-/

namespace A254371.P1537470659842630118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 + n) ^ 2 : ℚ) / 2

end

end A254371.P1537470659842630118

namespace A254371

/-- `(C(Δ[n²], 2)+n)²/2` -/
def P1537470659842630118.Spec : Prop :=
  ∀ n, P1537470659842630118.a n = (A254371 n : ℚ)

end A254371

/-! ## A254371.P14024093058788944204

`a(n-1)+2*4*n^3` with `a(0)=0`
-/

namespace A254371.P14024093058788944204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * (4 * n ^ 3)

end

end A254371.P14024093058788944204

namespace A254371

/-- `a(n-1)+2*4*n^3` -/
def P14024093058788944204.Spec : Prop :=
  ∀ n, (P14024093058788944204.a n : ℤ) = A254371 n

theorem P14024093058788944204.correct : P14024093058788944204.Spec := by
  intro n
  induction n with
  | zero => simp [A254371, A254371.P14024093058788944204.a, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A254371, Nat.add_sub_cancel, A254371.P14024093058788944204.a, A254371.P14441672750536308122.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A254371

/-! ## A254371.P3955098825969889199

`A046092(n)*A046092(n)/2`
-/

namespace A254371.P3955098825969889199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046092 n * A046092 n : ℚ) / 2

end

end A254371.P3955098825969889199

namespace A254371

/-- `A046092(n)*A046092(n)/2` -/
def P3955098825969889199.Spec : Prop :=
  ∀ n, P3955098825969889199.a n = (A254371 n : ℚ)

end A254371

/-!
# A254373: Digital roots of centered square numbers (A001844).

The programs for A254373, the canonical program `A254373.P12943704969635816073` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254373 has offset 1).

The definition of A254373 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254373.P12943704969635816073

`a(n-9)` with `a(0)=1, a(1)=5, a(2)=4, a(3)=7, a(4)=5, a(5)=7, a(6)=4, a(7)=5, a(8)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254373

/-- `a(n-9)` -/
def P12943704969635816073.Spec : Prop :=
  ∀ n, (P12943704969635816073.a n : ℤ) = A254373 (n + 1)

theorem P12943704969635816073.correct : P12943704969635816073.Spec := by
  intro n
  simp only [A254373, Nat.add_sub_cancel]

end A254373

/-!
# A254374: Digital roots of centered pentagonal numbers (A005891).

The programs for A254374, the canonical program `A254374.P2704236171187465103` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254374 has offset 1).

The definition of A254374 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254374.P2704236171187465103

`a(n-9)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=4, a(4)=6, a(5)=4, a(6)=7, a(7)=6, a(8)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254374

/-- `a(n-9)` -/
def P2704236171187465103.Spec : Prop :=
  ∀ n, (P2704236171187465103.a n : ℤ) = A254374 (n + 1)

theorem P2704236171187465103.correct : P2704236171187465103.Spec := by
  intro n
  simp only [A254374, Nat.add_sub_cancel]

end A254374

/-!
# A254375: Digital roots of centered heptagonal numbers (A069099).

The programs for A254375, the canonical program `A254375.P7601725200891968068` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254375 has offset 1).

The definition of A254375 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254375.P7601725200891968068

`a(n-9)` with `a(0)=1, a(1)=8, a(2)=4, a(3)=7, a(4)=8, a(5)=7, a(6)=4, a(7)=8, a(8)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254375

/-- `a(n-9)` -/
def P7601725200891968068.Spec : Prop :=
  ∀ n, (P7601725200891968068.a n : ℤ) = A254375 (n + 1)

theorem P7601725200891968068.correct : P7601725200891968068.Spec := by
  intro n
  simp only [A254375, Nat.add_sub_cancel]

end A254375

/-!
# A254376: Numbers n such that 4n+1, 4n+3, 4n+7, 4n+9 and 4n+13 are prime.

The programs for A254376, there is no canonical definition to state claims against.
-/

/-! ## A254376.P12302307579951501279

`record[A195140(A178084(n+1))]`
-/

namespace A254376.P12302307579951501279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (A178084 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254376.P12302307579951501279

/-!
# A254377: Characteristic function of A230709: a(n) = 1 if n is either evil (A001969) or even odious (A128309), otherwise 0 (when n is odd odious).

The programs for A254377, the canonical program `A254377.P13394934176457571448` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254377 has offset 0).

The definition of A254377 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254377.P13394934176457571448

`1-A228495(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A254377

/-- `1-A228495(n)` -/
def P13394934176457571448.Spec : Prop :=
  ∀ n, P13394934176457571448.a n = A254377 n

theorem P13394934176457571448.correct : P13394934176457571448.Spec := by
  intro n
  simp only [A254377]

end A254377

/-! ## A254377.P683268137388973114

`char[comp[xor(4*n, Δ[n²])]]`
-/

namespace A254377.P683268137388973114
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254377.P683268137388973114

namespace A254377

/-- `char[comp[xor(4*n, Δ[n²])]]` -/
def P683268137388973114.Spec : Prop :=
  ∀ n, (P683268137388973114.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P13228960930617865525

`1-char[xor(4*n, Δ[n²])]`
-/

namespace A254377.P13228960930617865525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A254377.P13228960930617865525

namespace A254377

/-- `1-char[xor(4*n, Δ[n²])]` -/
def P13228960930617865525.Spec : Prop :=
  ∀ n, P13228960930617865525.a n = A254377 n

end A254377

/-! ## A254377.P15805145587339416048

`xor(1, char[xor(4*n, Δ[n²])])`
-/

namespace A254377.P15805145587339416048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A254377.P15805145587339416048

namespace A254377

/-- `xor(1, char[xor(4*n, Δ[n²])])` -/
def P15805145587339416048.Spec : Prop :=
  ∀ n, (P15805145587339416048.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P8758729807537340246

`or(char[2*n], char[xor(n, 2*n)])`
-/

namespace A254377.P8758729807537340246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (if ∃ j, f2 j = n then 1 else 0)

end

end A254377.P8758729807537340246

namespace A254377

/-- `or(char[2*n], char[xor(n, 2*n)])` -/
def P8758729807537340246.Spec : Prop :=
  ∀ n, (P8758729807537340246.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P16292337553740318003

`A254651(xor(3, n))`
-/

namespace A254377.P16292337553740318003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (Nat.xor 3 n)

end

end A254377.P16292337553740318003

namespace A254377

/-- `A254651(xor(3, n))` -/
def P16292337553740318003.Spec : Prop :=
  ∀ n, P16292337553740318003.a n = A254377 n

end A254377

/-! ## A254377.P4777672523783490691

`(1-A101673(n))²`
-/

namespace A254377.P4777672523783490691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A101673 n) ^ 2

end

end A254377.P4777672523783490691

namespace A254377

/-- `(1-A101673(n))²` -/
def P4777672523783490691.Spec : Prop :=
  ∀ n, P4777672523783490691.a n = A254377 n

end A254377

/-! ## A254377.P7912114130452121901

`char[A230709(n+1)]`
-/

namespace A254377.P7912114130452121901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254377.P7912114130452121901

namespace A254377

/-- `char[A230709(n+1)]` -/
def P7912114130452121901.Spec : Prop :=
  ∀ n, (P7912114130452121901.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P16506003583653792647

`A010059(lcm(2, n)-n)`
-/

namespace A254377.P16506003583653792647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (Nat.lcm 2 n - n)

end

end A254377.P16506003583653792647

namespace A254377

/-- `A010059(lcm(2, n)-n)` -/
def P16506003583653792647.Spec : Prop :=
  ∀ n, P16506003583653792647.a n = A254377 n

end A254377

/-! ## A254377.P7236442387357433778

`1-and(n, A010060(n))`
-/

namespace A254377.P7236442387357433778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (A010060 n)

end

end A254377.P7236442387357433778

namespace A254377

/-- `1-and(n, A010060(n))` -/
def P7236442387357433778.Spec : Prop :=
  ∀ n, P7236442387357433778.a n = A254377 n

end A254377

/-! ## A254377.P13146674265267608686

`1-and(n, A179020(n))`
-/

namespace A254377.P13146674265267608686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land (n : ℤ) (A179020 n)

end

end A254377.P13146674265267608686

namespace A254377

/-- `1-and(n, A179020(n))` -/
def P13146674265267608686.Spec : Prop :=
  ∀ n, P13146674265267608686.a n = A254377 n

end A254377

/-! ## A254377.P9787536234921184687

`A254651(or(1, n)+n)`
-/

namespace A254377.P9787536234921184687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254651 (Nat.lor 1 n + n)

end

end A254377.P9787536234921184687

namespace A254377

/-- `A254651(or(1, n)+n)` -/
def P9787536234921184687.Spec : Prop :=
  ∀ n, P9787536234921184687.a n = A254377 n

end A254377

/-! ## A254377.P13754009673676159427

`A010059(n*and(1, n))`
-/

namespace A254377.P13754009673676159427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (n * Nat.land 1 n)

end

end A254377.P13754009673676159427

namespace A254377

/-- `A010059(n*and(1, n))` -/
def P13754009673676159427.Spec : Prop :=
  ∀ n, P13754009673676159427.a n = A254377 n

end A254377

/-! ## A254377.P1681164682256557196

`char[comp[A092246(n+1)]]`
-/

namespace A254377.P1681164682256557196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092246 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254377.P1681164682256557196

namespace A254377

/-- `char[comp[A092246(n+1)]]` -/
def P1681164682256557196.Spec : Prop :=
  ∀ n, (P1681164682256557196.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P17293914638760957271

`A285950(n+1)²%3`
-/

namespace A254377.P17293914638760957271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285950 (n + 1) ^ 2) 3

end

end A254377.P17293914638760957271

namespace A254377

/-- `A285950(n+1)²%3` -/
def P17293914638760957271.Spec : Prop :=
  ∀ n, P17293914638760957271.a n = A254377 n

end A254377

/-! ## A254377.P17033098504240521501

`char[n*(2-char[xor(n, 2*n)])]`
-/

namespace A254377.P17033098504240521501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254377.P17033098504240521501

namespace A254377

/-- `char[n*(2-char[xor(n, 2*n)])]` -/
def P17033098504240521501.Spec : Prop :=
  ∀ n, (P17033098504240521501.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P14841240809009492297

`char[A101671(n)+n]`
-/

namespace A254377.P14841240809009492297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101671 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254377.P14841240809009492297

namespace A254377

/-- `char[A101671(n)+n]` -/
def P14841240809009492297.Spec : Prop :=
  ∀ n, (P14841240809009492297.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P9236743469013519277

`char[n*A001285(n)]`
-/

namespace A254377.P9236743469013519277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001285 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254377.P9236743469013519277

namespace A254377

/-- `char[n*A001285(n)]` -/
def P9236743469013519277.Spec : Prop :=
  ∀ n, (P9236743469013519277.a n : ℤ) = A254377 n

end A254377

/-! ## A254377.P5085747870505058378

`char[n*Δ[A026430(n)]]`
-/

namespace A254377.P5085747870505058378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026430 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254377.P5085747870505058378

namespace A254377

/-- `char[n*Δ[A026430(n)]]` -/
def P5085747870505058378.Spec : Prop :=
  ∀ n, (P5085747870505058378.a n : ℤ) = A254377 n

end A254377

/-!
# A254378: Run lengths of A228495 (Characteristic function of the odd odious numbers).

The programs for A254378, there is no canonical definition to state claims against.
-/

/-! ## A254378.P2925309447818283503

`A254655(lt[n, 2*and(n, 2*n)])`
-/

namespace A254378.P2925309447818283503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A254378.P2925309447818283503

/-! ## A254378.P16347168499527672569

`A254655(A004755(n+1))`
-/

namespace A254378.P16347168499527672569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (A004755 (n + 1)).toNat

end

end A254378.P16347168499527672569

/-! ## A254378.P8996344130170937800

`A254655(A206332(n+1)+1)`
-/

namespace A254378.P8996344130170937800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (A206332 (n + 1) + 1).toNat

end

end A254378.P8996344130170937800

/-! ## A254378.P424046525915266550

`A040008(n)-A254655(n+1)`
-/

namespace A254378.P424046525915266550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040008 n - A254655 (n + 1)

end

end A254378.P424046525915266550

/-! ## A254378.P12582634869356313889

`A254655(A004760(n+2)+1)`
-/

namespace A254378.P12582634869356313889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (A004760 (n + 2) + 1).toNat

end

end A254378.P12582634869356313889

/-! ## A254378.P6483626861002644243

`A254655(A004760(n+3))`
-/

namespace A254378.P6483626861002644243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254655 (A004760 (n + 3)).toNat

end

end A254378.P6483626861002644243

/-!
# A254379: Characteristic function of the even odious numbers (A128309).

The programs for A254379, the canonical program `A254379.P11537696663455735807` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254379 has offset 0).

The definition of A254379 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254379.P6555260649648508655

`1-A254651(n)`
-/

namespace A254379.P6555260649648508655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A254651 n

end

end A254379.P6555260649648508655

namespace A254379

/-- `1-A254651(n)` -/
def P6555260649648508655.Spec : Prop :=
  ∀ n, P6555260649648508655.a n = A254379 n

end A254379

/-! ## A254379.P11537696663455735807

`A059841(n)*A010060(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A254379

/-- `A059841(n)*A010060(n)` -/
def P11537696663455735807.Spec : Prop :=
  ∀ n, P11537696663455735807.a n = A254379 n

theorem P11537696663455735807.correct : P11537696663455735807.Spec := by
  intro n
  simp only [A254379]

end A254379

/-! ## A254379.P4234740130759237753

`char[xor(n, lcm(2, n))-1]`
-/

namespace A254379.P4234740130759237753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (Nat.lcm 2 n) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254379.P4234740130759237753

namespace A254379

/-- `char[xor(n, lcm(2, n))-1]` -/
def P4234740130759237753.Spec : Prop :=
  ∀ n, (P4234740130759237753.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P13496252145802750567

`char[2*xor(n, Δ[n²])]`
-/

namespace A254379.P13496252145802750567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A254379.P13496252145802750567

namespace A254379

/-- `char[2*xor(n, Δ[n²])]` -/
def P13496252145802750567.Spec : Prop :=
  ∀ n, (P13496252145802750567.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P9193709394689090448

`char[2*comp[xor(n, 2*n)]]`
-/

namespace A254379.P9193709394689090448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254379.P9193709394689090448

namespace A254379

/-- `char[2*comp[xor(n, 2*n)]]` -/
def P9193709394689090448.Spec : Prop :=
  ∀ n, (P9193709394689090448.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P708056228937332769

`char[xor(2, 2*xor(n, 2*n))]`
-/

namespace A254379.P708056228937332769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (2 * Nat.xor n (2 * n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254379.P708056228937332769

namespace A254379

/-- `char[xor(2, 2*xor(n, 2*n))]` -/
def P708056228937332769.Spec : Prop :=
  ∀ n, (P708056228937332769.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P18388601946512434519

`∑[∑[∑{e}[and(n, -n), #]]]%2`
-/

namespace A254379.P18388601946512434519
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A254379.P18388601946512434519

namespace A254379

/-- `∑[∑[∑{e}[and(n, -n), #]]]%2` -/
def P18388601946512434519.Spec : Prop :=
  ∀ n, (P18388601946512434519.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P953034513848542579

`and(1, ∑[∑[∑{e}[and(n, -n), #]]])`
-/

namespace A254379.P953034513848542579
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254379.P953034513848542579

namespace A254379

/-- `and(1, ∑[∑[∑{e}[and(n, -n), #]]])` -/
def P953034513848542579.Spec : Prop :=
  ∀ n, (P953034513848542579.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P14606348359297227355

`((n+1)*∑[val(n+1, 2)])%2`
-/

namespace A254379.P14606348359297227355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A254379.P14606348359297227355

namespace A254379

/-- `((n+1)*∑[val(n+1, 2)])%2` -/
def P14606348359297227355.Spec : Prop :=
  ∀ n, (P14606348359297227355.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P10960348667840661681

`and(1, (n+1)*∑[val(n+1, 2)])`
-/

namespace A254379.P10960348667840661681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A254379.P10960348667840661681

namespace A254379

/-- `and(1, (n+1)*∑[val(n+1, 2)])` -/
def P10960348667840661681.Spec : Prop :=
  ∀ n, (P10960348667840661681.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P8237352716081132621

`and(1, and(n+1, ∑[val(n+1, 2)]))`
-/

namespace A254379.P8237352716081132621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.land (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A254379.P8237352716081132621

namespace A254379

/-- `and(1, and(n+1, ∑[val(n+1, 2)]))` -/
def P8237352716081132621.Spec : Prop :=
  ∀ n, (P8237352716081132621.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P9086480203446116975

`∑[a(n-1)+val(n, 2)]%2` with `a(0)=0`
-/

namespace A254379.P9086480203446116975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A254379.P9086480203446116975

namespace A254379

/-- `∑[a(n-1)+val(n, 2)]%2` -/
def P9086480203446116975.Spec : Prop :=
  ∀ n, (P9086480203446116975.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P1073439802574510865

`and(n+1, 1-a(and(n, n-1)))` with `a(0)=0`
-/

namespace A254379.P1073439802574510865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (n + 1 : ℤ) (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A254379.P1073439802574510865

namespace A254379

/-- `and(n+1, 1-a(and(n, n-1)))` -/
def P1073439802574510865.Spec : Prop :=
  ∀ n, P1073439802574510865.a n = A254379 n

end A254379

/-! ## A254379.P5984848764377370022

`and(1-a(and(n, n-1)), n-1)` with `a(0)=0`
-/

namespace A254379.P5984848764377370022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (1 - a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) ((n : ℤ) - 1)

end

end A254379.P5984848764377370022

namespace A254379

/-- `and(1-a(and(n, n-1)), n-1)` -/
def P5984848764377370022.Spec : Prop :=
  ∀ n, P5984848764377370022.a n = A254379 n

end A254379

/-! ## A254379.P10570573958222790199

`A102394(n)%2`
-/

namespace A254379.P10570573958222790199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102394 n) 2

end

end A254379.P10570573958222790199

namespace A254379

/-- `A102394(n)%2` -/
def P10570573958222790199.Spec : Prop :=
  ∀ n, P10570573958222790199.a n = A254379 n

end A254379

/-! ## A254379.P8625099821270885347

`A108804(n)%2`
-/

namespace A254379.P8625099821270885347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108804 n) 2

end

end A254379.P8625099821270885347

namespace A254379

/-- `A108804(n)%2` -/
def P8625099821270885347.Spec : Prop :=
  ∀ n, P8625099821270885347.a n = A254379 n

end A254379

/-! ## A254379.P14213970926331700678

`(1+(-1)^n)*(1-(-1)^A000120(n))/4`
-/

namespace A254379.P14213970926331700678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (-1) ^ n : ℚ) * (1 - (-1 : ℚ) ^ (A000120 n : ℤ)) / 4

end

end A254379.P14213970926331700678

namespace A254379

/-- `(1+(-1)^n)*(1-(-1)^A000120(n))/4` -/
def P14213970926331700678.Spec : Prop :=
  ∀ n, P14213970926331700678.a n = (A254379 n : ℚ)

end A254379

/-! ## A254379.P1016691319702689784

`char[xor(n, record[or(2, n)])]`
-/

namespace A254379.P1016691319702689784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254379.P1016691319702689784

namespace A254379

/-- `char[xor(n, record[or(2, n)])]` -/
def P1016691319702689784.Spec : Prop :=
  ∀ n, (P1016691319702689784.a n : ℤ) = A254379 n

end A254379

/-! ## A254379.P9454870604860067721

`char[xor(n, lt[5, xor(n, n+3)])]`
-/

namespace A254379.P9454870604860067721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A254379.P9454870604860067721

namespace A254379

/-- `char[xor(n, lt[5, xor(n, n+3)])]` -/
def P9454870604860067721.Spec : Prop :=
  ∀ n, (P9454870604860067721.a n : ℤ) = A254379 n

end A254379

/-!
# A254381: a(n) = 3^n*(2*n + 1)!/n!.

The programs for A254381, the canonical program `A254381.P14525169081707160950` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254381 has offset 0).

The definition of A254381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A254381.P14525169081707160950

`6*(2*n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254381

/-- `6*(2*n+1)*a(n-1)` -/
def P14525169081707160950.Spec : Prop :=
  ∀ n, (P14525169081707160950.a n : ℤ) = A254381 n

theorem P14525169081707160950.correct : P14525169081707160950.Spec := by
  intro n
  simp only [A254381]

end A254381

/-! ## A254381.P17216723385232163406

`3^n*(2*n+1)!/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A254381.P17216723385232163406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial (2 * n + 1) : ℚ) / (Nat.factorial n : ℚ)

end

end A254381.P17216723385232163406

namespace A254381

/-- `3^n*(2*n+1)!/n!` -/
def P17216723385232163406.Spec : Prop :=
  ∀ n, P17216723385232163406.a n = (A254381 n : ℚ)

end A254381

/-! ## A254381.P11421827132001215396

`∏[12*n+6]/6`
-/

namespace A254381.P11421827132001215396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A254381.P11421827132001215396

namespace A254381

/-- `∏[12*n+6]/6` -/
def P11421827132001215396.Spec : Prop :=
  ∀ n, P11421827132001215396.a n = (A254381 n : ℚ)

end A254381

/-! ## A254381.P4428483507987765970

`6*a(n-1)*Δ[n²]` with `a(0)=1`
-/

namespace A254381.P4428483507987765970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  6 * (a (n - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A254381.P4428483507987765970

namespace A254381

/-- `6*a(n-1)*Δ[n²]` -/
def P4428483507987765970.Spec : Prop :=
  ∀ n, P4428483507987765970.a n = A254381 n

end A254381

/-!
# A254382: Number of rooted labeled trees on n nodes such that every nonroot node is the child of a branching node or of the root.

The programs for A254382, there is no canonical definition to state claims against.
-/

/-! ## A254382.P5404967095865756500

`n*A335945(abs(1-n))`
-/

namespace A254382.P5404967095865756500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A335945 |1 - (n : ℤ)|.toNat

end

end A254382.P5404967095865756500

/-! ## A254382.P17692369408320239621

`n*A226080(A067764(n))`
-/

namespace A254382.P17692369408320239621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A226080 (A067764 n).toNat

end

end A254382.P17692369408320239621

/-! ## A254382.P12528313039024164624

`n*A115323(A185087(n))`
-/

namespace A254382.P12528313039024164624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115323 (A185087 n).toNat

end

end A254382.P12528313039024164624

/-!
# A254383: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254383, there is no canonical definition to state claims against.
-/

/-! ## A254383.P11833740281086039591

`A254390((n+1)²+n²)`
-/

namespace A254383.P11833740281086039591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 ((n + 1) ^ 2 + n ^ 2)

end

end A254383.P11833740281086039591

/-!
# A254384: Number of (n+2)X(2+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254384, there is no canonical definition to state claims against.
-/

/-! ## A254384.P1572458050051847279

`A254390(∑[n+2])`
-/

namespace A254384.P1572458050051847279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A254384.P1572458050051847279

/-! ## A254384.P15122454135591863251

`record[A254390(abs(A201163(n)))]`
-/

namespace A254384.P15122454135591863251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254384.P15122454135591863251

/-! ## A254384.P5164829369996155449

`record[A254390(Δ[A003453(n+5)])]`
-/

namespace A254384.P5164829369996155449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254384.P5164829369996155449

/-! ## A254384.P2435115610769380053

`record[gcd(A254390(n+2), A340583(n+2))]`
-/

namespace A254384.P2435115610769380053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A254390 (n + 2)) (A340583 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254384.P2435115610769380053

/-!
# A254385: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254385, there is no canonical definition to state claims against.
-/

/-! ## A254385.P9409783673326131798

`A254390(∑[n+3]+1)`
-/

namespace A254385.P9409783673326131798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A254385.P9409783673326131798

/-! ## A254385.P94411076402256384

`lcm(2, A254390(A034856(n+2)))`
-/

namespace A254385.P94411076402256384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A254390 (A034856 (n + 2)).toNat)

end

end A254385.P94411076402256384

/-! ## A254385.P9797502074323422676

`or(A028653(n+1), A254390(A034856(n+2)))`
-/

namespace A254385.P9797502074323422676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028653 (n + 1)) (A254390 (A034856 (n + 2)).toNat)

end

end A254385.P9797502074323422676

/-!
# A254386: Number of (n+2) X (4+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254386, there is no canonical definition to state claims against.
-/

/-! ## A254386.P13917689628799335211

`A254390(A141214(n+1))`
-/

namespace A254386.P13917689628799335211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A141214 (n + 1)).toNat

end

end A254386.P13917689628799335211

/-! ## A254386.P16268679604507576382

`A254390(A027379(n+2))`
-/

namespace A254386.P16268679604507576382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A027379 (n + 2)).toNat

end

end A254386.P16268679604507576382

/-! ## A254386.P2268820819811755525

`A254390(A055998(n+2))`
-/

namespace A254386.P2268820819811755525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A055998 (n + 2)).toNat

end

end A254386.P2268820819811755525

/-! ## A254386.P3729417933091320

`A254390(A155212(n)+5)`
-/

namespace A254386.P3729417933091320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A155212 n + 5).toNat

end

end A254386.P3729417933091320

/-! ## A254386.P14882766254548121039

`A254390(A056000(n)+7)`
-/

namespace A254386.P14882766254548121039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A056000 n + 7).toNat

end

end A254386.P14882766254548121039

/-!
# A254387: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254387, there is no canonical definition to state claims against.
-/

/-! ## A254387.P1143892968494800782

`A254390(comp[2*n]+∑[n+3]+7)`
-/

namespace A254387.P1143892968494800782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (∑ j ∈ Finset.range (n + 1), f2 j + 7))

end

end A254387.P1143892968494800782

/-!
# A254388: Number of (n+2) X (6+2) 0..1 arrays with every 3 X 3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254388, there is no canonical definition to state claims against.
-/

/-! ## A254388.P7381202795061854058

`A254390(A052905(n+3))`
-/

namespace A254388.P7381202795061854058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A052905 (n + 3)).toNat

end

end A254388.P7381202795061854058

/-! ## A254388.P12709110598662117304

`A254390(abs(A046691(n+4))-1)`
-/

namespace A254388.P12709110598662117304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (|A046691 (n + 4)| - 1).toNat

end

end A254388.P12709110598662117304

/-!
# A254389: 

The programs for A254389, there is no canonical definition to state claims against.
-/

/-! ## A254389.P3107826271504245782

`A254390(A046691(n+5)-2)`
-/

namespace A254389.P3107826271504245782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A046691 (n + 5) - 2).toNat

end

end A254389.P3107826271504245782

/-!
# A254391: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254391, there is no canonical definition to state claims against.
-/

/-! ## A254391.P582846768267846619

`A254390(∑[n+1]+2)`
-/

namespace A254391.P582846768267846619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A254391.P582846768267846619

/-! ## A254391.P10512307593111340192

`record[A010054(n)*A254390(n+2)]`
-/

namespace A254391.P10512307593111340192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A254390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254391.P10512307593111340192

/-! ## A254391.P15654116142420112093

`record[root(A254390(n+2), A071948(n))]`
-/

namespace A254391.P15654116142420112093
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A254390 (n + 2) : ℝ) ^ (1 / (A071948 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254391.P15654116142420112093

/-! ## A254391.P2188267665857890800

`record[gcd(A002262(n), A254390(n+2))]`
-/

namespace A254391.P2188267665857890800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A254390 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A254391.P2188267665857890800

/-! ## A254391.P1934666428231794167

`A254390(A133263(n+1))+A185238(n)`
-/

namespace A254391.P1934666428231794167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A133263 (n + 1)).toNat + A185238 n

end

end A254391.P1934666428231794167

/-!
# A254392: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254392, there is no canonical definition to state claims against.
-/

/-! ## A254392.P4341639532985621306

`A254390(∑[n+2]+4)`
-/

namespace A254392.P4341639532985621306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A254392.P4341639532985621306

/-! ## A254392.P8603948125237276368

`A254390(A167614(n+1))+A025469(n)`
-/

namespace A254392.P8603948125237276368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A167614 (n + 1)).toNat + A025469 n

end

end A254392.P8603948125237276368

/-! ## A254392.P2742977424286228819

`A254390(A167614(n+1))+A178798(n)`
-/

namespace A254392.P2742977424286228819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A167614 (n + 1)).toNat + A178798 n

end

end A254392.P2742977424286228819

/-! ## A254392.P9893401204107353281

`A063435(n)*A254390(A167614(n+1))`
-/

namespace A254392.P9893401204107353281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A254390 (A167614 (n + 1)).toNat

end

end A254392.P9893401204107353281

/-! ## A254392.P13686989402310251723

`A254390(A167614(n+1))*A287091(n)`
-/

namespace A254392.P13686989402310251723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A167614 (n + 1)).toNat * A287091 n

end

end A254392.P13686989402310251723

/-!
# A254393: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254393, there is no canonical definition to state claims against.
-/

/-! ## A254393.P12316404821401235132

`A254390(∑[n+3]+7)`
-/

namespace A254393.P12316404821401235132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A254393.P12316404821401235132

/-! ## A254393.P6611686360393782005

`A254390(A052905(n)+9)%A254387(n+1)`
-/

namespace A254393.P6611686360393782005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254390 (A052905 n + 9).toNat) (A254387 (n + 1))

end

end A254393.P6611686360393782005

/-! ## A254393.P11801085538332287240

`A254390(A052905(n)+9)^A053501(n)`
-/

namespace A254393.P11801085538332287240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254390 (A052905 n + 9).toNat : ℚ) ^ (A053501 n : ℤ)

end

end A254393.P11801085538332287240

/-!
# A254394: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254394, there is no canonical definition to state claims against.
-/

/-! ## A254394.P2141323536980519065

`A254390(A167499(n+3))`
-/

namespace A254394.P2141323536980519065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A167499 (n + 3)).toNat

end

end A254394.P2141323536980519065

/-!
# A254395: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock diagonal maximum plus antidiagonal maximum nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A254395, there is no canonical definition to state claims against.
-/

/-! ## A254395.P525964061786335297

`A254390(A167499(n+4)+1)`
-/

namespace A254395.P525964061786335297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A167499 (n + 4) + 1).toNat

end

end A254395.P525964061786335297

/-! ## A254395.P17340572441694679618

`A254390(eq[7, A131818(n+1)])`
-/

namespace A254395.P17340572441694679618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A254395.P17340572441694679618

/-!
# A254396: 

The programs for A254396, there is no canonical definition to state claims against.
-/

/-! ## A254396.P13692111566302407106

`A254390(A134869(n+8)-8-comp[2*n])`
-/

namespace A254396.P13692111566302407106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A134869 (n + 8) - 8 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A254396.P13692111566302407106

/-! ## A254396.P11251095791962271630

`A254390(A167487(A000027(n+1)+4))`
-/

namespace A254396.P11251095791962271630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254390 (A167487 (A000027 (n + 1) + 4).toNat).toNat

end

end A254396.P11251095791962271630

/-!
# A254397: Initial digits of A237424 in decimal representation.

The programs for A254397, the canonical program `A254397.P10038566822596681760` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254397 has offset 1).

The definition of A254397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254397.P10038566822596681760

`a(n-1)*char[∑[n+2]]+3` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A254397

/-- `a(n-1)*char[∑[n+2]]+3` -/
def P10038566822596681760.Spec : Prop :=
  ∀ n, (P10038566822596681760.a n : ℤ) = A254397 (n + 1)

theorem P10038566822596681760.correct : P10038566822596681760.Spec := by
  intro n
  simp only [A254397, Nat.add_sub_cancel]

end A254397

/-! ## A254397.P3385370157932584544

`A032766(Δ[A154426(A014132(n+1))])`
-/

namespace A254397.P3385370157932584544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154426 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (f1 (n + 1) - f1 n).toNat

end

end A254397.P3385370157932584544

namespace A254397

/-- `A032766(Δ[A154426(A014132(n+1))])` -/
def P3385370157932584544.Spec : Prop :=
  ∀ n, P3385370157932584544.a n = A254397 (n + 1)

end A254397

/-! ## A254397.P11205240646498151204

`A298296(C(a(n-1), A118032(n)^3))` with `a(0)=1`
-/

namespace A254397.P11205240646498151204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A298296 (Nat.choose (a (n - 1)).toNat (A118032 n ^ 3).toNat)

end

end A254397.P11205240646498151204

namespace A254397

/-- `A298296(C(a(n-1), A118032(n)^3))` -/
def P11205240646498151204.Spec : Prop :=
  ∀ n, P11205240646498151204.a n = A254397 (n + 1)

end A254397

/-! ## A254397.P11019919527716500424

`C(a(n-1), A116392(n)²)+3` with `a(0)=1`
-/

namespace A254397.P11019919527716500424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1)) (A116392 n ^ 2).toNat + 3

end

end A254397.P11019919527716500424

namespace A254397

/-- `C(a(n-1), A116392(n)²)+3` -/
def P11019919527716500424.Spec : Prop :=
  ∀ n, (P11019919527716500424.a n : ℤ) = A254397 (n + 1)

end A254397

/-! ## A254397.P17848625689268753912

`C(A277615(a(n-1)+1), A322230(n+1))+3` with `a(0)=1`
-/

namespace A254397.P17848625689268753912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (A277615 (a (n - 1) + 1)).toNat (A322230 (n + 1)).toNat + 3

end

end A254397.P17848625689268753912

namespace A254397

/-- `C(A277615(a(n-1)+1), A322230(n+1))+3` -/
def P17848625689268753912.Spec : Prop :=
  ∀ n, (P17848625689268753912.a n : ℤ) = A254397 (n + 1)

end A254397

/-! ## A254397.P15181904363762695355

`C(a(n-1), A143911(n+2)²)+3` with `a(0)=1`
-/

namespace A254397.P15181904363762695355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (a (n - 1)) (A143911 (n + 2) ^ 2).toNat + 3

end

end A254397.P15181904363762695355

namespace A254397

/-- `C(a(n-1), A143911(n+2)²)+3` -/
def P15181904363762695355.Spec : Prop :=
  ∀ n, (P15181904363762695355.a n : ℤ) = A254397 (n + 1)

end A254397

/-!
# A254398: Final digits of A237424 in decimal representation.

The programs for A254398, the canonical program `A254398.P5626578418110395062` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254398 has offset 1).

The definition of A254398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254398.P10920427073579059816

`a(2-char[∑[n]])` with `a(0)=1, a(1)=4, a(2)=7`
-/

namespace A254398.P10920427073579059816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7] fun n a =>
  a (2 - (if ∃ j, f1 j = n then 1 else 0))

end

end A254398.P10920427073579059816

namespace A254398

/-- `a(2-char[∑[n]])` -/
def P10920427073579059816.Spec : Prop :=
  ∀ n, (P10920427073579059816.a n : ℤ) = A254398 (n + 1)

end A254398

/-! ## A254398.P12138497802328000964

`a(xor(1, char[∑[n]]))+3` with `a(0)=1`
-/

namespace A254398.P12138497802328000964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)) + 3

end

end A254398.P12138497802328000964

namespace A254398

/-- `a(xor(1, char[∑[n]]))+3` -/
def P12138497802328000964.Spec : Prop :=
  ∀ n, (P12138497802328000964.a n : ℤ) = A254398 (n + 1)

end A254398

/-! ## A254398.P6759667875979539986

`a(1-char[C(n, 2)])+3` with `a(0)=1`
-/

namespace A254398.P6759667875979539986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (1 - (if ∃ j, f1 j = n then 1 else 0)) + 3

end

end A254398.P6759667875979539986

namespace A254398

/-- `a(1-char[C(n, 2)])+3` -/
def P6759667875979539986.Spec : Prop :=
  ∀ n, (P6759667875979539986.a n : ℤ) = A254398 (n + 1)

end A254398

/-! ## A254398.P4425199888827699921

`a((char[∑[n]]+1)%2)+3` with `a(0)=1`
-/

namespace A254398.P4425199888827699921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (((if ∃ j, f1 j = n then 1 else 0) + 1) % 2) + 3

end

end A254398.P4425199888827699921

namespace A254398

/-- `a((char[∑[n]]+1)%2)+3` -/
def P4425199888827699921.Spec : Prop :=
  ∀ n, (P4425199888827699921.a n : ℤ) = A254398 (n + 1)

end A254398

/-! ## A254398.P8302925334642580209

`floor(31/a(char[∑[n]]+1))` with `a(0)=1, a(1)=4`
-/

namespace A254398.P8302925334642580209
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ⌊31 / (a ((if ∃ j, f1 j = n then 1 else 0) + 1) : ℚ)⌋

end

end A254398.P8302925334642580209

namespace A254398

/-- `floor(31/a(char[∑[n]]+1))` -/
def P8302925334642580209.Spec : Prop :=
  ∀ n, P8302925334642580209.a n = A254398 (n + 1)

end A254398

/-! ## A254398.P4706619738024283510

`7-3*(char[∑[n]]+floor(acot(n)))`
-/

namespace A254398.P4706619738024283510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - 3 * (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A254398.P4706619738024283510

namespace A254398

/-- `7-3*(char[∑[n]]+floor(acot(n)))` -/
def P4706619738024283510.Spec : Prop :=
  ∀ n, P4706619738024283510.a n = A254398 (n + 1)

end A254398

/-! ## A254398.P7176781229564213765

`7-3*ceil(char[∑[n]]*acot(n))`
-/

namespace A254398.P7176781229564213765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - 3 * ⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉

end

end A254398.P7176781229564213765

namespace A254398

/-- `7-3*ceil(char[∑[n]]*acot(n))` -/
def P7176781229564213765.Spec : Prop :=
  ∀ n, P7176781229564213765.a n = A254398 (n + 1)

end A254398

/-! ## A254398.P10245015246040942515

`31%(ceil(char[∑[n]]*acot(n))+8)`
-/

namespace A254398.P10245015246040942515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 31 (⌈((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) * SequenceMachineLib.acot (n : ℝ)⌉ + 8)

end

end A254398.P10245015246040942515

namespace A254398

/-- `31%(ceil(char[∑[n]]*acot(n))+8)` -/
def P10245015246040942515.Spec : Prop :=
  ∀ n, P10245015246040942515.a n = A254398 (n + 1)

end A254398

/-! ## A254398.P8154261630947640925

`(2-char[∑[n]])²+dr(9*n)/3`
-/

namespace A254398.P8154261630947640925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ 2 : ℚ) + (SequenceMachineLib.digitalRoot (9 * n : ℤ) : ℚ) / 3

end

end A254398.P8154261630947640925

namespace A254398

/-- `(2-char[∑[n]])²+dr(9*n)/3` -/
def P8154261630947640925.Spec : Prop :=
  ∀ n, P8154261630947640925.a n = (A254398 (n + 1) : ℚ)

end A254398

/-! ## A254398.P5626578418110395062

`7-3*A073423(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A254398

/-- `7-3*A073423(n)` -/
def P5626578418110395062.Spec : Prop :=
  ∀ n, P5626578418110395062.a n = A254398 (n + 1)

theorem P5626578418110395062.correct : P5626578418110395062.Spec := by
  intro n
  simp only [A254398, Nat.add_sub_cancel]

end A254398

/-! ## A254398.P7383336096041516263

`xor(A035214(n), A040006(n))`
-/

namespace A254398.P7383336096041516263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A035214 n) (A040006 n)

end

end A254398.P7383336096041516263

namespace A254398

/-- `xor(A035214(n), A040006(n))` -/
def P7383336096041516263.Spec : Prop :=
  ∀ n, P7383336096041516263.a n = A254398 (n + 1)

end A254398

/-! ## A254398.P12867717105495413000

`A237424(n+1)%A040020(n)`
-/

namespace A254398.P12867717105495413000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237424 (n + 1)) (A040020 n)

end

end A254398.P12867717105495413000

namespace A254398

/-- `A237424(n+1)%A040020(n)` -/
def P12867717105495413000.Spec : Prop :=
  ∀ n, P12867717105495413000.a n = A254398 (n + 1)

end A254398

/-! ## A254398.P10259689567838262630

`A118517(A134060(n))`
-/

namespace A254398.P10259689567838262630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118517 (A134060 n).toNat

end

end A254398.P10259689567838262630

namespace A254398

/-- `A118517(A134060(n))` -/
def P10259689567838262630.Spec : Prop :=
  ∀ n, P10259689567838262630.a n = A254398 (n + 1)

end A254398

/-!
# A254399: A Fibonacci sum: a(n) = Sum_{j=0..n-1} F(j)^2*F(2*n-j), in which the F's are the Fibonacci numbers.

The programs for A254399, the canonical program `A254399.P2182745436888946370` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A254399 has offset 1).

The definition of A254399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A254399.P2182745436888946370

`A220362(n+1)-A164267(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A254399

/-- `A220362(n+1)-A164267(n)` -/
def P2182745436888946370.Spec : Prop :=
  ∀ n, P2182745436888946370.a n = A254399 (n + 1)

theorem P2182745436888946370.correct : P2182745436888946370.Spec := by
  intro n
  simp only [A254399, Nat.add_sub_cancel]

end A254399

/-! ## A254399.P7780686869835795964

`A220362(n+1)-∑[A049602(n)]`
-/

namespace A254399.P7780686869835795964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220362 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A254399.P7780686869835795964

namespace A254399

/-- `A220362(n+1)-∑[A049602(n)]` -/
def P7780686869835795964.Spec : Prop :=
  ∀ n, P7780686869835795964.a n = A254399 (n + 1)

end A254399

/-! ## A254399.P13316254297508319781

`A220362(n+1)+A094967(n)-A005207(n+1)`
-/

namespace A254399.P13316254297508319781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220362 (n + 1) + (A094967 n - A005207 (n + 1))

end

end A254399.P13316254297508319781

namespace A254399

/-- `A220362(n+1)+A094967(n)-A005207(n+1)` -/
def P13316254297508319781.Spec : Prop :=
  ∀ n, P13316254297508319781.a n = A254399 (n + 1)

end A254399

/-! ## A254399.P5214472383513934029

`A000045(n)*A070550(2*n+1)-A164267(n)`
-/

namespace A254399.P5214472383513934029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A070550 (2 * n + 1) - A164267 n

end

end A254399.P5214472383513934029

namespace A254399

/-- `A000045(n)*A070550(2*n+1)-A164267(n)` -/
def P5214472383513934029.Spec : Prop :=
  ∀ n, P5214472383513934029.a n = A254399 (n + 1)

end A254399

/-! ## A254399.P16905175652347241505

`∑[A000045(n)²]*A071679(n+1)-A164267(n)`
-/

namespace A254399.P16905175652347241505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A071679 (n + 1) - A164267 n

end

end A254399.P16905175652347241505

namespace A254399

/-- `∑[A000045(n)²]*A071679(n+1)-A164267(n)` -/
def P16905175652347241505.Spec : Prop :=
  ∀ n, P16905175652347241505.a n = A254399 (n + 1)

end A254399

