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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B006.C002
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
# A106800: Triangle of Stirling numbers of 2nd kind, S(n, n-k), n >= 0, 0 <= k <= n.

The programs for A106800, there is no canonical definition to state claims against.
-/

/-! ## A106800.P5132807913808231804

`A154844(n)-A048993(n)`
-/

namespace A106800.P5132807913808231804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154844 n - A048993 n

end

end A106800.P5132807913808231804

/-! ## A106800.P16147760824874817481

`A048993(A061579(n))`
-/

namespace A106800.P16147760824874817481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A061579 n).toNat

end

end A106800.P16147760824874817481

/-! ## A106800.P14810598317570888577

`A048993(A114327(n)+n)`
-/

namespace A106800.P14810598317570888577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A114327 n + (n : ℤ)).toNat

end

end A106800.P14810598317570888577

/-! ## A106800.P14478570925381777038

`A048993(A038722(n+1)-1)`
-/

namespace A106800.P14478570925381777038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A038722 (n + 1) - 1).toNat

end

end A106800.P14478570925381777038

/-! ## A106800.P5820937512920985121

`A048993(A014132(n+1)-2*A002260(n+1))`
-/

namespace A106800.P5820937512920985121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1) - 2 * A002260 (n + 1)).toNat

end

end A106800.P5820937512920985121

/-! ## A106800.P6697125482364998364

`A048993(A014132(n+1)-A002260(n+1)-A002260(n+1))`
-/

namespace A106800.P6697125482364998364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 (A014132 (n + 1) - A002260 (n + 1) - A002260 (n + 1)).toNat

end

end A106800.P6697125482364998364

/-! ## A106800.P1322173218577063862

`A055302(n+1)/A173333(n+1)`
-/

namespace A106800.P1322173218577063862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055302 (n + 1) : ℚ) / (A173333 (n + 1) : ℚ)

end

end A106800.P1322173218577063862

/-! ## A106800.P208622220855964304

`A055314(n+2)/A162995(n+1)`
-/

namespace A106800.P208622220855964304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055314 (n + 2) : ℚ) / (A162995 (n + 1) : ℚ)

end

end A106800.P208622220855964304

/-! ## A106800.P16546732321430772314

`A219859(n)/A094587(n)`
-/

namespace A106800.P16546732321430772314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219859 n : ℚ) / (A094587 n : ℚ)

end

end A106800.P16546732321430772314

/-!
# A106801: Records by number in A037183, by indices in A065531.

The programs for A106801, there is no canonical definition to state claims against.
-/

/-! ## A106801.P10023550533363180866

`A135551(A107129(n))`
-/

namespace A106801.P10023550533363180866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (A107129 n).toNat

end

end A106801.P10023550533363180866

/-! ## A106801.P5120728154624738266

`A065531(A107129(n)+floor(1/(n+1)))`
-/

namespace A106801.P5120728154624738266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (A107129 n + ⌊1 / (n + 1 : ℚ)⌋).toNat

end

end A106801.P5120728154624738266

/-! ## A106801.P15255818739228243520

`A057427(n)*A065531(A107129(n))`
-/

namespace A106801.P15255818739228243520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A065531 (A107129 n).toNat

end

end A106801.P15255818739228243520

/-! ## A106801.P11377255924907541348

`A065531(A107129(n))%A001792(n)`
-/

namespace A106801.P11377255924907541348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065531 (A107129 n).toNat) (A001792 n)

end

end A106801.P11377255924907541348

/-! ## A106801.P17621119938142001720

`A065531(A107129(n)*A171624(n+3))`
-/

namespace A106801.P17621119938142001720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065531 (A107129 n * A171624 (n + 3)).toNat

end

end A106801.P17621119938142001720

/-!
# A106802: Trajectory of 2 under the morphism 1->{2, 1, 2, 1, 1, 2, 2, 1}, 2->{1, 1, 1, 2, 2, 1, 2}.

The programs for A106802, there is no canonical definition to state claims against.
-/

/-! ## A106802.P573970250398465784

`A014709(A011371(∑[∑[2*n]]+99))`
-/

namespace A106802.P573970250398465784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A011371 (∑ j ∈ Finset.range (n + 1), f1 j + 99)).toNat

end

end A106802.P573970250398465784

/-! ## A106802.P3269700979338278807

`A001316(and(A001316(n)², A025702(n))²)`
-/

namespace A106802.P3269700979338278807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.land (A001316 n ^ 2) (A025702 n) ^ 2).toNat

end

end A106802.P3269700979338278807

/-! ## A106802.P10918836198592797772

`A134451(A125291(n+1)+A037422(3*n+1))`
-/

namespace A106802.P10918836198592797772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 (A125291 (n + 1) + A037422 (3 * n + 1)).toNat

end

end A106802.P10918836198592797772

/-! ## A106802.P13117450822083105575

`A000034(A270292(n))`
-/

namespace A106802.P13117450822083105575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A270292 n).toNat

end

end A106802.P13117450822083105575

/-! ## A106802.P7728202016159858611

`A000034(∑[A270290(n)])`
-/

namespace A106802.P7728202016159858611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106802.P7728202016159858611

/-!
# A106803: Expansion of x*(1-x)/(1-2*x-x^2+x^3).

The programs for A106803, the canonical program `A106803.P6931847788555504054` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106803 has offset 0).

The definition of A106803 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-x^2)/(1-2x-x^2+x^3))` (program `A106803.P6931847788555504054`, by `A106803.P6931847788555504054.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106803.P6931847788555504054

`ogf((x-x^2)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106803

/-- `ogf((x-x^2)/(1-2x-x^2+x^3))` -/
def P6931847788555504054.Spec : Prop :=
  ∀ n, P6931847788555504054.a n = A106803 n

theorem P6931847788555504054.correct : P6931847788555504054.Spec := by
  intro n
  simp only [A106803]

end A106803

/-! ## A106803.P11270112054065682478

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A106803.P11270112054065682478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A106803.P11270112054065682478

namespace A106803

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P11270112054065682478.Spec : Prop :=
  ∀ n, P11270112054065682478.a n = A106803 n

end A106803

/-! ## A106803.P6620408333520654351

`A187070(2*n)`
-/

namespace A106803.P6620408333520654351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n)

end

end A106803.P6620408333520654351

namespace A106803

/-- `A187070(2*n)` -/
def P6620408333520654351.Spec : Prop :=
  ∀ n, P6620408333520654351.a n = A106803 n

end A106803

/-! ## A106803.P18148633246078846483

`A187068(2*n+2)`
-/

namespace A106803.P18148633246078846483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n + 2)

end

end A106803.P18148633246078846483

namespace A106803

/-- `A187068(2*n+2)` -/
def P18148633246078846483.Spec : Prop :=
  ∀ n, P18148633246078846483.a n = A106803 n

end A106803

/-! ## A106803.P4428524788244818573

`a(n-2)-(a(n-3)-2*a(n-1))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A106803.P4428524788244818573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 2) - (a (n - 3) - 2 * a (n - 1))

end

end A106803.P4428524788244818573

namespace A106803

/-- `a(n-2)-(a(n-3)-2*a(n-1))` -/
def P4428524788244818573.Spec : Prop :=
  ∀ n, P4428524788244818573.a n = A106803 n

end A106803

/-! ## A106803.P15439102248256217318

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A106803.P15439102248256217318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A106803.P15439102248256217318

namespace A106803

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P15439102248256217318.Spec : Prop :=
  ∀ n, P15439102248256217318.a n = A106803 n

end A106803

/-! ## A106803.P389757844860811801

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A106803.P389757844860811801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A106803.P389757844860811801

namespace A106803

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P389757844860811801.Spec : Prop :=
  ∀ n, P389757844860811801.a n = A106803 n

end A106803

/-! ## A106803.P5719054166684089417

`A006054(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A106803.P5719054166684089417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006054 n + a (n - 2)

end

end A106803.P5719054166684089417

namespace A106803

/-- `A006054(n)+a(n-2)` -/
def P5719054166684089417.Spec : Prop :=
  ∀ n, P5719054166684089417.a n = A106803 n

end A106803

/-! ## A106803.P4863418182355976207

`A057427(n)*A077998(n-A057427(n))`
-/

namespace A106803.P4863418182355976207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A077998 ((n : ℤ) - A057427 n).toNat

end

end A106803.P4863418182355976207

namespace A106803

/-- `A057427(n)*A077998(n-A057427(n))` -/
def P4863418182355976207.Spec : Prop :=
  ∀ n, P4863418182355976207.a n = A106803 n

end A106803

/-! ## A106803.P12583561588385321454

`Δ[A006054(n)]`
-/

namespace A106803.P12583561588385321454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106803.P12583561588385321454

namespace A106803

/-- `Δ[A006054(n)]` -/
def P12583561588385321454.Spec : Prop :=
  ∀ n, P12583561588385321454.a n = A106803 n

end A106803

/-! ## A106803.P15485230661263895809

`A052994(n)/2`
-/

namespace A106803.P15485230661263895809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052994 n : ℚ) / 2

end

end A106803.P15485230661263895809

namespace A106803

/-- `A052994(n)/2` -/
def P15485230661263895809.Spec : Prop :=
  ∀ n, P15485230661263895809.a n = (A106803 n : ℚ)

end A106803

/-! ## A106803.P11307699592496611561

`Δ[A187069(2*n)]`
-/

namespace A106803.P11307699592496611561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106803.P11307699592496611561

namespace A106803

/-- `Δ[A187069(2*n)]` -/
def P11307699592496611561.Spec : Prop :=
  ∀ n, P11307699592496611561.a n = A106803 n

end A106803

/-! ## A106803.P17062660020852269141

`Δ[A187068(Δ[n²])]`
-/

namespace A106803.P17062660020852269141
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106803.P17062660020852269141

namespace A106803

/-- `Δ[A187068(Δ[n²])]` -/
def P17062660020852269141.Spec : Prop :=
  ∀ n, P17062660020852269141.a n = A106803 n

end A106803

/-! ## A106803.P12475432281819830337

`A120771(3*n+2)`
-/

namespace A106803.P12475432281819830337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * n + 2)

end

end A106803.P12475432281819830337

namespace A106803

/-- `A120771(3*n+2)` -/
def P12475432281819830337.Spec : Prop :=
  ∀ n, P12475432281819830337.a n = A106803 n

end A106803

/-! ## A106803.P4414733386474328747

`A006054(n+1)-A006054(n)`
-/

namespace A106803.P4414733386474328747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1) - A006054 n

end

end A106803.P4414733386474328747

namespace A106803

/-- `A006054(n+1)-A006054(n)` -/
def P4414733386474328747.Spec : Prop :=
  ∀ n, P4414733386474328747.a n = A106803 n

end A106803

/-! ## A106803.P8020601781869459237

`A187069(2*(n+1))-A187069(2*n)`
-/

namespace A106803.P8020601781869459237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * (n + 1)) - A187069 (2 * n)

end

end A106803.P8020601781869459237

namespace A106803

/-- `A187069(2*(n+1))-A187069(2*n)` -/
def P8020601781869459237.Spec : Prop :=
  ∀ n, P8020601781869459237.a n = A106803 n

end A106803

/-! ## A106803.P13037377379672744100

`A006356(n)-A106805(n)`
-/

namespace A106803.P13037377379672744100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n - A106805 n

end

end A106803.P13037377379672744100

namespace A106803

/-- `A006356(n)-A106805(n)` -/
def P13037377379672744100.Spec : Prop :=
  ∀ n, P13037377379672744100.a n = A106803 n

end A106803

/-! ## A106803.P4273598341801667951

`A052534(n)-A077998(n)`
-/

namespace A106803.P4273598341801667951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n - A077998 n

end

end A106803.P4273598341801667951

namespace A106803

/-- `A052534(n)-A077998(n)` -/
def P4273598341801667951.Spec : Prop :=
  ∀ n, P4273598341801667951.a n = A106803 n

end A106803

/-! ## A106803.P2206052562387039724

`A000007(n)-A199853(n)`
-/

namespace A106803.P2206052562387039724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A199853 n

end

end A106803.P2206052562387039724

namespace A106803

/-- `A000007(n)-A199853(n)` -/
def P2206052562387039724.Spec : Prop :=
  ∀ n, P2206052562387039724.a n = A106803 n

end A106803

/-! ## A106803.P8664895280993237538

`A057428(n)*A199853(n)`
-/

namespace A106803.P8664895280993237538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A199853 n

end

end A106803.P8664895280993237538

namespace A106803

/-- `A057428(n)*A199853(n)` -/
def P8664895280993237538.Spec : Prop :=
  ∀ n, P8664895280993237538.a n = A106803 n

end A106803

/-!
# A106804: Expansion of g.f.: x*(2 - 9*x - 4*x^2)/((1 - 5*x + x^2)*(1 - 5*x - x^2)).

The programs for A106804, the canonical program `A106804.P17976943926258074915` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106804 has offset 0).

The definition of A106804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-9x^2-4x^3)/(1-10x+25x^2-x^4))` (program `A106804.P17976943926258074915`, by `A106804.P17976943926258074915.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106804.P17976943926258074915

`ogf((2x-9x^2-4x^3)/(1-10x+25x^2-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106804

/-- `ogf((2x-9x^2-4x^3)/(1-10x+25x^2-x^4))` -/
def P17976943926258074915.Spec : Prop :=
  ∀ n, P17976943926258074915.a n = A106804 n

theorem P17976943926258074915.correct : P17976943926258074915.Spec := by
  intro n
  simp only [A106804]

end A106804

/-! ## A106804.P2125713241091230927

`A241419(∑[A087219(n)²])`
-/

namespace A106804.P2125713241091230927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087219 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106804.P2125713241091230927

namespace A106804

/-- `A241419(∑[A087219(n)²])` -/
def P2125713241091230927.Spec : Prop :=
  ∀ n, P2125713241091230927.a n = A106804 n

end A106804

/-!
# A106805: Expansion of g.f.: 1/(1 - 2*x - x^2 + x^3).

The programs for A106805, the canonical program `A106805.P10230369565004288492` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106805 has offset 0).

The definition of A106805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2+x^3))` (program `A106805.P10230369565004288492`, by `A106805.P10230369565004288492.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106805.P10230369565004288492

`ogf(1/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106805

/-- `ogf(1/(1-2x-x^2+x^3))` -/
def P10230369565004288492.Spec : Prop :=
  ∀ n, P10230369565004288492.a n = A106805 n

theorem P10230369565004288492.correct : P10230369565004288492.Spec := by
  intro n
  simp only [A106805]

end A106805

/-! ## A106805.P14089179203539144792

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A106805.P14089179203539144792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) + (a (n - 2) - a (n - 3))

end

end A106805.P14089179203539144792

namespace A106805

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P14089179203539144792.Spec : Prop :=
  ∀ n, P14089179203539144792.a n = A106805 n

end A106805

/-! ## A106805.P17811571772161357867

`a(n-2)-(a(n-3)-2*a(n-1))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A106805.P17811571772161357867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 2) - (a (n - 3) - 2 * a (n - 1))

end

end A106805.P17811571772161357867

namespace A106805

/-- `a(n-2)-(a(n-3)-2*a(n-1))` -/
def P17811571772161357867.Spec : Prop :=
  ∀ n, P17811571772161357867.a n = A106805 n

end A106805

/-! ## A106805.P1874920594396405177

`a(n-1)+a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A106805.P1874920594396405177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 2) - a (n - 3)))

end

end A106805.P1874920594396405177

namespace A106805

/-- `a(n-1)+a(n-1)+a(n-2)-a(n-3)` -/
def P1874920594396405177.Spec : Prop :=
  ∀ n, P1874920594396405177.a n = A106805 n

end A106805

/-! ## A106805.P1837646267745970103

`a(n-1)-(a(n-3)-a(n-1)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A106805.P1837646267745970103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 2))

end

end A106805.P1837646267745970103

namespace A106805

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-2))` -/
def P1837646267745970103.Spec : Prop :=
  ∀ n, P1837646267745970103.a n = A106805 n

end A106805

/-! ## A106805.P10192227417666827168

`∑[A077998(n)]`
-/

namespace A106805.P10192227417666827168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106805.P10192227417666827168

namespace A106805

/-- `∑[A077998(n)]` -/
def P10192227417666827168.Spec : Prop :=
  ∀ n, P10192227417666827168.a n = A106805 n

end A106805

/-! ## A106805.P12059668182477211916

`A006054(n+2)`
-/

namespace A106805.P12059668182477211916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 2)

end

end A106805.P12059668182477211916

namespace A106805

/-- `A006054(n+2)` -/
def P12059668182477211916.Spec : Prop :=
  ∀ n, P12059668182477211916.a n = A106805 n

end A106805

/-! ## A106805.P12186400824862128005

`A370377(2*n)`
-/

namespace A106805.P12186400824862128005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370377 (2 * n)

end

end A106805.P12186400824862128005

namespace A106805

/-- `A370377(2*n)` -/
def P12186400824862128005.Spec : Prop :=
  ∀ n, P12186400824862128005.a n = A106805 n

end A106805

/-! ## A106805.P17361677064058557695

`A038196(Δ[n²])`
-/

namespace A106805.P17361677064058557695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A106805.P17361677064058557695

namespace A106805

/-- `A038196(Δ[n²])` -/
def P17361677064058557695.Spec : Prop :=
  ∀ n, P17361677064058557695.a n = A106805 n

end A106805

/-! ## A106805.P14119411342260122383

`∑[A106803(n+1)]`
-/

namespace A106805.P14119411342260122383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106805.P14119411342260122383

namespace A106805

/-- `∑[A106803(n+1)]` -/
def P14119411342260122383.Spec : Prop :=
  ∀ n, P14119411342260122383.a n = A106805 n

end A106805

/-! ## A106805.P6710275713813440001

`∑[A052949(n)-1]`
-/

namespace A106805.P6710275713813440001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052949 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106805.P6710275713813440001

namespace A106805

/-- `∑[A052949(n)-1]` -/
def P6710275713813440001.Spec : Prop :=
  ∀ n, P6710275713813440001.a n = A106805 n

end A106805

/-! ## A106805.P1948546867980143635

`∑[A038196(2*n)]`
-/

namespace A106805.P1948546867980143635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106805.P1948546867980143635

namespace A106805

/-- `∑[A038196(2*n)]` -/
def P1948546867980143635.Spec : Prop :=
  ∀ n, P1948546867980143635.a n = A106805 n

end A106805

/-! ## A106805.P7295241028616351349

`∑[A120771(3*n)]`
-/

namespace A106805.P7295241028616351349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106805.P7295241028616351349

namespace A106805

/-- `∑[A120771(3*n)]` -/
def P7295241028616351349.Spec : Prop :=
  ∀ n, P7295241028616351349.a n = A106805 n

end A106805

/-! ## A106805.P4146677526334056452

`A187069(2*(n+2))`
-/

namespace A106805.P4146677526334056452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * (n + 2))

end

end A106805.P4146677526334056452

namespace A106805

/-- `A187069(2*(n+2))` -/
def P4146677526334056452.Spec : Prop :=
  ∀ n, P4146677526334056452.a n = A106805 n

end A106805

/-! ## A106805.P12291499695177740769

`A187070(2*n+3)`
-/

namespace A106805.P12291499695177740769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n + 3)

end

end A106805.P12291499695177740769

namespace A106805

/-- `A187070(2*n+3)` -/
def P12291499695177740769.Spec : Prop :=
  ∀ n, P12291499695177740769.a n = A106805 n

end A106805

/-! ## A106805.P13249271952960292859

`A120771(3*n+4)`
-/

namespace A106805.P13249271952960292859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (3 * n + 4)

end

end A106805.P13249271952960292859

namespace A106805

/-- `A120771(3*n+4)` -/
def P13249271952960292859.Spec : Prop :=
  ∀ n, P13249271952960292859.a n = A106805 n

end A106805

/-! ## A106805.P6161004872783928558

`A187068(2*n+5)`
-/

namespace A106805.P6161004872783928558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (2 * n + 5)

end

end A106805.P6161004872783928558

namespace A106805

/-- `A187068(2*n+5)` -/
def P6161004872783928558.Spec : Prop :=
  ∀ n, P6161004872783928558.a n = A106805 n

end A106805

/-! ## A106805.P13760341457032911568

`record[A006054(abs(2-n))]`
-/

namespace A106805.P13760341457032911568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106805.P13760341457032911568

namespace A106805

/-- `record[A006054(abs(2-n))]` -/
def P13760341457032911568.Spec : Prop :=
  ∀ n, P13760341457032911568.a n = A106805 n

end A106805

/-! ## A106805.P8417326518516678594

`record[Δ[A120771(n+2)]]`
-/

namespace A106805.P8417326518516678594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106805.P8417326518516678594

namespace A106805

/-- `record[Δ[A120771(n+2)]]` -/
def P8417326518516678594.Spec : Prop :=
  ∀ n, P8417326518516678594.a n = A106805 n

end A106805

/-! ## A106805.P1243928182447614314

`∑[A052994(n+1)/2]`
-/

namespace A106805.P1243928182447614314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052994 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106805.P1243928182447614314

namespace A106805

/-- `∑[A052994(n+1)/2]` -/
def P1243928182447614314.Spec : Prop :=
  ∀ n, P1243928182447614314.a n = (A106805 n : ℚ)

end A106805

/-!
# A106806: If the name of the n-th King or Queen of Denmark is King (or Queen) XXX the k-th, then the n-th term is k.

The programs for A106806, there is no canonical definition to state claims against.
-/

/-! ## A106806.P17426800289914042585

`A126759((5*∑{d}[n+1, #])%A092437(∑{d}[n, #%#²]))`
-/

namespace A106806.P17426800289914042585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (Int.tmod ((5 * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℤ) (A092437 (∑ d ∈ Nat.divisors (f2 n), d % d ^ 2))).toNat

end

end A106806.P17426800289914042585

/-! ## A106806.P17130125561689111920

`A105265(A105292(n+1)+Δ[A105291(n)])`
-/

namespace A106806.P17130125561689111920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105265 (A105292 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A106806.P17130125561689111920

/-! ## A106806.P10824501837568780482

`A001221(A106531(n+4)+A106493(n+1))`
-/

namespace A106806.P10824501837568780482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A106531 (n + 4) + A106493 (n + 1)).toNat

end

end A106806.P10824501837568780482

/-!
# A106807: Primes with digit sum = 67.

The programs for A106807, there is no canonical definition to state claims against.
-/

/-! ## A106807.P12863403144146922047

`A213354(n+1)`
-/

namespace A106807.P12863403144146922047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213354 (n + 1)

end

end A106807.P12863403144146922047

/-! ## A106807.P18406280227860350407

`record[A213354(A038569(n))]`
-/

namespace A106807.P18406280227860350407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213354 (A038569 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106807.P18406280227860350407

/-! ## A106807.P4561906480874970686

`record[A213354(A065648(n))]`
-/

namespace A106807.P4561906480874970686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213354 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106807.P4561906480874970686

/-! ## A106807.P6667583516663673518

`record[A213354(A106466(n))]`
-/

namespace A106807.P6667583516663673518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213354 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106807.P6667583516663673518

/-! ## A106807.P3515626603098033355

`record[A213354(A117910(n))]`
-/

namespace A106807.P3515626603098033355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213354 (A117910 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106807.P3515626603098033355

/-!
# A106817: Smallest prime of the set of four consecutive primes whose sum of digits is a set of four distinct primes.

The programs for A106817, there is no canonical definition to state claims against.
-/

/-! ## A106817.P17833716070137151962

`A246277(7*A106818(n+1))`
-/

namespace A106817.P17833716070137151962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (7 * A106818 (n + 1)).toNat

end

end A106817.P17833716070137151962

/-! ## A106817.P10395563923111542147

`filter[A106715(n+1), A131217(#)]`
-/

namespace A106817.P10395563923111542147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131217 (f1 j).toNat = 1) n)

end

end A106817.P10395563923111542147

/-! ## A106817.P8920682937045138584

`∩[A106715(n+1), A291691(n+1)]`
-/

namespace A106817.P8920682937045138584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106817.P8920682937045138584

/-!
# A106818: Largest prime of the set of four consecutive primes whose sum of digits is a set of four distinct primes.

The programs for A106818, there is no canonical definition to state claims against.
-/

/-! ## A106818.P2990209568658318541

`A045968(A106817(n+1))`
-/

namespace A106818.P2990209568658318541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A106817 (n + 1)).toNat

end

end A106818.P2990209568658318541

/-! ## A106818.P2647882297385318955

`record[A106716(A270559(n+1)+A130068(2*n+1))]`
-/

namespace A106818.P2647882297385318955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106716 (A270559 (n + 1) + A130068 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106818.P2647882297385318955

/-!
# A106819: Largest prime of the set of three consecutive primes whose sum of digits is a set of three distinct primes.

The programs for A106819, there is no canonical definition to state claims against.
-/

/-! ## A106819.P16295109268777132599

`A151800(A151800(A106820(n+1)))`
-/

namespace A106819.P16295109268777132599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A106820 (n + 1)).toNat).toNat

end

end A106819.P16295109268777132599

/-! ## A106819.P14447293408462519176

`A045966(A106820(n+1))`
-/

namespace A106819.P14447293408462519176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A106820 (n + 1)).toNat

end

end A106819.P14447293408462519176

/-! ## A106819.P13945555031778735518

`A101300(p?[A106820(n+1)])`
-/

namespace A106819.P13945555031778735518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A106819.P13945555031778735518

/-! ## A106819.P4680251923096093832

`A101300(A106820(n+1)+and(1, ∑[n]))`
-/

namespace A106819.P4680251923096093832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A106820 (n + 1) + (Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)).toNat

end

end A106819.P4680251923096093832

/-! ## A106819.P1644603318800929653

`A003961(A003961(p?[A106820(n+1)]))`
-/

namespace A106819.P1644603318800929653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A106819.P1644603318800929653

/-! ## A106819.P910568299151240748

`A000040(A003963(A106820(n+1))+2)`
-/

namespace A106819.P910568299151240748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003963 (A106820 (n + 1)).toNat + 2).toNat

end

end A106819.P910568299151240748

/-! ## A106819.P233080440951186284

`A101300(A106820(n+1)%A016946(n))`
-/

namespace A106819.P233080440951186284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (Int.tmod (A106820 (n + 1)) (A016946 n)).toNat

end

end A106819.P233080440951186284

/-!
# A106820: Smallest prime of the set of three consecutive primes whose sum of digits is a set of three distinct primes.

The programs for A106820, there is no canonical definition to state claims against.
-/

/-! ## A106820.P3786489392905917179

`A079068(A079068(A106819(n+1)))`
-/

namespace A106820.P3786489392905917179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079068 (A079068 (A106819 (n + 1)).toNat).toNat

end

end A106820.P3786489392905917179

/-! ## A106820.P4184380960088901843

`A033302(A106819(n+1))`
-/

namespace A106820.P4184380960088901843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A106819 (n + 1)).toNat

end

end A106820.P4184380960088901843

/-! ## A106820.P10226940436909922526

`A008578(A047983(p?[A106819(n+1)]))`
-/

namespace A106820.P10226940436909922526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A047983 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A106820.P10226940436909922526

/-! ## A106820.P10538571837433730781

`A064989(A064989(p?[A106819(n+1)]))`
-/

namespace A106820.P10538571837433730781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A106820.P10538571837433730781

/-! ## A106820.P6758653763792206295

`A136548(A136548(p?[A106819(n+1)]))`
-/

namespace A106820.P6758653763792206295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A136548 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A106820.P6758653763792206295

/-!
# A106824: Trajectory of 1 under the morphism 1->13, 2->13223, 3->1323.

The programs for A106824, there is no canonical definition to state claims against.
-/

/-! ## A106824.P6731793141527732934

`Δ[A287241(n+1)-A178798(A026812(n))]`
-/

namespace A106824.P6731793141527732934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287241 (n + 1) - A178798 (A026812 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106824.P6731793141527732934

/-! ## A106824.P1198483276445719198

`A252742(n+5)+A040001(A356223(n+4))`
-/

namespace A106824.P1198483276445719198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 5) + A040001 (A356223 (n + 4)).toNat

end

end A106824.P1198483276445719198

/-! ## A106824.P1123144275721119913

`A007413(lt[A374629(3*n+1), A048793(n+4)])`
-/

namespace A106824.P1123144275721119913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374629 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048793 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106824.P1123144275721119913

/-! ## A106824.P10722387698229707381

`Δ[A287241(n+1)]*A000265(2^n)`
-/

