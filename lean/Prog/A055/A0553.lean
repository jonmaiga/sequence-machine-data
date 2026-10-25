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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A055300: Matrix inverse of triangle A055290(n+1,k).

The programs for A055300, there is no canonical definition to state claims against.
-/

/-! ## A055300.P3423307871618483660

`Δ[A087116(A325222(n))]`
-/

namespace A055300.P3423307871618483660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A325222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055300.P3423307871618483660

/-! ## A055300.P1946623447783948037

`Δ[A141256(A270880(n+1))]`
-/

namespace A055300.P1946623447783948037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 (A270880 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055300.P1946623447783948037

/-! ## A055300.P4446127292784512277

`Δ[A334028(A114329(abs(1-n)))]`
-/

namespace A055300.P4446127292784512277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A114329 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055300.P4446127292784512277

/-! ## A055300.P13645463524458398731

`A294068(A049297(n+3))+A060096(n)`
-/

namespace A055300.P13645463524458398731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 (A049297 (n + 3)).toNat + A060096 n

end

end A055300.P13645463524458398731

/-! ## A055300.P1863253518375161723

`A060096(n)+A011655(A325993(3*n+5))`
-/

namespace A055300.P1863253518375161723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060096 n + A011655 (A325993 (3 * n + 5)).toNat

end

end A055300.P1863253518375161723

/-!
# A055301: Column 2 of triangle A055300.

The programs for A055301, there is no canonical definition to state claims against.
-/

/-! ## A055301.P12784284981113082033

`A055300(∑[n]+2)`
-/

namespace A055301.P12784284981113082033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055300 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055301.P12784284981113082033

/-!
# A055302: Triangle of number of labeled rooted trees with n nodes and k leaves, n >= 1, 1 <= k <= n.

The programs for A055302, there is no canonical definition to state claims against.
-/

/-! ## A055302.P581835493432330690

`A106800(n)*A173333(n+1)`
-/

namespace A055302.P581835493432330690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 n * A173333 (n + 1)

end

end A055302.P581835493432330690

/-! ## A055302.P14740829921037489216

`A094587(A080036(n))*A106800(n)`
-/

namespace A055302.P14740829921037489216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A080036 n).toNat * A106800 n

end

end A055302.P14740829921037489216

/-! ## A055302.P5463381177564820720

`A131689(A061579(n))*A135278(n)`
-/

namespace A055302.P5463381177564820720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A061579 n).toNat * A135278 n

end

end A055302.P5463381177564820720

/-! ## A055302.P7439773853686317100

`A094587(A014132(n+1))*A106800(n)`
-/

namespace A055302.P7439773853686317100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A014132 (n + 1)).toNat * A106800 n

end

end A055302.P7439773853686317100

/-! ## A055302.P17607062243688963790

`A048993(A061579(n))*A173333(n+1)`
-/

namespace A055302.P17607062243688963790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A061579 n).toNat * A173333 (n + 1)

end

end A055302.P17607062243688963790

/-! ## A055302.P8122067230377672286

`A106800(n)*A181511(A038722(n+1))`
-/

namespace A055302.P8122067230377672286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 n * A181511 (A038722 (n + 1)).toNat

end

end A055302.P8122067230377672286

/-! ## A055302.P13916834724498202301

`A007318(A014132(n+1))*A131689(A061579(n))`
-/

namespace A055302.P13916834724498202301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A131689 (A061579 n).toNat

end

end A055302.P13916834724498202301

/-! ## A055302.P15581668742365011392

`A048993(A061579(n))*A181511(A038722(n+1))`
-/

namespace A055302.P15581668742365011392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A061579 n).toNat * A181511 (A038722 (n + 1)).toNat

end

end A055302.P15581668742365011392

/-!
# A055303: Number of labeled rooted trees with n nodes and 2 leaves.

The programs for A055303, the canonical program `A055303.P11658278093285741313` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055303 has offset 3).

The definition of A055303 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055303.P11658278093285741313

