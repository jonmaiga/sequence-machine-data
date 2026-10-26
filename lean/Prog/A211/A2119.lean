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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
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
# A211900: Number of triangular nXnXn arrays colored with integers 0 upwards introduced in row major order, with no element equal to any neighbor, and containing the value n(n+1)/2-3.

The programs for A211900, there is no canonical definition to state claims against.
-/

/-! ## A211900.P7093190062550830906

`A211904(∑[n+2])`
-/

namespace A211900.P7093190062550830906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211900.P7093190062550830906

/-! ## A211900.P10078974116947922739

`record[A129186(n)*A211904(n+1)]`
-/

namespace A211900.P10078974116947922739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A211904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211900.P10078974116947922739

/-! ## A211900.P9322677500404382493

`A326682(n)+A211904(A101881(2*n+1))`
-/

namespace A211900.P9322677500404382493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326682 n + A211904 (A101881 (2 * n + 1)).toNat

end

end A211900.P9322677500404382493

/-!
# A211901: Number of triangular nXnXn arrays colored with integers 0 upwards introduced in row major order, with no element equal to any neighbor, and containing the value n(n+1)/2-4.

The programs for A211901, there is no canonical definition to state claims against.
-/

/-! ## A211901.P1085402152752572971

`A211904(∑[n+3]+1)`
-/

namespace A211901.P1085402152752572971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211901.P1085402152752572971

/-!
# A211902: Number of triangular nXnXn arrays colored with integers 0 upwards introduced in row major order, with no element equal to any neighbor, and containing the value n(n+1)/2-5.

The programs for A211902, there is no canonical definition to state claims against.
-/

/-! ## A211902.P319586458810656196

`A211904(A141214(n+1))`
-/

namespace A211902.P319586458810656196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (A141214 (n + 1)).toNat

end

end A211902.P319586458810656196

/-! ## A211902.P10065213607636540022

`A211904(A155212(n)+5)`
-/

namespace A211902.P10065213607636540022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (A155212 n + 5).toNat

end

end A211902.P10065213607636540022

/-! ## A211902.P7926449188192009819

`A211904(A056000(n)+7)`
-/

namespace A211902.P7926449188192009819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (A056000 n + 7).toNat

end

end A211902.P7926449188192009819

/-! ## A211902.P18099650406436457356

`A211904(eq[2, A054123(n)])`
-/

namespace A211902.P18099650406436457356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211902.P18099650406436457356

/-! ## A211902.P1853300504178877691

`A211904(eq[3, A193592(n)])`
-/

namespace A211902.P1853300504178877691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211902.P1853300504178877691

/-!
# A211903: Number of triangular nXnXn arrays colored with integers 0 upwards introduced in row major order, with no element equal to any neighbor, and containing the value n(n+1)/2-6.

The programs for A211903, there is no canonical definition to state claims against.
-/

/-! ## A211903.P1677432266954733111

`A211904(Δ[A264443(n)])`
-/

namespace A211903.P1677432266954733111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (f1 (n + 1) - f1 n).toNat

end

end A211903.P1677432266954733111

/-! ## A211903.P805645182251063498

`A211904(A056115(n)+11)`
-/

namespace A211903.P805645182251063498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (A056115 n + 11).toNat

end

end A211903.P805645182251063498

/-! ## A211903.P11207306995876779682

`A211904(eq[2, A092921(n)])`
-/

namespace A211903.P11207306995876779682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211903.P11207306995876779682

/-! ## A211903.P4401286730439270959

`A211904(eq[4, A054123(n)])`
-/

namespace A211903.P4401286730439270959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211903.P4401286730439270959

/-!
# A211905: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor, and containing the value n(n+1)/2-2.

The programs for A211905, the canonical program `A211905.P258072966074033629` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211905 has offset 1).

The definition of A211905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211905.P3334154453618132987

`∑[n*(∑[n-char[2]]+n)]`
-/

namespace A211905.P3334154453618132987
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211905.P3334154453618132987

namespace A211905

/-- `∑[n*(∑[n-char[2]]+n)]` -/
def P3334154453618132987.Spec : Prop :=
  ∀ n, P3334154453618132987.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P2227331236325461779

`C(∑[floor(atan(n)+n)], 2)+2*n`
-/

namespace A211905.P2227331236325461779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 2 * n

end

end A211905.P2227331236325461779

namespace A211905

/-- `C(∑[floor(atan(n)+n)], 2)+2*n` -/
def P2227331236325461779.Spec : Prop :=
  ∀ n, (P2227331236325461779.a n : ℤ) = A211905 (n + 1)

end A211905

/-! ## A211905.P10780930201709629527

`C(∑[floor(atan(n)+n)], 2)+n+n`
-/

namespace A211905.P10780930201709629527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + n + n

end

end A211905.P10780930201709629527

namespace A211905

/-- `C(∑[floor(atan(n)+n)], 2)+n+n` -/
def P10780930201709629527.Spec : Prop :=
  ∀ n, (P10780930201709629527.a n : ℤ) = A211905 (n + 1)

end A211905

/-! ## A211905.P258072966074033629

`C(abs(2-∑[n+1]), 2)+2*n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211905

/-- `C(abs(2-∑[n+1]), 2)+2*n` -/
def P258072966074033629.Spec : Prop :=
  ∀ n, (P258072966074033629.a n : ℤ) = A211905 (n + 1)

theorem P258072966074033629.correct : P258072966074033629.Spec := by
  intro n
  simp only [A211905, Nat.add_sub_cancel]

end A211905

/-! ## A211905.P313298209170914622

`C(∑[n]+abs(1-n), 2)+n+n`
-/

namespace A211905.P313298209170914622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |1 - (n : ℤ)|).toNat 2 + n + n

end

end A211905.P313298209170914622

namespace A211905

/-- `C(∑[n]+abs(1-n), 2)+n+n` -/
def P313298209170914622.Spec : Prop :=
  ∀ n, (P313298209170914622.a n : ℤ) = A211905 (n + 1)

end A211905

/-! ## A211905.P9215772040062497754

`∑[char[1]+(n+4)*C(n, 2)]+∑[n]`
-/

namespace A211905.P9215772040062497754
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + (n + 4) * Nat.choose n 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f3 j

end

end A211905.P9215772040062497754

namespace A211905

/-- `∑[char[1]+(n+4)*C(n, 2)]+∑[n]` -/
def P9215772040062497754.Spec : Prop :=
  ∀ n, (P9215772040062497754.a n : ℤ) = A211905 (n + 1)

end A211905

/-! ## A211905.P3419626415433170935

`∑[n*(∑[n+1]-2)]+ceil(sin(n)²)`
-/

namespace A211905.P3419626415433170935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A211905.P3419626415433170935

namespace A211905

/-- `∑[n*(∑[n+1]-2)]+ceil(sin(n)²)` -/
def P3419626415433170935.Spec : Prop :=
  ∀ n, P3419626415433170935.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P8263840662932126468

`a(n-1)+n*(∑[n+1]-2)` with `a(0)=0, a(1)=2`
-/

namespace A211905.P8263840662932126468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  a (n - 1) + (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A211905.P8263840662932126468

namespace A211905

/-- `a(n-1)+n*(∑[n+1]-2)` -/
def P8263840662932126468.Spec : Prop :=
  ∀ n, P8263840662932126468.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P12662639362818738349

`∑[n*(∑[n+1]-2)]+floor(atan(n+1))`
-/

namespace A211905.P12662639362818738349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A211905.P12662639362818738349

namespace A211905

/-- `∑[n*(∑[n+1]-2)]+floor(atan(n+1))` -/
def P12662639362818738349.Spec : Prop :=
  ∀ n, P12662639362818738349.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P15849511635840701749

`∑[n*(∑[n+1]-2)]-(C(2, n+2)-1)`
-/

namespace A211905.P15849511635840701749
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((Nat.choose 2 (n + 2) : ℤ) - 1)

end

end A211905.P15849511635840701749

namespace A211905

/-- `∑[n*(∑[n+1]-2)]-(C(2, n+2)-1)` -/
def P15849511635840701749.Spec : Prop :=
  ∀ n, P15849511635840701749.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P10289173660339639042

`A211958(n+1)-n`
-/

namespace A211905.P10289173660339639042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) - (n : ℤ)

end

end A211905.P10289173660339639042

namespace A211905

/-- `A211958(n+1)-n` -/
def P10289173660339639042.Spec : Prop :=
  ∀ n, P10289173660339639042.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P4815655657935230176

`A211911(n+1)+n²`
-/

namespace A211905.P4815655657935230176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + (n ^ 2 : ℤ)

end

end A211905.P4815655657935230176

namespace A211905

/-- `A211911(n+1)+n²` -/
def P4815655657935230176.Spec : Prop :=
  ∀ n, P4815655657935230176.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P2935211839420919357

`A211899(n+1)+∑[n]`
-/

namespace A211905.P2935211839420919357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211899 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211905.P2935211839420919357

namespace A211905

/-- `A211899(n+1)+∑[n]` -/
def P2935211839420919357.Spec : Prop :=
  ∀ n, P2935211839420919357.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P8240222822540019636

`A212039(n+1)+A000384(n)`
-/

namespace A211905.P8240222822540019636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212039 (n + 1) + A000384 n

end

end A211905.P8240222822540019636

namespace A211905

/-- `A212039(n+1)+A000384(n)` -/
def P8240222822540019636.Spec : Prop :=
  ∀ n, P8240222822540019636.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P11518032506941841324

`A212031(n+1)+A067998(n)`
-/

namespace A211905.P11518032506941841324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212031 (n + 1) + A067998 n

end

end A211905.P11518032506941841324

namespace A211905

/-- `A212031(n+1)+A067998(n)` -/
def P11518032506941841324.Spec : Prop :=
  ∀ n, P11518032506941841324.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P3157265024317780202

`A211924(n+1)+A161680(n)`
-/

namespace A211905.P3157265024317780202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211924 (n + 1) + A161680 n

end

end A211905.P3157265024317780202

namespace A211905

/-- `A211924(n+1)+A161680(n)` -/
def P3157265024317780202.Spec : Prop :=
  ∀ n, P3157265024317780202.a n = A211905 (n + 1)

end A211905

/-! ## A211905.P3618664701424666016

`A016028(A000124(n+1))-A152948(n+1)`
-/

namespace A211905.P3618664701424666016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016028 (A000124 (n + 1)).toNat - A152948 (n + 1)

end

end A211905.P3618664701424666016

namespace A211905

/-- `A016028(A000124(n+1))-A152948(n+1)` -/
def P3618664701424666016.Spec : Prop :=
  ∀ n, P3618664701424666016.a n = A211905 (n + 1)

end A211905

/-!
# A211906: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor, and containing the value n(n+1)/2-3.

The programs for A211906, there is no canonical definition to state claims against.
-/

/-! ## A211906.P3388981564888007619

`A211910(∑[n+2])`
-/

namespace A211906.P3388981564888007619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211906.P3388981564888007619

/-! ## A211906.P6855599373131979096

`record[A211910(A000096(val(n+1, 2)+1))]`
-/

namespace A211906.P6855599373131979096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211906.P6855599373131979096

/-! ## A211906.P1733594344215102474

`A211910(A000096(n+1))%A102877(2*(n+1))`
-/

namespace A211906.P1733594344215102474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211910 (A000096 (n + 1)).toNat) (A102877 (2 * (n + 1)))

end

end A211906.P1733594344215102474

/-! ## A211906.P4447177117491545410

`A211910(A117142(2*(n+1)))%A102877(2*(n+1))`
-/

namespace A211906.P4447177117491545410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211910 (A117142 (2 * (n + 1))).toNat) (A102877 (2 * (n + 1)))

end

end A211906.P4447177117491545410

/-!
# A211907: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor, and containing the value n(n+1)/2-4.

The programs for A211907, there is no canonical definition to state claims against.
-/

/-! ## A211907.P1940190992680596614

`A211910(∑[n+3]+1)`
-/

namespace A211907.P1940190992680596614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211907.P1940190992680596614

/-! ## A211907.P2547531162912406407

`A054977(n)*A211910(Δ[A008778(n)])`
-/

namespace A211907.P2547531162912406407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A211910 (f1 (n + 1) - f1 n).toNat

end

end A211907.P2547531162912406407

/-! ## A211907.P2838706218120635001

`A211910(A034856(n+2))%A340532(n)`
-/

namespace A211907.P2838706218120635001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211910 (A034856 (n + 2)).toNat) (A340532 n)

end

end A211907.P2838706218120635001

/-! ## A211907.P10306135223941859106

`A211910(Δ[A008778(n)])+A000038(n+1)`
-/

namespace A211907.P10306135223941859106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (f1 (n + 1) - f1 n).toNat + A000038 (n + 1)

end

end A211907.P10306135223941859106

/-! ## A211907.P257137757545753364

`A211910(Δ[A008778(n)])+A180834(n+1)`
-/

namespace A211907.P257137757545753364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (f1 (n + 1) - f1 n).toNat + A180834 (n + 1)

end

end A211907.P257137757545753364

/-!
# A211908: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor, and containing the value n(n+1)/2-5.

The programs for A211908, there is no canonical definition to state claims against.
-/

/-! ## A211908.P10276011584833482128

`A211910(∑[n+1]+3*(n+2))`
-/

namespace A211908.P10276011584833482128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (∑ j ∈ Finset.range (n + 1), f1 j + 3 * (n + 2))

end

end A211908.P10276011584833482128

/-!
# A211909: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor, and containing the value n(n+1)/2-6.

The programs for A211909, there is no canonical definition to state claims against.
-/

/-! ## A211909.P13932447224568017018

`A211910(∑[n+5]+6)`
-/

namespace A211909.P13932447224568017018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A211909.P13932447224568017018

/-! ## A211909.P18154034279507206902

`A224989(A262626(n+1))+A211910(A046691(n+3))`
-/

namespace A211909.P18154034279507206902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224989 (A262626 (n + 1)).toNat + A211910 (A046691 (n + 3)).toNat

end

end A211909.P18154034279507206902

/-! ## A211909.P4751474414149709547

`A211910(A046691(n+3))+A211910(A262626(n+5))`
-/

namespace A211909.P4751474414149709547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211910 (A046691 (n + 3)).toNat + A211910 (A262626 (n + 5)).toNat

end

end A211909.P4751474414149709547

/-! ## A211909.P15805119881707990134

`A224989(A001222(3*n+5))+A211910(A046691(n+3))`
-/

namespace A211909.P15805119881707990134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224989 (A001222 (3 * n + 5)).toNat + A211910 (A046691 (n + 3)).toNat

end

end A211909.P15805119881707990134

/-!
# A211910: T(n,k)=Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal or vertical neighbor, and containing the value n(n+1)/2-k-1.

The programs for A211910, there is no canonical definition to state claims against.
-/

/-! ## A211910.P12807879445119818027

`A282130(A187370(5*n+1))%A028310(4*n)`
-/

namespace A211910.P12807879445119818027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282130 (A187370 (5 * n + 1)).toNat) (A028310 (4 * n))

end

end A211910.P12807879445119818027

/-!
# A211911: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-2.

The programs for A211911, the canonical program `A211911.P14031019345413723703` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211911 has offset 1).

The definition of A211911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211911.P3723917721320378539

`∑[n*(∑[n-char[2]]+n)]-n²`
-/

namespace A211911.P3723917721320378539
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A211911.P3723917721320378539

namespace A211911

/-- `∑[n*(∑[n-char[2]]+n)]-n²` -/
def P3723917721320378539.Spec : Prop :=
  ∀ n, P3723917721320378539.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P14031019345413723703

`abs(2*n-A212031(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A211911

/-- `abs(2*n-A212031(n+1))` -/
def P14031019345413723703.Spec : Prop :=
  ∀ n, P14031019345413723703.a n = A211911 (n + 1)

theorem P14031019345413723703.correct : P14031019345413723703.Spec := by
  intro n
  simp only [A211911, Nat.add_sub_cancel]

end A211911

/-! ## A211911.P4400616741430357227

`abs(∑[2*n]-A211958(n+1))`
-/

namespace A211911.P4400616741430357227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A211958 (n + 1)|

end

end A211911.P4400616741430357227

namespace A211911

/-- `abs(∑[2*n]-A211958(n+1))` -/
def P4400616741430357227.Spec : Prop :=
  ∀ n, P4400616741430357227.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P10991395481322336271

`abs(A211924(n+1)-A000217(n))`
-/

namespace A211911.P10991395481322336271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A211924 (n + 1) - A000217 n|

end

end A211911.P10991395481322336271

namespace A211911

/-- `abs(A211924(n+1)-A000217(n))` -/
def P10991395481322336271.Spec : Prop :=
  ∀ n, P10991395481322336271.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P14894741460664852335

`(A211924(n+1)-A000217(n))*A001222(A000705(n+1))`
-/

namespace A211911.P14894741460664852335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) - A000217 n) * A001222 (A000705 (n + 1)).toNat

end

end A211911.P14894741460664852335

namespace A211911

/-- `(A211924(n+1)-A000217(n))*A001222(A000705(n+1))` -/
def P14894741460664852335.Spec : Prop :=
  ∀ n, P14894741460664852335.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P3161845505591812586

`(A211924(n+1)-A000217(n))*A087267(A087268(n+1))`
-/

namespace A211911.P3161845505591812586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) - A000217 n) * A087267 (A087268 (n + 1)).toNat

end

end A211911.P3161845505591812586

namespace A211911

/-- `(A211924(n+1)-A000217(n))*A087267(A087268(n+1))` -/
def P3161845505591812586.Spec : Prop :=
  ∀ n, P3161845505591812586.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P14161740269313779361

`(A211924(n+1)-A000217(n))*A087267(A087269(n+1))`
-/

namespace A211911.P14161740269313779361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) - A000217 n) * A087267 (A087269 (n + 1)).toNat

end

end A211911.P14161740269313779361

namespace A211911

/-- `(A211924(n+1)-A000217(n))*A087267(A087269(n+1))` -/
def P14161740269313779361.Spec : Prop :=
  ∀ n, P14161740269313779361.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P4735501826421888962

`(A211924(n+1)-A000217(n))*A087256(A099375(n))`
-/

namespace A211911.P4735501826421888962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) - A000217 n) * A087256 (A099375 n).toNat

end

end A211911.P4735501826421888962

namespace A211911

/-- `(A211924(n+1)-A000217(n))*A087256(A099375(n))` -/
def P4735501826421888962.Spec : Prop :=
  ∀ n, P4735501826421888962.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P10844379250081154802

`(A211924(n+1)-A000217(n))*A087267(A087273(n+1))`
-/

namespace A211911.P10844379250081154802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) - A000217 n) * A087267 (A087273 (n + 1)).toNat

end