namespace A106824.P10722387698229707381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000265 (2 ^ n)

end

end A106824.P10722387698229707381

/-! ## A106824.P5982392309937247091

`Δ[A287241(n+1)]%A033916(n+1)`
-/

namespace A106824.P5982392309937247091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A033916 (n + 1))

end

end A106824.P5982392309937247091

/-!
# A106825: Trajectory of 1 under the morphism 1->1222, 2->2111.

The programs for A106825, the canonical program `A106825.P13793316867207324139` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106825 has offset 0).

The definition of A106825 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106825.P13793316867207324139

`gcd(2, n%2+a(floor(n/4))+and(4, n²)/4)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106825

/-- `gcd(2, n%2+a(floor(n/4))+and(4, n²)/4)` -/
def P13793316867207324139.Spec : Prop :=
  ∀ n, (P13793316867207324139.a n : ℤ) = A106825 n

theorem P13793316867207324139.correct : P13793316867207324139.Spec := by
  intro n
  simp only [A106825]

end A106825

/-! ## A106825.P8307064532482613338

`and(2, A255723(n))!`
-/

namespace A106825.P8307064532482613338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A255723 n)).toNat

end

end A106825.P8307064532482613338

namespace A106825

/-- `and(2, A255723(n))!` -/
def P8307064532482613338.Spec : Prop :=
  ∀ n, (P8307064532482613338.a n : ℤ) = A106825 n

end A106825

/-! ## A106825.P11575917058865486833

`A160385(n)%2+1`
-/

namespace A106825.P11575917058865486833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160385 n) 2 + 1

end

end A106825.P11575917058865486833

namespace A106825

/-- `A160385(n)%2+1` -/
def P11575917058865486833.Spec : Prop :=
  ∀ n, P11575917058865486833.a n = A106825 n

end A106825

/-! ## A106825.P13643032347055215085

`gcd(2, A059253(4*n+1))`
-/

namespace A106825.P13643032347055215085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A059253 (4 * n + 1))

end

end A106825.P13643032347055215085

namespace A106825

/-- `gcd(2, A059253(4*n+1))` -/
def P13643032347055215085.Spec : Prop :=
  ∀ n, (P13643032347055215085.a n : ℤ) = A106825 n

end A106825

/-! ## A106825.P11060493538881678954

`A100661(n%2+a(floor(n/4))+and(4, n²)/4)` with `a(0)=1`
-/

namespace A106825.P11060493538881678954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A100661 (SequenceMachineLib.roundAway (((n % 2 : ℕ) : ℚ) + ((a ⌊(n : ℚ) / 4⌋.toNat : ℚ) + (Nat.land 4 (n ^ 2) : ℚ) / 4))).toNat

end

end A106825.P11060493538881678954

namespace A106825

/-- `A100661(n%2+a(floor(n/4))+and(4, n²)/4)` -/
def P11060493538881678954.Spec : Prop :=
  ∀ n, P11060493538881678954.a n = A106825 n

end A106825

/-! ## A106825.P12009531693661422254

`A001285(A380110(n))`
-/

namespace A106825.P12009531693661422254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A380110 n).toNat

end

end A106825.P12009531693661422254

namespace A106825

/-- `A001285(A380110(n))` -/
def P12009531693661422254.Spec : Prop :=
  ∀ n, P12009531693661422254.a n = A106825 n

end A106825

/-! ## A106825.P15111668879239464098

`gcd(2, A163356(A016813(n)))`
-/

namespace A106825.P15111668879239464098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A163356 (A016813 n).toNat)

end

end A106825.P15111668879239464098

namespace A106825

/-- `gcd(2, A163356(A016813(n)))` -/
def P15111668879239464098.Spec : Prop :=
  ∀ n, (P15111668879239464098.a n : ℤ) = A106825 n

end A106825

/-! ## A106825.P3427532599106941293

`A000041(and(2, A255723(n)))`
-/

namespace A106825.P3427532599106941293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 2 (A255723 n)).toNat

end

end A106825.P3427532599106941293

namespace A106825

/-- `A000041(and(2, A255723(n)))` -/
def P3427532599106941293.Spec : Prop :=
  ∀ n, P3427532599106941293.a n = A106825 n

end A106825

/-! ## A106825.P17547370660167084509

`A000108(and(2, A255723(n)))`
-/

namespace A106825.P17547370660167084509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 2 (A255723 n)).toNat

end

end A106825.P17547370660167084509

namespace A106825

/-- `A000108(and(2, A255723(n)))` -/
def P17547370660167084509.Spec : Prop :=
  ∀ n, P17547370660167084509.a n = A106825 n

end A106825

/-! ## A106825.P16001746331107702530

`A185896(and(2, A255723(n)))`
-/

namespace A106825.P16001746331107702530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185896 (Int.land 2 (A255723 n)).toNat

end

end A106825.P16001746331107702530

namespace A106825

/-- `A185896(and(2, A255723(n)))` -/
def P16001746331107702530.Spec : Prop :=
  ∀ n, P16001746331107702530.a n = A106825 n

end A106825

/-! ## A106825.P8076799905507096567

`A001285(and(n, A048647(n)))`
-/

namespace A106825.P8076799905507096567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.land (n : ℤ) (A048647 n)).toNat

end

end A106825.P8076799905507096567

namespace A106825

/-- `A001285(and(n, A048647(n)))` -/
def P8076799905507096567.Spec : Prop :=
  ∀ n, P8076799905507096567.a n = A106825 n

end A106825

/-! ## A106825.P16665744993349731245

`A001285(and(n, A163241(n)))`
-/

namespace A106825.P16665744993349731245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (Int.land (n : ℤ) (A163241 n)).toNat

end

end A106825.P16665744993349731245

namespace A106825

/-- `A001285(and(n, A163241(n)))` -/
def P16665744993349731245.Spec : Prop :=
  ∀ n, P16665744993349731245.a n = A106825 n

end A106825

/-! ## A106825.P17412316185241677675

`A323907(and(2, A255723(n))²)`
-/

namespace A106825.P17412316185241677675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323907 (Int.land 2 (A255723 n) ^ 2).toNat

end

end A106825.P17412316185241677675

namespace A106825

/-- `A323907(and(2, A255723(n))²)` -/
def P17412316185241677675.Spec : Prop :=
  ∀ n, P17412316185241677675.a n = A106825 n

end A106825

/-! ## A106825.P16702847710803626383

`A000010(and(2, A255723(n))+1)`
-/

namespace A106825.P16702847710803626383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.land 2 (A255723 n) + 1).toNat

end

end A106825.P16702847710803626383

namespace A106825

/-- `A000010(and(2, A255723(n))+1)` -/
def P16702847710803626383.Spec : Prop :=
  ∀ n, P16702847710803626383.a n = A106825 n

end A106825

/-! ## A106825.P9433356381538533142

`A000045(and(2, A255723(n))+1)`
-/

namespace A106825.P9433356381538533142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 2 (A255723 n) + 1).toNat

end

end A106825.P9433356381538533142

namespace A106825

/-- `A000045(and(2, A255723(n))+1)` -/
def P9433356381538533142.Spec : Prop :=
  ∀ n, P9433356381538533142.a n = A106825 n

end A106825

/-! ## A106825.P4500838991653267134

`1-A255723(and(2, A255723(n)))`
-/

namespace A106825.P4500838991653267134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A255723 (Int.land 2 (A255723 n)).toNat

end

end A106825.P4500838991653267134

namespace A106825

/-- `1-A255723(and(2, A255723(n)))` -/
def P4500838991653267134.Spec : Prop :=
  ∀ n, P4500838991653267134.a n = A106825 n

end A106825

/-! ## A106825.P12170939298672330267

`A323907(2*and(2, A255723(n)))`
-/

namespace A106825.P12170939298672330267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323907 (2 * Int.land 2 (A255723 n)).toNat

end

end A106825.P12170939298672330267

namespace A106825

/-- `A323907(2*and(2, A255723(n)))` -/
def P12170939298672330267.Spec : Prop :=
  ∀ n, P12170939298672330267.a n = A106825 n

end A106825

/-! ## A106825.P7978359711911098208

`A276086(and(2, A255723(n))/2)`
-/

namespace A106825.P7978359711911098208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (SequenceMachineLib.roundAway ((Int.land 2 (A255723 n) : ℚ) / 2)).toNat

end

end A106825.P7978359711911098208

namespace A106825

/-- `A276086(and(2, A255723(n))/2)` -/
def P7978359711911098208.Spec : Prop :=
  ∀ n, P7978359711911098208.a n = A106825 n

end A106825

/-! ## A106825.P12530499198060846957

`A323907(and(2, A255723(n))/2)`
-/

namespace A106825.P12530499198060846957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323907 (SequenceMachineLib.roundAway ((Int.land 2 (A255723 n) : ℚ) / 2)).toNat

end

end A106825.P12530499198060846957

namespace A106825

/-- `A323907(and(2, A255723(n))/2)` -/
def P12530499198060846957.Spec : Prop :=
  ∀ n, P12530499198060846957.a n = A106825 n

end A106825

/-! ## A106825.P9691618195076680741

`A000010(2^and(2, A255723(n)))`
-/

namespace A106825.P9691618195076680741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land 2 (A255723 n) : ℤ))).toNat

end

end A106825.P9691618195076680741

namespace A106825

/-- `A000010(2^and(2, A255723(n)))` -/
def P9691618195076680741.Spec : Prop :=
  ∀ n, P9691618195076680741.a n = A106825 n

end A106825

/-!
# A106826: Trajectory of 1 under the morphism 1->{2,1}, 2->{2,3}, 3->{4,3}, 4->{4,1}.

The programs for A106826, the canonical program `A106826.P9928027811519024115` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106826 has offset 0).

The definition of A106826 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106826.P9928027811519024115

`gcd(12, a(n-1-and(n, 2*n))+1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106826

/-- `gcd(12, a(n-1-and(n, 2*n))+1)` -/
def P9928027811519024115.Spec : Prop :=
  ∀ n, (P9928027811519024115.a n : ℤ) = A106826 n

theorem P9928027811519024115.correct : P9928027811519024115.Spec := by
  intro n
  simp only [A106826]

end A106826

/-! ## A106826.P2543258148592405704

`dr(or(28, A105500(n)))`
-/

namespace A106826.P2543258148592405704
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor 28 (A105500 n))

end

end A106826.P2543258148592405704

namespace A106826

/-- `dr(or(28, A105500(n)))` -/
def P2543258148592405704.Spec : Prop :=
  ∀ n, (P2543258148592405704.a n : ℤ) = A106826 n

end A106826

/-! ## A106826.P12661288292759523118

`A088748(n)%4+1`
-/

namespace A106826.P12661288292759523118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088748 n) 4 + 1

end

end A106826.P12661288292759523118

namespace A106826

/-- `A088748(n)%4+1` -/
def P12661288292759523118.Spec : Prop :=
  ∀ n, P12661288292759523118.a n = A106826 n

end A106826

/-! ## A106826.P11217066740025740897

`gcd(12, A246960(n)+2)`
-/

namespace A106826.P11217066740025740897
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 12 (A246960 n + 2)

end

end A106826.P11217066740025740897

namespace A106826

/-- `gcd(12, A246960(n)+2)` -/
def P11217066740025740897.Spec : Prop :=
  ∀ n, (P11217066740025740897.a n : ℤ) = A106826 n

end A106826

/-! ## A106826.P8057952516566826932

`(A005811(n)+1)%4+1`
-/

namespace A106826.P8057952516566826932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 n + 1) 4 + 1

end

end A106826.P8057952516566826932

namespace A106826

/-- `(A005811(n)+1)%4+1` -/
def P8057952516566826932.Spec : Prop :=
  ∀ n, P8057952516566826932.a n = A106826 n

end A106826

/-! ## A106826.P15647780746374148020

`gcd(48, a(n-A006257(n))+1)` with `a(0)=2`
-/

namespace A106826.P15647780746374148020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.gcd 48 (a ((n : ℤ) - A006257 n).toNat + 1)

end

end A106826.P15647780746374148020

namespace A106826

/-- `gcd(48, a(n-A006257(n))+1)` -/
def P15647780746374148020.Spec : Prop :=
  ∀ n, (P15647780746374148020.a n : ℤ) = A106826 n

end A106826

/-! ## A106826.P9202139165586352652

`A010883(A088748(n))`
-/

namespace A106826.P9202139165586352652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A088748 n).toNat

end

end A106826.P9202139165586352652

namespace A106826

/-- `A010883(A088748(n))` -/
def P9202139165586352652.Spec : Prop :=
  ∀ n, P9202139165586352652.a n = A106826 n

end A106826

/-! ## A106826.P6705786053229479373

`A010883(A005811(n)+1)`
-/

namespace A106826.P6705786053229479373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A005811 n + 1).toNat

end

end A106826.P6705786053229479373

namespace A106826

/-- `A010883(A005811(n)+1)` -/
def P6705786053229479373.Spec : Prop :=
  ∀ n, P6705786053229479373.a n = A106826 n

end A106826

/-! ## A106826.P16186054550107014940

`A010883(A136004(n)+1)`
-/

namespace A106826.P16186054550107014940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010883 (A136004 n + 1).toNat

end

end A106826.P16186054550107014940

namespace A106826

/-- `A010883(A136004(n)+1)` -/
def P16186054550107014940.Spec : Prop :=
  ∀ n, P16186054550107014940.a n = A106826 n

end A106826

/-! ## A106826.P16270316121748359880

`A121997(A005811(n)+16)`
-/

namespace A106826.P16270316121748359880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121997 (A005811 n + 16).toNat

end

end A106826.P16270316121748359880

namespace A106826

/-- `A121997(A005811(n)+16)` -/
def P16270316121748359880.Spec : Prop :=
  ∀ n, P16270316121748359880.a n = A106826 n

end A106826

/-! ## A106826.P2773717019404427093

`A010883(a(A035327(n)))` with `a(0)=2`
-/

namespace A106826.P2773717019404427093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A010883 (a (A035327 n).toNat).toNat

end

end A106826.P2773717019404427093

namespace A106826

/-- `A010883(a(A035327(n)))` -/
def P2773717019404427093.Spec : Prop :=
  ∀ n, P2773717019404427093.a n = A106826 n

end A106826

/-! ## A106826.P6372667596774030250

`A049563(a(A035327(n)))` with `a(0)=2`
-/

namespace A106826.P6372667596774030250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A049563 (a (A035327 n).toNat).toNat

end

end A106826.P6372667596774030250

namespace A106826

/-- `A049563(a(A035327(n)))` -/
def P6372667596774030250.Spec : Prop :=
  ∀ n, P6372667596774030250.a n = A106826 n

end A106826

/-! ## A106826.P3599849296410171115

`A110630(a(A035327(n)))` with `a(0)=2`
-/

namespace A106826.P3599849296410171115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A110630 (a (A035327 n).toNat).toNat

end

end A106826.P3599849296410171115

namespace A106826

/-- `A110630(a(A035327(n)))` -/
def P3599849296410171115.Spec : Prop :=
  ∀ n, P3599849296410171115.a n = A106826 n

end A106826

/-! ## A106826.P16694782984388390829

`A088643(or(12, A005811(n)))`
-/

namespace A106826.P16694782984388390829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088643 (Int.lor 12 (A005811 n)).toNat

end

end A106826.P16694782984388390829

namespace A106826

/-- `A088643(or(12, A005811(n)))` -/
def P16694782984388390829.Spec : Prop :=
  ∀ n, P16694782984388390829.a n = A106826 n

end A106826

/-! ## A106826.P16554509297555208701

`A020652(or(12, A088748(n)))`
-/

namespace A106826.P16554509297555208701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (Int.lor 12 (A088748 n)).toNat

end

end A106826.P16554509297555208701

namespace A106826

/-- `A020652(or(12, A088748(n)))` -/
def P16554509297555208701.Spec : Prop :=
  ∀ n, P16554509297555208701.a n = A106826 n

end A106826

/-! ## A106826.P12970748566130924407

`A040163(or(12, A088748(n)))`
-/

namespace A106826.P12970748566130924407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040163 (Int.lor 12 (A088748 n)).toNat

end

end A106826.P12970748566130924407

namespace A106826

/-- `A040163(or(12, A088748(n)))` -/
def P12970748566130924407.Spec : Prop :=
  ∀ n, P12970748566130924407.a n = A106826 n

end A106826

/-! ## A106826.P11550705522541698575

`A023132(xor(17, A005811(n)))`
-/

namespace A106826.P11550705522541698575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023132 (Int.xor 17 (A005811 n)).toNat

end

end A106826.P11550705522541698575

namespace A106826

/-- `A023132(xor(17, A005811(n)))` -/
def P11550705522541698575.Spec : Prop :=
  ∀ n, P11550705522541698575.a n = A106826 n

end A106826

/-! ## A106826.P5755210422567916571

`A010873(A005811(n)+1)+1`
-/

namespace A106826.P5755210422567916571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A005811 n + 1).toNat + 1

end

end A106826.P5755210422567916571

namespace A106826

/-- `A010873(A005811(n)+1)+1` -/
def P5755210422567916571.Spec : Prop :=
  ∀ n, P5755210422567916571.a n = A106826 n

end A106826

/-! ## A106826.P16546587297556640251

`A010873(A136004(n)+1)+1`
-/

namespace A106826.P16546587297556640251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A136004 n + 1).toNat + 1

end

end A106826.P16546587297556640251

namespace A106826

/-- `A010873(A136004(n)+1)+1` -/
def P16546587297556640251.Spec : Prop :=
  ∀ n, P16546587297556640251.a n = A106826 n

end A106826

/-! ## A106826.P5202274541594820295

`A189480(A088748(n)+1)+1`
-/

namespace A106826.P5202274541594820295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189480 (A088748 n + 1).toNat + 1

end

end A106826.P5202274541594820295

namespace A106826

/-- `A189480(A088748(n)+1)+1` -/
def P5202274541594820295.Spec : Prop :=
  ∀ n, P5202274541594820295.a n = A106826 n

end A106826

/-!
# A106827: Numerators in expansion of (1 - x)^(-1/x) / e.

The programs for A106827, there is no canonical definition to state claims against.
-/

/-! ## A106827.P14579125738286416840

`A055505(n)*(2*n)!/A055535(n)`
-/

namespace A106827.P14579125738286416840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055505 n * (Nat.factorial (2 * n) : ℤ) : ℚ) / (A055535 n : ℚ)

end

end A106827.P14579125738286416840

/-!
# A106828: Triangle T(n,k) read by rows: associated Stirling numbers of first kind (n >= 0 and 0 <= k <= floor(n/2)).

The programs for A106828, there is no canonical definition to state claims against.
-/

/-! ## A106828.P446698263942165762

`A269940(A091018(n))`
-/

namespace A106828.P446698263942165762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (A091018 n).toNat

end

end A106828.P446698263942165762

/-! ## A106828.P17443820156060756588

`A269940(A056536(n+1)-1)`
-/

namespace A106828.P17443820156060756588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (A056536 (n + 1) - 1).toNat

end

end A106828.P17443820156060756588

/-! ## A106828.P4649365566380232096

`A269940(A023443(A056536(n+1)))`
-/

namespace A106828.P4649365566380232096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269940 (A023443 (A056536 (n + 1)).toNat).toNat

end

end A106828.P4649365566380232096

/-! ## A106828.P701258177348376353

`A349479(n)/A059268(A091018(n))`
-/

namespace A106828.P701258177348376353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349479 n : ℚ) / (A059268 (A091018 n).toNat : ℚ)

end

end A106828.P701258177348376353

/-!
# A106829: Given n shoelaces, each with two aglets; sequence gives number of aglets that must be picked up to guarantee that the probability that no shoelace is left behind is > 1/2.

The programs for A106829, there is no canonical definition to state claims against.
-/

/-! ## A106829.P1033889780755730592

`∑[2-char[floor(6*(n/4)²)]]`
-/

namespace A106829.P1033889780755730592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 * ((n : ℚ) / 4) ^ 2⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106829.P1033889780755730592

/-! ## A106829.P798797769304872458

`comp[comp[A033436(n)]+n]+1`
-/

namespace A106829.P798797769304872458
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033436 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A106829.P798797769304872458

/-! ## A106829.P17679976970751577563

`round(∑[∑[1/A029452(n+1)]])`
-/

namespace A106829.P17679976970751577563
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A029452 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106829.P17679976970751577563

/-! ## A106829.P106129481971237136

`comp[comp[∑[A057353(n)]]+n]+1`
-/

namespace A106829.P106129481971237136
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A106829.P106129481971237136

/-! ## A106829.P7270539937626653434

`comp[comp[A337125(∑[n+1])]+n]`
-/

namespace A106829.P7270539937626653434
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337125 (∑ j ∈ Finset.range (n + 1), f3 j)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106829.P7270539937626653434

/-! ## A106829.P4559614951974970651

`Δ[n²]-A227568(Δ[n²])+1`
-/

namespace A106829.P4559614951974970651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A227568 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

end

end A106829.P4559614951974970651

/-! ## A106829.P12494801401064207031

`2*n+3-A101776(comp[4*n])`
-/

namespace A106829.P12494801401064207031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A101776 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A106829.P12494801401064207031

/-! ## A106829.P14955657491831863676

`comp[comp[floor(A077043(n)/2)]+n]+1`
-/

namespace A106829.P14955657491831863676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077043 n : ℚ) / 2⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A106829.P14955657491831863676

/-! ## A106829.P15690583780984270034

`comp[comp[∑[A156351(n+1)]+n]+n]`
-/

namespace A106829.P15690583780984270034
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106829.P15690583780984270034

/-! ## A106829.P1722441748462039184

`comp[comp[∑[n-(A100196(n)+1)]]+n]`
-/

namespace A106829.P1722441748462039184
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A100196 n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106829.P1722441748462039184

/-!
# A106830: Numerator of Sum_{ primes p <= n} 1/p.

The programs for A106830, there is no canonical definition to state claims against.
-/

/-! ## A106830.P3377270276742315136

`A024451(A000720(n+1))`
-/

namespace A106830.P3377270276742315136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (A000720 (n + 1)).toNat

end

end A106830.P3377270276742315136

/-! ## A106830.P14971859025401385143

`A373842(A066169(n+1))`
-/

namespace A106830.P14971859025401385143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (A066169 (n + 1)).toNat

end

end A106830.P14971859025401385143

/-! ## A106830.P4346410638901084575

`A373842(A151800(n+1))`
-/

namespace A106830.P4346410638901084575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (A151800 (n + 1)).toNat

end

end A106830.P4346410638901084575

/-! ## A106830.P10800350909309360125

`A373842(A159477(n+2))`
-/

namespace A106830.P10800350909309360125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373842 (A159477 (n + 2)).toNat

end

end A106830.P10800350909309360125

/-! ## A106830.P9285352148512732524

`A024451(∑[A010051(n+1)])`
-/

namespace A106830.P9285352148512732524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106830.P9285352148512732524

/-! ## A106830.P11180259166147823264

`A024451(A036234(n+1)-1)`
-/

namespace A106830.P11180259166147823264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (A036234 (n + 1) - 1).toNat

end

end A106830.P11180259166147823264

/-! ## A106830.P10789623221689018192

`A024451(∑[char[A006093(n+1)]])`
-/

namespace A106830.P10789623221689018192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106830.P10789623221689018192

/-! ## A106830.P13680022105601113740

`A024451(1-A062298(n+1)+n)`
-/

namespace A106830.P13680022105601113740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (1 - A062298 (n + 1) + (n : ℤ)).toNat

end

end A106830.P13680022105601113740

/-!
# A106831: Define a triangle in which the entries are of the form +-1/(b!c!d!e!...), where the order of the factorials is important; read the triangle by rows and record and expand the denominators.

The programs for A106831, the canonical program `A106831.P17287596638849734060` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106831 has offset 0).

The definition of A106831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106831.P17287596638849734060

`(val(n+1, 2)+2)*a(A065033(n)-1)` with `a(0)=2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106831

/-- `(val(n+1, 2)+2)*a(A065033(n)-1)` -/
def P17287596638849734060.Spec : Prop :=
  ∀ n, (P17287596638849734060.a n : ℤ) = A106831 n

theorem P17287596638849734060.correct : P17287596638849734060.Spec := by
  intro n
  simp only [A106831]

end A106831

/-! ## A106831.P15249097627622813879

`(A001511(n+1)+1)*a(floor((n-1)/2))` with `a(0)=2`
-/

namespace A106831.P15249097627622813879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (A001511 (n + 1) + 1) * a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat

end

end A106831.P15249097627622813879

namespace A106831

/-- `(A001511(n+1)+1)*a(floor((n-1)/2))` -/
def P15249097627622813879.Spec : Prop :=
  ∀ n, P15249097627622813879.a n = A106831 n

end A106831

/-! ## A106831.P14873108982355663783

`A323505(A054429(n+1))`
-/

namespace A106831.P14873108982355663783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (A054429 (n + 1)).toNat

end

end A106831.P14873108982355663783

namespace A106831

/-- `A323505(A054429(n+1))` -/
def P14873108982355663783.Spec : Prop :=
  ∀ n, P14873108982355663783.a n = A106831 n

end A106831

/-! ## A106831.P12282914430602721049

`A323505(A059894(n+1))`
-/

namespace A106831.P12282914430602721049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323505 (A059894 (n + 1)).toNat

end

end A106831.P12282914430602721049

namespace A106831

/-- `A323505(A059894(n+1))` -/
def P12282914430602721049.Spec : Prop :=
  ∀ n, P12282914430602721049.a n = A106831 n

end A106831

/-! ## A106831.P14718842198569480394

`a(A140106(n+1))*A085058(n)` with `a(0)=2`
-/

namespace A106831.P14718842198569480394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (A140106 (n + 1)).toNat * A085058 n

end

end A106831.P14718842198569480394

namespace A106831

/-- `a(A140106(n+1))*A085058(n)` -/
def P14718842198569480394.Spec : Prop :=
  ∀ n, P14718842198569480394.a n = A106831 n

end A106831

/-! ## A106831.P14312672576469370301

`A323508(A253563(n+1))`
-/

namespace A106831.P14312672576469370301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A253563 (n + 1)).toNat

end

end A106831.P14312672576469370301

namespace A106831

/-- `A323508(A253563(n+1))` -/
def P14312672576469370301.Spec : Prop :=
  ∀ n, P14312672576469370301.a n = A106831 n

end A106831

/-! ## A106831.P15177922015774394112

`A323508(A366275(n+1))`
-/

namespace A106831.P15177922015774394112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A366275 (n + 1)).toNat

end

end A106831.P15177922015774394112

namespace A106831

/-- `A323508(A366275(n+1))` -/
def P15177922015774394112.Spec : Prop :=
  ∀ n, P15177922015774394112.a n = A106831 n

end A106831

/-! ## A106831.P10013742030874910275

`A323508(A163511(n+1))`
-/

namespace A106831.P10013742030874910275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323508 (A163511 (n + 1)).toNat

end

end A106831.P10013742030874910275

namespace A106831

/-- `A323508(A163511(n+1))` -/
def P10013742030874910275.Spec : Prop :=
  ∀ n, P10013742030874910275.a n = A106831 n

end A106831

/-!
# A106832: 4*n-2 and 6*n alternatively.

The programs for A106832, the canonical program `A106832.P9330382667277418725` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106832 has offset 1).

The definition of A106832 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106832.P9330382667277418725

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=6, a(2)=6, a(3)=12`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106832

/-- `2*a(n-2)-a(n-4)` -/
def P9330382667277418725.Spec : Prop :=
  ∀ n, P9330382667277418725.a n = A106832 (n + 1)

theorem P9330382667277418725.correct : P9330382667277418725.Spec := by
  intro n
  simp only [A106832, Nat.add_sub_cancel]

end A106832

/-! ## A106832.P18434948138379119446

`1/2*((-1)^(n+1)+5)*(n+1)`
-/

namespace A106832.P18434948138379119446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (((-1) ^ (n + 1) + 5) * (n + 1 : ℤ) : ℚ)

end

end A106832.P18434948138379119446

namespace A106832

/-- `1/2*((-1)^(n+1)+5)*(n+1)` -/
def P18434948138379119446.Spec : Prop :=
  ∀ n, P18434948138379119446.a n = (A106832 (n + 1) : ℚ)

theorem P18434948138379119446.correct : P18434948138379119446.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A106832, Nat.add_sub_cancel, A106832.P18434948138379119446.a, A106832.P9330382667277418725.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A106832, Nat.add_sub_cancel, A106832.P18434948138379119446.a, A106832.P9330382667277418725.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A106832