`3*A001754(n+3)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055303

/-- `3*A001754(n+3)` -/
def P11658278093285741313.Spec : Prop :=
  ∀ n, P11658278093285741313.a n = A055303 (n + 3)

theorem P11658278093285741313.correct : P11658278093285741313.Spec := by
  intro n
  simp only [A055303, Nat.add_sub_cancel]

end A055303

/-! ## A055303.P10490346399691080742

`(n+3)!*(n+1)*(n+2)/4`
-/

namespace A055303.P10490346399691080742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) * (n + 1) * (n + 2) : ℚ) / 4

end

end A055303.P10490346399691080742

namespace A055303

/-- `(n+3)!*(n+1)*(n+2)/4` -/
def P10490346399691080742.Spec : Prop :=
  ∀ n, P10490346399691080742.a n = (A055303 (n + 3) : ℚ)

end A055303

/-! ## A055303.P4387961139761486933

`∑[n+1]*∏[n+3]`
-/

namespace A055303.P4387961139761486933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A055303.P4387961139761486933

namespace A055303

/-- `∑[n+1]*∏[n+3]` -/
def P4387961139761486933.Spec : Prop :=
  ∀ n, (P4387961139761486933.a n : ℤ) = A055303 (n + 3)

end A055303

/-! ## A055303.P11420400996859770207

`(n+3)!*∑[n+1]/2`
-/

namespace A055303.P11420400996859770207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 3) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A055303.P11420400996859770207

namespace A055303

/-- `(n+3)!*∑[n+1]/2` -/
def P11420400996859770207.Spec : Prop :=
  ∀ n, P11420400996859770207.a n = (A055303 (n + 3) : ℚ)

end A055303

/-! ## A055303.P9062597222313909590

`abs((n+3)!/Δ[4/(n+1)])`
-/

namespace A055303.P9062597222313909590
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(Nat.factorial (n + 3) : ℚ) / (f1 (n + 1) - f1 n)|

end

end A055303.P9062597222313909590

namespace A055303

/-- `abs((n+3)!/Δ[4/(n+1)])` -/
def P9062597222313909590.Spec : Prop :=
  ∀ n, P9062597222313909590.a n = (A055303 (n + 3) : ℚ)

end A055303

/-! ## A055303.P5168147111344485859

`(n+3)!/Δ[-(4/(n+1))]`
-/

namespace A055303.P5168147111344485859
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(4 / (n + 1 : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 3) : ℚ) / (f1 (n + 1) - f1 n)

end

end A055303.P5168147111344485859

namespace A055303

/-- `(n+3)!/Δ[-(4/(n+1))]` -/
def P5168147111344485859.Spec : Prop :=
  ∀ n, P5168147111344485859.a n = (A055303 (n + 3) : ℚ)

end A055303

/-! ## A055303.P8564595807096829760

`lcm(n+2, n+1)*∏[n+3]/2`
-/

namespace A055303.P8564595807096829760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm (n + 2) (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 2

end

end A055303.P8564595807096829760

namespace A055303

/-- `lcm(n+2, n+1)*∏[n+3]/2` -/
def P8564595807096829760.Spec : Prop :=
  ∀ n, P8564595807096829760.a n = (A055303 (n + 3) : ℚ)

end A055303

/-! ## A055303.P12625355215700704336

`A200978(n+3)/2`
-/

namespace A055303.P12625355215700704336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200978 (n + 3) : ℚ) / 2

end

end A055303.P12625355215700704336

namespace A055303

/-- `A200978(n+3)/2` -/
def P12625355215700704336.Spec : Prop :=
  ∀ n, P12625355215700704336.a n = (A055303 (n + 3) : ℚ)

end A055303

/-! ## A055303.P3359150211765548469

`record[(n+1)*A185105(n+2)]`
-/

namespace A055303.P3359150211765548469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A185105 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055303.P3359150211765548469

namespace A055303

/-- `record[(n+1)*A185105(n+2)]` -/
def P3359150211765548469.Spec : Prop :=
  ∀ n, P3359150211765548469.a n = A055303 (n + 3)

end A055303

/-! ## A055303.P15872321759926161532

`A281881(A034856(n+2))`
-/

namespace A055303.P15872321759926161532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281881 (A034856 (n + 2)).toNat

end

end A055303.P15872321759926161532

namespace A055303

/-- `A281881(A034856(n+2))` -/
def P15872321759926161532.Spec : Prop :=
  ∀ n, P15872321759926161532.a n = A055303 (n + 3)

end A055303

/-!
# A055304: Number of labeled rooted trees with n nodes and 3 leaves.

The programs for A055304, the canonical program `A055304.P4115793359580215564` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055304 has offset 4).

The definition of A055304 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055304.P4115793359580215564

`(n+4)!*(n+1)*(n+2)*(n+3)*(3*(n+4)-8)/144`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055304

/-- `(n+4)!*(n+1)*(n+2)*(n+3)*(3*(n+4)-8)/144` -/
def P4115793359580215564.Spec : Prop :=
  ∀ n, P4115793359580215564.a n = (A055304 (n + 4) : ℚ)

end A055304

/-! ## A055304.P17833428951589726582

`(3*n+4)*A001755(n+4)`
-/

namespace A055304.P17833428951589726582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 4 : ℤ) * A001755 (n + 4)

end

end A055304.P17833428951589726582

namespace A055304

/-- `(3*n+4)*A001755(n+4)` -/
def P17833428951589726582.Spec : Prop :=
  ∀ n, P17833428951589726582.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P5249467577792966802

`∏[a(n-1)+1]*A001296(n+1)` with `a(0)=4`
-/

namespace A055304.P5249467577792966802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001296 (n + 1)

end

end A055304.P5249467577792966802

namespace A055304

/-- `∏[a(n-1)+1]*A001296(n+1)` -/
def P5249467577792966802.Spec : Prop :=
  ∀ n, P5249467577792966802.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P18213768670227127811

`A055302(A167614(n+2))`
-/

namespace A055304.P18213768670227127811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A167614 (n + 2)).toNat

end

end A055304.P18213768670227127811

namespace A055304

/-- `A055302(A167614(n+2))` -/
def P18213768670227127811.Spec : Prop :=
  ∀ n, P18213768670227127811.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P3534322886322356735

`A055302(eq[2, A141169(n)])`
-/

namespace A055304.P3534322886322356735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055304.P3534322886322356735

namespace A055304

/-- `A055302(eq[2, A141169(n)])` -/
def P3534322886322356735.Spec : Prop :=
  ∀ n, P3534322886322356735.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P1817244456788263161

`A055302(eq[3, A002262(n)])`
-/

namespace A055304.P1817244456788263161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055304.P1817244456788263161

namespace A055304

/-- `A055302(eq[3, A002262(n)])` -/
def P1817244456788263161.Spec : Prop :=
  ∀ n, P1817244456788263161.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P5903219714420873309

`A055302(A340266(n+2)+1)`
-/

namespace A055304.P5903219714420873309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A340266 (n + 2) + 1).toNat

end

end A055304.P5903219714420873309

namespace A055304

/-- `A055302(A340266(n+2)+1)` -/
def P5903219714420873309.Spec : Prop :=
  ∀ n, P5903219714420873309.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P16953905464773893037

`A055302(eq[4, A002260(n+1)])`
-/

namespace A055304.P16953905464773893037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055304.P16953905464773893037

namespace A055304

/-- `A055302(eq[4, A002260(n+1)])` -/
def P16953905464773893037.Spec : Prop :=
  ∀ n, P16953905464773893037.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P3405547280951533706

`A055302(eq[1, A144328(n+1)-2])`
-/

namespace A055304.P3405547280951533706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055304.P3405547280951533706

namespace A055304

/-- `A055302(eq[1, A144328(n+1)-2])` -/
def P3405547280951533706.Spec : Prop :=
  ∀ n, P3405547280951533706.a n = A055304 (n + 4)

end A055304

/-! ## A055304.P2164267241691467084

`A055302(eq[1, A327844(n+1)-2])`
-/

namespace A055304.P2164267241691467084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055304.P2164267241691467084

namespace A055304

/-- `A055302(eq[1, A327844(n+1)-2])` -/
def P2164267241691467084.Spec : Prop :=
  ∀ n, P2164267241691467084.a n = A055304 (n + 4)

end A055304

/-!
# A055305: Number of labeled rooted trees with n nodes and 4 leaves.

The programs for A055305, there is no canonical definition to state claims against.
-/

/-! ## A055305.P17254724709924539833

`∏[n+5]*A001297(n+1)`
-/

namespace A055305.P17254724709924539833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001297 (n + 1)

end

end A055305.P17254724709924539833

/-! ## A055305.P8265127078375643142

`A055302(A056000(n)+14)`
-/

namespace A055305.P8265127078375643142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A056000 n + 14).toNat

end

end A055305.P8265127078375643142

/-! ## A055305.P13403228879516438679

`A055302(eq[3, A141169(n)])`
-/

namespace A055305.P13403228879516438679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055305.P13403228879516438679

/-! ## A055305.P3473191326170099543

`A055302(eq[4, A002262(n)])`
-/

namespace A055305.P3473191326170099543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055305.P3473191326170099543

/-! ## A055305.P2008286089851944114

`A055302(A340266(n+3)+2)`
-/

namespace A055305.P2008286089851944114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A340266 (n + 3) + 2).toNat

end

end A055305.P2008286089851944114

/-! ## A055305.P3043821242248942200

`A055302(A051936(n+4)+13)`
-/

namespace A055305.P3043821242248942200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A051936 (n + 4) + 13).toNat

end

end A055305.P3043821242248942200

/-! ## A055305.P14726072148094301690

`A055302(eq[5, A002260(n+1)])`
-/

namespace A055305.P14726072148094301690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055305.P14726072148094301690

/-! ## A055305.P2400299626256241813

`A055302(eq[2, A144328(n+1)-2])`
-/

namespace A055305.P2400299626256241813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055305.P2400299626256241813

/-! ## A055305.P279638402393613839

`A055302(eq[2, A144328(n+1)/2])`
-/

namespace A055305.P279638402393613839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A055305.P279638402393613839

/-!
# A055306: Number of labeled rooted trees with n nodes and 5 leaves.

The programs for A055306, there is no canonical definition to state claims against.
-/

/-! ## A055306.P503541904831254505

`A055302(eq[5, A002262(n)])`
-/

namespace A055306.P503541904831254505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055306.P503541904831254505

/-! ## A055306.P14660329356582830746

`A055302(A340266(n+4)+3)`
-/

namespace A055306.P14660329356582830746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A340266 (n + 4) + 3).toNat

end

end A055306.P14660329356582830746

/-! ## A055306.P14373953844587828030

`A055302(eq[5, A130270(n+1)])`
-/

namespace A055306.P14373953844587828030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055306.P14373953844587828030

/-! ## A055306.P828550359662719247

`A055302(eq[6, A002260(n+1)])`
-/

namespace A055306.P828550359662719247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055306.P828550359662719247

/-! ## A055306.P6903206935442575442

`A055302(A253145(n+5)-(n+1))`
-/

namespace A055306.P6903206935442575442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (A253145 (n + 5) - (n + 1 : ℤ)).toNat

end

end A055306.P6903206935442575442

/-!
# A055307: Number of labeled rooted trees with n nodes and 6 leaves.

The programs for A055307, there is no canonical definition to state claims against.
-/

/-! ## A055307.P686994326074235238

`A055302(eq[6, A002262(n)])`
-/

namespace A055307.P686994326074235238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055307.P686994326074235238

/-! ## A055307.P18105335869486638973

`A055302(eq[8, A141169(n)])`
-/

namespace A055307.P18105335869486638973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055307.P18105335869486638973

/-! ## A055307.P1932230607777507555

`A055302(eq[64, A059268(n)])`
-/

namespace A055307.P1932230607777507555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055307.P1932230607777507555

/-! ## A055307.P10899275494447725517

`A055302(eq[5, A327844(n+1)])`
-/

namespace A055307.P10899275494447725517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055307.P10899275494447725517

/-! ## A055307.P9796028411770539616

`A055302(eq[7, A002260(n+1)])`
-/

namespace A055307.P9796028411770539616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055307.P9796028411770539616

/-! ## A055307.P11206221788426600757

`A055302(eq[8, A245093(n+1)])`
-/

namespace A055307.P11206221788426600757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055307.P11206221788426600757

/-!
# A055308: Number of labeled rooted trees with n nodes and 7 leaves.

The programs for A055308, there is no canonical definition to state claims against.
-/

/-! ## A055308.P14316060946808879794

`A055302(eq[7, A002262(n)])`
-/

namespace A055308.P14316060946808879794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055308.P14316060946808879794

/-! ## A055308.P16204778181926645287

`A055302(eq[13, A141169(n)])`
-/

namespace A055308.P16204778181926645287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055308.P16204778181926645287

/-! ## A055308.P13861689955489639407

`A055302(eq[7, A130270(n+1)])`
-/

namespace A055308.P13861689955489639407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055308.P13861689955489639407

/-! ## A055308.P4799275565684436141

`A055302(eq[7, A144328(n+1)])`
-/

namespace A055308.P4799275565684436141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055308.P4799275565684436141

/-! ## A055308.P3908144791098115822

`A055302(eq[8, A002260(n+1)])`
-/

namespace A055308.P3908144791098115822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055308.P3908144791098115822

/-!
# A055309: Number of labeled rooted trees with n nodes and 8 leaves.

The programs for A055309, there is no canonical definition to state claims against.
-/

/-! ## A055309.P139886095185119449

`A055302(eq[8, A002262(n)])`
-/

namespace A055309.P139886095185119449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055309.P139886095185119449

/-! ## A055309.P1266979042635864578

`A055302(eq[7, A327844(n+1)])`
-/

namespace A055309.P1266979042635864578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055309.P1266979042635864578

/-! ## A055309.P18138730286450944219

`A055302(eq[8, A144328(n+1)])`
-/

namespace A055309.P18138730286450944219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055309.P18138730286450944219

/-! ## A055309.P8154015647465805793

`A055302(eq[9, A002260(n+1)])`
-/

namespace A055309.P8154015647465805793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055309.P8154015647465805793

/-! ## A055309.P2431078369264115145

`A055302(eq[7, A025581(n)]+16)`
-/

namespace A055309.P2431078369264115145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 16)

end

end A055309.P2431078369264115145

/-!
# A055310: Number of labeled rooted trees with n nodes and 9 leaves.

The programs for A055310, there is no canonical definition to state claims against.
-/

/-! ## A055310.P10613517097136769248

`A055302(eq[9, A002262(n)])`
-/

namespace A055310.P10613517097136769248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055302 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055310.P10613517097136769248

/-!
# A055314: Triangle T(n,k) read by rows: number of labeled trees with n nodes and k leaves, n >= 2, 2 <= k <= n.

The programs for A055314, there is no canonical definition to state claims against.
-/

/-! ## A055314.P5651705541213793730

`A106800(n)*A162995(n+1)`
-/

namespace A055314.P5651705541213793730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106800 n * A162995 (n + 1)

end

end A055314.P5651705541213793730

/-! ## A055314.P8455317680285198122

`A048993(A061579(n))*A162995(n+1)`
-/

namespace A055314.P8455317680285198122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A061579 n).toNat * A162995 (n + 1)

end

end A055314.P8455317680285198122

/-! ## A055314.P2067820443867830851

`A104712(n+2)*A131689(A061579(n))`
-/

namespace A055314.P2067820443867830851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) * A131689 (A061579 n).toNat

end

end A055314.P2067820443867830851

/-! ## A055314.P8532178657809038904

`A055302(n+1)/A173333(n+1)*A162995(n+1)`
-/

namespace A055314.P8532178657809038904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055302 (n + 1) : ℚ) / (A173333 (n + 1) : ℚ) * (A162995 (n + 1) : ℚ)

end

end A055314.P8532178657809038904

/-! ## A055314.P51850963882410374

`A131689(A061579(n))*A135278(A014132(n+1))`
-/

namespace A055314.P51850963882410374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131689 (A061579 n).toNat * A135278 (A014132 (n + 1)).toNat

end

end A055314.P51850963882410374

/-!
# A055315: Number of labeled trees with n nodes and 3 leaves.

The programs for A055315, the canonical program `A055315.P6419722245387254941` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055315 has offset 4).

The definition of A055315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055315.P6419722245387254941

`(n+4)!*(n+1)*(n+2)/12`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055315

/-- `(n+4)!*(n+1)*(n+2)/12` -/
def P6419722245387254941.Spec : Prop :=
  ∀ n, P6419722245387254941.a n = (A055315 (n + 4) : ℚ)

end A055315

/-! ## A055315.P2505784081766356722

`∑[n+1]*∏[n+4]`
-/

namespace A055315.P2505784081766356722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A055315.P2505784081766356722

namespace A055315

/-- `∑[n+1]*∏[n+4]` -/
def P2505784081766356722.Spec : Prop :=
  ∀ n, (P2505784081766356722.a n : ℤ) = A055315 (n + 4)

end A055315

/-! ## A055315.P15412803634369964729

`(n+4)!*∑[n+1]/6`
-/

namespace A055315.P15412803634369964729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 4) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) / 6

end

end A055315.P15412803634369964729

namespace A055315

/-- `(n+4)!*∑[n+1]/6` -/
def P15412803634369964729.Spec : Prop :=
  ∀ n, P15412803634369964729.a n = (A055315 (n + 4) : ℚ)

end A055315

/-! ## A055315.P14481542112812442095

`2^(log2(A216119(n+4))+1)`
-/

namespace A055315.P14481542112812442095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 (A216119 (n + 4) : ℝ) + 1)

end

end A055315.P14481542112812442095

namespace A055315

/-- `2^(log2(A216119(n+4))+1)` -/
def P14481542112812442095.Spec : Prop :=
  ∀ n, P14481542112812442095.a n = (A055315 (n + 4) : ℝ)

end A055315

/-! ## A055315.P4783466457886980142

`4*(A005461(n+1)+1)-4`
-/

namespace A055315.P4783466457886980142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005461 (n + 1) + 1) - 4

end

end A055315.P4783466457886980142

namespace A055315

/-- `4*(A005461(n+1)+1)-4` -/
def P4783466457886980142.Spec : Prop :=
  ∀ n, P4783466457886980142.a n = A055315 (n + 4)

end A055315

/-! ## A055315.P15748867882782306549

`record[A062137(A254047(n+1))*A254047(n+1)]`
-/

namespace A055315.P15748867882782306549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062137 (A254047 (n + 1)).toNat * A254047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055315.P15748867882782306549

namespace A055315

/-- `record[A062137(A254047(n+1))*A254047(n+1)]` -/
def P15748867882782306549.Spec : Prop :=
  ∀ n, P15748867882782306549.a n = A055315 (n + 4)

end A055315

/-! ## A055315.P15717225227135679269

`A200979(n+4)/(2*(n+3))`
-/

namespace A055315.P15717225227135679269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200979 (n + 4) : ℚ) / (2 * (n + 3) : ℚ)

end

end A055315.P15717225227135679269

namespace A055315

/-- `A200979(n+4)/(2*(n+3))` -/
def P15717225227135679269.Spec : Prop :=
  ∀ n, P15717225227135679269.a n = (A055315 (n + 4) : ℚ)

end A055315

/-! ## A055315.P17700918909299800379

`A000537(n+1)*A001715(n+4)/A000217(n+1)`
-/

namespace A055315.P17700918909299800379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 1) * A001715 (n + 4) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A055315.P17700918909299800379

namespace A055315

/-- `A000537(n+1)*A001715(n+4)/A000217(n+1)` -/
def P17700918909299800379.Spec : Prop :=
  ∀ n, P17700918909299800379.a n = (A055315 (n + 4) : ℚ)

end A055315

/-! ## A055315.P18415508937652022081

`A055314(∑[n+2]+4)`
-/

namespace A055315.P18415508937652022081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A055315.P18415508937652022081

namespace A055315

/-- `A055314(∑[n+2]+4)` -/
def P18415508937652022081.Spec : Prop :=
  ∀ n, P18415508937652022081.a n = A055315 (n + 4)

end A055315

/-!
# A055316: Number of labeled trees with n nodes and 4 leaves.

The programs for A055316, the canonical program `A055316.P13366547866585846828` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055316 has offset 5).

The definition of A055316 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055316.P13366547866585846828

`(n+5)!*(n+1)*(n+2)*(n+3)*(3*(n+5)-11)/576`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055316

/-- `(n+5)!*(n+1)*(n+2)*(n+3)*(3*(n+5)-11)/576` -/
def P13366547866585846828.Spec : Prop :=
  ∀ n, P13366547866585846828.a n = (A055316 (n + 5) : ℚ)

end A055316

/-! ## A055316.P5847290733948182787

`∏[n+5]*A001296(n+1)`
-/

namespace A055316.P5847290733948182787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001296 (n + 1)

end

end A055316.P5847290733948182787

namespace A055316

/-- `∏[n+5]*A001296(n+1)` -/
def P5847290733948182787.Spec : Prop :=
  ∀ n, P5847290733948182787.a n = A055316 (n + 5)

end A055316

/-! ## A055316.P9420742891410478689

`A055314(A052905(n)+9)`
-/

namespace A055316.P9420742891410478689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A052905 n + 9).toNat

end

end A055316.P9420742891410478689

namespace A055316

/-- `A055314(A052905(n)+9)` -/
def P9420742891410478689.Spec : Prop :=
  ∀ n, P9420742891410478689.a n = A055316 (n + 5)

end A055316

/-! ## A055316.P5175036866411044483

`A055314(A167614(n+2)+1)`
-/

namespace A055316.P5175036866411044483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A167614 (n + 2) + 1).toNat

end

end A055316.P5175036866411044483

namespace A055316

/-- `A055314(A167614(n+2)+1)` -/
def P5175036866411044483.Spec : Prop :=
  ∀ n, P5175036866411044483.a n = A055316 (n + 5)

end A055316

/-! ## A055316.P742353250969313179

`A055314(A340266(n+2)+2)`
-/

namespace A055316.P742353250969313179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A340266 (n + 2) + 2).toNat

end

end A055316.P742353250969313179

namespace A055316

/-- `A055314(A340266(n+2)+2)` -/
def P742353250969313179.Spec : Prop :=
  ∀ n, P742353250969313179.a n = A055316 (n + 5)

end A055316

/-! ## A055316.P108332784830446880

`A055314(A167487(n+2)-3)`
-/

namespace A055316.P108332784830446880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A167487 (n + 2) - 3).toNat

end

end A055316.P108332784830446880

namespace A055316

/-- `A055314(A167487(n+2)-3)` -/
def P108332784830446880.Spec : Prop :=
  ∀ n, P108332784830446880.a n = A055316 (n + 5)

end A055316

/-! ## A055316.P9793473817774850412

`A055314(Δ[A023545(n+1)-n²])`
-/

namespace A055316.P9793473817774850412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (f1 (n + 1) - f1 n).toNat

end

end A055316.P9793473817774850412

namespace A055316

/-- `A055314(Δ[A023545(n+1)-n²])` -/
def P9793473817774850412.Spec : Prop :=
  ∀ n, P9793473817774850412.a n = A055316 (n + 5)

end A055316

/-! ## A055316.P13681772817269543617

`A055314(Δ[A034857(n+1)]-(n-3))`
-/

namespace A055316.P13681772817269543617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (f1 (n + 1) - f1 n - ((n : ℤ) - 3)).toNat

end

end A055316.P13681772817269543617

namespace A055316

/-- `A055314(Δ[A034857(n+1)]-(n-3))` -/
def P13681772817269543617.Spec : Prop :=
  ∀ n, P13681772817269543617.a n = A055316 (n + 5)

end A055316

/-!
# A055317: Number of labeled trees with n nodes and 5 leaves.

The programs for A055317, there is no canonical definition to state claims against.
-/

/-! ## A055317.P5694227422535674278

`∏[n+6]*A001297(n+1)`
-/

namespace A055317.P5694227422535674278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001297 (n + 1)

end

end A055317.P5694227422535674278

/-! ## A055317.P16882350840450139189

`3*(n+1)*(n+2)*A062194(n)`
-/

namespace A055317.P16882350840450139189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) * ((n + 2 : ℤ) * A062194 n)

end

end A055317.P16882350840450139189

/-! ## A055317.P5210009511191246015

`C(n+6, 5)*∑[n+1]*A061206(n+1)`
-/

namespace A055317.P5210009511191246015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n + 6) 5 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A061206 (n + 1)

end

end A055317.P5210009511191246015

/-! ## A055317.P10360075971144377023

`A055314(A155212(n)+13)`
-/

namespace A055317.P10360075971144377023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A155212 n + 13).toNat

end

end A055317.P10360075971144377023

/-! ## A055317.P296660335114574150

`A055314(A056000(n)+15)`
-/

namespace A055317.P296660335114574150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A056000 n + 15).toNat

end

end A055317.P296660335114574150

/-! ## A055317.P16938526708554387338

`A055314(A000217(n+4)+5)`
-/

namespace A055317.P16938526708554387338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A000217 (n + 4) + 5).toNat

end

end A055317.P16938526708554387338

/-! ## A055317.P2295719992311176317

`A055314(eq[6, A131818(n+1)])`
-/

namespace A055317.P2295719992311176317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055317.P2295719992311176317

/-!
# A055318: Number of labeled trees with n nodes and 6 leaves.

The programs for A055318, there is no canonical definition to state claims against.
-/

/-! ## A055318.P9468452215069695585

`A055314(A056115(n)+21)`
-/

namespace A055318.P9468452215069695585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A056115 n + 21).toNat

end

end A055318.P9468452215069695585

/-! ## A055318.P12209268766749920578

`A055314(A167614(n+4)+3)`
-/

namespace A055318.P12209268766749920578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A167614 (n + 4) + 3).toNat

end

end A055318.P12209268766749920578

/-! ## A055318.P13901726229506517772

`A055314(A000217(n+5)+6)`
-/

namespace A055318.P13901726229506517772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A000217 (n + 5) + 6).toNat

end

end A055318.P13901726229506517772

/-! ## A055318.P13600766618120162844

`A055314(eq[7, A131818(n+1)])`
-/

namespace A055318.P13600766618120162844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055318.P13600766618120162844

/-! ## A055318.P6791556196772564878

`A055314(Δ[A023545(n+1)]+10)`
-/

namespace A055318.P6791556196772564878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (f1 (n + 1) - f1 n + 10).toNat

end

end A055318.P6791556196772564878

/-!
# A055319: Number of labeled trees with n nodes and 7 leaves.

The programs for A055319, there is no canonical definition to state claims against.
-/

/-! ## A055319.P446698895288748079

`A055314(eq[11, A066657(n)])`
-/

namespace A055319.P446698895288748079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055319.P446698895288748079

/-! ## A055319.P15716119863207004386

`A055314(A167499(n+5)+2)`
-/

namespace A055319.P15716119863207004386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A167499 (n + 5) + 2).toNat

end

end A055319.P15716119863207004386

/-! ## A055319.P5554347971384643545

`A055314(A000096(n+5)+8)`
-/

namespace A055319.P5554347971384643545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A000096 (n + 5) + 8).toNat

end

end A055319.P5554347971384643545

/-! ## A055319.P1033209347160844880

`A055314(eq[8, A131818(n+1)])`
-/

namespace A055319.P1033209347160844880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055319.P1033209347160844880

/-! ## A055319.P18202576611009748622

`A055314(eq[6, A144328(n+1)]+1)`
-/

namespace A055319.P18202576611009748622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055319.P18202576611009748622

/-!
# A055320: Number of labeled trees with n nodes and 8 leaves.

The programs for A055320, there is no canonical definition to state claims against.
-/

/-! ## A055320.P2006739867858793979

`A055314(eq[13, A066657(n)])`
-/

namespace A055320.P2006739867858793979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055320.P2006739867858793979

/-! ## A055320.P7396252517729669824

`A055314(A167487(n+6)+1)`
-/

namespace A055320.P7396252517729669824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A167487 (n + 6) + 1).toNat

end

end A055320.P7396252517729669824

/-! ## A055320.P11916293521964172934

`A055314(A000217(n+7)+8)`
-/

namespace A055320.P11916293521964172934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A000217 (n + 7) + 8).toNat

end

end A055320.P11916293521964172934

/-! ## A055320.P3079794381927872050

`A055314(eq[7, A002262(n)]+1)`
-/

namespace A055320.P3079794381927872050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055320.P3079794381927872050

/-! ## A055320.P9873315204397378306

`A055314(eq[9, A131818(n+1)])`
-/

namespace A055320.P9873315204397378306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055320.P9873315204397378306

/-!
# A055321: Number of labeled trees with n nodes and 9 leaves.

The programs for A055321, there is no canonical definition to state claims against.
-/

/-! ## A055321.P12528193256545065342

`A055314(A000124(n+8)+8)`
-/

namespace A055321.P12528193256545065342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A000124 (n + 8) + 8).toNat

end

end A055321.P12528193256545065342

/-! ## A055321.P15010817206747780023

`A055314(A000217(n+8)+9)`
-/

namespace A055321.P15010817206747780023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A000217 (n + 8) + 9).toNat

end

end A055321.P15010817206747780023

/-! ## A055321.P5276330852914258980

`A055314(eq[8, A002262(n)]+1)`
-/

namespace A055321.P5276330852914258980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A055321.P5276330852914258980

/-! ## A055321.P12118445359576970957

`A055314(eq[10, A131818(n+1)])`
-/

namespace A055321.P12118445359576970957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055321.P12118445359576970957

/-! ## A055321.P5710155652551104866

`A055314(A155212(n+6)-2*(n+1))`
-/

namespace A055321.P5710155652551104866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (A155212 (n + 6) - (2 * (n + 1) : ℤ)).toNat

end

end A055321.P5710155652551104866

/-! ## A055321.P4246474954884097197

`A055314(eq[9, A025581(n)]-A005843(n))`
-/

namespace A055321.P4246474954884097197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A005843 n).toNat

end

end A055321.P4246474954884097197

/-!
# A055322: Number of labeled trees with n nodes and 10 leaves.

The programs for A055322, there is no canonical definition to state claims against.
-/

/-! ## A055322.P11830042325650720404

`A055314(eq[11, A131818(n+1)])`
-/

namespace A055322.P11830042325650720404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055322.P11830042325650720404

/-!
# A055325: Matrix inverse of Euler's triangle A008292.

The programs for A055325, there is no canonical definition to state claims against.
-/

/-! ## A055325.P3504693084738117802

`(and(2, comp[∑[n]]+n)-1)*A162498(n+1)`
-/

namespace A055325.P3504693084738117802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A162498 (n + 1)

end

end A055325.P3504693084738117802

/-! ## A055325.P13317103491506625230

`A097807(n)*A162498(n+1)`
-/

namespace A055325.P13317103491506625230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A162498 (n + 1)

end

end A055325.P13317103491506625230

/-! ## A055325.P12607207570484878584

`A033999(A025581(n))*A162498(n+1)`
-/

namespace A055325.P12607207570484878584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A162498 (n + 1)

end

end A055325.P12607207570484878584

/-! ## A055325.P4195812117767143295

`A033999(A051162(n))*A162498(n+1)`
-/

namespace A055325.P4195812117767143295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A162498 (n + 1)

end

end A055325.P4195812117767143295

/-! ## A055325.P14476924885994735468

`A004718(A130321(n))*A162498(n+1)`
-/

namespace A055325.P14476924885994735468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A130321 n).toNat * A162498 (n + 1)

end

end A055325.P14476924885994735468

/-!
# A055326: Column 1 of triangle A055325.

The programs for A055326, there is no canonical definition to state claims against.
-/

/-! ## A055326.P10598193786882906309

`A055325(∑[n]+1)`
-/

namespace A055326.P10598193786882906309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055325 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055326.P10598193786882906309

/-! ## A055326.P14562914554968131322

`or(1, A055325(A000124(n)))`
-/

namespace A055326.P14562914554968131322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055325 (A000124 n).toNat)

end

end A055326.P14562914554968131322

/-! ## A055326.P5977004778805520038

`A185284(n)+A055325(A000124(n))`
-/

namespace A055326.P5977004778805520038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A055325 (A000124 n).toNat

end

end A055326.P5977004778805520038

/-! ## A055326.P5923186148748766694

`A055325(A000124(n))+A008683(8*(n+1))`
-/

namespace A055326.P5923186148748766694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055325 (A000124 n).toNat + A008683 (8 * (n + 1))

end

end A055326.P5923186148748766694

/-! ## A055326.P15440997053689595765

`A007318(A007862(n+1))*A055325(A000124(n))`
-/

namespace A055326.P15440997053689595765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007862 (n + 1)).toNat * A055325 (A000124 n).toNat

end

end A055326.P15440997053689595765

/-!
# A055327: Triangle of rooted identity trees with n nodes and k leaves.

The programs for A055327, there is no canonical definition to state claims against.
-/

/-! ## A055327.P15147958748454014563

`A301342(lt[0, A301342(n+1)]+1)`
-/

namespace A055327.P15147958748454014563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A055327.P15147958748454014563

/-!
# A055328: Number of rooted identity trees with n nodes and 3 leaves.

The programs for A055328, the canonical program `A055328.P15199851487277721670` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055328 has offset 6).

The definition of A055328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055328.P15199851487277721670

`∑[∑[∑[a(n-2)+(n+1)%3]]]` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055328

/-- `∑[∑[∑[a(n-2)+(n+1)%3]]]` -/
def P15199851487277721670.Spec : Prop :=
  ∀ n, (P15199851487277721670.a n : ℤ) = A055328 (n + 6)

theorem P15199851487277721670.correct : P15199851487277721670.Spec := by
  intro n
  simp only [A055328, Nat.add_sub_cancel]

end A055328

/-! ## A055328.P6331150479659809013

`A055364(n+5)+∑[∑[ceil(n/3)]]`
-/

namespace A055328.P6331150479659809013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055364 (n + 5) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P6331150479659809013

namespace A055328

/-- `A055364(n+5)+∑[∑[ceil(n/3)]]` -/
def P6331150479659809013.Spec : Prop :=
  ∀ n, P6331150479659809013.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P12090893908663298879

`A032091(n+6)-A266769(n)`
-/

namespace A055328.P12090893908663298879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) - A266769 n

end

end A055328.P12090893908663298879

namespace A055328

/-- `A032091(n+6)-A266769(n)` -/
def P12090893908663298879.Spec : Prop :=
  ∀ n, P12090893908663298879.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P11042988153340374513

`A001752(n+1)-A014125(n+1)`
-/

namespace A055328.P11042988153340374513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) - A014125 (n + 1)

end

end A055328.P11042988153340374513

namespace A055328

/-- `A001752(n+1)-A014125(n+1)` -/
def P11042988153340374513.Spec : Prop :=
  ∀ n, P11042988153340374513.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P16374517556047432496

`A001752(n+1)-(A000601(n+1)+A000601(n))`
-/

namespace A055328.P16374517556047432496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 (n + 1) - (A000601 (n + 1) + A000601 n)

end

end A055328.P16374517556047432496

namespace A055328

/-- `A001752(n+1)-(A000601(n+1)+A000601(n))` -/
def P16374517556047432496.Spec : Prop :=
  ∀ n, P16374517556047432496.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P4071977102876960589

`∑[∑[∑[A105637(n+1)]]]`
-/

namespace A055328.P4071977102876960589
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P4071977102876960589

namespace A055328

/-- `∑[∑[∑[A105637(n+1)]]]` -/
def P4071977102876960589.Spec : Prop :=
  ∀ n, P4071977102876960589.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P17348274245488979117

`∑[∑[∑[A130481(n+1)-a(n-1)]]]` with `a(0)=1`
-/

namespace A055328.P17348274245488979117
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A130481 (n + 1) - f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P17348274245488979117

namespace A055328

/-- `∑[∑[∑[A130481(n+1)-a(n-1)]]]` -/
def P17348274245488979117.Spec : Prop :=
  ∀ n, P17348274245488979117.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P8732158150079648580

`A181120(n+2)+A001752(n)`
-/

namespace A055328.P8732158150079648580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 2) + A001752 n

end

end A055328.P8732158150079648580

namespace A055328

/-- `A181120(n+2)+A001752(n)` -/
def P8732158150079648580.Spec : Prop :=
  ∀ n, P8732158150079648580.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P6513083890698808760

`∑[∑[A108579(n+5)]]`
-/

namespace A055328.P6513083890698808760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108579 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P6513083890698808760

namespace A055328

/-- `∑[∑[A108579(n+5)]]` -/
def P6513083890698808760.Spec : Prop :=
  ∀ n, P6513083890698808760.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P6155041252637045217

`∑[∑[A001399(2*n+1)-A069905(n+1)]]`
-/

namespace A055328.P6155041252637045217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n + 1) - A069905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P6155041252637045217

namespace A055328

/-- `∑[∑[A001399(2*n+1)-A069905(n+1)]]` -/
def P6155041252637045217.Spec : Prop :=
  ∀ n, P6155041252637045217.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P14735831582287928312

`∑[∑[A001399(2*n+1)]-A181120(n+1)]`
-/

namespace A055328.P14735831582287928312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A181120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P14735831582287928312

namespace A055328

/-- `∑[∑[A001399(2*n+1)]-A181120(n+1)]` -/
def P14735831582287928312.Spec : Prop :=
  ∀ n, P14735831582287928312.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P236231939589199657

`∑[∑[A154958(2*n)+A002620(n+1)]]`
-/

namespace A055328.P236231939589199657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (2 * n) + A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P236231939589199657

namespace A055328

/-- `∑[∑[A154958(2*n)+A002620(n+1)]]` -/
def P236231939589199657.Spec : Prop :=
  ∀ n, P236231939589199657.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P18062819852096025195

`∑[record[A254707(n)]]`
-/

namespace A055328.P18062819852096025195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P18062819852096025195

namespace A055328

/-- `∑[record[A254707(n)]]` -/
def P18062819852096025195.Spec : Prop :=
  ∀ n, P18062819852096025195.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P7684798580818596130

`∑[A254707(2*n)]`
-/

namespace A055328.P7684798580818596130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254707 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P7684798580818596130

namespace A055328

/-- `∑[A254707(2*n)]` -/
def P7684798580818596130.Spec : Prop :=
  ∀ n, P7684798580818596130.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P17345512191665940057

`A254707(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A055328.P17345512191665940057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A254707 (n + n) + a (n - 1)

end

end A055328.P17345512191665940057

namespace A055328

/-- `A254707(n+n)+a(n-1)` -/
def P17345512191665940057.Spec : Prop :=
  ∀ n, P17345512191665940057.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P13904578166733836564

`∑[record[A254708(n)-A266755(n)]]`
-/

namespace A055328.P13904578166733836564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 n - A266755 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P13904578166733836564

namespace A055328

/-- `∑[record[A254708(n)-A266755(n)]]` -/
def P13904578166733836564.Spec : Prop :=
  ∀ n, P13904578166733836564.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P1244215339136527586

`A254594(2*n+1)+A001752(n)`
-/

namespace A055328.P1244215339136527586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254594 (2 * n + 1) + A001752 n

end

end A055328.P1244215339136527586

namespace A055328

/-- `A254594(2*n+1)+A001752(n)` -/
def P1244215339136527586.Spec : Prop :=
  ∀ n, P1244215339136527586.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P12162285715322096529

`A028291(2*n+1)-A028291(n)`
-/

namespace A055328.P12162285715322096529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028291 (2 * n + 1) - A028291 n

end

end A055328.P12162285715322096529

namespace A055328

/-- `A028291(2*n+1)-A028291(n)` -/
def P12162285715322096529.Spec : Prop :=
  ∀ n, P12162285715322096529.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P6343048056925705408

`∑[A254708(2*n)-A266755(2*n)]`
-/

namespace A055328.P6343048056925705408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254708 (2 * n) - A266755 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P6343048056925705408

namespace A055328

/-- `∑[A254708(2*n)-A266755(2*n)]` -/
def P6343048056925705408.Spec : Prop :=
  ∀ n, P6343048056925705408.a n = A055328 (n + 6)

end A055328

/-! ## A055328.P3216473303777956512

`∑[∑[A008797(2*n)+A008615(n+1)]]`
-/

namespace A055328.P3216473303777956512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (2 * n) + A008615 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055328.P3216473303777956512

namespace A055328

/-- `∑[∑[A008797(2*n)+A008615(n+1)]]` -/
def P3216473303777956512.Spec : Prop :=
  ∀ n, P3216473303777956512.a n = A055328 (n + 6)

end A055328

/-!
# A055329: Number of rooted identity trees with n nodes and 4 leaves.

The programs for A055329, there is no canonical definition to state claims against.
-/

/-! ## A055329.P7018072863830668313

`A055327(A002620(n+7)+5)`
-/

namespace A055329.P7018072863830668313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055327 (A002620 (n + 7) + 5).toNat

end

end A055329.P7018072863830668313

/-! ## A055329.P15537179143876660943

`A301342(eq[4, A299038(n)])`
-/

namespace A055329.P15537179143876660943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301342 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055329.P15537179143876660943

/-!
# A055330: Number of rooted identity trees with n nodes and 5 leaves.

The programs for A055330, there is no canonical definition to state claims against.
-/

/-! ## A055330.P5345909578705982364

`A055327(A002620(n+9)+6)`
-/

namespace A055330.P5345909578705982364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055327 (A002620 (n + 9) + 6).toNat

end

end A055330.P5345909578705982364

/-!
# A055331: Number of rooted identity trees with n nodes and 6 leaves.

The programs for A055331, there is no canonical definition to state claims against.
-/

/-! ## A055331.P5833363539904165362

`A055327(A002620(n+11)+7)`
-/

namespace A055331.P5833363539904165362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055327 (A002620 (n + 11) + 7).toNat

end

end A055331.P5833363539904165362

/-!
# A055332: Number of rooted identity trees with n nodes and 7 leaves.

The programs for A055332, there is no canonical definition to state claims against.
-/

/-! ## A055332.P4126125287175849181

`A055327(A002620(n+13)+8)`
-/

namespace A055332.P4126125287175849181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055327 (A002620 (n + 13) + 8).toNat

end

end A055332.P4126125287175849181

/-!
# A055333: Number of rooted identity trees with n nodes and 8 leaves.

The programs for A055333, there is no canonical definition to state claims against.
-/

/-! ## A055333.P11359672064437283812

`A055327(A002620(n+15)+9)`
-/

namespace A055333.P11359672064437283812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055327 (A002620 (n + 15) + 9).toNat

end

end A055333.P11359672064437283812

/-!
# A055334: Number of asymmetric (identity) trees with n nodes and k leaves.

The programs for A055334, there is no canonical definition to state claims against.
-/

/-! ## A055334.P8430099388387044657

`A326625(A008284(3*(n+1))*A369286(n))`
-/

namespace A055334.P8430099388387044657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326625 (A008284 (3 * (n + 1)) * A369286 n).toNat

end

end A055334.P8430099388387044657

/-! ## A055334.P1774553871424712837

`and(A000120(A172126(n+1)), A008622(n))`
-/

namespace A055334.P1774553871424712837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A172126 (n + 1)).toNat) (A008622 n)