end A211911.P10844379250081154802

namespace A211911

/-- `(A211924(n+1)-A000217(n))*A087267(A087273(n+1))` -/
def P10844379250081154802.Spec : Prop :=
  ∀ n, P10844379250081154802.a n = A211911 (n + 1)

end A211911

/-! ## A211911.P4812031034318851178

`(A211924(n+1)-A000217(n))*A087267(A087272(n+2))`
-/

namespace A211911.P4812031034318851178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) - A000217 n) * A087267 (A087272 (n + 2)).toNat

end

end A211911.P4812031034318851178

namespace A211911

/-- `(A211924(n+1)-A000217(n))*A087267(A087272(n+2))` -/
def P4812031034318851178.Spec : Prop :=
  ∀ n, P4812031034318851178.a n = A211911 (n + 1)

end A211911

/-!
# A211912: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-3.

The programs for A211912, there is no canonical definition to state claims against.
-/

/-! ## A211912.P4160999195225148068

`A211916(∑[n+2])`
-/

namespace A211912.P4160999195225148068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211912.P4160999195225148068

/-! ## A211912.P3952737492542655649

`record[A211916(A000096(val(n+1, 2)+1))]`
-/

namespace A211912.P3952737492542655649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211912.P3952737492542655649

/-! ## A211912.P591213361705302935

`record[A211916(A000096(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A211912.P591213361705302935
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 (A000096 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211912.P591213361705302935

/-! ## A211912.P5724682547991091199

`A211916(A117142(2*(n+1)))%A102877(2*(n+1))`
-/

namespace A211912.P5724682547991091199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211916 (A117142 (2 * (n + 1))).toNat) (A102877 (2 * (n + 1)))

end

end A211912.P5724682547991091199

/-! ## A211912.P3136303049328765

`A060576(A079200(n))*A211916(A000096(n+1))`
-/

namespace A211912.P3136303049328765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A079200 n).toNat * A211916 (A000096 (n + 1)).toNat

end

end A211912.P3136303049328765

/-!
# A211913: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-4.

The programs for A211913, there is no canonical definition to state claims against.
-/

/-! ## A211913.P11036032871824160564

`A211916(∑[n+3]+1)`
-/

namespace A211913.P11036032871824160564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211913.P11036032871824160564

/-!
# A211914: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-5.

The programs for A211914, there is no canonical definition to state claims against.
-/

/-! ## A211914.P16026204659284632952

`A211916(Δ[n²]+∑[n+2]+4)`
-/

namespace A211914.P16026204659284632952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A211914.P16026204659284632952

/-! ## A211914.P944526757530389669

`A211916(A141214(n+1))%A263945(n+1)`
-/

namespace A211914.P944526757530389669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211916 (A141214 (n + 1)).toNat) (A263945 (n + 1))

end

end A211914.P944526757530389669

/-!
# A211915: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical, diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-6.

The programs for A211915, there is no canonical definition to state claims against.
-/

/-! ## A211915.P3892686301691054311

`A211916(∑[n+5]+6)`
-/

namespace A211915.P3892686301691054311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211916 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A211915.P3892686301691054311

/-!
# A211917: Number of (w,x,y,z) with all terms in {1,...,n} and w*x

The programs for A211917, there is no canonical definition to state claims against.
-/

/-! ## A211917.P9767996915225115312

`n^4-A211919(n)`
-/

namespace A211917.P9767996915225115312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211919 n

end

end A211917.P9767996915225115312

/-! ## A211917.P13141344721708796897

`A211812(n)-A212020(n)`
-/

namespace A211917.P13141344721708796897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211812 n - A212020 n

end

end A211917.P13141344721708796897

/-! ## A211917.P14996727734622647226

`abs(A000583(n)-A211919(n))`
-/

namespace A211917.P14996727734622647226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211919 n|

end

end A211917.P14996727734622647226

/-! ## A211917.P11314670167628057797

`A002523(n)-(A211919(n)+1)`
-/

namespace A211917.P11314670167628057797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211919 n + 1)

end

end A211917.P11314670167628057797

/-! ## A211917.P17509841680527151334

`abs(A000290(n)²-A211919(n))`
-/

namespace A211917.P17509841680527151334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A211919 n|

end

end A211917.P17509841680527151334

/-! ## A211917.P10912786694441413103

`A091940(n+1)-(A211919(n)+n)`
-/

namespace A211917.P10912786694441413103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1) - (A211919 n + (n : ℤ))

end

end A211917.P10912786694441413103

/-! ## A211917.P13569733910748351536

`A211787(n)+A211797(n)-A211919(n)`
-/

namespace A211917.P13569733910748351536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A211919 n)

end

end A211917.P13569733910748351536

/-! ## A211917.P6647160925974674722

`A212673(n)+A212674(n)-A211919(n)`
-/

namespace A211917.P6647160925974674722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A211919 n)

end

end A211917.P6647160925974674722

/-! ## A211917.P10547138331587145526

`A000583(n)-A054977(n)*A211919(n)`
-/

namespace A211917.P10547138331587145526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A054977 n * A211919 n

end

end A211917.P10547138331587145526

/-! ## A211917.P1437473883198725549

`A000007(n+1)-(A211919(n)-A000583(n))`
-/

namespace A211917.P1437473883198725549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A211919 n - A000583 n)

end

end A211917.P1437473883198725549

/-! ## A211917.P7284996587527410042

`A000038(n+1)-(A211919(n)-A000583(n))`
-/

namespace A211917.P7284996587527410042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - (A211919 n - A000583 n)

end

end A211917.P7284996587527410042

/-! ## A211917.P280281705968990632

`A000035(2*n)-(A211919(n)-A000583(n))`
-/

namespace A211917.P280281705968990632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - (A211919 n - A000583 n)

end

end A211917.P280281705968990632

/-! ## A211917.P17421389705053309090

`-((A211919(n)-A000583(n))*A007318(C(2, n)))`
-/

namespace A211917.P17421389705053309090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((A211919 n - A000583 n) * A007318 (Nat.choose 2 n))

end

end A211917.P17421389705053309090

/-! ## A211917.P4697237393139924651

`char[A252334(n+1)]+A000583(n)-A211919(n)`
-/

namespace A211917.P4697237393139924651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252334 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A211919 n)

end

end A211917.P4697237393139924651

/-! ## A211917.P650190874881865401

`A008683(4*(n+1))-(A211919(n)-A000583(n))`
-/

namespace A211917.P650190874881865401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - (A211919 n - A000583 n)

end

end A211917.P650190874881865401

/-! ## A211917.P14607634271038378843

`(2*A000041(n))%2-(A211919(n)-A000583(n))`
-/

namespace A211917.P14607634271038378843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A000041 n) 2 - (A211919 n - A000583 n)

end

end A211917.P14607634271038378843

/-! ## A211917.P17359043060542016724

`(A211919(n)-A000583(n))*-1%A020639(n+1)`
-/

namespace A211917.P17359043060542016724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211919 n - A000583 n) * Int.tmod (-1) (A020639 (n + 1))

end

end A211917.P17359043060542016724

/-! ## A211917.P2523693558608160527

`lcm(A211919(n)-A000583(n), (3*(n+1))%A016789(n))`
-/

namespace A211917.P2523693558608160527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A211919 n - A000583 n) (Int.tmod (3 * (n + 1) : ℤ) (A016789 n))

end

end A211917.P2523693558608160527

/-! ## A211917.P7698302587081697807

`A000583(n)+A056965(A128630(n))-A211919(n)`
-/

namespace A211917.P7698302587081697807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (A056965 (A128630 n).toNat - A211919 n)

end

end A211917.P7698302587081697807

/-! ## A211917.P14589356164975350401

`A000583(n)+A008683(A173970(n+1))*A211919(n)`
-/

namespace A211917.P14589356164975350401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A173970 (n + 1)).toNat * A211919 n

end

end A211917.P14589356164975350401

/-!
# A211918: Number of (w,x,y,z) with all terms in {1,...,n} and w*x>3*y*z.

The programs for A211918, there is no canonical definition to state claims against.
-/

/-! ## A211918.P7928197605669897753

`A211919(n)-A212020(n)`
-/

namespace A211918.P7928197605669897753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211919 n - A212020 n

end

end A211918.P7928197605669897753

/-! ## A211918.P16482853453813726605

`n^4-A211812(n)`
-/

namespace A211918.P16482853453813726605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211812 n

end

end A211918.P16482853453813726605

/-! ## A211918.P10062878786364931

`abs(A000583(n)-A211812(n))`
-/

namespace A211918.P10062878786364931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211812 n|

end

end A211918.P10062878786364931

/-! ## A211918.P9752345919836417478

`A002523(n)-(A211812(n)+1)`
-/

namespace A211918.P9752345919836417478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211812 n + 1)

end

end A211918.P9752345919836417478

/-! ## A211918.P14662475774566650317

`abs(A011863(2*n)-A211812(n))`
-/

namespace A211918.P14662475774566650317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011863 (2 * n) - A211812 n|

end

end A211918.P14662475774566650317

/-! ## A211918.P1225437414756386723

`A091940(n+1)-(A211812(n)+n)`
-/

namespace A211918.P1225437414756386723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091940 (n + 1) - (A211812 n + (n : ℤ))

end

end A211918.P1225437414756386723

/-! ## A211918.P287748322525794005

`A211787(n)+A211797(n)-A211812(n)`
-/

namespace A211918.P287748322525794005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A211812 n)

end

end A211918.P287748322525794005

/-! ## A211918.P18428195570502946872

`A212088(n)+A212089(n)-A211812(n)`
-/

namespace A211918.P18428195570502946872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A211812 n)

end

end A211918.P18428195570502946872

/-! ## A211918.P8577152549523787304

`A212249(n)+A212250(n)-A211812(n)`
-/

namespace A211918.P8577152549523787304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 n + (A212250 n - A211812 n)

end

end A211918.P8577152549523787304

/-! ## A211918.P6243433507918424756

`A212673(n)+A212674(n)-A211812(n)`
-/

namespace A211918.P6243433507918424756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212673 n + (A212674 n - A211812 n)

end

end A211918.P6243433507918424756

/-! ## A211918.P12913779513856127058

`A000007(n+1)+A000583(n)-A211812(n)`
-/

namespace A211918.P12913779513856127058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A211812 n)

end

end A211918.P12913779513856127058

/-! ## A211918.P1991270249531327542

`(A000583(n)-A211812(n))*A000108(C(2, n))`
-/

namespace A211918.P1991270249531327542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211812 n) * A000108 (Nat.choose 2 n)

end

end A211918.P1991270249531327542

/-! ## A211918.P13679717936043506483

`(A000583(n)-A211812(n))*A007318(C(2, n))`
-/

namespace A211918.P13679717936043506483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211812 n) * A007318 (Nat.choose 2 n)

end

end A211918.P13679717936043506483

/-! ## A211918.P8315080262700497279

`char[A000108(n+9)]+A000583(n)-A211812(n)`
-/

namespace A211918.P8315080262700497279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A000583 n - A211812 n)

end

end A211918.P8315080262700497279

/-! ## A211918.P4238568518142539607

`A008683(4*(n+1))+A000583(n)-A211812(n)`
-/

namespace A211918.P4238568518142539607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A211812 n)

end

end A211918.P4238568518142539607

/-! ## A211918.P12581473877033559584

`(A000583(n)-A211812(n))/A014963(6*(n+1))`
-/

namespace A211918.P12581473877033559584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211812 n : ℚ) / (A014963 (6 * (n + 1)) : ℚ)

end

end A211918.P12581473877033559584

/-! ## A211918.P9476844136062290983

`(A000583(n)-A211812(n))*A000040(n+1)%2`
-/

namespace A211918.P9476844136062290983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211812 n) * Int.tmod (A000040 (n + 1)) 2

end

end A211918.P9476844136062290983

/-! ## A211918.P6890790982598606985

`(A000583(n)-A211812(n))*A000045(gcd(n, n+1))`
-/

namespace A211918.P6890790982598606985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211812 n) * A000045 (Nat.gcd n (n + 1))

end

end A211918.P6890790982598606985

/-! ## A211918.P9545911700501681897

`A212104(n)+A212105(n)-A211812(n)`
-/

namespace A211918.P9545911700501681897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212104 n + (A212105 n - A211812 n)

end

end A211918.P9545911700501681897

/-! ## A211918.P7581774259393063705

`A212106(n)+A212107(n)-A211812(n)`
-/

namespace A211918.P7581774259393063705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A211812 n)

end

end A211918.P7581774259393063705

/-!
# A211919: Number of (w,x,y,z) with all terms in {1,...,n} and w*x>=3*y*z.

The programs for A211919, there is no canonical definition to state claims against.
-/

/-! ## A211919.P14873632487682869646

`A212020(n)+A211918(n)`
-/

namespace A211919.P14873632487682869646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + A211918 n

end

end A211919.P14873632487682869646

/-! ## A211919.P569012505810677345

`n^4+A212020(n)-A211812(n)`
-/

namespace A211919.P569012505810677345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) + (A212020 n - A211812 n)

end

end A211919.P569012505810677345

/-! ## A211919.P8769941840371385498

`A212020(n)+A002523(n)-(A211812(n)+1)`
-/

namespace A211919.P8769941840371385498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A002523 n - (A211812 n + 1))

end

end A211919.P8769941840371385498

/-! ## A211919.P15818360803283004721

`A212020(n)+A011863(2*n)-A211812(n)`
-/

namespace A211919.P15818360803283004721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A011863 (2 * n) - A211812 n)

end

end A211919.P15818360803283004721

/-! ## A211919.P18096597974729032446

`A212020(n)+A091940(n+1)-(A211812(n)+n)`
-/

namespace A211919.P18096597974729032446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A091940 (n + 1) - (A211812 n + (n : ℤ)))

end

end A211919.P18096597974729032446

/-! ## A211919.P1855047367578139986

`A212020(n)+A212088(n)+A212089(n)-A211812(n)`
-/

namespace A211919.P1855047367578139986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A212088 n + (A212089 n - A211812 n))

end

end A211919.P1855047367578139986

/-! ## A211919.P11919566979538418260

`A212020(n)+A212249(n)+A212250(n)-A211812(n)`
-/

namespace A211919.P11919566979538418260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A212249 n + (A212250 n - A211812 n))

end

end A211919.P11919566979538418260

/-! ## A211919.P6358109315722093843

`A212020(n)+A008683(4*(n+1))+A000583(n)-A211812(n)`
-/

namespace A211919.P6358109315722093843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212020 n + (A008683 (4 * (n + 1)) + (A000583 n - A211812 n))

end

end A211919.P6358109315722093843

/-! ## A211919.P1885922924914345383

`n^4-A211917(n)`
-/

namespace A211919.P1885922924914345383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211917 n

end

end A211919.P1885922924914345383

/-! ## A211919.P14695347086360406763

`abs(A000583(n)-A211917(n))`
-/

namespace A211919.P14695347086360406763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211917 n|

end

end A211919.P14695347086360406763

/-! ## A211919.P2839075302900916563

`A002523(n)-(A211917(n)+1)`
-/

namespace A211919.P2839075302900916563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211917 n + 1)

end

end A211919.P2839075302900916563

/-! ## A211919.P1495410146942006321

`(n^4)%A211917(A028310(n))`
-/

namespace A211919.P1495410146942006321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 4 : ℤ) (A211917 (A028310 n).toNat)

end

end A211919.P1495410146942006321

/-! ## A211919.P3865010179332417509

`A211787(n)+A211797(n)-A211917(n)`
-/

namespace A211919.P3865010179332417509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A211917 n)

end

end A211919.P3865010179332417509

/-! ## A211919.P17726764565184980612

`A000007(n+1)+A000583(n)-A211917(n)`
-/

namespace A211919.P17726764565184980612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A211917 n)

end

end A211919.P17726764565184980612

/-! ## A211919.P3492211809998800770

`(A000583(n)-A211917(n))*A007318(C(2, n))`
-/

namespace A211919.P3492211809998800770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211917 n) * A007318 (Nat.choose 2 n)

end

end A211919.P3492211809998800770

/-! ## A211919.P4976065485013155171

`A008683(8*(n+1))+A000583(n)-A211917(n)`
-/

namespace A211919.P4976065485013155171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * (n + 1)) + (A000583 n - A211917 n)

end

end A211919.P4976065485013155171

/-!
# A211920: Number of (w,x,y,z) with all terms in {1,...,n} and 2*w*x

The programs for A211920, there is no canonical definition to state claims against.
-/

/-! ## A211920.P11051854303266876022

`n^4-A211923(n)`
-/

namespace A211920.P11051854303266876022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211923 n

end

end A211920.P11051854303266876022

/-! ## A211920.P2844231811349576207

`abs(A000583(n)-A211923(n))`
-/

namespace A211920.P2844231811349576207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211923 n|

end

end A211920.P2844231811349576207

/-! ## A211920.P16194843791464217087

`A002523(n)-(A211923(n)+1)`
-/

namespace A211920.P16194843791464217087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211923 n + 1)

end

end A211920.P16194843791464217087

/-! ## A211920.P859340102524419138

`1-(A211923(n)+A024002(n))`
-/

namespace A211920.P859340102524419138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A211923 n + A024002 n)

end

end A211920.P859340102524419138

/-! ## A211920.P12935406866133399032

`abs(A211923(n)-A000290(n)²)`
-/

namespace A211920.P12935406866133399032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A211923 n - A000290 n ^ 2|

end

end A211920.P12935406866133399032

/-! ## A211920.P12129119336388226769

`A211787(n)+A211797(n)-A211923(n)`
-/

namespace A211920.P12129119336388226769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A211923 n)

end

end A211920.P12129119336388226769

/-! ## A211920.P13793246940025958682

`A211917(n)+A211919(n)-A211923(n)`
-/

namespace A211920.P13793246940025958682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A211923 n)

end

end A211920.P13793246940025958682

/-! ## A211920.P11724099560355002479

`A212053(n)+A212054(n)-A211923(n)`
-/

namespace A211920.P11724099560355002479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + (A212054 n - A211923 n)

end

end A211920.P11724099560355002479

/-! ## A211920.P7291636911524043250

`A212065(n)+A212066(n)-A211923(n)`
-/

namespace A211920.P7291636911524043250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A211923 n)

end

end A211920.P7291636911524043250

/-! ## A211920.P11663702304092379692

`A000583(n)-A057427(n)*A211923(n)`
-/

namespace A211920.P11663702304092379692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A211923 n

end

end A211920.P11663702304092379692

/-! ## A211920.P13214838109419926226

`(A000007(n)+1)*(A000583(n)-A211923(n))`
-/

namespace A211920.P13214838109419926226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * (A000583 n - A211923 n)

end

end A211920.P13214838109419926226

/-! ## A211920.P16305443385100038174

`(A000583(n)-A211923(n))*gcd(3, A000040(n+2))`
-/

namespace A211920.P16305443385100038174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211923 n) * (Int.gcd 3 (A000040 (n + 2)) : ℤ)

end

end A211920.P16305443385100038174

/-! ## A211920.P966872525307216481

`(A000583(n)-A211923(n))*and(1, A000010(n+2))!`
-/

namespace A211920.P966872525307216481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211923 n) * (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℤ)

end

end A211920.P966872525307216481

/-! ## A211920.P17449663535579655896

`(A000583(n)-A211923(n))*record[A006530(n+2)]%2`
-/

namespace A211920.P17449663535579655896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211923 n) * Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A211920.P17449663535579655896

/-! ## A211920.P1120443316859038122

`(A000583(n)-A211923(n))*p?[A000040(n+1)+2]%2`
-/

namespace A211920.P1120443316859038122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211923 n) * Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A211920.P1120443316859038122

/-! ## A211920.P9760291921035785097

`A212106(n)+A212107(n)-A211923(n)`
-/

namespace A211920.P9760291921035785097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A211923 n)

end

end A211920.P9760291921035785097

/-! ## A211920.P9140028923635662524

`A211921(n)-A212021(n)`
-/

namespace A211920.P9140028923635662524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211921 n - A212021 n

end

end A211920.P9140028923635662524

/-!
# A211921: Number of (w,x,y,z) with all terms in {1,...,n} and 2w*x<=3*y*z.

The programs for A211921, there is no canonical definition to state claims against.
-/

/-! ## A211921.P11180195786010657780

`A212021(n)+A211920(n)`
-/

namespace A211921.P11180195786010657780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212021 n + A211920 n

end

end A211921.P11180195786010657780

/-! ## A211921.P6151106915639630811

`n^4-A211922(n)`
-/

namespace A211921.P6151106915639630811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211922 n

end

end A211921.P6151106915639630811

/-! ## A211921.P9421943885884621408

`abs(A000583(n)-A211922(n))`
-/

namespace A211921.P9421943885884621408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211922 n|

end

end A211921.P9421943885884621408

/-! ## A211921.P7934332815731183042

`A211917(n)+A211919(n)-A211922(n)`
-/

namespace A211921.P7934332815731183042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A211922 n)

end

end A211921.P7934332815731183042

/-! ## A211921.P14323202717926657728

`A211920(n)+A211923(n)-A211922(n)`
-/

namespace A211921.P14323202717926657728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211920 n + (A211923 n - A211922 n)

end

end A211921.P14323202717926657728

/-! ## A211921.P6950338248515782385

`A000583(n)+A057428(n)*A211922(n)`
-/

namespace A211921.P6950338248515782385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A057428 n * A211922 n

end

end A211921.P6950338248515782385

/-! ## A211921.P15076053601272852894

`A000583(n)-A057427(n)*A211922(n)`
-/

namespace A211921.P15076053601272852894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A211922 n

end

end A211921.P15076053601272852894

/-! ## A211921.P5307026742313828197

`(A000583(n)-A211922(n))*A187307(3*n)²`
-/

namespace A211921.P5307026742313828197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211922 n) * A187307 (3 * n) ^ 2

end

end A211921.P5307026742313828197

/-! ## A211921.P2676484298182013524

`(A000583(n)-A211922(n))*A129950(n+1)²!`
-/

namespace A211921.P2676484298182013524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211922 n) * (Nat.factorial (A129950 (n + 1) ^ 2).toNat : ℤ)

end

end A211921.P2676484298182013524

/-!
# A211922: Number of (w,x,y,z) with all terms in {1,...,n} and 2*w*x>3*y*z.

The programs for A211922, there is no canonical definition to state claims against.
-/

/-! ## A211922.P8387134086085908621

`n²²-A211921(n)`
-/

namespace A211922.P8387134086085908621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A211921 n

end

end A211922.P8387134086085908621

/-! ## A211922.P3535944142711661087

`A211923(n)-A212021(n)`
-/

namespace A211922.P3535944142711661087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211923 n - A212021 n

end

end A211922.P3535944142711661087

/-! ## A211922.P1529417380706340385

`abs(A000583(n)-A211921(n))`
-/

namespace A211922.P1529417380706340385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211921 n|

end

end A211922.P1529417380706340385

/-! ## A211922.P16698508183112856641

`A211787(n)+A211797(n)-A211921(n)`
-/

namespace A211922.P16698508183112856641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n + (A211797 n - A211921 n)

end

end A211922.P16698508183112856641

/-! ## A211922.P7725933081605567395

`A211917(n)+A211919(n)-A211921(n)`
-/

namespace A211922.P7725933081605567395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A211921 n)

end

end A211922.P7725933081605567395

/-! ## A211922.P7340577943692212630

`A212053(n)+A212054(n)-A211921(n)`
-/

namespace A211922.P7340577943692212630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212053 n + (A212054 n - A211921 n)

end

end A211922.P7340577943692212630

/-! ## A211922.P6262381190117573577

`A212065(n)+A212066(n)-A211921(n)`
-/

namespace A211922.P6262381190117573577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A211921 n)

end

end A211922.P6262381190117573577

/-! ## A211922.P4637204073823201359

`A212092(n)+A212095(n)-A211921(n)`
-/

namespace A211922.P4637204073823201359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A211921 n)

end

end A211922.P4637204073823201359

/-! ## A211922.P16346627753663840261

`A212106(n)+A212107(n)-A211921(n)`
-/

namespace A211922.P16346627753663840261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212106 n + (A212107 n - A211921 n)

end

end A211922.P16346627753663840261

/-! ## A211922.P1779465695433700129

`(A000583(n)-A211921(n))*A057427(n)`
-/

namespace A211922.P1779465695433700129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211921 n) * A057427 n

end

end A211922.P1779465695433700129

/-!
# A211923: Number of (w,x,y,z) with all terms in {1,...,n} and 2*w*x>=3*y*z.

The programs for A211923, there is no canonical definition to state claims against.
-/

/-! ## A211923.P4591335526160307956

`n^4-A211920(n)`
-/

namespace A211923.P4591335526160307956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211920 n

end

end A211923.P4591335526160307956

/-! ## A211923.P8322175366797927308

`abs(A000583(n)-A211920(n))`
-/

namespace A211923.P8322175366797927308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211920 n|

end

end A211923.P8322175366797927308

/-! ## A211923.P17346584036703845527

`A002523(n)-(A211920(n)+1)`
-/

namespace A211923.P17346584036703845527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211920 n + 1)

end

end A211923.P17346584036703845527

/-! ## A211923.P8845969374047221689

`n²²%A211920(A028310(n))`
-/

namespace A211923.P8845969374047221689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A211920 (A028310 n).toNat)

end

end A211923.P8845969374047221689

/-! ## A211923.P2393361901229593863

`A211917(n)+A211919(n)-A211920(n)`
-/

namespace A211923.P2393361901229593863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211917 n + (A211919 n - A211920 n)

end

end A211923.P2393361901229593863

/-! ## A211923.P17184063984425190156

`A212568(n)+A212675(n)-A211920(n)`
-/

namespace A211923.P17184063984425190156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212568 n + (A212675 n - A211920 n)

end

end A211923.P17184063984425190156

/-! ## A211923.P9278536044363071289

`(A000583(n)-A211920(n))*A000040(n+1)%2`
-/

namespace A211923.P9278536044363071289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211920 n) * Int.tmod (A000040 (n + 1)) 2

end

end A211923.P9278536044363071289

/-! ## A211923.P9640096619401986145

`A008683(60*(n+1))+A000583(n)-A211920(n)`
-/

namespace A211923.P9640096619401986145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (60 * (n + 1)) + (A000583 n - A211920 n)

end

end A211923.P9640096619401986145

/-! ## A211923.P5718417579499147741

`(A000583(n)-A211920(n))*A000045(round(n/(n+1)))`
-/

namespace A211923.P5718417579499147741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211920 n) * A000045 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat

end

end A211923.P5718417579499147741

/-! ## A211923.P5042475735844708262

`(A000583(n)-A211920(n))*A002828(n²)`
-/

namespace A211923.P5042475735844708262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211920 n) * A002828 (n ^ 2)

end

end A211923.P5042475735844708262

/-! ## A211923.P18128619078050835184

`A212021(n)+n²²-A211921(n)`
-/

namespace A211923.P18128619078050835184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212021 n + (((n ^ 2) ^ 2 : ℤ) - A211921 n)

end

end A211923.P18128619078050835184

/-! ## A211923.P3080045598340000924

`A000583(n)+A212021(n)-A211921(n)`
-/

namespace A211923.P3080045598340000924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + (A212021 n - A211921 n)

end

end A211923.P3080045598340000924

/-! ## A211923.P343553028459455812

`A000290(n)²-(A211921(n)-A212021(n))`
-/

namespace A211923.P343553028459455812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n ^ 2 - (A211921 n - A212021 n)

end

end A211923.P343553028459455812

/-! ## A211923.P1088111507545997977

`A212021(n)+A211787(n)+A211797(n)-A211921(n)`
-/

namespace A211923.P1088111507545997977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212021 n + (A211787 n + (A211797 n - A211921 n))

end

end A211923.P1088111507545997977

/-! ## A211923.P3151811428505826902

`A212021(n)+A212053(n)+A212054(n)-A211921(n)`
-/

namespace A211923.P3151811428505826902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212021 n + (A212053 n + (A212054 n - A211921 n))

end

end A211923.P3151811428505826902

/-! ## A211923.P11512267196621190164

`A212021(n)+A212065(n)+A212066(n)-A211921(n)`
-/

namespace A211923.P11512267196621190164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212021 n + (A212065 n + (A212066 n - A211921 n))

end

end A211923.P11512267196621190164

/-!
# A211924: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-2.

The programs for A211924, the canonical program `A211924.P10459013938927059951` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211924 has offset 1).

The definition of A211924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211924.P6238677768976934388

`∑[round(n/acot(∑[n+1]-3))]+n`
-/

namespace A211924.P6238677768976934388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211924.P6238677768976934388

namespace A211924

/-- `∑[round(n/acot(∑[n+1]-3))]+n` -/
def P6238677768976934388.Spec : Prop :=
  ∀ n, P6238677768976934388.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P10459013938927059951

`1-n+a(n-1)+n*(∑[n+1]-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211924

/-- `1-n+a(n-1)+n*(∑[n+1]-2)` -/
def P10459013938927059951.Spec : Prop :=
  ∀ n, P10459013938927059951.a n = A211924 (n + 1)

theorem P10459013938927059951.correct : P10459013938927059951.Spec := by
  intro n
  simp only [A211924, Nat.add_sub_cancel]

end A211924

/-! ## A211924.P13162520064516466232

`A211899(n+1)+n`
-/

namespace A211924.P13162520064516466232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211899 (n + 1) + (n : ℤ)

end

end A211924.P13162520064516466232

namespace A211924

/-- `A211899(n+1)+n` -/
def P13162520064516466232.Spec : Prop :=
  ∀ n, P13162520064516466232.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P16085054434878061309

`A211911(n+1)+∑[n]`
-/

namespace A211924.P16085054434878061309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211911 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211924.P16085054434878061309

namespace A211924

/-- `A211911(n+1)+∑[n]` -/
def P16085054434878061309.Spec : Prop :=
  ∀ n, P16085054434878061309.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P11345090526193417814

`A211958(n+1)-∑[n]`
-/

namespace A211924.P11345090526193417814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211958 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211924.P11345090526193417814

namespace A211924

/-- `A211958(n+1)-∑[n]` -/
def P11345090526193417814.Spec : Prop :=
  ∀ n, P11345090526193417814.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P16909118703312026246

`A212039(n+1)+A000326(n)`
-/

namespace A211924.P16909118703312026246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212039 (n + 1) + A000326 n

end

end A211924.P16909118703312026246

namespace A211924

/-- `A212039(n+1)+A000326(n)` -/
def P16909118703312026246.Spec : Prop :=
  ∀ n, P16909118703312026246.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P8490211709329652677

`A211905(n+1)-A161680(n)`
-/

namespace A211924.P8490211709329652677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211905 (n + 1) - A161680 n

end

end A211924.P8490211709329652677

namespace A211924

/-- `A211905(n+1)-A161680(n)` -/
def P8490211709329652677.Spec : Prop :=
  ∀ n, P8490211709329652677.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P6368047879445844669

`∑[∑[A134479(n)]]-A134479(n)`
-/

namespace A211924.P6368047879445844669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A134479 n

end

end A211924.P6368047879445844669

namespace A211924

/-- `∑[∑[A134479(n)]]-A134479(n)` -/
def P6368047879445844669.Spec : Prop :=
  ∀ n, P6368047879445844669.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P14819232177300915673

`(A211958(n+1)+A211911(n+1))/2`
-/

namespace A211924.P14819232177300915673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211958 (n + 1) + A211911 (n + 1) : ℚ) / 2