/-! ## A106832.P284486661001951501

`∑[4-Δ[lcm(2, n)]]`
-/

namespace A106832.P284486661001951501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106832.P284486661001951501

namespace A106832

/-- `∑[4-Δ[lcm(2, n)]]` -/
def P284486661001951501.Spec : Prop :=
  ∀ n, P284486661001951501.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P4882873806659533182

`∑[12*n]/a(n-1)` with `a(0)=2`
-/

namespace A106832.P4882873806659533182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A106832.P4882873806659533182

namespace A106832

/-- `∑[12*n]/a(n-1)` -/
def P4882873806659533182.Spec : Prop :=
  ∀ n, P4882873806659533182.a n = (A106832 (n + 1) : ℚ)

end A106832

/-! ## A106832.P9755975799081226222

`∑[Δ[gcd(2*n, n²)]+1]`
-/

namespace A106832.P9755975799081226222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106832.P9755975799081226222

namespace A106832

/-- `∑[Δ[gcd(2*n, n²)]+1]` -/
def P9755975799081226222.Spec : Prop :=
  ∀ n, P9755975799081226222.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P16684966655019464306

`∑[∑[ogf((2+6x+2x^2)/(1+2x+x^2))]]`
-/

namespace A106832.P16684966655019464306
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 2] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106832.P16684966655019464306

namespace A106832

/-- `∑[∑[ogf((2+6x+2x^2)/(1+2x+x^2))]]` -/
def P16684966655019464306.Spec : Prop :=
  ∀ n, P16684966655019464306.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P4893302374958381852

`ogf((2+6x+2x^2)/(1-2x^2+x^4))`
-/

namespace A106832.P4893302374958381852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, 2] [1, 0, -2, 0, 1] n

end

end A106832.P4893302374958381852

namespace A106832

/-- `ogf((2+6x+2x^2)/(1-2x^2+x^4))` -/
def P4893302374958381852.Spec : Prop :=
  ∀ n, P4893302374958381852.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P6678423277814445018

`∑{d}[n+1, (n+1)*C(2, #)]`
-/

namespace A106832.P6678423277814445018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * Nat.choose 2 d

end

end A106832.P6678423277814445018

namespace A106832

/-- `∑{d}[n+1, (n+1)*C(2, #)]` -/
def P6678423277814445018.Spec : Prop :=
  ∀ n, (P6678423277814445018.a n : ℤ) = A106832 (n + 1)

end A106832

/-! ## A106832.P5614602622247164024

`Δ[n²]+C(n+2, and(1, n))`
-/

namespace A106832.P5614602622247164024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (n + 2) (Nat.land 1 n) : ℤ)

end

end A106832.P5614602622247164024

namespace A106832

/-- `Δ[n²]+C(n+2, and(1, n))` -/
def P5614602622247164024.Spec : Prop :=
  ∀ n, P5614602622247164024.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P4573331827264857641

`abs((n+1)*(or(1, n)-(n+3)))`
-/

namespace A106832.P4573331827264857641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.lor 1 n : ℤ) - (n + 3 : ℤ))|

end

end A106832.P4573331827264857641

namespace A106832

/-- `abs((n+1)*(or(1, n)-(n+3)))` -/
def P4573331827264857641.Spec : Prop :=
  ∀ n, P4573331827264857641.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P9921442981537794858

`∑{d}[n+1, (n+1)*floor(2/#)]`
-/

namespace A106832.P9921442981537794858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * ⌊2 / (d : ℚ)⌋

end

end A106832.P9921442981537794858

namespace A106832

/-- `∑{d}[n+1, (n+1)*floor(2/#)]` -/
def P9921442981537794858.Spec : Prop :=
  ∀ n, P9921442981537794858.a n = A106832 (n + 1)

end A106832

/-! ## A106832.P10096432063652696991

`∑{p}[1-a(n-1), #*(n+1)]` with `a(0)=4`
-/

namespace A106832.P10096432063652696991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * (n + 1)

end

end A106832.P10096432063652696991

namespace A106832

/-- `∑{p}[1-a(n-1), #*(n+1)]` -/
def P10096432063652696991.Spec : Prop :=
  ∀ n, (P10096432063652696991.a n : ℤ) = A106832 (n + 1)

end A106832

/-! ## A106832.P13969186787951394476

`∏{p}[1-a(n-1), #*(n+1)]` with `a(0)=4`
-/

namespace A106832.P13969186787951394476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p * (n + 1)

end

end A106832.P13969186787951394476

namespace A106832

/-- `∏{p}[1-a(n-1), #*(n+1)]` -/
def P13969186787951394476.Spec : Prop :=
  ∀ n, (P13969186787951394476.a n : ℤ) = A106832 (n + 1)

end A106832

/-! ## A106832.P17626949152544169547

`∑{digits}[5-a(n-1), #*(n+1)]` with `a(0)=2`
-/

namespace A106832.P17626949152544169547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * (n + 1)).sum

end

end A106832.P17626949152544169547

namespace A106832

/-- `∑{digits}[5-a(n-1), #*(n+1)]` -/
def P17626949152544169547.Spec : Prop :=
  ∀ n, (P17626949152544169547.a n : ℤ) = A106832 (n + 1)

end A106832

/-! ## A106832.P12071752472514855622

`∏{digits}[5-a(n-1), #*(n+1)]` with `a(0)=2`
-/

namespace A106832.P12071752472514855622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x * (n + 1)).prod

end

end A106832.P12071752472514855622

namespace A106832

/-- `∏{digits}[5-a(n-1), #*(n+1)]` -/
def P12071752472514855622.Spec : Prop :=
  ∀ n, (P12071752472514855622.a n : ℤ) = A106832 (n + 1)

end A106832

/-! ## A106832.P15668988321554387372

`gcd(1-n², (n+1)²)+n+1`
-/

namespace A106832.P15668988321554387372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (n ^ 2 : ℤ)) ((n + 1) ^ 2 : ℤ) + (n + 1)

end

end A106832.P15668988321554387372

namespace A106832

/-- `gcd(1-n², (n+1)²)+n+1` -/
def P15668988321554387372.Spec : Prop :=
  ∀ n, (P15668988321554387372.a n : ℤ) = A106832 (n + 1)

end A106832

/-! ## A106832.P15867663318528603373

`4*(n+1)-A109043(n+1)`
-/

namespace A106832.P15867663318528603373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A109043 (n + 1)

end

end A106832.P15867663318528603373

namespace A106832

/-- `4*(n+1)-A109043(n+1)` -/
def P15867663318528603373.Spec : Prop :=
  ∀ n, P15867663318528603373.a n = A106832 (n + 1)

end A106832

/-!
# A106833: 3n and 2n, alternating.

The programs for A106833, the canonical program `A106833.P4992866352199161158` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106833 has offset 1).

The definition of A106833 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106833.P3730178682961915375

`(n+1)*(2+(n+1)%2)`
-/

namespace A106833.P3730178682961915375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 + (n + 1) % 2)

end

end A106833.P3730178682961915375

namespace A106833

/-- `(n+1)*(2+(n+1)%2)` -/
def P3730178682961915375.Spec : Prop :=
  ∀ n, (P3730178682961915375.a n : ℤ) = A106833 (n + 1)

end A106833

/-! ## A106833.P16688012977473273171

`(n+1)*(5-(-1)^(n+1))/2`
-/

namespace A106833.P16688012977473273171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((5 - (-1) ^ (n + 1) : ℚ) / 2)

end

end A106833.P16688012977473273171

namespace A106833

/-- `(n+1)*(5-(-1)^(n+1))/2` -/
def P16688012977473273171.Spec : Prop :=
  ∀ n, P16688012977473273171.a n = (A106833 (n + 1) : ℚ)

theorem P16688012977473273171.correct : P16688012977473273171.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A106833, Nat.add_sub_cancel, A106833.P16688012977473273171.a, A106833.P4992866352199161158.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A106833, Nat.add_sub_cancel, A106833.P16688012977473273171.a, A106833.P4992866352199161158.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A106833

/-! ## A106833.P4992866352199161158

`2*a(n-2)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=9, a(3)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106833

/-- `2*a(n-2)-a(n-4)` -/
def P4992866352199161158.Spec : Prop :=
  ∀ n, P4992866352199161158.a n = A106833 (n + 1)

theorem P4992866352199161158.correct : P4992866352199161158.Spec := by
  intro n
  simp only [A106833, Nat.add_sub_cancel]

end A106833

/-! ## A106833.P13246152901114339079

`∑[Δ[lcm(2, n)]+1]`
-/

namespace A106833.P13246152901114339079
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106833.P13246152901114339079

namespace A106833

/-- `∑[Δ[lcm(2, n)]+1]` -/
def P13246152901114339079.Spec : Prop :=
  ∀ n, P13246152901114339079.a n = A106833 (n + 1)

end A106833

/-! ## A106833.P6181553522685369652

`∑[Δ[n*and(1, n)]+2]`
-/

namespace A106833.P6181553522685369652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106833.P6181553522685369652

namespace A106833

/-- `∑[Δ[n*and(1, n)]+2]` -/
def P6181553522685369652.Spec : Prop :=
  ∀ n, P6181553522685369652.a n = A106833 (n + 1)

end A106833

/-! ## A106833.P14285892160634126570

`xor(1, a(n-2)+5)` with `a(0)=3, a(1)=4`
-/

namespace A106833.P14285892160634126570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4] fun n a =>
  Nat.xor 1 (a (n - 2) + 5)

end

end A106833.P14285892160634126570

namespace A106833

/-- `xor(1, a(n-2)+5)` -/
def P14285892160634126570.Spec : Prop :=
  ∀ n, (P14285892160634126570.a n : ℤ) = A106833 (n + 1)

end A106833

/-! ## A106833.P16336619332087990843

`∑[12*n]/a(n-1)` with `a(0)=3`
-/

namespace A106833.P16336619332087990843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A106833.P16336619332087990843

namespace A106833

/-- `∑[12*n]/a(n-1)` -/
def P16336619332087990843.Spec : Prop :=
  ∀ n, P16336619332087990843.a n = (A106833 (n + 1) : ℚ)

end A106833

/-! ## A106833.P4827584092546866899

`∑[∑[ogf((3+4x+3x^2)/(1+2x+x^2))]]`
-/

namespace A106833.P4827584092546866899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 3] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106833.P4827584092546866899

namespace A106833

/-- `∑[∑[ogf((3+4x+3x^2)/(1+2x+x^2))]]` -/
def P4827584092546866899.Spec : Prop :=
  ∀ n, P4827584092546866899.a n = A106833 (n + 1)

end A106833

/-! ## A106833.P12332071621071060475

`ogf((3+4x+3x^2)/(1-2x^2+x^4))`
-/

namespace A106833.P12332071621071060475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, 3] [1, 0, -2, 0, 1] n

end

end A106833.P12332071621071060475

namespace A106833

/-- `ogf((3+4x+3x^2)/(1-2x^2+x^4))` -/
def P12332071621071060475.Spec : Prop :=
  ∀ n, P12332071621071060475.a n = A106833 (n + 1)

end A106833

/-! ## A106833.P13260582617405924830

`5-xor(1, -a(n-2))` with `a(0)=3, a(1)=4`
-/

namespace A106833.P13260582617405924830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  5 - Int.xor 1 (-a (n - 2))

end

end A106833.P13260582617405924830

namespace A106833

/-- `5-xor(1, -a(n-2))` -/
def P13260582617405924830.Spec : Prop :=
  ∀ n, P13260582617405924830.a n = A106833 (n + 1)

end A106833

/-! ## A106833.P6159309218897501557

`∑{d}[n+2, (n+1)*C(2, #)]`
-/

namespace A106833.P6159309218897501557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) * Nat.choose 2 d

end

end A106833.P6159309218897501557

namespace A106833

/-- `∑{d}[n+2, (n+1)*C(2, #)]` -/
def P6159309218897501557.Spec : Prop :=
  ∀ n, (P6159309218897501557.a n : ℤ) = A106833 (n + 1)

end A106833

/-! ## A106833.P11891580066634585812

`Δ[n²]+gcd(n+2, and(1, n))`
-/

namespace A106833.P11891580066634585812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.gcd (n + 2) (Nat.land 1 n) : ℤ)

end

end A106833.P11891580066634585812

namespace A106833

/-- `Δ[n²]+gcd(n+2, and(1, n))` -/
def P11891580066634585812.Spec : Prop :=
  ∀ n, P11891580066634585812.a n = A106833 (n + 1)

end A106833

/-! ## A106833.P15473437249565140732

`lcm(n+1, root(2, 2)²)+n+1`
-/

namespace A106833.P15473437249565140732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (((2 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)) + (n + 1)

end

end A106833.P15473437249565140732

namespace A106833

/-- `lcm(n+1, root(2, 2)²)+n+1` -/
def P15473437249565140732.Spec : Prop :=
  ∀ n, (P15473437249565140732.a n : ℤ) = A106833 (n + 1)

end A106833

/-! ## A106833.P10291555208224648810

`abs((n+1)*(or(1, n+2)-n))`
-/

namespace A106833.P10291555208224648810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.lor 1 (n + 2) : ℤ) - (n : ℤ))|

end

end A106833.P10291555208224648810

namespace A106833

/-- `abs((n+1)*(or(1, n+2)-n))` -/
def P10291555208224648810.Spec : Prop :=
  ∀ n, P10291555208224648810.a n = A106833 (n + 1)

end A106833

/-!
# A106834: Triangle read by rows: T(n, m) = number of painted forests on labeled vertex set [n] with m trees. Also number of painted forests with exactly n - m edges.

The programs for A106834, there is no canonical definition to state claims against.
-/

/-! ## A106834.P13470290222425554713

`A002260(n+1)*A105599(n+1)`
-/

namespace A106834.P13470290222425554713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A105599 (n + 1)

end

end A106834.P13470290222425554713

/-! ## A106834.P3801337604670913478

`(A002262(n)+1)*A105599(n+1)`
-/

namespace A106834.P3801337604670913478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A105599 (n + 1)

end

end A106834.P3801337604670913478

/-! ## A106834.P7605707951087798000

`sqrt(A133819(n+1))*A105599(n+1)`
-/

namespace A106834.P7605707951087798000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A105599 (n + 1) : ℝ)

end

end A106834.P7605707951087798000

/-! ## A106834.P16300535708398620245

`A004736(A038722(n+1))*A105599(n+1)`
-/

namespace A106834.P16300535708398620245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A105599 (n + 1)

end

end A106834.P16300535708398620245

/-! ## A106834.P7714568362780601916

`A002260(n+1)*A138464(A038722(n+1))`
-/

namespace A106834.P7714568362780601916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A138464 (A038722 (n + 1)).toNat

end

end A106834.P7714568362780601916

/-!
# A106835: Expansion of 2*x^2*(-2+9*x+3*x^2)/((2*x^2+5*x-1)*(2*x^2-5*x+1)).

The programs for A106835, the canonical program `A106835.P6613477213207933916` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106835 has offset 1).

The definition of A106835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4x-18x^2-6x^3)/(1-10x+25x^2-4x^4))` (program `A106835.P6613477213207933916`, by `A106835.P6613477213207933916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106835.P6613477213207933916

`ogf((4x-18x^2-6x^3)/(1-10x+25x^2-4x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106835

/-- `ogf((4x-18x^2-6x^3)/(1-10x+25x^2-4x^4))` -/
def P6613477213207933916.Spec : Prop :=
  ∀ n, P6613477213207933916.a n = A106835 (n + 1)

theorem P6613477213207933916.correct : P6613477213207933916.Spec := by
  intro n
  simp only [A106835, Nat.add_sub_cancel]

end A106835

/-! ## A106835.P13283418468721742296

`10*a(n-1)-25*a(n-2)+4*a(n-4)` with `a(0)=0, a(1)=4, a(2)=22, a(3)=114`
-/

namespace A106835.P13283418468721742296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 22, 114] fun n a =>
  10 * a (n - 1) - 25 * a (n - 2) + 4 * a (n - 4)

end

end A106835.P13283418468721742296

namespace A106835

/-- `10*a(n-1)-25*a(n-2)+4*a(n-4)` -/
def P13283418468721742296.Spec : Prop :=
  ∀ n, P13283418468721742296.a n = A106835 (n + 1)

end A106835

/-!
# A106836: First differences of A060833 and (from a(2) onward) also of A091067 and A255068.

The programs for A106836, the canonical program `A106836.P17238804329404313382` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106836 has offset 1).

The definition of A106836 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106836.P12083997388695541306

`A255068(n)+2-A060833(n+1)`
-/

namespace A106836.P12083997388695541306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n + (2 - A060833 (n + 1))

end

end A106836.P12083997388695541306

namespace A106836

/-- `A255068(n)+2-A060833(n+1)` -/
def P12083997388695541306.Spec : Prop :=
  ∀ n, P12083997388695541306.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P17238804329404313382

`A091067(n+1)+1-A060833(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106836

/-- `A091067(n+1)+1-A060833(n+1)` -/
def P17238804329404313382.Spec : Prop :=
  ∀ n, P17238804329404313382.a n = A106836 (n + 1)

theorem P17238804329404313382.correct : P17238804329404313382.Spec := by
  intro n
  simp only [A106836, Nat.add_sub_cancel]

end A106836

/-! ## A106836.P15510842053019334163

`Δ[comp[and(n, n+1)+1+n]]`
-/

namespace A106836.P15510842053019334163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106836.P15510842053019334163

namespace A106836

/-- `Δ[comp[and(n, n+1)+1+n]]` -/
def P15510842053019334163.Spec : Prop :=
  ∀ n, P15510842053019334163.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P236261110915411406

`Δ[A060833(1+n)]`
-/

namespace A106836.P236261110915411406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060833 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106836.P236261110915411406

namespace A106836

/-- `Δ[A060833(1+n)]` -/
def P236261110915411406.Spec : Prop :=
  ∀ n, P236261110915411406.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P992885379846559707

`Δ[comp[A269361(n+1)]]`
-/

namespace A106836.P992885379846559707
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269361 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106836.P992885379846559707

namespace A106836

/-- `Δ[comp[A269361(n+1)]]` -/
def P992885379846559707.Spec : Prop :=
  ∀ n, P992885379846559707.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P1177124963239779115

`A060833(n+2)-A060833(n+1)`
-/

namespace A106836.P1177124963239779115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060833 (n + 2) - A060833 (n + 1)

end

end A106836.P1177124963239779115

namespace A106836

/-- `A060833(n+2)-A060833(n+1)` -/
def P1177124963239779115.Spec : Prop :=
  ∀ n, P1177124963239779115.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P14259262717641895883

`Δ[record[A322015(n)]]`
-/

namespace A106836.P14259262717641895883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106836.P14259262717641895883

namespace A106836

/-- `Δ[record[A322015(n)]]` -/
def P14259262717641895883.Spec : Prop :=
  ∀ n, P14259262717641895883.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P9547288984470160611

`Δ[lt[char[and(n, n+1)+1+n], 1]]`
-/

namespace A106836.P9547288984470160611
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f4 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106836.P9547288984470160611

namespace A106836

/-- `Δ[lt[char[and(n, n+1)+1+n], 1]]` -/
def P9547288984470160611.Spec : Prop :=
  ∀ n, P9547288984470160611.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P7893770543389834225

`Δ[lt[n*A204372(n), 1]]`
-/

namespace A106836.P7893770543389834225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A204372 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106836.P7893770543389834225

namespace A106836

/-- `Δ[lt[n*A204372(n), 1]]` -/
def P7893770543389834225.Spec : Prop :=
  ∀ n, P7893770543389834225.a n = A106836 (n + 1)

end A106836

/-! ## A106836.P12984684934846050079

`Δ[record[(n+1)*A014707(n)]]`
-/

namespace A106836.P12984684934846050079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014707 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106836.P12984684934846050079

namespace A106836

/-- `Δ[record[(n+1)*A014707(n)]]` -/
def P12984684934846050079.Spec : Prop :=
  ∀ n, P12984684934846050079.a n = A106836 (n + 1)

end A106836

/-!
# A106837: Numbers m such that both m and m+1 have odd part of the form 4*k+3.

The programs for A106837, the canonical program `A106837.P5121081005053058337` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106837 has offset 1).

The definition of A106837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106837.P5121081005053058337

`lt[Δ[or(n-3, 2*n)], 0]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106837

/-- `lt[Δ[or(n-3, 2*n)], 0]` -/
def P5121081005053058337.Spec : Prop :=
  ∀ n, (P5121081005053058337.a n : ℤ) = A106837 (n + 1)

theorem P5121081005053058337.correct : P5121081005053058337.Spec := by
  intro n
  simp only [A106837, Nat.add_sub_cancel]

end A106837

/-! ## A106837.P7333455599635126162

`lt[2, Δ[and(n-3, 2*n)]]`
-/

namespace A106837.P7333455599635126162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 3) (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106837.P7333455599635126162

namespace A106837

/-- `lt[2, Δ[and(n-3, 2*n)]]` -/
def P7333455599635126162.Spec : Prop :=
  ∀ n, (P7333455599635126162.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P14886614952718610394

`lt[n, A322017(n)]`
-/

namespace A106837.P14886614952718610394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322017 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106837.P14886614952718610394

namespace A106837

/-- `lt[n, A322017(n)]` -/
def P14886614952718610394.Spec : Prop :=
  ∀ n, (P14886614952718610394.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P15250941604069234538

`eq[1, Δ[n*A038189(n)]]`
-/

namespace A106837.P15250941604069234538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A038189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106837.P15250941604069234538

namespace A106837

/-- `eq[1, Δ[n*A038189(n)]]` -/
def P15250941604069234538.Spec : Prop :=
  ∀ n, (P15250941604069234538.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P11954378930017284239

`A292608(A255068(n))`
-/

namespace A106837.P11954378930017284239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292608 (A255068 n).toNat

end

end A106837.P11954378930017284239

namespace A106837

/-- `A292608(A255068(n))` -/
def P11954378930017284239.Spec : Prop :=
  ∀ n, P11954378930017284239.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P9922455326377562563

`A042964(A091067(n+1))`
-/

namespace A106837.P9922455326377562563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (A091067 (n + 1)).toNat

end

end A106837.P9922455326377562563

namespace A106837

/-- `A042964(A091067(n+1))` -/
def P9922455326377562563.Spec : Prop :=
  ∀ n, P9922455326377562563.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P4485279598524598318

`A090964(A246590(n+1))`
-/

namespace A106837.P4485279598524598318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090964 (A246590 (n + 1)).toNat

end

end A106837.P4485279598524598318

namespace A106837

/-- `A090964(A246590(n+1))` -/
def P4485279598524598318.Spec : Prop :=
  ∀ n, P4485279598524598318.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P15926010256631817080

`filter[A222409(n), A014707(#)]`
-/

namespace A106837.P15926010256631817080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A106837.P15926010256631817080

namespace A106837

/-- `filter[A222409(n), A014707(#)]` -/
def P15926010256631817080.Spec : Prop :=
  ∀ n, P15926010256631817080.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P9356852095509250303

`filter[A255068(n), A038189(#)]`
-/

namespace A106837.P9356852095509250303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A106837.P9356852095509250303

namespace A106837

/-- `filter[A255068(n), A038189(#)]` -/
def P9356852095509250303.Spec : Prop :=
  ∀ n, P9356852095509250303.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P4587899945009070318

`filter[A322015(n), A014707(#)]`
-/

namespace A106837.P4587899945009070318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014707 (f1 j).toNat = 1) n)

end

end A106837.P4587899945009070318

namespace A106837

/-- `filter[A322015(n), A014707(#)]` -/
def P4587899945009070318.Spec : Prop :=
  ∀ n, P4587899945009070318.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P7685666653266619679

`filter[A255068(n), A089013(#)]`
-/

namespace A106837.P7685666653266619679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A106837.P7685666653266619679

namespace A106837

/-- `filter[A255068(n), A089013(#)]` -/
def P7685666653266619679.Spec : Prop :=
  ∀ n, P7685666653266619679.a n = A106837 (n + 1)

end A106837

/-! ## A106837.P17549769858337215562

`eq[A014710(n), A038189(n)]`
-/

namespace A106837.P17549769858337215562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P17549769858337215562

namespace A106837