end

end A055334.P1774553871424712837

/-! ## A055334.P13971443964010608722

`val(A131934(A038040(n+1)), A020481(n+2))`
-/

namespace A055334.P13971443964010608722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131934 (A038040 (n + 1)).toNat).toNat (A020481 (n + 2)).toNat

end

end A055334.P13971443964010608722

/-! ## A055334.P14457440378689948043

`and(A096841(n+1), A237053(A096841(n+1)))`
-/

namespace A055334.P14457440378689948043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096841 (n + 1)) (A237053 (A096841 (n + 1)).toNat)

end

end A055334.P14457440378689948043

/-! ## A055334.P14783334659963313669

`A141097(2*n+1)+A010051(A316855(n+1))`
-/

namespace A055334.P14783334659963313669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (2 * n + 1) + A010051 (A316855 (n + 1)).toNat

end

end A055334.P14783334659963313669

/-!
# A055335: Number of asymmetric (identity) trees with n nodes and 4 leaves.

The programs for A055335, the canonical program `A055335.P9939896194801436419` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055335 has offset 9).

The definition of A055335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055335.P2295020288565395583

`∑[∑[A112689(n)+A008733(n)]]`
-/

namespace A055335.P2295020288565395583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 n + A008733 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055335.P2295020288565395583

namespace A055335

/-- `∑[∑[A112689(n)+A008733(n)]]` -/
def P2295020288565395583.Spec : Prop :=
  ∀ n, P2295020288565395583.a n = A055335 (n + 9)

end A055335

/-! ## A055335.P9939896194801436419

`∑[A008804(n)+A005044(n+1)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055335

/-- `∑[A008804(n)+A005044(n+1)]` -/
def P9939896194801436419.Spec : Prop :=
  ∀ n, P9939896194801436419.a n = A055335 (n + 9)

theorem P9939896194801436419.correct : P9939896194801436419.Spec := by
  intro n
  simp only [A055335, Nat.add_sub_cancel]

end A055335

/-! ## A055335.P7862727576503439057

`∑[A005044(n+1)+∑[A008642(n)]]`
-/

namespace A055335.P7862727576503439057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055335.P7862727576503439057

namespace A055335

/-- `∑[A005044(n+1)+∑[A008642(n)]]` -/
def P7862727576503439057.Spec : Prop :=
  ∀ n, P7862727576503439057.a n = A055335 (n + 9)

end A055335

/-! ## A055335.P15286977779573218502

`A026810(n+2)+∑[A008804(n)]`
-/

namespace A055335.P15286977779573218502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055335.P15286977779573218502

namespace A055335

/-- `A026810(n+2)+∑[A008804(n)]` -/
def P15286977779573218502.Spec : Prop :=
  ∀ n, P15286977779573218502.a n = A055335 (n + 9)

end A055335

/-! ## A055335.P9964951596892502274

`A029253(A016789(n))+∑[A008804(n)]`
-/

namespace A055335.P9964951596892502274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029253 (A016789 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055335.P9964951596892502274

namespace A055335

/-- `A029253(A016789(n))+∑[A008804(n)]` -/
def P9964951596892502274.Spec : Prop :=
  ∀ n, P9964951596892502274.a n = A055335 (n + 9)

end A055335

/-!
# A055336: Number of asymmetric (identity) trees with n nodes and 5 leaves.

The programs for A055336, there is no canonical definition to state claims against.
-/

/-! ## A055336.P3845199780813591390

`∑[A342752(A301150(n))]`
-/

namespace A055336.P3845199780813591390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342752 (A301150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055336.P3845199780813591390

/-! ## A055336.P17915664578177880136

`A153977(n+1)+A113063(A132853(n))`
-/

namespace A055336.P17915664578177880136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153977 (n + 1) + A113063 (A132853 n).toNat

end

end A055336.P17915664578177880136

/-!
# A055337: Number of asymmetric (identity) trees with n nodes and 6 leaves.

The programs for A055337, there is no canonical definition to state claims against.
-/

/-! ## A055337.P12125088582953813558

`A055334(A002620(n+12)+2)`
-/

namespace A055337.P12125088582953813558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055334 (A002620 (n + 12) + 2).toNat

end

end A055337.P12125088582953813558

/-!
# A055340: Triangle read by rows: number of mobiles (circular rooted trees) with n nodes and k leaves.

The programs for A055340, there is no canonical definition to state claims against.
-/

/-! ## A055340.P8820634159136473049

`A301422(n+1)+A001842(A135138(A348710(n)))`
-/

namespace A055340.P8820634159136473049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301422 (n + 1) + A001842 (A135138 (A348710 n).toNat).toNat

end

end A055340.P8820634159136473049

/-!
# A055341: Number of mobiles (circular rooted trees) with n nodes and 3 leaves.

The programs for A055341, the canonical program `A055341.P9705933212925184688` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055341 has offset 4).

The definition of A055341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055341.P7549878301276682191

`A055364(n+5)-∑[ceil(n/3)]`
-/

namespace A055341.P7549878301276682191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055364 (n + 5) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055341.P7549878301276682191

namespace A055341

/-- `A055364(n+5)-∑[ceil(n/3)]` -/
def P7549878301276682191.Spec : Prop :=
  ∀ n, P7549878301276682191.a n = A055341 (n + 4)

end A055341

/-! ## A055341.P9705933212925184688

`A181120(n)+A055278(n+4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A055341

/-- `A181120(n)+A055278(n+4)` -/
def P9705933212925184688.Spec : Prop :=
  ∀ n, P9705933212925184688.a n = A055341 (n + 4)

theorem P9705933212925184688.correct : P9705933212925184688.Spec := by
  intro n
  simp only [A055341, Nat.add_sub_cancel]

end A055341

/-! ## A055341.P13760666107867664914

`∑[∑[A117573(n)]-A008615(n)]`
-/

namespace A055341.P13760666107867664914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117573 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055341.P13760666107867664914

namespace A055341

/-- `∑[∑[A117573(n)]-A008615(n)]` -/
def P13760666107867664914.Spec : Prop :=
  ∀ n, P13760666107867664914.a n = A055341 (n + 4)

end A055341

/-! ## A055341.P15033471029397547221

`A055278(n+4)+∑[A069905(n)]`
-/

namespace A055341.P15033471029397547221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055278 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055341.P15033471029397547221

namespace A055341

/-- `A055278(n+4)+∑[A069905(n)]` -/
def P15033471029397547221.Spec : Prop :=
  ∀ n, P15033471029397547221.a n = A055341 (n + 4)

end A055341

/-! ## A055341.P6520101074243486019

`∑[∑[A008611(n)+A002620(n+1)]]`
-/

namespace A055341.P6520101074243486019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055341.P6520101074243486019

namespace A055341

/-- `∑[∑[A008611(n)+A002620(n+1)]]` -/
def P6520101074243486019.Spec : Prop :=
  ∀ n, P6520101074243486019.a n = A055341 (n + 4)

end A055341

/-!
# A055342: Number of mobiles (circular rooted trees) with n nodes and 4 leaves.

The programs for A055342, there is no canonical definition to state claims against.
-/

/-! ## A055342.P5743518779024542974

`A055340(A056000(n)+14)`
-/

namespace A055342.P5743518779024542974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A056000 n + 14).toNat

end

end A055342.P5743518779024542974

/-! ## A055342.P2959116572114894695

`record[A055340(A000217(n)+4)]`
-/

namespace A055342.P2959116572114894695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A000217 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055342.P2959116572114894695

/-! ## A055342.P1599808465262770879

`record[A055340(A077169(n)-n)]`
-/

namespace A055342.P1599808465262770879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055342.P1599808465262770879

/-! ## A055342.P199121144618954034

`A055340(A000217(n+4)+4)`
-/

namespace A055342.P199121144618954034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A000217 (n + 4) + 4).toNat

end

end A055342.P199121144618954034

/-! ## A055342.P14017299667262599980

`A055340(A027379(n+2)+7)`
-/

namespace A055342.P14017299667262599980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A027379 (n + 2) + 7).toNat

end

end A055342.P14017299667262599980

/-!
# A055343: Number of mobiles (circular rooted trees) with n nodes and 5 leaves.

The programs for A055343, there is no canonical definition to state claims against.
-/

/-! ## A055343.P2600978765392594929

`record[A055340(A077169(n))]`
-/

namespace A055343.P2600978765392594929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055343.P2600978765392594929

/-! ## A055343.P17371273755660955889

`A055340(A077169(n+6))`
-/

namespace A055343.P17371273755660955889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A077169 (n + 6)).toNat

end

end A055343.P17371273755660955889

/-! ## A055343.P14231018405856738543

`A055340(A056115(n)+20)`
-/

namespace A055343.P14231018405856738543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A056115 n + 20).toNat

end

end A055343.P14231018405856738543

/-! ## A055343.P3952866703846328075

`A055340(A000217(n+5)+5)`
-/

namespace A055343.P3952866703846328075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A000217 (n + 5) + 5).toNat

end

end A055343.P3952866703846328075

/-! ## A055343.P1200457307727767465

`A055340(A046691(n+3)+9)`
-/

namespace A055343.P1200457307727767465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A046691 (n + 3) + 9).toNat

end

end A055343.P1200457307727767465

/-!
# A055344: Number of mobiles (circular rooted trees) with n nodes and 6 leaves.

The programs for A055344, there is no canonical definition to state claims against.
-/

/-! ## A055344.P15043996377322770025

`A055340(A166136(n+5))`
-/

namespace A055344.P15043996377322770025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A166136 (n + 5)).toNat

end

end A055344.P15043996377322770025

/-! ## A055344.P13026050020692418265

`A055340(A056119(n)+27)`
-/

namespace A055344.P13026050020692418265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A056119 n + 27).toNat

end

end A055344.P13026050020692418265

/-! ## A055344.P14802176196303482522

`record[A055340(A060577(n)+10)]`
-/

namespace A055344.P14802176196303482522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A060577 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055344.P14802176196303482522

/-! ## A055344.P2321341160536415480

`A055340(A000124(n+6)+5)`
-/

namespace A055344.P2321341160536415480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A000124 (n + 6) + 5).toNat

end

end A055344.P2321341160536415480

/-! ## A055344.P14001330786606558767

`A055340(A000096(n+5)+7)`
-/

namespace A055344.P14001330786606558767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A000096 (n + 5) + 7).toNat

end

end A055344.P14001330786606558767

/-!
# A055346: Number of mobiles (circular rooted trees) with n nodes and 8 leaves.

The programs for A055346, there is no canonical definition to state claims against.
-/

/-! ## A055346.P18141513115514762485

`A055340(A319159(n+10))`
-/

namespace A055346.P18141513115514762485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055340 (A319159 (n + 10)).toNat

end

end A055346.P18141513115514762485

/-!
# A055347: Matrix inverse of triangle A055340(n+1,k).

The programs for A055347, there is no canonical definition to state claims against.
-/

/-! ## A055347.P16516482555589425337

`A055288(n+1)-A185284(2*n+7)`
-/

namespace A055347.P16516482555589425337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055288 (n + 1) - A185284 (2 * n + 7)

end

end A055347.P16516482555589425337

/-! ## A055347.P11926620983191764941

`A055288(n+1)-A151755(A159287(n))`
-/

namespace A055347.P11926620983191764941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055288 (n + 1) - A151755 (A159287 n).toNat

end

end A055347.P11926620983191764941

/-! ## A055347.P4871494799735430837

`xor(A055288(n+1), A185284(A002125(n)))`
-/

namespace A055347.P4871494799735430837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055288 (n + 1)) (A185284 (A002125 n).toNat)

end

end A055347.P4871494799735430837

/-! ## A055347.P14844529167751348341

`xor(A055288(n+1), A185284(A282504(n)))`
-/

namespace A055347.P14844529167751348341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055288 (n + 1)) (A185284 (A282504 n).toNat)

end

end A055347.P14844529167751348341

/-! ## A055347.P14419871935063432536

`A055288(n+1)-A025443(A005179(n+1))`
-/

namespace A055347.P14419871935063432536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055288 (n + 1) - A025443 (A005179 (n + 1)).toNat

end

end A055347.P14419871935063432536

/-!
# A055348: Column 1 of triangle A055347.

The programs for A055348, there is no canonical definition to state claims against.
-/

/-! ## A055348.P2122229746616996865

`A055347(∑[n]+1)`
-/

namespace A055348.P2122229746616996865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055348.P2122229746616996865

/-! ## A055348.P12907041092210045643

`or(A000007(n), A055347(A000124(n)))`
-/

namespace A055348.P12907041092210045643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055347 (A000124 n).toNat)

end

end A055348.P12907041092210045643

/-! ## A055348.P16877229689439897165

`A055347(A000124(n))+A000007(n+1)`
-/

namespace A055348.P16877229689439897165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055347 (A000124 n).toNat + A000007 (n + 1)

end

end A055348.P16877229689439897165

/-! ## A055348.P12447777422862401652

`A055347(A000124(n))+A000035(2*n)`
-/

namespace A055348.P12447777422862401652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055347 (A000124 n).toNat + A000035 (2 * n)

end

end A055348.P12447777422862401652

/-! ## A055348.P14396034915642607345

`A055347(A000124(n))+log2(A014963(10*(n+1)))`
-/