end

end A211924.P14819232177300915673

namespace A211924

/-- `(A211958(n+1)+A211911(n+1))/2` -/
def P14819232177300915673.Spec : Prop :=
  ∀ n, P14819232177300915673.a n = (A211924 (n + 1) : ℚ)

end A211924

/-! ## A211924.P10341596517859432775

`A000124(n)²-A055503(n+1)`
-/

namespace A211924.P10341596517859432775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n ^ 2 - A055503 (n + 1)

end

end A211924.P10341596517859432775

namespace A211924

/-- `A000124(n)²-A055503(n+1)` -/
def P10341596517859432775.Spec : Prop :=
  ∀ n, P10341596517859432775.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P10099046193834315502

`∑[∑[A258087(2*n+1)]]-A258087(2*n)`
-/

namespace A211924.P10099046193834315502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258087 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A258087 (2 * n)

end

end A211924.P10099046193834315502

namespace A211924

/-- `∑[∑[A258087(2*n+1)]]-A258087(2*n)` -/
def P10099046193834315502.Spec : Prop :=
  ∀ n, P10099046193834315502.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P13295064474347937912

`A000096(A000096(n))-A132209(n)`
-/

namespace A211924.P13295064474347937912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A000096 n).toNat - A132209 n

end

end A211924.P13295064474347937912

namespace A211924

/-- `A000096(A000096(n))-A132209(n)` -/
def P13295064474347937912.Spec : Prop :=
  ∀ n, P13295064474347937912.a n = A211924 (n + 1)

end A211924

/-! ## A211924.P4525436013346223371

`A002817(n+1)-A004275(∑[A004275(n+1)])`
-/

namespace A211924.P4525436013346223371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) - A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211924.P4525436013346223371

namespace A211924

/-- `A002817(n+1)-A004275(∑[A004275(n+1)])` -/
def P4525436013346223371.Spec : Prop :=
  ∀ n, P4525436013346223371.a n = A211924 (n + 1)

end A211924

/-!
# A211925: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-3.

The programs for A211925, there is no canonical definition to state claims against.
-/

/-! ## A211925.P17512941217830273082

`A212022(n+1)+n-n²`
-/

namespace A211925.P17512941217830273082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212022 (n + 1) + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A211925.P17512941217830273082

/-! ## A211925.P11497473597376712665

`A211930(∑[n+2])`
-/

namespace A211925.P11497473597376712665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211925.P11497473597376712665

/-! ## A211925.P9625342748574874730

`A212026(∑[n+2])+n-n²`
-/

namespace A211925.P9625342748574874730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) - (n ^ 2 : ℤ)

end

end A211925.P9625342748574874730

/-! ## A211925.P2280406712525168531

`record[A211930(A198455(n+1))]`
-/

namespace A211925.P2280406712525168531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211925.P2280406712525168531

/-! ## A211925.P16011507496655473859

`record[A211930(gcd(n, A173018(n)))]`
-/

namespace A211925.P16011507496655473859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (Int.gcd (n : ℤ) (A173018 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211925.P16011507496655473859

/-!
# A211926: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-4.

The programs for A211926, there is no canonical definition to state claims against.
-/

/-! ## A211926.P11922037185663290180

`A211930(∑[n+3]+1)`
-/

namespace A211926.P11922037185663290180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211926.P11922037185663290180

/-! ## A211926.P15009811830309786097

`A211930(A034856(n+2))%A226847(n+1)`
-/

namespace A211926.P15009811830309786097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211930 (A034856 (n + 2)).toNat) (A226847 (n + 1))

end

end A211926.P15009811830309786097

/-!
# A211927: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-5.

The programs for A211927, there is no canonical definition to state claims against.
-/

/-! ## A211927.P16706493294446323421

`A211930(∑[round(1/acot(n))+3]+n+3)`
-/

namespace A211927.P16706493294446323421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)).toNat

end

end A211927.P16706493294446323421

/-! ## A211927.P1724445180571661914

`A211930(A141214(n+1))`
-/

namespace A211927.P1724445180571661914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A141214 (n + 1)).toNat

end

end A211927.P1724445180571661914

/-! ## A211927.P12634111233256457415

`A211930(A055998(n+2))`
-/

namespace A211927.P12634111233256457415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A055998 (n + 2)).toNat

end

end A211927.P12634111233256457415

/-! ## A211927.P11586536721253479129

`A211930(A155212(n)+5)`
-/

namespace A211927.P11586536721253479129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A155212 n + 5).toNat

end

end A211927.P11586536721253479129

/-! ## A211927.P7614285677550109156

`A211930(A056000(n)+7)`
-/

namespace A211927.P7614285677550109156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A056000 n + 7).toNat

end

end A211927.P7614285677550109156

/-!
# A211928: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-6.

The programs for A211928, there is no canonical definition to state claims against.
-/

/-! ## A211928.P820535866158287810

`A211930(Δ[A264443(n)])`
-/

namespace A211928.P820535866158287810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (f1 (n + 1) - f1 n).toNat

end

end A211928.P820535866158287810

/-! ## A211928.P14953970842787080917

`A211930(A046691(n+3))`
-/

namespace A211928.P14953970842787080917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A046691 (n + 3)).toNat

end

end A211928.P14953970842787080917

/-! ## A211928.P10614055463521514799

`A211930(A056115(n)+11)`
-/

namespace A211928.P10614055463521514799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A056115 n + 11).toNat

end

end A211928.P10614055463521514799

/-! ## A211928.P4326818223737447546

`A211930(eq[2, A092921(n)])`
-/

namespace A211928.P4326818223737447546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211928.P4326818223737447546

/-!
# A211929: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-7.

The programs for A211929, there is no canonical definition to state claims against.
-/

/-! ## A211929.P1601884656500296495

`A211930(A052905(n+3))`
-/

namespace A211929.P1601884656500296495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A052905 (n + 3)).toNat

end

end A211929.P1601884656500296495