/-- `eq[A014710(n), A038189(n)]` -/
def P17549769858337215562.Spec : Prop :=
  ∀ n, (P17549769858337215562.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P10578828389304407060

`eq[A014710(n), A089013(n)]`
-/

namespace A106837.P10578828389304407060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P10578828389304407060

namespace A106837

/-- `eq[A014710(n), A089013(n)]` -/
def P10578828389304407060.Spec : Prop :=
  ∀ n, (P10578828389304407060.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P10760553233287044241

`eq[A014391(n), A092910(n)]`
-/

namespace A106837.P10760553233287044241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P10760553233287044241

namespace A106837

/-- `eq[A014391(n), A092910(n)]` -/
def P10760553233287044241.Spec : Prop :=
  ∀ n, (P10760553233287044241.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P17428002473692587075

`eq[A040003(n), A092910(n)]`
-/

namespace A106837.P17428002473692587075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040003 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P17428002473692587075

namespace A106837

/-- `eq[A040003(n), A092910(n)]` -/
def P17428002473692587075.Spec : Prop :=
  ∀ n, (P17428002473692587075.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P5888578627027646772

`eq[A040142(n), A092910(n)]`
-/

namespace A106837.P5888578627027646772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040142 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P5888578627027646772

namespace A106837

/-- `eq[A040142(n), A092910(n)]` -/
def P5888578627027646772.Spec : Prop :=
  ∀ n, (P5888578627027646772.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P6930752468177019978

`eq[A040481(n), A092910(n)]`
-/

namespace A106837.P6930752468177019978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040481 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P6930752468177019978

namespace A106837

/-- `eq[A040481(n), A092910(n)]` -/
def P6930752468177019978.Spec : Prop :=
  ∀ n, (P6930752468177019978.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P6902404567148145980

`eq[A061393(n), A092910(n)]`
-/

namespace A106837.P6902404567148145980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P6902404567148145980

namespace A106837

/-- `eq[A061393(n), A092910(n)]` -/
def P6902404567148145980.Spec : Prop :=
  ∀ n, (P6902404567148145980.a n : ℤ) = A106837 (n + 1)

end A106837

/-! ## A106837.P12534453785722551186

`eq[A092910(n), A105397(n)]`
-/

namespace A106837.P12534453785722551186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106837.P12534453785722551186

namespace A106837

/-- `eq[A092910(n), A105397(n)]` -/
def P12534453785722551186.Spec : Prop :=
  ∀ n, (P12534453785722551186.a n : ℤ) = A106837 (n + 1)

end A106837

/-!
# A106838: Numbers m such that m, m+1 and m+2 have odd part of the form 4*k+3.

The programs for A106838, the canonical program `A106838.P13945628720281591576` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106838 has offset 1).

The definition of A106838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106838.P13945628720281591576

`8*A091067(n+1)-2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106838

/-- `8*A091067(n+1)-2` -/
def P13945628720281591576.Spec : Prop :=
  ∀ n, P13945628720281591576.a n = A106838 (n + 1)

theorem P13945628720281591576.correct : P13945628720281591576.Spec := by
  intro n
  simp only [A106838, Nat.add_sub_cancel]

end A106838

/-! ## A106838.P9502466069017982644

`4*A246590(n+1)-2`
-/

namespace A106838.P9502466069017982644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A246590 (n + 1) - 2

end

end A106838.P9502466069017982644

namespace A106838

/-- `4*A246590(n+1)-2` -/
def P9502466069017982644.Spec : Prop :=
  ∀ n, P9502466069017982644.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P1596234309214032270

`A317332(A091067(n+1))`
-/

namespace A106838.P1596234309214032270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (A091067 (n + 1)).toNat

end

end A106838.P1596234309214032270

namespace A106838

/-- `A317332(A091067(n+1))` -/
def P1596234309214032270.Spec : Prop :=
  ∀ n, P1596234309214032270.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P9384570760488358876

`A317332(A255068(n)+1)`
-/

namespace A106838.P9384570760488358876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (A255068 n + 1).toNat

end

end A106838.P9384570760488358876

namespace A106838

/-- `A317332(A255068(n)+1)` -/
def P9384570760488358876.Spec : Prop :=
  ∀ n, P9384570760488358876.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P10405586207290942677

`8*eq[1, A038189(n)]-2`
-/

namespace A106838.P10405586207290942677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A106838.P10405586207290942677

namespace A106838

/-- `8*eq[1, A038189(n)]-2` -/
def P10405586207290942677.Spec : Prop :=
  ∀ n, P10405586207290942677.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P14627912531265424421

`A017137(A255068(n))`
-/

namespace A106838.P14627912531265424421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (A255068 n).toNat

end

end A106838.P14627912531265424421

namespace A106838

/-- `A017137(A255068(n))` -/
def P14627912531265424421.Spec : Prop :=
  ∀ n, P14627912531265424421.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P10359155490900891822

`A267329(A060833(n+2))`
-/

namespace A106838.P10359155490900891822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267329 (A060833 (n + 2)).toNat

end

end A106838.P10359155490900891822

namespace A106838

/-- `A267329(A060833(n+2))` -/
def P10359155490900891822.Spec : Prop :=
  ∀ n, P10359155490900891822.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P6460899236885974269

`A017137(A091067(n+1)-1)`
-/

namespace A106838.P6460899236885974269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 (A091067 (n + 1) - 1).toNat

end

end A106838.P6460899236885974269

namespace A106838

/-- `A017137(A091067(n+1)-1)` -/
def P6460899236885974269.Spec : Prop :=
  ∀ n, P6460899236885974269.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P8709938550346885027

`A317332(eq[1, A014710(n)]+1)`
-/

namespace A106838.P8709938550346885027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106838.P8709938550346885027

namespace A106838

/-- `A317332(eq[1, A014710(n)]+1)` -/
def P8709938550346885027.Spec : Prop :=
  ∀ n, P8709938550346885027.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P13488701218845913244

`∩[A317332(n+1), A016825(n)]`
-/

namespace A106838.P13488701218845913244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P13488701218845913244

namespace A106838

/-- `∩[A317332(n+1), A016825(n)]` -/
def P13488701218845913244.Spec : Prop :=
  ∀ n, (P13488701218845913244.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P18307508699804920620

`∩[A317332(n+1), A017137(n)]`
-/

namespace A106838.P18307508699804920620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P18307508699804920620

namespace A106838

/-- `∩[A317332(n+1), A017137(n)]` -/
def P18307508699804920620.Spec : Prop :=
  ∀ n, (P18307508699804920620.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P15612404726939024696

`filter[A317332(n+1), A217586(#)]`
-/

namespace A106838.P15612404726939024696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A106838.P15612404726939024696

namespace A106838

/-- `filter[A317332(n+1), A217586(#)]` -/
def P15612404726939024696.Spec : Prop :=
  ∀ n, P15612404726939024696.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P9510223570227299339

`∩[A317332(n+1), A343501(n+1)]`
-/

namespace A106838.P9510223570227299339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P9510223570227299339

namespace A106838

/-- `∩[A317332(n+1), A343501(n+1)]` -/
def P9510223570227299339.Spec : Prop :=
  ∀ n, (P9510223570227299339.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P5289761306778984029

`∩[A062316(n+1), A317332(n+1)]`
-/

namespace A106838.P5289761306778984029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P5289761306778984029

namespace A106838

/-- `∩[A062316(n+1), A317332(n+1)]` -/
def P5289761306778984029.Spec : Prop :=
  ∀ n, (P5289761306778984029.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P5703848540005675195

`∩[A177712(n+1), A317332(n+1)]`
-/

namespace A106838.P5703848540005675195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P5703848540005675195

namespace A106838

/-- `∩[A177712(n+1), A317332(n+1)]` -/
def P5703848540005675195.Spec : Prop :=
  ∀ n, (P5703848540005675195.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P2206519946332144676

`4*eq[1, A004200(2*n)]-2`
-/

namespace A106838.P2206519946332144676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A106838.P2206519946332144676

namespace A106838

/-- `4*eq[1, A004200(2*n)]-2` -/
def P2206519946332144676.Spec : Prop :=
  ∀ n, P2206519946332144676.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P16644837934656252293

`A047398(A246590(n+1))`
-/

namespace A106838.P16644837934656252293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047398 (A246590 (n + 1)).toNat

end

end A106838.P16644837934656252293

namespace A106838

/-- `A047398(A246590(n+1))` -/
def P16644837934656252293.Spec : Prop :=
  ∀ n, P16644837934656252293.a n = A106838 (n + 1)

end A106838

/-! ## A106838.P784542565105147040

`∩[A317332(n+1), A113127(n)]`
-/

namespace A106838.P784542565105147040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P784542565105147040

namespace A106838

/-- `∩[A317332(n+1), A113127(n)]` -/
def P784542565105147040.Spec : Prop :=
  ∀ n, (P784542565105147040.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P14604522372341242488

`∩[A317332(n+1), A130824(n)]`
-/

namespace A106838.P14604522372341242488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P14604522372341242488

namespace A106838

/-- `∩[A317332(n+1), A130824(n)]` -/
def P14604522372341242488.Spec : Prop :=
  ∀ n, (P14604522372341242488.a n : ℤ) = A106838 (n + 1)

end A106838

/-! ## A106838.P12897166472655935777

`∩[A047398(n+1), A317332(n+1)]`
-/

namespace A106838.P12897166472655935777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106838.P12897166472655935777

namespace A106838

/-- `∩[A047398(n+1), A317332(n+1)]` -/
def P12897166472655935777.Spec : Prop :=
  ∀ n, (P12897166472655935777.a n : ℤ) = A106838 (n + 1)

end A106838

/-!
# A106839: Numbers congruent to 11 mod 16.

The programs for A106839, the canonical program `A106839.P12314086640576211792` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106839 has offset 0).

The definition of A106839 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106839.P12314086640576211792

`11+16*n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106839

/-- `11+16*n` -/
def P12314086640576211792.Spec : Prop :=
  ∀ n, (P12314086640576211792.a n : ℤ) = A106839 n

theorem P12314086640576211792.correct : P12314086640576211792.Spec := by
  intro n
  simp only [A106839]

end A106839

/-!
# A106840: Numbers m such that both m and m+1 have odd part of the form 4*k+1.

The programs for A106840, the canonical program `A106840.P13533182883868441775` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106840 has offset 1).

The definition of A106840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106840.P6295628783160989788

`comp[ceil(xor(n+1, n-1)/4)+n]`
-/

namespace A106840.P6295628783160989788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor (n + 1 : ℤ) ((n : ℤ) - 1) : ℚ) / 4⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A106840.P6295628783160989788

namespace A106840

/-- `comp[ceil(xor(n+1, n-1)/4)+n]` -/
def P6295628783160989788.Spec : Prop :=
  ∀ n, (P6295628783160989788.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P13533182883868441775

`lt[2, a(ceil(n/2)-1)-a(n-2)]` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106840

/-- `lt[2, a(ceil(n/2)-1)-a(n-2)]` -/
def P13533182883868441775.Spec : Prop :=
  ∀ n, (P13533182883868441775.a n : ℤ) = A106840 (n + 1)

theorem P13533182883868441775.correct : P13533182883868441775.Spec := by
  intro n
  simp only [A106840, Nat.add_sub_cancel]

end A106840

/-! ## A106840.P2717924850824568517

`lt[2, a(floor((n-1)/2))/a(n-2)]` with `a(0)=1, a(1)=3`
-/

namespace A106840.P2717924850824568517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  f2 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat / f2 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A106840.P2717924850824568517

namespace A106840

/-- `lt[2, a(floor((n-1)/2))/a(n-2)]` -/
def P2717924850824568517.Spec : Prop :=
  ∀ n, (P2717924850824568517.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P12034295757578423152

`eq[4, a(floor((n-1)/2))-a(n-2)]` with `a(0)=3, a(1)=4`
-/

namespace A106840.P12034295757578423152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f2 =>
  f2 ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat - f2 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106840.P12034295757578423152

namespace A106840

/-- `eq[4, a(floor((n-1)/2))-a(n-2)]` -/
def P12034295757578423152.Spec : Prop :=
  ∀ n, (P12034295757578423152.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P14730854915922356359

`A042948(A091072(n+1))`
-/

namespace A106840.P14730854915922356359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A091072 (n + 1)).toNat

end

end A106840.P14730854915922356359

namespace A106840

/-- `A042948(A091072(n+1))` -/
def P14730854915922356359.Spec : Prop :=
  ∀ n, P14730854915922356359.a n = A106840 (n + 1)

end A106840

/-! ## A106840.P15708483550065535422

`A047409(A091072(n+1)+1)`
-/

namespace A106840.P15708483550065535422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047409 (A091072 (n + 1) + 1).toNat

end

end A106840.P15708483550065535422

namespace A106840

/-- `A047409(A091072(n+1)+1)` -/
def P15708483550065535422.Spec : Prop :=
  ∀ n, P15708483550065535422.a n = A106840 (n + 1)

end A106840

/-! ## A106840.P5911774712286525576

`A047538(A091072(n+1)+1)`
-/

namespace A106840.P5911774712286525576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047538 (A091072 (n + 1) + 1).toNat

end

end A106840.P5911774712286525576

namespace A106840

/-- `A047538(A091072(n+1)+1)` -/
def P5911774712286525576.Spec : Prop :=
  ∀ n, P5911774712286525576.a n = A106840 (n + 1)

end A106840

/-! ## A106840.P11888327405801240998

`∩[A047460(n+1), A091072(n+1)]`
-/

namespace A106840.P11888327405801240998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P11888327405801240998

namespace A106840

/-- `∩[A047460(n+1), A091072(n+1)]` -/
def P11888327405801240998.Spec : Prop :=
  ∀ n, (P11888327405801240998.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P4577385175605116107

`∩[A047462(n+1), A091072(n+1)]`
-/

namespace A106840.P4577385175605116107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P4577385175605116107

namespace A106840

/-- `∩[A047462(n+1), A091072(n+1)]` -/
def P4577385175605116107.Spec : Prop :=
  ∀ n, (P4577385175605116107.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P9404514451333115537

`∩[A074231(n+1), A091072(n+1)]`
-/

namespace A106840.P9404514451333115537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P9404514451333115537

namespace A106840

/-- `∩[A074231(n+1), A091072(n+1)]` -/
def P9404514451333115537.Spec : Prop :=
  ∀ n, (P9404514451333115537.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P4435412238896866259

`eq[A089309(n), A317335(n+1)]`
-/

namespace A106840.P4435412238896866259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317335 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106840.P4435412238896866259

namespace A106840

/-- `eq[A089309(n), A317335(n+1)]` -/
def P4435412238896866259.Spec : Prop :=
  ∀ n, (P4435412238896866259.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P4300427447584786303

`record[A322016(A322016(n))+1]`
-/

namespace A106840.P4300427447584786303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322016 (A322016 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106840.P4300427447584786303

namespace A106840

/-- `record[A322016(A322016(n))+1]` -/
def P4300427447584786303.Spec : Prop :=
  ∀ n, P4300427447584786303.a n = A106840 (n + 1)

end A106840

/-! ## A106840.P4333232204400618489

`record[A322017(A322017(n))+1]`
-/

namespace A106840.P4333232204400618489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322017 (A322017 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106840.P4333232204400618489

namespace A106840

/-- `record[A322017(A322017(n))+1]` -/
def P4333232204400618489.Spec : Prop :=
  ∀ n, P4333232204400618489.a n = A106840 (n + 1)

end A106840

/-! ## A106840.P2726109697563095901

`∩[A047416(n+1), A091072(n+1)]`
-/

namespace A106840.P2726109697563095901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P2726109697563095901

namespace A106840

/-- `∩[A047416(n+1), A091072(n+1)]` -/
def P2726109697563095901.Spec : Prop :=
  ∀ n, (P2726109697563095901.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P2219754262761373823

`∩[A047509(n+1), A091072(n+1)]`
-/

namespace A106840.P2219754262761373823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P2219754262761373823

namespace A106840

/-- `∩[A047509(n+1), A091072(n+1)]` -/
def P2219754262761373823.Spec : Prop :=
  ∀ n, (P2219754262761373823.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P10891082635429847762

`∩[A047545(n+1), A091072(n+1)]`
-/

namespace A106840.P10891082635429847762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P10891082635429847762

namespace A106840

/-- `∩[A047545(n+1), A091072(n+1)]` -/
def P10891082635429847762.Spec : Prop :=
  ∀ n, (P10891082635429847762.a n : ℤ) = A106840 (n + 1)

end A106840

/-! ## A106840.P17167745131751165635

`∩[A047517(n+1), A091072(n+1)]`
-/

namespace A106840.P17167745131751165635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106840.P17167745131751165635

namespace A106840

/-- `∩[A047517(n+1), A091072(n+1)]` -/
def P17167745131751165635.Spec : Prop :=
  ∀ n, (P17167745131751165635.a n : ℤ) = A106840 (n + 1)

end A106840

/-!
# A106841: Numbers m such that m, m+1 and m+2 have odd part of the form 4*k+1.

The programs for A106841, the canonical program `A106841.P8849377993894975428` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106841 has offset 1).

The definition of A106841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106841.P17031548080969255494

`8*comp[and(n, -n)+n+n]`
-/

namespace A106841.P17031548080969255494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A106841.P17031548080969255494

namespace A106841

/-- `8*comp[and(n, -n)+n+n]` -/
def P17031548080969255494.Spec : Prop :=
  ∀ n, (P17031548080969255494.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P10214330776363069909

`8*comp[or(n, n-1)+n+1]`
-/

namespace A106841.P10214330776363069909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A106841.P10214330776363069909

namespace A106841

/-- `8*comp[or(n, n-1)+n+1]` -/
def P10214330776363069909.Spec : Prop :=
  ∀ n, (P10214330776363069909.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P8849377993894975428

`8*A091072(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106841

/-- `8*A091072(n+1)` -/
def P8849377993894975428.Spec : Prop :=
  ∀ n, P8849377993894975428.a n = A106841 (n + 1)

theorem P8849377993894975428.correct : P8849377993894975428.Spec := by
  intro n
  simp only [A106841, Nat.add_sub_cancel]

end A106841

/-! ## A106841.P8099979091138769989

`2*4*eq[1, A089309(n)]`
-/

namespace A106841.P8099979091138769989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106841.P8099979091138769989

namespace A106841

/-- `2*4*eq[1, A089309(n)]` -/
def P8099979091138769989.Spec : Prop :=
  ∀ n, (P8099979091138769989.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P10820440404323230984

`record[8*(n+1)/A014709(n)]`
-/

namespace A106841.P10820440404323230984
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 * (n + 1) : ℚ) / (A014709 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106841.P10820440404323230984

namespace A106841

/-- `record[8*(n+1)/A014709(n)]` -/
def P10820440404323230984.Spec : Prop :=
  ∀ n, P10820440404323230984.a n = (A106841 (n + 1) : ℚ)

end A106841

/-! ## A106841.P3547146724517304824

`A004771(eq[1, A034947(n+1)])+1`
-/

namespace A106841.P3547146724517304824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004771 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A106841.P3547146724517304824

namespace A106841

/-- `A004771(eq[1, A034947(n+1)])+1` -/
def P3547146724517304824.Spec : Prop :=
  ∀ n, P3547146724517304824.a n = A106841 (n + 1)

end A106841

/-! ## A106841.P10052015858766810778

`8*(lt[A125047(n+2), 3]+1)`
-/

namespace A106841.P10052015858766810778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125047 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A106841.P10052015858766810778

namespace A106841

/-- `8*(lt[A125047(n+2), 3]+1)` -/
def P10052015858766810778.Spec : Prop :=
  ∀ n, (P10052015858766810778.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P18365107981497674888

`A008590(A091072(n+1))`
-/

namespace A106841.P18365107981497674888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A091072 (n + 1)).toNat

end

end A106841.P18365107981497674888

namespace A106841

/-- `A008590(A091072(n+1))` -/
def P18365107981497674888.Spec : Prop :=
  ∀ n, P18365107981497674888.a n = A106841 (n + 1)

end A106841

/-! ## A106841.P17454387012835349759

`filter[A317331(2*(n+1)), A073089(#)]`
-/

namespace A106841.P17454387012835349759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A073089 (f1 j).toNat = 1) n)

end

end A106841.P17454387012835349759

namespace A106841

/-- `filter[A317331(2*(n+1)), A073089(#)]` -/
def P17454387012835349759.Spec : Prop :=
  ∀ n, P17454387012835349759.a n = A106841 (n + 1)

end A106841

/-! ## A106841.P14446018061857539909

`filter[A317331(2*(n+1)), A121262(#)]`
-/

namespace A106841.P14446018061857539909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A106841.P14446018061857539909

namespace A106841

/-- `filter[A317331(2*(n+1)), A121262(#)]` -/
def P14446018061857539909.Spec : Prop :=
  ∀ n, P14446018061857539909.a n = A106841 (n + 1)

end A106841

/-! ## A106841.P16463039946911531658

`filter[A317331(2*(n+1)), A354034(#)]`
-/

namespace A106841.P16463039946911531658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A106841.P16463039946911531658

namespace A106841

/-- `filter[A317331(2*(n+1)), A354034(#)]` -/
def P16463039946911531658.Spec : Prop :=
  ∀ n, P16463039946911531658.a n = A106841 (n + 1)

end A106841

/-! ## A106841.P4109168388522746887

`filter[A317331(2*(n+1)), A336834(#)]`
-/

namespace A106841.P4109168388522746887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336834 (f1 j).toNat = 1) n)

end

end A106841.P4109168388522746887

namespace A106841

/-- `filter[A317331(2*(n+1)), A336834(#)]` -/
def P4109168388522746887.Spec : Prop :=
  ∀ n, P4109168388522746887.a n = A106841 (n + 1)

end A106841

/-! ## A106841.P9397082879531777934

`∩[A317331(n+1), A008590(n)]`
-/

namespace A106841.P9397082879531777934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P9397082879531777934

namespace A106841

/-- `∩[A317331(n+1), A008590(n)]` -/
def P9397082879531777934.Spec : Prop :=
  ∀ n, (P9397082879531777934.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P12577558636227700697

`∩[A317331(n+1), A022144(n)]`
-/

namespace A106841.P12577558636227700697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P12577558636227700697

namespace A106841

/-- `∩[A317331(n+1), A022144(n)]` -/
def P12577558636227700697.Spec : Prop :=
  ∀ n, (P12577558636227700697.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P17463891454926915032

`∩[A247061(n+1), A317331(n+1)]`
-/

namespace A106841.P17463891454926915032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P17463891454926915032

namespace A106841

/-- `∩[A247061(n+1), A317331(n+1)]` -/
def P17463891454926915032.Spec : Prop :=
  ∀ n, (P17463891454926915032.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P1986617849800267980

`∩[A106840(n+1), A008590(n)]`
-/

namespace A106841.P1986617849800267980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106840 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P1986617849800267980

namespace A106841

/-- `∩[A106840(n+1), A008590(n)]` -/
def P1986617849800267980.Spec : Prop :=
  ∀ n, (P1986617849800267980.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P9122662504476218940

`∩[A047451(n+1), A106840(n+1)]`
-/

namespace A106841.P9122662504476218940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P9122662504476218940

namespace A106841

/-- `∩[A047451(n+1), A106840(n+1)]` -/
def P9122662504476218940.Spec : Prop :=
  ∀ n, (P9122662504476218940.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P4287360425992505209

`∩[A047467(n+1), A106840(n+1)]`
-/

namespace A106841.P4287360425992505209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P4287360425992505209

namespace A106841

/-- `∩[A047467(n+1), A106840(n+1)]` -/
def P4287360425992505209.Spec : Prop :=
  ∀ n, (P4287360425992505209.a n : ℤ) = A106841 (n + 1)

end A106841

/-! ## A106841.P13776542354742461880

`∩[A047470(n+1), A106840(n+1)]`
-/

namespace A106841.P13776542354742461880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106841.P13776542354742461880

namespace A106841

/-- `∩[A047470(n+1), A106840(n+1)]` -/
def P13776542354742461880.Spec : Prop :=
  ∀ n, (P13776542354742461880.a n : ℤ) = A106841 (n + 1)

end A106841

/-!
# A106842: a(n) = (1 + n + n^2)^n.

The programs for A106842, the canonical program `A106842.P9936366201318042026` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106842 has offset 1).

The definition of A106842 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+n+n²)^n` (program `A106842.P9936366201318042026`, by `A106842.P9936366201318042026.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106842.P9936366201318042026

`(1+n+n²)^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106842

/-- `(1+n+n²)^n` -/
def P9936366201318042026.Spec : Prop :=
  ∀ n, (P9936366201318042026.a n : ℤ) = A106842 (n + 1)

theorem P9936366201318042026.correct : P9936366201318042026.Spec := by
  intro n
  simp only [A106842, Nat.add_sub_cancel]

end A106842

/-! ## A106842.P15183584094640343362

`or(1, or(1, ∑[2*n])^n)`
-/

namespace A106842.P15183584094640343362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) ^ n)

end

end A106842.P15183584094640343362

namespace A106842

/-- `or(1, or(1, ∑[2*n])^n)` -/
def P15183584094640343362.Spec : Prop :=
  ∀ n, (P15183584094640343362.a n : ℤ) = A106842 (n + 1)

end A106842

/-! ## A106842.P18117482385959946479

`abs((record[(n-1)²]-n)^n)`
-/

namespace A106842.P18117482385959946479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)) ^ n|

end

end A106842.P18117482385959946479

namespace A106842

/-- `abs((record[(n-1)²]-n)^n)` -/
def P18117482385959946479.Spec : Prop :=
  ∀ n, P18117482385959946479.a n = A106842 (n + 1)

end A106842

/-! ## A106842.P7877668997125286873

`floor(∑[a(n-1)+2]^n)` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A106842.P7877668997125286873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A106842.P7877668997125286873

namespace A106842

/-- `floor(∑[a(n-1)+2]^n)` -/
def P7877668997125286873.Spec : Prop :=
  ∀ n, (P7877668997125286873.a n : ℤ) = A106842 (n + 1)

end A106842

/-! ## A106842.P15911347606066964754

`floor((1-∑[a(n-1)-2])^n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A106842.P15911347606066964754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A106842.P15911347606066964754

namespace A106842

/-- `floor((1-∑[a(n-1)-2])^n)` -/
def P15911347606066964754.Spec : Prop :=
  ∀ n, P15911347606066964754.a n = A106842 (n + 1)

end A106842

/-!
# A106843: Numbers of form 3^i * prime(j), i>=0, j>0.

The programs for A106843, the canonical program `A106843.P9879990537790880483` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106843 has offset 1).

The definition of A106843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2009 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106843.P9879990537790880483

`lt[A035191(n+2), 3]+2`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106843

/-- `lt[A035191(n+2), 3]+2` -/
def P9879990537790880483.Spec : Prop :=
  ∀ n, (P9879990537790880483.a n : ℤ) = A106843 (n + 1)

theorem P9879990537790880483.correct : P9879990537790880483.Spec := by
  intro n
  simp only [A106843, Nat.add_sub_cancel]

end A106843

/-! ## A106843.P11342257956803782354

`eq[1, A107286(A038502(n+2))]+2`
-/

namespace A106843.P11342257956803782354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A038502 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A106843.P11342257956803782354

namespace A106843

/-- `eq[1, A107286(A038502(n+2))]+2` -/
def P11342257956803782354.Spec : Prop :=
  ∀ n, (P11342257956803782354.a n : ℤ) = A106843 (n + 1)

end A106843

/-! ## A106843.P1580675054951812920

`eq[1, A074829(A035191(n+2)+1)]+2`
-/

namespace A106843.P1580675054951812920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074829 (A035191 (n + 2) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A106843.P1580675054951812920

namespace A106843

/-- `eq[1, A074829(A035191(n+2)+1)]+2` -/
def P1580675054951812920.Spec : Prop :=
  ∀ n, (P1580675054951812920.a n : ℤ) = A106843 (n + 1)

end A106843

/-! ## A106843.P11270708567084121634

`record[A181440(n+1)/A052126(A038502(n+1))]`
-/

namespace A106843.P11270708567084121634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181440 (n + 1) : ℚ) / (A052126 (A038502 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106843.P11270708567084121634

namespace A106843

/-- `record[A181440(n+1)/A052126(A038502(n+1))]` -/
def P11270708567084121634.Spec : Prop :=
  ∀ n, P11270708567084121634.a n = (A106843 (n + 1) : ℚ)

end A106843

/-! ## A106843.P14872717801793869335

`record[A004151(n+2)/A107286(A038502(n+2))]`
-/

namespace A106843.P14872717801793869335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004151 (n + 2) : ℚ) / (A107286 (A038502 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106843.P14872717801793869335

namespace A106843

/-- `record[A004151(n+2)/A107286(A038502(n+2))]` -/
def P14872717801793869335.Spec : Prop :=
  ∀ n, P14872717801793869335.a n = (A106843 (n + 1) : ℚ)

end A106843

/-! ## A106843.P10767792501774200116

`record[A123108(2*(n+2))/A107286(A038502(n+2))]`
-/

namespace A106843.P10767792501774200116
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 (2 * (n + 2)) : ℚ) / (A107286 (A038502 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106843.P10767792501774200116

namespace A106843

/-- `record[A123108(2*(n+2))/A107286(A038502(n+2))]` -/
def P10767792501774200116.Spec : Prop :=
  ∀ n, P10767792501774200116.a n = (A106843 (n + 1) : ℚ)

end A106843

/-! ## A106843.P15277055074010749962

`A008611(eq[A035191(n+1), A087624(n+1)])`
-/

namespace A106843.P15277055074010749962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106843.P15277055074010749962

namespace A106843

/-- `A008611(eq[A035191(n+1), A087624(n+1)])` -/
def P15277055074010749962.Spec : Prop :=
  ∀ n, P15277055074010749962.a n = A106843 (n + 1)

end A106843

/-!
# A106844: Exponent of 2 in the prime factorization of A093641(n).

The programs for A106844, the canonical program `A106844.P3344673447551020478` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106844 has offset 1).

The definition of A106844 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106844.P3344673447551020478

`A007814(A093641(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A106844

/-- `A007814(A093641(n+1))` -/
def P3344673447551020478.Spec : Prop :=
  ∀ n, P3344673447551020478.a n = A106844 (n + 1)

theorem P3344673447551020478.correct : P3344673447551020478.Spec := by
  intro n
  simp only [A106844, Nat.add_sub_cancel]

end A106844

/-! ## A106844.P10213249253586085889

`val(eq[1, A325355(n+1)]+1, 2)`
-/

namespace A106844.P10213249253586085889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325355 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A106844.P10213249253586085889

namespace A106844

/-- `val(eq[1, A325355(n+1)]+1, 2)` -/
def P10213249253586085889.Spec : Prop :=
  ∀ n, (P10213249253586085889.a n : ℤ) = A106844 (n + 1)

end A106844

/-! ## A106844.P5623536239527816282

`val(eq[1, A171435(A171435(n+1))]+1, 2)`
-/

namespace A106844.P5623536239527816282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A171435 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) 2

end

end A106844.P5623536239527816282

namespace A106844

/-- `val(eq[1, A171435(A171435(n+1))]+1, 2)` -/
def P5623536239527816282.Spec : Prop :=
  ∀ n, (P5623536239527816282.a n : ℤ) = A106844 (n + 1)

end A106844

/-! ## A106844.P1067162401400110059

`val(lt[A257990(n+1), 2]+1, 2)`
-/

namespace A106844.P1067162401400110059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) 2

end

end A106844.P1067162401400110059

namespace A106844

/-- `val(lt[A257990(n+1), 2]+1, 2)` -/
def P1067162401400110059.Spec : Prop :=
  ∀ n, (P1067162401400110059.a n : ℤ) = A106844 (n + 1)

end A106844

/-! ## A106844.P2292700025422499156

`A001511(A093641(n+1))-A001511(2*n+1)`
-/

namespace A106844.P2292700025422499156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A093641 (n + 1)).toNat - A001511 (2 * n + 1)

end

end A106844.P2292700025422499156

namespace A106844

/-- `A001511(A093641(n+1))-A001511(2*n+1)` -/
def P2292700025422499156.Spec : Prop :=
  ∀ n, P2292700025422499156.a n = A106844 (n + 1)

end A106844

/-! ## A106844.P13666203963182325091

`A046660(2*A093641(n+1))`
-/

namespace A106844.P13666203963182325091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A093641 (n + 1)).toNat

end

end A106844.P13666203963182325091

namespace A106844

/-- `A046660(2*A093641(n+1))` -/
def P13666203963182325091.Spec : Prop :=
  ∀ n, P13666203963182325091.a n = A106844 (n + 1)

end A106844

/-!
# A106845: a(n) = n^2 * (n^3 + 2n^2 + 7n - 2) / 8.

The programs for A106845, the canonical program `A106845.P4813506964809620038` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106845 has offset 0).

The definition of A106845 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106845.P4813506964809620038

`n²*(n*(n*(n+2)+7)-2)/8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106845

/-- `n²*(n*(n*(n+2)+7)-2)/8` -/
def P4813506964809620038.Spec : Prop :=
  ∀ n, P4813506964809620038.a n = (A106845 n : ℚ)

end A106845

/-! ## A106845.P2011842620812661314

`n²*(n^3+2*n²+7*n-2)/8`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A106845.P2011842620812661314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℚ) * (((n ^ 3 + 2 * n ^ 2 + 7 * n : ℤ) - 2 : ℚ) / 8)

end

end A106845.P2011842620812661314

namespace A106845

/-- `n²*(n^3+2*n²+7*n-2)/8` -/
def P2011842620812661314.Spec : Prop :=
  ∀ n, P2011842620812661314.a n = (A106845 n : ℚ)

end A106845

/-! ## A106845.P9308238461569570705

`n^3+n*C(C(n+1, 2), 2)`
-/

namespace A106845.P9308238461569570705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3 + n * Nat.choose (Nat.choose (n + 1) 2) 2

end

end A106845.P9308238461569570705

namespace A106845

/-- `n^3+n*C(C(n+1, 2), 2)` -/
def P9308238461569570705.Spec : Prop :=
  ∀ n, (P9308238461569570705.a n : ℤ) = A106845 n

end A106845

/-! ## A106845.P10065595434275141561

`n*A037255(n+1)-(2*n²+n)`
-/

namespace A106845.P10065595434275141561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A037255 (n + 1) - (2 * n ^ 2 + n : ℤ)

end

end A106845.P10065595434275141561

namespace A106845

/-- `n*A037255(n+1)-(2*n²+n)` -/
def P10065595434275141561.Spec : Prop :=
  ∀ n, P10065595434275141561.a n = A106845 n

end A106845

/-! ## A106845.P9262863294139521573

`n*A000217(A000124(n))-A002378(n)`
-/

namespace A106845.P9262863294139521573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (A000124 n).toNat - A002378 n

end

end A106845.P9262863294139521573

namespace A106845

/-- `n*A000217(A000124(n))-A002378(n)` -/
def P9262863294139521573.Spec : Prop :=
  ∀ n, P9262863294139521573.a n = A106845 n

end A106845

/-! ## A106845.P17672043909047224713

`n*A000124(A000124(n))-A005563(n)`
-/

namespace A106845.P17672043909047224713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000124 (A000124 n).toNat - A005563 n

end

end A106845.P17672043909047224713

namespace A106845

/-- `n*A000124(A000124(n))-A005563(n)` -/
def P17672043909047224713.Spec : Prop :=
  ∀ n, P17672043909047224713.a n = A106845 n

end A106845

/-! ## A106845.P11058676834043930353

`record[(A000096(n)-A114327(n))*A114327(n)]`
-/

namespace A106845.P11058676834043930353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000096 n - A114327 n) * A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106845.P11058676834043930353

namespace A106845

/-- `record[(A000096(n)-A114327(n))*A114327(n)]` -/
def P11058676834043930353.Spec : Prop :=
  ∀ n, P11058676834043930353.a n = A106845 n

end A106845

/-!
# A106846: a(n) = Sum_{k + l*m <= n} (k + l*m), with 0 <= k,l,m <= n.

The programs for A106846, the canonical program `A106846.P9938484105339249012` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106846 has offset 0).

The definition of A106846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106846.P1553040509303543086

`∑[n*(A008486(n)+A006218(n))]`
-/

namespace A106846.P1553040509303543086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A008486 n + A006218 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106846.P1553040509303543086

namespace A106846

/-- `∑[n*(A008486(n)+A006218(n))]` -/
def P1553040509303543086.Spec : Prop :=
  ∀ n, P1553040509303543086.a n = A106846 n

end A106846

/-! ## A106846.P3814242069796213724

`∑[A033428(n)+n*A006218(n)]`
-/

namespace A106846.P3814242069796213724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033428 n + (n : ℤ) * A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106846.P3814242069796213724

namespace A106846

/-- `∑[A033428(n)+n*A006218(n)]` -/
def P3814242069796213724.Spec : Prop :=
  ∀ n, P3814242069796213724.a n = A106846 n

end A106846

/-! ## A106846.P9938484105339249012

`∑[n*(A008574(n)+∑[A032741(n)])]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106846

/-- `∑[n*(A008574(n)+∑[A032741(n)])]` -/
def P9938484105339249012.Spec : Prop :=
  ∀ n, P9938484105339249012.a n = A106846 n

theorem P9938484105339249012.correct : P9938484105339249012.Spec := by
  intro n
  simp only [A106846]

end A106846

/-! ## A106846.P8601992673947789768

`∑[n*A028242(A210288(n))]`
-/

namespace A106846.P8601992673947789768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028242 (A210288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106846.P8601992673947789768

namespace A106846

/-- `∑[n*A028242(A210288(n))]` -/
def P8601992673947789768.Spec : Prop :=
  ∀ n, P8601992673947789768.a n = A106846 n

end A106846

/-!
# A106847: a(n) = Sum {k + j*m <= n} (k + j*m), with 0 < k,j,m <= n.

The programs for A106847, the canonical program `A106847.P3405529995713514203` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106847 has offset 0).

The definition of A106847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106847.P3405529995713514203

`∑[n*(A350102(n)-2)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106847

/-- `∑[n*(A350102(n)-2)]` -/
def P3405529995713514203.Spec : Prop :=
  ∀ n, P3405529995713514203.a n = A106847 n

theorem P3405529995713514203.correct : P3405529995713514203.Spec := by
  intro n
  simp only [A106847]

end A106847

/-! ## A106847.P15946935047989626656

`∑[n*A006218(abs(1-n))]`
-/

namespace A106847.P15946935047989626656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A006218 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106847.P15946935047989626656

namespace A106847

/-- `∑[n*A006218(abs(1-n))]` -/
def P15946935047989626656.Spec : Prop :=
  ∀ n, P15946935047989626656.a n = A106847 n

end A106847

/-! ## A106847.P13315245711563665367

`∑[record[n*A210959(n+1)]-n]`
-/

namespace A106847.P13315245711563665367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106847.P13315245711563665367

namespace A106847

/-- `∑[record[n*A210959(n+1)]-n]` -/
def P13315245711563665367.Spec : Prop :=
  ∀ n, P13315245711563665367.a n = A106847 n

end A106847

/-! ## A106847.P2905197760379014434

`∑[n*A113215((1-n)²)]`
-/

namespace A106847.P2905197760379014434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113215 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106847.P2905197760379014434

namespace A106847

/-- `∑[n*A113215((1-n)²)]` -/
def P2905197760379014434.Spec : Prop :=
  ∀ n, P2905197760379014434.a n = A106847 n

end A106847

/-! ## A106847.P494976911874106613

`∑[n*∑[A212957(A161680(n)+1)]]`
-/

namespace A106847.P494976911874106613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212957 (A161680 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106847.P494976911874106613

namespace A106847

/-- `∑[n*∑[A212957(A161680(n)+1)]]` -/
def P494976911874106613.Spec : Prop :=
  ∀ n, P494976911874106613.a n = A106847 n

end A106847

/-!
# A106849: Values of n for which A106848(n) = n-1.

The programs for A106849, there is no canonical definition to state claims against.
-/

/-! ## A106849.P3929054128444835343

`A006883(ceil(cosh(sin(n))+n))`
-/

namespace A106849.P3929054128444835343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 ⌈Real.cosh (Real.sin (n : ℝ)) + (n : ℝ)⌉.toNat

end

end A106849.P3929054128444835343

/-! ## A106849.P8730440462956326263

`A006883(n+2-floor(acot(n)))`
-/

namespace A106849.P8730440462956326263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 ((n + 2 : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A106849.P8730440462956326263

/-! ## A106849.P14161589065176592258

`A006883(n+3-ceil(acot(n)))`
-/

namespace A106849.P14161589065176592258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 ((n + 3 : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉).toNat

end

end A106849.P14161589065176592258

/-! ## A106849.P17023962653819617815

`A006883((n+2)/ceil(acot(n)))`
-/

namespace A106849.P17023962653819617815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ))).toNat

end

end A106849.P17023962653819617815

/-! ## A106849.P15016218161483419059

`A006883(C(n+2, ceil(acot(n))))`
-/

namespace A106849.P15016218161483419059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (Nat.choose (n + 2) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat)

end

end A106849.P15016218161483419059

/-! ## A106849.P17884366564658755625

`p?[A006883(n+1)%(5^n)]`
-/

namespace A106849.P17884366564658755625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006883 (n + 1)) (5 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106849.P17884366564658755625

/-! ## A106849.P7284725117076498197

`A006883(ceil(n/98)+n+1)`
-/

namespace A106849.P7284725117076498197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006883 (⌈(n : ℚ) / 98⌉ + (n + 1 : ℤ)).toNat

end

end A106849.P7284725117076498197

/-! ## A106849.P4323652595552507653

`A257670(A001913(n+1))`
-/

namespace A106849.P4323652595552507653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A001913 (n + 1)).toNat

end

end A106849.P4323652595552507653

/-! ## A106849.P16706353140139947701

`A257670(A006883(n+2))`
-/

namespace A106849.P16706353140139947701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257670 (A006883 (n + 2)).toNat

end

end A106849.P16706353140139947701

/-! ## A106849.P13428359466770927571

`A001913(n+1)%A001513(n)`
-/

namespace A106849.P13428359466770927571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001913 (n + 1)) (A001513 n)

end

end A106849.P13428359466770927571

/-!
# A106850: Expansion of 3*x^2*(2*x^2+9*x-2)/((3*x^2-5*x+1)*(3*x^2+5*x-1)).

The programs for A106850, the canonical program `A106850.P16453764975442188673` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106850 has offset 1).

The definition of A106850 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6x-27x^2-6x^3)/(1-10x+25x^2-9x^4))` (program `A106850.P16453764975442188673`, by `A106850.P16453764975442188673.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106850.P16453764975442188673

`ogf((6x-27x^2-6x^3)/(1-10x+25x^2-9x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106850

/-- `ogf((6x-27x^2-6x^3)/(1-10x+25x^2-9x^4))` -/
def P16453764975442188673.Spec : Prop :=
  ∀ n, P16453764975442188673.a n = A106850 (n + 1)

theorem P16453764975442188673.correct : P16453764975442188673.Spec := by
  intro n
  simp only [A106850, Nat.add_sub_cancel]

end A106850

/-!
# A106851: Expansion of (-3*x^3 - 7*x^2 + 2*x)/((1-4*x-x^2)*(1-4*x+x^2)).

The programs for A106851, the canonical program `A106851.P13131548928441941817` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106851 has offset 0).

The definition of A106851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2x-7x^2-3x^3)/(1-8x+16x^2-x^4))` (program `A106851.P13131548928441941817`, by `A106851.P13131548928441941817.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106851.P13131548928441941817

`ogf((2x-7x^2-3x^3)/(1-8x+16x^2-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106851

/-- `ogf((2x-7x^2-3x^3)/(1-8x+16x^2-x^4))` -/
def P13131548928441941817.Spec : Prop :=
  ∀ n, P13131548928441941817.a n = A106851 n

theorem P13131548928441941817.correct : P13131548928441941817.Spec := by
  intro n
  simp only [A106851]

end A106851

/-! ## A106851.P4552634426888062128

`8*a(n-1)-16*a(n-2)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=9, a(3)=37`
-/

namespace A106851.P4552634426888062128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9, 37] fun n a =>
  8 * a (n - 1) - 16 * a (n - 2) + a (n - 4)

end

end A106851.P4552634426888062128

namespace A106851

/-- `8*a(n-1)-16*a(n-2)+a(n-4)` -/
def P4552634426888062128.Spec : Prop :=
  ∀ n, P4552634426888062128.a n = A106851 n

end A106851

/-! ## A106851.P11265391305838050567

`A107401(2*n)+A049651(n)`
-/

namespace A106851.P11265391305838050567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107401 (2 * n) + A049651 n

end

end A106851.P11265391305838050567

namespace A106851

/-- `A107401(2*n)+A049651(n)` -/
def P11265391305838050567.Spec : Prop :=
  ∀ n, P11265391305838050567.a n = A106851 n

end A106851

/-!
# A106852: Expansion of 1/(1-x*(1-3*x)).

The programs for A106852, the canonical program `A106852.P1365222293764441815` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106852 has offset 0).

The definition of A106852 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+3x^2))` (program `A106852.P1365222293764441815`, by `A106852.P1365222293764441815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106852.P1365222293764441815

`ogf(1/(1-x+3x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106852

/-- `ogf(1/(1-x+3x^2))` -/
def P1365222293764441815.Spec : Prop :=
  ∀ n, P1365222293764441815.a n = A106852 n

theorem P1365222293764441815.correct : P1365222293764441815.Spec := by
  intro n
  simp only [A106852]

end A106852

/-! ## A106852.P9057904129227532088

`a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106852.P9057904129227532088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 3 * a (n - 2)

end

end A106852.P9057904129227532088

namespace A106852

/-- `a(n-1)-3*a(n-2)` -/
def P9057904129227532088.Spec : Prop :=
  ∀ n, P9057904129227532088.a n = A106852 n

end A106852

/-! ## A106852.P2979509677889714037

`∏[1-3/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A106852.P2979509677889714037
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 3 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A106852.P2979509677889714037

namespace A106852

/-- `∏[1-3/a(n-1)]` -/
def P2979509677889714037.Spec : Prop :=
  ∀ n, P2979509677889714037.a n = (A106852 n : ℚ)

end A106852

/-! ## A106852.P421730627134832765

`a(n-1)+a(n-2)/(2/3-1)` with `a(0)=1, a(1)=1`
-/

namespace A106852.P421730627134832765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) / ((2 : ℚ) / 3 - 1)

end

end A106852.P421730627134832765

namespace A106852

/-- `a(n-1)+a(n-2)/(2/3-1)` -/
def P421730627134832765.Spec : Prop :=
  ∀ n, P421730627134832765.a n = (A106852 n : ℚ)

end A106852

/-! ## A106852.P7476789306014231829

`a(n-1)-a(n-2)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106852.P7476789306014231829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 2)

end

end A106852.P7476789306014231829

namespace A106852

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-2)` -/
def P7476789306014231829.Spec : Prop :=
  ∀ n, P7476789306014231829.a n = A106852 n

end A106852

/-! ## A106852.P5371049517424098945

`(-1)^n*A214733(n+1)`
-/

namespace A106852.P5371049517424098945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A214733 (n + 1)

end

end A106852.P5371049517424098945

namespace A106852

/-- `(-1)^n*A214733(n+1)` -/
def P5371049517424098945.Spec : Prop :=
  ∀ n, P5371049517424098945.a n = A106852 n

end A106852

/-! ## A106852.P10262517051711758479

`A214733(n+1)/A033999(n)`
-/

namespace A106852.P10262517051711758479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A106852.P10262517051711758479

namespace A106852

/-- `A214733(n+1)/A033999(n)` -/
def P10262517051711758479.Spec : Prop :=
  ∀ n, P10262517051711758479.a n = (A106852 n : ℚ)

end A106852

/-! ## A106852.P1328009237055199835

`A214733(n+1)/A057077(2*n)`
-/

namespace A106852.P1328009237055199835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (n + 1) : ℚ) / (A057077 (2 * n) : ℚ)

end

end A106852.P1328009237055199835

namespace A106852

/-- `A214733(n+1)/A057077(2*n)` -/
def P1328009237055199835.Spec : Prop :=
  ∀ n, P1328009237055199835.a n = (A106852 n : ℚ)

end A106852

/-! ## A106852.P9840163241939934502

`A214733(n+1)/A077999(n)*A110524(n)`
-/

namespace A106852.P9840163241939934502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214733 (n + 1) : ℚ) / (A077999 n : ℚ) * (A110524 n : ℚ)

end

end A106852.P9840163241939934502

namespace A106852

/-- `A214733(n+1)/A077999(n)*A110524(n)` -/
def P9840163241939934502.Spec : Prop :=
  ∀ n, P9840163241939934502.a n = (A106852 n : ℚ)

end A106852

/-! ## A106852.P16059814747067282989

`∑[A110522(∑[n])*A110523(n)]`
-/

namespace A106852.P16059814747067282989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110522 (∑ j ∈ Finset.range (n + 1), f2 j) * A110523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106852.P16059814747067282989

namespace A106852

/-- `∑[A110522(∑[n])*A110523(n)]` -/
def P16059814747067282989.Spec : Prop :=
  ∀ n, P16059814747067282989.a n = A106852 n

end A106852

/-!
# A106853: Expansion of 1/(1 - x + 4*x^2).

The programs for A106853, the canonical program `A106853.P15762111641170984595` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106853 has offset 0).

The definition of A106853 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+4x^2))` (program `A106853.P15762111641170984595`, by `A106853.P15762111641170984595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106853.P15762111641170984595

`ogf(1/(1-x+4x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106853

/-- `ogf(1/(1-x+4x^2))` -/
def P15762111641170984595.Spec : Prop :=
  ∀ n, P15762111641170984595.a n = A106853 n

theorem P15762111641170984595.correct : P15762111641170984595.Spec := by
  intro n
  simp only [A106853]

end A106853

/-! ## A106853.P3360964924199919130

`a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106853.P3360964924199919130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 4 * a (n - 2)

end

end A106853.P3360964924199919130

namespace A106853

/-- `a(n-1)-4*a(n-2)` -/
def P3360964924199919130.Spec : Prop :=
  ∀ n, P3360964924199919130.a n = A106853 n

end A106853

/-! ## A106853.P6694255388494622749

`∏[1-4/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A106853.P6694255388494622749
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A106853.P6694255388494622749

namespace A106853

/-- `∏[1-4/a(n-1)]` -/
def P6694255388494622749.Spec : Prop :=
  ∀ n, P6694255388494622749.a n = (A106853 n : ℚ)

end A106853

/-! ## A106853.P15589386267702917404

`a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106853.P15589386267702917404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 2) - a (n - 2)

end

end A106853.P15589386267702917404

namespace A106853

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` -/
def P15589386267702917404.Spec : Prop :=
  ∀ n, P15589386267702917404.a n = A106853 n

end A106853

/-! ## A106853.P13786150620342757002

`a(n-1)-a(n-2)/(1/2)²` with `a(0)=1, a(1)=1`
-/

namespace A106853.P13786150620342757002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A106853.P13786150620342757002

namespace A106853

/-- `a(n-1)-a(n-2)/(1/2)²` -/
def P13786150620342757002.Spec : Prop :=
  ∀ n, P13786150620342757002.a n = (A106853 n : ℚ)

end A106853

/-! ## A106853.P3552442820370658243

`A133631(n)-a(n-1)` with `a(0)=1`
-/

namespace A106853.P3552442820370658243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A133631 n - a (n - 1)

end

end A106853.P3552442820370658243

namespace A106853

/-- `A133631(n)-a(n-1)` -/
def P3552442820370658243.Spec : Prop :=
  ∀ n, P3552442820370658243.a n = A106853 n

end A106853

/-! ## A106853.P1575671153062634610

`A025171(n)/A122803(n)`
-/

namespace A106853.P1575671153062634610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025171 n : ℚ) / (A122803 n : ℚ)

end

end A106853.P1575671153062634610

namespace A106853

/-- `A025171(n)/A122803(n)` -/
def P1575671153062634610.Spec : Prop :=
  ∀ n, P1575671153062634610.a n = (A106853 n : ℚ)

end A106853

/-! ## A106853.P11985837338840629734

`A375885(n+1)/2^n`
-/

namespace A106853.P11985837338840629734
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375885 (n + 1) : ℚ) / (2 ^ n : ℚ)

end

end A106853.P11985837338840629734

namespace A106853

/-- `A375885(n+1)/2^n` -/
def P11985837338840629734.Spec : Prop :=
  ∀ n, P11985837338840629734.a n = (A106853 n : ℚ)

end A106853

/-! ## A106853.P15185219540484510299

`A136330(∑[n]+1)`
-/

namespace A106853.P15185219540484510299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136330 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A106853.P15185219540484510299

namespace A106853

/-- `A136330(∑[n]+1)` -/
def P15185219540484510299.Spec : Prop :=
  ∀ n, P15185219540484510299.a n = A106853 n

end A106853

/-! ## A106853.P15297846260578260861

`A375894(n+1)/A375882(n+1)`
-/

namespace A106853.P15297846260578260861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375894 (n + 1) : ℚ) / (A375882 (n + 1) : ℚ)

end

end A106853.P15297846260578260861

namespace A106853

/-- `A375894(n+1)/A375882(n+1)` -/
def P15297846260578260861.Spec : Prop :=
  ∀ n, P15297846260578260861.a n = (A106853 n : ℚ)

end A106853

/-!
# A106854: Expansion of 1/(1-x*(1-5*x)).

The programs for A106854, the canonical program `A106854.P7422233143588150729` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106854 has offset 0).

The definition of A106854 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x+5x^2))` (program `A106854.P7422233143588150729`, by `A106854.P7422233143588150729.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106854.P7422233143588150729

`ogf(1/(1-x+5x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106854

/-- `ogf(1/(1-x+5x^2))` -/
def P7422233143588150729.Spec : Prop :=
  ∀ n, P7422233143588150729.a n = A106854 n

theorem P7422233143588150729.correct : P7422233143588150729.Spec := by
  intro n
  simp only [A106854]

end A106854

/-! ## A106854.P10324710652319813702

`a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106854.P10324710652319813702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - 5 * a (n - 2)

end

end A106854.P10324710652319813702

namespace A106854

/-- `a(n-1)-5*a(n-2)` -/
def P10324710652319813702.Spec : Prop :=
  ∀ n, P10324710652319813702.a n = A106854 n

end A106854

/-! ## A106854.P17176305437579374856

`∏[1-5/a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A106854.P17176305437579374856
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  1 - 5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A106854.P17176305437579374856

namespace A106854

/-- `∏[1-5/a(n-1)]` -/
def P17176305437579374856.Spec : Prop :=
  ∀ n, P17176305437579374856.a n = (A106854 n : ℚ)

end A106854

/-! ## A106854.P11733320058364229762

`a(n-1)-a(n-2)/(1/2)²-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106854.P11733320058364229762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) / ((1 : ℚ) / 2) ^ 2 - a (n - 2)

end

end A106854.P11733320058364229762

namespace A106854

/-- `a(n-1)-a(n-2)/(1/2)²-a(n-2)` -/
def P11733320058364229762.Spec : Prop :=
  ∀ n, P11733320058364229762.a n = (A106854 n : ℚ)

end A106854

/-! ## A106854.P18219219565929552418

`a(n-1)-(a(n-2)+a(n-2)+a(n-2)+a(n-2))-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106854.P18219219565929552418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))) - a (n - 2)

end

end A106854.P18219219565929552418

namespace A106854

/-- `a(n-1)-(a(n-2)+a(n-2)+a(n-2)+a(n-2))-a(n-2)` -/
def P18219219565929552418.Spec : Prop :=
  ∀ n, P18219219565929552418.a n = A106854 n

end A106854

/-! ## A106854.P13313624580590102510

`a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106854.P13313624580590102510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2) - a (n - 2) - a (n - 2) - a (n - 2)

end

end A106854.P13313624580590102510

namespace A106854

/-- `a(n-1)-a(n-2)-a(n-2)-a(n-2)-a(n-2)-a(n-2)` -/
def P13313624580590102510.Spec : Prop :=
  ∀ n, P13313624580590102510.a n = A106854 n

end A106854

/-!
# A106855: Expansion of 1/(1-x^2(1-3x)).

The programs for A106855, the canonical program `A106855.P16518094385800530833` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106855 has offset 0).