namespace A055348.P14396034915642607345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A055347 (A000124 n).toNat : ℝ) + Real.logb 2 (A014963 (10 * (n + 1)) : ℝ)

end

end A055348.P14396034915642607345

/-!
# A055349: Triangle of labeled mobiles (circular rooted trees) with n nodes and k leaves.

The programs for A055349, there is no canonical definition to state claims against.
-/

/-! ## A055349.P11964218025350148967

`abs(A054654(n)*A173333(n+1))`
-/

namespace A055349.P11964218025350148967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054654 n * A173333 (n + 1)|

end

end A055349.P11964218025350148967

/-! ## A055349.P6762047722231290638

`A135278(n)*A225479(A061579(n))`
-/

namespace A055349.P6762047722231290638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 n * A225479 (A061579 n).toNat

end

end A055349.P6762047722231290638

/-! ## A055349.P11022842752538512728

`A132393(A061579(n))*A173333(n+1)`
-/

namespace A055349.P11022842752538512728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A061579 n).toNat * A173333 (n + 1)

end

end A055349.P11022842752538512728

/-! ## A055349.P7357172137923883270

`A094587(A080036(n))*A132393(A061579(n))`
-/

namespace A055349.P7357172137923883270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A080036 n).toNat * A132393 (A061579 n).toNat

end

end A055349.P7357172137923883270

/-! ## A055349.P12810760645662572227

`A007318(A014132(n+1))*A225479(A061579(n))`
-/

namespace A055349.P12810760645662572227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014132 (n + 1)).toNat * A225479 (A061579 n).toNat

end

end A055349.P12810760645662572227

/-!
# A055350: Number of labeled mobiles (circular rooted trees) with n nodes and 3 leaves.

The programs for A055350, the canonical program `A055350.P15027541098574469087` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055350 has offset 4).

The definition of A055350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055350.P15027541098574469087

`(n+4)!*(n+3)*(n+2)*(n+1)*(3*(n+4)-4)/144`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055350

/-- `(n+4)!*(n+3)*(n+2)*(n+1)*(3*(n+4)-4)/144` -/
def P15027541098574469087.Spec : Prop :=
  ∀ n, P15027541098574469087.a n = (A055350 (n + 4) : ℚ)

end A055350

/-! ## A055350.P6760551067340136432

`(3*n+8)*A001755(n+4)`
-/

namespace A055350.P6760551067340136432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 8 : ℤ) * A001755 (n + 4)

end

end A055350.P6760551067340136432

namespace A055350

/-- `(3*n+8)*A001755(n+4)` -/
def P6760551067340136432.Spec : Prop :=
  ∀ n, P6760551067340136432.a n = A055350 (n + 4)

end A055350

/-! ## A055350.P3212359968388742333

`A001715(n+4)*A130534(A055998(n+1))`
-/

namespace A055350.P3212359968388742333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 4) * A130534 (A055998 (n + 1)).toNat

end

end A055350.P3212359968388742333

namespace A055350

/-- `A001715(n+4)*A130534(A055998(n+1))` -/
def P3212359968388742333.Spec : Prop :=
  ∀ n, P3212359968388742333.a n = A055350 (n + 4)

end A055350

/-! ## A055350.P16500098703166807110

`A001715(n+4)*A048994(A055998(n+2))`
-/

namespace A055350.P16500098703166807110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001715 (n + 4) * A048994 (A055998 (n + 2)).toNat

end

end A055350.P16500098703166807110

namespace A055350

/-- `A001715(n+4)*A048994(A055998(n+2))` -/
def P16500098703166807110.Spec : Prop :=
  ∀ n, P16500098703166807110.a n = A055350 (n + 4)

end A055350

/-! ## A055350.P1745770942368289331

`A055349(A167614(n+2))`
-/

namespace A055350.P1745770942368289331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (A167614 (n + 2)).toNat

end

end A055350.P1745770942368289331

namespace A055350

/-- `A055349(A167614(n+2))` -/
def P1745770942368289331.Spec : Prop :=
  ∀ n, P1745770942368289331.a n = A055350 (n + 4)

end A055350

/-!
# A055351: Number of labeled mobiles (circular rooted trees) with n nodes and 4 leaves.

The programs for A055351, there is no canonical definition to state claims against.
-/

/-! ## A055351.P14475060396022696497

`A055349(A155212(n)+12)`
-/

namespace A055351.P14475060396022696497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (A155212 n + 12).toNat

end

end A055351.P14475060396022696497

/-! ## A055351.P18066639515097312299

`A055349(eq[4, A002262(n)])`
-/

namespace A055351.P18066639515097312299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055351.P18066639515097312299

/-! ## A055351.P15643410387496755101

`A055349(eq[16, A059268(n)])`
-/

namespace A055351.P15643410387496755101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055351.P15643410387496755101

/-! ## A055351.P3045169779904204580

`A055349(A051936(n+4)+13)`
-/

namespace A055351.P3045169779904204580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (A051936 (n + 4) + 13).toNat

end

end A055351.P3045169779904204580

/-! ## A055351.P11355492531937394570

`A055349(eq[5, A002260(n+1)])`
-/

namespace A055351.P11355492531937394570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055351.P11355492531937394570

/-!
# A055352: Number of labeled mobiles (circular rooted trees) with n nodes and 5 leaves.

The programs for A055352, there is no canonical definition to state claims against.
-/

/-! ## A055352.P4044038574440865429

`A055349(A167499(n+4))`
-/

namespace A055352.P4044038574440865429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (A167499 (n + 4)).toNat

end

end A055352.P4044038574440865429

/-! ## A055352.P11676370296787336598

`A055349(eq[5, A002262(n)])`
-/

namespace A055352.P11676370296787336598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055352.P11676370296787336598

/-! ## A055352.P7697407591723282255

`A055349(eq[32, A059268(n)])`
-/

namespace A055352.P7697407591723282255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055352.P7697407591723282255

/-! ## A055352.P15363945837503423705

`A055349(eq[6, A002260(n+1)])`
-/

namespace A055352.P15363945837503423705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055352.P15363945837503423705

/-! ## A055352.P3429413533577895765

`A055349(eq[11, A158405(n+1)])`
-/

namespace A055352.P3429413533577895765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055352.P3429413533577895765

/-!
# A055353: Number of labeled mobiles (circular rooted trees) with n nodes and 6 leaves.

The programs for A055353, there is no canonical definition to state claims against.
-/

/-! ## A055353.P11935192139555968591

`A055349(eq[6, A002262(n)])`
-/

namespace A055353.P11935192139555968591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055353.P11935192139555968591

/-! ## A055353.P16028860870203983234

`A055349(eq[5, A327844(n+1)])`
-/

namespace A055353.P16028860870203983234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055353.P16028860870203983234

/-! ## A055353.P7334143728737999280

`A055349(eq[7, A002260(n+1)])`
-/

namespace A055353.P7334143728737999280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055353.P7334143728737999280

/-! ## A055353.P7600048391403587421

`A055349(eq[7, A134868(n+1)])`
-/

namespace A055353.P7600048391403587421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055353.P7600048391403587421

/-! ## A055353.P16270441338722979564

`A055349(A034856(n+6)-(n-1))`
-/

namespace A055353.P16270441338722979564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (A034856 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A055353.P16270441338722979564

/-!
# A055354: Number of labeled mobiles (circular rooted trees) with n nodes and 7 leaves.

The programs for A055354, there is no canonical definition to state claims against.
-/

/-! ## A055354.P7227063703166887195

`A055349(eq[7, A002262(n)])`
-/

namespace A055354.P7227063703166887195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055354.P7227063703166887195

/-! ## A055354.P10917819395445193124

`A055349(A055998(n+5)+10)`
-/

namespace A055354.P10917819395445193124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (A055998 (n + 5) + 10).toNat

end

end A055354.P10917819395445193124

/-! ## A055354.P6653615838526948624

`A055349(eq[7, A144328(n+1)])`
-/

namespace A055354.P6653615838526948624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055354.P6653615838526948624

/-! ## A055354.P7588955738659804254

`A055349(eq[8, A002260(n+1)])`
-/

namespace A055354.P7588955738659804254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055354.P7588955738659804254

/-! ## A055354.P10039816347817911993

`A055349(eq[8, A134868(n+1)])`
-/

namespace A055354.P10039816347817911993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055354.P10039816347817911993

/-!
# A055355: Number of labeled mobiles (circular rooted trees) with n nodes and 8 leaves.

The programs for A055355, there is no canonical definition to state claims against.
-/

/-! ## A055355.P3322518012900160800

`A055349(eq[8, A002262(n)])`
-/

namespace A055355.P3322518012900160800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055355.P3322518012900160800

/-! ## A055355.P16548664171822706936

`A055349(eq[9, A002260(n+1)])`
-/

namespace A055355.P16548664171822706936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055349 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055355.P16548664171822706936

/-!
# A055356: Triangle of increasing mobiles (circular rooted trees) with n nodes and k leaves.

The programs for A055356, there is no canonical definition to state claims against.
-/

/-! ## A055356.P2876032074724710596

`A321728(A048993(n))+A173018(n)`
-/

namespace A055356.P2876032074724710596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321728 (A048993 n).toNat + A173018 n

end

end A055356.P2876032074724710596

/-! ## A055356.P16704459629749318213

`A343858(A245111(n))+A173018(n)`
-/

namespace A055356.P16704459629749318213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343858 (A245111 n).toNat + A173018 n

end

end A055356.P16704459629749318213

/-! ## A055356.P12700015016753269293

`∑{d}[A294188(n), A003179(#)]`
-/

namespace A055356.P12700015016753269293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003179 d

end

end A055356.P12700015016753269293

/-! ## A055356.P11706484454917737220

`∑{d}[A294188(n), A322299(#)]`
-/

namespace A055356.P11706484454917737220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322299 d

end

end A055356.P11706484454917737220

/-! ## A055356.P5616754477217419177

`∑{e}[A000031(A278881(n)), #]`
-/

namespace A055356.P5616754477217419177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 (A278881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A055356.P5616754477217419177

/-!
# A055357: Number of increasing mobiles (circular rooted trees) with n nodes and 3 leaves.

The programs for A055357, the canonical program `A055357.P10899896412637599792` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055357 has offset 4).

The definition of A055357 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055357.P10899896412637599792

`5*3^(n+3)/4-2^(n+4)*(n+5)/2+(n+4)²/2+1/4`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055357

/-- `5*3^(n+3)/4-2^(n+4)*(n+5)/2+(n+4)²/2+1/4` -/
def P10899896412637599792.Spec : Prop :=
  ∀ n, P10899896412637599792.a n = (A055357 (n + 4) : ℚ)

end A055357

/-! ## A055357.P1394010946187195209

`A055356(A167614(n+2))`
-/

namespace A055357.P1394010946187195209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A167614 (n + 2)).toNat

end

end A055357.P1394010946187195209

namespace A055357

/-- `A055356(A167614(n+2))` -/
def P1394010946187195209.Spec : Prop :=
  ∀ n, P1394010946187195209.a n = A055357 (n + 4)

end A055357

/-! ## A055357.P17406300927172152498

`A055356(A052905(n)+8)`
-/

namespace A055357.P17406300927172152498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A052905 n + 8).toNat

end

end A055357.P17406300927172152498

namespace A055357

/-- `A055356(A052905(n)+8)` -/
def P17406300927172152498.Spec : Prop :=
  ∀ n, P17406300927172152498.a n = A055357 (n + 4)

end A055357

/-! ## A055357.P11615653457901404668

`A055356(eq[3, A002262(n)])`
-/

namespace A055357.P11615653457901404668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055357.P11615653457901404668

namespace A055357

/-- `A055356(eq[3, A002262(n)])` -/
def P11615653457901404668.Spec : Prop :=
  ∀ n, P11615653457901404668.a n = A055357 (n + 4)

end A055357

/-! ## A055357.P15612138773492870409

`A055356(eq[3, A140207(n)])`
-/

namespace A055357.P15612138773492870409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055357.P15612138773492870409

namespace A055357

/-- `A055356(eq[3, A140207(n)])` -/
def P15612138773492870409.Spec : Prop :=
  ∀ n, P15612138773492870409.a n = A055357 (n + 4)

end A055357

/-! ## A055357.P10685670772815406826

`A055356(eq[1, A144328(n+1)-2])`
-/

namespace A055357.P10685670772815406826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055357.P10685670772815406826

namespace A055357

/-- `A055356(eq[1, A144328(n+1)-2])` -/
def P10685670772815406826.Spec : Prop :=
  ∀ n, P10685670772815406826.a n = A055357 (n + 4)

end A055357

/-!
# A055358: Number of increasing mobiles (circular rooted trees) with n nodes and 4 leaves.

The programs for A055358, there is no canonical definition to state claims against.
-/

/-! ## A055358.P14448811095445916695

`A055356(A155212(n)+12)`
-/

namespace A055358.P14448811095445916695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A155212 n + 12).toNat

end

end A055358.P14448811095445916695

/-! ## A055358.P13166059936365007788

`A055356(eq[4, A002262(n)])`
-/

namespace A055358.P13166059936365007788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055358.P13166059936365007788

/-! ## A055358.P8958493442963596046

`A055356(eq[16, A059268(n)])`
-/

namespace A055358.P8958493442963596046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055358.P8958493442963596046

/-! ## A055358.P16942424014010338915

`A055356(eq[5, A002260(n+1)])`
-/

namespace A055358.P16942424014010338915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055358.P16942424014010338915

/-! ## A055358.P16663330384658459920

`A055356(eq[6, A327844(n+1)])`
-/

namespace A055358.P16663330384658459920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055358.P16663330384658459920

/-! ## A055358.P7953612722838901311

`A055356(eq[2, A144328(n+1)-2])`
-/

namespace A055358.P7953612722838901311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055358.P7953612722838901311

/-! ## A055358.P773755427188143368

`A055356(eq[2, A144328(n+1)/2])`
-/

namespace A055358.P773755427188143368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144328 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A055358.P773755427188143368

/-!
# A055359: Number of increasing mobiles (circular rooted trees) with n nodes and 5 leaves.

The programs for A055359, there is no canonical definition to state claims against.
-/

/-! ## A055359.P6184293056057176684

`A055356(A167499(n+4))`
-/

namespace A055359.P6184293056057176684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A167499 (n + 4)).toNat

end

end A055359.P6184293056057176684

/-! ## A055359.P6358840735829029632

`A055356(eq[5, A002262(n)])`
-/

namespace A055359.P6358840735829029632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055359.P6358840735829029632

/-! ## A055359.P12822463649532278695

`A055356(eq[7, A140207(n)])`
-/

namespace A055359.P12822463649532278695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055359.P12822463649532278695

/-! ## A055359.P8618738306507862100

`A055356(eq[32, A059268(n)])`
-/

namespace A055359.P8618738306507862100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055359.P8618738306507862100

/-! ## A055359.P11766585243805243886

`A055356(A133263(n+5)+3)`
-/

namespace A055359.P11766585243805243886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A133263 (n + 5) + 3).toNat

end

end A055359.P11766585243805243886

/-! ## A055359.P4423165938758896108

`A055356(A055998(n+3)+8)`
-/

namespace A055359.P4423165938758896108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A055998 (n + 3) + 8).toNat

end

end A055359.P4423165938758896108

/-! ## A055359.P334598266144295555

`A055356(eq[6, A002260(n+1)])`
-/

namespace A055359.P334598266144295555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055359.P334598266144295555

/-!
# A055360: Number of increasing mobiles (circular rooted trees) with n nodes and 6 leaves.

The programs for A055360, there is no canonical definition to state claims against.
-/

/-! ## A055360.P796486388264172077

`A055356(eq[6, A002262(n)])`
-/

namespace A055360.P796486388264172077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055360.P796486388264172077

/-! ## A055360.P8569010854323331872

`A055356(eq[5, A327844(n+1)])`
-/

namespace A055360.P8569010854323331872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055360.P8569010854323331872

/-! ## A055360.P17843974235022820125

`A055356(eq[6, A144328(n+1)])`
-/

namespace A055360.P17843974235022820125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055360.P17843974235022820125

/-! ## A055360.P3909732635646142905

`A055356(eq[7, A002260(n+1)])`
-/

namespace A055360.P3909732635646142905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055360.P3909732635646142905

/-! ## A055360.P2174480374644616606

`A055356(eq[7, A134868(n+1)])`
-/

namespace A055360.P2174480374644616606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055360.P2174480374644616606

/-! ## A055360.P11876206473917294146

`A055356(A034856(n+6)-(n-1))`
-/

namespace A055360.P11876206473917294146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (A034856 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A055360.P11876206473917294146

/-!
# A055361: Number of increasing mobiles (circular rooted trees) with n nodes and 7 leaves.

The programs for A055361, there is no canonical definition to state claims against.
-/

/-! ## A055361.P5602668904607079789

`A055356(eq[7, A002262(n)])`
-/

namespace A055361.P5602668904607079789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055361.P5602668904607079789

/-! ## A055361.P9428248452235910931

`A055356(eq[15, A140207(n)])`
-/

namespace A055361.P9428248452235910931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055361.P9428248452235910931

/-! ## A055361.P16035743521869345523

`A055356(eq[7, A144328(n+1)])`
-/

namespace A055361.P16035743521869345523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055361.P16035743521869345523

/-! ## A055361.P7532502447626010892

`A055356(eq[8, A002260(n+1)])`
-/

namespace A055361.P7532502447626010892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055361.P7532502447626010892

/-! ## A055361.P15458049027979275623

`A055356(eq[8, A134868(n+1)])`
-/

namespace A055361.P15458049027979275623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055361.P15458049027979275623

/-!
# A055362: Number of increasing mobiles (circular rooted trees) with n nodes and 8 leaves.

The programs for A055362, there is no canonical definition to state claims against.
-/

/-! ## A055362.P15082472293713608789

`A055356(eq[8, A002262(n)])`
-/

namespace A055362.P15082472293713608789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055362.P15082472293713608789

/-! ## A055362.P12979222401736606495

`A055356(eq[22, A140207(n)])`
-/

namespace A055362.P12979222401736606495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055362.P12979222401736606495

/-! ## A055362.P6339289118994695581

`A055356(eq[7, A327844(n+1)])`
-/

namespace A055362.P6339289118994695581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055362.P6339289118994695581

/-! ## A055362.P6271178703534151130

`A055356(eq[8, A130270(n+1)])`
-/

namespace A055362.P6271178703534151130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055362.P6271178703534151130

/-! ## A055362.P16443802718902360019

`A055356(eq[9, A002260(n+1)])`
-/

namespace A055362.P16443802718902360019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055362.P16443802718902360019

/-!
# A055363: Triangle of asymmetric mobiles (circular rooted trees) with n nodes and k leaves.

The programs for A055363, there is no canonical definition to state claims against.
-/

/-! ## A055363.P4682880418747117516

`A330944(2^A363845(n+1))`
-/

namespace A055363.P4682880418747117516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330944 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A363845 (n + 1) : ℤ))).toNat

end

end A055363.P4682880418747117516

/-! ## A055363.P8444981958407565138

`A363845(A256598(3*(n+1))%2+n)`
-/

namespace A055363.P8444981958407565138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363845 (Int.tmod (A256598 (3 * (n + 1))) 2 + (n : ℤ)).toNat

end

end A055363.P8444981958407565138

/-! ## A055363.P1412845570732139139

`A363845(n+1)%(A335524(3*n+2)+1)`
-/

namespace A055363.P1412845570732139139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363845 (n + 1)) (A335524 (3 * n + 2) + 1)

end

end A055363.P1412845570732139139

/-! ## A055363.P847779782316963477

`A363845(n+1)+A078926(A290622(n))`
-/

namespace A055363.P847779782316963477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363845 (n + 1) + A078926 (A290622 n).toNat

end

end A055363.P847779782316963477

/-! ## A055363.P6620015211748633546

`A363845(n+1)^A260897(A124774(n))`
-/

namespace A055363.P6620015211748633546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363845 (n + 1) : ℚ) ^ (A260897 (A124774 n).toNat : ℤ)

end

end A055363.P6620015211748633546

/-!
# A055364: Number of asymmetric mobiles (circular rooted trees) with n nodes and 3 leaves.