/-! ## A211929.P3090175085528306831

`A211930(A056119(n)+16)`
-/

namespace A211929.P3090175085528306831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (A056119 n + 16).toNat

end

end A211929.P3090175085528306831

/-! ## A211929.P16958492132653829551

`A211930(eq[3, A219347(n)])`
-/

namespace A211929.P16958492132653829551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211929.P16958492132653829551

/-! ## A211929.P12139886670347434460

`A211930(eq[5, A152157(n)])`
-/

namespace A211929.P12139886670347434460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211930 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211929.P12139886670347434460

/-!
# A211930: T(n,k)=Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any horizontal, vertical or antidiagonal neighbor, and containing the value n(n+1)/2-k-1.

The programs for A211930, there is no canonical definition to state claims against.
-/

/-! ## A211930.P313479967174474801

`A212026(n+1)+A088194((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A211930.P313479967174474801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (n + 1) + A088194 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A211930.P313479967174474801

/-! ## A211930.P11210895283812721669

`A000096(A059672(n))%A212984(n)`
-/

namespace A211930.P11210895283812721669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (A059672 n).toNat) (A212984 n)

end

end A211930.P11210895283812721669

/-! ## A211930.P5838235150380975374

`A212026(n+1)-A240672(A001333(n))`
-/

namespace A211930.P5838235150380975374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (n + 1) - A240672 (A001333 n).toNat

end

end A211930.P5838235150380975374

/-! ## A211930.P11960207106110026866

`A212026(n+1)-A319227(A004149(n))`
-/

namespace A211930.P11960207106110026866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (n + 1) - A319227 (A004149 n).toNat

end

end A211930.P11960207106110026866

/-! ## A211930.P6745285454396301236

`A212026(n+1)-A212026(A111536(n))`
-/

namespace A211930.P6745285454396301236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212026 (n + 1) - A212026 (A111536 n).toNat

end

end A211930.P6745285454396301236

/-!
# A211931: Number of distinct regular languages over unary alphabet, whose minimum regular expression has alphabetic width n.

The programs for A211931, there is no canonical definition to state claims against.
-/

/-! ## A211931.P16637615915337194419

`ogf((-2-x+3x^2+x^3+2x^4+7x^6)/(-1+x+3x^2))`
-/

namespace A211931.P16637615915337194419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -3, -1, -2, 0, -7] [1, -1, -3] n

end

end A211931.P16637615915337194419

/-! ## A211931.P6468035578675166488

`A229898(2*n)/2+2`
-/

namespace A211931.P6468035578675166488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229898 (2 * n) : ℚ) / 2 + 2

end

end A211931.P6468035578675166488

/-! ## A211931.P8970340566299297326

`A089046(3*(n+1))+char[5]`
-/

namespace A211931.P8970340566299297326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089046 (3 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A211931.P8970340566299297326

/-!
# A211932: a(n) = Sum_{ m=1..n and gcd(n,m)>1 } tau(m), where tau is the number of divisors function, A000005.

The programs for A211932, there is no canonical definition to state claims against.
-/

/-! ## A211932.P5116526010157091648

`A006218(n+1)-A143615(n+1)`
-/

namespace A211932.P5116526010157091648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) - A143615 (n + 1)

end

end A211932.P5116526010157091648

/-! ## A211932.P9424046875220499950

`∑[A000005(n+1)]-A143615(n+1)`
-/

namespace A211932.P9424046875220499950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143615 (n + 1)

end

end A211932.P9424046875220499950

/-! ## A211932.P8336848640894637370

`∑[A179941(n+1)]-A143615(n+1)`
-/

namespace A211932.P8336848640894637370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143615 (n + 1)

end

end A211932.P8336848640894637370

/-! ## A211932.P12209163630097266068

`Δ[A078567(n+1)]-A143615(n+1)`
-/

namespace A211932.P12209163630097266068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A143615 (n + 1)

end

end A211932.P12209163630097266068

/-! ## A211932.P15133490026687619000

`∑[∑{d}[n+1, A020639(2*#)]/2]-A143615(n+1)`
-/

namespace A211932.P15133490026687619000
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), A020639 (2 * d) : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A143615 (n + 1) : ℚ)

end

end A211932.P15133490026687619000

/-! ## A211932.P10271070512178426624

`∑[∑{d}[n+1, 1-A000010(#)]+n+1]-A143615(n+1)`
-/

namespace A211932.P10271070512178426624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - A000010 d) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143615 (n + 1)

end

end A211932.P10271070512178426624

/-! ## A211932.P7736564199939057416

`∑[∑{d}[n+1, 1-#]+A000203(n+1)]-A143615(n+1)`
-/

namespace A211932.P7736564199939057416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (1 - (d : ℤ)) + A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143615 (n + 1)

end

end A211932.P7736564199939057416

/-! ## A211932.P9863035483421828267

`∑[A000720(A105555(n+1))]-A143615(n+1)`
-/

namespace A211932.P9863035483421828267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A105555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143615 (n + 1)

end

end A211932.P9863035483421828267

/-!
# A211934: Number of distinct finite languages over binary alphabet, whose minimum regular expression has alphabetic width n.

The programs for A211934, there is no canonical definition to state claims against.
-/

/-! ## A211934.P14198453574001830918

`A210434(or(2, A135890(n)))`
-/

namespace A211934.P14198453574001830918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210434 (Int.lor 2 (A135890 n)).toNat

end

end A211934.P14198453574001830918

/-!
# A211940: Number of distinct finite languages over unary alphabet, whose minimum regular expression has reverse Polish length 2n-1.

The programs for A211940, there is no canonical definition to state claims against.
-/

/-! ## A211940.P2241182678549416727

`A104261(n+1)+A018155(n)`
-/

namespace A211940.P2241182678549416727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104261 (n + 1) + A018155 n

end

end A211940.P2241182678549416727

/-! ## A211940.P1285769242162840615

`A018155(n)+2*A017870(n)`
-/

namespace A211940.P1285769242162840615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018155 n + 2 * A017870 n

end

end A211940.P1285769242162840615

/-! ## A211940.P898249104576053850

`or(A335471(n)+1, A226874(n))`
-/

namespace A211940.P898249104576053850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A335471 n + 1) (A226874 n)

end

end A211940.P898249104576053850

/-! ## A211940.P6355572487929081819

`A061855(A017870(n))+A018155(n)`
-/

namespace A211940.P6355572487929081819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061855 (A017870 n).toNat + A018155 n

end

end A211940.P6355572487929081819

/-! ## A211940.P3154664588232870559

`A241920(A137255(A000038(n)+n))`
-/

namespace A211940.P3154664588232870559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241920 (A137255 (A000038 n + (n : ℤ)).toNat).toNat

end

end A211940.P3154664588232870559

/-!
# A211942: Number of distinct finite languages over binary alphabet, whose minimum regular expression has reverse Polish length 2n-1.

The programs for A211942, there is no canonical definition to state claims against.
-/

/-! ## A211942.P16665124135436747677

`A062108(A182603(n))+3`
-/

namespace A211942.P16665124135436747677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A182603 n).toNat + 3

end

end A211942.P16665124135436747677

/-!
# A211943: Number of distinct regular languages over 3-ary alphabet, whose minimum regular expression has reverse Polish length n.

The programs for A211943, there is no canonical definition to state claims against.
-/

/-! ## A211943.P2268609077224071768

`A136118(A027914(n))-n`
-/

namespace A211943.P2268609077224071768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136118 (A027914 n).toNat - (n : ℤ)

end

end A211943.P2268609077224071768

/-!
# A211944: Number of distinct finite languages over 3-ary alphabet, whose minimum regular expression has reverse Polish length 2n-1.

The programs for A211944, there is no canonical definition to state claims against.
-/

/-! ## A211944.P9291606428052907614

`A348553(A025565(2*(n+1)))+A025178(n+2)`
-/

namespace A211944.P9291606428052907614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A025565 (2 * (n + 1))).toNat + A025178 (n + 2)

end

end A211944.P9291606428052907614

/-!
# A211945: Number of distinct regular languages over 4-ary alphabet, whose minimum regular expression has reverse Polish length n.

The programs for A211945, there is no canonical definition to state claims against.
-/

/-! ## A211945.P5927447289652169598

`A294317(A306032(n)+A130206(n+1))`
-/

namespace A211945.P5927447289652169598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A306032 n + A130206 (n + 1)).toNat

end

end A211945.P5927447289652169598

/-!
# A211947: Number of distinct regular languages over unary alphabet, whose minimum regular expression has ordinary length n.

The programs for A211947, there is no canonical definition to state claims against.
-/

/-! ## A211947.P4389295822370515704

`A047362(A325343(n+1)+1)`
-/

namespace A211947.P4389295822370515704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047362 (A325343 (n + 1) + 1).toNat

end

end A211947.P4389295822370515704

/-! ## A211947.P14514279862027260510

`A302540(A194960((1-n)²+2))`
-/

namespace A211947.P14514279862027260510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (A194960 ((1 - (n : ℤ)) ^ 2 + 2).toNat).toNat

end

end A211947.P14514279862027260510

/-! ## A211947.P16576424434203735958

`A193744(n)-record[A003285(n+1)]`
-/

namespace A211947.P16576424434203735958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211947.P16576424434203735958

/-! ## A211947.P16503122192985377082

`A156606(n+1)+A060677(n+1)`
-/

namespace A211947.P16503122192985377082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156606 (n + 1) + A060677 (n + 1)

end

end A211947.P16503122192985377082

/-! ## A211947.P6214555321030994098

`A000002(2*(n+1))+A177100(n)+1`
-/

namespace A211947.P6214555321030994098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1)) + (A177100 n + 1)

end

end A211947.P6214555321030994098

/-!
# A211949: Number of distinct regular languages over binary alphabet, whose minimum regular expression has ordinary length n.

The programs for A211949, there is no canonical definition to state claims against.
-/

/-! ## A211949.P8682463851377419238

`A300273(n+1)+A105792(A105633(n))`
-/

namespace A211949.P8682463851377419238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300273 (n + 1) + A105792 (A105633 n).toNat

end

end A211949.P8682463851377419238

/-!
# A211950: Number of distinct finite languages over binary alphabet, whose minimum regular expression has ordinary length n.

The programs for A211950, there is no canonical definition to state claims against.
-/

/-! ## A211950.P9703940481807532412

`A258307(n)+A244018(A001006(n))`
-/

namespace A211950.P9703940481807532412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258307 n + A244018 (A001006 n).toNat

end

end A211950.P9703940481807532412

/-! ## A211950.P8716559563316156872

`A245356(3*n+1)-A328361(A032257(n+1))`
-/

namespace A211950.P8716559563316156872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245356 (3 * n + 1) - A328361 (A032257 (n + 1)).toNat

end

end A211950.P8716559563316156872

/-!
# A211951: Number of distinct regular languages over 3-ary alphabet, whose minimum regular expression has ordinary length n.

The programs for A211951, there is no canonical definition to state claims against.
-/

/-! ## A211951.P3492902910376598180

`A199323(A199316(n)-A250128(n))`
-/

namespace A211951.P3492902910376598180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199323 (A199316 n - A250128 n).toNat

end

end A211951.P3492902910376598180

/-!
# A211952: Number of distinct finite languages over 3-ary alphabet, whose minimum regular expression has ordinary length n.

The programs for A211952, there is no canonical definition to state claims against.
-/

/-! ## A211952.P7941330121331826654

`∑[A229312(A316980(n))]-n`
-/

namespace A211952.P7941330121331826654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229312 (A316980 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A211952.P7941330121331826654

/-!
# A211954: Number of distinct finite languages over 4-ary alphabet, whose minimum regular expression has ordinary length n.

The programs for A211954, there is no canonical definition to state claims against.
-/

/-! ## A211954.P13172529717700352680

`∑[A166305(∑[A289678(n+1)])]`
-/

namespace A211954.P13172529717700352680
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289678 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166305 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211954.P13172529717700352680

/-!
# A211955: Triangle of coefficients of a polynomial sequence related to the Morgan-Voyce polynomials A085478.

The programs for A211955, the canonical program `A211955.P3134734577332514007` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211955 has offset 0).

The definition of A211955 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211955.P3134734577332514007