The definition of A106855 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x^2+3x^3))` (program `A106855.P16518094385800530833`, by `A106855.P16518094385800530833.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106855.P16518094385800530833

`ogf(1/(1-x^2+3x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106855

/-- `ogf(1/(1-x^2+3x^3))` -/
def P16518094385800530833.Spec : Prop :=
  ∀ n, P16518094385800530833.a n = A106855 n

theorem P16518094385800530833.correct : P16518094385800530833.Spec := by
  intro n
  simp only [A106855]

end A106855

/-! ## A106855.P9667376312517267499

`a(n-2)-3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A106855.P9667376312517267499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) - 3 * a (n - 3)

end

end A106855.P9667376312517267499

namespace A106855

/-- `a(n-2)-3*a(n-3)` -/
def P9667376312517267499.Spec : Prop :=
  ∀ n, P9667376312517267499.a n = A106855 n

end A106855

/-! ## A106855.P393393538155984654

`a(n-2)-(a(n-3)+a(n-3)+a(n-3))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A106855.P393393538155984654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) - (a (n - 3) + (a (n - 3) + a (n - 3)))

end

end A106855.P393393538155984654

namespace A106855

/-- `a(n-2)-(a(n-3)+a(n-3)+a(n-3))` -/
def P393393538155984654.Spec : Prop :=
  ∀ n, P393393538155984654.a n = A106855 n

end A106855

/-! ## A106855.P15349055562634242177

`a(n-2)-a(n-3)-a(n-3)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A106855.P15349055562634242177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) - a (n - 3) - a (n - 3) - a (n - 3)

end

end A106855.P15349055562634242177

namespace A106855

/-- `a(n-2)-a(n-3)-a(n-3)-a(n-3)` -/
def P15349055562634242177.Spec : Prop :=
  ∀ n, P15349055562634242177.a n = A106855 n

end A106855

/-! ## A106855.P11251546193903676940

`∑[A033999(n)*A238389(n)]`
-/

namespace A106855.P11251546193903676940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A238389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106855.P11251546193903676940

namespace A106855

/-- `∑[A033999(n)*A238389(n)]` -/
def P11251546193903676940.Spec : Prop :=
  ∀ n, P11251546193903676940.a n = A106855 n

end A106855

/-!
# A106856: Primes of the form x^2 + xy + 2y^2, with x and y nonnegative.

The programs for A106856, there is no canonical definition to state claims against.
-/

/-! ## A106856.P2897633541371026140

`p?[A034039(n+1)]`
-/

namespace A106856.P2897633541371026140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106856.P2897633541371026140

/-! ## A106856.P16513883106060505193

`record[A006530(A034039(n+2))]`
-/

namespace A106856.P16513883106060505193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034039 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106856.P16513883106060505193

/-! ## A106856.P15034922524630077905

`filter[A034039(n+1), A010051(#)]`
-/

namespace A106856.P15034922524630077905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106856.P15034922524630077905

/-! ## A106856.P14777059152909113388

`filter[A034039(n+1), A358751(#)]`
-/

namespace A106856.P14777059152909113388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A106856.P14777059152909113388

/-! ## A106856.P11464821945260747802

`filter[A034039(n+2), A355937(#)]`
-/

namespace A106856.P11464821945260747802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A106856.P11464821945260747802

/-! ## A106856.P17768558338258846041

`∩[A034039(n+1), A042988(n)]`
-/

namespace A106856.P17768558338258846041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P17768558338258846041

/-! ## A106856.P5611291546544584675

`∩[A000040(n+1), A034039(n+1)]`
-/

namespace A106856.P5611291546544584675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P5611291546544584675

/-! ## A106856.P10396469920601085172

`∩[A000430(n+1), A034039(n+1)]`
-/

namespace A106856.P10396469920601085172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P10396469920601085172

/-! ## A106856.P9102407020404642486

`∩[A009087(n+1), A034039(n+1)]`
-/

namespace A106856.P9102407020404642486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P9102407020404642486

/-! ## A106856.P5267496580708566565

`∩[A034039(n+1), A044042(n+1)]`
-/

namespace A106856.P5267496580708566565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P5267496580708566565

/-! ## A106856.P1968596794227071480

`∩[A034039(n+1), A045319(n+1)]`
-/

namespace A106856.P1968596794227071480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P1968596794227071480

/-! ## A106856.P17812492710630122582

`∩[A034039(n+1), A045320(n+1)]`
-/

namespace A106856.P17812492710630122582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P17812492710630122582

/-! ## A106856.P3104368188185546421

`∩[A115919(n+1), A034039(n+1)]`
-/

namespace A106856.P3104368188185546421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P3104368188185546421

/-! ## A106856.P14277898801396771667