The programs for A055364, the canonical program `A055364.P9946798728147241076` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055364 has offset 5).

The definition of A055364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055364.P9946798728147241076

`∑[∑[∑[floor((gcd(3, n)+n)/2)]]]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055364

/-- `∑[∑[∑[floor((gcd(3, n)+n)/2)]]]` -/
def P9946798728147241076.Spec : Prop :=
  ∀ n, P9946798728147241076.a n = A055364 (n + 5)

theorem P9946798728147241076.correct : P9946798728147241076.Spec := by
  intro n
  simp only [A055364, Nat.add_sub_cancel]

end A055364

/-! ## A055364.P5298943217704686067

`∑[A181120(n)+A014125(n)]`
-/

namespace A055364.P5298943217704686067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 n + A014125 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P5298943217704686067

namespace A055364

/-- `∑[A181120(n)+A014125(n)]` -/
def P5298943217704686067.Spec : Prop :=
  ∀ n, P5298943217704686067.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P17742542375804889171

`A254874(n)+∑[A173196(n)]`
-/

namespace A055364.P17742542375804889171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P17742542375804889171

namespace A055364

/-- `A254874(n)+∑[A173196(n)]` -/
def P17742542375804889171.Spec : Prop :=
  ∀ n, P17742542375804889171.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P10359424408048674430

`A055341(n+4)+A001840(n)`
-/

namespace A055364.P10359424408048674430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055341 (n + 4) + A001840 n

end

end A055364.P10359424408048674430

namespace A055364

/-- `A055341(n+4)+A001840(n)` -/
def P10359424408048674430.Spec : Prop :=
  ∀ n, P10359424408048674430.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P7196271598440169276

`∑[∑[A211519(n+2)]]`
-/

namespace A055364.P7196271598440169276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211519 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P7196271598440169276

namespace A055364

/-- `∑[∑[A211519(n+2)]]` -/
def P7196271598440169276.Spec : Prop :=
  ∀ n, P7196271598440169276.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P7085994305500711434

`A001752(n)-A181120(n+1)`
-/

namespace A055364.P7085994305500711434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n - A181120 (n + 1)

end

end A055364.P7085994305500711434

namespace A055364

/-- `A001752(n)-A181120(n+1)` -/
def P7085994305500711434.Spec : Prop :=
  ∀ n, P7085994305500711434.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P6634674391762523241

`∑[A001840(n+1)+∑[A002620(n+1)]]`
-/

namespace A055364.P6634674391762523241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P6634674391762523241

namespace A055364

/-- `∑[A001840(n+1)+∑[A002620(n+1)]]` -/
def P6634674391762523241.Spec : Prop :=
  ∀ n, P6634674391762523241.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P7291187363051065924

`A181120(n+2)+A055278(n+4)`
-/

namespace A055364.P7291187363051065924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181120 (n + 2) + A055278 (n + 4)

end

end A055364.P7291187363051065924

namespace A055364

/-- `A181120(n+2)+A055278(n+4)` -/
def P7291187363051065924.Spec : Prop :=
  ∀ n, P7291187363051065924.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P14661400736541057261

`∑[∑[A001399(2*n)-A069905(n+1)]]`
-/

namespace A055364.P14661400736541057261
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) - A069905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P14661400736541057261

namespace A055364

/-- `∑[∑[A001399(2*n)-A069905(n+1)]]` -/
def P14661400736541057261.Spec : Prop :=
  ∀ n, P14661400736541057261.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P11593667919537790239

`∑[∑[A001399(2*n)]-A181120(n+1)]`
-/

namespace A055364.P11593667919537790239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A181120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P11593667919537790239

namespace A055364

/-- `∑[∑[A001399(2*n)]-A181120(n+1)]` -/
def P11593667919537790239.Spec : Prop :=
  ∀ n, P11593667919537790239.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P12681441216455939754

`∑[∑[A103221(2*n)+A002620(n+1)]]`
-/

namespace A055364.P12681441216455939754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * n) + A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P12681441216455939754

namespace A055364

/-- `∑[∑[A103221(2*n)+A002620(n+1)]]` -/
def P12681441216455939754.Spec : Prop :=
  ∀ n, P12681441216455939754.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P16105392011815766105

`∑[A266769(2*n)-∑[A069905(n+1)]]`
-/

namespace A055364.P16105392011815766105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 (2 * n) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P16105392011815766105

namespace A055364

/-- `∑[A266769(2*n)-∑[A069905(n+1)]]` -/
def P16105392011815766105.Spec : Prop :=
  ∀ n, P16105392011815766105.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P13188889355743719860

`∑[∑[A154958(2*n+1)+A002620(n+1)]]`
-/

namespace A055364.P13188889355743719860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 (2 * n + 1) + A002620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P13188889355743719860

namespace A055364

/-- `∑[∑[A154958(2*n+1)+A002620(n+1)]]` -/
def P13188889355743719860.Spec : Prop :=
  ∀ n, P13188889355743719860.a n = A055364 (n + 5)

end A055364

/-! ## A055364.P953250462487505387

`∑[A008731(2*n)+∑[A008733(2*n+1)]]`
-/

namespace A055364.P953250462487505387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008731 (2 * n) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055364.P953250462487505387

namespace A055364

/-- `∑[A008731(2*n)+∑[A008733(2*n+1)]]` -/
def P953250462487505387.Spec : Prop :=
  ∀ n, P953250462487505387.a n = A055364 (n + 5)

end A055364

/-!
# A055365: Number of asymmetric mobiles (circular rooted trees) with n nodes and 4 leaves.

The programs for A055365, there is no canonical definition to state claims against.
-/

/-! ## A055365.P8663703472111277518

`A055363(A145018(n+6))`
-/

namespace A055365.P8663703472111277518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A145018 (n + 6)).toNat

end

end A055365.P8663703472111277518

/-! ## A055365.P16618126957610758265

`record[A055363(A000124(n)+3)]`
-/

namespace A055365.P16618126957610758265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055365.P16618126957610758265

/-! ## A055365.P9153777226721051098

`record[A055363(A027693(n)/2)]`
-/

namespace A055365.P9153777226721051098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (SequenceMachineLib.roundAway ((A027693 n : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055365.P9153777226721051098

/-! ## A055365.P13718507737127354697

`record[A055363(A077169(n)-n)]`
-/

namespace A055365.P13718507737127354697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A077169 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055365.P13718507737127354697

/-! ## A055365.P7166741427222690712

`record[A055363(A167499(n+1)-1)]`
-/

namespace A055365.P7166741427222690712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167499 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055365.P7166741427222690712

/-!
# A055366: Number of asymmetric mobiles (circular rooted trees) with n nodes and 5 leaves.

The programs for A055366, there is no canonical definition to state claims against.
-/

/-! ## A055366.P15325539670078345283

`record[A055363(A077169(n))]`
-/

namespace A055366.P15325539670078345283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A077169 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055366.P15325539670078345283

/-! ## A055366.P2897592795073682147

`A055363(A167499(n+5))`
-/

namespace A055366.P2897592795073682147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167499 (n + 5)).toNat

end

end A055366.P2897592795073682147

/-! ## A055366.P17259356283579749300

`record[A055363(A167499(A028310(n)))]`
-/

namespace A055366.P17259356283579749300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167499 (A028310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055366.P17259356283579749300

/-! ## A055366.P13702332031208295002

`record[A055363(A167499(A052938(n)))]`
-/

namespace A055366.P13702332031208295002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167499 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055366.P13702332031208295002

/-! ## A055366.P7547900520199224971

`record[A055363(A167499(A057979(n)))]`
-/

namespace A055366.P7547900520199224971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167499 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055366.P7547900520199224971

/-!
# A055367: Number of asymmetric mobiles (circular rooted trees) with n nodes and 6 leaves.

The programs for A055367, there is no canonical definition to state claims against.
-/

/-! ## A055367.P10187858388169667937

`A055363(A000124(n+7)+5)`
-/

namespace A055367.P10187858388169667937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000124 (n + 7) + 5).toNat

end

end A055367.P10187858388169667937

/-! ## A055367.P788363469109248148

`A055363(A000217(n+7)+6)`
-/

namespace A055367.P788363469109248148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000217 (n + 7) + 6).toNat

end

end A055367.P788363469109248148

/-! ## A055367.P2821752091317544512

`A055363(eq[7, A002262(n+1)])`
-/

namespace A055367.P2821752091317544512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055367.P2821752091317544512

/-! ## A055367.P4209110128046666211

`record[A055363(A167499(n+3)+1)]`
-/

namespace A055367.P4209110128046666211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167499 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055367.P4209110128046666211

/-! ## A055367.P10497174786511278378

`A055363(A055998(n+6)-(n-1))`
-/

namespace A055367.P10497174786511278378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A055998 (n + 6) - ((n : ℤ) - 1)).toNat

end

end A055367.P10497174786511278378

/-!
# A055368: Number of asymmetric mobiles (circular rooted trees) with n nodes and 7 leaves.

The programs for A055368, there is no canonical definition to state claims against.
-/

/-! ## A055368.P12679562990201042214

`A055363(A167614(n+7)+4)`
-/

namespace A055368.P12679562990201042214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A167614 (n + 7) + 4).toNat

end

end A055368.P12679562990201042214

/-! ## A055368.P12640242479803816350

`A055363(A000124(n+8)+6)`
-/

namespace A055368.P12640242479803816350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000124 (n + 8) + 6).toNat

end

end A055368.P12640242479803816350

/-! ## A055368.P13101780251955163471

`A055363(A000217(n+8)+7)`
-/

namespace A055368.P13101780251955163471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000217 (n + 8) + 7).toNat

end

end A055368.P13101780251955163471

/-! ## A055368.P322383106299430820

`A055363(A055998(n+6)+10)`
-/

namespace A055368.P322383106299430820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A055998 (n + 6) + 10).toNat

end

end A055368.P322383106299430820

/-! ## A055368.P4771333366485801775

`A055363(A000096(n+8)-(n+1))`
-/

namespace A055368.P4771333366485801775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000096 (n + 8) - (n + 1 : ℤ)).toNat

end

end A055368.P4771333366485801775

/-!
# A055369: Number of asymmetric mobiles (circular rooted trees) with n nodes and 8 leaves.

The programs for A055369, there is no canonical definition to state claims against.
-/

/-! ## A055369.P17222833132289066345

`A055363(eq[9, A128227(n)])`
-/

namespace A055369.P17222833132289066345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055369.P17222833132289066345

/-! ## A055369.P11442956079039750357

`A055363(A000124(n+9)+7)`
-/

namespace A055369.P11442956079039750357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000124 (n + 9) + 7).toNat

end

end A055369.P11442956079039750357

/-! ## A055369.P3103355639218994482

`A055363(A000217(n+9)+8)`
-/

namespace A055369.P3103355639218994482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A000217 (n + 9) + 8).toNat

end

end A055369.P3103355639218994482

/-! ## A055369.P12166942288266305512

`A055363(A034856(n+8)+10)`
-/

namespace A055369.P12166942288266305512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (A034856 (n + 8) + 10).toNat

end

end A055369.P12166942288266305512

/-! ## A055369.P12280196110699770945

`record[A055363(∑[A160755(n+1)+1])]`
-/

namespace A055369.P12280196110699770945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160755 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055363 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055369.P12280196110699770945

/-!
# A055370: Matrix inverse of triangle A055363(n+2,k).

The programs for A055370, there is no canonical definition to state claims against.
-/

/-! ## A055370.P6444765280369496808

`A158454(n)-A294936(A316219(n+3))`
-/

namespace A055370.P6444765280369496808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158454 n - A294936 (A316219 (n + 3)).toNat

end

end A055370.P6444765280369496808

/-!
# A055371: Column 1 of triangle A055370.

The programs for A055371, there is no canonical definition to state claims against.
-/

/-! ## A055371.P17178408989171417760

`A055370(∑[n]+1)`
-/

namespace A055371.P17178408989171417760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055370 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055371.P17178408989171417760

/-! ## A055371.P14839035829535037246

`or(A000007(n), A055370(A000124(n)))`
-/

namespace A055371.P14839035829535037246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A055370 (A000124 n).toNat)

end

end A055371.P14839035829535037246

/-! ## A055371.P3534981948751378723

`abs(A033999(n))*A055370(A000124(n))`
-/

namespace A055371.P3534981948751378723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n| * A055370 (A000124 n).toNat

end

end A055371.P3534981948751378723

/-! ## A055371.P272443351262425721

`A055370(A000124(n))+A000007(n+1)`
-/

namespace A055371.P272443351262425721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055370 (A000124 n).toNat + A000007 (n + 1)

end

end A055371.P272443351262425721

/-! ## A055371.P5376655868669651812

`A055370(A000124(n))+A000035(4*n)`
-/

namespace A055371.P5376655868669651812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055370 (A000124 n).toNat + A000035 (4 * n)

end

end A055371.P5376655868669651812

/-!
# A055372: Invert transform of Pascal's triangle A007318.

The programs for A055372, the canonical program `A055372.P3710115892001001327` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055372 has offset 0).

The definition of A055372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055372.P3710115892001001327

`ceil(A038208(n)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A055372

/-- `ceil(A038208(n)/2)` -/
def P3710115892001001327.Spec : Prop :=
  ∀ n, P3710115892001001327.a n = A055372 n

theorem P3710115892001001327.correct : P3710115892001001327.Spec := by
  intro n
  simp only [A055372]

end A055372

/-! ## A055372.P3038418059053416860

`A038208(A028310(n))/2`
-/

namespace A055372.P3038418059053416860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 (A028310 n).toNat : ℚ) / 2

end

end A055372.P3038418059053416860

namespace A055372

/-- `A038208(A028310(n))/2` -/
def P3038418059053416860.Spec : Prop :=
  ∀ n, P3038418059053416860.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P17562910637402450008

`A038208(A000007(n)+n)/2`
-/

namespace A055372.P17562910637402450008
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

end

end A055372.P17562910637402450008

namespace A055372

/-- `A038208(A000007(n)+n)/2` -/
def P17562910637402450008.Spec : Prop :=
  ∀ n, P17562910637402450008.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P4593445054807423407

`A038208(A000038(n)+n)/2`
-/

namespace A055372.P4593445054807423407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 (A000038 n + (n : ℤ)).toNat : ℚ) / 2

end

end A055372.P4593445054807423407

namespace A055372

/-- `A038208(A000038(n)+n)/2` -/
def P4593445054807423407.Spec : Prop :=
  ∀ n, P4593445054807423407.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P12285362696544024595

`round(A038208(n)/A020639(2*(n+1)))`
-/

namespace A055372.P12285362696544024595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038208 n : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A055372.P12285362696544024595

namespace A055372

/-- `round(A038208(n)/A020639(2*(n+1)))` -/
def P12285362696544024595.Spec : Prop :=
  ∀ n, P12285362696544024595.a n = A055372 n

end A055372

/-! ## A055372.P10885919276272419024

`A007318(n)*A011782(A003056(n))`
-/

namespace A055372.P10885919276272419024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011782 (A003056 n).toNat

end

end A055372.P10885919276272419024

namespace A055372

/-- `A007318(n)*A011782(A003056(n))` -/
def P10885919276272419024.Spec : Prop :=
  ∀ n, P10885919276272419024.a n = A055372 n

end A055372

/-! ## A055372.P9615070957633577398

`A038208(n)/A014963(A001316(n))`
-/

namespace A055372.P9615070957633577398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A014963 (A001316 n).toNat : ℚ)

end

end A055372.P9615070957633577398

namespace A055372

/-- `A038208(n)/A014963(A001316(n))` -/
def P9615070957633577398.Spec : Prop :=
  ∀ n, P9615070957633577398.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P4642035723624479634

`A038208(n)/A020639(A008574(n))`
-/

namespace A055372.P4642035723624479634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A055372.P4642035723624479634

namespace A055372

/-- `A038208(n)/A020639(A008574(n))` -/
def P4642035723624479634.Spec : Prop :=
  ∀ n, P4642035723624479634.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P7035048626223336592

`A038208(n)/A020639(A234275(n))`
-/

namespace A055372.P7035048626223336592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A020639 (A234275 n).toNat : ℚ)

end

end A055372.P7035048626223336592

namespace A055372

/-- `A038208(n)/A020639(A234275(n))` -/
def P7035048626223336592.Spec : Prop :=
  ∀ n, P7035048626223336592.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P13681503293518987852

`A038208(n)/A341345(A008458(n))`
-/

namespace A055372.P13681503293518987852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A341345 (A008458 n).toNat : ℚ)

end

end A055372.P13681503293518987852

namespace A055372

/-- `A038208(n)/A341345(A008458(n))` -/
def P13681503293518987852.Spec : Prop :=
  ∀ n, P13681503293518987852.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P766779493744972714

`A007318(n)*A166444(A002024(n+1))`
-/

namespace A055372.P766779493744972714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A166444 (A002024 (n + 1)).toNat

end

end A055372.P766779493744972714

namespace A055372

/-- `A007318(n)*A166444(A002024(n+1))` -/
def P766779493744972714.Spec : Prop :=
  ∀ n, P766779493744972714.a n = A055372 n

end A055372

/-! ## A055372.P15411577277073985561

`A038208(n)/A020639(A002202(n+1))`
-/

namespace A055372.P15411577277073985561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A020639 (A002202 (n + 1)).toNat : ℚ)

end

end A055372.P15411577277073985561

namespace A055372

/-- `A038208(n)/A020639(A002202(n+1))` -/
def P15411577277073985561.Spec : Prop :=
  ∀ n, P15411577277073985561.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P3335199262911319516

`A038208(n)/A014963(A034444(n+1))`
-/

namespace A055372.P3335199262911319516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A014963 (A034444 (n + 1)).toNat : ℚ)

end

end A055372.P3335199262911319516

namespace A055372

/-- `A038208(n)/A014963(A034444(n+1))` -/
def P3335199262911319516.Spec : Prop :=
  ∀ n, P3335199262911319516.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P11872929158902201547

`A038208(n)/A061142(A006530(n+1))`
-/

namespace A055372.P11872929158902201547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A061142 (A006530 (n + 1)).toNat : ℚ)

end

end A055372.P11872929158902201547

namespace A055372

/-- `A038208(n)/A061142(A006530(n+1))` -/
def P11872929158902201547.Spec : Prop :=
  ∀ n, P11872929158902201547.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P17679815608808708658

`ceil(A134059(n)/3)*A011782(A003056(n))`
-/

namespace A055372.P17679815608808708658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A011782 (A003056 n).toNat

end

end A055372.P17679815608808708658

namespace A055372

/-- `ceil(A134059(n)/3)*A011782(A003056(n))` -/
def P17679815608808708658.Spec : Prop :=
  ∀ n, P17679815608808708658.a n = A055372 n

end A055372

/-! ## A055372.P15818414544202595926

`ceil(A135087(n)/4)*A011782(A003056(n))`
-/

namespace A055372.P15818414544202595926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A135087 n : ℚ) / 4⌉ * A011782 (A003056 n).toNat

end

end A055372.P15818414544202595926

namespace A055372

/-- `ceil(A135087(n)/4)*A011782(A003056(n))` -/
def P15818414544202595926.Spec : Prop :=
  ∀ n, P15818414544202595926.a n = A055372 n

end A055372

/-! ## A055372.P10495414488027660713

`A038208(n)/A000005(A008578(n+1))`
-/

namespace A055372.P10495414488027660713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A000005 (A008578 (n + 1)).toNat : ℚ)

end

end A055372.P10495414488027660713

namespace A055372

/-- `A038208(n)/A000005(A008578(n+1))` -/
def P10495414488027660713.Spec : Prop :=
  ∀ n, P10495414488027660713.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P6361152830181292555

`A038208(n)/A020639(A006093(n+1))`
-/

namespace A055372.P6361152830181292555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A020639 (A006093 (n + 1)).toNat : ℚ)

end

end A055372.P6361152830181292555

namespace A055372

/-- `A038208(n)/A020639(A006093(n+1))` -/
def P6361152830181292555.Spec : Prop :=
  ∀ n, P6361152830181292555.a n = (A055372 n : ℚ)

end A055372

/-! ## A055372.P255040703463292399