`ceil(A123519(n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A211955

/-- `ceil(A123519(n)/2)` -/
def P3134734577332514007.Spec : Prop :=
  ∀ n, P3134734577332514007.a n = A211955 n

theorem P3134734577332514007.correct : P3134734577332514007.Spec := by
  intro n
  simp only [A211955]

end A211955

/-! ## A211955.P11300662632199631168

`round(A123519(round(sqrt(n²+1)))/2)`
-/

namespace A211955.P11300662632199631168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123519 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 2)

end

end A211955.P11300662632199631168

namespace A211955

/-- `round(A123519(round(sqrt(n²+1)))/2)` -/
def P11300662632199631168.Spec : Prop :=
  ∀ n, P11300662632199631168.a n = A211955 n

end A211955

/-! ## A211955.P7738346771511125328

`A123519(n-char[1])/(2-char[∑[n]])`
-/

namespace A211955.P7738346771511125328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123519 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A211955.P7738346771511125328

namespace A211955

/-- `A123519(n-char[1])/(2-char[∑[n]])` -/
def P7738346771511125328.Spec : Prop :=
  ∀ n, P7738346771511125328.a n = (A211955 n : ℚ)

end A211955

/-! ## A211955.P6566916539618260460

`A085478(n)*A232089(n)`
-/

namespace A211955.P6566916539618260460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085478 n * A232089 n

end

end A211955.P6566916539618260460

namespace A211955

/-- `A085478(n)*A232089(n)` -/
def P6566916539618260460.Spec : Prop :=
  ∀ n, P6566916539618260460.a n = A211955 n

end A211955

/-! ## A211955.P17045845734831414079

`round((A123519(n)/2)^(A000040(n+1)%2))`
-/

namespace A211955.P17045845734831414079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A123519 n : ℚ) / 2) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ))

end

end A211955.P17045845734831414079

namespace A211955

/-- `round((A123519(n)/2)^(A000040(n+1)%2))` -/
def P17045845734831414079.Spec : Prop :=
  ∀ n, P17045845734831414079.a n = A211955 n

end A211955

/-! ## A211955.P8160132002803961727

`A085478(n)/A208513(n+1)*A211957(n)`
-/

namespace A211955.P8160132002803961727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085478 n : ℚ) / (A208513 (n + 1) : ℚ) * (A211957 n : ℚ)

end

end A211955.P8160132002803961727

namespace A211955

/-- `A085478(n)/A208513(n+1)*A211957(n)` -/
def P8160132002803961727.Spec : Prop :=
  ∀ n, P8160132002803961727.a n = (A211955 n : ℚ)

end A211955

/-! ## A211955.P12360813857946912521

`round(A123519(n)/2)%(A000032(n+1)+1)`
-/

namespace A211955.P12360813857946912521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A123519 n : ℚ) / 2)) (A000032 (n + 1) + 1)

end

end A211955.P12360813857946912521

namespace A211955

/-- `round(A123519(n)/2)%(A000032(n+1)+1)` -/
def P12360813857946912521.Spec : Prop :=
  ∀ n, P12360813857946912521.a n = A211955 n

end A211955

/-! ## A211955.P2881977886447139757

`A000010(2^(n-C(∑[char[∑[n]]], 2)))*A085478(n)`
-/

namespace A211955.P2881977886447139757
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ))).toNat * A085478 n

end

end A211955.P2881977886447139757

namespace A211955

/-- `A000010(2^(n-C(∑[char[∑[n]]], 2)))*A085478(n)` -/
def P2881977886447139757.Spec : Prop :=
  ∀ n, P2881977886447139757.a n = A211955 n

end A211955

/-! ## A211955.P12045979456309309033

`A000010(A059268(n))*A085478(n)`
-/

namespace A211955.P12045979456309309033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A085478 n

end

end A211955.P12045979456309309033

namespace A211955

/-- `A000010(A059268(n))*A085478(n)` -/
def P12045979456309309033.Spec : Prop :=
  ∀ n, P12045979456309309033.a n = A211955 n

end A211955

/-! ## A211955.P10531775049983256700

`A273943(A123519(n))`
-/

namespace A211955.P10531775049983256700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A123519 n).toNat

end

end A211955.P10531775049983256700

namespace A211955

/-- `A273943(A123519(n))` -/
def P10531775049983256700.Spec : Prop :=
  ∀ n, P10531775049983256700.a n = A211955 n

end A211955

/-!
# A211956: Coefficients of a sequence of polynomials related to the Morgan-Voyce polynomials.

The programs for A211956, there is no canonical definition to state claims against.
-/

/-! ## A211956.P2804655375465968649

`∑{d}[A104573(n), A104573(A104573(#))]`
-/

namespace A211956.P2804655375465968649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A104573 (A104573 d).toNat

end

end A211956.P2804655375465968649

/-!
# A211957: Triangle of coefficients of a polynomial sequence related to the Morgan-Voyce polynomials A085478.

The programs for A211957, the canonical program `A211957.P15514348916706312489` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211957 has offset 0).

The definition of A211957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211957.P15514348916706312489

`2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211957

/-- `2*T(n-1,k)+2*T(n-1,k-1)-T(n-2,k)` -/
def P15514348916706312489.Spec : Prop :=
  ∀ n, P15514348916706312489.a n = A211957 n

theorem P15514348916706312489.correct : P15514348916706312489.Spec := by
  intro n
  simp only [A211957]

end A211957

/-! ## A211957.P11349705798925162023

`A208513(n+1)*A232089(n)`
-/

namespace A211957.P11349705798925162023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208513 (n + 1) * A232089 n

end

end A211957.P11349705798925162023

namespace A211957

/-- `A208513(n+1)*A232089(n)` -/
def P11349705798925162023.Spec : Prop :=
  ∀ n, P11349705798925162023.a n = A211957 n

end A211957

/-! ## A211957.P14310907866721812613

`A011782(A002262(n))*A208513(n+1)`
-/

namespace A211957.P14310907866721812613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A002262 n).toNat * A208513 (n + 1)

end

end A211957.P14310907866721812613

namespace A211957

/-- `A011782(A002262(n))*A208513(n+1)` -/
def P14310907866721812613.Spec : Prop :=
  ∀ n, P14310907866721812613.a n = A211957 n

end A211957

/-! ## A211957.P9213405876354080036

`A011782(A144328(n+1))*A208513(n+1)`
-/

namespace A211957.P9213405876354080036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A144328 (n + 1)).toNat * A208513 (n + 1)

end

end A211957.P9213405876354080036

namespace A211957

/-- `A011782(A144328(n+1))*A208513(n+1)` -/
def P9213405876354080036.Spec : Prop :=
  ∀ n, P9213405876354080036.a n = A211957 n

end A211957

/-! ## A211957.P9008379833202496955

`A166444(A002260(n+1))*A208513(n+1)`
-/

namespace A211957.P9008379833202496955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (A002260 (n + 1)).toNat * A208513 (n + 1)

end

end A211957.P9008379833202496955

namespace A211957

/-- `A166444(A002260(n+1))*A208513(n+1)` -/
def P9008379833202496955.Spec : Prop :=
  ∀ n, P9008379833202496955.a n = A211957 n

end A211957

/-! ## A211957.P4676762378895784500

`A208513(n+1)/A085478(n)*A211955(n)`
-/

namespace A211957.P4676762378895784500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208513 (n + 1) : ℚ) / (A085478 n : ℚ) * (A211955 n : ℚ)

end

end A211957.P4676762378895784500

namespace A211957

/-- `A208513(n+1)/A085478(n)*A211955(n)` -/
def P4676762378895784500.Spec : Prop :=
  ∀ n, P4676762378895784500.a n = (A211957 n : ℚ)

end A211957

/-! ## A211957.P7528438545368849017

`Δ[A048645(n+1)]*A208513(n+1)`
-/

namespace A211957.P7528438545368849017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A208513 (n + 1)

end

end A211957.P7528438545368849017

namespace A211957

/-- `Δ[A048645(n+1)]*A208513(n+1)` -/
def P7528438545368849017.Spec : Prop :=
  ∀ n, P7528438545368849017.a n = A211957 n

end A211957

/-! ## A211957.P7779195954294475981

`abs(A127674(n)/A059268(n))`
-/

namespace A211957.P7779195954294475981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A127674 n : ℚ) / (A059268 n : ℚ)|

end

end A211957.P7779195954294475981

namespace A211957

/-- `abs(A127674(n)/A059268(n))` -/
def P7779195954294475981.Spec : Prop :=
  ∀ n, P7779195954294475981.a n = (A211957 n : ℚ)

end A211957

/-! ## A211957.P7569270991962168109

`lcm(A127674(n)/A059268(n), A007204(n)%2)`
-/

namespace A211957.P7569270991962168109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A127674 n : ℚ) / (A059268 n : ℚ))) (Int.tmod (A007204 n) 2)

end

end A211957.P7569270991962168109

namespace A211957

/-- `lcm(A127674(n)/A059268(n), A007204(n)%2)` -/
def P7569270991962168109.Spec : Prop :=
  ∀ n, (P7569270991962168109.a n : ℤ) = A211957 n

end A211957

/-! ## A211957.P1272715116793095698

`gcd(A123588(n), A370706(n))`
-/

namespace A211957.P1272715116793095698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123588 n) (A370706 n)

end

end A211957.P1272715116793095698

namespace A211957

/-- `gcd(A123588(n), A370706(n))` -/
def P1272715116793095698.Spec : Prop :=
  ∀ n, (P1272715116793095698.a n : ℤ) = A211957 n

end A211957

/-! ## A211957.P9129578305763862931

`A000010(A059268(n))*A208513(n+1)`
-/

namespace A211957.P9129578305763862931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059268 n).toNat * A208513 (n + 1)

end

end A211957.P9129578305763862931

namespace A211957

/-- `A000010(A059268(n))*A208513(n+1)` -/
def P9129578305763862931.Spec : Prop :=
  ∀ n, P9129578305763862931.a n = A211957 n

end A211957

/-!
# A211958: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-2.

The programs for A211958, the canonical program `A211958.P12613187305550750918` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211958 has offset 1).

The definition of A211958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211958.P10603731344866522940

`∑[n*(∑[n-char[2]]+n)]+n`
-/

namespace A211958.P10603731344866522940
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A211958.P10603731344866522940

namespace A211958

/-- `∑[n*(∑[n-char[2]]+n)]+n` -/
def P10603731344866522940.Spec : Prop :=
  ∀ n, P10603731344866522940.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P12613187305550750918

`(A211924(n+1)+A000217(n))%∑[n+3]²`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A211958

/-- `(A211924(n+1)+A000217(n))%∑[n+3]²` -/
def P12613187305550750918.Spec : Prop :=
  ∀ n, P12613187305550750918.a n = A211958 (n + 1)

theorem P12613187305550750918.correct : P12613187305550750918.Spec := by
  intro n
  simp only [A211958, Nat.add_sub_cancel]

end A211958

/-! ## A211958.P2068488423227984800

`(A211924(n+1)+A000217(n))*A087267(A087268(n+1))`
-/

namespace A211958.P2068488423227984800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A087267 (A087268 (n + 1)).toNat

end

end A211958.P2068488423227984800

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A087267(A087268(n+1))` -/
def P2068488423227984800.Spec : Prop :=
  ∀ n, P2068488423227984800.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P1437138298291243257

`(A211924(n+1)+A000217(n))*char[A020703(n+1)]`
-/

namespace A211958.P1437138298291243257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A211958.P1437138298291243257

namespace A211958

/-- `(A211924(n+1)+A000217(n))*char[A020703(n+1)]` -/
def P1437138298291243257.Spec : Prop :=
  ∀ n, P1437138298291243257.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P11817855527467529595

`xor(A211924(n+1)+A000217(n), A000035(2*n))`
-/

namespace A211958.P11817855527467529595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A211924 (n + 1) + A000217 n) (A000035 (2 * n))

end

end A211958.P11817855527467529595

namespace A211958

/-- `xor(A211924(n+1)+A000217(n), A000035(2*n))` -/
def P11817855527467529595.Spec : Prop :=
  ∀ n, P11817855527467529595.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P12256098678985352408

`(A211924(n+1)+A000217(n))*A087267(A087269(n+1))`
-/

namespace A211958.P12256098678985352408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A087267 (A087269 (n + 1)).toNat

end

end A211958.P12256098678985352408

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A087267(A087269(n+1))` -/
def P12256098678985352408.Spec : Prop :=
  ∀ n, P12256098678985352408.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P16151856409432939987

`(A211924(n+1)+A000217(n))*A000002(A156243(n+1))`
-/

namespace A211958.P16151856409432939987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A000002 (A156243 (n + 1)).toNat

end

end A211958.P16151856409432939987

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A000002(A156243(n+1))` -/
def P16151856409432939987.Spec : Prop :=
  ∀ n, P16151856409432939987.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P2515918782722946494

`(A211924(n+1)+A000217(n))*A087256(A099375(n))`
-/

namespace A211958.P2515918782722946494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A087256 (A099375 n).toNat

end

end A211958.P2515918782722946494

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A087256(A099375(n))` -/
def P2515918782722946494.Spec : Prop :=
  ∀ n, P2515918782722946494.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P647492513771396689

`(A211924(n+1)+A000217(n))*A087267(A087273(n+1))`
-/

namespace A211958.P647492513771396689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A087267 (A087273 (n + 1)).toNat

end

end A211958.P647492513771396689

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A087267(A087273(n+1))` -/
def P647492513771396689.Spec : Prop :=
  ∀ n, P647492513771396689.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P563443954432624589

`(A211924(n+1)+A000217(n))*A087267(A087272(n+2))`
-/

namespace A211958.P563443954432624589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A087267 (A087272 (n + 2)).toNat

end

end A211958.P563443954432624589

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A087267(A087272(n+2))` -/
def P563443954432624589.Spec : Prop :=
  ∀ n, P563443954432624589.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P4933269577759013914

`record[A000217(A066182(n+1))-A008486(n)]`
-/

namespace A211958.P4933269577759013914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A066182 (n + 1)).toNat - A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211958.P4933269577759013914

namespace A211958

/-- `record[A000217(A066182(n+1))-A008486(n)]` -/
def P4933269577759013914.Spec : Prop :=
  ∀ n, P4933269577759013914.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P13628327022678699199

`(A211924(n+1)+A000217(n))*A167407(∑[n+3])`
-/

namespace A211958.P13628327022678699199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211924 (n + 1) + A000217 n) * A167407 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211958.P13628327022678699199

namespace A211958

/-- `(A211924(n+1)+A000217(n))*A167407(∑[n+3])` -/
def P13628327022678699199.Spec : Prop :=
  ∀ n, P13628327022678699199.a n = A211958 (n + 1)

end A211958

/-! ## A211958.P9408961647564148357

`(n²+A211911(n+1)+n)*A133872((n+1)²)`
-/

namespace A211958.P9408961647564148357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) + (A211911 (n + 1) + (n : ℤ))) * A133872 ((n + 1) ^ 2)

end

end A211958.P9408961647564148357

namespace A211958

/-- `(n²+A211911(n+1)+n)*A133872((n+1)²)` -/
def P9408961647564148357.Spec : Prop :=
  ∀ n, P9408961647564148357.a n = A211958 (n + 1)

end A211958

/-!
# A211959: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-3.

The programs for A211959, there is no canonical definition to state claims against.
-/

/-! ## A211959.P1517268147458752825

`A211963(∑[n+2])`
-/

namespace A211959.P1517268147458752825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211959.P1517268147458752825

/-! ## A211959.P11453074205644486390

`record[A010054(n+4)*A211963(n+3)]`
-/

namespace A211959.P11453074205644486390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 4) * A211963 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211959.P11453074205644486390

/-! ## A211959.P2944129138417768408

`A211963(A000096(n+1))+A151838(n+1)`
-/

namespace A211959.P2944129138417768408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (A000096 (n + 1)).toNat + A151838 (n + 1)

end

end A211959.P2944129138417768408

/-! ## A211959.P1783426373405626430

`A211963(A000096(n+1))+A000035(2*n)`
-/

namespace A211959.P1783426373405626430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (A000096 (n + 1)).toNat + A000035 (2 * n)

end

end A211959.P1783426373405626430

/-! ## A211959.P15556477492008049369

`A211963(A000096(n+1))%A117416(2*n)`
-/

namespace A211959.P15556477492008049369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211963 (A000096 (n + 1)).toNat) (A117416 (2 * n))

end

end A211959.P15556477492008049369

/-!
# A211960: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-4.

The programs for A211960, there is no canonical definition to state claims against.
-/

/-! ## A211960.P11342221174749192810

`A211963(∑[n+3]+1)`
-/

namespace A211960.P11342221174749192810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A211960.P11342221174749192810

/-!
# A211961: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-5.

The programs for A211961, there is no canonical definition to state claims against.
-/

/-! ## A211961.P10689602158542726047

`A211963(∑[n+4]+3)`
-/

namespace A211961.P10689602158542726047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A211961.P10689602158542726047

/-!
# A211962: Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-6.

The programs for A211962, there is no canonical definition to state claims against.
-/

/-! ## A211962.P7231847739955146868

`A211963(Δ[A264443(n)])`
-/

namespace A211962.P7231847739955146868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (f1 (n + 1) - f1 n).toNat

end

end A211962.P7231847739955146868

/-! ## A211962.P3231642411245651523

`A211963(A046691(n+3))`
-/

namespace A211962.P3231642411245651523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (A046691 (n + 3)).toNat

end

end A211962.P3231642411245651523

/-! ## A211962.P484667246239330181

`A211963(eq[2, A092921(n)])`
-/

namespace A211962.P484667246239330181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211962.P484667246239330181

/-! ## A211962.P4925603420549144200

`A211963(eq[4, A193592(n)])`
-/

namespace A211962.P4925603420549144200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211963 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211962.P4925603420549144200

/-!
# A211963: T(n,k)=Number of lower triangular n X n arrays colored with integers 0 upwards introduced in row major order, with no element equal to any diagonal or antidiagonal neighbor, and containing the value n(n+1)/2-k-1.

The programs for A211963, there is no canonical definition to state claims against.
-/

/-! ## A211963.P6560974372406600461

`A291925(n+1)%A002260(A017936(n+1))`
-/

namespace A211963.P6560974372406600461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291925 (n + 1)) (A002260 (A017936 (n + 1)).toNat)

end

end A211963.P6560974372406600461

/-!
# A211964: Right triangle from the snowflake (or E-toothpick) structure of A161330 (see Comments lines for definition).

The programs for A211964, there is no canonical definition to state claims against.
-/

/-! ## A211964.P1495856613595701042

`A220478(n)/2`
-/

namespace A211964.P1495856613595701042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220478 n : ℚ) / 2

end

end A211964.P1495856613595701042

/-! ## A211964.P11277610040679897209

`((A161330(n+1)-2)/6+n)/2`
-/

namespace A211964.P11277610040679897209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A161330 (n + 1) - 2 : ℚ) / 6 + (n : ℚ)) / 2

end

end A211964.P11277610040679897209

/-! ## A211964.P13434804390769971390

`∑[A220498(n)/2]`
-/

namespace A211964.P13434804390769971390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220498 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211964.P13434804390769971390

/-! ## A211964.P12826243809032399072

`(A161336(n)+n)/2`
-/

namespace A211964.P12826243809032399072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161336 n + (n : ℤ) : ℚ) / 2

end

end A211964.P12826243809032399072

/-! ## A211964.P17363090884901175668

`∑[ceil(A211974(n)/2)]`
-/

namespace A211964.P17363090884901175668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A211974 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211964.P17363090884901175668

/-! ## A211964.P3030498982393526970

`(A213360(n)/6+n)/2`
-/

namespace A211964.P3030498982393526970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A213360 n : ℚ) / 6 + (n : ℚ)) / 2

end

end A211964.P3030498982393526970

/-! ## A211964.P5482099854929511493

`A001281(A220478(n))`
-/

namespace A211964.P5482099854929511493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A220478 n).toNat

end

end A211964.P5482099854929511493

/-! ## A211964.P17198645356006989838

`∑[A001057(A211974(n))]`
-/

namespace A211964.P17198645356006989838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A211974 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211964.P17198645356006989838

/-! ## A211964.P4644602541765864458

`A001281(A161336(n)+n)`
-/

namespace A211964.P4644602541765864458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A161336 n + (n : ℤ)).toNat

end

end A211964.P4644602541765864458

/-! ## A211964.P18303434181690347865

`A004525(A161336(n)+n)`
-/

namespace A211964.P18303434181690347865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A161336 n + (n : ℤ)).toNat

end

end A211964.P18303434181690347865

/-!
# A211965: Number of binary sequences of length 2n-1 and curling number 1.

The programs for A211965, there is no canonical definition to state claims against.
-/

/-! ## A211965.P3405819810552665396

`2*A093371(2*n+1)`
-/

namespace A211965.P3405819810552665396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093371 (2 * n + 1)

end

end A211965.P3405819810552665396

/-! ## A211965.P10874032630154855034

`A122536(Δ[n²])`
-/

namespace A211965.P10874032630154855034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A211965.P10874032630154855034

/-! ## A211965.P16798031675743373680

`record[A216955(∑[xor(1, n)])]`
-/

namespace A211965.P16798031675743373680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211965.P16798031675743373680

/-! ## A211965.P14654505821164472392

`record[A122536(n^(n%2))]`
-/

namespace A211965.P14654505821164472392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211965.P14654505821164472392

/-! ## A211965.P6851961145187859569

`lcm(2, A122536(2*n+1))`
-/

namespace A211965.P6851961145187859569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A122536 (2 * n + 1))

end

end A211965.P6851961145187859569

/-!
# A211966: Number of binary sequences of length 2n and curling number 1.

The programs for A211966, there is no canonical definition to state claims against.
-/

/-! ## A211966.P14758232160917862222

`A211965(n+2)/2`
-/

namespace A211966.P14758232160917862222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211965 (n + 2) : ℚ) / 2

end

end A211966.P14758232160917862222

/-! ## A211966.P5896681946568541970

`2*A093371(2*(n+1))`
-/

namespace A211966.P5896681946568541970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093371 (2 * (n + 1))

end

end A211966.P5896681946568541970

/-! ## A211966.P3450519153860198260

`A122536(2*(n+1))`
-/

namespace A211966.P3450519153860198260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (2 * (n + 1))

end

end A211966.P3450519153860198260

/-! ## A211966.P2674959241246677568

`2*A211975(n+1)`
-/

namespace A211966.P2674959241246677568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211975 (n + 1)

end

end A211966.P2674959241246677568

/-! ## A211966.P14088595513263082771

`record[A122536(abs(xor(n, -2)))]`
-/

namespace A211966.P14088595513263082771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211966.P14088595513263082771

/-!
# A211967: Triangle of decimal equivalents of binary numbers with no initial repeats, A211027.

The programs for A211967, there is no canonical definition to state claims against.
-/

/-! ## A211967.P17221859125374156596

`eq[char[A211969(n+2)], A000007(n)]`
-/

namespace A211967.P17221859125374156596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211969 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211967.P17221859125374156596

/-! ## A211967.P9017843539713412420

`eq[char[A211969(n+2)], A000038(n)]`
-/

namespace A211967.P9017843539713412420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211969 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211967.P9017843539713412420

/-! ## A211967.P7508569197092799409

`eq[A057427(n), A181935(A056539(n))]`
-/

namespace A211967.P7508569197092799409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A211967.P7508569197092799409

/-! ## A211967.P15702752465729792196

`eq[A000038(n)!, A181935(A056539(n))]`
-/

namespace A211967.P15702752465729792196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000038 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A211967.P15702752465729792196

/-! ## A211967.P16107652377995961350

`eq[char[A211969(n+2)], A302244(2*n)]`
-/

namespace A211967.P16107652377995961350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211969 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211967.P16107652377995961350

/-! ## A211967.P6002846792415345948

`record[A123108(n)/A181935(A056539(n))]`
-/

namespace A211967.P6002846792415345948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123108 n : ℚ) / (A181935 (A056539 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211967.P6002846792415345948

/-!
# A211968: Triangle of binary numbers with some initial repeats.

The programs for A211968, there is no canonical definition to state claims against.
-/

/-! ## A211968.P10464035403175973681

`A007088(A211969(n+2))`
-/

namespace A211968.P10464035403175973681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A211969 (n + 2)).toNat

end

end A211968.P10464035403175973681

/-! ## A211968.P7385198384199790471

`A007088(eq[char[A211967(n+1)], A000038(n)])`
-/

namespace A211968.P7385198384199790471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A211968.P7385198384199790471

/-! ## A211968.P13538406695618398141

`A007088(eq[char[A211967(n+1)], A147612(2*n)])`
-/

namespace A211968.P13538406695618398141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A211968.P13538406695618398141

/-! ## A211968.P12899623265003777362

`A185544(2*A211969(n+2))`
-/

namespace A211968.P12899623265003777362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A211969 (n + 2)).toNat

end

end A211968.P12899623265003777362

/-! ## A211968.P1811045397636454434

`A185544(A211969(n+2)+A211969(n+2))`
-/

namespace A211968.P1811045397636454434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A211969 (n + 2) + A211969 (n + 2)).toNat

end

end A211968.P1811045397636454434

/-! ## A211968.P663811992160894066

`A185544(2*eq[char[A211967(n+1)], A000038(n)])`
-/

namespace A211968.P663811992160894066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A211968.P663811992160894066

/-! ## A211968.P9466390342876172414

`A185544(2*eq[char[A211967(n+1)], A147612(2*n)])`
-/

namespace A211968.P9466390342876172414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A211968.P9466390342876172414

/-!
# A211969: Triangle of decimal equivalents of binary numbers with some initial repeats, A211968.

The programs for A211969, there is no canonical definition to state claims against.
-/

/-! ## A211969.P7927088629742461077

`eq[char[A211967(n+1)], A000007(n)]`
-/

namespace A211969.P7927088629742461077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211969.P7927088629742461077

/-! ## A211969.P9268650184861235878

`eq[char[A211967(n+1)], A000038(n)]`
-/

namespace A211969.P9268650184861235878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211969.P9268650184861235878

/-! ## A211969.P3660443632990280929

`eq[char[A211967(n+1)], A130706(n)]`
-/

namespace A211969.P3660443632990280929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211969.P3660443632990280929

/-! ## A211969.P14784595126767879318

`eq[char[A211967(n+1)], A147612(2*n)]`
-/

namespace A211969.P14784595126767879318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211967 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A211969.P14784595126767879318

/-! ## A211969.P2747850349300353696

`lt[1, A181935(A056539(n))]`
-/

namespace A211969.P2747850349300353696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181935 (A056539 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A211969.P2747850349300353696

/-!
# A211970: Square array read by antidiagonal: T(n,k), n >= 0, k >= 0, which arises from a generalization of Euler's Pentagonal Number Theorem.

The programs for A211970, there is no canonical definition to state claims against.
-/

/-! ## A211970.P5415842864709006357

`A319951(ceil(A140303(n)/A319951(n+2)))`
-/

namespace A211970.P5415842864709006357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 ⌈(A140303 n : ℚ) / (A319951 (n + 2) : ℚ)⌉.toNat

end

end A211970.P5415842864709006357

/-! ## A211970.P2440237209564566457

`A089688(A351374(n+1)+A351357(n+1))`
-/

namespace A211970.P2440237209564566457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089688 (A351374 (n + 1) + A351357 (n + 1)).toNat

end

end A211970.P2440237209564566457

/-! ## A211970.P13955082933931422449

`A008925(A115321(n+2)-A351357(n+1))`
-/

namespace A211970.P13955082933931422449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008925 (A115321 (n + 2) - A351357 (n + 1)).toNat

end

end A211970.P13955082933931422449

/-!
# A211971: Column 0 of square array A211970 (in which column 1 is A000041).

The programs for A211971, there is no canonical definition to state claims against.
-/

/-! ## A211971.P12673797794919261560

`A361298(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A211971.P12673797794919261560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A361298 n + a (n - 1)

end

end A211971.P12673797794919261560

/-! ## A211971.P16872423243628845003

`A300415(abs(1-n))+A300415(n)`
-/

namespace A211971.P16872423243628845003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300415 |1 - (n : ℤ)|.toNat + A300415 n

end

end A211971.P16872423243628845003

/-! ## A211971.P7734920999972599298

`abs(Δ[A015128(abs(1-n))])`
-/

namespace A211971.P7734920999972599298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A211971.P7734920999972599298

/-! ## A211971.P15659785169089293765

`A015128(n)+A015128(n)-A309266(n)`
-/

namespace A211971.P15659785169089293765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n + (A015128 n - A309266 n)

end

end A211971.P15659785169089293765

/-! ## A211971.P2744061383069894255

`Δ[A309266(n)-A015128(n)]`
-/

namespace A211971.P2744061383069894255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309266 n - A015128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211971.P2744061383069894255

/-! ## A211971.P5253968403947517366

`Δ[A309266(n)-abs(A004402(n))]`
-/

namespace A211971.P5253968403947517366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309266 n - |A004402 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211971.P5253968403947517366

/-! ## A211971.P6737861301769995870

`A000007(n)+Δ[A321884(A055998(n))]`
-/

namespace A211971.P6737861301769995870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A211971.P6737861301769995870

/-! ## A211971.P12139356696764879642

`Δ[A321884(A055998(n)+A000038(n))]`
-/

namespace A211971.P12139356696764879642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A055998 n + A000038 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211971.P12139356696764879642

/-! ## A211971.P13448175127034617027

`Δ[A321884(A055998(n))-A057428(n)]`
-/

namespace A211971.P13448175127034617027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321884 (A055998 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211971.P13448175127034617027

/-! ## A211971.P2201543452026679776

`A015128(n)-A316723(A090288(n))`
-/

namespace A211971.P2201543452026679776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A316723 (A090288 n).toNat

end

end A211971.P2201543452026679776

/-!
# A211972: Prime numbers which cannot become prime by removing any number of initial binary digits.

The programs for A211972, there is no canonical definition to state claims against.
-/

/-! ## A211972.P6755381564711401777

`A348153(A033621(n+1))`
-/

namespace A211972.P6755381564711401777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (A033621 (n + 1)).toNat

end

end A211972.P6755381564711401777

/-! ## A211972.P5890889905610574121

`A348153(A249157(n+2))`
-/

namespace A211972.P5890889905610574121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (A249157 (n + 2)).toNat

end

end A211972.P5890889905610574121

/-! ## A211972.P7249627072905953932

`A348153(A029731(n+1)+1)`
-/

namespace A211972.P7249627072905953932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (A029731 (n + 1) + 1).toNat

end

end A211972.P7249627072905953932

/-! ## A211972.P2766609022303236679

`A348153(A029967(n+1)+1)`
-/

namespace A211972.P2766609022303236679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (A029967 (n + 1) + 1).toNat

end

end A211972.P2766609022303236679

/-! ## A211972.P6050962238863731054

`A348153(A029970(n+1)+1)`
-/

namespace A211972.P6050962238863731054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (A029970 (n + 1) + 1).toNat

end

end A211972.P6050962238863731054

/-!
# A211973: a(n) = A121880(2*n)/2.

The programs for A211973, there is no canonical definition to state claims against.
-/

/-! ## A211973.P7666034808398647905

`2*4^n-A211975(n+1)`
-/

namespace A211973.P7666034808398647905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - A211975 (n + 1)

end

end A211973.P7666034808398647905

/-! ## A211973.P16902577920044141102

`abs(A211975(n+1)-A004171(n))`
-/

namespace A211973.P16902577920044141102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A211975 (n + 1) - A004171 n|

end

end A211973.P16902577920044141102

/-! ## A211973.P8809181024195001543

`and(-A211975(n+1), A083420(n))`
-/

namespace A211973.P8809181024195001543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A211975 (n + 1)) (A083420 n)

end

end A211973.P8809181024195001543

/-! ## A211973.P6020754340945725610

`A121880(2*n+1)+A000027(A216959(n+1))`
-/

namespace A211973.P6020754340945725610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121880 (2 * n + 1) + A000027 (A216959 (n + 1)).toNat

end

end A211973.P6020754340945725610

/-! ## A211973.P11233447476035797058

`A121880(2*(n+1))/A043529(A191930(3*(n+1)))`
-/

namespace A211973.P11233447476035797058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121880 (2 * (n + 1)) : ℚ) / (A043529 (A191930 (3 * (n + 1))).toNat : ℚ)

end

end A211973.P11233447476035797058

/-!
# A211974: Number of E-toothpicks added at n-th stage in the structure of A161336.

The programs for A211974, there is no canonical definition to state claims against.
-/

/-! ## A211974.P2968334025154256755

`Δ[floor(A161330(n)/6)]`
-/

namespace A211974.P2968334025154256755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161330 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211974.P2968334025154256755

/-! ## A211974.P17928373557357202946

`floor(tanh(3)*A220498(n))`
-/

namespace A211974.P17928373557357202946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tanh (3 : ℝ) * (A220498 n : ℝ)⌋

end

end A211974.P17928373557357202946

/-! ## A211974.P16953050091863864129

`floor(A161332(n+1)/3)`
-/

namespace A211974.P16953050091863864129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161332 (n + 1) : ℚ) / 3⌋