`filter[A034039(n+1), A302777(#)]`
-/

namespace A106856.P14277898801396771667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A106856.P14277898801396771667

/-! ## A106856.P12381988588365365190

`filter[A034039(n+2), A353787(#)]`
-/

namespace A106856.P12381988588365365190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034039 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A106856.P12381988588365365190

/-! ## A106856.P11659396577237722703

`p?[A034042(n+1)]`
-/

namespace A106856.P11659396577237722703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106856.P11659396577237722703

/-! ## A106856.P11479000044339402508

`filter[A034042(n+1), A010051(#)]`
-/

namespace A106856.P11479000044339402508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106856.P11479000044339402508

/-! ## A106856.P2049199927677455347

`∩[A034042(n+1), A042988(n)]`
-/

namespace A106856.P2049199927677455347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P2049199927677455347

/-! ## A106856.P8084163187707149324

`∩[A000040(n+1), A034042(n+1)]`
-/

namespace A106856.P8084163187707149324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P8084163187707149324

/-! ## A106856.P5572293538176962688

`∩[A034042(n+1), A044042(n+1)]`
-/

namespace A106856.P5572293538176962688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106856.P5572293538176962688

/-!
# A106857: Primes of the form x^2+xy+3y^2, with x and y nonnegative.

The programs for A106857, there is no canonical definition to state claims against.
-/

/-! ## A106857.P16148691652718464957

`A296920(lt[A017882(n), A014675(n+4)])`
-/

namespace A106857.P16148691652718464957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017882 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014675 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106857.P16148691652718464957

/-! ## A106857.P2252160543555958889

`A296920(lt[A000041(n), A057923(3*n+2)])`
-/

namespace A106857.P2252160543555958889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057923 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106857.P2252160543555958889

/-! ## A106857.P13671116110412967588

`A296920(lt[A318560(2*n+5), A225071(n+1)])`
-/

namespace A106857.P13671116110412967588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318560 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296920 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106857.P13671116110412967588

/-! ## A106857.P6234661553067000661

`p?[lt[A025438(n), A011582(n)]]`
-/

namespace A106857.P6234661553067000661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025438 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106857.P6234661553067000661

/-! ## A106857.P11637600972223134322

`p?[∩[A004438(n+1), A267755(n)]]`
-/

namespace A106857.P11637600972223134322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004438 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106857.P11637600972223134322

/-!
# A106858: Primes of the form 2x^2+xy+2y^2 with x and y nonnegative.

The programs for A106858, there is no canonical definition to state claims against.
-/

/-! ## A106858.P14405849784526014757

`A175179(A138847(n))`
-/

namespace A106858.P14405849784526014757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175179 (A138847 n).toNat

end

end A106858.P14405849784526014757

/-! ## A106858.P15673518474095218465

`A175179(∑[A092892(n)])`
-/

namespace A106858.P15673518474095218465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175179 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106858.P15673518474095218465

/-! ## A106858.P554022747523449174

`p?[∑[A064375(A004709(n+1))]]`
-/

namespace A106858.P554022747523449174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064375 (A004709 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106858.P554022747523449174

/-!
# A106859: Primes of the form 2x^2 + xy + 2y^2.

The programs for A106859, the canonical program `A106859.P6892722703160858775` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106859 has offset 1).

The definition of A106859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7992 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106859.P7956356447402427052

`∪[A106858(n+1), A106860(n+1)]`
-/

namespace A106859.P7956356447402427052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P7956356447402427052

namespace A106859