`A038208(n)/A020639(A000040(n+1)-1)`
-/

namespace A055372.P255040703463292399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A055372.P255040703463292399

namespace A055372

/-- `A038208(n)/A020639(A000040(n+1)-1)` -/
def P255040703463292399.Spec : Prop :=
  ∀ n, P255040703463292399.a n = (A055372 n : ℚ)

end A055372

/-!
# A055373: Invert transform applied twice to Pascal's triangle A007318.

The programs for A055373, the canonical program `A055373.P16770464216453307596` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055373 has offset 0).

The definition of A055373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8580 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055373.P16770464216453307596

`ceil(A038221(n)/3)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A055373

/-- `ceil(A038221(n)/3)` -/
def P16770464216453307596.Spec : Prop :=
  ∀ n, P16770464216453307596.a n = A055373 n

theorem P16770464216453307596.correct : P16770464216453307596.Spec := by
  intro n
  simp only [A055373]

end A055373

/-! ## A055373.P12927364212478851104

`A038221(n)/A122553(n)`
-/

namespace A055373.P12927364212478851104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A122553 n : ℚ)

end

end A055373.P12927364212478851104

namespace A055373

/-- `A038221(n)/A122553(n)` -/
def P12927364212478851104.Spec : Prop :=
  ∀ n, P12927364212478851104.a n = (A055373 n : ℚ)

end A055373

/-! ## A055373.P16562302166176081687

`round(A000007(n)+A038221(n)/3)`
-/

namespace A055373.P16562302166176081687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000007 n : ℚ) + (A038221 n : ℚ) / 3)

end

end A055373.P16562302166176081687

namespace A055373

/-- `round(A000007(n)+A038221(n)/3)` -/
def P16562302166176081687.Spec : Prop :=
  ∀ n, P16562302166176081687.a n = A055373 n

end A055373

/-! ## A055373.P1561733300829280594

`A038221(n)/A000032(A000032(C(2, n+2)))`
-/

namespace A055373.P1561733300829280594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A000032 (A000032 (Nat.choose 2 (n + 2))).toNat : ℚ)

end

end A055373.P1561733300829280594

namespace A055373

/-- `A038221(n)/A000032(A000032(C(2, n+2)))` -/
def P1561733300829280594.Spec : Prop :=
  ∀ n, P1561733300829280594.a n = (A055373 n : ℚ)

end A055373

/-! ## A055373.P15227163139756711067

`A038221(n)/A014963(A048883(n))`
-/

namespace A055373.P15227163139756711067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038221 n : ℚ) / (A014963 (A048883 n).toNat : ℚ)

end

end A055373.P15227163139756711067

namespace A055373

/-- `A038221(n)/A014963(A048883(n))` -/
def P15227163139756711067.Spec : Prop :=
  ∀ n, P15227163139756711067.a n = (A055373 n : ℚ)

end A055373

/-!
# A055374: Invert transform applied three times to Pascal's triangle A007318.

The programs for A055374, the canonical program `A055374.P14899419224268872403` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055374 has offset 0).

The definition of A055374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055374.P14899419224268872403

`round(A055372(n)/2*A137688(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A055374

/-- `round(A055372(n)/2*A137688(n))` -/
def P14899419224268872403.Spec : Prop :=
  ∀ n, P14899419224268872403.a n = A055374 n

theorem P14899419224268872403.correct : P14899419224268872403.Spec := by
  intro n
  simp only [A055374]

end A055374

/-! ## A055374.P15451020090575360011

`A055372(n)*A137688(round(n-sqrt(2*n)))`
-/

namespace A055374.P15451020090575360011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055372 n * A137688 (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (2 * n : ℝ))).toNat

end

end A055374.P15451020090575360011

namespace A055374

/-- `A055372(n)*A137688(round(n-sqrt(2*n)))` -/
def P15451020090575360011.Spec : Prop :=
  ∀ n, P15451020090575360011.a n = A055374 n

end A055374

/-! ## A055374.P13170975127406794645

`A011782(A003056(n))*A055372(n)`
-/

namespace A055374.P13170975127406794645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003056 n).toNat * A055372 n

end

end A055374.P13170975127406794645

namespace A055374

/-- `A011782(A003056(n))*A055372(n)` -/
def P13170975127406794645.Spec : Prop :=
  ∀ n, P13170975127406794645.a n = A055374 n

end A055374

/-! ## A055374.P7792442802371344556

`A011782(A003056(n))²*A007318(n)`
-/

namespace A055374.P7792442802371344556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003056 n).toNat ^ 2 * A007318 n

end

end A055374.P7792442802371344556

namespace A055374

/-- `A011782(A003056(n))²*A007318(n)` -/
def P7792442802371344556.Spec : Prop :=
  ∀ n, P7792442802371344556.a n = A055374 n

end A055374

/-! ## A055374.P15650422549174583643

`A055372(n)/A007318(n)*A055372(n)`
-/

namespace A055374.P15650422549174583643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055372 n : ℚ) / (A007318 n : ℚ) * (A055372 n : ℚ)

end

end A055374.P15650422549174583643

namespace A055374

/-- `A055372(n)/A007318(n)*A055372(n)` -/
def P15650422549174583643.Spec : Prop :=
  ∀ n, P15650422549174583643.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P3394323310107521330

`A166444(A002024(n+1))²*A007318(n)`
-/

namespace A055374.P3394323310107521330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A002024 (n + 1)).toNat ^ 2 * A007318 n

end

end A055374.P3394323310107521330

namespace A055374

/-- `A166444(A002024(n+1))²*A007318(n)` -/
def P3394323310107521330.Spec : Prop :=
  ∀ n, P3394323310107521330.a n = A055374 n

end A055374

/-! ## A055374.P8438243995445581479

`A055372(n)/Δ[A102363(n)]*A055372(n)`
-/

namespace A055374.P8438243995445581479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055372 n : ℚ) / (f1 (n + 1) - f1 n : ℚ) * (A055372 n : ℚ)

end

end A055374.P8438243995445581479

namespace A055374

/-- `A055372(n)/Δ[A102363(n)]*A055372(n)` -/
def P8438243995445581479.Spec : Prop :=
  ∀ n, P8438243995445581479.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P1680016422106669907

`ceil(A038234(n)/4)`
-/

namespace A055374.P1680016422106669907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038234 n : ℚ) / 4⌉

end

end A055374.P1680016422106669907

namespace A055374

/-- `ceil(A038234(n)/4)` -/
def P1680016422106669907.Spec : Prop :=
  ∀ n, P1680016422106669907.a n = A055374 n

end A055374

/-! ## A055374.P18351990345753513655

`A038234(n)/A123932(n)`
-/

namespace A055374.P18351990345753513655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A123932 n : ℚ)

end

end A055374.P18351990345753513655

namespace A055374

/-- `A038234(n)/A123932(n)` -/
def P18351990345753513655.Spec : Prop :=
  ∀ n, P18351990345753513655.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P398307734500301199

`A038234(n)/(2-A000007(n))²`
-/

namespace A055374.P398307734500301199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / ((2 - A000007 n) ^ 2 : ℚ)

end

end A055374.P398307734500301199

namespace A055374

/-- `A038234(n)/(2-A000007(n))²` -/
def P398307734500301199.Spec : Prop :=
  ∀ n, P398307734500301199.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P2907404724363954179

`A038234(n)/A020639(A103517(n))²`
-/

namespace A055374.P2907404724363954179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038234 n : ℚ) / (A020639 (A103517 n).toNat ^ 2 : ℚ)

end

end A055374.P2907404724363954179

namespace A055374

/-- `A038234(n)/A020639(A103517(n))²` -/
def P2907404724363954179.Spec : Prop :=
  ∀ n, P2907404724363954179.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P16113003622718734776

`A055372(n)²/A007318(n)`
-/

namespace A055374.P16113003622718734776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055372 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A055374.P16113003622718734776

namespace A055374

/-- `A055372(n)²/A007318(n)` -/
def P16113003622718734776.Spec : Prop :=
  ∀ n, P16113003622718734776.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P5239657415251356291

`A055372(n)²/Δ[A102363(n)]`
-/

namespace A055374.P5239657415251356291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055372 n ^ 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A055374.P5239657415251356291

namespace A055374

/-- `A055372(n)²/Δ[A102363(n)]` -/
def P5239657415251356291.Spec : Prop :=
  ∀ n, P5239657415251356291.a n = (A055374 n : ℚ)

end A055374

/-! ## A055374.P14153161639544171378

`A000010(A137688(n))²*A007318(n)`
-/

namespace A055374.P14153161639544171378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A137688 n).toNat ^ 2 * A007318 n

end

end A055374.P14153161639544171378

namespace A055374

/-- `A000010(A137688(n))²*A007318(n)` -/
def P14153161639544171378.Spec : Prop :=
  ∀ n, P14153161639544171378.a n = A055374 n

end A055374

/-! ## A055374.P10698849672025282349

`A000010(Δ[A007664(n)])*A055372(n)`
-/

namespace A055374.P10698849672025282349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A055372 n

end

end A055374.P10698849672025282349

namespace A055374

/-- `A000010(Δ[A007664(n)])*A055372(n)` -/
def P10698849672025282349.Spec : Prop :=
  ∀ n, P10698849672025282349.a n = A055374 n

end A055374

/-! ## A055374.P6733730804856195782

`A007318(n)*A000463(A137688(n))`
-/

namespace A055374.P6733730804856195782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000463 (A137688 n).toNat

end

end A055374.P6733730804856195782

namespace A055374

/-- `A007318(n)*A000463(A137688(n))` -/
def P6733730804856195782.Spec : Prop :=
  ∀ n, P6733730804856195782.a n = A055374 n

end A055374

/-!
# A055375: Euler transform of Pascal's triangle A007318.

The programs for A055375, there is no canonical definition to state claims against.
-/

/-! ## A055375.P6163367908820499948

`A008621(A141402(n)%A141405(n+1))`
-/

namespace A055375.P6163367908820499948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.tmod (A141402 n) (A141405 (n + 1))).toNat

end

end A055375.P6163367908820499948

/-! ## A055375.P9428369673745551544

`A226764(A219704(n+1)*A296725(n+1))`
-/

namespace A055375.P9428369673745551544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226764 (A219704 (n + 1) * A296725 (n + 1)).toNat

end

end A055375.P9428369673745551544

/-! ## A055375.P873468006824552291

`A091533(n)-A184946(A344182(n))`
-/

namespace A055375.P873468006824552291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n - A184946 (A344182 n).toNat

end

end A055375.P873468006824552291

/-! ## A055375.P1324561625264832191

`A091533(n)-A333750(A006721(n))`
-/

namespace A055375.P1324561625264832191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n - A333750 (A006721 n).toNat

end

end A055375.P1324561625264832191

/-! ## A055375.P2832429654611660303

`A091533(n)-A370813(A000041(n))`
-/

namespace A055375.P2832429654611660303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091533 n - A370813 (A000041 n).toNat

end

end A055375.P2832429654611660303

/-!
# A055376: CIK transform of Pascal's triangle A007318.

The programs for A055376, there is no canonical definition to state claims against.
-/

/-! ## A055376.P13599153460061733713

`A218007(A227594(n+1))-2`
-/

namespace A055376.P13599153460061733713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218007 (A227594 (n + 1)).toNat - 2

end

end A055376.P13599153460061733713

/-! ## A055376.P4192541308283382532

`A206958(A207015(n+1))+A071068(A038208(n))`
-/

namespace A055376.P4192541308283382532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206958 (A207015 (n + 1)).toNat + A071068 (A038208 n).toNat

end

end A055376.P4192541308283382532

/-! ## A055376.P17865900048774862224

`A071068(A038208(n)%A081198(n))`
-/

namespace A055376.P17865900048774862224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (Int.tmod (A038208 n) (A081198 n)).toNat

end

end A055376.P17865900048774862224

/-! ## A055376.P11525476500881360679

`A071068(A038208(n))%p?[A018783(n)]`
-/

namespace A055376.P11525476500881360679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071068 (A038208 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A055376.P11525476500881360679

/-! ## A055376.P16641783610594574440

`A046042(A189814(n+1))%A137541(n+1)`
-/

namespace A055376.P16641783610594574440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046042 (A189814 (n + 1)).toNat) (A137541 (n + 1))

end

end A055376.P16641783610594574440

/-!
# A055377: a(n) = largest prime <= n/2.

The programs for A055377, the canonical program `A055377.P4852534291270494815` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055377 has offset 4).

The definition of A055377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055377.P4852534291270494815

`A007917(floor(n/2)+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055377

/-- `A007917(floor(n/2)+2)` -/
def P4852534291270494815.Spec : Prop :=
  ∀ n, P4852534291270494815.a n = A055377 (n + 4)

theorem P4852534291270494815.correct : P4852534291270494815.Spec := by
  intro n
  simp only [A055377, Nat.add_sub_cancel]

end A055377

/-! ## A055377.P14317714238701782598

`A060308(A128929(n+4))`
-/

namespace A055377.P14317714238701782598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A128929 (n + 4)).toNat

end

end A055377.P14317714238701782598

namespace A055377

/-- `A060308(A128929(n+4))` -/
def P14317714238701782598.Spec : Prop :=
  ∀ n, P14317714238701782598.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P14568606601197756608

`A000040(A000720(ceil((n+3)/2)))`
-/

namespace A055377.P14568606601197756608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ⌈(n + 3 : ℚ) / 2⌉.toNat).toNat

end

end A055377.P14568606601197756608

namespace A055377

/-- `A000040(A000720(ceil((n+3)/2)))` -/
def P14568606601197756608.Spec : Prop :=
  ∀ n, P14568606601197756608.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P3496184984609978764

`A000040(∑[char[2*A040976(n+1)]])`
-/

namespace A055377.P3496184984609978764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055377.P3496184984609978764

namespace A055377

/-- `A000040(∑[char[2*A040976(n+1)]])` -/
def P3496184984609978764.Spec : Prop :=
  ∀ n, P3496184984609978764.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P8829354829783954855

`A000040(A056172(n+4))`
-/

namespace A055377.P8829354829783954855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A056172 (n + 4)).toNat

end

end A055377.P8829354829783954855

namespace A055377

/-- `A000040(A056172(n+4))` -/
def P8829354829783954855.Spec : Prop :=
  ∀ n, P8829354829783954855.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P14658457422396101431

`A136548(A008619(n)+2)`
-/

namespace A055377.P14658457422396101431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A008619 n + 2).toNat

end

end A055377.P14658457422396101431

namespace A055377

/-- `A136548(A008619(n)+2)` -/
def P14658457422396101431.Spec : Prop :=
  ∀ n, P14658457422396101431.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P6576595098101195574

`A136548(A004526(n)+3)`
-/

namespace A055377.P6576595098101195574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A004526 n + 3).toNat

end

end A055377.P6576595098101195574

namespace A055377

/-- `A136548(A004526(n)+3)` -/
def P6576595098101195574.Spec : Prop :=
  ∀ n, P6576595098101195574.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P9283069934800296065

`A000040(A055679(n+4))`
-/

namespace A055377.P9283069934800296065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A055679 (n + 4)).toNat

end

end A055377.P9283069934800296065

namespace A055377

/-- `A000040(A055679(n+4))` -/
def P9283069934800296065.Spec : Prop :=
  ∀ n, P9283069934800296065.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P1713641643335977752

`A357980(A109763(n+3))`
-/

namespace A055377.P1713641643335977752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357980 (A109763 (n + 3)).toNat

end

end A055377.P1713641643335977752

namespace A055377

/-- `A357980(A109763(n+3))` -/
def P1713641643335977752.Spec : Prop :=
  ∀ n, P1713641643335977752.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P5230735603957221710

`A139421(A267460(n+1))`
-/

namespace A055377.P5230735603957221710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A267460 (n + 1)).toNat

end

end A055377.P5230735603957221710

namespace A055377

/-- `A139421(A267460(n+1))` -/
def P5230735603957221710.Spec : Prop :=
  ∀ n, P5230735603957221710.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P1470007561536160470

`A139421(A213222(n+4))`
-/

namespace A055377.P1470007561536160470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A213222 (n + 4)).toNat

end

end A055377.P1470007561536160470

namespace A055377

/-- `A139421(A213222(n+4))` -/
def P1470007561536160470.Spec : Prop :=
  ∀ n, P1470007561536160470.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P6765968626387426277

`A139421(Δ[A000982(n)]+3)`
-/

namespace A055377.P6765968626387426277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (f1 (n + 1) - f1 n + 3).toNat

end

end A055377.P6765968626387426277

namespace A055377

/-- `A139421(Δ[A000982(n)]+3)` -/
def P6765968626387426277.Spec : Prop :=
  ∀ n, P6765968626387426277.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P8464024503594546410

`A139421(A010693(n+1)+n+1)`
-/

namespace A055377.P8464024503594546410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A010693 (n + 1) + (n + 1 : ℤ)).toNat

end

end A055377.P8464024503594546410

namespace A055377

/-- `A139421(A010693(n+1)+n+1)` -/
def P8464024503594546410.Spec : Prop :=
  ∀ n, P8464024503594546410.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P6905974090773751921

`A139421(A158478(n+1)+n+1)`
-/

namespace A055377.P6905974090773751921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A158478 (n + 1) + (n + 1 : ℤ)).toNat

end

end A055377.P6905974090773751921

namespace A055377

/-- `A139421(A158478(n+1)+n+1)` -/
def P6905974090773751921.Spec : Prop :=
  ∀ n, P6905974090773751921.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P14690341158658352322

`A139421(A000034(n+1)+n+2)`
-/

namespace A055377.P14690341158658352322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (A000034 (n + 1) + (n + 2 : ℤ)).toNat

end

end A055377.P14690341158658352322

namespace A055377

/-- `A139421(A000034(n+1)+n+2)` -/
def P14690341158658352322.Spec : Prop :=
  ∀ n, P14690341158658352322.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P16873624437894571139

`A139421(2*log2(A016116(n))+4)`
-/

namespace A055377.P16873624437894571139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (SequenceMachineLib.roundAway (2 * Real.logb 2 (A016116 n : ℝ) + 4)).toNat

end

end A055377.P16873624437894571139

namespace A055377

/-- `A139421(2*log2(A016116(n))+4)` -/
def P16873624437894571139.Spec : Prop :=
  ∀ n, P16873624437894571139.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P11854443488740078833

`A006530(a(n-1)*∑[1-a(n-1)])` with `a(0)=2`
-/

namespace A055377.P11854443488740078833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 (a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A055377.P11854443488740078833

namespace A055377

/-- `A006530(a(n-1)*∑[1-a(n-1)])` -/
def P11854443488740078833.Spec : Prop :=
  ∀ n, P11854443488740078833.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P13548322434674133620

`A006530((gcd(2, n)+2+n)*a(n-1))` with `a(0)=2`
-/

namespace A055377.P13548322434674133620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A006530 ((Nat.gcd 2 n + 2 + n : ℤ) * a (n - 1)).toNat

end

end A055377.P13548322434674133620

namespace A055377

/-- `A006530((gcd(2, n)+2+n)*a(n-1))` -/
def P13548322434674133620.Spec : Prop :=
  ∀ n, P13548322434674133620.a n = A055377 (n + 4)

end A055377

/-! ## A055377.P5401110996093842779

`A139421(log2(A016116(n)²)+4)`
-/

namespace A055377.P5401110996093842779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (SequenceMachineLib.roundAway (Real.logb 2 (A016116 n ^ 2 : ℝ) + 4)).toNat

end

end A055377.P5401110996093842779

namespace A055377

/-- `A139421(log2(A016116(n)²)+4)` -/
def P5401110996093842779.Spec : Prop :=
  ∀ n, P5401110996093842779.a n = A055377 (n + 4)

end A055377

/-!
# A055378: Table read by antidiagonals: T(n,k) = n^trinv(k)+n^(k-((trinv(k)*(trinv(k)-1))/2)) where trinv (k) = floor((1+sqrt(1+8*k))/2) and with 0^0 = 1.

The programs for A055378, there is no canonical definition to state claims against.
-/

/-! ## A055378.P18058009195124990486

`A097805(n)+A039982(A081172(n))`
-/

namespace A055378.P18058009195124990486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A039982 (A081172 n).toNat

end

end A055378.P18058009195124990486

/-! ## A055378.P13800701969489026399

`A295316(A000051(n))+A097805(n)`
-/

namespace A055378.P13800701969489026399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (A000051 n).toNat + A097805 n

end

end A055378.P13800701969489026399

/-! ## A055378.P9956541709227852883

`A205600(A209148(n+1))+A177767(n)`
-/

namespace A055378.P9956541709227852883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205600 (A209148 (n + 1)).toNat + A177767 n

end

end A055378.P9956541709227852883

/-! ## A055378.P17523255976384105838

`A097805(n)+A000035(A241131(2*(n+2)))`
-/

namespace A055378.P17523255976384105838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + A000035 (A241131 (2 * (n + 2))).toNat

end

end A055378.P17523255976384105838

/-! ## A055378.P7493891931539289820

`A336169(A060137(n))+A097805(n)`
-/

namespace A055378.P7493891931539289820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336169 (A060137 n).toNat + A097805 n

end

end A055378.P7493891931539289820

/-!
# A055380: Central prime p in the smallest (2n+1)-tuple of consecutive primes that are symmetric with respect to p.

The programs for A055380, there is no canonical definition to state claims against.
-/

/-! ## A055380.P9136724975094506719

`A391880(A001844(n+1))`
-/

namespace A055380.P9136724975094506719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391880 (A001844 (n + 1)).toNat

end

end A055380.P9136724975094506719

/-! ## A055380.P17772736115140627848

`A391880(A099776(n+1))`
-/

namespace A055380.P17772736115140627848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391880 (A099776 (n + 1)).toNat

end

end A055380.P17772736115140627848

/-! ## A055380.P13646137223115873298

`A391880(A380280(n+2))`
-/

namespace A055380.P13646137223115873298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391880 (A380280 (n + 2)).toNat

end

end A055380.P13646137223115873298

/-!
# A055381: Smallest composite k such that the n closest primes below and above k are symmetric about k.

The programs for A055381, there is no canonical definition to state claims against.
-/

/-! ## A055381.P13483739171308669871

`(A055382(n+1)+A000040(A000720(A055382(n+1)+1)+2*n+1))/2`
-/

namespace A055381.P13483739171308669871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055382 (n + 1) + A000040 (A000720 (A055382 (n + 1) + 1).toNat + (2 * n : ℤ) + 1).toNat : ℚ) / 2

end

end A055381.P13483739171308669871

/-! ## A055381.P7664669117898011203

`A226602(A222885(n+1))+3`
-/

namespace A055381.P7664669117898011203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (A222885 (n + 1)).toNat + 3

end

end A055381.P7664669117898011203

/-!
# A055382: Smallest prime starting a sequence of 2n consecutive odd primes with symmetrical gaps about the center.

The programs for A055382, there is no canonical definition to state claims against.
-/

/-! ## A055382.P17127617825932548836

`or(1, A081235(n+1))`
-/

namespace A055382.P17127617825932548836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A081235 (n + 1))

end

end A055382.P17127617825932548836

/-! ## A055382.P5322875917836020880

`A081235(n+1)+char[A017066(n)]`
-/

namespace A055382.P5322875917836020880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017066 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081235 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055382.P5322875917836020880

/-! ## A055382.P11080512933825472629

`A081235(n+1)+A165456(n)%2`
-/

namespace A055382.P11080512933825472629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081235 (n + 1) + Int.tmod (A165456 n) 2

end

end A055382.P11080512933825472629

/-! ## A055382.P7655801857194484321

`A081235(n+1)+char[A185394(n+1)]`
-/

namespace A055382.P7655801857194484321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185394 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081235 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055382.P7655801857194484321

/-! ## A055382.P1450560474996555145

`A081235(n+1)+A001223(n+1)%2`
-/

namespace A055382.P1450560474996555145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081235 (n + 1) + Int.tmod (A001223 (n + 1)) 2

end

end A055382.P1450560474996555145

/-!
# A055383: Expansion of (1+3*x+9*x^2+12*x^3+11*x^4+3*x^5+x^6)/((1-x)^2*(1-x^2)^2*(1-x^3)).

The programs for A055383, the canonical program `A055383.P8901662805707780996` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055383 has offset 0).

The definition of A055383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+9x^2+12x^3+11x^4+3x^5+x^6)/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))` (program `A055383.P8901662805707780996`, by `A055383.P8901662805707780996.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055383.P8901662805707780996

`ogf((1+3x+9x^2+12x^3+11x^4+3x^5+x^6)/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055383

/-- `ogf((1+3x+9x^2+12x^3+11x^4+3x^5+x^6)/(1-2x-x^2+3x^3+x^4-x^5-3x^6+x^7+2x^8-x^9))` -/
def P8901662805707780996.Spec : Prop :=
  ∀ n, P8901662805707780996.a n = A055383 n

theorem P8901662805707780996.correct : P8901662805707780996.Spec := by
  intro n
  simp only [A055383]

end A055383

/-! ## A055383.P999849177589774357

`A006010(n+1)+∑[2*A181120(n)]`
-/

namespace A055383.P999849177589774357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006010 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055383.P999849177589774357

namespace A055383

/-- `A006010(n+1)+∑[2*A181120(n)]` -/
def P999849177589774357.Spec : Prop :=
  ∀ n, P999849177589774357.a n = A055383 n

end A055383

/-!
# A055384: Expansion of (1 + 4*x + 14*x^2 + 34*x^3 + 63*x^4 + 80*x^5 + 87*x^6 + 68*x^7 + 42*x^8 + 20*x^9 + 7*x^10) / ((1 - x)*(1 - x^2)^2*(1 - x^3)^2*(1 - x^4)).

The programs for A055384, the canonical program `A055384.P601577086494347703` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055384 has offset 0).

The definition of A055384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+14x^2+34x^3+63x^4+80x^5+87x^6+68x^7+42x^8+20x^9+7x^10)/(1-x-2x^2+2x^4+4x^5-x^6-3x^7-3x^8-x^9+4x^10+2x^11-2x^13-x^14+x^15))` (program `A055384.P601577086494347703`, by `A055384.P601577086494347703.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055384.P601577086494347703