end

end A211974.P16953050091863864129

/-! ## A211974.P2386911198273804144

`floor(A161331(n+1)/6)`
-/

namespace A211974.P2386911198273804144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A161331 (n + 1) : ℚ) / 6⌋

end

end A211974.P2386911198273804144

/-! ## A211974.P13554141854205581094

`round(A161331(C(n+1, n))/6)`
-/

namespace A211974.P13554141854205581094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161331 (Nat.choose (n + 1) n) : ℚ) / 6)

end

end A211974.P13554141854205581094

/-! ## A211974.P8885728263270126822

`round(A161331(Δ[n²]-n)/6)`
-/

namespace A211974.P8885728263270126822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161331 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 6)

end

end A211974.P8885728263270126822

/-! ## A211974.P17453588768155298948

`Δ[round(A161330(2*n-n)/6)]`
-/

namespace A211974.P17453588768155298948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A161330 (2 * n - n) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211974.P17453588768155298948

/-! ## A211974.P8852610341959252181

`A014681(A220498(n))`
-/

namespace A211974.P8852610341959252181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A220498 n).toNat

end

end A211974.P8852610341959252181

/-! ## A211974.P12669858999296073365

`Δ[A117905(A161330(n))]`
-/

namespace A211974.P12669858999296073365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 (A161330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211974.P12669858999296073365

/-! ## A211974.P8001873843635236584

`A002264(A161332(n+1))`
-/

namespace A211974.P8001873843635236584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A161332 (n + 1)).toNat

end

end A211974.P8001873843635236584

/-!
# A211975: A122536(2n)/2.

The programs for A211975, there is no canonical definition to state claims against.
-/

/-! ## A211975.P6571640206938623861

`A122536(2*(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A211975.P6571640206938623861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122536 (2 * (n + 1)) : ℚ) / 2

end

end A211975.P6571640206938623861

/-! ## A211975.P5492976487542432475

`record[A122536(xor(1, n)+1)]/2`
-/

namespace A211975.P5492976487542432475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122536 (Nat.xor 1 n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A211975.P5492976487542432475

/-! ## A211975.P2628232219902805914

`floor(A122536(n+2+n)/2)`
-/

namespace A211975.P2628232219902805914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A122536 (n + 2 + n) : ℚ) / 2⌋

end

end A211975.P2628232219902805914

/-! ## A211975.P7090038255251643753

`round(A122536(Δ[n²]+1)/2)`
-/

namespace A211975.P7090038255251643753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A122536 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat : ℚ) / 2)

end

end A211975.P7090038255251643753

/-! ## A211975.P1531050411224723056

`2*4^n-A211973(n+1)`
-/

namespace A211975.P1531050411224723056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - A211973 (n + 1)

end

end A211975.P1531050411224723056

/-!
# A211976: First differences of the E-toothpick sequence A211964.

The programs for A211976, there is no canonical definition to state claims against.
-/

/-! ## A211976.P11825147765266246897

`(A161331(n+2)/6+1)/2`
-/

namespace A211976.P11825147765266246897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A161331 (n + 2) : ℚ) / 6 + 1) / 2

end

end A211976.P11825147765266246897

/-! ## A211976.P11791401898082013793

`A220498(n+1)/2`
-/

namespace A211976.P11791401898082013793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220498 (n + 1) : ℚ) / 2

end

end A211976.P11791401898082013793

/-! ## A211976.P14144604804558880099

`Δ[∑[A220498(n)]/2]`
-/

namespace A211976.P14144604804558880099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220498 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211976.P14144604804558880099

/-! ## A211976.P4753465402939826471

`ceil(A161331(n+2)/12)`
-/

namespace A211976.P4753465402939826471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161331 (n + 2) : ℚ) / 12⌉

end

end A211976.P4753465402939826471

/-! ## A211976.P11991854675192350231

`ceil(Δ[A161330(n+1)/2]/6)`
-/

namespace A211976.P11991854675192350231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) / 6⌉

end

end A211976.P11991854675192350231

/-! ## A211976.P11110407652337363369

`A001281(A220498(n+1))`
-/

namespace A211976.P11110407652337363369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A220498 (n + 1)).toNat

end

end A211976.P11110407652337363369

/-! ## A211976.P16465096425758084460

`A008647(A161331(n+2))`
-/

namespace A211976.P16465096425758084460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (A161331 (n + 2)).toNat

end

end A211976.P16465096425758084460

/-! ## A211976.P4486919955401336184

`A057979(A220498(n+1)+1)`
-/

namespace A211976.P4486919955401336184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A220498 (n + 1) + 1).toNat

end

end A211976.P4486919955401336184

/-! ## A211976.P10521977801799612874

`A008612(Δ[A161330(n+1)/2])`
-/

namespace A211976.P10521977801799612874
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A211976.P10521977801799612874

/-! ## A211976.P15657698485792643960

`A117905(Δ[A161330(n+1)/2])`
-/

namespace A211976.P15657698485792643960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161330 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117905 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat

end

end A211976.P15657698485792643960

/-!
# A211977: Triangle read by rows, T(n,k) = spt_k(n), in which column k lists the k-th order spt-function (without the first k-1 zeros), n >= 1, k >= 1.

The programs for A211977, there is no canonical definition to state claims against.
-/

/-! ## A211977.P9950331958867627745

`A143858(n+1)-A099104(A083706(n))`
-/

namespace A211977.P9950331958867627745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1) - A099104 (A083706 n).toNat

end

end A211977.P9950331958867627745

/-! ## A211977.P970514961819076637

`A143858(n+1)-A187946(A049374(n+1))`
-/

namespace A211977.P970514961819076637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1) - A187946 (A049374 (n + 1)).toNat

end

end A211977.P970514961819076637

/-! ## A211977.P1402298795094373217

`A143858(n+1)-A289165(A124400(n))`
-/

namespace A211977.P1402298795094373217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1) - A289165 (A124400 n).toNat

end

end A211977.P1402298795094373217

/-! ## A211977.P102889410885333559

`A143858(n+1)-A164292(A303259(n))`
-/

namespace A211977.P102889410885333559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1) - A164292 (A303259 n).toNat

end

end A211977.P102889410885333559

/-! ## A211977.P11764543210472659558

`A143858(n+1)-A117943(A342140(n+1))`
-/

namespace A211977.P11764543210472659558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143858 (n + 1) - A117943 (A342140 (n + 1)).toNat

end

end A211977.P11764543210472659558

/-!
# A211978: Total number of parts in all partitions of n plus the sum of largest parts of all partitions of n.

The programs for A211978, there is no canonical definition to state claims against.
-/

/-! ## A211978.P17154958007089674022

`2*A006128(n)`
-/

namespace A211978.P17154958007089674022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006128 n

end

end A211978.P17154958007089674022

/-! ## A211978.P17965486351444058300

`∑[A278602(n)/2]`
-/

namespace A211978.P17965486351444058300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278602 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211978.P17965486351444058300

/-! ## A211978.P5610058693726186125

`A210970(n)-∑[n]`
-/

namespace A211978.P5610058693726186125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210970 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A211978.P5610058693726186125

/-! ## A211978.P2621731101186739645

`2*(A225596(n)-n)`
-/

namespace A211978.P2621731101186739645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A225596 n - (n : ℤ))

end

end A211978.P2621731101186739645

/-! ## A211978.P14603616081613153617

`2*∑{d}[n, A085410(#)]`
-/

namespace A211978.P14603616081613153617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), A085410 d)

end

end A211978.P14603616081613153617

/-! ## A211978.P2148287669449599119

`A225610(n)-A133041(n)`
-/

namespace A211978.P2148287669449599119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225610 n - A133041 n

end

end A211978.P2148287669449599119

/-! ## A211978.P6307474738210985169

`2*(A093694(n)-A000041(n))`
-/

namespace A211978.P6307474738210985169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093694 n - A000041 n)

end

end A211978.P6307474738210985169

/-! ## A211978.P17718801634686834216

`2*A093694(n)-A139582(n)`
-/

namespace A211978.P17718801634686834216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093694 n - A139582 n

end

end A211978.P17718801634686834216

/-! ## A211978.P15953378601727116385

`A225610(n)-(A000041(n)+n)`
-/

namespace A211978.P15953378601727116385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225610 n - (A000041 n + (n : ℤ))

end

end A211978.P15953378601727116385

/-! ## A211978.P3618553210165414174

`A006128(n)+A225596(n)-n`
-/

namespace A211978.P3618553210165414174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (A225596 n - (n : ℤ))

end

end A211978.P3618553210165414174

/-! ## A211978.P8088020120167294415

`2*(A093694(n)-∑[A002865(n)])`
-/

namespace A211978.P8088020120167294415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A093694 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211978.P8088020120167294415

/-! ## A211978.P3982801336048284931

`2*(A194452(n)+A024786(n+1))`
-/

namespace A211978.P3982801336048284931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A194452 n + A024786 (n + 1))

end

end A211978.P3982801336048284931

/-! ## A211978.P5311066051802323690

`2*(∑[A138137(n+1)]-A138137(n+1))`
-/

namespace A211978.P5311066051802323690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A138137 (n + 1))

end

end A211978.P5311066051802323690

/-! ## A211978.P947298125408020639

`A006128(A005843(n)/2)+A006128(n)`
-/

namespace A211978.P947298125408020639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A006128 n

end

end A211978.P947298125408020639

/-! ## A211978.P18083631905205431166

`A006128(A005843(n)-n)+A006128(n)`
-/

namespace A211978.P18083631905205431166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A005843 n - (n : ℤ)).toNat + A006128 n

end

end A211978.P18083631905205431166

/-! ## A211978.P8043601269835225713

`A006128(n)+A093694(n)-A000041(n)`
-/

namespace A211978.P8043601269835225713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (A093694 n - A000041 n)

end

end A211978.P8043601269835225713

/-! ## A211978.P15944530988038935048

`A006128(A000027(n+1)-1)+A006128(n)`
-/

namespace A211978.P15944530988038935048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (A000027 (n + 1) - 1).toNat + A006128 n

end

end A211978.P15944530988038935048

/-! ## A211978.P17087052598483722212

`A024786(n+1)+A194452(n)+A006128(n)`
-/

namespace A211978.P17087052598483722212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024786 (n + 1) + (A194452 n + A006128 n)

end

end A211978.P17087052598483722212

/-! ## A211978.P6364456171072048478

`A006128(n)+A006128(n%A023354(n+1))`
-/

namespace A211978.P6364456171072048478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + A006128 (Int.tmod (n : ℤ) (A023354 (n + 1))).toNat

end

end A211978.P6364456171072048478

/-! ## A211978.P131447733333365494

`A006128(n+1)+A006128(n)-A138137(n+1)`
-/

namespace A211978.P131447733333365494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A006128 n - A138137 (n + 1))

end