/-- `∪[A106858(n+1), A106860(n+1)]` -/
def P7956356447402427052.Spec : Prop :=
  ∀ n, (P7956356447402427052.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P2106360973237128955

`∪[A107169(n+1), A141303(n+1)]`
-/

namespace A106859.P2106360973237128955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P2106360973237128955

namespace A106859

/-- `∪[A107169(n+1), A141303(n+1)]` -/
def P2106360973237128955.Spec : Prop :=
  ∀ n, (P2106360973237128955.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P540670176979437998

`∪[A055472(n+1), A343241(n+1)]`
-/

namespace A106859.P540670176979437998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P540670176979437998

namespace A106859

/-- `∪[A055472(n+1), A343241(n+1)]` -/
def P540670176979437998.Spec : Prop :=
  ∀ n, (P540670176979437998.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P17873117247082149733

`∪[A107312(n+1), A343241(n+1)]`
-/

namespace A106859.P17873117247082149733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P17873117247082149733

namespace A106859

/-- `∪[A107312(n+1), A343241(n+1)]` -/
def P17873117247082149733.Spec : Prop :=
  ∀ n, (P17873117247082149733.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P13165415158851523970

`∪[A176131(n+1), A343241(n+1)]`
-/

namespace A106859.P13165415158851523970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P13165415158851523970

namespace A106859

/-- `∪[A176131(n+1), A343241(n+1)]` -/
def P13165415158851523970.Spec : Prop :=
  ∀ n, (P13165415158851523970.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P3686502667242794515

`∪[A278138(n+1), A343241(n+1)]`
-/

namespace A106859.P3686502667242794515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P3686502667242794515

namespace A106859

/-- `∪[A278138(n+1), A343241(n+1)]` -/
def P3686502667242794515.Spec : Prop :=
  ∀ n, (P3686502667242794515.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P10775040056871060904

`∪[A309844(n+1), A343241(n+1)]`
-/

namespace A106859.P10775040056871060904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P10775040056871060904

namespace A106859

/-- `∪[A309844(n+1), A343241(n+1)]` -/
def P10775040056871060904.Spec : Prop :=
  ∀ n, (P10775040056871060904.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P6892722703160858775

`p?[a(n-4)+15]` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106859

/-- `p?[a(n-4)+15]` -/
def P6892722703160858775.Spec : Prop :=
  ∀ n, (P6892722703160858775.a n : ℤ) = A106859 (n + 1)

theorem P6892722703160858775.correct : P6892722703160858775.Spec := by
  intro n
  simp only [A106859, Nat.add_sub_cancel]

end A106859

/-! ## A106859.P14019252732052720274

`∩[A045309(n+1), A341786(n+1)]`
-/

namespace A106859.P14019252732052720274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P14019252732052720274

namespace A106859

/-- `∩[A045309(n+1), A341786(n+1)]` -/
def P14019252732052720274.Spec : Prop :=
  ∀ n, (P14019252732052720274.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P6544807727281958164

`∩[A042993(n+1), A045309(n+1)]`
-/

namespace A106859.P6544807727281958164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P6544807727281958164

namespace A106859

/-- `∩[A042993(n+1), A045309(n+1)]` -/
def P6544807727281958164.Spec : Prop :=
  ∀ n, (P6544807727281958164.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P6971995961410272037

`∩[A042993(n+1), A341786(n+1)]`
-/

namespace A106859.P6971995961410272037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P6971995961410272037

namespace A106859

/-- `∩[A042993(n+1), A341786(n+1)]` -/
def P6971995961410272037.Spec : Prop :=
  ∀ n, (P6971995961410272037.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P14839180433091683065

`∩[A045309(n+1), A140971(n+1)]`
-/

namespace A106859.P14839180433091683065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P14839180433091683065

namespace A106859

/-- `∩[A045309(n+1), A140971(n+1)]` -/
def P14839180433091683065.Spec : Prop :=
  ∀ n, (P14839180433091683065.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P3355598226034493083

`∩[A140971(n+1), A341786(n+1)]`
-/

namespace A106859.P3355598226034493083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P3355598226034493083

namespace A106859

/-- `∩[A140971(n+1), A341786(n+1)]` -/
def P3355598226034493083.Spec : Prop :=
  ∀ n, (P3355598226034493083.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P14799357374539404681

`∩[A042993(n+1), A066501(n+1)]`
-/

namespace A106859.P14799357374539404681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106859.P14799357374539404681

namespace A106859

/-- `∩[A042993(n+1), A066501(n+1)]` -/
def P14799357374539404681.Spec : Prop :=
  ∀ n, (P14799357374539404681.a n : ℤ) = A106859 (n + 1)

end A106859

/-! ## A106859.P8177069811259105179

`p?[A028955(n+1)]`
-/

namespace A106859.P8177069811259105179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106859.P8177069811259105179

namespace A106859

/-- `p?[A028955(n+1)]` -/
def P8177069811259105179.Spec : Prop :=
  ∀ n, P8177069811259105179.a n = A106859 (n + 1)

end A106859

/-! ## A106859.P15901428245552090908

`record[A006530(A028955(n+2))]`
-/

namespace A106859.P15901428245552090908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028955 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106859.P15901428245552090908

namespace A106859

/-- `record[A006530(A028955(n+2))]` -/
def P15901428245552090908.Spec : Prop :=
  ∀ n, P15901428245552090908.a n = A106859 (n + 1)

end A106859

/-! ## A106859.P8649486557984314625

`filter[A028955(n+2), A010051(#)]`
-/

namespace A106859.P8649486557984314625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106859.P8649486557984314625

namespace A106859

/-- `filter[A028955(n+2), A010051(#)]` -/
def P8649486557984314625.Spec : Prop :=
  ∀ n, P8649486557984314625.a n = A106859 (n + 1)

end A106859

/-! ## A106859.P17943121552173999599

`filter[A028955(n+2), A302777(#)]`
-/

namespace A106859.P17943121552173999599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A106859.P17943121552173999599

namespace A106859

/-- `filter[A028955(n+2), A302777(#)]` -/
def P17943121552173999599.Spec : Prop :=
  ∀ n, P17943121552173999599.a n = A106859 (n + 1)

end A106859

/-! ## A106859.P6451759644927291883

`filter[A028955(n+2), A323153(#)]`
-/

namespace A106859.P6451759644927291883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A106859.P6451759644927291883

namespace A106859

/-- `filter[A028955(n+2), A323153(#)]` -/
def P6451759644927291883.Spec : Prop :=
  ∀ n, P6451759644927291883.a n = A106859 (n + 1)

end A106859

/-! ## A106859.P8159343983139011229

`filter[A028955(n+2), A355937(#)]`
-/

namespace A106859.P8159343983139011229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028955 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A106859.P8159343983139011229

namespace A106859

/-- `filter[A028955(n+2), A355937(#)]` -/
def P8159343983139011229.Spec : Prop :=
  ∀ n, P8159343983139011229.a n = A106859 (n + 1)

end A106859

/-!
# A106860: Primes of the form 2x^2-xy+2y^2, with x and y nonnegative.

The programs for A106860, there is no canonical definition to state claims against.
-/

/-! ## A106860.P6133606769964863265

`record[A143175(A046034(n+1))]`
-/

namespace A106860.P6133606769964863265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143175 (A046034 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106860.P6133606769964863265

/-! ## A106860.P1068013065650660825

`A000040(xor(n², A327824(n)))`
-/

namespace A106860.P1068013065650660825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Int.xor (n ^ 2 : ℤ) (A327824 (n + 1))).toNat

end

end A106860.P1068013065650660825

/-!
# A106861: Primes of the form x^2+xy+4y^2, with x and y nonnegative.

The programs for A106861, there is no canonical definition to state claims against.
-/

/-! ## A106861.P14788747021082822818

`p?[lcm(A146510(n+1), A212382(n))]`
-/

namespace A106861.P14788747021082822818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A146510 (n + 1)) (A212382 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106861.P14788747021082822818

/-! ## A106861.P2171991186564326607

`A033212(lt[A057977(n), A158985(3*n+2)])`
-/

namespace A106861.P2171991186564326607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158985 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106861.P2171991186564326607

/-! ## A106861.P2243019771678530624

`A033212(lt[A089259(n), A158985(3*n+2)])`
-/

namespace A106861.P2243019771678530624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089259 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158985 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106861.P2243019771678530624

/-! ## A106861.P5937798411278371694

`A033212(lt[A136228(n), A158985(3*n+2)])`
-/

namespace A106861.P5937798411278371694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158985 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106861.P5937798411278371694

/-! ## A106861.P11287770461406546245

`A033212(lt[A050341(n+1), A158985(3*n+2)])`
-/

namespace A106861.P11287770461406546245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158985 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033212 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106861.P11287770461406546245

/-!
# A106862: Primes of the form x^2+xy+5y^2, with x and y nonnegative.

The programs for A106862, there is no canonical definition to state claims against.
-/

/-! ## A106862.P4093888693885735064

`A106863(∑[A014963(floor(n/2)!)])`
-/

namespace A106862.P4093888693885735064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106862.P4093888693885735064

/-! ## A106862.P2559622121230547922

`A106863(∑[A014963(A081123(n))])`
-/

namespace A106862.P2559622121230547922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A081123 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106862.P2559622121230547922

/-! ## A106862.P18246835721526043764

`p?[A341787(n+1)+A028641(A186482(n+1))]`
-/

namespace A106862.P18246835721526043764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1) + A028641 (A186482 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106862.P18246835721526043764

/-! ## A106862.P6981795253386768839

`A191019(∑[A326674((n+1)*Δ[n^3])])`
-/

namespace A106862.P6981795253386768839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326674 ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106862.P6981795253386768839

/-! ## A106862.P8438748751275099805

`∩[A106863(n+1), A137313(n+1)]`
-/

namespace A106862.P8438748751275099805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106862.P8438748751275099805

/-!
# A106863: Primes of the form x^2+xy+5y^2.

The programs for A106863, there is no canonical definition to state claims against.
-/

/-! ## A106863.P10133264497269153849

`∪[A087515(n+1), A191019(n+1)]`
-/

namespace A106863.P10133264497269153849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P10133264497269153849

/-! ## A106863.P7868801221159028070

`p?[A341787(n+1)]`
-/

namespace A106863.P7868801221159028070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106863.P7868801221159028070

/-! ## A106863.P9898725152065719371

`∩[A000040(n+1), A341787(n+1)]`
-/

namespace A106863.P9898725152065719371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P9898725152065719371

/-! ## A106863.P12094552835726041425

`∩[A006005(n+1), A341787(n+1)]`
-/

namespace A106863.P12094552835726041425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P12094552835726041425

/-! ## A106863.P5701774797077543767

`∩[A065091(n+1), A341787(n+1)]`
-/

namespace A106863.P5701774797077543767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P5701774797077543767

/-! ## A106863.P16170091565891055442

`∩[A008578(n+1), A341787(n+1)]`
-/

namespace A106863.P16170091565891055442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P16170091565891055442

/-! ## A106863.P10607633195801480182

`∩[A053813(n+1), A341787(n+1)]`
-/

namespace A106863.P10607633195801480182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P10607633195801480182

/-! ## A106863.P1831641462296240621

`∩[A341787(n+1), A260442(n)]`
-/

namespace A106863.P1831641462296240621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106863.P1831641462296240621

/-! ## A106863.P9878313807171735893

`record[A006530(A341787(n+2))]`
-/

namespace A106863.P9878313807171735893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341787 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106863.P9878313807171735893

/-! ## A106863.P9872594320140253616

`filter[A341787(n+1), A008966(#)]`
-/

namespace A106863.P9872594320140253616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A106863.P9872594320140253616

/-! ## A106863.P5566657296264189530

`filter[A341787(n+1), A010051(#)]`
-/

namespace A106863.P5566657296264189530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106863.P5566657296264189530

/-! ## A106863.P8445037945286720484

`filter[A341787(n+1), A066829(#)]`
-/

namespace A106863.P8445037945286720484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A106863.P8445037945286720484

/-! ## A106863.P6814823979102780629

`filter[A341787(n+1), A257531(#)]`
-/

namespace A106863.P6814823979102780629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A106863.P6814823979102780629

/-! ## A106863.P18395675919284402284

`filter[A341787(n+1), A049240(#)]`
-/

namespace A106863.P18395675919284402284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A106863.P18395675919284402284

/-! ## A106863.P12538191915642687862

`filter[A341787(n+1), A099104(#)]`
-/

namespace A106863.P12538191915642687862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A106863.P12538191915642687862

/-! ## A106863.P17383312099393397828

`filter[A341787(n+1), A174897(#)]`
-/

namespace A106863.P17383312099393397828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A106863.P17383312099393397828

/-! ## A106863.P14246665380242789760

`filter[A341787(n+1), A181183(#)]`
-/

namespace A106863.P14246665380242789760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A106863.P14246665380242789760

/-! ## A106863.P11974683375660678552

`filter[A341787(n+1), A252233(#)]`
-/

namespace A106863.P11974683375660678552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A106863.P11974683375660678552

/-! ## A106863.P37958142647941542

`filter[A341787(n+1), A262684(#)]`
-/

namespace A106863.P37958142647941542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A106863.P37958142647941542

/-! ## A106863.P13146922117876932246

`filter[A341787(n+1), A295316(#)]`
-/

namespace A106863.P13146922117876932246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A106863.P13146922117876932246

/-!
# A106864: Primes of the form 2x^2+2xy+3y^2 with x and y nonnegative.

The programs for A106864, there is no canonical definition to state claims against.
-/

/-! ## A106864.P17485820914591558478

`p?[A242655(n+1)]`
-/

namespace A106864.P17485820914591558478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106864.P17485820914591558478

/-! ## A106864.P1410187417520548008

`record[A006530(A242655(n+2))]`
-/

namespace A106864.P1410187417520548008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A242655 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106864.P1410187417520548008

/-! ## A106864.P9630902046079335652

`filter[A242655(n+2), A010051(#)]`
-/

namespace A106864.P9630902046079335652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106864.P9630902046079335652

/-! ## A106864.P16226039259564007985

`filter[A242655(n+2), A302777(#)]`
-/

namespace A106864.P16226039259564007985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A106864.P16226039259564007985

/-! ## A106864.P3831220561788594740

`filter[A242655(n+2), A353499(#)]`
-/

namespace A106864.P3831220561788594740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A106864.P3831220561788594740

/-! ## A106864.P10494950998745139374

`filter[A242655(n+2), A355937(#)]`
-/

namespace A106864.P10494950998745139374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A106864.P10494950998745139374

/-! ## A106864.P8130582946661322263

`∩[A000040(n+1), A242655(n+1)]`
-/

namespace A106864.P8130582946661322263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P8130582946661322263

/-! ## A106864.P17046180290156763660

`∩[A000430(n+1), A242655(n+1)]`
-/

namespace A106864.P17046180290156763660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P17046180290156763660

/-! ## A106864.P876358768759034447

`∩[A003631(n+1), A242655(n+1)]`
-/

namespace A106864.P876358768759034447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P876358768759034447

/-! ## A106864.P10487172871299598419

`∩[A008578(n+1), A242655(n+1)]`
-/

namespace A106864.P10487172871299598419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P10487172871299598419

/-! ## A106864.P3079213676464139013

`∩[A009087(n+1), A242655(n+1)]`
-/

namespace A106864.P3079213676464139013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P3079213676464139013

/-! ## A106864.P1317745534007011103

`∩[A023162(n+1), A242655(n+1)]`
-/

namespace A106864.P1317745534007011103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P1317745534007011103

/-! ## A106864.P12679727828252612253

`∩[A033946(n+1), A242655(n+1)]`
-/

namespace A106864.P12679727828252612253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P12679727828252612253

/-! ## A106864.P4080362957366581449

`∩[A040116(n+1), A242655(n+1)]`
-/

namespace A106864.P4080362957366581449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P4080362957366581449

/-! ## A106864.P3012749662752630585

`∩[A040159(n+1), A242655(n+1)]`
-/

namespace A106864.P3012749662752630585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P3012749662752630585

/-! ## A106864.P7753416649444853914

`∩[A040161(n+1), A242655(n+1)]`
-/

namespace A106864.P7753416649444853914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P7753416649444853914

/-! ## A106864.P13995607680321516769

`∩[A040165(n+1), A242655(n+1)]`
-/

namespace A106864.P13995607680321516769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P13995607680321516769

/-! ## A106864.P4669111263055994843

`∩[A040169(n+1), A242655(n+1)]`
-/

namespace A106864.P4669111263055994843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P4669111263055994843

/-! ## A106864.P10603360615120886609

`∩[A040171(n+1), A242655(n+1)]`
-/

namespace A106864.P10603360615120886609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P10603360615120886609

/-! ## A106864.P10085219097351701751

`∩[A040177(n+1), A242655(n+1)]`
-/

namespace A106864.P10085219097351701751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106864.P10085219097351701751

/-!
# A106865: Primes of the form 2x^2 + 2xy + 3y^2.

The programs for A106865, the canonical program `A106865.P18207096656974834837` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106865 has offset 1).

The definition of A106865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5523 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106865.P14718163552365981832

`p?[ogf((2-x+2x^2+x^3+6x^4)/(1-2x+2x^2-2x^3+x^4))]`
-/

namespace A106865.P14718163552365981832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2, 1, 6] [1, -2, 2, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106865.P14718163552365981832

namespace A106865

/-- `p?[ogf((2-x+2x^2+x^3+6x^4)/(1-2x+2x^2-2x^3+x^4))]` -/
def P14718163552365981832.Spec : Prop :=
  ∀ n, P14718163552365981832.a n = A106865 (n + 1)

end A106865

/-! ## A106865.P18207096656974834837

`p?[or(2, ceil(5*n/2))]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106865

/-- `p?[or(2, ceil(5*n/2))]` -/
def P18207096656974834837.Spec : Prop :=
  ∀ n, P18207096656974834837.a n = A106865 (n + 1)

theorem P18207096656974834837.correct : P18207096656974834837.Spec := by
  intro n
  simp only [A106865, Nat.add_sub_cancel]

end A106865

/-! ## A106865.P1433821069666109046

`∩[A045326(n+1), A091727(n+1)]`
-/

namespace A106865.P1433821069666109046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P1433821069666109046

namespace A106865

/-- `∩[A045326(n+1), A091727(n+1)]` -/
def P1433821069666109046.Spec : Prop :=
  ∀ n, (P1433821069666109046.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P10218736023171191275

`∩[A045326(n+1), A240920(n+1)]`
-/

namespace A106865.P10218736023171191275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P10218736023171191275

namespace A106865

/-- `∩[A045326(n+1), A240920(n+1)]` -/
def P10218736023171191275.Spec : Prop :=
  ∀ n, (P10218736023171191275.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P10100240796104579725

`A091727(eq[2, and(2, A091727(n+1))]+1)`
-/

namespace A106865.P10100240796104579725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A091727 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106865.P10100240796104579725

namespace A106865

/-- `A091727(eq[2, and(2, A091727(n+1))]+1)` -/
def P10100240796104579725.Spec : Prop :=
  ∀ n, P10100240796104579725.a n = A106865 (n + 1)

end A106865

/-! ## A106865.P8219508030475576291

`∩[A003631(n+1), A045326(n+1)]`
-/

namespace A106865.P8219508030475576291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P8219508030475576291

namespace A106865

/-- `∩[A003631(n+1), A045326(n+1)]` -/
def P8219508030475576291.Spec : Prop :=
  ∀ n, (P8219508030475576291.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P9407627326946522246

`∩[A042993(n+1), A045326(n+1)]`
-/

namespace A106865.P9407627326946522246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P9407627326946522246

namespace A106865

/-- `∩[A042993(n+1), A045326(n+1)]` -/
def P9407627326946522246.Spec : Prop :=
  ∀ n, (P9407627326946522246.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P3455746104031150948

`∩[A003631(n+1), A091727(n+1)]`
-/

namespace A106865.P3455746104031150948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P3455746104031150948

namespace A106865

/-- `∩[A003631(n+1), A091727(n+1)]` -/
def P3455746104031150948.Spec : Prop :=
  ∀ n, (P3455746104031150948.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P17888112273940742084

`∩[A003631(n+1), A240920(n+1)]`
-/

namespace A106865.P17888112273940742084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240920 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P17888112273940742084

namespace A106865

/-- `∩[A003631(n+1), A240920(n+1)]` -/
def P17888112273940742084.Spec : Prop :=
  ∀ n, (P17888112273940742084.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P1334902197756143851

`∩[A385225(n+1), A003631(n+1)]`
-/

namespace A106865.P1334902197756143851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P1334902197756143851

namespace A106865

/-- `∩[A385225(n+1), A003631(n+1)]` -/
def P1334902197756143851.Spec : Prop :=
  ∀ n, (P1334902197756143851.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P5708987897724081699

`A003631(eq[2, and(2, A003631(n+1))]+1)`
-/

namespace A106865.P5708987897724081699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A003631 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106865.P5708987897724081699

namespace A106865

/-- `A003631(eq[2, and(2, A003631(n+1))]+1)` -/
def P5708987897724081699.Spec : Prop :=
  ∀ n, P5708987897724081699.a n = A106865 (n + 1)

end A106865

/-! ## A106865.P8491499719576274038

`∩[A045326(n+1), A069104(n+1)]`
-/

namespace A106865.P8491499719576274038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P8491499719576274038

namespace A106865

/-- `∩[A045326(n+1), A069104(n+1)]` -/
def P8491499719576274038.Spec : Prop :=
  ∀ n, (P8491499719576274038.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P10818860886934915216

`∩[A069104(n+1), A091727(n+1)]`
-/

namespace A106865.P10818860886934915216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P10818860886934915216

namespace A106865

/-- `∩[A069104(n+1), A091727(n+1)]` -/
def P10818860886934915216.Spec : Prop :=
  ∀ n, (P10818860886934915216.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P6001048448184083060

`∩[A003631(n+1), A332555(n+1)]`
-/

namespace A106865.P6001048448184083060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P6001048448184083060

namespace A106865

/-- `∩[A003631(n+1), A332555(n+1)]` -/
def P6001048448184083060.Spec : Prop :=
  ∀ n, (P6001048448184083060.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P13442229650230012272

`∩[A042993(n+1), A332555(n+1)]`
-/

namespace A106865.P13442229650230012272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P13442229650230012272

namespace A106865

/-- `∩[A042993(n+1), A332555(n+1)]` -/
def P13442229650230012272.Spec : Prop :=
  ∀ n, (P13442229650230012272.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P1393554554995947098

`∩[A045326(n+1), A140971(n+1)]`
-/

namespace A106865.P1393554554995947098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P1393554554995947098

namespace A106865

/-- `∩[A045326(n+1), A140971(n+1)]` -/
def P1393554554995947098.Spec : Prop :=
  ∀ n, (P1393554554995947098.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P5592488424954215176

`∩[A003631(n+1), A140409(n+1)]`
-/

namespace A106865.P5592488424954215176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P5592488424954215176

namespace A106865

/-- `∩[A003631(n+1), A140409(n+1)]` -/
def P5592488424954215176.Spec : Prop :=
  ∀ n, (P5592488424954215176.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P15801068269122321602

`∩[A042993(n+1), A140409(n+1)]`
-/

namespace A106865.P15801068269122321602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P15801068269122321602

namespace A106865

/-- `∩[A042993(n+1), A140409(n+1)]` -/
def P15801068269122321602.Spec : Prop :=
  ∀ n, (P15801068269122321602.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P8469600866546971653

`∩[A069104(n+1), A140409(n+1)]`
-/

namespace A106865.P8469600866546971653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P8469600866546971653

namespace A106865

/-- `∩[A069104(n+1), A140409(n+1)]` -/
def P8469600866546971653.Spec : Prop :=
  ∀ n, (P8469600866546971653.a n : ℤ) = A106865 (n + 1)

end A106865

/-! ## A106865.P1539223780083185421

`∩[A140409(n+1), A140971(n+1)]`
-/

namespace A106865.P1539223780083185421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106865.P1539223780083185421

namespace A106865

/-- `∩[A140409(n+1), A140971(n+1)]` -/
def P1539223780083185421.Spec : Prop :=
  ∀ n, (P1539223780083185421.a n : ℤ) = A106865 (n + 1)

end A106865

/-!
# A106866: Primes of the form 2x^2+xy+3y^2, with x and y nonnegative.

The programs for A106866, there is no canonical definition to state claims against.
-/

/-! ## A106866.P5970970474658974462

`A309139(A028310(n))-floor(acot(n))`
-/

namespace A106866.P5970970474658974462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309139 (A028310 n).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A106866.P5970970474658974462

/-! ## A106866.P9675257262694361843

`A309139(A028310(n%a(n-1)))` with `a(0)=2`
-/

namespace A106866.P9675257262694361843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A309139 (A028310 (Int.tmod (n : ℤ) (a (n - 1))).toNat).toNat

end

end A106866.P9675257262694361843

/-! ## A106866.P3501117866675292636

`∪[A007352(n+1), A309139(n+1)]`
-/

namespace A106866.P3501117866675292636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106866.P3501117866675292636

/-! ## A106866.P6608212524593508048

`A309139(n)+A000007(a(A001221(n)))` with `a(0)=2`
-/

namespace A106866.P6608212524593508048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A309139 n + A000007 (a (A001221 n).toNat).toNat

end

end A106866.P6608212524593508048

/-! ## A106866.P3887056284253222668

`A309139(n)^A001221(a(A001221(n)))` with `a(0)=2`
-/

namespace A106866.P3887056284253222668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A309139 n : ℚ) ^ (A001221 (SequenceMachineLib.roundAway (a (A001221 n).toNat)).toNat : ℤ)

end

end A106866.P3887056284253222668

/-! ## A106866.P15226698730089093796

`A309139(A028310(n))-val(A000040(n+1), 2)`
-/

namespace A106866.P15226698730089093796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309139 (A028310 n).toNat - (SequenceMachineLib.valuation (A000040 (n + 1)).toNat 2 : ℤ)

end

end A106866.P15226698730089093796

/-! ## A106866.P17058532010849445565

`A309139(A028310(n))-floor(1/A005117(n+1))`
-/

namespace A106866.P17058532010849445565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309139 (A028310 n).toNat - ⌊1 / (A005117 (n + 1) : ℚ)⌋

end

end A106866.P17058532010849445565

/-! ## A106866.P967399903461656914

`A309139(n)+A000005(a(n-1))-2` with `a(0)=2`
-/

namespace A106866.P967399903461656914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A309139 n + (A000005 (a (n - 1)).toNat - 2)

end

end A106866.P967399903461656914

/-! ## A106866.P2262560009732138610

`A001221(a(n-1))*A309139(A028310(n))` with `a(0)=2`
-/

namespace A106866.P2262560009732138610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A309139 (A028310 n).toNat

end

end A106866.P2262560009732138610

/-! ## A106866.P4413428757312440039

`A001222(a(n-1))*A309139(A028310(n))` with `a(0)=2`
-/

namespace A106866.P4413428757312440039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A309139 (A028310 n).toNat

end

end A106866.P4413428757312440039

/-! ## A106866.P389416641944758754

`A309139(n^A178334(n))-floor(acot(n))`
-/

namespace A106866.P389416641944758754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309139 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A178334 n : ℤ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A106866.P389416641944758754

/-!
# A106867: Primes of the form 2*x^2 + x*y + 3*y^2.

The programs for A106867, there is no canonical definition to state claims against.
-/

/-! ## A106867.P12289022464497779804

`∪[A106866(n+1), A106868(n+1)]`
-/

namespace A106867.P12289022464497779804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106867.P12289022464497779804

/-! ## A106867.P9752130894546996421

`∪[A106868(n+1), A309139(n+1)]`
-/

namespace A106867.P9752130894546996421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106867.P9752130894546996421

/-! ## A106867.P5275810085222147791

`A000040(eq[1, A308176(n+1)]+1)`
-/

namespace A106867.P5275810085222147791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106867.P5275810085222147791

/-! ## A106867.P1488317222608596471

`A008578(eq[1, A308176(n+1)]+2)`
-/

namespace A106867.P1488317222608596471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A106867.P1488317222608596471

/-! ## A106867.P13644251450952055577

`record[A006530(A028960(n+3))]`
-/

namespace A106867.P13644251450952055577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028960 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106867.P13644251450952055577

/-! ## A106867.P16749361880113455457

`p?[lt[0, A028930(n)]]`
-/

namespace A106867.P16749361880113455457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106867.P16749361880113455457

/-! ## A106867.P16195678458256107624

`p?[n-or(n, A030199(n+1))]`
-/

namespace A106867.P16195678458256107624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (n : ℤ) (A030199 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106867.P16195678458256107624

/-! ## A106867.P13798344651824155269

`eq[2, A028930(n)*A032741(n)]`
-/

namespace A106867.P13798344651824155269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n * A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106867.P13798344651824155269

/-! ## A106867.P10334311655361363186

`p?[eq[2, A028959(A028930(n)²)]]`
-/

namespace A106867.P10334311655361363186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 (A028930 n ^ 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106867.P10334311655361363186

/-! ## A106867.P15680566743800120594

`p?[n*A057427(A028930(n)²)]`
-/

namespace A106867.P15680566743800120594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057427 (A028930 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106867.P15680566743800120594

/-! ## A106867.P907982235234622281

`p?[n*(2-A000045(A028961(n)))]`
-/

namespace A106867.P907982235234622281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A000045 (A028961 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106867.P907982235234622281

/-! ## A106867.P2060174516728580536

`p?[eq[A028959(n)+2, A028930(n)]]`
-/

namespace A106867.P2060174516728580536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028959 n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106867.P2060174516728580536

/-! ## A106867.P2913645156877726486

`p?[eq[2, A275768(n)+A028930(n)]]`
-/

namespace A106867.P2913645156877726486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n + A028930 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106867.P2913645156877726486

/-! ## A106867.P4104840888869632507

`p?[(n+1)*(A028961(A028961(n+1))+1)]`
-/

namespace A106867.P4104840888869632507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A028961 (A028961 (n + 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106867.P4104840888869632507

/-! ## A106867.P6179290857758819670

`p?[(n-A030199(n+1))*A001222(n+1)]`
-/

namespace A106867.P6179290857758819670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A030199 (n + 1)) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106867.P6179290857758819670

/-! ## A106867.P2085294838880213295

`eq[n, A000120(A028930(n))*A007918(n)]`
-/

namespace A106867.P2085294838880213295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A028930 n).toNat * A007918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106867.P2085294838880213295

/-! ## A106867.P4054460203006154184

`eq[A057427(n)+A032741(n)², A028930(n)]`
-/

namespace A106867.P4054460203006154184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A032741 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106867.P4054460203006154184

/-! ## A106867.P1754760906430907849

`A000040(eq[2, A028930(A000040(n+1))]+1)`
-/

namespace A106867.P1754760906430907849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028930 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106867.P1754760906430907849

/-! ## A106867.P4366313588576008701

`record[(1-A086965(n+1))*A000040(n+1)]`
-/

namespace A106867.P4366313588576008701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A086965 (n + 1)) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106867.P4366313588576008701

/-! ## A106867.P14974584108821703638

`A000040(record[gcd(n, A086965(n+1)+n)]+1)`
-/

namespace A106867.P14974584108821703638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A086965 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A106867.P14974584108821703638

/-!
# A106869: Primes of the form x^2+xy+6y^2, with x and y nonnegative.

The programs for A106869, there is no canonical definition to state claims against.
-/

/-! ## A106869.P3204083032877592427

`A033217(A187829(n+1)+A110591(n))`
-/

namespace A106869.P3204083032877592427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (A187829 (n + 1) + A110591 n).toNat

end

end A106869.P3204083032877592427

/-! ## A106869.P11299225673279746292

`filter[A033217(n+2), A155029(#)]`
-/

namespace A106869.P11299225673279746292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033217 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A155029 (f1 j).toNat = 1) n)

end

end A106869.P11299225673279746292

/-! ## A106869.P17417089223669847739

`∩[A130101(n+1), A372898(n+1)]`
-/

namespace A106869.P17417089223669847739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106869.P17417089223669847739

/-! ## A106869.P14559280147915144943

`∩[A156312(n+1), A372898(n+1)]`
-/

namespace A106869.P14559280147915144943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106869.P14559280147915144943

/-! ## A106869.P15045311332360312960

`∩[A372898(n+1), A391005(n+1)]`
-/

namespace A106869.P15045311332360312960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372898 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106869.P15045311332360312960

/-!
# A106870: Primes of the form x^2+xy+7y^2, with x and y nonnegative.

The programs for A106870, there is no canonical definition to state claims against.
-/

/-! ## A106870.P8190614596523690200

`p?[A174571(A219907(n+1))]`
-/

namespace A106870.P8190614596523690200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (A219907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106870.P8190614596523690200

/-! ## A106870.P2131607794221055515

`record[A020513(A026741(A219907(n+7)))]`
-/

namespace A106870.P2131607794221055515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020513 (A026741 (A219907 (n + 7)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106870.P2131607794221055515

/-! ## A106870.P46689859482629

`∩[A202822(n+1), A386529(n+1)]`
-/

namespace A106870.P46689859482629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106870.P46689859482629

/-! ## A106870.P12982376307159942634

`∩[A074628(n+1), A386529(n+1)]`
-/

namespace A106870.P12982376307159942634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386529 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106870.P12982376307159942634

/-!
# A106871: Primes of the form 2x^2+xy+4y^2, with x and y nonnegative.

The programs for A106871, there is no canonical definition to state claims against.
-/

/-! ## A106871.P898802707493370699

`p?[record[A193592(A217103(n))]]`
-/

namespace A106871.P898802707493370699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A217103 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106871.P898802707493370699

/-! ## A106871.P272999634904253950

`p?[(A000201(n+1)+1)*A330166(n)]`
-/

namespace A106871.P272999634904253950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000201 (n + 1) + 1) * A330166 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106871.P272999634904253950

/-!
# A106872: Primes of the form 2x^2+xy+4y^2.

The programs for A106872, there is no canonical definition to state claims against.
-/

/-! ## A106872.P2729250170074699954

`∪[A106871(n+1), A106873(n+1)]`
-/

namespace A106872.P2729250170074699954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106872.P2729250170074699954

/-! ## A106872.P16101311304653928669

`p?[lt[0, A123063(n)]]`
-/

namespace A106872.P16101311304653928669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106872.P16101311304653928669

/-! ## A106872.P9768304505782238251

`record[A014963(lt[1, A123063(n)])]`
-/

namespace A106872.P9768304505782238251
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106872.P9768304505782238251

/-! ## A106872.P11114855963549453932

`eq[2, A078898(n)*A123063(n)]`
-/

namespace A106872.P11114855963549453932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n * A123063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106872.P11114855963549453932

/-! ## A106872.P6220771882429270949

`p?[and(n, A258998(A123063(n)²))]`
-/

namespace A106872.P6220771882429270949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A258998 (A123063 n ^ 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106872.P6220771882429270949

/-! ## A106872.P18081267092588732236

`eq[A001281(A123063(n)), A078898(n)]`
-/

namespace A106872.P18081267092588732236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A123063 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106872.P18081267092588732236

/-! ## A106872.P12069322820842600104

`eq[A007012(n)+2, A123063(n)²]`
-/

namespace A106872.P12069322820842600104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123063 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106872.P12069322820842600104

/-! ## A106872.P18407293479754343942

`eq[A007012(n), A007012(A123063(n))]`
-/

namespace A106872.P18407293479754343942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007012 (A123063 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106872.P18407293479754343942

/-! ## A106872.P14852998601370413030

`p?[(n+2)*A033790(2*n)]`
-/

namespace A106872.P14852998601370413030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A033790 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106872.P14852998601370413030

/-! ## A106872.P6309222386889683016

`p?[A019425(A033743(4*n))*A142150(n)]`
-/

namespace A106872.P6309222386889683016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A033743 (4 * n)).toNat * A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106872.P6309222386889683016

/-!
# A106873: Primes of the form 2x^2-xy+4y^2, with x and y nonnegative.

The programs for A106873, there is no canonical definition to state claims against.
-/

/-! ## A106873.P17944027534807138801

`p?[A123064(∑[∏{e}[n, #+1]])]`
-/

namespace A106873.P17944027534807138801
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123064 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106873.P17944027534807138801

/-! ## A106873.P6525996389298240758

`p?[∑[A038712(A220153(n+1))]]`
-/

namespace A106873.P6525996389298240758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A220153 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106873.P6525996389298240758

/-!
# A106874: Primes of the form x^2+xy+8y^2, with x and y nonnegative.

The programs for A106874, there is no canonical definition to state claims against.
-/

/-! ## A106874.P5090368634934820657

`∩[A033221(n+1), A363286(n+1)]`
-/

namespace A106874.P5090368634934820657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363286 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106874.P5090368634934820657

/-! ## A106874.P16626062670416693255

`∩[A033221(n+1), A350314(n+1)]`
-/

namespace A106874.P16626062670416693255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106874.P16626062670416693255

/-!
# A106875: Primes of the form 3x^2+2xy+3y^2, with x and y nonnegative.

The programs for A106875, there is no canonical definition to state claims against.
-/

/-! ## A106875.P786712325681257983

`A114365(A386872(n+1))`
-/

namespace A106875.P786712325681257983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114365 (A386872 (n + 1)).toNat

end

end A106875.P786712325681257983

/-! ## A106875.P18118807284001753091

`A325623(A364346(2*(n+2))+A312375(2*n))`
-/

namespace A106875.P18118807284001753091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (A364346 (2 * (n + 2)) + A312375 (2 * n)).toNat

end

end A106875.P18118807284001753091

/-!
# A106876: Primes of the form 3x^2-2xy+3y^2, with x and y nonnegative.

The programs for A106876, the canonical program `A106876.P9661437305989954609` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106876 has offset 1).

The definition of A106876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 692 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106876.P14691338517550445623

`∩[A002145(n+1), A034029(n+1)]`
-/

namespace A106876.P14691338517550445623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P14691338517550445623

namespace A106876

/-- `∩[A002145(n+1), A034029(n+1)]` -/
def P14691338517550445623.Spec : Prop :=
  ∀ n, (P14691338517550445623.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P16731231361338019217

`∩[A003629(n+1), A034029(n+1)]`
-/

namespace A106876.P16731231361338019217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P16731231361338019217

namespace A106876

/-- `∩[A003629(n+1), A034029(n+1)]` -/
def P16731231361338019217.Spec : Prop :=
  ∀ n, (P16731231361338019217.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P5678317285857747465

`∩[A007520(n+1), A034029(n+1)]`
-/

namespace A106876.P5678317285857747465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P5678317285857747465

namespace A106876

/-- `∩[A007520(n+1), A034029(n+1)]` -/
def P5678317285857747465.Spec : Prop :=
  ∀ n, (P5678317285857747465.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P10920839406522673686

`∩[A034029(n+1), A042987(n+1)]`
-/

namespace A106876.P10920839406522673686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P10920839406522673686

namespace A106876

/-- `∩[A034029(n+1), A042987(n+1)]` -/
def P10920839406522673686.Spec : Prop :=
  ∀ n, (P10920839406522673686.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P9371278632878432855

`∩[A034029(n+1), A042999(n+1)]`
-/

namespace A106876.P9371278632878432855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P9371278632878432855

namespace A106876

/-- `∩[A034029(n+1), A042999(n+1)]` -/
def P9371278632878432855.Spec : Prop :=
  ∀ n, (P9371278632878432855.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P12236840745872051234

`∩[A034029(n+1), A045326(n+1)]`
-/

namespace A106876.P12236840745872051234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P12236840745872051234

namespace A106876

/-- `∩[A034029(n+1), A045326(n+1)]` -/
def P12236840745872051234.Spec : Prop :=
  ∀ n, (P12236840745872051234.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P18178996815647182752

`∩[A034029(n+1), A045339(n+1)]`
-/

namespace A106876.P18178996815647182752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P18178996815647182752

namespace A106876

/-- `∩[A034029(n+1), A045339(n+1)]` -/
def P18178996815647182752.Spec : Prop :=
  ∀ n, (P18178996815647182752.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P3001715423522706306

`∩[A034029(n+1), A045395(n+1)]`
-/

namespace A106876.P3001715423522706306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P3001715423522706306

namespace A106876

/-- `∩[A034029(n+1), A045395(n+1)]` -/
def P3001715423522706306.Spec : Prop :=
  ∀ n, (P3001715423522706306.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P1073604358829815193

`∩[A034029(n+1), A095282(n+1)]`
-/

namespace A106876.P1073604358829815193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P1073604358829815193

namespace A106876

/-- `∩[A034029(n+1), A095282(n+1)]` -/
def P1073604358829815193.Spec : Prop :=
  ∀ n, (P1073604358829815193.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P9661437305989954609

`∩[A002145(n+1), A034027(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106876

/-- `∩[A002145(n+1), A034027(n+1)]` -/
def P9661437305989954609.Spec : Prop :=
  ∀ n, (P9661437305989954609.a n : ℤ) = A106876 (n + 1)

theorem P9661437305989954609.correct : P9661437305989954609.Spec := by
  intro n
  simp only [A106876, Nat.add_sub_cancel]

end A106876

/-! ## A106876.P1181528821194804932

`∩[A003629(n+1), A034027(n+1)]`
-/

namespace A106876.P1181528821194804932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P1181528821194804932

namespace A106876

/-- `∩[A003629(n+1), A034027(n+1)]` -/
def P1181528821194804932.Spec : Prop :=
  ∀ n, (P1181528821194804932.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P5909626363970578948

`∩[A007520(n+1), A034027(n+1)]`
-/

namespace A106876.P5909626363970578948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P5909626363970578948

namespace A106876

/-- `∩[A007520(n+1), A034027(n+1)]` -/
def P5909626363970578948.Spec : Prop :=
  ∀ n, (P5909626363970578948.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P13518269970926803313

`∩[A034027(n+1), A042987(n+1)]`
-/

namespace A106876.P13518269970926803313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P13518269970926803313

namespace A106876

/-- `∩[A034027(n+1), A042987(n+1)]` -/
def P13518269970926803313.Spec : Prop :=
  ∀ n, (P13518269970926803313.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P10065763699465807200

`∩[A034027(n+1), A042999(n+1)]`
-/

namespace A106876.P10065763699465807200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P10065763699465807200

namespace A106876

/-- `∩[A034027(n+1), A042999(n+1)]` -/
def P10065763699465807200.Spec : Prop :=
  ∀ n, (P10065763699465807200.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P3714669877949257388

`∩[A034027(n+1), A045326(n+1)]`
-/

namespace A106876.P3714669877949257388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P3714669877949257388

namespace A106876

/-- `∩[A034027(n+1), A045326(n+1)]` -/
def P3714669877949257388.Spec : Prop :=
  ∀ n, (P3714669877949257388.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P17670006217718396917

`∩[A034027(n+1), A045339(n+1)]`
-/

namespace A106876.P17670006217718396917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P17670006217718396917

namespace A106876

/-- `∩[A034027(n+1), A045339(n+1)]` -/
def P17670006217718396917.Spec : Prop :=
  ∀ n, (P17670006217718396917.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P5670442587855574821

`∩[A034027(n+1), A045395(n+1)]`
-/

namespace A106876.P5670442587855574821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P5670442587855574821

namespace A106876

/-- `∩[A034027(n+1), A045395(n+1)]` -/
def P5670442587855574821.Spec : Prop :=
  ∀ n, (P5670442587855574821.a n : ℤ) = A106876 (n + 1)

end A106876

/-! ## A106876.P7118933989479738841

`∩[A034027(n+1), A095282(n+1)]`
-/

namespace A106876.P7118933989479738841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106876.P7118933989479738841

namespace A106876

/-- `∩[A034027(n+1), A095282(n+1)]` -/
def P7118933989479738841.Spec : Prop :=
  ∀ n, (P7118933989479738841.a n : ℤ) = A106876 (n + 1)

end A106876

/-!
# A106877: Primes of the form 3x^2+xy+3y^2, with x and y nonnegative.

The programs for A106877, there is no canonical definition to state claims against.
-/

/-! ## A106877.P5376776954042037132

`A129227(A055237(n)+1)`
-/

namespace A106877.P5376776954042037132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129227 (A055237 n + 1).toNat

end

end A106877.P5376776954042037132

/-! ## A106877.P11260002807374582434

`A129227(or(1, A055237(n)))`
-/

namespace A106877.P11260002807374582434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129227 (Int.lor 1 (A055237 n)).toNat

end

end A106877.P11260002807374582434

/-!
# A106878: Primes of the form 3x^2+xy+3y^2.

The programs for A106878, the canonical program `A106878.P12076796318778232852` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106878 has offset 1).

The definition of A106878 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106878.P12076796318778232852

`p?[a(n-1)+lcm(2, dr(n))]` with `a(0)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A106878

/-- `p?[a(n-1)+lcm(2, dr(n))]` -/
def P12076796318778232852.Spec : Prop :=
  ∀ n, (P12076796318778232852.a n : ℤ) = A106878 (n + 1)

theorem P12076796318778232852.correct : P12076796318778232852.Spec := by
  intro n
  simp only [A106878, Nat.add_sub_cancel]

end A106878

/-! ## A106878.P16972015700561408996

`∪[A106877(n+1), A106879(n+1)]`
-/

namespace A106878.P16972015700561408996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106877 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P16972015700561408996

namespace A106878

/-- `∪[A106877(n+1), A106879(n+1)]` -/
def P16972015700561408996.Spec : Prop :=
  ∀ n, (P16972015700561408996.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P7337377545166158696

`∩[A042993(n+1), A045399(n+1)]`
-/

namespace A106878.P7337377545166158696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P7337377545166158696

namespace A106878

/-- `∩[A042993(n+1), A045399(n+1)]` -/
def P7337377545166158696.Spec : Prop :=
  ∀ n, (P7337377545166158696.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P3254191169427495491

`∩[A045399(n+1), A140971(n+1)]`
-/

namespace A106878.P3254191169427495491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P3254191169427495491

namespace A106878

/-- `∩[A045399(n+1), A140971(n+1)]` -/
def P3254191169427495491.Spec : Prop :=
  ∀ n, (P3254191169427495491.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P10061440699435458537

`∩[A045399(n+1), A063241(n+1)]`
-/

namespace A106878.P10061440699435458537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P10061440699435458537

namespace A106878

/-- `∩[A045399(n+1), A063241(n+1)]` -/
def P10061440699435458537.Spec : Prop :=
  ∀ n, (P10061440699435458537.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P11096703666656408475

`∩[A045399(n+1), A260181(n+1)]`
-/

namespace A106878.P11096703666656408475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P11096703666656408475

namespace A106878

/-- `∩[A045399(n+1), A260181(n+1)]` -/
def P11096703666656408475.Spec : Prop :=
  ∀ n, (P11096703666656408475.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P8297739545142524858

`∩[A042993(n+1), A047328(n+1)]`
-/

namespace A106878.P8297739545142524858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P8297739545142524858

namespace A106878

/-- `∩[A042993(n+1), A047328(n+1)]` -/
def P8297739545142524858.Spec : Prop :=
  ∀ n, (P8297739545142524858.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P1247621554204753554

`∩[A045399(n+1), A047222(n+1)]`
-/

namespace A106878.P1247621554204753554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045399 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106878.P1247621554204753554

namespace A106878

/-- `∩[A045399(n+1), A047222(n+1)]` -/
def P1247621554204753554.Spec : Prop :=
  ∀ n, (P1247621554204753554.a n : ℤ) = A106878 (n + 1)

end A106878

/-! ## A106878.P2371387983762824168

`p?[-A246425(A020686(n+1))]`
-/

namespace A106878.P2371387983762824168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P2371387983762824168

namespace A106878

/-- `p?[-A246425(A020686(n+1))]` -/
def P2371387983762824168.Spec : Prop :=
  ∀ n, P2371387983762824168.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P10210026983224502533

`p?[A000007(n)-A246425(A020686(n+1))]`
-/

namespace A106878.P10210026983224502533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P10210026983224502533

namespace A106878

/-- `p?[A000007(n)-A246425(A020686(n+1))]` -/
def P10210026983224502533.Spec : Prop :=
  ∀ n, P10210026983224502533.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P2596868605451799926

`p?[A169585(n)-A246425(A020686(n+1))]`
-/

namespace A106878.P2596868605451799926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P2596868605451799926

namespace A106878

/-- `p?[A169585(n)-A246425(A020686(n+1))]` -/
def P2596868605451799926.Spec : Prop :=
  ∀ n, P2596868605451799926.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P17295995888578200777

`p?[A057428(n)*A246425(A020686(n+1))]`
-/

namespace A106878.P17295995888578200777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P17295995888578200777

namespace A106878

/-- `p?[A057428(n)*A246425(A020686(n+1))]` -/
def P17295995888578200777.Spec : Prop :=
  ∀ n, P17295995888578200777.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P5577198212032997460

`p?[A246425(A020686(n+1))*A260196(n)]`
-/

namespace A106878.P5577198212032997460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A020686 (n + 1)).toNat * A260196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P5577198212032997460

namespace A106878

/-- `p?[A246425(A020686(n+1))*A260196(n)]` -/
def P5577198212032997460.Spec : Prop :=
  ∀ n, P5577198212032997460.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P13475497088206873970

`p?[A000038(n)²-A246425(A020686(n+1))]`
-/

namespace A106878.P13475497088206873970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n ^ 2 - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P13475497088206873970

namespace A106878

/-- `p?[A000038(n)²-A246425(A020686(n+1))]` -/
def P13475497088206873970.Spec : Prop :=
  ∀ n, P13475497088206873970.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P4142026245235019386

`p?[A000038(n+1)-A246425(A020686(n+2))]`
-/

namespace A106878.P4142026245235019386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - A246425 (A020686 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P4142026245235019386

namespace A106878

/-- `p?[A000038(n+1)-A246425(A020686(n+2))]` -/
def P4142026245235019386.Spec : Prop :=
  ∀ n, P4142026245235019386.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P12507888273586214885

`p?[A008574(n)%2-A246425(A020686(n+1))]`
-/

namespace A106878.P12507888273586214885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008574 n) 2 - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P12507888273586214885

namespace A106878

/-- `p?[A008574(n)%2-A246425(A020686(n+1))]` -/
def P12507888273586214885.Spec : Prop :=
  ∀ n, P12507888273586214885.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P3854352075706246291

`p?[A008586(n)%2-A246425(A020686(n+1))]`
-/

namespace A106878.P3854352075706246291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 n) 2 - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P3854352075706246291

namespace A106878

/-- `p?[A008586(n)%2-A246425(A020686(n+1))]` -/
def P3854352075706246291.Spec : Prop :=
  ∀ n, P3854352075706246291.a n = A106878 (n + 1)

end A106878

/-! ## A106878.P15682317502567591992

`p?[A341629(2*n+1)-A246425(A020686(n+1))]`
-/

namespace A106878.P15682317502567591992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341629 (2 * n + 1) - A246425 (A020686 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106878.P15682317502567591992

namespace A106878

/-- `p?[A341629(2*n+1)-A246425(A020686(n+1))]` -/
def P15682317502567591992.Spec : Prop :=
  ∀ n, P15682317502567591992.a n = A106878 (n + 1)

end A106878

/-!
# A106879: Primes of the form 3x^2-xy+3y^2, with x and y nonnegative.

The programs for A106879, there is no canonical definition to state claims against.
-/

/-! ## A106879.P6160316355038538470

`A154868(record[A008280(n)])`
-/

namespace A106879.P6160316355038538470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154868 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106879.P6160316355038538470

/-! ## A106879.P7790519817947187840

`∩[A092979(n+1), A106878(n+1)]`
-/

namespace A106879.P7790519817947187840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092979 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106879.P7790519817947187840

/-!
# A106880: Primes of the form x^2+xy+9y^2, with x and y nonnegative.

The programs for A106880, there is no canonical definition to state claims against.
-/

/-! ## A106880.P6765403218947924013

`∩[A106881(A293754(n+1)), A042988(n)]`
-/

namespace A106880.P6765403218947924013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (A293754 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106880.P6765403218947924013

/-! ## A106880.P2949958693559666249

`∩[A044042(n+1), A106881(A293754(n+1))]`
-/

namespace A106880.P2949958693559666249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (A293754 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106880.P2949958693559666249

/-! ## A106880.P4286402591692248814

`∩[A045320(n+1), A106881(A293754(n+1))]`
-/

namespace A106880.P4286402591692248814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (A293754 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106880.P4286402591692248814

/-! ## A106880.P16777286645474152126

`A106881(A293754(n+1)^A008835(n+1))`
-/

namespace A106880.P16777286645474152126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106881 (SequenceMachineLib.roundAway ((A293754 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A106880.P16777286645474152126

/-! ## A106880.P15464457763117143000

`∩[A049545(n+1), A243178(n+1)]`
-/

namespace A106880.P15464457763117143000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106880.P15464457763117143000

/-!
# A106881: Primes of the form x^2+xy+9y^2.

The programs for A106881, the canonical program `A106881.P10335683123271550517` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106881 has offset 1).

The definition of A106881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4978 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106881.P10335683123271550517

`∩[A191026(n+1), A038872(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106881

/-- `∩[A191026(n+1), A038872(n+1)]` -/
def P10335683123271550517.Spec : Prop :=
  ∀ n, (P10335683123271550517.a n : ℤ) = A106881 (n + 1)

theorem P10335683123271550517.correct : P10335683123271550517.Spec := by
  intro n
  simp only [A106881, Nat.add_sub_cancel]

end A106881

/-! ## A106881.P3358404157855386232

`∩[A045468(n+1), A191026(n+1)]`
-/

namespace A106881.P3358404157855386232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P3358404157855386232

namespace A106881

/-- `∩[A045468(n+1), A191026(n+1)]` -/
def P3358404157855386232.Spec : Prop :=
  ∀ n, (P3358404157855386232.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P11030063522845311335

`∩[A076518(n+1), A191026(n+1)]`
-/

namespace A106881.P11030063522845311335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P11030063522845311335

namespace A106881

/-- `∩[A076518(n+1), A191026(n+1)]` -/
def P11030063522845311335.Spec : Prop :=
  ∀ n, (P11030063522845311335.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P17169208815434865009

`∩[A033207(n+1), A038872(n+1)]`
-/

namespace A106881.P17169208815434865009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P17169208815434865009

namespace A106881

/-- `∩[A033207(n+1), A038872(n+1)]` -/
def P17169208815434865009.Spec : Prop :=
  ∀ n, (P17169208815434865009.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P9549960331603588945

`∩[A033207(n+1), A045468(n+1)]`
-/

namespace A106881.P9549960331603588945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P9549960331603588945

namespace A106881

/-- `∩[A033207(n+1), A045468(n+1)]` -/
def P9549960331603588945.Spec : Prop :=
  ∀ n, (P9549960331603588945.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P355296420656287650

`∩[A038872(n+1), A045373(n+1)]`
-/

namespace A106881.P355296420656287650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P355296420656287650

namespace A106881

/-- `∩[A038872(n+1), A045373(n+1)]` -/
def P355296420656287650.Spec : Prop :=
  ∀ n, (P355296420656287650.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P18003341910319793129

`∩[A038872(n+1), A045386(n+1)]`
-/

namespace A106881.P18003341910319793129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P18003341910319793129

namespace A106881

/-- `∩[A038872(n+1), A045386(n+1)]` -/
def P18003341910319793129.Spec : Prop :=
  ∀ n, (P18003341910319793129.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P6252327028818415917

`∩[A045373(n+1), A045468(n+1)]`
-/

namespace A106881.P6252327028818415917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P6252327028818415917

namespace A106881

/-- `∩[A045373(n+1), A045468(n+1)]` -/
def P6252327028818415917.Spec : Prop :=
  ∀ n, (P6252327028818415917.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P8086287221892029329

`∩[A045386(n+1), A045468(n+1)]`
-/

namespace A106881.P8086287221892029329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P8086287221892029329

namespace A106881

/-- `∩[A045386(n+1), A045468(n+1)]` -/
def P8086287221892029329.Spec : Prop :=
  ∀ n, (P8086287221892029329.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P11796746853245144078

`∩[A033207(n+1), A064739(n+1)]`
-/

namespace A106881.P11796746853245144078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P11796746853245144078

namespace A106881

/-- `∩[A033207(n+1), A064739(n+1)]` -/
def P11796746853245144078.Spec : Prop :=
  ∀ n, (P11796746853245144078.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P11086795709559268938

`∩[A033207(n+1), A076518(n+1)]`
-/

namespace A106881.P11086795709559268938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076518 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P11086795709559268938

namespace A106881

/-- `∩[A033207(n+1), A076518(n+1)]` -/
def P11086795709559268938.Spec : Prop :=
  ∀ n, (P11086795709559268938.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P16509065187749566747

`∩[A033207(n+1), A219612(n+1)]`
-/

namespace A106881.P16509065187749566747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P16509065187749566747

namespace A106881

/-- `∩[A033207(n+1), A219612(n+1)]` -/
def P16509065187749566747.Spec : Prop :=
  ∀ n, (P16509065187749566747.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P13894274144506907389

`∩[A045386(n+1), A219612(n+1)]`
-/

namespace A106881.P13894274144506907389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P13894274144506907389

namespace A106881

/-- `∩[A045386(n+1), A219612(n+1)]` -/
def P13894274144506907389.Spec : Prop :=
  ∀ n, (P13894274144506907389.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P14108469379981503989

`∩[A023173(n+1), A033207(n+1)]`
-/

namespace A106881.P14108469379981503989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P14108469379981503989

namespace A106881

/-- `∩[A023173(n+1), A033207(n+1)]` -/
def P14108469379981503989.Spec : Prop :=
  ∀ n, (P14108469379981503989.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P11571046469666901510

`∩[A023173(n+1), A191026(n+1)]`
-/

namespace A106881.P11571046469666901510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P11571046469666901510

namespace A106881

/-- `∩[A023173(n+1), A191026(n+1)]` -/
def P11571046469666901510.Spec : Prop :=
  ∀ n, (P11571046469666901510.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P5646431704534626545

`∩[A033207(n+1), A057538(n+1)]`
-/

namespace A106881.P5646431704534626545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P5646431704534626545

namespace A106881

/-- `∩[A033207(n+1), A057538(n+1)]` -/
def P5646431704534626545.Spec : Prop :=
  ∀ n, (P5646431704534626545.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P7696573057695263952

`∩[A045373(n+1), A057538(n+1)]`
-/

namespace A106881.P7696573057695263952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P7696573057695263952

namespace A106881

/-- `∩[A045373(n+1), A057538(n+1)]` -/
def P7696573057695263952.Spec : Prop :=
  ∀ n, (P7696573057695263952.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P6197571728487672761

`∩[A045386(n+1), A057538(n+1)]`
-/

namespace A106881.P6197571728487672761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057538 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P6197571728487672761

namespace A106881

/-- `∩[A045386(n+1), A057538(n+1)]` -/
def P6197571728487672761.Spec : Prop :=
  ∀ n, (P6197571728487672761.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P4981720493070680105

`∩[A031363(n+1), A033207(n+1)]`
-/

namespace A106881.P4981720493070680105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P4981720493070680105

namespace A106881

/-- `∩[A031363(n+1), A033207(n+1)]` -/
def P4981720493070680105.Spec : Prop :=
  ∀ n, (P4981720493070680105.a n : ℤ) = A106881 (n + 1)

end A106881

/-! ## A106881.P9233949072584683806

`∩[A031363(n+1), A045373(n+1)]`
-/

namespace A106881.P9233949072584683806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106881.P9233949072584683806

namespace A106881

/-- `∩[A031363(n+1), A045373(n+1)]` -/
def P9233949072584683806.Spec : Prop :=
  ∀ n, (P9233949072584683806.a n : ℤ) = A106881 (n + 1)

end A106881

/-!
# A106882: Primes of the form 2x^2+2xy+5y^2, with x and y nonnegative.

The programs for A106882, there is no canonical definition to state claims against.
-/

/-! ## A106882.P10134108250376039585

`record[A243183(n+1)%A128371(3*n+2)]`
-/

namespace A106882.P10134108250376039585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A243183 (n + 1)) (A128371 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106882.P10134108250376039585

/-! ## A106882.P10617029956959184965

`record[A014963(A059711(n²)+2)]`
-/

namespace A106882.P10617029956959184965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A059711 (n ^ 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106882.P10617029956959184965

/-! ## A106882.P11928413331189931568

`∩[A019353(n+1), A175179(n+1)]`
-/

namespace A106882.P11928413331189931568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106882.P11928413331189931568

/-! ## A106882.P2278694204347776130

`∩[A075451(n+1), A175179(n+1)]`
-/

namespace A106882.P2278694204347776130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106882.P2278694204347776130

/-!
# A106883: Primes of the form 3x^2+3xy+4y^2, with x and y nonnegative.

The programs for A106883, there is no canonical definition to state claims against.
-/

/-! ## A106883.P11517780433757149056

`p?[A243681(A280762(n))]`
-/

namespace A106883.P11517780433757149056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243681 (A280762 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106883.P11517780433757149056

/-! ## A106883.P6397501402258871170

`∩[A258039(n+1), A243681(n)]`
-/

namespace A106883.P6397501402258871170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243681 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106883.P6397501402258871170

/-!
# A106884: Primes of the form 3x^2-3xy+4y^2, with x and y nonnegative.

The programs for A106884, there is no canonical definition to state claims against.
-/

/-! ## A106884.P15430460971202905685

`p?[A243681(n)]`
-/

namespace A106884.P15430460971202905685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106884.P15430460971202905685

/-! ## A106884.P3084235605921371350

`∩[A042990(n), A243681(n)]`
-/

namespace A106884.P3084235605921371350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243681 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106884.P3084235605921371350

/-! ## A106884.P10702551161758619594

`record[A020639(A243681(n+1))]`
-/

namespace A106884.P10702551161758619594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106884.P10702551161758619594

/-! ## A106884.P16426849837227988052

`filter[A243681(n+1), A010051(#)]`
-/

namespace A106884.P16426849837227988052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106884.P16426849837227988052

/-!
# A106886: Primes of the form 2x^2+xy+5y^2, with x and y any integer.

The programs for A106886, there is no canonical definition to state claims against.
-/

/-! ## A106886.P2844380287289332145

`∪[A106885(n+1), A106887(n+1)]`
-/

namespace A106886.P2844380287289332145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P2844380287289332145

/-! ## A106886.P17651797606493615858

`∩[A003627(n+1), A191029(n+1)]`
-/

namespace A106886.P17651797606493615858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P17651797606493615858

/-! ## A106886.P15368579328427677286

`∩[A045309(n+1), A191029(n+1)]`
-/

namespace A106886.P15368579328427677286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P15368579328427677286

/-! ## A106886.P6802462143301621806

`∩[A003627(n+1), A038884(n+1)]`
-/

namespace A106886.P6802462143301621806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P6802462143301621806

/-! ## A106886.P13038784160113766838

`∩[A038884(n+1), A045309(n+1)]`
-/

namespace A106886.P13038784160113766838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P13038784160113766838

/-! ## A106886.P17273760949766777778

`∩[A003627(n+1), A120330(n+1)]`
-/

namespace A106886.P17273760949766777778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P17273760949766777778

/-! ## A106886.P14543204878618432654

`∩[A045309(n+1), A120330(n+1)]`
-/

namespace A106886.P14543204878618432654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P14543204878618432654

/-! ## A106886.P11175180069214821774

`∩[A038884(n+1), A191029(n+1)]`
-/

namespace A106886.P11175180069214821774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P11175180069214821774

/-! ## A106886.P2578581990752694585

`∩[A120330(n+1), A191029(n+1)]`
-/

namespace A106886.P2578581990752694585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P2578581990752694585

/-! ## A106886.P10734925855057620072

`A038884(eq[2, A038884(n+1)%3]+1)`
-/

namespace A106886.P10734925855057620072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038884 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106886.P10734925855057620072

/-! ## A106886.P9565313390864655608

`∩[A038884(n+1), A066501(n+1)]`
-/

namespace A106886.P9565313390864655608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P9565313390864655608

/-! ## A106886.P3293888797551439148

`∩[A066501(n+1), A120330(n+1)]`
-/

namespace A106886.P3293888797551439148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P3293888797551439148

/-! ## A106886.P9675281208117879682

`∩[A066501(n+1), A191029(n+1)]`
-/

namespace A106886.P9675281208117879682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P9675281208117879682

/-! ## A106886.P4740106772255263097

`∩[A038884(n+1), A082406(n+1)]`
-/

namespace A106886.P4740106772255263097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P4740106772255263097

/-! ## A106886.P15879553234959376881

`∩[A082406(n+1), A120330(n+1)]`
-/

namespace A106886.P15879553234959376881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P15879553234959376881

/-! ## A106886.P16429666201574411939

`∩[A082406(n+1), A191029(n+1)]`
-/

namespace A106886.P16429666201574411939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082406 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P16429666201574411939

/-! ## A106886.P651445318683211264

`∩[A038884(n+1), A167409(n+1)]`
-/

namespace A106886.P651445318683211264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P651445318683211264

/-! ## A106886.P3767148843167826903

`∩[A120330(n+1), A167409(n+1)]`
-/

namespace A106886.P3767148843167826903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P3767148843167826903

/-! ## A106886.P16302987880746701196

`∩[A167409(n+1), A191029(n+1)]`
-/

namespace A106886.P16302987880746701196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106886.P16302987880746701196

/-! ## A106886.P12668029645859427106

`p?[A243680(n)]`
-/

namespace A106886.P12668029645859427106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106886.P12668029645859427106

/-!
# A106887: Primes of the form 2x^2-xy+5y^2, with x and y nonnegative.

The programs for A106887, there is no canonical definition to state claims against.
-/

/-! ## A106887.P9530013484264751256

`p?[∩[A243680(n), A326774(n)]]`
-/

namespace A106887.P9530013484264751256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106887.P9530013484264751256

/-! ## A106887.P8316397007531500528

`p?[∩[A243680(n), A328668(n)]]`
-/

namespace A106887.P8316397007531500528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243680 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328668 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106887.P8316397007531500528

/-! ## A106887.P17392896447586406076

`∩[A106886(n+1), A326774(n)]`
-/

namespace A106887.P17392896447586406076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106887.P17392896447586406076

/-!
# A106888: Primes of the form x^2+xy+10y^2, with x and y nonnegative.

The programs for A106888, there is no canonical definition to state claims against.
-/

/-! ## A106888.P17990579378002005619

`∩[A033227(n+1), A147791(n+1)]`
-/

namespace A106888.P17990579378002005619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106888.P17990579378002005619

/-! ## A106888.P4571361440897513912

`A033227(∑[A003557(A003557(n!+2))])`
-/

namespace A106888.P4571361440897513912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A003557 (Nat.factorial n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033227 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106888.P4571361440897513912

/-!
# A106889: Primes of the form 2x^2 + 5y^2.

The programs for A106889, there is no canonical definition to state claims against.
-/

/-! ## A106889.P1395964707894223262

`p?[A020674(n+1)]`
-/

namespace A106889.P1395964707894223262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106889.P1395964707894223262

/-! ## A106889.P5451652613542644310

`record[A006530(A020674(n+2))]`
-/

namespace A106889.P5451652613542644310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A020674 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106889.P5451652613542644310

/-! ## A106889.P10352511385088934971

`filter[A020674(n+2), A010051(#)]`
-/

namespace A106889.P10352511385088934971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106889.P10352511385088934971

/-! ## A106889.P17442473617878393528

`filter[A020674(n+2), A302777(#)]`
-/

namespace A106889.P17442473617878393528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A106889.P17442473617878393528

/-! ## A106889.P1570986296025631782

`filter[A020674(n+2), A355937(#)]`
-/

namespace A106889.P1570986296025631782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A106889.P1570986296025631782

/-! ## A106889.P9239685912884547111

`record[A020639(or(4, A020674(n+1)))]`
-/

namespace A106889.P9239685912884547111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 4 (A020674 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106889.P9239685912884547111

/-! ## A106889.P17614099538168240881

`∩[A000040(n+1), A020674(n+1)]`
-/

namespace A106889.P17614099538168240881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P17614099538168240881

/-! ## A106889.P7543704177895625872

`∩[A000430(n+1), A020674(n+1)]`
-/

namespace A106889.P7543704177895625872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P7543704177895625872

/-! ## A106889.P7261262778792767892

`∩[A008578(n+1), A020674(n+1)]`
-/

namespace A106889.P7261262778792767892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P7261262778792767892

/-! ## A106889.P15315753058102035499

`∩[A009087(n+1), A020674(n+1)]`
-/

namespace A106889.P15315753058102035499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P15315753058102035499

/-! ## A106889.P7832881700870466209

`∩[A020674(n+1), A033946(n+1)]`
-/

namespace A106889.P7832881700870466209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P7832881700870466209

/-! ## A106889.P573667254891239186

`∩[A020674(n+1), A040159(n+1)]`
-/

namespace A106889.P573667254891239186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P573667254891239186

/-! ## A106889.P5194722400853228353

`∩[A020674(n+1), A040161(n+1)]`
-/

namespace A106889.P5194722400853228353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P5194722400853228353

/-! ## A106889.P2457144395456158717

`∩[A020674(n+1), A040165(n+1)]`
-/

namespace A106889.P2457144395456158717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P2457144395456158717

/-! ## A106889.P18213761817698373974

`∩[A020674(n+1), A040169(n+1)]`
-/

namespace A106889.P18213761817698373974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P18213761817698373974

/-! ## A106889.P2481709310391549145

`∩[A020674(n+1), A040171(n+1)]`
-/

namespace A106889.P2481709310391549145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P2481709310391549145

/-! ## A106889.P14434619978731111651

`∩[A020674(n+1), A040177(n+1)]`
-/

namespace A106889.P14434619978731111651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P14434619978731111651

/-! ## A106889.P1223836639611295959

`∩[A020674(n+1), A040179(n+1)]`
-/

namespace A106889.P1223836639611295959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P1223836639611295959

/-! ## A106889.P3384997435472219383

`∩[A020674(n+1), A040184(n+1)]`
-/

namespace A106889.P3384997435472219383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P3384997435472219383

/-! ## A106889.P14203256075956375523

`∩[A020674(n+1), A040970(n+1)]`
-/

namespace A106889.P14203256075956375523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106889.P14203256075956375523

/-!
# A106890: Primes of the form x^2 + xy + 11y^2, with x and y nonnegative.

The programs for A106890, there is no canonical definition to state claims against.
-/

/-! ## A106890.P6072531719624418055

`∩[A191031(n+1), A128427(n+2)]`
-/

namespace A106890.P6072531719624418055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128427 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106890.P6072531719624418055

/-! ## A106890.P18664410423051044

`A191031(comp[A012359(3*n+4)]+1)`
-/

namespace A106890.P18664410423051044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012359 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191031 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A106890.P18664410423051044

/-! ## A106890.P6638261345753609273

`∩[A191031(n+1), A110882(n)]`
-/

namespace A106890.P6638261345753609273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110882 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106890.P6638261345753609273

/-!
# A106891: Primes of the form x^2+xy+11y^2.

The programs for A106891, there is no canonical definition to state claims against.
-/

/-! ## A106891.P10153757287997510326

`p?[A341788(n+1)]`
-/

namespace A106891.P10153757287997510326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106891.P10153757287997510326

/-! ## A106891.P14550249859772779794

`∩[A065396(n+1), A341788(n+1)]`
-/

namespace A106891.P14550249859772779794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P14550249859772779794

/-! ## A106891.P3984755582670700942

`∩[A045319(n+1), A341788(n+1)]`
-/

namespace A106891.P3984755582670700942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P3984755582670700942

/-! ## A106891.P2785892762928443151

`∩[A000040(n+1), A341788(n+1)]`
-/

namespace A106891.P2785892762928443151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P2785892762928443151

/-! ## A106891.P8585141043017460246

`∩[A053813(n+1), A341788(n+1)]`
-/

namespace A106891.P8585141043017460246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P8585141043017460246

/-! ## A106891.P16633738592180807254

`∩[A073485(n+1), A341788(n+1)]`
-/

namespace A106891.P16633738592180807254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P16633738592180807254

/-! ## A106891.P7766817120189551078

`∩[A341788(n+1), A260442(n)]`
-/

namespace A106891.P7766817120189551078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260442 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P7766817120189551078

/-! ## A106891.P12819823706879091995

`∩[A143578(n+1), A341788(n+1)]`
-/

namespace A106891.P12819823706879091995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P12819823706879091995

/-! ## A106891.P2506729438011659730

`record[A006530(A341788(n+3))]`
-/

namespace A106891.P2506729438011659730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A341788 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106891.P2506729438011659730

/-! ## A106891.P4157336399634188356

`filter[A341788(n+1), A008966(#)]`
-/

namespace A106891.P4157336399634188356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A106891.P4157336399634188356

/-! ## A106891.P17090316265018840949

`filter[A341788(n+1), A010051(#)]`
-/

namespace A106891.P17090316265018840949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106891.P17090316265018840949

/-! ## A106891.P10179220788150399670

`filter[A341788(n+1), A066829(#)]`
-/

namespace A106891.P10179220788150399670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A106891.P10179220788150399670

/-! ## A106891.P18369570537743625966

`∩[A063752(n+1), A341788(n+1)]`
-/

namespace A106891.P18369570537743625966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106891.P18369570537743625966

/-! ## A106891.P14185165582610777790

`filter[A341788(n+1), A257531(#)]`
-/

namespace A106891.P14185165582610777790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A106891.P14185165582610777790

/-! ## A106891.P13671541116211772648

`filter[A341788(n+1), A049240(#)]`
-/

namespace A106891.P13671541116211772648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A106891.P13671541116211772648

/-! ## A106891.P412429401727175319

`filter[A341788(n+1), A099104(#)]`
-/

namespace A106891.P412429401727175319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A099104 (f1 j).toNat = 1) n)

end

end A106891.P412429401727175319

/-! ## A106891.P12086002878778059247

`filter[A341788(n+1), A174897(#)]`
-/

namespace A106891.P12086002878778059247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A106891.P12086002878778059247

/-! ## A106891.P4213219468757996565

`filter[A341788(n+1), A181183(#)]`
-/

namespace A106891.P4213219468757996565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A106891.P4213219468757996565

/-! ## A106891.P16154160535041995122

`filter[A341788(n+1), A252233(#)]`
-/

namespace A106891.P16154160535041995122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A106891.P16154160535041995122

/-! ## A106891.P3036284454199824459

`filter[A341788(n+1), A262684(#)]`
-/

namespace A106891.P3036284454199824459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A106891.P3036284454199824459

/-!
# A106892: Primes of the form 3x^2+2xy+4y^2, with x and y nonnegative.

The programs for A106892, there is no canonical definition to state claims against.
-/

/-! ## A106892.P15062000633269563235

`A106282(lt[A090677(2*(n+2)), A001221(n+1)])`
-/

namespace A106892.P15062000633269563235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090677 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106282 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106892.P15062000633269563235

/-! ## A106892.P12492992604852682474

`A152451(A172445(n+1))`
-/

namespace A106892.P12492992604852682474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (A172445 (n + 1)).toNat

end

end A106892.P12492992604852682474

/-!
# A106893: Primes of the form 3x^2-2xy+4y^2, with x and y nonnegative.

The programs for A106893, there is no canonical definition to state claims against.
-/

/-! ## A106893.P10695830932600760806

`∩[A106282(n+1), A332109(n+1)]`
-/

namespace A106893.P10695830932600760806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106893.P10695830932600760806

/-! ## A106893.P8103394845652267605

`∩[A030749(n+1), A106307(n+1)]`
-/

namespace A106893.P8103394845652267605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106893.P8103394845652267605

/-!
# A106894: Primes of the form 3x^2+xy+4y^2, with x and y nonnegative.

The programs for A106894, there is no canonical definition to state claims against.
-/

/-! ## A106894.P1896569960499570012

`A000040(eq[A181651(n), A316863(n)])`
-/

namespace A106894.P1896569960499570012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181651 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106894.P1896569960499570012

/-!
# A106895: Primes of the form 3x^2+xy+4y^2.

The programs for A106895, there is no canonical definition to state claims against.
-/

/-! ## A106895.P4241560399442931423

`∪[A106894(n+1), A106896(n+1)]`
-/

namespace A106895.P4241560399442931423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P4241560399442931423

/-! ## A106895.P16987022082770316954

`p?[A243653(n)]`
-/

namespace A106895.P16987022082770316954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106895.P16987022082770316954

/-! ## A106895.P4976713723050664469

`record[A020639(A243653(n+1))]`
-/

namespace A106895.P4976713723050664469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A243653 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106895.P4976713723050664469

/-! ## A106895.P16438470935975712968

`filter[A243653(n+1), A010051(#)]`
-/

namespace A106895.P16438470935975712968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A106895.P16438470935975712968

/-! ## A106895.P8205948958063936486

`∩[A000040(n+1), A243653(n)]`
-/

namespace A106895.P8205948958063936486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P8205948958063936486

/-! ## A106895.P3797293856949540402

`∩[A004139(n+1), A243653(n)]`
-/

namespace A106895.P3797293856949540402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P3797293856949540402

/-! ## A106895.P3863923498555403610

`∩[A006005(n+1), A243653(n)]`
-/

namespace A106895.P3863923498555403610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P3863923498555403610

/-! ## A106895.P4919118454312052680

`∩[A008578(n+1), A243653(n)]`
-/

namespace A106895.P4919118454312052680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P4919118454312052680

/-! ## A106895.P13301923015198361757

`∩[A033946(n+1), A243653(n)]`
-/

namespace A106895.P13301923015198361757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P13301923015198361757

/-! ## A106895.P9789152064961949279

`∩[A045319(n+1), A243653(n)]`
-/

namespace A106895.P9789152064961949279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P9789152064961949279

/-! ## A106895.P14785794640926054661

`∩[A065091(n+1), A243653(n)]`
-/

namespace A106895.P14785794640926054661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P14785794640926054661

/-! ## A106895.P5290445571044371506

`∩[A065396(n+1), A243653(n)]`
-/

namespace A106895.P5290445571044371506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P5290445571044371506

/-! ## A106895.P7798570112205609621

`∩[A097605(n+1), A243653(n)]`
-/

namespace A106895.P7798570112205609621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P7798570112205609621

/-! ## A106895.P16846226726247589635

`∩[A326715(n+1), A243653(n)]`
-/

namespace A106895.P16846226726247589635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P16846226726247589635

/-! ## A106895.P15628685432701880100

`filter[A243653(n+1), A080339(#)]`
-/

namespace A106895.P15628685432701880100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A106895.P15628685432701880100

/-! ## A106895.P6923135229830304610

`filter[A243653(n+1), A080545(#)]`
-/

namespace A106895.P6923135229830304610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A106895.P6923135229830304610

/-! ## A106895.P4458583184434021858

`∩[A087749(n+1), A243653(n)]`
-/

namespace A106895.P4458583184434021858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087749 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106895.P4458583184434021858

/-!
# A106896: Primes of the form 3x^2-xy+4y^2, with x and y nonnegative.

The programs for A106896, there is no canonical definition to state claims against.
-/

/-! ## A106896.P4176232388625842254

`A384354(A238806(n+1))`
-/

namespace A106896.P4176232388625842254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384354 (A238806 (n + 1)).toNat

end

end A106896.P4176232388625842254

/-! ## A106896.P3516899500749387226

`A338938(∑[record[A101330(n+1)]])`
-/

namespace A106896.P3516899500749387226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101330 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106896.P3516899500749387226

/-!
# A106897: Primes of the form 2x^2+xy+6y^2, with x and y nonnegative.

The programs for A106897, there is no canonical definition to state claims against.
-/

/-! ## A106897.P1301550954239030779

`∩[A019413(n+1), A243652(n)]`
-/

namespace A106897.P1301550954239030779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106897.P1301550954239030779

/-!
# A106898: Primes of the form 2x^2+xy+6y^2.

The programs for A106898, there is no canonical definition to state claims against.
-/

/-! ## A106898.P17995380749352415105

`∪[A106897(n+1), A106899(n+1)]`
-/

namespace A106898.P17995380749352415105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106898.P17995380749352415105

/-! ## A106898.P12320126401402453889

`p?[(n+2)*A256538(n+2)]`
-/

namespace A106898.P12320126401402453889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A256538 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106898.P12320126401402453889

/-! ## A106898.P10350261946928783055

`record[A020639(n+6)*A033806(n)]`
-/

namespace A106898.P10350261946928783055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 6) * A033806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106898.P10350261946928783055

/-! ## A106898.P16082773330236496674

`record[A014963(n+2)*A256538(n+2)]`
-/

namespace A106898.P16082773330236496674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) * A256538 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106898.P16082773330236496674

/-! ## A106898.P11816714064083803303

`record[A053815(n+2)*A256538(n+2)]`
-/

namespace A106898.P11816714064083803303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053815 (n + 2) * A256538 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106898.P11816714064083803303

/-! ## A106898.P2928140457583899314

`record[A000040(n+1)*A256538(A000040(n+1))]`
-/

namespace A106898.P2928140457583899314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A256538 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106898.P2928140457583899314

/-!
# A106899: Primes of the form 2x^2-xy+6y^2, with x and y nonnegative.

The programs for A106899, there is no canonical definition to state claims against.
-/

/-! ## A106899.P8356980405830444443

`∩[A048413(n+1), A243652(n)]`
-/

namespace A106899.P8356980405830444443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243652 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106899.P8356980405830444443

/-! ## A106899.P13395357225359712486

`p?[C(A360135(n+1), A360119(n+4))]`
-/

namespace A106899.P13395357225359712486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A360135 (n + 1)).toNat (A360119 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106899.P13395357225359712486