`ogf((1+4x+14x^2+34x^3+63x^4+80x^5+87x^6+68x^7+42x^8+20x^9+7x^10)/(1-x-2x^2+2x^4+4x^5-x^6-3x^7-3x^8-x^9+4x^10+2x^11-2x^13-x^14+x^15))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055384

/-- `ogf((1+4x+14x^2+34x^3+63x^4+80x^5+87x^6+68x^7+42x^8+20x^9+7x^10)/(1-x-2x^2+2x^4+4x^5-x^6-3x^7-3x^8-x^9+4x^10+2x^11-2x^13-x^14+x^15))` -/
def P601577086494347703.Spec : Prop :=
  ∀ n, P601577086494347703.a n = A055384 n

theorem P601577086494347703.correct : P601577086494347703.Spec := by
  intro n
  simp only [A055384]

end A055384

/-!
# A055385: Smallest prime factor of n^n + 1.

The programs for A055385, there is no canonical definition to state claims against.
-/

/-! ## A055385.P16772042642109686542

`A089120((n+1)^A331953(n))`
-/

namespace A055385.P16772042642109686542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A331953 n : ℤ))).toNat

end

end A055385.P16772042642109686542

/-! ## A055385.P8392579847257510314

`A089120((n+1)^A069004(n+3))`
-/

namespace A055385.P8392579847257510314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089120 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A069004 (n + 3) : ℤ))).toNat

end

end A055385.P8392579847257510314

/-!
# A055386: Smallest factor of (2n)^(2n) + 1.

The programs for A055386, there is no canonical definition to state claims against.
-/

/-! ## A055386.P4912040848123553275

`A055385(2*(n+1))`
-/

namespace A055386.P4912040848123553275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055385 (2 * (n + 1))

end

end A055386.P4912040848123553275

/-! ## A055386.P973242087296388311

`or(1, A055385(n+2+n))`
-/

namespace A055386.P973242087296388311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A055385 (n + 2 + n))

end

end A055386.P973242087296388311

/-! ## A055386.P3844054669604178175

`A055385(A005843(n+1))%A250636(n+1)`
-/

namespace A055386.P3844054669604178175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055385 (A005843 (n + 1)).toNat) (A250636 (n + 1))

end

end A055386.P3844054669604178175

/-! ## A055386.P14543863931021854990

`A055385(n+2+n)/A074909(∑[n])`
-/

namespace A055386.P14543863931021854990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055385 (n + 2 + n) : ℚ) / (A074909 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A055386.P14543863931021854990

/-! ## A055386.P5426098097899000480

`A055385(n+2+n)^A074909(∑[n+1])`
-/

namespace A055386.P5426098097899000480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055385 (n + 2 + n) : ℚ) ^ (A074909 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A055386.P5426098097899000480

/-! ## A055386.P14939249414248471215

`A055385(n+2+n)/A254730(∑[n])`
-/

namespace A055386.P14939249414248471215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055385 (n + 2 + n) : ℚ) / (A254730 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A055386.P14939249414248471215

/-!
# A055387: 2, 3, 5, 7, together with primes such that there is a nontrivial rearrangement of the digits which is a prime.

The programs for A055387, there is no canonical definition to state claims against.
-/

/-! ## A055387.P8650084656671994231

`∪[A046732(n+1), A225035(n+1)]`
-/

namespace A055387.P8650084656671994231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P8650084656671994231

/-! ## A055387.P18111272019542682317

`∪[A054218(n+1), A225035(n+1)]`
-/

namespace A055387.P18111272019542682317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P18111272019542682317

/-! ## A055387.P9642189709717155614

`∪[A090720(n+1), A225035(n+1)]`
-/

namespace A055387.P9642189709717155614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P9642189709717155614

/-! ## A055387.P14894874357166914296

`∪[A109208(n+1), A225035(n+1)]`
-/

namespace A055387.P14894874357166914296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P14894874357166914296

/-! ## A055387.P13079562576328939404

`∪[A208361(n+1), A225035(n+1)]`
-/

namespace A055387.P13079562576328939404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P13079562576328939404

/-! ## A055387.P6235583236139190510

`∪[A224164(n+1), A225035(n+1)]`
-/

namespace A055387.P6235583236139190510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P6235583236139190510

/-! ## A055387.P16462969007651156372

`∪[A225035(n+1), A281021(n+1)]`
-/

namespace A055387.P16462969007651156372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P16462969007651156372

/-! ## A055387.P9249877211008459352

`∪[A225035(n+1), A293663(n+1)]`
-/

namespace A055387.P9249877211008459352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P9249877211008459352

/-! ## A055387.P12869980542365798582

`∪[A225035(n+1), A360986(n+1)]`
-/

namespace A055387.P12869980542365798582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055387.P12869980542365798582

/-!
# A055388: Number of riffle shuffles of 2n cards required to return the deck to its initial state.

The programs for A055388, there is no canonical definition to state claims against.
-/

/-! ## A055388.P11814512348631688220

`2*A053447(n)`
-/

namespace A055388.P11814512348631688220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053447 n

end

end A055388.P11814512348631688220

/-! ## A055388.P12376258167983505579

`lcm(2, A002326(n))`
-/

namespace A055388.P12376258167983505579
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A002326 n)

end

end A055388.P12376258167983505579

/-! ## A055388.P13002695099096543100

`A004277(A053447(n))`
-/

namespace A055388.P13002695099096543100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A053447 n).toNat

end

end A055388.P13002695099096543100

/-! ## A055388.P14551122926896876110

`2*A050976(A028310(n))`
-/

namespace A055388.P14551122926896876110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050976 (A028310 n).toNat

end

end A055388.P14551122926896876110

/-! ## A055388.P13761987205160714343

`A004273(A053447(n)+1)-1`
-/

namespace A055388.P13761987205160714343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A053447 n + 1).toNat - 1

end

end A055388.P13761987205160714343

/-! ## A055388.P701902065651056051

`A005408(A053447(n)-1)+1`
-/

namespace A055388.P701902065651056051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A053447 n - 1).toNat + 1

end

end A055388.P701902065651056051

/-! ## A055388.P15405686605333320105

`2*A050976(A004277(n)-n)`
-/

namespace A055388.P15405686605333320105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050976 (A004277 n - (n : ℤ)).toNat

end

end A055388.P15405686605333320105

/-! ## A055388.P530992191118381120

`2*A037225(n)/A339049(n)`
-/

namespace A055388.P530992191118381120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A037225 n : ℚ) / (A339049 n : ℚ))

end

end A055388.P530992191118381120

/-! ## A055388.P8627052008407162743

`2*gcd(A002326(n), A216829(n+1))`
-/

namespace A055388.P8627052008407162743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A002326 n) (A216829 (n + 1))

end

end A055388.P8627052008407162743

/-! ## A055388.P4767428551461956583

`A053447(A000007(n)+n)+A053447(n)`
-/

namespace A055388.P4767428551461956583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (A000007 n + (n : ℤ)).toNat + A053447 n

end

end A055388.P4767428551461956583

/-! ## A055388.P17970387661864815533

`A109043(A002326(n))`
-/

namespace A055388.P17970387661864815533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A002326 n).toNat

end

end A055388.P17970387661864815533

/-! ## A055388.P17959130388938205361

`A052928(A053447(n)+A053447(n)+1)`
-/

namespace A055388.P17959130388938205361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A053447 n + (A053447 n + 1)).toNat

end

end A055388.P17959130388938205361

/-! ## A055388.P12147670007432279883

`2*A007735(Δ[n²])`
-/

namespace A055388.P12147670007432279883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007735 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055388.P12147670007432279883

/-! ## A055388.P10140520362679102953

`2*A054705(Δ[n²])`
-/

namespace A055388.P10140520362679102953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054705 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055388.P10140520362679102953

/-! ## A055388.P12005775891840766924

`A004277(A007735(2*n+1))`
-/

namespace A055388.P12005775891840766924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A007735 (2 * n + 1)).toNat

end

end A055388.P12005775891840766924

/-! ## A055388.P15137993731524757347

`A109043(A054703(2*n+1))`
-/

namespace A055388.P15137993731524757347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (A054703 (2 * n + 1)).toNat

end

end A055388.P15137993731524757347

/-! ## A055388.P3694369598008142372

`2*A026741(A007733(2*n+1))`
-/

namespace A055388.P3694369598008142372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 (A007733 (2 * n + 1)).toNat

end

end A055388.P3694369598008142372

/-! ## A055388.P1438854665317560710

`2*A026741(A024222(2*(n+1)))`
-/

namespace A055388.P1438854665317560710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 (A024222 (2 * (n + 1))).toNat

end

end A055388.P1438854665317560710

/-! ## A055388.P6143677079702674382

`2*A050976(A101279(2*n+1))`
-/

namespace A055388.P6143677079702674382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050976 (A101279 (2 * n + 1)).toNat

end

end A055388.P6143677079702674382

/-!
# A055389: a(0) = 1, then twice the Fibonacci sequence.

The programs for A055389, the canonical program `A055389.P3649799877947525108` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055389 has offset 0).

The definition of A055389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055389.P6564026117531553464

`ogf((1+x-x^2)/(1-x-x^2))`
-/

namespace A055389.P6564026117531553464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1] [1, -1, -1] n

end

end A055389.P6564026117531553464

namespace A055389

/-- `ogf((1+x-x^2)/(1-x-x^2))` -/
def P6564026117531553464.Spec : Prop :=
  ∀ n, P6564026117531553464.a n = A055389 n

end A055389

/-! ## A055389.P15966438191619091540

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A055389.P15966438191619091540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A055389.P15966438191619091540

namespace A055389

/-- `round(ϕ*a(n-1))` -/
def P15966438191619091540.Spec : Prop :=
  ∀ n, P15966438191619091540.a n = A055389 n

end A055389

/-! ## A055389.P3649799877947525108

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A055389

/-- `a(n-1)+a(n-2)` -/
def P3649799877947525108.Spec : Prop :=
  ∀ n, (P3649799877947525108.a n : ℤ) = A055389 n

theorem P3649799877947525108.correct : P3649799877947525108.Spec := by
  intro n
  simp only [A055389]

end A055389

/-! ## A055389.P9956538648686034676

`a(n-1)-(char[2]-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A055389.P9956538648686034676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A055389.P9956538648686034676

namespace A055389

/-- `a(n-1)-(char[2]-a(n-2))` -/
def P9956538648686034676.Spec : Prop :=
  ∀ n, P9956538648686034676.a n = A055389 n

end A055389

/-! ## A055389.P11238698528860222722

`2*a(n-1)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A055389.P11238698528860222722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  2 * a (n - 1) - a (n - 3)

end

end A055389.P11238698528860222722

namespace A055389

/-- `2*a(n-1)-a(n-3)` -/
def P11238698528860222722.Spec : Prop :=
  ∀ n, P11238698528860222722.a n = A055389 n

end A055389

/-! ## A055389.P1902678400814707602

`a(n-1)-floor(2/n-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A055389.P1902678400814707602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ⌊2 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A055389.P1902678400814707602

namespace A055389

/-- `a(n-1)-floor(2/n-a(n-2))` -/
def P1902678400814707602.Spec : Prop :=
  ∀ n, P1902678400814707602.a n = A055389 n

end A055389

/-! ## A055389.P10018948219301645022

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A055389.P10018948219301645022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A055389.P10018948219301645022

namespace A055389

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P10018948219301645022.Spec : Prop :=
  ∀ n, P10018948219301645022.a n = A055389 n

end A055389

/-! ## A055389.P5185071828902705696

`a(n-2)-a(n-1)/(gcd(2, a(n-2))-3)` with `a(0)=1, a(1)=2`
-/

namespace A055389.P5185071828902705696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - a (n - 1) / ((Int.gcd 2 (SequenceMachineLib.roundAway (a (n - 2))) : ℤ) - 3 : ℚ)

end

end A055389.P5185071828902705696

namespace A055389

/-- `a(n-2)-a(n-1)/(gcd(2, a(n-2))-3)` -/
def P5185071828902705696.Spec : Prop :=
  ∀ n, P5185071828902705696.a n = (A055389 n : ℚ)

end A055389

/-! ## A055389.P1193961347916303630

`A163733(n+2)`
-/

namespace A055389.P1193961347916303630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163733 (n + 2)

end

end A055389.P1193961347916303630

namespace A055389

/-- `A163733(n+2)` -/
def P1193961347916303630.Spec : Prop :=
  ∀ n, P1193961347916303630.a n = A055389 n

end A055389

/-! ## A055389.P8403105793839909418

`A173388(2*(n+1))`
-/

namespace A055389.P8403105793839909418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173388 (2 * (n + 1))

end

end A055389.P8403105793839909418

namespace A055389

/-- `A173388(2*(n+1))` -/
def P8403105793839909418.Spec : Prop :=
  ∀ n, P8403105793839909418.a n = A055389 n

end A055389

/-! ## A055389.P557570425620684087

`A198834(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A055389.P557570425620684087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A198834 n + a (n - 1)

end

end A055389.P557570425620684087

namespace A055389

/-- `A198834(n)+a(n-1)` -/
def P557570425620684087.Spec : Prop :=
  ∀ n, P557570425620684087.a n = A055389 n

end A055389

/-! ## A055389.P4659033578936725795

`A006355((n+1)%(2*n+1))`
-/

namespace A055389.P4659033578936725795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 ((n + 1) % (2 * n + 1))

end

end A055389.P4659033578936725795

namespace A055389

/-- `A006355((n+1)%(2*n+1))` -/
def P4659033578936725795.Spec : Prop :=
  ∀ n, P4659033578936725795.a n = A055389 n

end A055389

/-! ## A055389.P6639386249731900844

`C(2, n+2)+2*A000045(n)`
-/

namespace A055389.P6639386249731900844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + 2 * A000045 n

end

end A055389.P6639386249731900844

namespace A055389

/-- `C(2, n+2)+2*A000045(n)` -/
def P6639386249731900844.Spec : Prop :=
  ∀ n, P6639386249731900844.a n = A055389 n

end A055389

/-! ## A055389.P16538338993844149884

`round(2/ϕ²*A000045(n+2))`
-/

namespace A055389.P16538338993844149884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.goldenRatio ^ 2 * (A000045 (n + 2) : ℝ))

end

end A055389.P16538338993844149884

namespace A055389

/-- `round(2/ϕ²*A000045(n+2))` -/
def P16538338993844149884.Spec : Prop :=
  ∀ n, P16538338993844149884.a n = A055389 n

end A055389

/-! ## A055389.P9328427435959868435

`2*(A000032(n)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A055389.P9328427435959868435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (A000032 n - a (n - 1))

end

end A055389.P9328427435959868435

namespace A055389

/-- `2*(A000032(n)-a(n-1))` -/
def P9328427435959868435.Spec : Prop :=
  ∀ n, P9328427435959868435.a n = A055389 n

end A055389

/-! ## A055389.P2017272856286417079

`2*(a(n-1)-A000045(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A055389.P2017272856286417079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * (a (n - 1) - A000045 (n - 3))

end

end A055389.P2017272856286417079

namespace A055389

/-- `2*(a(n-1)-A000045(n-3))` -/
def P2017272856286417079.Spec : Prop :=
  ∀ n, P2017272856286417079.a n = A055389 n

end A055389

/-! ## A055389.P8310939334917404033

`A096748(A004273(n))`
-/

namespace A055389.P8310939334917404033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A004273 n).toNat

end

end A055389.P8310939334917404033

namespace A055389

/-- `A096748(A004273(n))` -/
def P8310939334917404033.Spec : Prop :=
  ∀ n, P8310939334917404033.a n = A055389 n

end A055389

/-! ## A055389.P17493052811365513550

`A096748(A163985(n))`
-/

namespace A055389.P17493052811365513550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A163985 n).toNat

end

end A055389.P17493052811365513550

namespace A055389

/-- `A096748(A163985(n))` -/
def P17493052811365513550.Spec : Prop :=
  ∀ n, P17493052811365513550.a n = A055389 n

end A055389

/-! ## A055389.P7186209260786969902

`A006355(A087156(n+1))`
-/

namespace A055389.P7186209260786969902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A087156 (n + 1)).toNat

end

end A055389.P7186209260786969902

namespace A055389

/-- `A006355(A087156(n+1))` -/
def P7186209260786969902.Spec : Prop :=
  ∀ n, P7186209260786969902.a n = A055389 n

end A055389

/-! ## A055389.P7040741246738368859

`A006355(A199969(n+2))`
-/

namespace A055389.P7040741246738368859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (A199969 (n + 2)).toNat

end

end A055389.P7040741246738368859

namespace A055389

/-- `A006355(A199969(n+2))` -/
def P7040741246738368859.Spec : Prop :=
  ∀ n, P7040741246738368859.a n = A055389 n

end A055389

/-!
# A055390: Terms of A007634 where n - 40 is not a square.

The programs for A055390, there is no canonical definition to state claims against.
-/

/-! ## A055390.P8294651449068228679

`lt[A020639(A202018(n)), n-36]`
-/

namespace A055390.P8294651449068228679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A202018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 36

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055390.P8294651449068228679

/-! ## A055390.P14669719461855683127

`lt[A020639(or(1, n²+40+n)), A023480(n)]`
-/

namespace A055390.P14669719461855683127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.lor 1 (n ^ 2 + 40 + n))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055390.P14669719461855683127

/-! ## A055390.P717353077700378040

`lt[1, A131576(A202018(n))]`
-/

namespace A055390.P717353077700378040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A202018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055390.P717353077700378040

/-! ## A055390.P12010617183835554416

`eq[2, A131576(A202018(n+1))]+1`
-/

namespace A055390.P12010617183835554416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131576 (A202018 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055390.P12010617183835554416

/-! ## A055390.P11297113752916036318

`eq[4, A060741(A202018(3*n-2*n))]`
-/

namespace A055390.P11297113752916036318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060741 (A202018 (3 * n - 2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055390.P11297113752916036318

/-! ## A055390.P12913433501243360565

`eq[4, A060741(A202018(n))+A000007(n)]`
-/

namespace A055390.P12913433501243360565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060741 (A202018 n).toNat + A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055390.P12913433501243360565

/-! ## A055390.P10912655723548953462

`eq[4, A060741(A202018(n))]%A016950(n)`
-/

namespace A055390.P10912655723548953462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060741 (A202018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A016950 n)

end

end A055390.P10912655723548953462

/-! ## A055390.P10213979240261417409

`eq[4, A060741(A202018(n))]*A267533(n²)`
-/

namespace A055390.P10213979240261417409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060741 (A202018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A267533 (n ^ 2)

end

end A055390.P10213979240261417409

/-! ## A055390.P2068737368982562436

`A161532(n)%2*eq[4, A060741(A202018(n))]`
-/

namespace A055390.P2068737368982562436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060741 (A202018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161532 n) 2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A055390.P2068737368982562436

/-!
# A055391: Palindromic Lucas numbers (in the order of appearance).

The programs for A055391, there is no canonical definition to state claims against.
-/

/-! ## A055391.P7844266786306295073

`A000032(A237342(n))`
-/

namespace A055391.P7844266786306295073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A237342 n).toNat

end

end A055391.P7844266786306295073

/-!
# A055392: Number of bracketings of 0#0#0#...#0 giving result 0, where 0#0 = 1, 0#1 = 1#0 = 1#1 = 0.

The programs for A055392, there is no canonical definition to state claims against.
-/

/-! ## A055392.P8441110171452636880

`A112521(n+1)/(n+1)`
-/

namespace A055392.P8441110171452636880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112521 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A055392.P8441110171452636880

/-! ## A055392.P9103118547123590036

`A112519(∑[n+1]+1)`
-/

namespace A055392.P9103118547123590036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055392.P9103118547123590036

/-! ## A055392.P8578961905204813867

`gcd(A000038(n), A112519(A000124(n+1)))`
-/

namespace A055392.P8578961905204813867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A112519 (A000124 (n + 1)).toNat)

end

end A055392.P8578961905204813867

/-! ## A055392.P2339532732429149473

`A112519(A000124(n+1))+A000038(n+1)`
-/

namespace A055392.P2339532732429149473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112519 (A000124 (n + 1)).toNat + A000038 (n + 1)

end

end A055392.P2339532732429149473

/-! ## A055392.P3473120901101667355

`A000034(2*n)*A112519(A000124(n+1))`
-/

namespace A055392.P3473120901101667355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A112519 (A000124 (n + 1)).toNat

end

end A055392.P3473120901101667355

/-!
# A055393: Sum of a square and a nonnegative cube in more than one way.

The programs for A055393, there is no canonical definition to state claims against.
-/

/-! ## A055393.P17496222318540236299

`lt[1, A045634(n)]`
-/

namespace A055393.P17496222318540236299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055393.P17496222318540236299

/-! ## A055393.P16365082191217883375

`eq[0, A045634(n)!%2*A066159(n+1)]`
-/

namespace A055393.P16365082191217883375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (A045634 n).toNat % 2 : ℕ) : ℤ) * A066159 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055393.P16365082191217883375

/-! ## A055393.P9081950090250597234

`eq[A020639(A028326(n)), A045634(n)]`
-/

namespace A055393.P9081950090250597234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055393.P9081950090250597234

/-! ## A055393.P13930295046510449036

`eq[A045634(n), A085082(A023202(n+1))]`
-/

namespace A055393.P13930295046510449036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A023202 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055393.P13930295046510449036

/-! ## A055393.P11815015912306752935

`eq[A000005(A123364(n+1)), A045634(n)]`
-/

namespace A055393.P11815015912306752935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A123364 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A055393.P11815015912306752935

/-!
# A055394: Numbers that are the sum of a positive square and a positive cube.

The programs for A055394, there is no canonical definition to state claims against.
-/

/-! ## A055394.P12332641275753929148

`∪[A054402(n+1), A078360(n+1)]`
-/

namespace A055394.P12332641275753929148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054402 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055394.P12332641275753929148

/-! ## A055394.P9337688260432559660

`∪[A066649(n+1), A078390(n+1)]`
-/

namespace A055394.P9337688260432559660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055394.P9337688260432559660

/-! ## A055394.P17028408665048819501

`∪[A078390(n+1), A078393(n+1)]`
-/

namespace A055394.P17028408665048819501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055394.P17028408665048819501

/-! ## A055394.P16877688778099941702

`eq[1, A266364(n)]+1`
-/

namespace A055394.P16877688778099941702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055394.P16877688778099941702

/-! ## A055394.P17123416269501272985

`record[(n+2)/A266364(n+1)]`
-/

namespace A055394.P17123416269501272985
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266364 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055394.P17123416269501272985

/-! ## A055394.P4618588613208119656

`A020725(eq[1, A266364(n)])`
-/

namespace A055394.P4618588613208119656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P4618588613208119656

/-! ## A055394.P7848292247280573905

`A020725(lt[A266364(n), 2])`
-/

namespace A055394.P7848292247280573905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A055394.P7848292247280573905

/-! ## A055394.P13986909464469875864

`1-A001478(eq[1, A266364(n)])`
-/

namespace A055394.P13986909464469875864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001478 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P13986909464469875864

/-! ## A055394.P14481969141365200331

`2-A024000(eq[1, A266364(n)])`
-/

namespace A055394.P14481969141365200331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P14481969141365200331

/-! ## A055394.P15929509835811188026

`eq[1, A266364(A004273(n)-n)]`
-/

namespace A055394.P15929509835811188026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055394.P15929509835811188026

/-! ## A055394.P6628649621925110099

`A008619(2*eq[1, A266364(n)])`
-/

namespace A055394.P6628649621925110099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P6628649621925110099

/-! ## A055394.P1583042839322851233

`A008619(A005843(eq[1, A266364(n)]))`
-/

namespace A055394.P1583042839322851233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A055394.P1583042839322851233

/-! ## A055394.P11128537441142370521

`A080513(2*eq[1, A266364(n)])`
-/

namespace A055394.P11128537441142370521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P11128537441142370521

/-! ## A055394.P9055284745716090070

`A008611(3*eq[1, A266364(n)])`
-/

namespace A055394.P9055284745716090070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P9055284745716090070

/-! ## A055394.P5788721985363522946

`eq[1, A266528(n)]+1`
-/

namespace A055394.P5788721985363522946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055394.P5788721985363522946

/-! ## A055394.P7272632943736663504

`record[(n+2)/A266528(n+1)]`
-/

namespace A055394.P7272632943736663504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A266528 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055394.P7272632943736663504

/-! ## A055394.P17459542806106150820

`A020725(eq[1, A266528(n)])`
-/

namespace A055394.P17459542806106150820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A055394.P17459542806106150820

/-!
# A055395: Number of bracketings of 0#0#0#...#0 giving result 0, where 0#0 = 0#1 = 1#0 = 1, 1#1 = 0.

The programs for A055395, there is no canonical definition to state claims against.
-/

/-! ## A055395.P8765632135496895318

`abs(Δ[A206915(A346923(n))])`
-/

namespace A055395.P8765632135496895318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206915 (A346923 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A055395.P8765632135496895318

/-! ## A055395.P3746339310231954543

`A051889(∑[A289678(n+1)])-n`
-/

namespace A055395.P3746339310231954543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A055395.P3746339310231954543

/-! ## A055395.P1427527714655497438

`A096974(A004148(n))-char[ceil((3^(2/5))^n)]`
-/

namespace A055395.P1427527714655497438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 : ℝ) ^ ((2 : ℚ) / 5 : ℝ)) ^ n⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096974 (A004148 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055395.P1427527714655497438

/-! ## A055395.P10700525912314667701

`A052302(n)-A168046(A001791(n))`
-/

namespace A055395.P10700525912314667701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052302 n - A168046 (A001791 n).toNat

end

end A055395.P10700525912314667701

/-!
# A055396: Smallest prime dividing n is a(n)-th prime (a(1)=0).

The programs for A055396, there is no canonical definition to state claims against.
-/

/-! ## A055396.P17826085050628259744

`A049084(A020639(n+1))`
-/

namespace A055396.P17826085050628259744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A020639 (n + 1)).toNat

end

end A055396.P17826085050628259744

/-! ## A055396.P3805650141184561880

`A277697(∏{p}[n+1, #])`
-/

namespace A055396.P3805650141184561880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A055396.P3805650141184561880

/-! ## A055396.P16459983918663686660

`A277707(∏{p}[n+1, #])`
-/

namespace A055396.P16459983918663686660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A055396.P16459983918663686660

/-! ## A055396.P6516484369294852949

`A353931(∏{p}[n+1, #])`
-/

namespace A055396.P6516484369294852949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353931 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A055396.P6516484369294852949

/-! ## A055396.P8997788748426352050

`A364191(∏{p}[n+1, #])`
-/

namespace A055396.P8997788748426352050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364191 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A055396.P8997788748426352050

/-! ## A055396.P6283692869165610102

`A061395(A028233(n+1))`
-/

namespace A055396.P6283692869165610102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A028233 (n + 1)).toNat

end

end A055396.P6283692869165610102

/-! ## A055396.P17961247462535020108

`A061395(A068794(n+1))`
-/

namespace A055396.P17961247462535020108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A068794 (n + 1)).toNat

end

end A055396.P17961247462535020108

/-! ## A055396.P14582363289616115508

`A061395(A074828(n+1))`
-/

namespace A055396.P14582363289616115508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A074828 (n + 1)).toNat

end

end A055396.P14582363289616115508

/-! ## A055396.P14875895615855011141

`A079067(A117367(n+1))`
-/

namespace A055396.P14875895615855011141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A117367 (n + 1)).toNat

end

end A055396.P14875895615855011141

/-! ## A055396.P1618414884435740290

`A277697(A007947(n+1))`
-/

namespace A055396.P1618414884435740290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A007947 (n + 1)).toNat