end A211978.P131447733333365494

/-!
# A211980: Triangle read by rows: T(n,k) = total number of regions in the last n-k+1 shells of n.

The programs for A211980, there is no canonical definition to state claims against.
-/

/-! ## A211980.P6908142907294983666

`A027300(∑[char[∑[n]]]²-n)+char[∑[n]]`
-/

namespace A211980.P6908142907294983666
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) + ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ)

end

end A211980.P6908142907294983666

/-! ## A211980.P3756005036358502240

`A141155(A080036(n))-A141155(n)`
-/

namespace A211980.P3756005036358502240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141155 (A080036 n).toNat - A141155 n

end

end A211980.P3756005036358502240

/-! ## A211980.P15961668569446110214

`A008481(A140513(n))-A008481(A059268(n))`
-/

namespace A211980.P15961668569446110214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008481 (A140513 n).toNat - A008481 (A059268 n).toNat

end

end A211980.P15961668569446110214

/-! ## A211980.P211060795028365673

`A000041(A123578(n+1))-A008481(A059268(n))`
-/

namespace A211980.P211060795028365673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A123578 (n + 1)).toNat - A008481 (A059268 n).toNat

end

end A211980.P211060795028365673

/-! ## A211980.P14812254773027302719

`A211990(∑[char[∑[n]]]²-n)`
-/

namespace A211980.P14812254773027302719
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A211980.P14812254773027302719

/-! ## A211980.P6599801170124326827

`A211990(A038722(n+1))%A004767(n)`
-/

namespace A211980.P6599801170124326827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211990 (A038722 (n + 1)).toNat) (A004767 n)

end

end A211980.P6599801170124326827

/-! ## A211980.P16183656958031694652

`lcm(A087960(n), A211990(A038722(n+1)))`
-/

namespace A211980.P16183656958031694652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A211990 (A038722 (n + 1)).toNat)

end

end A211980.P16183656958031694652

/-! ## A211980.P9329698566854044149

`or(A000007(n), A211990(A038722(n+1)))`
-/

namespace A211980.P9329698566854044149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A211990 (A038722 (n + 1)).toNat)

end

end A211980.P9329698566854044149

/-!
# A211981: Numbers n such that floor(2^A006666(n)/3^A006667(n)) = n.

The programs for A211981, there is no canonical definition to state claims against.
-/

/-! ## A211981.P2320441613215004090

`eq[0, A225089(n+1)]+1`
-/

namespace A211981.P2320441613215004090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225089 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A211981.P2320441613215004090

/-! ## A211981.P13329331706654234708

`record[gcd(A000027(n+1), A225089(n+1))]`
-/

namespace A211981.P13329331706654234708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A225089 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211981.P13329331706654234708

/-! ## A211981.P15605260700708105687

`record[A008619(n+1)/A213181(n+3)]`
-/

namespace A211981.P15605260700708105687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (n + 1) : ℚ) / (A213181 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211981.P15605260700708105687

/-! ## A211981.P7377978861947549768

`record[A065033(n)/A133494(A213181(n+1))]`
-/

namespace A211981.P7377978861947549768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A133494 (A213181 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211981.P7377978861947549768

/-! ## A211981.P18084708690680999777

`record[A065033(n)/A065033(A213181(n+1)²)]`
-/

namespace A211981.P18084708690680999777
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 n : ℚ) / (A065033 (A213181 (n + 1) ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211981.P18084708690680999777

/-!
# A211982: Second crank moment minus second rank moment: M_2(n) - N_2(n) = 2*spt(n).

The programs for A211982, there is no canonical definition to state claims against.
-/

/-! ## A211982.P7466861690056228365

`2*A092269(n+1)`
-/

namespace A211982.P7466861690056228365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092269 (n + 1)

end

end A211982.P7466861690056228365

/-! ## A211982.P13721054521900451955

`A220909(n+1)-A220908(n+1)`
-/

namespace A211982.P13721054521900451955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220909 (n + 1) - A220908 (n + 1)

end

end A211982.P13721054521900451955

/-! ## A211982.P1258803114496756320

`2*(A220489(n+1)+A220483(n+1))`
-/

namespace A211982.P1258803114496756320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A220489 (n + 1) + A220483 (n + 1))

end

end A211982.P1258803114496756320

/-! ## A211982.P13072265159442346041

`2*(A006128(n+1)-A182984(n+1))`
-/

namespace A211982.P13072265159442346041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A006128 (n + 1) - A182984 (n + 1))

end

end A211982.P13072265159442346041

/-! ## A211982.P12949428244153383926

`A000041(n+1)+A215513(n+1)+A092269(n+1)`
-/

namespace A211982.P12949428244153383926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) + (A215513 (n + 1) + A092269 (n + 1))

end

end A211982.P12949428244153383926

/-! ## A211982.P12634037191029475788

`A092269(n+1)+A220489(n+1)+A220483(n+1)`
-/

namespace A211982.P12634037191029475788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220489 (n + 1) + A220483 (n + 1))

end

end A211982.P12634037191029475788

/-! ## A211982.P5329402072960469316

`A006128(n+1)+A092269(n+1)-A182984(n+1)`
-/

namespace A211982.P5329402072960469316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 (n + 1) + (A092269 (n + 1) - A182984 (n + 1))

end

end A211982.P5329402072960469316

/-! ## A211982.P15094775637416725563

`A066186(n+1)+A066186(n+1)-A220908(n+1)`
-/

namespace A211982.P15094775637416725563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A066186 (n + 1) - A220908 (n + 1))

end

end A211982.P15094775637416725563

/-! ## A211982.P13503853130350649491

`A066186(n+1)+A092269(n+1)-A220907(n+1)`
-/

namespace A211982.P13503853130350649491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066186 (n + 1) + (A092269 (n + 1) - A220907 (n + 1))

end

end A211982.P13503853130350649491

/-! ## A211982.P13646102279053178171

`A220909(n+1)-(A220907(n+1)+A220907(n+1))`
-/

namespace A211982.P13646102279053178171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220909 (n + 1) - (A220907 (n + 1) + A220907 (n + 1))

end

end A211982.P13646102279053178171

/-! ## A211982.P2128207679432074768

`A211609(n+1)/6`
-/

namespace A211982.P2128207679432074768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211609 (n + 1) : ℚ) / 6

end

end A211982.P2128207679432074768

/-! ## A211982.P3755583989672995349

`2*(A268191(n+1)+A000203(n+1))`
-/

namespace A211982.P3755583989672995349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A268191 (n + 1) + A000203 (n + 1))

end

end A211982.P3755583989672995349

/-! ## A211982.P18408462737802050460

`2*(A195820(n+1)+A000070(n))`
-/

namespace A211982.P18408462737802050460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195820 (n + 1) + A000070 n)

end

end A211982.P18408462737802050460

/-! ## A211982.P5206454955485154210

`2*(A195820(n+1)+∑[A000041(n)])`
-/

namespace A211982.P5206454955485154210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195820 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211982.P5206454955485154210

/-! ## A211982.P13103651290579774390

`∑[A139582(n)]+2*A195820(n+1)`
-/

namespace A211982.P13103651290579774390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * A195820 (n + 1)

end

end A211982.P13103651290579774390

/-! ## A211982.P9172987493434951288

`A092269(n+1)+A195820(n+1)+A000070(n)`
-/

namespace A211982.P9172987493434951288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A195820 (n + 1) + A000070 n)

end

end A211982.P9172987493434951288

/-! ## A211982.P2670268978603647268

`A000070(n+1)+A215513(n+1)+A195820(n+1)`
-/

namespace A211982.P2670268978603647268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1) + (A215513 (n + 1) + A195820 (n + 1))

end

end A211982.P2670268978603647268

/-! ## A211982.P4456356512957348173

`A092269(n+1)+A220479(n+1)+A120452(n+2)`
-/

namespace A211982.P4456356512957348173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092269 (n + 1) + (A220479 (n + 1) + A120452 (n + 2))

end

end A211982.P4456356512957348173

/-!
# A211984: A list of ordered partitions of the positive integers in which the shells of each integer are assembled by their tails.

The programs for A211984, there is no canonical definition to state claims against.
-/

/-! ## A211984.P2023155734680192394

`A046951(A273648(n)+A029578(A004525(n)))`
-/

namespace A211984.P2023155734680192394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A273648 n + A029578 (A004525 n).toNat).toNat

end

end A211984.P2023155734680192394

/-! ## A211984.P15177653380763089309

`A046951(A273648(n)+A029578(A004526(n)))`
-/

namespace A211984.P15177653380763089309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A273648 n + A029578 (A004526 n).toNat).toNat

end

end A211984.P15177653380763089309

/-! ## A211984.P6296686917269882261

`A327804(xor(7, A301291(n)))`
-/

namespace A211984.P6296686917269882261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327804 (Int.xor 7 (A301291 n)).toNat

end

end A211984.P6296686917269882261

/-! ## A211984.P701372498089012804

`gcd(A016861(A239015(n+1)), A307496(n))`
-/

namespace A211984.P701372498089012804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016861 (A239015 (n + 1)).toNat) (A307496 n)

end

end A211984.P701372498089012804

/-! ## A211984.P12833270274368655343

`gcd(A277872(A305148(3*n+2)), A305148(n))`
-/

namespace A211984.P12833270274368655343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277872 (A305148 (3 * n + 2)).toNat) (A305148 n)

end

end A211984.P12833270274368655343

/-!
# A211985: A list of certain compositions which arise from the ordered partitions of the positive integers in which the shells of each integer are arranged as a spiral.

The programs for A211985, there is no canonical definition to state claims against.
-/

/-! ## A211985.P6295344873813904032

`A005361(A238702(n+1)+A049917(n+1))`
-/

namespace A211985.P6295344873813904032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A238702 (n + 1) + A049917 (n + 1)).toNat

end

end A211985.P6295344873813904032

/-! ## A211985.P10810580142183842351

`gcd(A029886(A005188(n+1)), A029905(n))`
-/

namespace A211985.P10810580142183842351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029886 (A005188 (n + 1)).toNat) (A029905 n)

end

end A211985.P10810580142183842351

/-! ## A211985.P6272266440015327782

`A001511(A324690(3*n+1)+A324686(n))`
-/

namespace A211985.P6272266440015327782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A324690 (3 * n + 1) + A324686 n).toNat

end

end A211985.P6272266440015327782

/-! ## A211985.P9802708524346649665

`A206437(A133310(n)^A249770(3*(n+2)))`
-/

namespace A211985.P9802708524346649665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206437 (SequenceMachineLib.roundAway ((A133310 n : ℚ) ^ (A249770 (3 * (n + 2)) : ℤ))).toNat

end

end A211985.P9802708524346649665

/-! ## A211985.P7032200230766774112

`A066099(A000203(n+1)*A357627(3*(n+1)))`
-/

namespace A211985.P7032200230766774112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A000203 (n + 1) * A357627 (3 * (n + 1))).toNat

end

end A211985.P7032200230766774112

/-!
# A211986: A list of certain compositions which arise from the ordered partitions of the positive integers in which the shells of each integer are arranged as the arms of a spiral.

The programs for A211986, there is no canonical definition to state claims against.
-/

/-! ## A211986.P8611738739589056479

`A059895(A139054(n+1)+A116997(n+2))`
-/

namespace A211986.P8611738739589056479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059895 (A139054 (n + 1) + A116997 (n + 2)).toNat

end

end A211986.P8611738739589056479

/-! ## A211986.P5861823204706427267

`A211989(lcm(n+1, A101021(n)))`
-/

namespace A211986.P5861823204706427267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211989 (Int.lcm (n + 1 : ℤ) (A101021 n))

end

end A211986.P5861823204706427267

/-! ## A211986.P3334410916013160891

`A211985(C(n+1, A211999(n+2)))`
-/

namespace A211986.P3334410916013160891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211985 (Nat.choose (n + 1) (A211999 (n + 2)).toNat)

end

end A211986.P3334410916013160891

/-! ## A211986.P4149522154837626522

`gcd(A002251(A318248(n)), A271269(n+1))`
-/

namespace A211986.P4149522154837626522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002251 (A318248 n).toNat) (A271269 (n + 1))

end

end A211986.P4149522154837626522

/-! ## A211986.P2643013338506766869

`A089723(A363122(n+1)^A242062(n))`
-/

namespace A211986.P2643013338506766869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (SequenceMachineLib.roundAway ((A363122 (n + 1) : ℚ) ^ (A242062 n : ℤ))).toNat

end

end A211986.P2643013338506766869

/-!
# A211987: A list of certain compositions which arise from the ordered partitions of the positive integers in which the shells of each integer are arranged as a spiral.

The programs for A211987, there is no canonical definition to state claims against.
-/

/-! ## A211987.P12536377594959830857

`A138904(A168070(2*(n+1))%A168080(2*n+5))`
-/

namespace A211987.P12536377594959830857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (Int.tmod (A168070 (2 * (n + 1))) (A168080 (2 * n + 5))).toNat

end

end A211987.P12536377594959830857

/-! ## A211987.P5460590163340828456

`A036037(A226179(n+1)+A037954(n))`
-/

namespace A211987.P5460590163340828456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036037 (A226179 (n + 1) + A037954 n).toNat

end

end A211987.P5460590163340828456

/-! ## A211987.P3021399361669904902

`A088424(A285906(n+2))`
-/

namespace A211987.P3021399361669904902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088424 (A285906 (n + 2)).toNat

end

end A211987.P3021399361669904902

/-! ## A211987.P9963393781210292814

`A072411(A257277(2*n+3)+A000579(n))`
-/

namespace A211987.P9963393781210292814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (A257277 (2 * n + 3) + A000579 n).toNat

end

end A211987.P9963393781210292814

/-! ## A211987.P6199423739202391254

`gcd(A005681(A057704(n+4)), A216345(n+1))`
-/

namespace A211987.P6199423739202391254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005681 (A057704 (n + 4)).toNat) (A216345 (n + 1))

end

end A211987.P6199423739202391254

/-!
# A211989: A list of ordered partitions of the positive integers in which the shells of each integer are assembled by their tails.

The programs for A211989, there is no canonical definition to state claims against.
-/

/-! ## A211989.P8972363510715664459

`gcd(A033879(n+2), A296340(A296335(2*(n+1))))`
-/

namespace A211989.P8972363510715664459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 2)) (A296340 (A296335 (2 * (n + 1))).toNat)

end

end A211989.P8972363510715664459

/-! ## A211989.P17051414352712761425

`gcd(A030820(n+1), A226384(A001037(n)))`
-/

namespace A211989.P17051414352712761425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030820 (n + 1)) (A226384 (A001037 n).toNat)

end

end A211989.P17051414352712761425

/-! ## A211989.P14523888125117743846

`A046951(xor(A081363(n+1), A109167(n)))`
-/

namespace A211989.P14523888125117743846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (Int.xor (A081363 (n + 1)) (A109167 n)).toNat

end

end A211989.P14523888125117743846

/-! ## A211989.P7643762309499371278

`A211986(lt[A122134(n), A212001(n+1)])`
-/

namespace A211989.P7643762309499371278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122134 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211986 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A211989.P7643762309499371278

/-! ## A211989.P16822549255387893575

`A055396(A119308(2*n+1)*A193722(n))`
-/

namespace A211989.P16822549255387893575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A119308 (2 * n + 1) * A193722 n).toNat

end

end A211989.P16822549255387893575

/-!
# A211990: Triangle read by rows: T(n,k) is the total number of regions in the last k sections of the modular table of partitions of n.

The programs for A211990, there is no canonical definition to state claims against.
-/

/-! ## A211990.P7994764959258348834

`A027300(n+1)+char[∑[n-1]]`
-/

namespace A211990.P7994764959258348834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027300 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A211990.P7994764959258348834

/-! ## A211990.P391765845696634582

`A073424(n+1)+A027300(n+1)`
-/

namespace A211990.P391765845696634582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 1) + A027300 (n + 1)

end

end A211990.P391765845696634582

/-! ## A211990.P14784421262514815706

`(A027300(n+1)+A023531(n))%62`
-/

namespace A211990.P14784421262514815706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027300 (n + 1) + A023531 n) 62

end

end A211990.P14784421262514815706

/-! ## A211990.P16839062644975223863

`A000027(A027300(n+1)+A023531(n))`
-/

namespace A211990.P16839062644975223863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A027300 (n + 1) + A023531 n).toNat

end

end A211990.P16839062644975223863

/-! ## A211990.P5288403623450897509

`A028310(A027300(n+1)+A023531(n))`
-/

namespace A211990.P5288403623450897509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A027300 (n + 1) + A023531 n).toNat

end

end A211990.P5288403623450897509

/-! ## A211990.P7870146119098861519

`A058348(A025581(n))+A027300(n+1)`
-/

namespace A211990.P7870146119098861519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A025581 n).toNat + A027300 (n + 1)

end

end A211990.P7870146119098861519

/-! ## A211990.P15329774372977735585

`(A027300(n+1)+A023531(n))*A007318(C(n, n²))`
-/

namespace A211990.P15329774372977735585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027300 (n + 1) + A023531 n) * A007318 (Nat.choose n (n ^ 2))

end

end A211990.P15329774372977735585

/-! ## A211990.P8354506566564321064

`A008683(4*(n+5))+A027300(n+1)+A023531(n)`
-/

namespace A211990.P8354506566564321064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 5)) + (A027300 (n + 1) + A023531 n)

end

end A211990.P8354506566564321064

/-! ## A211990.P14821716806288651419

`(A027300(n+1)+A023531(n))*A014963(10*(n+1))`
-/

namespace A211990.P14821716806288651419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027300 (n + 1) + A023531 n) * A014963 (10 * (n + 1))

end

end A211990.P14821716806288651419

/-! ## A211990.P1720412422573851993

`(A027300(n+1)+A023531(n))*A000041(C(2, 2*n))`
-/

namespace A211990.P1720412422573851993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027300 (n + 1) + A023531 n) * A000041 (Nat.choose 2 (2 * n))

end

end A211990.P1720412422573851993

/-!
# A211991: Difference between the arithmetic derivative of n and the sum of proper divisors of n.

The programs for A211991, the canonical program `A211991.P15084257827643114560` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211991 has offset 1).

The definition of A211991 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A211991.P15084257827643114560

`A003415(n+1)-A001065(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A211991

/-- `A003415(n+1)-A001065(n+1)` -/
def P15084257827643114560.Spec : Prop :=
  ∀ n, P15084257827643114560.a n = A211991 (n + 1)

theorem P15084257827643114560.correct : P15084257827643114560.Spec := by
  intro n
  simp only [A211991, Nat.add_sub_cancel]

end A211991

/-! ## A211991.P373824133814765566

`A003415(n+1)-(A000203(n+1)-(n+1))`
-/

namespace A211991.P373824133814765566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - (A000203 (n + 1) - (n + 1 : ℤ))

end

end A211991.P373824133814765566

namespace A211991

/-- `A003415(n+1)-(A000203(n+1)-(n+1))` -/
def P373824133814765566.Spec : Prop :=
  ∀ n, P373824133814765566.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P10362563675371594956

`1-A343224(n+1)+n`
-/

namespace A211991.P10362563675371594956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343224 (n + 1) + (n : ℤ)

end

end A211991.P10362563675371594956

namespace A211991

/-- `1-A343224(n+1)+n` -/
def P10362563675371594956.Spec : Prop :=
  ∀ n, P10362563675371594956.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P3143157333565098393

`∑[A258057(n)]-A001065(n+1)`
-/

namespace A211991.P3143157333565098393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001065 (n + 1)

end

end A211991.P3143157333565098393

namespace A211991

/-- `∑[A258057(n)]-A001065(n+1)` -/
def P3143157333565098393.Spec : Prop :=
  ∀ n, P3143157333565098393.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P10775496930740271802

`A168036(n+1)+A033879(n+1)`
-/

namespace A211991.P10775496930740271802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) + A033879 (n + 1)

end

end A211991.P10775496930740271802

namespace A211991

/-- `A168036(n+1)+A033879(n+1)` -/
def P10775496930740271802.Spec : Prop :=
  ∀ n, P10775496930740271802.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P1464079205474176068

`A129283(n+1)-A000203(n+1)`
-/

namespace A211991.P1464079205474176068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - A000203 (n + 1)

end

end A211991.P1464079205474176068

namespace A211991

/-- `A129283(n+1)-A000203(n+1)` -/
def P1464079205474176068.Spec : Prop :=
  ∀ n, P1464079205474176068.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P12532716495798137473

`A168036(n+1)-A033880(n+1)`
-/

namespace A211991.P12532716495798137473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (n + 1) - A033880 (n + 1)

end

end A211991.P12532716495798137473

namespace A211991

/-- `A168036(n+1)-A033880(n+1)` -/
def P12532716495798137473.Spec : Prop :=
  ∀ n, P12532716495798137473.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P13148573168053871805

`A344178(n+1)-A051709(n+1)`
-/

namespace A211991.P13148573168053871805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344178 (n + 1) - A051709 (n + 1)

end

end A211991.P13148573168053871805

namespace A211991

/-- `A344178(n+1)-A051709(n+1)` -/
def P13148573168053871805.Spec : Prop :=
  ∀ n, P13148573168053871805.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P11812287087173023464

`A344584(n+1)-A319683(n+1)`
-/

namespace A211991.P11812287087173023464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344584 (n + 1) - A319683 (n + 1)

end

end A211991.P11812287087173023464

namespace A211991

/-- `A344584(n+1)-A319683(n+1)` -/
def P11812287087173023464.Spec : Prop :=
  ∀ n, P11812287087173023464.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P17599593725573467290

`A348029(n+1)-A348970(n+1)`
-/

namespace A211991.P17599593725573467290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348029 (n + 1) - A348970 (n + 1)

end

end A211991.P17599593725573467290

namespace A211991

/-- `A348029(n+1)-A348970(n+1)` -/
def P17599593725573467290.Spec : Prop :=
  ∀ n, P17599593725573467290.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P2894272583951811125

`∑[A258057(n)+1]-A000203(n+1)`
-/

namespace A211991.P2894272583951811125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000203 (n + 1)

end

end A211991.P2894272583951811125

namespace A211991

/-- `∑[A258057(n)+1]-A000203(n+1)` -/
def P2894272583951811125.Spec : Prop :=
  ∀ n, P2894272583951811125.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P10649975512063001286

`A033879(n+1)+∑[A258057(n)-1]`
-/

namespace A211991.P10649975512063001286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211991.P10649975512063001286

namespace A211991

/-- `A033879(n+1)+∑[A258057(n)-1]` -/
def P10649975512063001286.Spec : Prop :=
  ∀ n, P10649975512063001286.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P15324818998700906685

`∑[A258057(n)-1]-A033880(n+1)`
-/

namespace A211991.P15324818998700906685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033880 (n + 1)

end

end A211991.P15324818998700906685

namespace A211991

/-- `∑[A258057(n)-1]-A033880(n+1)` -/
def P15324818998700906685.Spec : Prop :=
  ∀ n, P15324818998700906685.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P10170659669511175629

`A129283(n+1)-(A039653(n+1)+1)`
-/

namespace A211991.P10170659669511175629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - (A039653 (n + 1) + 1)

end

end A211991.P10170659669511175629

namespace A211991

/-- `A129283(n+1)-(A039653(n+1)+1)` -/
def P10170659669511175629.Spec : Prop :=
  ∀ n, P10170659669511175629.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P17727805045551066592

`A129283(n+1)-A245092(2*n+1)`
-/

namespace A211991.P17727805045551066592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 (n + 1) - A245092 (2 * n + 1)

end

end A211991.P17727805045551066592

namespace A211991

/-- `A129283(n+1)-A245092(2*n+1)` -/
def P17727805045551066592.Spec : Prop :=
  ∀ n, P17727805045551066592.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P2183731414926548167

`A003415(n+1)-A039653(n+1)+n`
-/

namespace A211991.P2183731414926548167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) - A039653 (n + 1) + (n : ℤ)

end

end A211991.P2183731414926548167

namespace A211991

/-- `A003415(n+1)-A039653(n+1)+n` -/
def P2183731414926548167.Spec : Prop :=
  ∀ n, P2183731414926548167.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P13918897098022015801

`A033879(n+1)+A345001(n+1)-A001065(n+1)`
-/

namespace A211991.P13918897098022015801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) + (A345001 (n + 1) - A001065 (n + 1))

end

end A211991.P13918897098022015801

namespace A211991

/-- `A033879(n+1)+A345001(n+1)-A001065(n+1)` -/
def P13918897098022015801.Spec : Prop :=
  ∀ n, P13918897098022015801.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P13986266499342520363

`A051953(n+1)+A344178(n+1)-A001065(n+1)`
-/

namespace A211991.P13986266499342520363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) + (A344178 (n + 1) - A001065 (n + 1))

end

end A211991.P13986266499342520363

namespace A211991

/-- `A051953(n+1)+A344178(n+1)-A001065(n+1)` -/
def P13986266499342520363.Spec : Prop :=
  ∀ n, P13986266499342520363.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P17286052832797182721

`A003415(n+1)+A168036(n+1)-A345001(n+1)`
-/

namespace A211991.P17286052832797182721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A168036 (n + 1) - A345001 (n + 1))

end

end A211991.P17286052832797182721

namespace A211991

/-- `A003415(n+1)+A168036(n+1)-A345001(n+1)` -/
def P17286052832797182721.Spec : Prop :=
  ∀ n, P17286052832797182721.a n = A211991 (n + 1)

end A211991

/-! ## A211991.P1916603344173303421

`A003415(n+1)+A186170(n+1)-A387470(n+1)`
-/

namespace A211991.P1916603344173303421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A186170 (n + 1) - A387470 (n + 1))

end

end A211991.P1916603344173303421

namespace A211991

/-- `A003415(n+1)+A186170(n+1)-A387470(n+1)` -/
def P1916603344173303421.Spec : Prop :=
  ∀ n, P1916603344173303421.a n = A211991 (n + 1)

end A211991

/-!
# A211992: Triangle read by rows in which row n lists the partitions of n in colexicographic order.

The programs for A211992, there is no canonical definition to state claims against.
-/

/-! ## A211992.P17703717909798193235

`A211993(n+1)+A211994(n+1)-A026792(n+1)`
-/

namespace A211992.P17703717909798193235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211993 (n + 1) + (A211994 (n + 1) - A026792 (n + 1))

end

end A211992.P17703717909798193235

/-! ## A211992.P15533452692739447133

`A337260(lt[A293519(n), ∑{digits}[n, #]^3])`
-/

namespace A211992.P15533452692739447133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293519 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337260 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A211992.P15533452692739447133

/-! ## A211992.P5129142757507682237

`gcd(p?[A112798(n+2)], A330666(n+10))`
-/

namespace A211992.P5129142757507682237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A330666 (n + 10))

end

end A211992.P5129142757507682237

/-! ## A211992.P5902111284736715707

`A294859((n*∏{p}[n+1, C(#%n, #)]+1)%A049036(n+1))`
-/

namespace A211992.P5902111284736715707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294859 (Int.tmod ((n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1 : ℕ) : ℤ) (A049036 (n + 1))).toNat

end

end A211992.P5902111284736715707

/-! ## A211992.P3220742414065325773

`gcd(A014575(A028323(3*n+1)), A182937(n+1))`
-/

namespace A211992.P3220742414065325773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014575 (A028323 (3 * n + 1)).toNat) (A182937 (n + 1))

end

end A211992.P3220742414065325773

/-!
# A211993: A list of ordered partitions of the positive integers.

The programs for A211993, there is no canonical definition to state claims against.
-/

/-! ## A211993.P10375128237068679864

`A026792(n+1)+A211992(n+1)-A211994(n+1)`
-/

namespace A211993.P10375128237068679864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (n + 1) + (A211992 (n + 1) - A211994 (n + 1))

end

end A211993.P10375128237068679864

/-! ## A211993.P4980806310928069744

`A055874(xor(A171903(n+1), A251706(n+1)))`
-/

namespace A211993.P4980806310928069744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (Int.xor (A171903 (n + 1)) (A251706 (n + 1))).toNat

end

end A211993.P4980806310928069744

/-! ## A211993.P16098129680181002803

`A055881(xor(A171903(n+1), A251706(n+1)))`
-/

namespace A211993.P16098129680181002803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (Int.xor (A171903 (n + 1)) (A251706 (n + 1))).toNat

end

end A211993.P16098129680181002803

/-! ## A211993.P11417222685783448817

`A112377(∑[A140472(A151988(n))])`
-/

namespace A211993.P11417222685783448817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A151988 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112377 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211993.P11417222685783448817

/-! ## A211993.P1589624283802986792

`A228100(A303677(n+1)-A079958(n))`
-/

namespace A211993.P1589624283802986792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228100 (A303677 (n + 1) - A079958 n).toNat

end

end A211993.P1589624283802986792

/-!
# A211994: A list of ordered partitions of the positive integers.

The programs for A211994, there is no canonical definition to state claims against.
-/

/-! ## A211994.P6436965384319952423

`A026792(n+1)+A211992(n+1)-A211993(n+1)`
-/

namespace A211994.P6436965384319952423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026792 (n + 1) + (A211992 (n + 1) - A211993 (n + 1))

end

end A211994.P6436965384319952423

/-! ## A211994.P17790431384336842996

`gcd(A000720(3*n+1), A176206(A331201(3*n+5)))`
-/

namespace A211994.P17790431384336842996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (3 * n + 1)) (A176206 (A331201 (3 * n + 5)).toNat)

end

end A211994.P17790431384336842996

/-! ## A211994.P10540155008126602879

`gcd(A036138(A000032(n)), A269973(n+1))`
-/

namespace A211994.P10540155008126602879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036138 (A000032 n).toNat) (A269973 (n + 1))

end

end A211994.P10540155008126602879

/-!
# A211995: a(n) = floor(7^n / 2^n) mod 2^n.

The programs for A211995, the canonical program `A211995.P6309614323012334137` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211995 has offset 0).

The definition of A211995 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7^n/2^n)%(2^n)` (program `A211995.P6309614323012334137`, by `A211995.P6309614323012334137.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211995.P6309614323012334137

`floor(7^n/2^n)%(2^n)`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A211995

/-- `floor(7^n/2^n)%(2^n)` -/
def P6309614323012334137.Spec : Prop :=
  ∀ n, P6309614323012334137.a n = A211995 n

theorem P6309614323012334137.correct : P6309614323012334137.Spec := by
  intro n
  simp only [A211995]

end A211995

/-! ## A211995.P17723786146850064569

`and(A000225(n), A094970(n))`
-/

namespace A211995.P17723786146850064569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A094970 n)

end

end A211995.P17723786146850064569

namespace A211995

/-- `and(A000225(n), A094970(n))` -/
def P17723786146850064569.Spec : Prop :=
  ∀ n, P17723786146850064569.a n = A211995 n

end A211995

/-! ## A211995.P4993539458469665674

`and(Δ[A000325(n)], A094970(n))`
-/

namespace A211995.P4993539458469665674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A094970 n)

end

end A211995.P4993539458469665674

namespace A211995

/-- `and(Δ[A000325(n)], A094970(n))` -/
def P4993539458469665674.Spec : Prop :=
  ∀ n, P4993539458469665674.a n = A211995 n

end A211995

/-! ## A211995.P5752267710491869240

`and(record[A243071(n+1)], A094970(n))`
-/

namespace A211995.P5752267710491869240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A094970 n)

end

end A211995.P5752267710491869240

namespace A211995

/-- `and(record[A243071(n+1)], A094970(n))` -/
def P5752267710491869240.Spec : Prop :=
  ∀ n, P5752267710491869240.a n = A211995 n

end A211995

/-! ## A211995.P9143876154387570483

`and(A092431(n+1), A094970(n))`
-/

namespace A211995.P9143876154387570483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A092431 (n + 1)) (A094970 n)

end

end A211995.P9143876154387570483

namespace A211995

/-- `and(A092431(n+1), A094970(n))` -/
def P9143876154387570483.Spec : Prop :=
  ∀ n, P9143876154387570483.a n = A211995 n

end A211995

/-!
# A211996: Number of ordered pairs (i,j) such that i*j=n and i+j is a square.

The programs for A211996, the canonical program `A211996.P16059164976447169302` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211996 has offset 1).

The definition of A211996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211996.P16059164976447169302

`∑{d}[n+1, A010052((n+1)/#+#)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A211996

/-- `∑{d}[n+1, A010052((n+1)/#+#)]` -/
def P16059164976447169302.Spec : Prop :=
  ∀ n, P16059164976447169302.a n = A211996 (n + 1)

theorem P16059164976447169302.correct : P16059164976447169302.Spec := by
  intro n
  simp only [A211996, Nat.add_sub_cancel]

end A211996

/-! ## A211996.P3493405753823720830

`and(A002071(A110029(n+1)), A074292(3*n+1))`
-/

namespace A211996.P3493405753823720830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002071 (A110029 (n + 1)).toNat) (A074292 (3 * n + 1))

end

end A211996.P3493405753823720830

namespace A211996

/-- `and(A002071(A110029(n+1)), A074292(3*n+1))` -/
def P3493405753823720830.Spec : Prop :=
  ∀ n, P3493405753823720830.a n = A211996 (n + 1)

end A211996

/-! ## A211996.P6293621684412879905

`A363886(A294297(3*n+2)+A000203(3*n+2))`
-/

namespace A211996.P6293621684412879905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363886 (A294297 (3 * n + 2) + A000203 (3 * n + 2)).toNat

end

end A211996.P6293621684412879905

namespace A211996

/-- `A363886(A294297(3*n+2)+A000203(3*n+2))` -/
def P6293621684412879905.Spec : Prop :=
  ∀ n, P6293621684412879905.a n = A211996 (n + 1)

end A211996

/-! ## A211996.P7873816448274412109

`A035171(A005169(n)+A003114(3*n+2))`
-/

namespace A211996.P7873816448274412109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A005169 n + A003114 (3 * n + 2)).toNat

end

end A211996.P7873816448274412109

namespace A211996

/-- `A035171(A005169(n)+A003114(3*n+2))` -/
def P7873816448274412109.Spec : Prop :=
  ∀ n, P7873816448274412109.a n = A211996 (n + 1)

end A211996

/-! ## A211996.P6250575349505148603

`and(A374249(n+1), A374252(A342006(n+1)))`
-/

namespace A211996.P6250575349505148603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A374249 (n + 1)) (A374252 (A342006 (n + 1)).toNat)

end

end A211996.P6250575349505148603

namespace A211996

/-- `and(A374249(n+1), A374252(A342006(n+1)))` -/
def P6250575349505148603.Spec : Prop :=
  ∀ n, P6250575349505148603.a n = A211996 (n + 1)

end A211996

/-!
# A211997: Smallest prime with at least n 1's when written in binary.

The programs for A211997, there is no canonical definition to state claims against.
-/

/-! ## A211997.P17355166076866091512

`A061712(A043281(n+3)+n)`
-/

namespace A211997.P17355166076866091512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A043281 (n + 3) + (n : ℤ)).toNat

end

end A211997.P17355166076866091512

/-! ## A211997.P12963135526925204709

`A061712(n+1)%A005187(A102029(n+1))`
-/

namespace A211997.P12963135526925204709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061712 (n + 1)) (A005187 (A102029 (n + 1)).toNat)

end

end A211997.P12963135526925204709

/-! ## A211997.P13624619237176080685

`A061712(n+1)%A212118(A166588(n))`
-/

namespace A211997.P13624619237176080685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061712 (n + 1)) (A212118 ((A166588 n).toNat + 84))

end

end A211997.P13624619237176080685

/-! ## A211997.P9516079292171120613

`A020639(lcm(A061712(n+1), A091938(n+1)))`
-/

namespace A211997.P9516079292171120613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A061712 (n + 1)) (A091938 (n + 1)))

end

end A211997.P9516079292171120613

/-! ## A211997.P1723434778281577599

`A061712(A001222(Δ[(∑[2*n]+1)*2^n]))`
-/

namespace A211997.P1723434778281577599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j + 1) * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061712 (A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A211997.P1723434778281577599

/-!
# A211998: Positions where the monotonicity of A061712 is broken.

The programs for A211998, there is no canonical definition to state claims against.
-/

/-! ## A211998.P2935432883077727564

`A177768(n+1)-1`
-/

namespace A211998.P2935432883077727564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177768 (n + 1) - 1

end

end A211998.P2935432883077727564

/-! ## A211998.P13274608432969388160

`A004442(A177768(n+1))`
-/

namespace A211998.P13274608432969388160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A177768 (n + 1)).toNat

end

end A211998.P13274608432969388160

/-! ## A211998.P9252264302418038751

`A023445(A177768(n+1)+2)`
-/

namespace A211998.P9252264302418038751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A177768 (n + 1) + 2).toNat

end

end A211998.P9252264302418038751

/-! ## A211998.P7886912785677945786

`A063278(A177768(n+1)+3)`
-/

namespace A211998.P7886912785677945786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063278 (A177768 (n + 1) + 3).toNat

end

end A211998.P7886912785677945786

/-! ## A211998.P6160263447025047126

`A060755(2*A177768(n+1))`
-/

namespace A211998.P6160263447025047126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060755 (2 * A177768 (n + 1)).toNat

end

end A211998.P6160263447025047126