end

end A055396.P1618414884435740290

/-! ## A055396.P2104741565477002886

`A277697(A088835(n+1))`
-/

namespace A055396.P2104741565477002886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A088835 (n + 1)).toNat

end

end A055396.P2104741565477002886

/-! ## A055396.P689147769095750568

`A346698(2*A020639(n+1))`
-/

namespace A055396.P689147769095750568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346698 (2 * A020639 (n + 1)).toNat

end

end A055396.P689147769095750568

/-! ## A055396.P3353862364097522610

`gcd(A091337(n), A338101(n+1))`
-/

namespace A055396.P3353862364097522610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091337 n) (A338101 (n + 1))

end

end A055396.P3353862364097522610

/-! ## A055396.P5469973286733368998

`∑{d}[A020639(n+1), A056239(#)]`
-/

namespace A055396.P5469973286733368998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A055396.P5469973286733368998

/-! ## A055396.P12065024035891602922

`∑{d}[A020639(n+1), A061395(#)]`
-/

namespace A055396.P12065024035891602922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A055396.P12065024035891602922

/-! ## A055396.P653736378205742399

`∑{d}[A020639(n+1), A065770(#)]`
-/

namespace A055396.P653736378205742399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065770 d

end

end A055396.P653736378205742399

/-! ## A055396.P2392852236821963845

`∑{d}[A020639(n+1), A297113(#)]`
-/

namespace A055396.P2392852236821963845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297113 d

end

end A055396.P2392852236821963845

/-! ## A055396.P16069904620052804277

`A056239(∏{d}[A020639(n+1), #])`
-/

namespace A055396.P16069904620052804277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A055396.P16069904620052804277

/-! ## A055396.P3244322244968760045

`A061395(∏{d}[A020639(n+1), #])`
-/

namespace A055396.P3244322244968760045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A055396.P3244322244968760045

/-!
# A055398: Result of fourth stage of sieve of Eratosthenes (after eliminating multiples of 2, 3, 5, 7).

The programs for A055398, the canonical program `A055398.P5120495182018114897` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055398 has offset 1).

The definition of A055398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055398.P12995755635821270036

`∪[A008364(n+2), A042988(n)]`
-/

namespace A055398.P12995755635821270036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055398.P12995755635821270036

namespace A055398

/-- `∪[A008364(n+2), A042988(n)]` -/
def P12995755635821270036.Spec : Prop :=
  ∀ n, (P12995755635821270036.a n : ℤ) = A055398 (n + 1)

end A055398

/-! ## A055398.P18175412619160048604

`∪[A008364(n+2), A042990(n)]`
-/

namespace A055398.P18175412619160048604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055398.P18175412619160048604

namespace A055398

/-- `∪[A008364(n+2), A042990(n)]` -/
def P18175412619160048604.Spec : Prop :=
  ∀ n, (P18175412619160048604.a n : ℤ) = A055398 (n + 1)

end A055398

/-! ## A055398.P5120495182018114897

`∪[A000040(n+1), A038511(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A055398

/-- `∪[A000040(n+1), A038511(n+1)]` -/
def P5120495182018114897.Spec : Prop :=
  ∀ n, (P5120495182018114897.a n : ℤ) = A055398 (n + 1)

theorem P5120495182018114897.correct : P5120495182018114897.Spec := by
  intro n
  simp only [A055398, Nat.add_sub_cancel]

end A055398

/-! ## A055398.P10318767694344375511

`∪[A000040(n+1), A008364(n+3)]`
-/

namespace A055398.P10318767694344375511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055398.P10318767694344375511

namespace A055398

/-- `∪[A000040(n+1), A008364(n+3)]` -/
def P10318767694344375511.Spec : Prop :=
  ∀ n, (P10318767694344375511.a n : ℤ) = A055398 (n + 1)

end A055398

/-! ## A055398.P14833113724963801665

`∪[∑[A054541(n+1)], A008364(n+3)]`
-/

namespace A055398.P14833113724963801665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A055398.P14833113724963801665

namespace A055398

/-- `∪[∑[A054541(n+1)], A008364(n+3)]` -/
def P14833113724963801665.Spec : Prop :=
  ∀ n, (P14833113724963801665.a n : ℤ) = A055398 (n + 1)

end A055398

/-! ## A055398.P17904515806931596351

`∪[A006093(n+1)+1, A008364(n+3)]`
-/

namespace A055398.P17904515806931596351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A055398.P17904515806931596351

namespace A055398

/-- `∪[A006093(n+1)+1, A008364(n+3)]` -/
def P17904515806931596351.Spec : Prop :=
  ∀ n, (P17904515806931596351.a n : ℤ) = A055398 (n + 1)

end A055398

/-! ## A055398.P16117901897337914208

`A052424(n+2)`
-/

namespace A055398.P16117901897337914208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 2)

end

end A055398.P16117901897337914208

namespace A055398

/-- `A052424(n+2)` -/
def P16117901897337914208.Spec : Prop :=
  ∀ n, P16117901897337914208.a n = A055398 (n + 1)

end A055398

/-!
# A055399: Number of stages of sieve of Eratosthenes needed to identify n as prime or composite.

The programs for A055399, there is no canonical definition to state claims against.
-/

/-! ## A055399.P5015523057563830656

`A010051(n+3)*(A056811(n+3)+1)+(1-A010051(n+3))*A055396(n+3)`
-/

namespace A055399.P5015523057563830656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 3) * (A056811 (n + 3) + 1) + (1 - A010051 (n + 3)) * A055396 (n + 3)

end

end A055399.P5015523057563830656

/-! ## A055399.P2441983667287280141

`A055396(A230775(n+3)*A249817(n+3))`
-/

namespace A055399.P2441983667287280141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A230775 (n + 3) * A249817 (n + 3)).toNat

end

end A055399.P2441983667287280141

/-! ## A055399.P11506296941587511011

`A003056(A360005(2*(n+3))-char[xor(n, 2*n)])`
-/

namespace A055399.P11506296941587511011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A360005 (2 * (n + 3)) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A055399.P11506296941587511011

/-! ## A055399.P708918740367183750

`A091090(A000051(A275727(n))-A275727(n))`
-/

namespace A055399.P708918740367183750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A000051 (A275727 n).toNat - A275727 n).toNat

end

end A055399.P708918740367183750

/-! ## A055399.P13282894815594137747

`ceil(ratio[A011754(A060546(n))])`
-/

namespace A055399.P13282894815594137747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011754 (A060546 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌉

end

end A055399.P13282894815594137747

